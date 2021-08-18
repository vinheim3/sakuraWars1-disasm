; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0fd", ROMX[$4000], BANK[$fd]

	ld   b, b                                        ; $4000: $40
	nop                                              ; $4001: $00
	ld   d, b                                        ; $4002: $50
	ld   b, b                                        ; $4003: $40
	ld   h, b                                        ; $4004: $60
	ld   bc, $461c                                   ; $4005: $01 $1c $46
	add  b                                           ; $4008: $80
	ld   [bc], a                                     ; $4009: $02
	and  d                                           ; $400a: $a2
	ld   c, b                                        ; $400b: $48
	and  b                                           ; $400c: $a0
	inc  bc                                          ; $400d: $03
	halt                                             ; $400e: $76
	ld   c, e                                        ; $400f: $4b
	ld   b, b                                        ; $4010: $40
	nop                                              ; $4011: $00
	sbc  [hl]                                        ; $4012: $9e
	ld   c, l                                        ; $4013: $4d
	ld   h, b                                        ; $4014: $60
	ld   bc, $51fc                                   ; $4015: $01 $fc $51
	add  b                                           ; $4018: $80
	ld   [bc], a                                     ; $4019: $02
	inc  l                                           ; $401a: $2c
	ld   d, h                                        ; $401b: $54
	and  b                                           ; $401c: $a0
	inc  bc                                          ; $401d: $03
	ld   a, [hl-]                                    ; $401e: $3a
	ld   d, [hl]                                     ; $401f: $56
	ld   b, b                                        ; $4020: $40
	nop                                              ; $4021: $00
	and  h                                           ; $4022: $a4
	ld   e, b                                        ; $4023: $58
	ld   h, b                                        ; $4024: $60
	ld   bc, $5bb2                                   ; $4025: $01 $b2 $5b
	add  b                                           ; $4028: $80
	ld   [bc], a                                     ; $4029: $02
	sbc  d                                           ; $402a: $9a
	ld   e, h                                        ; $402b: $5c
	and  b                                           ; $402c: $a0
	inc  bc                                          ; $402d: $03
	sbc  d                                           ; $402e: $9a
	ld   e, l                                        ; $402f: $5d
	ld   b, b                                        ; $4030: $40
	nop                                              ; $4031: $00
	and  b                                           ; $4032: $a0
	ld   e, l                                        ; $4033: $5d
	ld   h, b                                        ; $4034: $60
	ld   bc, $60a6                                   ; $4035: $01 $a6 $60
	add  b                                           ; $4038: $80
	ld   [bc], a                                     ; $4039: $02
	ld   l, [hl]                                     ; $403a: $6e
	ld   h, e                                        ; $403b: $63
	and  b                                           ; $403c: $a0
	inc  bc                                          ; $403d: $03
	ld   h, h                                        ; $403e: $64
	ld   h, l                                        ; $403f: $65
	ld   b, b                                        ; $4040: $40
	nop                                              ; $4041: $00
	inc  h                                           ; $4042: $24
	ld   l, c                                        ; $4043: $69
	ld   h, b                                        ; $4044: $60
	ld   bc, $7084                                   ; $4045: $01 $84 $70
	add  b                                           ; $4048: $80
	ld   [bc], a                                     ; $4049: $02
	jp   nc, $a071                                   ; $404a: $d2 $71 $a0

	inc  bc                                          ; $404d: $03
	ld   a, $76                                      ; $404e: $3e $76
	add  hl, bc                                      ; $4050: $09
	nop                                              ; $4051: $00
	add  hl, bc                                      ; $4052: $09
	nop                                              ; $4053: $00
	rra                                              ; $4054: $1f
	db   $10                                         ; $4055: $10
	db   $fd                                         ; $4056: $fd
	di                                               ; $4057: $f3
	and  d                                           ; $4058: $a2
	ld   [bc], a                                     ; $4059: $02
	rst  ToBoot                                         ; $405a: $c7
	ld   [hl], b                                     ; $405b: $70
	and  e                                           ; $405c: $a3
	inc  [hl]                                        ; $405d: $34
	and  b                                           ; $405e: $a0
	add  hl, bc                                      ; $405f: $09
	inc  h                                           ; $4060: $24
	inc  e                                           ; $4061: $1c
	and  b                                           ; $4062: $a0
	dec  b                                           ; $4063: $05
	inc  h                                           ; $4064: $24
	inc  b                                           ; $4065: $04
	and  b                                           ; $4066: $a0
	add  hl, bc                                      ; $4067: $09
	inc  h                                           ; $4068: $24
	inc  b                                           ; $4069: $04
	and  b                                           ; $406a: $a0
	inc  bc                                          ; $406b: $03
	inc  h                                           ; $406c: $24
	inc  b                                           ; $406d: $04
	and  b                                           ; $406e: $a0
	add  hl, bc                                      ; $406f: $09
	jr   jr_0fd_4076                                 ; $4070: $18 $04

	and  b                                           ; $4072: $a0
	inc  bc                                          ; $4073: $03
	jr   jr_0fd_407a                                 ; $4074: $18 $04

jr_0fd_4076:
	and  b                                           ; $4076: $a0
	add  hl, bc                                      ; $4077: $09
	dec  de                                          ; $4078: $1b
	inc  b                                           ; $4079: $04

jr_0fd_407a:
	and  b                                           ; $407a: $a0
	inc  bc                                          ; $407b: $03
	dec  de                                          ; $407c: $1b
	inc  b                                           ; $407d: $04
	and  b                                           ; $407e: $a0
	add  hl, bc                                      ; $407f: $09
	inc  h                                           ; $4080: $24
	inc  b                                           ; $4081: $04
	and  b                                           ; $4082: $a0
	inc  bc                                          ; $4083: $03
	inc  h                                           ; $4084: $24
	inc  b                                           ; $4085: $04
	and  b                                           ; $4086: $a0
	add  hl, bc                                      ; $4087: $09
	ld   hl, $a01c                                   ; $4088: $21 $1c $a0
	dec  b                                           ; $408b: $05
	ld   hl, $a004                                   ; $408c: $21 $04 $a0
	add  hl, bc                                      ; $408f: $09
	ld   hl, $a004                                   ; $4090: $21 $04 $a0
	inc  bc                                          ; $4093: $03
	ld   hl, $a004                                   ; $4094: $21 $04 $a0

jr_0fd_4097:
	add  hl, bc                                      ; $4097: $09
	inc  d                                           ; $4098: $14
	inc  b                                           ; $4099: $04
	and  b                                           ; $409a: $a0
	inc  bc                                          ; $409b: $03
	inc  d                                           ; $409c: $14
	inc  b                                           ; $409d: $04
	and  b                                           ; $409e: $a0
	add  hl, bc                                      ; $409f: $09
	jr   jr_0fd_40a6                                 ; $40a0: $18 $04

	and  b                                           ; $40a2: $a0
	inc  bc                                          ; $40a3: $03
	jr   @+$06                                       ; $40a4: $18 $04

jr_0fd_40a6:
	and  b                                           ; $40a6: $a0
	add  hl, bc                                      ; $40a7: $09
	ld   hl, $a004                                   ; $40a8: $21 $04 $a0
	inc  bc                                          ; $40ab: $03
	ld   hl, $a004                                   ; $40ac: $21 $04 $a0
	add  hl, bc                                      ; $40af: $09
	ld   [hl+], a                                    ; $40b0: $22
	inc  b                                           ; $40b1: $04
	and  b                                           ; $40b2: $a0
	inc  bc                                          ; $40b3: $03
	ld   [hl+], a                                    ; $40b4: $22
	inc  b                                           ; $40b5: $04
	and  b                                           ; $40b6: $a0
	add  hl, bc                                      ; $40b7: $09
	inc  h                                           ; $40b8: $24
	inc  b                                           ; $40b9: $04
	and  b                                           ; $40ba: $a0
	inc  bc                                          ; $40bb: $03
	inc  h                                           ; $40bc: $24
	inc  b                                           ; $40bd: $04
	and  b                                           ; $40be: $a0
	add  hl, bc                                      ; $40bf: $09
	ld   h, $04                                      ; $40c0: $26 $04
	and  b                                           ; $40c2: $a0
	inc  bc                                          ; $40c3: $03
	ld   h, $04                                      ; $40c4: $26 $04
	and  b                                           ; $40c6: $a0
	add  hl, bc                                      ; $40c7: $09
	add  hl, hl                                      ; $40c8: $29
	inc  b                                           ; $40c9: $04
	and  b                                           ; $40ca: $a0
	inc  bc                                          ; $40cb: $03
	add  hl, hl                                      ; $40cc: $29
	inc  b                                           ; $40cd: $04
	and  b                                           ; $40ce: $a0
	add  hl, bc                                      ; $40cf: $09
	jr   z, jr_0fd_40de                              ; $40d0: $28 $0c

	and  b                                           ; $40d2: $a0
	inc  bc                                          ; $40d3: $03
	jr   z, jr_0fd_40da                              ; $40d4: $28 $04

	and  b                                           ; $40d6: $a0
	add  hl, bc                                      ; $40d7: $09
	inc  h                                           ; $40d8: $24
	inc  c                                           ; $40d9: $0c

jr_0fd_40da:
	and  b                                           ; $40da: $a0
	inc  bc                                          ; $40db: $03
	inc  h                                           ; $40dc: $24
	inc  b                                           ; $40dd: $04

jr_0fd_40de:
	and  b                                           ; $40de: $a0
	add  hl, bc                                      ; $40df: $09
	add  hl, de                                      ; $40e0: $19
	inc  b                                           ; $40e1: $04
	and  b                                           ; $40e2: $a0
	dec  b                                           ; $40e3: $05
	add  hl, de                                      ; $40e4: $19
	inc  b                                           ; $40e5: $04
	and  b                                           ; $40e6: $a0
	add  hl, bc                                      ; $40e7: $09
	ld   d, $04                                      ; $40e8: $16 $04
	jr   jr_0fd_40f0                                 ; $40ea: $18 $04

	add  hl, de                                      ; $40ec: $19
	inc  b                                           ; $40ed: $04
	ld   d, $04                                      ; $40ee: $16 $04

jr_0fd_40f0:
	add  hl, de                                      ; $40f0: $19
	inc  b                                           ; $40f1: $04
	ld   hl, $2604                                   ; $40f2: $21 $04 $26
	jr   jr_0fd_4097                                 ; $40f5: $18 $a0

	dec  b                                           ; $40f7: $05
	ld   h, $08                                      ; $40f8: $26 $08
	rst  ToBoot                                         ; $40fa: $c7
	ld   b, b                                        ; $40fb: $40
	and  e                                           ; $40fc: $a3
	inc  [hl]                                        ; $40fd: $34
	xor  h                                           ; $40fe: $ac
	ld   bc, $04ea                                   ; $40ff: $01 $ea $04
	and  b                                           ; $4102: $a0
	add  hl, bc                                      ; $4103: $09
	add  hl, hl                                      ; $4104: $29
	inc  b                                           ; $4105: $04
	and  b                                           ; $4106: $a0
	inc  bc                                          ; $4107: $03
	ld   hl, $a004                                   ; $4108: $21 $04 $a0
	add  hl, bc                                      ; $410b: $09
	add  hl, de                                      ; $410c: $19
	inc  b                                           ; $410d: $04
	and  b                                           ; $410e: $a0
	inc  bc                                          ; $410f: $03
	add  hl, hl                                      ; $4110: $29
	inc  b                                           ; $4111: $04
	and  b                                           ; $4112: $a0
	add  hl, bc                                      ; $4113: $09
	ld   hl, $a004                                   ; $4114: $21 $04 $a0
	inc  bc                                          ; $4117: $03
	add  hl, de                                      ; $4118: $19
	inc  b                                           ; $4119: $04
	and  b                                           ; $411a: $a0
	add  hl, bc                                      ; $411b: $09
	ld   h, $04                                      ; $411c: $26 $04
	and  b                                           ; $411e: $a0
	inc  bc                                          ; $411f: $03
	ld   hl, $a004                                   ; $4120: $21 $04 $a0
	add  hl, bc                                      ; $4123: $09
	add  hl, hl                                      ; $4124: $29
	inc  b                                           ; $4125: $04
	and  b                                           ; $4126: $a0
	inc  bc                                          ; $4127: $03
	ld   h, $04                                      ; $4128: $26 $04
	and  b                                           ; $412a: $a0
	add  hl, bc                                      ; $412b: $09
	ld   d, $04                                      ; $412c: $16 $04
	and  b                                           ; $412e: $a0
	inc  bc                                          ; $412f: $03
	add  hl, hl                                      ; $4130: $29
	inc  b                                           ; $4131: $04
	and  b                                           ; $4132: $a0
	add  hl, bc                                      ; $4133: $09
	ld   sp, $a004                                   ; $4134: $31 $04 $a0
	inc  bc                                          ; $4137: $03
	ld   d, $04                                      ; $4138: $16 $04
	and  b                                           ; $413a: $a0
	add  hl, bc                                      ; $413b: $09
	ld   d, $04                                      ; $413c: $16 $04
	and  b                                           ; $413e: $a0
	inc  bc                                          ; $413f: $03
	ld   sp, $a004                                   ; $4140: $31 $04 $a0
	add  hl, bc                                      ; $4143: $09
	dec  hl                                          ; $4144: $2b
	inc  b                                           ; $4145: $04
	and  b                                           ; $4146: $a0
	inc  bc                                          ; $4147: $03
	ld   d, $04                                      ; $4148: $16 $04
	and  b                                           ; $414a: $a0
	add  hl, bc                                      ; $414b: $09
	ld   d, $04                                      ; $414c: $16 $04
	and  b                                           ; $414e: $a0
	inc  bc                                          ; $414f: $03
	dec  hl                                          ; $4150: $2b
	inc  b                                           ; $4151: $04
	and  b                                           ; $4152: $a0
	add  hl, bc                                      ; $4153: $09
	ld   h, $04                                      ; $4154: $26 $04
	and  b                                           ; $4156: $a0
	inc  bc                                          ; $4157: $03
	ld   d, $04                                      ; $4158: $16 $04
	and  b                                           ; $415a: $a0
	add  hl, bc                                      ; $415b: $09
	dec  de                                          ; $415c: $1b
	inc  b                                           ; $415d: $04
	and  b                                           ; $415e: $a0
	inc  bc                                          ; $415f: $03
	ld   h, $04                                      ; $4160: $26 $04
	and  b                                           ; $4162: $a0
	add  hl, bc                                      ; $4163: $09
	add  hl, hl                                      ; $4164: $29
	inc  b                                           ; $4165: $04
	and  b                                           ; $4166: $a0
	inc  bc                                          ; $4167: $03
	dec  de                                          ; $4168: $1b
	inc  b                                           ; $4169: $04
	and  b                                           ; $416a: $a0
	add  hl, bc                                      ; $416b: $09
	dec  de                                          ; $416c: $1b
	inc  b                                           ; $416d: $04
	and  b                                           ; $416e: $a0
	inc  bc                                          ; $416f: $03
	add  hl, hl                                      ; $4170: $29
	inc  b                                           ; $4171: $04
	and  b                                           ; $4172: $a0
	add  hl, bc                                      ; $4173: $09
	jr   z, jr_0fd_417a                              ; $4174: $28 $04

	and  b                                           ; $4176: $a0
	inc  bc                                          ; $4177: $03
	dec  de                                          ; $4178: $1b
	inc  b                                           ; $4179: $04

jr_0fd_417a:
	and  b                                           ; $417a: $a0
	add  hl, bc                                      ; $417b: $09
	dec  de                                          ; $417c: $1b
	inc  b                                           ; $417d: $04
	and  b                                           ; $417e: $a0
	inc  bc                                          ; $417f: $03
	jr   z, jr_0fd_4186                              ; $4180: $28 $04

	xor  h                                           ; $4182: $ac
	ld   bc, $04ea                                   ; $4183: $01 $ea $04

jr_0fd_4186:
	and  b                                           ; $4186: $a0
	add  hl, bc                                      ; $4187: $09
	add  hl, hl                                      ; $4188: $29
	inc  b                                           ; $4189: $04
	and  b                                           ; $418a: $a0
	inc  bc                                          ; $418b: $03
	ld   hl, $a004                                   ; $418c: $21 $04 $a0
	add  hl, bc                                      ; $418f: $09
	add  hl, de                                      ; $4190: $19
	inc  b                                           ; $4191: $04
	and  b                                           ; $4192: $a0
	inc  bc                                          ; $4193: $03
	add  hl, hl                                      ; $4194: $29
	inc  b                                           ; $4195: $04
	and  b                                           ; $4196: $a0
	add  hl, bc                                      ; $4197: $09
	ld   hl, $a004                                   ; $4198: $21 $04 $a0
	inc  bc                                          ; $419b: $03
	add  hl, de                                      ; $419c: $19
	inc  b                                           ; $419d: $04
	and  b                                           ; $419e: $a0
	add  hl, bc                                      ; $419f: $09
	ld   h, $04                                      ; $41a0: $26 $04
	and  b                                           ; $41a2: $a0
	inc  bc                                          ; $41a3: $03
	ld   hl, $a004                                   ; $41a4: $21 $04 $a0
	add  hl, bc                                      ; $41a7: $09
	jr   z, jr_0fd_41ae                              ; $41a8: $28 $04

	and  b                                           ; $41aa: $a0
	inc  bc                                          ; $41ab: $03
	ld   h, $04                                      ; $41ac: $26 $04

jr_0fd_41ae:
	and  b                                           ; $41ae: $a0
	add  hl, bc                                      ; $41af: $09
	ld   hl, $a004                                   ; $41b0: $21 $04 $a0
	inc  bc                                          ; $41b3: $03
	jr   z, jr_0fd_41ba                              ; $41b4: $28 $04

	and  b                                           ; $41b6: $a0
	add  hl, bc                                      ; $41b7: $09
	inc  h                                           ; $41b8: $24
	inc  b                                           ; $41b9: $04

jr_0fd_41ba:
	and  b                                           ; $41ba: $a0
	inc  bc                                          ; $41bb: $03
	ld   hl, $a004                                   ; $41bc: $21 $04 $a0
	add  hl, bc                                      ; $41bf: $09
	ld   hl, $a004                                   ; $41c0: $21 $04 $a0
	inc  bc                                          ; $41c3: $03
	inc  h                                           ; $41c4: $24
	inc  b                                           ; $41c5: $04
	and  b                                           ; $41c6: $a0
	add  hl, bc                                      ; $41c7: $09
	ld   h, $04                                      ; $41c8: $26 $04
	and  b                                           ; $41ca: $a0
	inc  bc                                          ; $41cb: $03
	ld   hl, $a004                                   ; $41cc: $21 $04 $a0
	add  hl, bc                                      ; $41cf: $09
	inc  d                                           ; $41d0: $14
	inc  b                                           ; $41d1: $04
	and  b                                           ; $41d2: $a0
	inc  bc                                          ; $41d3: $03
	ld   h, $04                                      ; $41d4: $26 $04
	and  b                                           ; $41d6: $a0
	add  hl, bc                                      ; $41d7: $09
	ld   d, $04                                      ; $41d8: $16 $04
	and  b                                           ; $41da: $a0
	inc  bc                                          ; $41db: $03
	inc  d                                           ; $41dc: $14
	inc  b                                           ; $41dd: $04
	and  b                                           ; $41de: $a0
	add  hl, bc                                      ; $41df: $09
	add  hl, de                                      ; $41e0: $19
	inc  b                                           ; $41e1: $04
	and  b                                           ; $41e2: $a0
	inc  bc                                          ; $41e3: $03
	ld   d, $04                                      ; $41e4: $16 $04
	and  b                                           ; $41e6: $a0
	add  hl, bc                                      ; $41e7: $09
	ld   hl, $a004                                   ; $41e8: $21 $04 $a0
	inc  bc                                          ; $41eb: $03
	add  hl, de                                      ; $41ec: $19
	inc  b                                           ; $41ed: $04
	and  b                                           ; $41ee: $a0
	add  hl, bc                                      ; $41ef: $09
	ld   [hl+], a                                    ; $41f0: $22
	inc  b                                           ; $41f1: $04
	and  b                                           ; $41f2: $a0
	inc  bc                                          ; $41f3: $03
	ld   hl, $a004                                   ; $41f4: $21 $04 $a0
	add  hl, bc                                      ; $41f7: $09
	ld   h, $04                                      ; $41f8: $26 $04
	and  b                                           ; $41fa: $a0
	inc  bc                                          ; $41fb: $03
	ld   [hl+], a                                    ; $41fc: $22
	inc  b                                           ; $41fd: $04
	and  b                                           ; $41fe: $a0
	add  hl, bc                                      ; $41ff: $09
	jr   z, jr_0fd_4206                              ; $4200: $28 $04

	and  b                                           ; $4202: $a0
	inc  bc                                          ; $4203: $03
	ld   h, $04                                      ; $4204: $26 $04

jr_0fd_4206:
	and  b                                           ; $4206: $a0
	add  hl, bc                                      ; $4207: $09
	ld   sp, $a004                                   ; $4208: $31 $04 $a0
	inc  bc                                          ; $420b: $03
	jr   z, jr_0fd_4212                              ; $420c: $28 $04

	and  b                                           ; $420e: $a0
	add  hl, bc                                      ; $420f: $09
	dec  hl                                          ; $4210: $2b
	inc  b                                           ; $4211: $04

jr_0fd_4212:
	and  b                                           ; $4212: $a0
	inc  bc                                          ; $4213: $03
	ld   sp, $a004                                   ; $4214: $31 $04 $a0
	add  hl, bc                                      ; $4217: $09
	add  hl, hl                                      ; $4218: $29
	inc  b                                           ; $4219: $04
	and  b                                           ; $421a: $a0
	inc  bc                                          ; $421b: $03
	dec  hl                                          ; $421c: $2b
	inc  b                                           ; $421d: $04
	and  b                                           ; $421e: $a0
	add  hl, bc                                      ; $421f: $09
	jr   z, jr_0fd_4226                              ; $4220: $28 $04

	and  b                                           ; $4222: $a0
	inc  bc                                          ; $4223: $03
	add  hl, hl                                      ; $4224: $29
	inc  b                                           ; $4225: $04

jr_0fd_4226:
	and  b                                           ; $4226: $a0
	add  hl, bc                                      ; $4227: $09
	inc  h                                           ; $4228: $24
	inc  b                                           ; $4229: $04
	and  b                                           ; $422a: $a0
	inc  bc                                          ; $422b: $03
	jr   z, jr_0fd_4232                              ; $422c: $28 $04

	and  b                                           ; $422e: $a0
	add  hl, bc                                      ; $422f: $09
	jr   jr_0fd_4236                                 ; $4230: $18 $04

jr_0fd_4232:
	and  b                                           ; $4232: $a0
	inc  bc                                          ; $4233: $03
	inc  h                                           ; $4234: $24
	inc  b                                           ; $4235: $04

jr_0fd_4236:
	and  b                                           ; $4236: $a0
	add  hl, bc                                      ; $4237: $09
	ld   hl, $a004                                   ; $4238: $21 $04 $a0
	inc  bc                                          ; $423b: $03
	jr   jr_0fd_4242                                 ; $423c: $18 $04

	and  b                                           ; $423e: $a0
	add  hl, bc                                      ; $423f: $09
	inc  h                                           ; $4240: $24
	inc  b                                           ; $4241: $04

jr_0fd_4242:
	and  b                                           ; $4242: $a0
	inc  bc                                          ; $4243: $03
	ld   hl, $a004                                   ; $4244: $21 $04 $a0
	add  hl, bc                                      ; $4247: $09
	add  hl, hl                                      ; $4248: $29
	inc  b                                           ; $4249: $04
	and  b                                           ; $424a: $a0
	inc  bc                                          ; $424b: $03
	inc  h                                           ; $424c: $24
	inc  b                                           ; $424d: $04
	and  b                                           ; $424e: $a0
	add  hl, bc                                      ; $424f: $09
	inc  h                                           ; $4250: $24
	inc  b                                           ; $4251: $04
	and  b                                           ; $4252: $a0
	inc  bc                                          ; $4253: $03
	add  hl, hl                                      ; $4254: $29
	inc  b                                           ; $4255: $04
	and  b                                           ; $4256: $a0
	add  hl, bc                                      ; $4257: $09
	ld   [hl+], a                                    ; $4258: $22
	inc  b                                           ; $4259: $04
	and  b                                           ; $425a: $a0
	inc  bc                                          ; $425b: $03
	inc  h                                           ; $425c: $24
	inc  b                                           ; $425d: $04
	and  b                                           ; $425e: $a0
	add  hl, bc                                      ; $425f: $09
	ld   hl, $a004                                   ; $4260: $21 $04 $a0
	inc  bc                                          ; $4263: $03
	ld   [hl+], a                                    ; $4264: $22
	inc  b                                           ; $4265: $04
	and  b                                           ; $4266: $a0
	add  hl, bc                                      ; $4267: $09
	jr   @+$06                                       ; $4268: $18 $04

	and  b                                           ; $426a: $a0
	inc  bc                                          ; $426b: $03
	ld   hl, $a004                                   ; $426c: $21 $04 $a0
	add  hl, bc                                      ; $426f: $09
	dec  de                                          ; $4270: $1b
	inc  b                                           ; $4271: $04
	and  b                                           ; $4272: $a0
	inc  bc                                          ; $4273: $03
	jr   jr_0fd_427a                                 ; $4274: $18 $04

	and  b                                           ; $4276: $a0
	add  hl, bc                                      ; $4277: $09
	inc  h                                           ; $4278: $24
	inc  b                                           ; $4279: $04

jr_0fd_427a:
	and  b                                           ; $427a: $a0
	inc  bc                                          ; $427b: $03
	dec  de                                          ; $427c: $1b
	inc  b                                           ; $427d: $04
	and  b                                           ; $427e: $a0
	add  hl, bc                                      ; $427f: $09
	jr   z, jr_0fd_4286                              ; $4280: $28 $04

	and  b                                           ; $4282: $a0
	inc  bc                                          ; $4283: $03
	inc  h                                           ; $4284: $24
	inc  b                                           ; $4285: $04

jr_0fd_4286:
	and  b                                           ; $4286: $a0
	add  hl, bc                                      ; $4287: $09
	ld   hl, $a004                                   ; $4288: $21 $04 $a0
	inc  bc                                          ; $428b: $03
	jr   z, jr_0fd_4292                              ; $428c: $28 $04

	and  b                                           ; $428e: $a0
	add  hl, bc                                      ; $428f: $09
	inc  d                                           ; $4290: $14
	inc  b                                           ; $4291: $04

jr_0fd_4292:
	and  b                                           ; $4292: $a0
	inc  bc                                          ; $4293: $03
	ld   hl, $a004                                   ; $4294: $21 $04 $a0
	add  hl, bc                                      ; $4297: $09
	add  hl, de                                      ; $4298: $19
	inc  b                                           ; $4299: $04
	and  b                                           ; $429a: $a0
	inc  bc                                          ; $429b: $03
	inc  d                                           ; $429c: $14
	inc  b                                           ; $429d: $04
	and  b                                           ; $429e: $a0
	add  hl, bc                                      ; $429f: $09
	dec  de                                          ; $42a0: $1b
	inc  b                                           ; $42a1: $04
	and  b                                           ; $42a2: $a0
	inc  bc                                          ; $42a3: $03
	add  hl, de                                      ; $42a4: $19
	inc  b                                           ; $42a5: $04
	and  b                                           ; $42a6: $a0
	add  hl, bc                                      ; $42a7: $09
	ld   hl, $a004                                   ; $42a8: $21 $04 $a0
	inc  bc                                          ; $42ab: $03
	dec  de                                          ; $42ac: $1b
	inc  b                                           ; $42ad: $04
	and  b                                           ; $42ae: $a0
	add  hl, bc                                      ; $42af: $09
	dec  de                                          ; $42b0: $1b
	inc  b                                           ; $42b1: $04
	and  b                                           ; $42b2: $a0
	inc  bc                                          ; $42b3: $03
	ld   hl, $a004                                   ; $42b4: $21 $04 $a0
	add  hl, bc                                      ; $42b7: $09
	ld   hl, $a004                                   ; $42b8: $21 $04 $a0
	inc  bc                                          ; $42bb: $03
	dec  de                                          ; $42bc: $1b
	inc  b                                           ; $42bd: $04
	and  b                                           ; $42be: $a0
	add  hl, bc                                      ; $42bf: $09
	inc  h                                           ; $42c0: $24
	inc  b                                           ; $42c1: $04
	and  b                                           ; $42c2: $a0
	inc  bc                                          ; $42c3: $03
	ld   hl, $a004                                   ; $42c4: $21 $04 $a0
	add  hl, bc                                      ; $42c7: $09
	add  hl, hl                                      ; $42c8: $29
	inc  c                                           ; $42c9: $0c
	and  b                                           ; $42ca: $a0
	inc  bc                                          ; $42cb: $03
	add  hl, hl                                      ; $42cc: $29
	inc  b                                           ; $42cd: $04
	and  b                                           ; $42ce: $a0
	add  hl, bc                                      ; $42cf: $09
	jr   z, jr_0fd_42de                              ; $42d0: $28 $0c

	and  b                                           ; $42d2: $a0
	inc  bc                                          ; $42d3: $03
	jr   z, jr_0fd_42da                              ; $42d4: $28 $04

	and  b                                           ; $42d6: $a0
	add  hl, bc                                      ; $42d7: $09
	add  hl, hl                                      ; $42d8: $29
	inc  c                                           ; $42d9: $0c

jr_0fd_42da:
	and  b                                           ; $42da: $a0
	inc  bc                                          ; $42db: $03
	add  hl, hl                                      ; $42dc: $29
	inc  b                                           ; $42dd: $04

jr_0fd_42de:
	and  b                                           ; $42de: $a0
	add  hl, bc                                      ; $42df: $09
	jr   z, jr_0fd_42ee                              ; $42e0: $28 $0c

	and  b                                           ; $42e2: $a0
	inc  bc                                          ; $42e3: $03
	jr   z, jr_0fd_42ea                              ; $42e4: $28 $04

	xor  h                                           ; $42e6: $ac
	ld   bc, $054e                                   ; $42e7: $01 $4e $05

jr_0fd_42ea:
	and  b                                           ; $42ea: $a0
	add  hl, bc                                      ; $42eb: $09
	ld   [hl+], a                                    ; $42ec: $22
	inc  b                                           ; $42ed: $04

jr_0fd_42ee:
	and  b                                           ; $42ee: $a0
	inc  bc                                          ; $42ef: $03
	dec  de                                          ; $42f0: $1b
	inc  b                                           ; $42f1: $04
	and  b                                           ; $42f2: $a0
	add  hl, bc                                      ; $42f3: $09
	ld   d, $04                                      ; $42f4: $16 $04
	and  b                                           ; $42f6: $a0
	inc  bc                                          ; $42f7: $03
	ld   [hl+], a                                    ; $42f8: $22
	inc  b                                           ; $42f9: $04
	and  b                                           ; $42fa: $a0
	add  hl, bc                                      ; $42fb: $09
	dec  de                                          ; $42fc: $1b
	inc  b                                           ; $42fd: $04
	and  b                                           ; $42fe: $a0
	inc  bc                                          ; $42ff: $03
	ld   d, $04                                      ; $4300: $16 $04
	and  b                                           ; $4302: $a0
	add  hl, bc                                      ; $4303: $09
	add  hl, de                                      ; $4304: $19
	inc  b                                           ; $4305: $04
	and  b                                           ; $4306: $a0
	inc  bc                                          ; $4307: $03
	dec  de                                          ; $4308: $1b
	inc  b                                           ; $4309: $04
	and  b                                           ; $430a: $a0
	add  hl, bc                                      ; $430b: $09
	inc  hl                                          ; $430c: $23
	inc  b                                           ; $430d: $04
	and  b                                           ; $430e: $a0
	inc  bc                                          ; $430f: $03
	add  hl, de                                      ; $4310: $19
	inc  b                                           ; $4311: $04
	and  b                                           ; $4312: $a0
	add  hl, bc                                      ; $4313: $09
	ld   d, $04                                      ; $4314: $16 $04
	and  b                                           ; $4316: $a0
	inc  bc                                          ; $4317: $03
	inc  hl                                          ; $4318: $23
	inc  b                                           ; $4319: $04
	and  b                                           ; $431a: $a0
	add  hl, bc                                      ; $431b: $09
	dec  de                                          ; $431c: $1b
	inc  b                                           ; $431d: $04
	and  b                                           ; $431e: $a0
	inc  bc                                          ; $431f: $03
	ld   d, $04                                      ; $4320: $16 $04
	and  b                                           ; $4322: $a0
	add  hl, bc                                      ; $4323: $09
	add  hl, de                                      ; $4324: $19
	inc  b                                           ; $4325: $04
	and  b                                           ; $4326: $a0
	inc  bc                                          ; $4327: $03
	dec  de                                          ; $4328: $1b
	inc  b                                           ; $4329: $04
	and  b                                           ; $432a: $a0
	add  hl, bc                                      ; $432b: $09
	ld   [hl+], a                                    ; $432c: $22
	inc  b                                           ; $432d: $04
	and  b                                           ; $432e: $a0
	inc  bc                                          ; $432f: $03
	add  hl, de                                      ; $4330: $19
	inc  b                                           ; $4331: $04
	and  b                                           ; $4332: $a0
	add  hl, bc                                      ; $4333: $09
	ld   d, $04                                      ; $4334: $16 $04
	and  b                                           ; $4336: $a0
	inc  bc                                          ; $4337: $03
	ld   [hl+], a                                    ; $4338: $22
	inc  b                                           ; $4339: $04
	and  b                                           ; $433a: $a0
	add  hl, bc                                      ; $433b: $09
	dec  de                                          ; $433c: $1b
	inc  b                                           ; $433d: $04
	and  b                                           ; $433e: $a0
	inc  bc                                          ; $433f: $03
	ld   d, $04                                      ; $4340: $16 $04
	and  b                                           ; $4342: $a0
	add  hl, bc                                      ; $4343: $09
	add  hl, de                                      ; $4344: $19
	inc  b                                           ; $4345: $04
	and  b                                           ; $4346: $a0
	inc  bc                                          ; $4347: $03
	dec  de                                          ; $4348: $1b
	inc  b                                           ; $4349: $04
	and  b                                           ; $434a: $a0
	add  hl, bc                                      ; $434b: $09
	inc  h                                           ; $434c: $24
	inc  b                                           ; $434d: $04
	and  b                                           ; $434e: $a0
	inc  bc                                          ; $434f: $03
	add  hl, de                                      ; $4350: $19
	inc  b                                           ; $4351: $04
	and  b                                           ; $4352: $a0
	add  hl, bc                                      ; $4353: $09
	jr   jr_0fd_435a                                 ; $4354: $18 $04

	and  b                                           ; $4356: $a0
	inc  bc                                          ; $4357: $03
	inc  h                                           ; $4358: $24
	inc  b                                           ; $4359: $04

jr_0fd_435a:
	and  b                                           ; $435a: $a0
	add  hl, bc                                      ; $435b: $09
	dec  de                                          ; $435c: $1b
	inc  b                                           ; $435d: $04
	and  b                                           ; $435e: $a0
	inc  bc                                          ; $435f: $03
	jr   jr_0fd_4366                                 ; $4360: $18 $04

	and  b                                           ; $4362: $a0
	add  hl, bc                                      ; $4363: $09
	inc  h                                           ; $4364: $24
	inc  b                                           ; $4365: $04

jr_0fd_4366:
	and  b                                           ; $4366: $a0
	inc  bc                                          ; $4367: $03
	dec  de                                          ; $4368: $1b
	inc  b                                           ; $4369: $04
	xor  h                                           ; $436a: $ac
	ld   bc, $054e                                   ; $436b: $01 $4e $05
	and  b                                           ; $436e: $a0
	add  hl, bc                                      ; $436f: $09
	ld   [hl+], a                                    ; $4370: $22
	inc  b                                           ; $4371: $04
	and  b                                           ; $4372: $a0
	inc  bc                                          ; $4373: $03
	dec  de                                          ; $4374: $1b
	inc  b                                           ; $4375: $04
	and  b                                           ; $4376: $a0
	add  hl, bc                                      ; $4377: $09
	ld   d, $04                                      ; $4378: $16 $04
	and  b                                           ; $437a: $a0
	inc  bc                                          ; $437b: $03
	ld   [hl+], a                                    ; $437c: $22
	inc  b                                           ; $437d: $04
	and  b                                           ; $437e: $a0
	add  hl, bc                                      ; $437f: $09
	dec  de                                          ; $4380: $1b
	inc  b                                           ; $4381: $04
	and  b                                           ; $4382: $a0
	inc  bc                                          ; $4383: $03
	ld   d, $04                                      ; $4384: $16 $04
	and  b                                           ; $4386: $a0
	add  hl, bc                                      ; $4387: $09
	add  hl, de                                      ; $4388: $19
	inc  b                                           ; $4389: $04
	and  b                                           ; $438a: $a0
	inc  bc                                          ; $438b: $03
	dec  de                                          ; $438c: $1b
	inc  b                                           ; $438d: $04
	and  b                                           ; $438e: $a0
	add  hl, bc                                      ; $438f: $09
	ld   [hl+], a                                    ; $4390: $22
	inc  b                                           ; $4391: $04
	and  b                                           ; $4392: $a0
	inc  bc                                          ; $4393: $03
	add  hl, de                                      ; $4394: $19
	inc  b                                           ; $4395: $04
	and  b                                           ; $4396: $a0
	add  hl, bc                                      ; $4397: $09
	ld   d, $04                                      ; $4398: $16 $04
	and  b                                           ; $439a: $a0
	inc  bc                                          ; $439b: $03
	ld   [hl+], a                                    ; $439c: $22
	inc  b                                           ; $439d: $04
	and  b                                           ; $439e: $a0
	add  hl, bc                                      ; $439f: $09
	dec  de                                          ; $43a0: $1b
	inc  b                                           ; $43a1: $04
	and  b                                           ; $43a2: $a0
	inc  bc                                          ; $43a3: $03
	ld   d, $04                                      ; $43a4: $16 $04
	and  b                                           ; $43a6: $a0
	add  hl, bc                                      ; $43a7: $09
	add  hl, de                                      ; $43a8: $19
	inc  b                                           ; $43a9: $04
	and  b                                           ; $43aa: $a0
	inc  bc                                          ; $43ab: $03
	dec  de                                          ; $43ac: $1b
	inc  b                                           ; $43ad: $04
	and  b                                           ; $43ae: $a0
	add  hl, bc                                      ; $43af: $09
	inc  h                                           ; $43b0: $24
	inc  b                                           ; $43b1: $04
	and  b                                           ; $43b2: $a0
	inc  bc                                          ; $43b3: $03
	add  hl, de                                      ; $43b4: $19
	inc  b                                           ; $43b5: $04
	and  b                                           ; $43b6: $a0
	add  hl, bc                                      ; $43b7: $09
	jr   jr_0fd_43be                                 ; $43b8: $18 $04

	and  b                                           ; $43ba: $a0
	inc  bc                                          ; $43bb: $03
	inc  h                                           ; $43bc: $24
	inc  b                                           ; $43bd: $04

jr_0fd_43be:
	and  b                                           ; $43be: $a0
	add  hl, bc                                      ; $43bf: $09
	dec  de                                          ; $43c0: $1b
	inc  b                                           ; $43c1: $04
	and  b                                           ; $43c2: $a0
	inc  bc                                          ; $43c3: $03
	jr   jr_0fd_43ca                                 ; $43c4: $18 $04

	and  b                                           ; $43c6: $a0
	add  hl, bc                                      ; $43c7: $09
	inc  h                                           ; $43c8: $24
	inc  b                                           ; $43c9: $04

jr_0fd_43ca:
	and  b                                           ; $43ca: $a0
	inc  bc                                          ; $43cb: $03
	dec  de                                          ; $43cc: $1b
	inc  b                                           ; $43cd: $04
	and  b                                           ; $43ce: $a0
	add  hl, bc                                      ; $43cf: $09
	dec  h                                           ; $43d0: $25
	inc  b                                           ; $43d1: $04
	and  b                                           ; $43d2: $a0
	inc  bc                                          ; $43d3: $03
	inc  h                                           ; $43d4: $24
	inc  b                                           ; $43d5: $04
	and  b                                           ; $43d6: $a0
	add  hl, bc                                      ; $43d7: $09
	jr   jr_0fd_43de                                 ; $43d8: $18 $04

	and  b                                           ; $43da: $a0
	inc  bc                                          ; $43db: $03
	dec  h                                           ; $43dc: $25
	inc  b                                           ; $43dd: $04

jr_0fd_43de:
	and  b                                           ; $43de: $a0
	add  hl, bc                                      ; $43df: $09
	dec  de                                          ; $43e0: $1b
	inc  b                                           ; $43e1: $04
	and  b                                           ; $43e2: $a0
	inc  bc                                          ; $43e3: $03
	jr   @+$06                                       ; $43e4: $18 $04

	and  b                                           ; $43e6: $a0
	add  hl, bc                                      ; $43e7: $09
	ld   hl, $a004                                   ; $43e8: $21 $04 $a0
	inc  bc                                          ; $43eb: $03
	dec  de                                          ; $43ec: $1b
	inc  b                                           ; $43ed: $04
	and  b                                           ; $43ee: $a0
	add  hl, bc                                      ; $43ef: $09
	ld   h, $04                                      ; $43f0: $26 $04
	inc  h                                           ; $43f2: $24
	inc  b                                           ; $43f3: $04
	ld   h, $04                                      ; $43f4: $26 $04
	inc  h                                           ; $43f6: $24
	inc  b                                           ; $43f7: $04
	ld   h, $04                                      ; $43f8: $26 $04
	ld   hl, $2804                                   ; $43fa: $21 $04 $28
	inc  b                                           ; $43fd: $04
	dec  de                                          ; $43fe: $1b
	inc  b                                           ; $43ff: $04
	ld   hl, $a004                                   ; $4400: $21 $04 $a0
	inc  bc                                          ; $4403: $03
	ld   hl, $a004                                   ; $4404: $21 $04 $a0
	add  hl, bc                                      ; $4407: $09
	dec  de                                          ; $4408: $1b
	inc  b                                           ; $4409: $04
	and  b                                           ; $440a: $a0
	inc  bc                                          ; $440b: $03
	dec  de                                          ; $440c: $1b
	inc  b                                           ; $440d: $04
	and  b                                           ; $440e: $a0
	add  hl, bc                                      ; $440f: $09
	inc  h                                           ; $4410: $24
	inc  b                                           ; $4411: $04
	and  b                                           ; $4412: $a0
	inc  bc                                          ; $4413: $03
	inc  h                                           ; $4414: $24
	inc  b                                           ; $4415: $04
	and  b                                           ; $4416: $a0
	add  hl, bc                                      ; $4417: $09
	ld   hl, $a004                                   ; $4418: $21 $04 $a0
	inc  bc                                          ; $441b: $03
	ld   hl, $a004                                   ; $441c: $21 $04 $a0
	add  hl, bc                                      ; $441f: $09
	add  hl, hl                                      ; $4420: $29
	inc  c                                           ; $4421: $0c
	and  b                                           ; $4422: $a0
	inc  bc                                          ; $4423: $03
	add  hl, hl                                      ; $4424: $29
	inc  b                                           ; $4425: $04
	and  b                                           ; $4426: $a0
	add  hl, bc                                      ; $4427: $09
	add  hl, hl                                      ; $4428: $29
	inc  c                                           ; $4429: $0c
	and  b                                           ; $442a: $a0
	inc  bc                                          ; $442b: $03
	add  hl, hl                                      ; $442c: $29
	inc  b                                           ; $442d: $04
	and  b                                           ; $442e: $a0
	add  hl, bc                                      ; $442f: $09
	inc  h                                           ; $4430: $24
	inc  c                                           ; $4431: $0c
	and  b                                           ; $4432: $a0
	inc  bc                                          ; $4433: $03
	inc  h                                           ; $4434: $24
	inc  b                                           ; $4435: $04
	and  b                                           ; $4436: $a0
	add  hl, bc                                      ; $4437: $09
	dec  h                                           ; $4438: $25
	inc  c                                           ; $4439: $0c
	and  b                                           ; $443a: $a0
	inc  bc                                          ; $443b: $03
	dec  h                                           ; $443c: $25
	inc  b                                           ; $443d: $04
	and  b                                           ; $443e: $a0
	add  hl, bc                                      ; $443f: $09
	ld   hl, $1f04                                   ; $4440: $21 $04 $1f
	inc  b                                           ; $4443: $04
	ld   d, $04                                      ; $4444: $16 $04
	and  b                                           ; $4446: $a0
	inc  bc                                          ; $4447: $03
	ld   hl, $a004                                   ; $4448: $21 $04 $a0
	add  hl, bc                                      ; $444b: $09
	ld   hl, $a004                                   ; $444c: $21 $04 $a0
	inc  bc                                          ; $444f: $03
	ld   d, $04                                      ; $4450: $16 $04
	and  b                                           ; $4452: $a0
	add  hl, bc                                      ; $4453: $09
	add  hl, de                                      ; $4454: $19
	inc  b                                           ; $4455: $04
	and  b                                           ; $4456: $a0
	inc  bc                                          ; $4457: $03
	ld   hl, $a004                                   ; $4458: $21 $04 $a0
	add  hl, bc                                      ; $445b: $09
	inc  h                                           ; $445c: $24
	inc  b                                           ; $445d: $04
	and  b                                           ; $445e: $a0
	inc  bc                                          ; $445f: $03
	add  hl, de                                      ; $4460: $19
	inc  b                                           ; $4461: $04
	and  b                                           ; $4462: $a0
	add  hl, bc                                      ; $4463: $09
	jr   jr_0fd_446a                                 ; $4464: $18 $04

	and  b                                           ; $4466: $a0
	inc  bc                                          ; $4467: $03
	inc  h                                           ; $4468: $24
	inc  b                                           ; $4469: $04

jr_0fd_446a:
	and  b                                           ; $446a: $a0
	add  hl, bc                                      ; $446b: $09
	inc  h                                           ; $446c: $24
	inc  b                                           ; $446d: $04
	and  b                                           ; $446e: $a0
	inc  bc                                          ; $446f: $03
	jr   @+$06                                       ; $4470: $18 $04

	and  b                                           ; $4472: $a0
	add  hl, bc                                      ; $4473: $09
	ld   hl, $a004                                   ; $4474: $21 $04 $a0
	inc  bc                                          ; $4477: $03
	inc  h                                           ; $4478: $24
	inc  b                                           ; $4479: $04
	and  b                                           ; $447a: $a0
	add  hl, bc                                      ; $447b: $09
	ld   [hl+], a                                    ; $447c: $22
	inc  b                                           ; $447d: $04
	and  b                                           ; $447e: $a0
	inc  bc                                          ; $447f: $03
	ld   hl, $a004                                   ; $4480: $21 $04 $a0
	add  hl, bc                                      ; $4483: $09
	ld   d, $04                                      ; $4484: $16 $04
	and  b                                           ; $4486: $a0
	inc  bc                                          ; $4487: $03
	ld   [hl+], a                                    ; $4488: $22
	inc  b                                           ; $4489: $04
	and  b                                           ; $448a: $a0
	add  hl, bc                                      ; $448b: $09
	add  hl, de                                      ; $448c: $19
	inc  b                                           ; $448d: $04
	and  b                                           ; $448e: $a0
	inc  bc                                          ; $448f: $03
	ld   d, $04                                      ; $4490: $16 $04
	and  b                                           ; $4492: $a0
	add  hl, bc                                      ; $4493: $09
	ld   d, $04                                      ; $4494: $16 $04
	and  b                                           ; $4496: $a0
	inc  bc                                          ; $4497: $03
	add  hl, de                                      ; $4498: $19
	inc  b                                           ; $4499: $04
	and  b                                           ; $449a: $a0
	add  hl, bc                                      ; $449b: $09
	dec  h                                           ; $449c: $25
	inc  b                                           ; $449d: $04
	and  b                                           ; $449e: $a0
	inc  bc                                          ; $449f: $03
	ld   d, $04                                      ; $44a0: $16 $04
	and  b                                           ; $44a2: $a0
	add  hl, bc                                      ; $44a3: $09
	jr   jr_0fd_44aa                                 ; $44a4: $18 $04

	and  b                                           ; $44a6: $a0
	inc  bc                                          ; $44a7: $03
	dec  h                                           ; $44a8: $25
	inc  b                                           ; $44a9: $04

jr_0fd_44aa:
	and  b                                           ; $44aa: $a0
	add  hl, bc                                      ; $44ab: $09
	ld   hl, $a004                                   ; $44ac: $21 $04 $a0
	inc  bc                                          ; $44af: $03
	jr   jr_0fd_44b6                                 ; $44b0: $18 $04

	and  b                                           ; $44b2: $a0
	add  hl, bc                                      ; $44b3: $09
	dec  h                                           ; $44b4: $25
	inc  b                                           ; $44b5: $04

jr_0fd_44b6:
	and  b                                           ; $44b6: $a0
	inc  bc                                          ; $44b7: $03
	ld   hl, $a004                                   ; $44b8: $21 $04 $a0
	add  hl, bc                                      ; $44bb: $09
	ld   h, $04                                      ; $44bc: $26 $04
	and  b                                           ; $44be: $a0
	inc  bc                                          ; $44bf: $03
	dec  h                                           ; $44c0: $25
	inc  b                                           ; $44c1: $04
	and  b                                           ; $44c2: $a0
	add  hl, bc                                      ; $44c3: $09
	add  hl, de                                      ; $44c4: $19
	inc  b                                           ; $44c5: $04
	and  b                                           ; $44c6: $a0
	inc  bc                                          ; $44c7: $03
	ld   h, $04                                      ; $44c8: $26 $04
	and  b                                           ; $44ca: $a0
	add  hl, bc                                      ; $44cb: $09
	ld   [hl+], a                                    ; $44cc: $22
	inc  b                                           ; $44cd: $04
	and  b                                           ; $44ce: $a0
	inc  bc                                          ; $44cf: $03
	add  hl, de                                      ; $44d0: $19
	inc  b                                           ; $44d1: $04
	and  b                                           ; $44d2: $a0
	add  hl, bc                                      ; $44d3: $09
	ld   h, $04                                      ; $44d4: $26 $04
	and  b                                           ; $44d6: $a0
	inc  bc                                          ; $44d7: $03
	ld   [hl+], a                                    ; $44d8: $22
	inc  b                                           ; $44d9: $04
	and  b                                           ; $44da: $a0
	add  hl, bc                                      ; $44db: $09
	ld   [hl+], a                                    ; $44dc: $22
	inc  b                                           ; $44dd: $04
	and  b                                           ; $44de: $a0
	inc  bc                                          ; $44df: $03
	ld   h, $04                                      ; $44e0: $26 $04
	and  b                                           ; $44e2: $a0
	add  hl, bc                                      ; $44e3: $09
	ld   d, $04                                      ; $44e4: $16 $04
	and  b                                           ; $44e6: $a0
	inc  bc                                          ; $44e7: $03
	ld   [hl+], a                                    ; $44e8: $22
	inc  b                                           ; $44e9: $04
	and  b                                           ; $44ea: $a0
	add  hl, bc                                      ; $44eb: $09
	add  hl, de                                      ; $44ec: $19
	inc  b                                           ; $44ed: $04
	and  b                                           ; $44ee: $a0
	inc  bc                                          ; $44ef: $03
	ld   d, $04                                      ; $44f0: $16 $04
	and  b                                           ; $44f2: $a0
	add  hl, bc                                      ; $44f3: $09
	ld   [hl+], a                                    ; $44f4: $22
	inc  b                                           ; $44f5: $04
	and  b                                           ; $44f6: $a0
	inc  bc                                          ; $44f7: $03
	add  hl, de                                      ; $44f8: $19
	inc  b                                           ; $44f9: $04
	and  b                                           ; $44fa: $a0
	add  hl, bc                                      ; $44fb: $09
	ld   hl, $a004                                   ; $44fc: $21 $04 $a0
	inc  bc                                          ; $44ff: $03
	ld   [hl+], a                                    ; $4500: $22
	inc  b                                           ; $4501: $04
	and  b                                           ; $4502: $a0
	add  hl, bc                                      ; $4503: $09
	inc  d                                           ; $4504: $14
	inc  b                                           ; $4505: $04
	and  b                                           ; $4506: $a0
	inc  bc                                          ; $4507: $03
	ld   hl, $a004                                   ; $4508: $21 $04 $a0
	add  hl, bc                                      ; $450b: $09
	dec  de                                          ; $450c: $1b
	inc  b                                           ; $450d: $04
	and  b                                           ; $450e: $a0
	inc  bc                                          ; $450f: $03
	inc  d                                           ; $4510: $14
	inc  b                                           ; $4511: $04
	and  b                                           ; $4512: $a0
	add  hl, bc                                      ; $4513: $09
	ld   hl, $a004                                   ; $4514: $21 $04 $a0
	inc  bc                                          ; $4517: $03
	dec  de                                          ; $4518: $1b
	inc  b                                           ; $4519: $04
	and  b                                           ; $451a: $a0
	add  hl, bc                                      ; $451b: $09
	add  hl, de                                      ; $451c: $19
	inc  b                                           ; $451d: $04
	and  b                                           ; $451e: $a0
	inc  bc                                          ; $451f: $03
	ld   hl, $1f04                                   ; $4520: $21 $04 $1f
	inc  b                                           ; $4523: $04
	add  hl, de                                      ; $4524: $19
	inc  b                                           ; $4525: $04
	and  b                                           ; $4526: $a0
	add  hl, bc                                      ; $4527: $09
	ld   hl, $a004                                   ; $4528: $21 $04 $a0
	inc  bc                                          ; $452b: $03
	ld   hl, $a004                                   ; $452c: $21 $04 $a0
	add  hl, bc                                      ; $452f: $09
	ld   [hl+], a                                    ; $4530: $22
	inc  b                                           ; $4531: $04
	and  b                                           ; $4532: $a0
	inc  bc                                          ; $4533: $03
	ld   [hl+], a                                    ; $4534: $22
	inc  b                                           ; $4535: $04
	or   b                                           ; $4536: $b0
	di                                               ; $4537: $f3
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	and  b                                           ; $453a: $a0
	add  hl, bc                                      ; $453b: $09
	inc  h                                           ; $453c: $24
	ld   [$0421], sp                                 ; $453d: $08 $21 $04
	and  b                                           ; $4540: $a0
	inc  bc                                          ; $4541: $03
	inc  h                                           ; $4542: $24
	inc  b                                           ; $4543: $04
	and  b                                           ; $4544: $a0
	add  hl, bc                                      ; $4545: $09
	inc  h                                           ; $4546: $24
	inc  b                                           ; $4547: $04
	and  b                                           ; $4548: $a0
	inc  bc                                          ; $4549: $03
	ld   hl, $a004                                   ; $454a: $21 $04 $a0
	add  hl, bc                                      ; $454d: $09
	add  hl, hl                                      ; $454e: $29
	inc  c                                           ; $454f: $0c
	and  b                                           ; $4550: $a0
	inc  bc                                          ; $4551: $03
	add  hl, hl                                      ; $4552: $29
	inc  b                                           ; $4553: $04
	and  b                                           ; $4554: $a0
	add  hl, bc                                      ; $4555: $09
	inc  h                                           ; $4556: $24
	inc  b                                           ; $4557: $04
	rra                                              ; $4558: $1f
	inc  b                                           ; $4559: $04
	ld   hl, $a004                                   ; $455a: $21 $04 $a0
	inc  bc                                          ; $455d: $03
	inc  h                                           ; $455e: $24
	inc  b                                           ; $455f: $04
	and  b                                           ; $4560: $a0
	add  hl, bc                                      ; $4561: $09
	inc  h                                           ; $4562: $24
	inc  b                                           ; $4563: $04
	and  b                                           ; $4564: $a0
	inc  bc                                          ; $4565: $03
	ld   hl, $a004                                   ; $4566: $21 $04 $a0
	add  hl, bc                                      ; $4569: $09
	jr   z, jr_0fd_4570                              ; $456a: $28 $04

	and  b                                           ; $456c: $a0
	inc  bc                                          ; $456d: $03
	inc  h                                           ; $456e: $24
	inc  b                                           ; $456f: $04

jr_0fd_4570:
	and  b                                           ; $4570: $a0
	add  hl, bc                                      ; $4571: $09
	jr   jr_0fd_4578                                 ; $4572: $18 $04

	and  b                                           ; $4574: $a0
	inc  bc                                          ; $4575: $03
	jr   z, @+$06                                    ; $4576: $28 $04

jr_0fd_4578:
	and  b                                           ; $4578: $a0
	add  hl, bc                                      ; $4579: $09
	ld   hl, $a004                                   ; $457a: $21 $04 $a0
	inc  bc                                          ; $457d: $03
	jr   jr_0fd_4584                                 ; $457e: $18 $04

	and  b                                           ; $4580: $a0
	add  hl, bc                                      ; $4581: $09
	jr   z, jr_0fd_4590                              ; $4582: $28 $0c

jr_0fd_4584:
	and  b                                           ; $4584: $a0
	inc  bc                                          ; $4585: $03
	jr   z, jr_0fd_458c                              ; $4586: $28 $04

	and  b                                           ; $4588: $a0
	add  hl, bc                                      ; $4589: $09
	inc  h                                           ; $458a: $24
	inc  b                                           ; $458b: $04

jr_0fd_458c:
	rra                                              ; $458c: $1f
	inc  b                                           ; $458d: $04
	jr   jr_0fd_4594                                 ; $458e: $18 $04

jr_0fd_4590:
	and  b                                           ; $4590: $a0
	inc  bc                                          ; $4591: $03
	inc  h                                           ; $4592: $24
	inc  b                                           ; $4593: $04

jr_0fd_4594:
	and  b                                           ; $4594: $a0
	add  hl, bc                                      ; $4595: $09
	ld   hl, $a004                                   ; $4596: $21 $04 $a0
	inc  bc                                          ; $4599: $03
	jr   jr_0fd_45a0                                 ; $459a: $18 $04

	xor  l                                           ; $459c: $ad
	nop                                              ; $459d: $00
	and  b                                           ; $459e: $a0
	add  hl, bc                                      ; $459f: $09

jr_0fd_45a0:
	ld   hl, $1f04                                   ; $45a0: $21 $04 $1f
	inc  b                                           ; $45a3: $04
	inc  d                                           ; $45a4: $14
	inc  b                                           ; $45a5: $04
	and  b                                           ; $45a6: $a0
	inc  bc                                          ; $45a7: $03
	ld   hl, $a004                                   ; $45a8: $21 $04 $a0
	add  hl, bc                                      ; $45ab: $09
	add  hl, de                                      ; $45ac: $19
	inc  b                                           ; $45ad: $04
	and  b                                           ; $45ae: $a0
	inc  bc                                          ; $45af: $03
	inc  d                                           ; $45b0: $14
	inc  b                                           ; $45b1: $04
	and  b                                           ; $45b2: $a0
	add  hl, bc                                      ; $45b3: $09
	dec  de                                          ; $45b4: $1b
	inc  b                                           ; $45b5: $04
	and  b                                           ; $45b6: $a0
	inc  bc                                          ; $45b7: $03
	add  hl, de                                      ; $45b8: $19
	inc  b                                           ; $45b9: $04
	and  b                                           ; $45ba: $a0
	add  hl, bc                                      ; $45bb: $09
	ld   hl, $a004                                   ; $45bc: $21 $04 $a0
	inc  bc                                          ; $45bf: $03
	dec  de                                          ; $45c0: $1b
	inc  b                                           ; $45c1: $04
	and  b                                           ; $45c2: $a0
	add  hl, bc                                      ; $45c3: $09
	inc  d                                           ; $45c4: $14
	inc  b                                           ; $45c5: $04
	and  b                                           ; $45c6: $a0
	inc  bc                                          ; $45c7: $03
	ld   hl, $a004                                   ; $45c8: $21 $04 $a0
	add  hl, bc                                      ; $45cb: $09
	add  hl, de                                      ; $45cc: $19
	inc  b                                           ; $45cd: $04
	and  b                                           ; $45ce: $a0
	inc  bc                                          ; $45cf: $03
	inc  d                                           ; $45d0: $14
	inc  b                                           ; $45d1: $04
	and  b                                           ; $45d2: $a0
	add  hl, bc                                      ; $45d3: $09
	dec  de                                          ; $45d4: $1b
	inc  b                                           ; $45d5: $04
	and  b                                           ; $45d6: $a0
	inc  bc                                          ; $45d7: $03
	add  hl, de                                      ; $45d8: $19
	inc  b                                           ; $45d9: $04
	and  b                                           ; $45da: $a0
	add  hl, bc                                      ; $45db: $09
	ld   hl, $a004                                   ; $45dc: $21 $04 $a0
	inc  bc                                          ; $45df: $03
	dec  de                                          ; $45e0: $1b
	inc  b                                           ; $45e1: $04
	and  b                                           ; $45e2: $a0
	add  hl, bc                                      ; $45e3: $09
	ld   d, $04                                      ; $45e4: $16 $04
	and  b                                           ; $45e6: $a0
	inc  bc                                          ; $45e7: $03
	ld   hl, $a004                                   ; $45e8: $21 $04 $a0
	add  hl, bc                                      ; $45eb: $09
	add  hl, de                                      ; $45ec: $19
	inc  b                                           ; $45ed: $04
	and  b                                           ; $45ee: $a0
	inc  bc                                          ; $45ef: $03
	ld   d, $04                                      ; $45f0: $16 $04
	and  b                                           ; $45f2: $a0
	add  hl, bc                                      ; $45f3: $09
	dec  de                                          ; $45f4: $1b
	inc  b                                           ; $45f5: $04
	and  b                                           ; $45f6: $a0
	inc  bc                                          ; $45f7: $03
	add  hl, de                                      ; $45f8: $19
	inc  b                                           ; $45f9: $04
	and  b                                           ; $45fa: $a0
	add  hl, bc                                      ; $45fb: $09
	ld   hl, $a004                                   ; $45fc: $21 $04 $a0
	inc  bc                                          ; $45ff: $03
	dec  de                                          ; $4600: $1b
	inc  b                                           ; $4601: $04
	and  b                                           ; $4602: $a0
	add  hl, bc                                      ; $4603: $09
	ld   d, $04                                      ; $4604: $16 $04
	and  b                                           ; $4606: $a0
	inc  bc                                          ; $4607: $03
	ld   hl, $a004                                   ; $4608: $21 $04 $a0
	add  hl, bc                                      ; $460b: $09

jr_0fd_460c:
	add  hl, de                                      ; $460c: $19
	inc  b                                           ; $460d: $04
	and  b                                           ; $460e: $a0
	inc  bc                                          ; $460f: $03
	ld   d, $04                                      ; $4610: $16 $04
	and  b                                           ; $4612: $a0
	add  hl, bc                                      ; $4613: $09
	dec  de                                          ; $4614: $1b
	inc  b                                           ; $4615: $04
	and  b                                           ; $4616: $a0
	inc  bc                                          ; $4617: $03
	add  hl, de                                      ; $4618: $19
	inc  b                                           ; $4619: $04
	xor  l                                           ; $461a: $ad
	nop                                              ; $461b: $00
	add  hl, bc                                      ; $461c: $09
	nop                                              ; $461d: $00
	add  hl, bc                                      ; $461e: $09
	nop                                              ; $461f: $00
	and  d                                           ; $4620: $a2
	ld   bc, $70c7                                   ; $4621: $01 $c7 $70
	and  e                                           ; $4624: $a3
	ld   h, $a0                                      ; $4625: $26 $a0
	inc  c                                           ; $4627: $0c
	add  hl, hl                                      ; $4628: $29
	ld   [$082b], sp                                 ; $4629: $08 $2b $08
	db   $fd                                         ; $462c: $fd
	di                                               ; $462d: $f3
	and  b                                           ; $462e: $a0
	inc  c                                           ; $462f: $0c
	ld   sp, $2b08                                   ; $4630: $31 $08 $2b
	ld   [$0831], sp                                 ; $4633: $08 $31 $08
	inc  [hl]                                        ; $4636: $34
	ld   [$182b], sp                                 ; $4637: $08 $2b $18
	and  b                                           ; $463a: $a0
	inc  bc                                          ; $463b: $03
	dec  hl                                          ; $463c: $2b
	ld   [$0ca0], sp                                 ; $463d: $08 $a0 $0c
	add  hl, hl                                      ; $4640: $29
	ld   [$0828], sp                                 ; $4641: $08 $28 $08
	add  hl, hl                                      ; $4644: $29
	ld   [$0831], sp                                 ; $4645: $08 $31 $08
	jr   z, jr_0fd_4662                              ; $4648: $28 $18

	and  b                                           ; $464a: $a0
	inc  bc                                          ; $464b: $03
	jr   z, @+$0a                                    ; $464c: $28 $08

	and  b                                           ; $464e: $a0
	inc  c                                           ; $464f: $0c
	ld   h, $08                                      ; $4650: $26 $08
	jr   z, jr_0fd_465c                              ; $4652: $28 $08

	add  hl, hl                                      ; $4654: $29
	ld   [$0831], sp                                 ; $4655: $08 $31 $08
	dec  hl                                          ; $4658: $2b
	db   $10                                         ; $4659: $10
	jr   z, jr_0fd_466c                              ; $465a: $28 $10

jr_0fd_465c:
	ld   h, $34                                      ; $465c: $26 $34
	and  b                                           ; $465e: $a0
	inc  bc                                          ; $465f: $03
	ld   h, $08                                      ; $4660: $26 $08

jr_0fd_4662:
	rra                                              ; $4662: $1f
	inc  b                                           ; $4663: $04
	and  d                                           ; $4664: $a2
	nop                                              ; $4665: $00
	rst  ToBoot                                         ; $4666: $c7
	jr   nc, jr_0fd_460c                             ; $4667: $30 $a3

jr_0fd_4669:
	ld   h, $a0                                      ; $4669: $26 $a0
	inc  c                                           ; $466b: $0c

jr_0fd_466c:
	add  hl, de                                      ; $466c: $19
	ld   [bc], a                                     ; $466d: $02
	and  b                                           ; $466e: $a0
	inc  bc                                          ; $466f: $03
	add  hl, de                                      ; $4670: $19
	ld   [bc], a                                     ; $4671: $02
	and  b                                           ; $4672: $a0
	inc  c                                           ; $4673: $0c
	add  hl, de                                      ; $4674: $19
	ld   [bc], a                                     ; $4675: $02
	and  b                                           ; $4676: $a0
	inc  bc                                          ; $4677: $03
	add  hl, de                                      ; $4678: $19
	ld   [bc], a                                     ; $4679: $02
	and  b                                           ; $467a: $a0
	inc  c                                           ; $467b: $0c
	add  hl, de                                      ; $467c: $19
	ld   [bc], a                                     ; $467d: $02
	and  b                                           ; $467e: $a0
	inc  bc                                          ; $467f: $03
	add  hl, de                                      ; $4680: $19
	ld   [bc], a                                     ; $4681: $02
	and  b                                           ; $4682: $a0
	inc  c                                           ; $4683: $0c
	add  hl, de                                      ; $4684: $19
	inc  b                                           ; $4685: $04
	dec  de                                          ; $4686: $1b
	ld   [$0419], sp                                 ; $4687: $08 $19 $04
	ld   hl, $a020                                   ; $468a: $21 $20 $a0

jr_0fd_468d:
	inc  bc                                          ; $468d: $03
	ld   hl, $a004                                   ; $468e: $21 $04 $a0
	inc  c                                           ; $4691: $0c
	inc  h                                           ; $4692: $24
	ld   [bc], a                                     ; $4693: $02
	and  b                                           ; $4694: $a0
	inc  bc                                          ; $4695: $03
	inc  h                                           ; $4696: $24
	ld   [bc], a                                     ; $4697: $02
	and  b                                           ; $4698: $a0
	inc  c                                           ; $4699: $0c
	inc  h                                           ; $469a: $24
	ld   [bc], a                                     ; $469b: $02
	and  b                                           ; $469c: $a0
	inc  bc                                          ; $469d: $03
	inc  h                                           ; $469e: $24
	ld   [bc], a                                     ; $469f: $02
	and  b                                           ; $46a0: $a0
	inc  c                                           ; $46a1: $0c
	inc  h                                           ; $46a2: $24
	inc  b                                           ; $46a3: $04
	ld   hl, $2404                                   ; $46a4: $21 $04 $24
	ld   [$0426], sp                                 ; $46a7: $08 $26 $04
	inc  h                                           ; $46aa: $24
	inc  d                                           ; $46ab: $14
	and  b                                           ; $46ac: $a0
	inc  bc                                          ; $46ad: $03
	inc  h                                           ; $46ae: $24
	inc  b                                           ; $46af: $04
	rra                                              ; $46b0: $1f
	inc  b                                           ; $46b1: $04
	and  b                                           ; $46b2: $a0
	inc  c                                           ; $46b3: $0c
	ld   hl, $2404                                   ; $46b4: $21 $04 $24
	inc  b                                           ; $46b7: $04
	ld   h, $10                                      ; $46b8: $26 $10
	and  b                                           ; $46ba: $a0
	inc  bc                                          ; $46bb: $03
	ld   h, $04                                      ; $46bc: $26 $04
	and  b                                           ; $46be: $a0
	inc  c                                           ; $46bf: $0c
	ld   h, $04                                      ; $46c0: $26 $04
	inc  h                                           ; $46c2: $24
	inc  b                                           ; $46c3: $04
	ld   hl, $1904                                   ; $46c4: $21 $04 $19
	jr   jr_0fd_4669                                 ; $46c7: $18 $a0

	inc  bc                                          ; $46c9: $03
	add  hl, de                                      ; $46ca: $19
	inc  b                                           ; $46cb: $04
	rra                                              ; $46cc: $1f
	inc  b                                           ; $46cd: $04
	and  b                                           ; $46ce: $a0
	inc  c                                           ; $46cf: $0c
	dec  de                                          ; $46d0: $1b
	ld   [bc], a                                     ; $46d1: $02
	and  b                                           ; $46d2: $a0
	inc  bc                                          ; $46d3: $03
	dec  de                                          ; $46d4: $1b
	ld   [bc], a                                     ; $46d5: $02
	and  b                                           ; $46d6: $a0
	inc  c                                           ; $46d7: $0c
	dec  de                                          ; $46d8: $1b
	ld   [bc], a                                     ; $46d9: $02
	and  b                                           ; $46da: $a0

jr_0fd_46db:
	inc  bc                                          ; $46db: $03
	dec  de                                          ; $46dc: $1b
	ld   [bc], a                                     ; $46dd: $02
	and  b                                           ; $46de: $a0
	inc  c                                           ; $46df: $0c
	dec  de                                          ; $46e0: $1b
	inc  b                                           ; $46e1: $04
	add  hl, de                                      ; $46e2: $19
	inc  b                                           ; $46e3: $04
	dec  de                                          ; $46e4: $1b
	ld   [$0421], sp                                 ; $46e5: $08 $21 $04
	add  hl, de                                      ; $46e8: $19
	inc  b                                           ; $46e9: $04
	dec  de                                          ; $46ea: $1b
	jr   jr_0fd_468d                                 ; $46eb: $18 $a0

	inc  bc                                          ; $46ed: $03
	dec  de                                          ; $46ee: $1b
	inc  b                                           ; $46ef: $04
	rra                                              ; $46f0: $1f
	inc  b                                           ; $46f1: $04
	and  b                                           ; $46f2: $a0
	inc  c                                           ; $46f3: $0c
	add  hl, de                                      ; $46f4: $19
	ld   [bc], a                                     ; $46f5: $02
	and  b                                           ; $46f6: $a0
	inc  bc                                          ; $46f7: $03
	add  hl, de                                      ; $46f8: $19
	ld   [bc], a                                     ; $46f9: $02
	and  b                                           ; $46fa: $a0
	inc  c                                           ; $46fb: $0c
	add  hl, de                                      ; $46fc: $19
	ld   [bc], a                                     ; $46fd: $02
	and  b                                           ; $46fe: $a0
	inc  bc                                          ; $46ff: $03
	add  hl, de                                      ; $4700: $19
	ld   [bc], a                                     ; $4701: $02
	and  b                                           ; $4702: $a0
	inc  c                                           ; $4703: $0c
	add  hl, de                                      ; $4704: $19
	ld   [bc], a                                     ; $4705: $02
	and  b                                           ; $4706: $a0
	inc  bc                                          ; $4707: $03
	add  hl, de                                      ; $4708: $19
	ld   [bc], a                                     ; $4709: $02
	and  b                                           ; $470a: $a0
	inc  c                                           ; $470b: $0c
	add  hl, de                                      ; $470c: $19
	inc  b                                           ; $470d: $04
	dec  de                                          ; $470e: $1b
	ld   [$0419], sp                                 ; $470f: $08 $19 $04
	ld   hl, $a014                                   ; $4712: $21 $14 $a0
	inc  bc                                          ; $4715: $03
	ld   hl, $a004                                   ; $4716: $21 $04 $a0
	inc  c                                           ; $4719: $0c
	add  hl, de                                      ; $471a: $19
	inc  b                                           ; $471b: $04
	dec  de                                          ; $471c: $1b
	inc  b                                           ; $471d: $04
	ld   hl, $2404                                   ; $471e: $21 $04 $24
	ld   [bc], a                                     ; $4721: $02
	and  b                                           ; $4722: $a0
	inc  bc                                          ; $4723: $03
	inc  h                                           ; $4724: $24
	ld   [bc], a                                     ; $4725: $02
	and  b                                           ; $4726: $a0
	inc  c                                           ; $4727: $0c
	inc  h                                           ; $4728: $24
	ld   [bc], a                                     ; $4729: $02
	and  b                                           ; $472a: $a0
	inc  bc                                          ; $472b: $03
	inc  h                                           ; $472c: $24
	ld   [bc], a                                     ; $472d: $02
	and  b                                           ; $472e: $a0
	inc  c                                           ; $472f: $0c
	inc  h                                           ; $4730: $24
	inc  b                                           ; $4731: $04
	ld   hl, $2404                                   ; $4732: $21 $04 $24
	ld   [$0426], sp                                 ; $4735: $08 $26 $04
	inc  h                                           ; $4738: $24
	jr   jr_0fd_46db                                 ; $4739: $18 $a0

	inc  bc                                          ; $473b: $03
	inc  h                                           ; $473c: $24
	inc  b                                           ; $473d: $04
	and  b                                           ; $473e: $a0
	inc  c                                           ; $473f: $0c
	ld   hl, $2404                                   ; $4740: $21 $04 $24
	inc  b                                           ; $4743: $04
	ld   h, $10                                      ; $4744: $26 $10
	add  hl, hl                                      ; $4746: $29
	db   $10                                         ; $4747: $10
	and  b                                           ; $4748: $a0
	inc  bc                                          ; $4749: $03
	add  hl, hl                                      ; $474a: $29
	inc  b                                           ; $474b: $04
	rra                                              ; $474c: $1f
	inc  b                                           ; $474d: $04
	and  b                                           ; $474e: $a0
	inc  c                                           ; $474f: $0c
	jr   z, jr_0fd_475a                              ; $4750: $28 $08

	ld   sp, $2808                                   ; $4752: $31 $08 $28
	ld   [$3026], sp                                 ; $4755: $08 $26 $30
	and  b                                           ; $4758: $a0
	inc  bc                                          ; $4759: $03

jr_0fd_475a:
	ld   h, $08                                      ; $475a: $26 $08
	and  b                                           ; $475c: $a0
	inc  c                                           ; $475d: $0c
	ld   h, $04                                      ; $475e: $26 $04
	jr   z, jr_0fd_4766                              ; $4760: $28 $04

	add  hl, hl                                      ; $4762: $29
	ld   [$0828], sp                                 ; $4763: $08 $28 $08

jr_0fd_4766:
	ld   h, $08                                      ; $4766: $26 $08
	inc  h                                           ; $4768: $24
	ld   [$1421], sp                                 ; $4769: $08 $21 $14
	and  b                                           ; $476c: $a0
	inc  bc                                          ; $476d: $03
	ld   hl, $a004                                   ; $476e: $21 $04 $a0
	inc  c                                           ; $4771: $0c
	ld   hl, $2404                                   ; $4772: $21 $04 $24
	inc  b                                           ; $4775: $04
	ld   h, $08                                      ; $4776: $26 $08
	ld   hl, $1b08                                   ; $4778: $21 $08 $1b
	ld   [$0819], sp                                 ; $477b: $08 $19 $08
	dec  de                                          ; $477e: $1b
	db   $10                                         ; $477f: $10
	ld   hl, $1b08                                   ; $4780: $21 $08 $1b
	inc  b                                           ; $4783: $04
	add  hl, de                                      ; $4784: $19
	ld   b, h                                        ; $4785: $44
	and  b                                           ; $4786: $a0
	inc  bc                                          ; $4787: $03
	add  hl, de                                      ; $4788: $19
	inc  b                                           ; $4789: $04
	rra                                              ; $478a: $1f
	inc  c                                           ; $478b: $0c
	and  b                                           ; $478c: $a0
	inc  c                                           ; $478d: $0c
	inc  [hl]                                        ; $478e: $34
	db   $10                                         ; $478f: $10
	ld   [hl-], a                                    ; $4790: $32
	db   $10                                         ; $4791: $10
	dec  hl                                          ; $4792: $2b
	db   $10                                         ; $4793: $10
	jp   $2410                                       ; $4794: $c3 $10 $24


	jr   jr_0fd_47ba                                 ; $4797: $18 $21

	inc  b                                           ; $4799: $04
	dec  de                                          ; $479a: $1b
	inc  b                                           ; $479b: $04
	add  hl, de                                      ; $479c: $19
	db   $10                                         ; $479d: $10
	ld   hl, $2408                                   ; $479e: $21 $08 $24
	ld   [$3426], sp                                 ; $47a1: $08 $26 $34
	and  b                                           ; $47a4: $a0
	inc  bc                                          ; $47a5: $03
	ld   h, $04                                      ; $47a6: $26 $04
	and  b                                           ; $47a8: $a0
	inc  c                                           ; $47a9: $0c
	inc  h                                           ; $47aa: $24
	ld   [bc], a                                     ; $47ab: $02
	and  b                                           ; $47ac: $a0
	inc  bc                                          ; $47ad: $03
	inc  h                                           ; $47ae: $24
	ld   [bc], a                                     ; $47af: $02
	and  b                                           ; $47b0: $a0
	inc  c                                           ; $47b1: $0c
	inc  h                                           ; $47b2: $24
	inc  b                                           ; $47b3: $04
	ld   h, $1c                                      ; $47b4: $26 $1c
	and  b                                           ; $47b6: $a0
	inc  bc                                          ; $47b7: $03
	ld   h, $04                                      ; $47b8: $26 $04

jr_0fd_47ba:
	and  b                                           ; $47ba: $a0
	inc  c                                           ; $47bb: $0c
	ld   h, $08                                      ; $47bc: $26 $08
	add  hl, hl                                      ; $47be: $29
	inc  b                                           ; $47bf: $04
	and  b                                           ; $47c0: $a0
	inc  bc                                          ; $47c1: $03
	add  hl, hl                                      ; $47c2: $29

jr_0fd_47c3:
	inc  b                                           ; $47c3: $04
	and  b                                           ; $47c4: $a0
	inc  c                                           ; $47c5: $0c
	add  hl, hl                                      ; $47c6: $29
	ld   [$0426], sp                                 ; $47c7: $08 $26 $04
	and  b                                           ; $47ca: $a0
	inc  bc                                          ; $47cb: $03
	ld   h, $04                                      ; $47cc: $26 $04
	and  b                                           ; $47ce: $a0
	inc  c                                           ; $47cf: $0c
	ld   h, $18                                      ; $47d0: $26 $18
	inc  h                                           ; $47d2: $24
	inc  b                                           ; $47d3: $04
	and  b                                           ; $47d4: $a0
	inc  bc                                          ; $47d5: $03
	inc  h                                           ; $47d6: $24
	inc  b                                           ; $47d7: $04
	and  b                                           ; $47d8: $a0
	inc  c                                           ; $47d9: $0c
	inc  h                                           ; $47da: $24
	inc  e                                           ; $47db: $1c
	and  b                                           ; $47dc: $a0
	inc  bc                                          ; $47dd: $03
	inc  h                                           ; $47de: $24
	inc  b                                           ; $47df: $04
	and  b                                           ; $47e0: $a0
	inc  c                                           ; $47e1: $0c
	inc  h                                           ; $47e2: $24
	jr   jr_0fd_4806                                 ; $47e3: $18 $21

	inc  b                                           ; $47e5: $04
	dec  de                                          ; $47e6: $1b
	inc  b                                           ; $47e7: $04
	add  hl, de                                      ; $47e8: $19
	db   $10                                         ; $47e9: $10
	ld   hl, $2408                                   ; $47ea: $21 $08 $24
	ld   [$3429], sp                                 ; $47ed: $08 $29 $34
	and  b                                           ; $47f0: $a0
	inc  bc                                          ; $47f1: $03
	add  hl, hl                                      ; $47f2: $29
	inc  b                                           ; $47f3: $04
	and  b                                           ; $47f4: $a0
	inc  c                                           ; $47f5: $0c
	ld   h, $04                                      ; $47f6: $26 $04
	add  hl, hl                                      ; $47f8: $29
	inc  b                                           ; $47f9: $04
	dec  hl                                          ; $47fa: $2b
	ld   c, $a0                                      ; $47fb: $0e $a0
	inc  bc                                          ; $47fd: $03
	dec  hl                                          ; $47fe: $2b
	ld   [bc], a                                     ; $47ff: $02
	and  b                                           ; $4800: $a0
	inc  c                                           ; $4801: $0c
	dec  hl                                          ; $4802: $2b
	ld   b, $a0                                      ; $4803: $06 $a0
	inc  bc                                          ; $4805: $03

jr_0fd_4806:
	dec  hl                                          ; $4806: $2b
	ld   [bc], a                                     ; $4807: $02
	and  b                                           ; $4808: $a0
	inc  c                                           ; $4809: $0c
	dec  hl                                          ; $480a: $2b
	ld   b, $a0                                      ; $480b: $06 $a0
	inc  bc                                          ; $480d: $03
	dec  hl                                          ; $480e: $2b
	ld   [bc], a                                     ; $480f: $02
	and  b                                           ; $4810: $a0
	inc  c                                           ; $4811: $0c
	dec  hl                                          ; $4812: $2b
	ld   b, $a0                                      ; $4813: $06 $a0
	inc  bc                                          ; $4815: $03
	dec  hl                                          ; $4816: $2b
	ld   [bc], a                                     ; $4817: $02
	and  b                                           ; $4818: $a0
	inc  c                                           ; $4819: $0c
	dec  hl                                          ; $481a: $2b
	ld   [$0829], sp                                 ; $481b: $08 $29 $08
	ld   sp, $2b08                                   ; $481e: $31 $08 $2b
	jr   c, jr_0fd_47c3                              ; $4821: $38 $a0

	inc  bc                                          ; $4823: $03
	dec  hl                                          ; $4824: $2b
	ld   [$30c7], sp                                 ; $4825: $08 $c7 $30
	and  b                                           ; $4828: $a0
	inc  c                                           ; $4829: $0c
	add  hl, hl                                      ; $482a: $29
	inc  b                                           ; $482b: $04
	jr   z, jr_0fd_4832                              ; $482c: $28 $04

	add  hl, hl                                      ; $482e: $29
	inc  b                                           ; $482f: $04
	jr   z, jr_0fd_4836                              ; $4830: $28 $04

jr_0fd_4832:
	add  hl, hl                                      ; $4832: $29
	ld   [$082b], sp                                 ; $4833: $08 $2b $08

jr_0fd_4836:
	jr   z, jr_0fd_4854                              ; $4836: $28 $1c

	and  b                                           ; $4838: $a0
	inc  bc                                          ; $4839: $03
	jr   z, jr_0fd_4840                              ; $483a: $28 $04

	and  b                                           ; $483c: $a0
	inc  c                                           ; $483d: $0c
	ld   h, $02                                      ; $483e: $26 $02

jr_0fd_4840:
	and  b                                           ; $4840: $a0
	inc  bc                                          ; $4841: $03
	ld   h, $02                                      ; $4842: $26 $02
	and  b                                           ; $4844: $a0
	inc  c                                           ; $4845: $0c
	ld   h, $02                                      ; $4846: $26 $02
	and  b                                           ; $4848: $a0
	inc  bc                                          ; $4849: $03
	ld   h, $02                                      ; $484a: $26 $02
	and  b                                           ; $484c: $a0
	inc  c                                           ; $484d: $0c
	ld   h, $04                                      ; $484e: $26 $04
	add  hl, hl                                      ; $4850: $29
	inc  b                                           ; $4851: $04
	ld   h, $08                                      ; $4852: $26 $08

jr_0fd_4854:
	inc  h                                           ; $4854: $24
	ld   [$1421], sp                                 ; $4855: $08 $21 $14
	and  b                                           ; $4858: $a0
	inc  bc                                          ; $4859: $03
	ld   hl, $a004                                   ; $485a: $21 $04 $a0
	inc  c                                           ; $485d: $0c
	ld   hl, $1b04                                   ; $485e: $21 $04 $1b
	inc  b                                           ; $4861: $04
	add  hl, de                                      ; $4862: $19
	jr   jr_0fd_4880                                 ; $4863: $18 $1b

	ld   [$0e21], sp                                 ; $4865: $08 $21 $0e
	and  b                                           ; $4868: $a0
	inc  bc                                          ; $4869: $03
	ld   hl, $a002                                   ; $486a: $21 $02 $a0
	inc  c                                           ; $486d: $0c
	ld   hl, $2408                                   ; $486e: $21 $08 $24
	ld   [$1826], sp                                 ; $4871: $08 $26 $18
	add  hl, hl                                      ; $4874: $29
	ld   [$1c31], sp                                 ; $4875: $08 $31 $1c
	and  b                                           ; $4878: $a0
	inc  bc                                          ; $4879: $03
	ld   sp, $a004                                   ; $487a: $31 $04 $a0
	inc  c                                           ; $487d: $0c
	dec  hl                                          ; $487e: $2b
	db   $10                                         ; $487f: $10

jr_0fd_4880:
	add  hl, hl                                      ; $4880: $29
	ld   c, $a0                                      ; $4881: $0e $a0
	inc  bc                                          ; $4883: $03
	add  hl, hl                                      ; $4884: $29
	ld   [bc], a                                     ; $4885: $02
	and  b                                           ; $4886: $a0
	inc  c                                           ; $4887: $0c
	add  hl, hl                                      ; $4888: $29
	jr   jr_0fd_48b1                                 ; $4889: $18 $26

	ld   [$2829], sp                                 ; $488b: $08 $29 $28
	and  d                                           ; $488e: $a2
	ld   bc, $70c7                                   ; $488f: $01 $c7 $70
	and  e                                           ; $4892: $a3
	ld   h, $a0                                      ; $4893: $26 $a0
	inc  bc                                          ; $4895: $03
	add  hl, hl                                      ; $4896: $29
	ld   [$0ca0], sp                                 ; $4897: $08 $a0 $0c
	add  hl, hl                                      ; $489a: $29
	ld   [$082b], sp                                 ; $489b: $08 $2b $08
	or   b                                           ; $489e: $b0
	di                                               ; $489f: $f3
	rst  $38                                         ; $48a0: $ff
	rst  $38                                         ; $48a1: $ff
	add  hl, bc                                      ; $48a2: $09
	ld   b, b                                        ; $48a3: $40
	ld   [bc], a                                     ; $48a4: $02
	inc  bc                                          ; $48a5: $03
	rra                                              ; $48a6: $1f
	db   $10                                         ; $48a7: $10
	db   $fd                                         ; $48a8: $fd
	di                                               ; $48a9: $f3
	and  d                                           ; $48aa: $a2
	nop                                              ; $48ab: $00
	rst  ToBoot                                         ; $48ac: $c7
	ld   b, b                                        ; $48ad: $40
	and  e                                           ; $48ae: $a3
	ld   h, $a0                                      ; $48af: $26 $a0

jr_0fd_48b1:
	ld   [bc], a                                     ; $48b1: $02
	add  hl, de                                      ; $48b2: $19
	db   $10                                         ; $48b3: $10
	and  b                                           ; $48b4: $a0
	ld   b, $19                                      ; $48b5: $06 $19
	inc  b                                           ; $48b7: $04
	rra                                              ; $48b8: $1f
	inc  b                                           ; $48b9: $04
	and  b                                           ; $48ba: $a0
	ld   [bc], a                                     ; $48bb: $02
	add  hl, de                                      ; $48bc: $19
	ld   [$0418], sp                                 ; $48bd: $08 $18 $04
	and  b                                           ; $48c0: $a0
	ld   b, $18                                      ; $48c1: $06 $18
	inc  b                                           ; $48c3: $04
	and  b                                           ; $48c4: $a0
	ld   [bc], a                                     ; $48c5: $02
	jr   @+$0e                                       ; $48c6: $18 $0c

	and  b                                           ; $48c8: $a0
	ld   b, $18                                      ; $48c9: $06 $18
	inc  b                                           ; $48cb: $04
	and  b                                           ; $48cc: $a0
	ld   [bc], a                                     ; $48cd: $02
	jr   jr_0fd_48d8                                 ; $48ce: $18 $08

	ld   d, $10                                      ; $48d0: $16 $10
	and  b                                           ; $48d2: $a0
	ld   b, $15                                      ; $48d3: $06 $15
	inc  b                                           ; $48d5: $04
	rra                                              ; $48d6: $1f
	inc  b                                           ; $48d7: $04

jr_0fd_48d8:
	and  b                                           ; $48d8: $a0
	ld   [bc], a                                     ; $48d9: $02
	ld   d, $08                                      ; $48da: $16 $08
	inc  d                                           ; $48dc: $14
	inc  b                                           ; $48dd: $04
	and  b                                           ; $48de: $a0
	ld   b, $14                                      ; $48df: $06 $14
	inc  b                                           ; $48e1: $04
	and  b                                           ; $48e2: $a0
	ld   [bc], a                                     ; $48e3: $02
	inc  d                                           ; $48e4: $14
	inc  c                                           ; $48e5: $0c
	and  b                                           ; $48e6: $a0
	ld   b, $14                                      ; $48e7: $06 $14
	inc  b                                           ; $48e9: $04
	and  b                                           ; $48ea: $a0
	ld   [bc], a                                     ; $48eb: $02
	inc  d                                           ; $48ec: $14
	ld   [$1022], sp                                 ; $48ed: $08 $22 $10
	and  b                                           ; $48f0: $a0
	ld   b, $22                                      ; $48f1: $06 $22
	inc  b                                           ; $48f3: $04
	rra                                              ; $48f4: $1f
	inc  b                                           ; $48f5: $04
	and  b                                           ; $48f6: $a0
	ld   [bc], a                                     ; $48f7: $02
	ld   [hl+], a                                    ; $48f8: $22
	ld   [$0421], sp                                 ; $48f9: $08 $21 $04
	and  b                                           ; $48fc: $a0
	ld   b, $21                                      ; $48fd: $06 $21
	inc  b                                           ; $48ff: $04
	and  b                                           ; $4900: $a0
	ld   [bc], a                                     ; $4901: $02
	ld   hl, $a00c                                   ; $4902: $21 $0c $a0
	ld   b, $21                                      ; $4905: $06 $21
	inc  b                                           ; $4907: $04
	and  b                                           ; $4908: $a0
	ld   [bc], a                                     ; $4909: $02
	ld   hl, $1608                                   ; $490a: $21 $08 $16
	jr   jr_0fd_4933                                 ; $490d: $18 $24

	ld   [bc], a                                     ; $490f: $02
	dec  h                                           ; $4910: $25
	ld   [bc], a                                     ; $4911: $02
	ld   h, $0c                                      ; $4912: $26 $0c
	and  b                                           ; $4914: $a0
	ld   b, $26                                      ; $4915: $06 $26
	inc  b                                           ; $4917: $04
	and  b                                           ; $4918: $a0
	ld   [bc], a                                     ; $4919: $02
	ld   h, $04                                      ; $491a: $26 $04
	ld   d, $08                                      ; $491c: $16 $08
	jr   @+$0a                                       ; $491e: $18 $08

	xor  h                                           ; $4920: $ac
	ld   bc, $0264                                   ; $4921: $01 $64 $02
	ld   d, $10                                      ; $4924: $16 $10
	and  b                                           ; $4926: $a0
	ld   b, $16                                      ; $4927: $06 $16
	inc  b                                           ; $4929: $04
	rra                                              ; $492a: $1f
	inc  b                                           ; $492b: $04
	and  b                                           ; $492c: $a0
	ld   [bc], a                                     ; $492d: $02
	ld   d, $08                                      ; $492e: $16 $08
	ld   [hl+], a                                    ; $4930: $22
	inc  b                                           ; $4931: $04
	and  b                                           ; $4932: $a0

jr_0fd_4933:
	ld   b, $22                                      ; $4933: $06 $22
	inc  b                                           ; $4935: $04
	and  b                                           ; $4936: $a0
	ld   [bc], a                                     ; $4937: $02
	ld   [hl+], a                                    ; $4938: $22
	inc  c                                           ; $4939: $0c
	and  b                                           ; $493a: $a0
	ld   b, $22                                      ; $493b: $06 $22
	inc  b                                           ; $493d: $04
	and  b                                           ; $493e: $a0
	ld   [bc], a                                     ; $493f: $02
	ld   [hl+], a                                    ; $4940: $22
	ld   [$1023], sp                                 ; $4941: $08 $23 $10
	and  b                                           ; $4944: $a0
	ld   b, $23                                      ; $4945: $06 $23
	inc  b                                           ; $4947: $04
	rra                                              ; $4948: $1f
	inc  b                                           ; $4949: $04
	and  b                                           ; $494a: $a0
	ld   [bc], a                                     ; $494b: $02
	inc  hl                                          ; $494c: $23
	ld   [$0424], sp                                 ; $494d: $08 $24 $04
	and  b                                           ; $4950: $a0
	ld   b, $24                                      ; $4951: $06 $24
	inc  b                                           ; $4953: $04
	and  b                                           ; $4954: $a0
	ld   [bc], a                                     ; $4955: $02
	inc  h                                           ; $4956: $24
	inc  c                                           ; $4957: $0c
	and  b                                           ; $4958: $a0
	ld   b, $24                                      ; $4959: $06 $24
	inc  b                                           ; $495b: $04
	and  b                                           ; $495c: $a0
	ld   [bc], a                                     ; $495d: $02
	inc  d                                           ; $495e: $14
	inc  b                                           ; $495f: $04
	ld   d, $04                                      ; $4960: $16 $04
	xor  h                                           ; $4962: $ac
	ld   bc, $0264                                   ; $4963: $01 $64 $02
	ld   d, $10                                      ; $4966: $16 $10
	and  b                                           ; $4968: $a0
	ld   b, $16                                      ; $4969: $06 $16
	inc  b                                           ; $496b: $04
	rra                                              ; $496c: $1f
	inc  b                                           ; $496d: $04
	and  b                                           ; $496e: $a0
	ld   [bc], a                                     ; $496f: $02
	ld   d, $08                                      ; $4970: $16 $08
	inc  d                                           ; $4972: $14
	inc  b                                           ; $4973: $04
	and  b                                           ; $4974: $a0
	ld   b, $14                                      ; $4975: $06 $14
	inc  b                                           ; $4977: $04
	and  b                                           ; $4978: $a0
	ld   [bc], a                                     ; $4979: $02
	inc  d                                           ; $497a: $14
	inc  c                                           ; $497b: $0c
	and  b                                           ; $497c: $a0
	ld   b, $14                                      ; $497d: $06 $14
	inc  b                                           ; $497f: $04
	and  b                                           ; $4980: $a0
	ld   [bc], a                                     ; $4981: $02
	inc  h                                           ; $4982: $24
	inc  b                                           ; $4983: $04
	inc  hl                                          ; $4984: $23
	inc  b                                           ; $4985: $04
	ld   [hl+], a                                    ; $4986: $22
	db   $10                                         ; $4987: $10
	and  b                                           ; $4988: $a0
	ld   b, $22                                      ; $4989: $06 $22
	inc  b                                           ; $498b: $04
	rra                                              ; $498c: $1f
	inc  b                                           ; $498d: $04
	and  b                                           ; $498e: $a0
	ld   [bc], a                                     ; $498f: $02
	ld   [hl+], a                                    ; $4990: $22
	ld   [$0422], sp                                 ; $4991: $08 $22 $04
	and  b                                           ; $4994: $a0
	ld   b, $22                                      ; $4995: $06 $22
	inc  b                                           ; $4997: $04
	and  b                                           ; $4998: $a0
	ld   [bc], a                                     ; $4999: $02
	ld   [hl+], a                                    ; $499a: $22
	inc  c                                           ; $499b: $0c
	and  b                                           ; $499c: $a0
	ld   b, $22                                      ; $499d: $06 $22
	inc  b                                           ; $499f: $04
	and  b                                           ; $49a0: $a0
	ld   [bc], a                                     ; $49a1: $02
	ld   [hl+], a                                    ; $49a2: $22
	inc  b                                           ; $49a3: $04
	inc  h                                           ; $49a4: $24
	inc  b                                           ; $49a5: $04
	ld   h, $10                                      ; $49a6: $26 $10
	and  b                                           ; $49a8: $a0
	ld   b, $26                                      ; $49a9: $06 $26
	inc  b                                           ; $49ab: $04
	rra                                              ; $49ac: $1f
	inc  b                                           ; $49ad: $04
	and  b                                           ; $49ae: $a0
	ld   [bc], a                                     ; $49af: $02
	ld   h, $08                                      ; $49b0: $26 $08
	inc  h                                           ; $49b2: $24
	inc  b                                           ; $49b3: $04
	and  b                                           ; $49b4: $a0
	ld   b, $24                                      ; $49b5: $06 $24
	inc  b                                           ; $49b7: $04
	and  b                                           ; $49b8: $a0
	ld   [bc], a                                     ; $49b9: $02
	inc  h                                           ; $49ba: $24
	inc  c                                           ; $49bb: $0c
	and  b                                           ; $49bc: $a0
	ld   b, $24                                      ; $49bd: $06 $24
	inc  b                                           ; $49bf: $04
	and  b                                           ; $49c0: $a0
	ld   [bc], a                                     ; $49c1: $02
	inc  h                                           ; $49c2: $24
	ld   [$1022], sp                                 ; $49c3: $08 $22 $10
	and  b                                           ; $49c6: $a0
	ld   b, $22                                      ; $49c7: $06 $22
	inc  b                                           ; $49c9: $04
	rra                                              ; $49ca: $1f
	inc  b                                           ; $49cb: $04
	and  b                                           ; $49cc: $a0
	ld   [bc], a                                     ; $49cd: $02
	ld   [hl+], a                                    ; $49ce: $22
	ld   [$0424], sp                                 ; $49cf: $08 $24 $04
	and  b                                           ; $49d2: $a0
	ld   b, $24                                      ; $49d3: $06 $24
	inc  b                                           ; $49d5: $04
	and  b                                           ; $49d6: $a0
	ld   [bc], a                                     ; $49d7: $02
	inc  h                                           ; $49d8: $24
	inc  c                                           ; $49d9: $0c
	and  b                                           ; $49da: $a0
	ld   b, $24                                      ; $49db: $06 $24
	inc  b                                           ; $49dd: $04
	and  b                                           ; $49de: $a0
	ld   [bc], a                                     ; $49df: $02
	inc  d                                           ; $49e0: $14
	inc  b                                           ; $49e1: $04
	ld   d, $04                                      ; $49e2: $16 $04
	add  hl, de                                      ; $49e4: $19
	db   $10                                         ; $49e5: $10
	and  b                                           ; $49e6: $a0
	ld   b, $19                                      ; $49e7: $06 $19
	inc  b                                           ; $49e9: $04
	rra                                              ; $49ea: $1f
	inc  b                                           ; $49eb: $04
	and  b                                           ; $49ec: $a0
	ld   [bc], a                                     ; $49ed: $02
	inc  d                                           ; $49ee: $14
	inc  b                                           ; $49ef: $04
	ld   d, $04                                      ; $49f0: $16 $04
	add  hl, de                                      ; $49f2: $19
	inc  b                                           ; $49f3: $04
	and  b                                           ; $49f4: $a0
	ld   b, $19                                      ; $49f5: $06 $19
	inc  b                                           ; $49f7: $04
	and  b                                           ; $49f8: $a0
	ld   [bc], a                                     ; $49f9: $02
	add  hl, de                                      ; $49fa: $19
	ld   [$06a0], sp                                 ; $49fb: $08 $a0 $06
	add  hl, de                                      ; $49fe: $19
	inc  b                                           ; $49ff: $04
	and  b                                           ; $4a00: $a0
	ld   [bc], a                                     ; $4a01: $02
	inc  d                                           ; $4a02: $14
	inc  b                                           ; $4a03: $04
	ld   d, $04                                      ; $4a04: $16 $04
	jr   @+$06                                       ; $4a06: $18 $04

	add  hl, de                                      ; $4a08: $19
	inc  b                                           ; $4a09: $04
	and  b                                           ; $4a0a: $a0
	ld   b, $19                                      ; $4a0b: $06 $19
	inc  b                                           ; $4a0d: $04
	rra                                              ; $4a0e: $1f
	ld   [$02a0], sp                                 ; $4a0f: $08 $a0 $02
	inc  d                                           ; $4a12: $14
	inc  b                                           ; $4a13: $04
	and  b                                           ; $4a14: $a0
	ld   b, $14                                      ; $4a15: $06 $14
	inc  b                                           ; $4a17: $04
	and  b                                           ; $4a18: $a0
	ld   [bc], a                                     ; $4a19: $02
	inc  d                                           ; $4a1a: $14
	ld   [$0416], sp                                 ; $4a1b: $08 $16 $04
	and  b                                           ; $4a1e: $a0
	ld   b, $16                                      ; $4a1f: $06 $16
	inc  b                                           ; $4a21: $04
	and  b                                           ; $4a22: $a0
	ld   [bc], a                                     ; $4a23: $02
	ld   d, $08                                      ; $4a24: $16 $08
	jr   jr_0fd_4a30                                 ; $4a26: $18 $08

	inc  d                                           ; $4a28: $14
	ld   [$01ac], sp                                 ; $4a29: $08 $ac $01
	and  h                                           ; $4a2c: $a4
	ld   [bc], a                                     ; $4a2d: $02
	ld   [hl+], a                                    ; $4a2e: $22
	db   $10                                         ; $4a2f: $10

jr_0fd_4a30:
	and  b                                           ; $4a30: $a0
	ld   b, $22                                      ; $4a31: $06 $22
	inc  b                                           ; $4a33: $04
	rra                                              ; $4a34: $1f
	inc  b                                           ; $4a35: $04
	and  b                                           ; $4a36: $a0
	ld   [bc], a                                     ; $4a37: $02
	ld   [hl+], a                                    ; $4a38: $22
	ld   [$0423], sp                                 ; $4a39: $08 $23 $04
	and  b                                           ; $4a3c: $a0
	ld   b, $23                                      ; $4a3d: $06 $23
	inc  b                                           ; $4a3f: $04
	and  b                                           ; $4a40: $a0
	ld   [bc], a                                     ; $4a41: $02
	inc  hl                                          ; $4a42: $23
	inc  c                                           ; $4a43: $0c
	and  b                                           ; $4a44: $a0
	ld   b, $23                                      ; $4a45: $06 $23
	inc  b                                           ; $4a47: $04
	and  b                                           ; $4a48: $a0
	ld   [bc], a                                     ; $4a49: $02
	inc  hl                                          ; $4a4a: $23
	ld   [$0814], sp                                 ; $4a4b: $08 $14 $08
	dec  de                                          ; $4a4e: $1b
	ld   [$0225], sp                                 ; $4a4f: $08 $25 $02
	ld   h, $06                                      ; $4a52: $26 $06
	inc  h                                           ; $4a54: $24
	db   $10                                         ; $4a55: $10
	dec  de                                          ; $4a56: $1b
	db   $10                                         ; $4a57: $10
	inc  d                                           ; $4a58: $14
	inc  b                                           ; $4a59: $04
	ld   d, $04                                      ; $4a5a: $16 $04
	xor  h                                           ; $4a5c: $ac
	ld   bc, $02a4                                   ; $4a5d: $01 $a4 $02
	ld   [hl+], a                                    ; $4a60: $22
	db   $10                                         ; $4a61: $10
	and  b                                           ; $4a62: $a0
	ld   b, $22                                      ; $4a63: $06 $22
	inc  b                                           ; $4a65: $04
	rra                                              ; $4a66: $1f
	inc  b                                           ; $4a67: $04
	and  b                                           ; $4a68: $a0
	ld   [bc], a                                     ; $4a69: $02
	ld   [hl+], a                                    ; $4a6a: $22
	ld   [$1022], sp                                 ; $4a6b: $08 $22 $10
	inc  hl                                          ; $4a6e: $23
	db   $10                                         ; $4a6f: $10
	inc  h                                           ; $4a70: $24
	db   $10                                         ; $4a71: $10
	and  b                                           ; $4a72: $a0
	ld   b, $24                                      ; $4a73: $06 $24
	inc  b                                           ; $4a75: $04
	rra                                              ; $4a76: $1f
	inc  b                                           ; $4a77: $04
	and  b                                           ; $4a78: $a0
	ld   [bc], a                                     ; $4a79: $02
	inc  h                                           ; $4a7a: $24
	ld   [$0421], sp                                 ; $4a7b: $08 $21 $04
	and  b                                           ; $4a7e: $a0
	ld   b, $21                                      ; $4a7f: $06 $21
	inc  b                                           ; $4a81: $04
	and  b                                           ; $4a82: $a0
	ld   [bc], a                                     ; $4a83: $02
	ld   hl, $a00c                                   ; $4a84: $21 $0c $a0
	ld   b, $21                                      ; $4a87: $06 $21
	inc  b                                           ; $4a89: $04
	and  b                                           ; $4a8a: $a0
	ld   [bc], a                                     ; $4a8b: $02
	dec  h                                           ; $4a8c: $25
	ld   [$2026], sp                                 ; $4a8d: $08 $26 $20
	inc  h                                           ; $4a90: $24
	jr   nz, jr_0fd_4ab5                             ; $4a91: $20 $22

	db   $10                                         ; $4a93: $10
	inc  h                                           ; $4a94: $24
	db   $10                                         ; $4a95: $10
	add  hl, de                                      ; $4a96: $19
	db   $10                                         ; $4a97: $10
	ld   hl, $1610                                   ; $4a98: $21 $10 $16
	db   $10                                         ; $4a9b: $10
	and  b                                           ; $4a9c: $a0
	ld   b, $16                                      ; $4a9d: $06 $16
	inc  b                                           ; $4a9f: $04
	rra                                              ; $4aa0: $1f
	inc  b                                           ; $4aa1: $04
	and  b                                           ; $4aa2: $a0
	ld   [bc], a                                     ; $4aa3: $02
	ld   d, $08                                      ; $4aa4: $16 $08
	inc  d                                           ; $4aa6: $14
	inc  b                                           ; $4aa7: $04
	and  b                                           ; $4aa8: $a0
	ld   b, $14                                      ; $4aa9: $06 $14
	inc  b                                           ; $4aab: $04
	and  b                                           ; $4aac: $a0
	ld   [bc], a                                     ; $4aad: $02
	inc  d                                           ; $4aae: $14
	inc  c                                           ; $4aaf: $0c
	and  b                                           ; $4ab0: $a0
	ld   b, $14                                      ; $4ab1: $06 $14
	inc  b                                           ; $4ab3: $04
	and  b                                           ; $4ab4: $a0

jr_0fd_4ab5:
	ld   [bc], a                                     ; $4ab5: $02
	ld   hl, $2208                                   ; $4ab6: $21 $08 $22
	db   $10                                         ; $4ab9: $10
	and  b                                           ; $4aba: $a0
	ld   b, $22                                      ; $4abb: $06 $22
	inc  b                                           ; $4abd: $04
	rra                                              ; $4abe: $1f
	inc  b                                           ; $4abf: $04
	and  b                                           ; $4ac0: $a0
	ld   [bc], a                                     ; $4ac1: $02
	ld   [hl+], a                                    ; $4ac2: $22
	ld   [$0421], sp                                 ; $4ac3: $08 $21 $04
	and  b                                           ; $4ac6: $a0
	ld   b, $21                                      ; $4ac7: $06 $21
	inc  b                                           ; $4ac9: $04
	and  b                                           ; $4aca: $a0
	ld   [bc], a                                     ; $4acb: $02
	ld   hl, $a00c                                   ; $4acc: $21 $0c $a0
	ld   b, $21                                      ; $4acf: $06 $21
	inc  b                                           ; $4ad1: $04
	and  b                                           ; $4ad2: $a0
	ld   [bc], a                                     ; $4ad3: $02
	jr   jr_0fd_4ade                                 ; $4ad4: $18 $08

	ld   [hl+], a                                    ; $4ad6: $22
	db   $10                                         ; $4ad7: $10
	and  b                                           ; $4ad8: $a0
	ld   b, $22                                      ; $4ad9: $06 $22
	inc  b                                           ; $4adb: $04
	rra                                              ; $4adc: $1f
	inc  b                                           ; $4add: $04

jr_0fd_4ade:
	and  b                                           ; $4ade: $a0
	ld   [bc], a                                     ; $4adf: $02
	ld   [hl+], a                                    ; $4ae0: $22
	inc  b                                           ; $4ae1: $04
	inc  hl                                          ; $4ae2: $23
	inc  b                                           ; $4ae3: $04
	inc  h                                           ; $4ae4: $24
	inc  b                                           ; $4ae5: $04
	dec  de                                          ; $4ae6: $1b
	inc  b                                           ; $4ae7: $04
	inc  d                                           ; $4ae8: $14
	ld   [$0814], sp                                 ; $4ae9: $08 $14 $08
	ld   d, $08                                      ; $4aec: $16 $08
	add  hl, de                                      ; $4aee: $19
	db   $10                                         ; $4aef: $10
	and  b                                           ; $4af0: $a0
	ld   b, $19                                      ; $4af1: $06 $19
	inc  b                                           ; $4af3: $04
	rra                                              ; $4af4: $1f
	inc  b                                           ; $4af5: $04
	and  b                                           ; $4af6: $a0
	ld   [bc], a                                     ; $4af7: $02
	add  hl, de                                      ; $4af8: $19
	ld   [$0819], sp                                 ; $4af9: $08 $19 $08
	inc  d                                           ; $4afc: $14
	ld   [$0816], sp                                 ; $4afd: $08 $16 $08
	jr   jr_0fd_4b0a                                 ; $4b00: $18 $08

	or   b                                           ; $4b02: $b0
	di                                               ; $4b03: $f3
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	and  b                                           ; $4b06: $a0
	ld   [bc], a                                     ; $4b07: $02
	add  hl, de                                      ; $4b08: $19
	db   $10                                         ; $4b09: $10

jr_0fd_4b0a:
	and  b                                           ; $4b0a: $a0
	ld   b, $19                                      ; $4b0b: $06 $19
	inc  b                                           ; $4b0d: $04
	rra                                              ; $4b0e: $1f
	inc  b                                           ; $4b0f: $04
	and  b                                           ; $4b10: $a0
	ld   [bc], a                                     ; $4b11: $02
	add  hl, de                                      ; $4b12: $19
	ld   [$0419], sp                                 ; $4b13: $08 $19 $04
	and  b                                           ; $4b16: $a0
	ld   b, $19                                      ; $4b17: $06 $19
	inc  b                                           ; $4b19: $04
	and  b                                           ; $4b1a: $a0
	ld   [bc], a                                     ; $4b1b: $02
	add  hl, de                                      ; $4b1c: $19
	inc  c                                           ; $4b1d: $0c
	and  b                                           ; $4b1e: $a0
	ld   b, $19                                      ; $4b1f: $06 $19
	inc  b                                           ; $4b21: $04
	and  b                                           ; $4b22: $a0
	ld   [bc], a                                     ; $4b23: $02
	add  hl, de                                      ; $4b24: $19
	ld   [$1021], sp                                 ; $4b25: $08 $21 $10
	and  b                                           ; $4b28: $a0
	ld   b, $21                                      ; $4b29: $06 $21
	inc  b                                           ; $4b2b: $04
	rra                                              ; $4b2c: $1f
	inc  b                                           ; $4b2d: $04
	and  b                                           ; $4b2e: $a0
	ld   [bc], a                                     ; $4b2f: $02
	ld   hl, $2108                                   ; $4b30: $21 $08 $21
	inc  b                                           ; $4b33: $04
	and  b                                           ; $4b34: $a0
	ld   b, $21                                      ; $4b35: $06 $21
	inc  b                                           ; $4b37: $04
	and  b                                           ; $4b38: $a0
	ld   [bc], a                                     ; $4b39: $02
	ld   hl, $a00c                                   ; $4b3a: $21 $0c $a0
	ld   b, $21                                      ; $4b3d: $06 $21
	inc  b                                           ; $4b3f: $04
	and  b                                           ; $4b40: $a0
	ld   [bc], a                                     ; $4b41: $02
	ld   hl, $ad08                                   ; $4b42: $21 $08 $ad
	nop                                              ; $4b45: $00
	add  hl, de                                      ; $4b46: $19
	db   $10                                         ; $4b47: $10
	and  b                                           ; $4b48: $a0
	ld   b, $19                                      ; $4b49: $06 $19
	inc  b                                           ; $4b4b: $04
	rra                                              ; $4b4c: $1f
	inc  b                                           ; $4b4d: $04
	and  b                                           ; $4b4e: $a0
	ld   [bc], a                                     ; $4b4f: $02
	add  hl, de                                      ; $4b50: $19
	ld   [$0419], sp                                 ; $4b51: $08 $19 $04
	and  b                                           ; $4b54: $a0
	ld   b, $19                                      ; $4b55: $06 $19
	inc  b                                           ; $4b57: $04
	and  b                                           ; $4b58: $a0
	ld   [bc], a                                     ; $4b59: $02
	add  hl, de                                      ; $4b5a: $19
	inc  c                                           ; $4b5b: $0c
	and  b                                           ; $4b5c: $a0
	ld   b, $19                                      ; $4b5d: $06 $19
	inc  b                                           ; $4b5f: $04
	and  b                                           ; $4b60: $a0
	ld   [bc], a                                     ; $4b61: $02
	jr   jr_0fd_4b6c                                 ; $4b62: $18 $08

	ld   d, $08                                      ; $4b64: $16 $08
	ld   hl, $2708                                   ; $4b66: $21 $08 $27
	ld   [bc], a                                     ; $4b69: $02
	jr   z, jr_0fd_4b72                              ; $4b6a: $28 $06

jr_0fd_4b6c:
	ld   h, $10                                      ; $4b6c: $26 $10
	ld   h, $08                                      ; $4b6e: $26 $08
	ld   d, $08                                      ; $4b70: $16 $08

jr_0fd_4b72:
	ld   hl, $ad08                                   ; $4b72: $21 $08 $ad
	nop                                              ; $4b75: $00
	add  hl, bc                                      ; $4b76: $09
	nop                                              ; $4b77: $00
	add  hl, bc                                      ; $4b78: $09
	nop                                              ; $4b79: $00
	db   $fd                                         ; $4b7a: $fd
	di                                               ; $4b7b: $f3
	db   $fd                                         ; $4b7c: $fd
	ldh  a, [$ac]                                    ; $4b7d: $f0 $ac
	ld   bc, $01be                                   ; $4b7f: $01 $be $01
	or   d                                           ; $4b82: $b2
	ldh  a, [$c1]                                    ; $4b83: $f0 $c1
	inc  bc                                          ; $4b85: $03
	and  b                                           ; $4b86: $a0
	rlca                                             ; $4b87: $07
	ld   [bc], a                                     ; $4b88: $02
	ld   bc, $01a0                                   ; $4b89: $01 $a0 $01
	nop                                              ; $4b8c: $00
	rlca                                             ; $4b8d: $07
	pop  bc                                          ; $4b8e: $c1
	inc  bc                                          ; $4b8f: $03
	and  b                                           ; $4b90: $a0
	rlca                                             ; $4b91: $07
	ld   [bc], a                                     ; $4b92: $02
	ld   bc, $01a0                                   ; $4b93: $01 $a0 $01
	nop                                              ; $4b96: $00
	inc  bc                                          ; $4b97: $03
	pop  bc                                          ; $4b98: $c1
	inc  bc                                          ; $4b99: $03
	and  b                                           ; $4b9a: $a0
	rlca                                             ; $4b9b: $07
	ld   [bc], a                                     ; $4b9c: $02
	ld   bc, $01a0                                   ; $4b9d: $01 $a0 $01
	nop                                              ; $4ba0: $00
	inc  bc                                          ; $4ba1: $03
	and  b                                           ; $4ba2: $a0
	dec  c                                           ; $4ba3: $0d
	rla                                              ; $4ba4: $17
	ld   bc, $0aa0                                   ; $4ba5: $01 $a0 $0a
	db   $10                                         ; $4ba8: $10
	ld   bc, $01a0                                   ; $4ba9: $01 $a0 $01
	nop                                              ; $4bac: $00
	ld   b, $c1                                      ; $4bad: $06 $c1
	inc  bc                                          ; $4baf: $03
	and  b                                           ; $4bb0: $a0
	rlca                                             ; $4bb1: $07
	ld   [bc], a                                     ; $4bb2: $02
	ld   bc, $01a0                                   ; $4bb3: $01 $a0 $01
	nop                                              ; $4bb6: $00
	rlca                                             ; $4bb7: $07
	pop  bc                                          ; $4bb8: $c1
	inc  b                                           ; $4bb9: $04
	and  b                                           ; $4bba: $a0
	add  hl, bc                                      ; $4bbb: $09
	ld   l, b                                        ; $4bbc: $68
	ld   bc, $06a0                                   ; $4bbd: $01 $a0 $06
	sbc  c                                           ; $4bc0: $99
	ld   bc, $01a0                                   ; $4bc1: $01 $a0 $01
	sbc  c                                           ; $4bc4: $99
	ld   b, $c1                                      ; $4bc5: $06 $c1
	inc  b                                           ; $4bc7: $04
	and  b                                           ; $4bc8: $a0
	add  hl, bc                                      ; $4bc9: $09
	ld   l, b                                        ; $4bca: $68
	ld   bc, $06a0                                   ; $4bcb: $01 $a0 $06
	sbc  c                                           ; $4bce: $99
	ld   bc, $01a0                                   ; $4bcf: $01 $a0 $01
	sbc  c                                           ; $4bd2: $99
	ld   b, $a0                                      ; $4bd3: $06 $a0
	dec  c                                           ; $4bd5: $0d
	rla                                              ; $4bd6: $17
	ld   bc, $0aa0                                   ; $4bd7: $01 $a0 $0a
	db   $10                                         ; $4bda: $10
	ld   bc, $01a0                                   ; $4bdb: $01 $a0 $01
	nop                                              ; $4bde: $00
	ld   c, $fd                                      ; $4bdf: $0e $fd
	ldh  a, [$ac]                                    ; $4be1: $f0 $ac
	ld   bc, $01be                                   ; $4be3: $01 $be $01
	cp   d                                           ; $4be6: $ba
	ldh  a, [$c1]                                    ; $4be7: $f0 $c1
	inc  bc                                          ; $4be9: $03
	and  b                                           ; $4bea: $a0
	rlca                                             ; $4beb: $07
	ld   [bc], a                                     ; $4bec: $02
	ld   bc, $01a0                                   ; $4bed: $01 $a0 $01
	nop                                              ; $4bf0: $00
	rlca                                             ; $4bf1: $07
	pop  bc                                          ; $4bf2: $c1
	inc  bc                                          ; $4bf3: $03
	and  b                                           ; $4bf4: $a0
	rlca                                             ; $4bf5: $07
	ld   [bc], a                                     ; $4bf6: $02
	ld   bc, $01a0                                   ; $4bf7: $01 $a0 $01
	nop                                              ; $4bfa: $00
	inc  bc                                          ; $4bfb: $03
	pop  bc                                          ; $4bfc: $c1
	inc  bc                                          ; $4bfd: $03
	and  b                                           ; $4bfe: $a0
	rlca                                             ; $4bff: $07
	ld   [bc], a                                     ; $4c00: $02
	ld   bc, $01a0                                   ; $4c01: $01 $a0 $01
	nop                                              ; $4c04: $00
	inc  bc                                          ; $4c05: $03
	and  b                                           ; $4c06: $a0
	dec  c                                           ; $4c07: $0d
	rla                                              ; $4c08: $17
	ld   bc, $0aa0                                   ; $4c09: $01 $a0 $0a
	db   $10                                         ; $4c0c: $10
	ld   bc, $01a0                                   ; $4c0d: $01 $a0 $01
	nop                                              ; $4c10: $00
	ld   b, $c1                                      ; $4c11: $06 $c1
	inc  bc                                          ; $4c13: $03
	and  b                                           ; $4c14: $a0
	rlca                                             ; $4c15: $07
	ld   [bc], a                                     ; $4c16: $02
	ld   bc, $01a0                                   ; $4c17: $01 $a0 $01
	nop                                              ; $4c1a: $00
	rlca                                             ; $4c1b: $07
	pop  bc                                          ; $4c1c: $c1
	inc  bc                                          ; $4c1d: $03
	and  b                                           ; $4c1e: $a0
	rlca                                             ; $4c1f: $07
	ld   [bc], a                                     ; $4c20: $02
	ld   bc, $01a0                                   ; $4c21: $01 $a0 $01
	nop                                              ; $4c24: $00
	inc  bc                                          ; $4c25: $03
	pop  bc                                          ; $4c26: $c1
	inc  bc                                          ; $4c27: $03
	and  b                                           ; $4c28: $a0
	rlca                                             ; $4c29: $07
	ld   [bc], a                                     ; $4c2a: $02
	ld   bc, $01a0                                   ; $4c2b: $01 $a0 $01
	nop                                              ; $4c2e: $00
	inc  bc                                          ; $4c2f: $03
	and  b                                           ; $4c30: $a0
	dec  c                                           ; $4c31: $0d
	rla                                              ; $4c32: $17
	ld   bc, $0aa0                                   ; $4c33: $01 $a0 $0a
	db   $10                                         ; $4c36: $10
	ld   bc, $01a0                                   ; $4c37: $01 $a0 $01
	nop                                              ; $4c3a: $00
	ld   b, $a0                                      ; $4c3b: $06 $a0
	dec  c                                           ; $4c3d: $0d
	rla                                              ; $4c3e: $17
	ld   bc, $0aa0                                   ; $4c3f: $01 $a0 $0a
	db   $10                                         ; $4c42: $10
	ld   bc, $01a0                                   ; $4c43: $01 $a0 $01
	nop                                              ; $4c46: $00
	ld   [bc], a                                     ; $4c47: $02
	and  b                                           ; $4c48: $a0
	dec  c                                           ; $4c49: $0d
	rla                                              ; $4c4a: $17
	ld   bc, $0aa0                                   ; $4c4b: $01 $a0 $0a
	db   $10                                         ; $4c4e: $10
	ld   bc, $01a0                                   ; $4c4f: $01 $a0 $01
	nop                                              ; $4c52: $00
	ld   [bc], a                                     ; $4c53: $02
	pop  bc                                          ; $4c54: $c1
	inc  b                                           ; $4c55: $04
	and  b                                           ; $4c56: $a0
	add  hl, bc                                      ; $4c57: $09
	ld   l, b                                        ; $4c58: $68
	ld   bc, $06a0                                   ; $4c59: $01 $a0 $06
	sbc  c                                           ; $4c5c: $99
	ld   bc, $01a0                                   ; $4c5d: $01 $a0 $01
	sbc  c                                           ; $4c60: $99
	ld   b, $fd                                      ; $4c61: $06 $fd
	ldh  a, [$ac]                                    ; $4c63: $f0 $ac
	ld   bc, $01be                                   ; $4c65: $01 $be $01
	or   a                                           ; $4c68: $b7
	ldh  a, [$fd]                                    ; $4c69: $f0 $fd
	ldh  a, [$c1]                                    ; $4c6b: $f0 $c1
	inc  b                                           ; $4c6d: $04
	and  b                                           ; $4c6e: $a0
	add  hl, bc                                      ; $4c6f: $09
	ld   l, b                                        ; $4c70: $68
	ld   bc, $06a0                                   ; $4c71: $01 $a0 $06
	sbc  c                                           ; $4c74: $99
	ld   bc, $01a0                                   ; $4c75: $01 $a0 $01
	sbc  c                                           ; $4c78: $99
	ld   e, $b1                                      ; $4c79: $1e $b1
	ldh  a, [$fd]                                    ; $4c7b: $f0 $fd
	ldh  a, [$c1]                                    ; $4c7d: $f0 $c1
	inc  b                                           ; $4c7f: $04
	and  b                                           ; $4c80: $a0
	add  hl, bc                                      ; $4c81: $09
	ld   l, b                                        ; $4c82: $68
	ld   bc, $06a0                                   ; $4c83: $01 $a0 $06
	sbc  c                                           ; $4c86: $99
	ld   bc, $01a0                                   ; $4c87: $01 $a0 $01
	sbc  c                                           ; $4c8a: $99
	ld   c, $b1                                      ; $4c8b: $0e $b1
	ldh  a, [$c1]                                    ; $4c8d: $f0 $c1
	inc  b                                           ; $4c8f: $04
	and  b                                           ; $4c90: $a0
	add  hl, bc                                      ; $4c91: $09
	ld   l, b                                        ; $4c92: $68
	ld   bc, $06a0                                   ; $4c93: $01 $a0 $06
	sbc  c                                           ; $4c96: $99
	ld   bc, $01a0                                   ; $4c97: $01 $a0 $01
	sbc  c                                           ; $4c9a: $99
	ld   a, [bc]                                     ; $4c9b: $0a
	and  b                                           ; $4c9c: $a0
	dec  c                                           ; $4c9d: $0d
	rla                                              ; $4c9e: $17
	ld   bc, $0aa0                                   ; $4c9f: $01 $a0 $0a
	db   $10                                         ; $4ca2: $10
	ld   bc, $01a0                                   ; $4ca3: $01 $a0 $01
	nop                                              ; $4ca6: $00
	ld   [bc], a                                     ; $4ca7: $02
	and  b                                           ; $4ca8: $a0
	dec  c                                           ; $4ca9: $0d
	rla                                              ; $4caa: $17
	ld   bc, $0aa0                                   ; $4cab: $01 $a0 $0a
	db   $10                                         ; $4cae: $10
	ld   bc, $01a0                                   ; $4caf: $01 $a0 $01
	nop                                              ; $4cb2: $00
	ld   b, $c1                                      ; $4cb3: $06 $c1
	inc  b                                           ; $4cb5: $04
	and  b                                           ; $4cb6: $a0
	add  hl, bc                                      ; $4cb7: $09
	ld   l, b                                        ; $4cb8: $68
	ld   bc, $06a0                                   ; $4cb9: $01 $a0 $06
	sbc  c                                           ; $4cbc: $99
	ld   bc, $01a0                                   ; $4cbd: $01 $a0 $01
	sbc  c                                           ; $4cc0: $99
	ld   b, $fd                                      ; $4cc1: $06 $fd
	ldh  a, [$ac]                                    ; $4cc3: $f0 $ac
	ld   bc, $01be                                   ; $4cc5: $01 $be $01
	or   d                                           ; $4cc8: $b2
	ldh  a, [$c1]                                    ; $4cc9: $f0 $c1
	inc  bc                                          ; $4ccb: $03
	and  b                                           ; $4ccc: $a0
	rlca                                             ; $4ccd: $07
	ld   [bc], a                                     ; $4cce: $02
	ld   bc, $01a0                                   ; $4ccf: $01 $a0 $01
	nop                                              ; $4cd2: $00
	rlca                                             ; $4cd3: $07
	pop  bc                                          ; $4cd4: $c1
	inc  bc                                          ; $4cd5: $03
	and  b                                           ; $4cd6: $a0
	rlca                                             ; $4cd7: $07
	ld   [bc], a                                     ; $4cd8: $02
	ld   bc, $01a0                                   ; $4cd9: $01 $a0 $01
	nop                                              ; $4cdc: $00
	inc  bc                                          ; $4cdd: $03
	pop  bc                                          ; $4cde: $c1
	inc  bc                                          ; $4cdf: $03
	and  b                                           ; $4ce0: $a0
	rlca                                             ; $4ce1: $07
	ld   [bc], a                                     ; $4ce2: $02
	ld   bc, $01a0                                   ; $4ce3: $01 $a0 $01
	nop                                              ; $4ce6: $00
	inc  bc                                          ; $4ce7: $03
	and  b                                           ; $4ce8: $a0
	dec  c                                           ; $4ce9: $0d
	rla                                              ; $4cea: $17
	ld   bc, $0aa0                                   ; $4ceb: $01 $a0 $0a
	db   $10                                         ; $4cee: $10
	ld   bc, $01a0                                   ; $4cef: $01 $a0 $01
	nop                                              ; $4cf2: $00
	ld   b, $c1                                      ; $4cf3: $06 $c1
	inc  bc                                          ; $4cf5: $03
	and  b                                           ; $4cf6: $a0
	rlca                                             ; $4cf7: $07
	ld   [bc], a                                     ; $4cf8: $02
	ld   bc, $01a0                                   ; $4cf9: $01 $a0 $01
	nop                                              ; $4cfc: $00
	rlca                                             ; $4cfd: $07
	pop  bc                                          ; $4cfe: $c1
	inc  bc                                          ; $4cff: $03
	and  b                                           ; $4d00: $a0
	rlca                                             ; $4d01: $07
	ld   [bc], a                                     ; $4d02: $02
	ld   bc, $01a0                                   ; $4d03: $01 $a0 $01
	nop                                              ; $4d06: $00
	inc  bc                                          ; $4d07: $03
	pop  bc                                          ; $4d08: $c1
	inc  bc                                          ; $4d09: $03
	and  b                                           ; $4d0a: $a0
	rlca                                             ; $4d0b: $07
	ld   [bc], a                                     ; $4d0c: $02
	ld   bc, $01a0                                   ; $4d0d: $01 $a0 $01
	nop                                              ; $4d10: $00
	inc  bc                                          ; $4d11: $03
	pop  bc                                          ; $4d12: $c1
	inc  bc                                          ; $4d13: $03
	and  b                                           ; $4d14: $a0
	rlca                                             ; $4d15: $07
	ld   [bc], a                                     ; $4d16: $02
	ld   bc, $01a0                                   ; $4d17: $01 $a0 $01
	nop                                              ; $4d1a: $00
	rlca                                             ; $4d1b: $07
	pop  bc                                          ; $4d1c: $c1
	inc  bc                                          ; $4d1d: $03
	and  b                                           ; $4d1e: $a0
	rlca                                             ; $4d1f: $07
	ld   [bc], a                                     ; $4d20: $02
	ld   bc, $01a0                                   ; $4d21: $01 $a0 $01
	nop                                              ; $4d24: $00
	rlca                                             ; $4d25: $07
	pop  bc                                          ; $4d26: $c1
	inc  bc                                          ; $4d27: $03
	and  b                                           ; $4d28: $a0
	rlca                                             ; $4d29: $07
	ld   [bc], a                                     ; $4d2a: $02
	ld   bc, $01a0                                   ; $4d2b: $01 $a0 $01
	nop                                              ; $4d2e: $00
	rlca                                             ; $4d2f: $07
	or   b                                           ; $4d30: $b0
	di                                               ; $4d31: $f3
	rst  $38                                         ; $4d32: $ff
	rst  $38                                         ; $4d33: $ff
	pop  bc                                          ; $4d34: $c1
	inc  bc                                          ; $4d35: $03
	and  b                                           ; $4d36: $a0
	rlca                                             ; $4d37: $07
	ld   [bc], a                                     ; $4d38: $02
	ld   bc, $01a0                                   ; $4d39: $01 $a0 $01
	nop                                              ; $4d3c: $00
	rlca                                             ; $4d3d: $07
	pop  bc                                          ; $4d3e: $c1
	inc  bc                                          ; $4d3f: $03
	and  b                                           ; $4d40: $a0
	rlca                                             ; $4d41: $07
	ld   [bc], a                                     ; $4d42: $02
	ld   bc, $01a0                                   ; $4d43: $01 $a0 $01
	nop                                              ; $4d46: $00
	inc  bc                                          ; $4d47: $03
	pop  bc                                          ; $4d48: $c1
	inc  bc                                          ; $4d49: $03
	and  b                                           ; $4d4a: $a0
	rlca                                             ; $4d4b: $07

jr_0fd_4d4c:
	ld   [bc], a                                     ; $4d4c: $02
	ld   bc, $01a0                                   ; $4d4d: $01 $a0 $01
	nop                                              ; $4d50: $00
	inc  bc                                          ; $4d51: $03
	and  b                                           ; $4d52: $a0
	dec  c                                           ; $4d53: $0d
	rla                                              ; $4d54: $17
	ld   bc, $0aa0                                   ; $4d55: $01 $a0 $0a
	db   $10                                         ; $4d58: $10
	ld   bc, $01a0                                   ; $4d59: $01 $a0 $01
	nop                                              ; $4d5c: $00
	ld   b, $c1                                      ; $4d5d: $06 $c1
	inc  bc                                          ; $4d5f: $03
	and  b                                           ; $4d60: $a0
	rlca                                             ; $4d61: $07
	ld   [bc], a                                     ; $4d62: $02
	ld   bc, $01a0                                   ; $4d63: $01 $a0 $01
	nop                                              ; $4d66: $00
	rlca                                             ; $4d67: $07
	pop  bc                                          ; $4d68: $c1
	inc  bc                                          ; $4d69: $03
	and  b                                           ; $4d6a: $a0
	rlca                                             ; $4d6b: $07
	ld   [bc], a                                     ; $4d6c: $02
	ld   bc, $01a0                                   ; $4d6d: $01 $a0 $01
	nop                                              ; $4d70: $00
	inc  bc                                          ; $4d71: $03
	pop  bc                                          ; $4d72: $c1
	inc  bc                                          ; $4d73: $03
	and  b                                           ; $4d74: $a0
	rlca                                             ; $4d75: $07
	ld   [bc], a                                     ; $4d76: $02
	ld   bc, $01a0                                   ; $4d77: $01 $a0 $01
	nop                                              ; $4d7a: $00
	inc  bc                                          ; $4d7b: $03
	pop  bc                                          ; $4d7c: $c1
	inc  bc                                          ; $4d7d: $03
	and  b                                           ; $4d7e: $a0
	rlca                                             ; $4d7f: $07
	ld   [bc], a                                     ; $4d80: $02
	ld   bc, $01a0                                   ; $4d81: $01 $a0 $01
	nop                                              ; $4d84: $00
	rlca                                             ; $4d85: $07
	and  b                                           ; $4d86: $a0
	dec  c                                           ; $4d87: $0d
	rla                                              ; $4d88: $17
	ld   bc, $0aa0                                   ; $4d89: $01 $a0 $0a
	db   $10                                         ; $4d8c: $10
	ld   bc, $01a0                                   ; $4d8d: $01 $a0 $01
	nop                                              ; $4d90: $00
	ld   b, $c1                                      ; $4d91: $06 $c1
	inc  bc                                          ; $4d93: $03
	and  b                                           ; $4d94: $a0
	rlca                                             ; $4d95: $07
	ld   [bc], a                                     ; $4d96: $02
	ld   bc, $01a0                                   ; $4d97: $01 $a0 $01
	nop                                              ; $4d9a: $00
	rlca                                             ; $4d9b: $07
	xor  l                                           ; $4d9c: $ad
	nop                                              ; $4d9d: $00
	ld   b, $00                                      ; $4d9e: $06 $00
	add  hl, bc                                      ; $4da0: $09
	nop                                              ; $4da1: $00
	db   $fd                                         ; $4da2: $fd
	di                                               ; $4da3: $f3
	and  d                                           ; $4da4: $a2
	nop                                              ; $4da5: $00
	rst  ToBoot                                         ; $4da6: $c7
	jr   nc, jr_0fd_4d4c                             ; $4da7: $30 $a3

	ld   h, $a0                                      ; $4da9: $26 $a0
	ld   a, [bc]                                     ; $4dab: $0a
	jr   z, jr_0fd_4db0                              ; $4dac: $28 $02

	and  b                                           ; $4dae: $a0
	inc  bc                                          ; $4daf: $03

jr_0fd_4db0:
	jr   z, jr_0fd_4db4                              ; $4db0: $28 $02

	rra                                              ; $4db2: $1f
	inc  b                                           ; $4db3: $04

jr_0fd_4db4:
	and  b                                           ; $4db4: $a0
	ld   a, [bc]                                     ; $4db5: $0a
	jr   z, jr_0fd_4dc4                              ; $4db6: $28 $0c

	and  b                                           ; $4db8: $a0
	inc  bc                                          ; $4db9: $03
	jr   z, jr_0fd_4dbe                              ; $4dba: $28 $02

	rra                                              ; $4dbc: $1f
	ld   [bc], a                                     ; $4dbd: $02

jr_0fd_4dbe:
	and  b                                           ; $4dbe: $a0
	ld   a, [bc]                                     ; $4dbf: $0a
	jr   z, jr_0fd_4dc4                              ; $4dc0: $28 $02

	and  b                                           ; $4dc2: $a0
	inc  bc                                          ; $4dc3: $03

jr_0fd_4dc4:
	jr   z, jr_0fd_4dc8                              ; $4dc4: $28 $02

	and  b                                           ; $4dc6: $a0
	ld   a, [bc]                                     ; $4dc7: $0a

jr_0fd_4dc8:
	jr   z, jr_0fd_4dcc                              ; $4dc8: $28 $02

	and  b                                           ; $4dca: $a0
	inc  bc                                          ; $4dcb: $03

jr_0fd_4dcc:
	jr   z, jr_0fd_4dd0                              ; $4dcc: $28 $02

	and  b                                           ; $4dce: $a0
	ld   a, [bc]                                     ; $4dcf: $0a

jr_0fd_4dd0:
	add  hl, hl                                      ; $4dd0: $29
	ld   [bc], a                                     ; $4dd1: $02
	and  b                                           ; $4dd2: $a0
	inc  bc                                          ; $4dd3: $03
	add  hl, hl                                      ; $4dd4: $29
	ld   [bc], a                                     ; $4dd5: $02
	rra                                              ; $4dd6: $1f
	inc  b                                           ; $4dd7: $04
	and  b                                           ; $4dd8: $a0
	ld   a, [bc]                                     ; $4dd9: $0a
	add  hl, hl                                      ; $4dda: $29
	inc  c                                           ; $4ddb: $0c
	and  b                                           ; $4ddc: $a0
	inc  bc                                          ; $4ddd: $03
	add  hl, hl                                      ; $4dde: $29
	ld   [bc], a                                     ; $4ddf: $02
	rra                                              ; $4de0: $1f
	ld   [bc], a                                     ; $4de1: $02
	and  b                                           ; $4de2: $a0
	ld   a, [bc]                                     ; $4de3: $0a
	add  hl, hl                                      ; $4de4: $29
	ld   [bc], a                                     ; $4de5: $02
	and  b                                           ; $4de6: $a0
	inc  bc                                          ; $4de7: $03
	add  hl, hl                                      ; $4de8: $29
	ld   [bc], a                                     ; $4de9: $02
	and  b                                           ; $4dea: $a0
	ld   a, [bc]                                     ; $4deb: $0a
	add  hl, hl                                      ; $4dec: $29
	ld   [bc], a                                     ; $4ded: $02
	and  b                                           ; $4dee: $a0
	inc  bc                                          ; $4def: $03
	add  hl, hl                                      ; $4df0: $29
	ld   [bc], a                                     ; $4df1: $02
	and  b                                           ; $4df2: $a0
	ld   a, [bc]                                     ; $4df3: $0a
	dec  hl                                          ; $4df4: $2b
	ld   [$082a], sp                                 ; $4df5: $08 $2a $08
	add  hl, hl                                      ; $4df8: $29
	ld   [$0428], sp                                 ; $4df9: $08 $28 $04
	and  b                                           ; $4dfc: $a0
	inc  bc                                          ; $4dfd: $03
	jr   z, jr_0fd_4e02                              ; $4dfe: $28 $02

	rra                                              ; $4e00: $1f
	ld   [hl+], a                                    ; $4e01: $22

jr_0fd_4e02:
	and  b                                           ; $4e02: $a0
	ld   a, [bc]                                     ; $4e03: $0a
	inc  h                                           ; $4e04: $24
	ld   [bc], a                                     ; $4e05: $02
	and  b                                           ; $4e06: $a0
	inc  bc                                          ; $4e07: $03
	dec  h                                           ; $4e08: $25
	ld   [bc], a                                     ; $4e09: $02
	db   $fd                                         ; $4e0a: $fd
	di                                               ; $4e0b: $f3
	inc  h                                           ; $4e0c: $24
	ld   [bc], a                                     ; $4e0d: $02
	dec  h                                           ; $4e0e: $25
	ld   [bc], a                                     ; $4e0f: $02
	cp   [hl]                                        ; $4e10: $be
	di                                               ; $4e11: $f3
	db   $fd                                         ; $4e12: $fd
	di                                               ; $4e13: $f3
	and  b                                           ; $4e14: $a0
	ld   a, [bc]                                     ; $4e15: $0a
	jr   nz, jr_0fd_4e1c                             ; $4e16: $20 $04

	and  b                                           ; $4e18: $a0
	inc  bc                                          ; $4e19: $03
	jr   nz, jr_0fd_4e1e                             ; $4e1a: $20 $02

jr_0fd_4e1c:
	rra                                              ; $4e1c: $1f
	ld   a, [bc]                                     ; $4e1d: $0a

jr_0fd_4e1e:
	and  b                                           ; $4e1e: $a0
	ld   a, [bc]                                     ; $4e1f: $0a
	jr   nz, jr_0fd_4e26                             ; $4e20: $20 $04

	and  b                                           ; $4e22: $a0
	inc  bc                                          ; $4e23: $03
	jr   nz, jr_0fd_4e28                             ; $4e24: $20 $02

jr_0fd_4e26:
	rra                                              ; $4e26: $1f
	ld   a, [bc]                                     ; $4e27: $0a

jr_0fd_4e28:
	and  b                                           ; $4e28: $a0
	ld   a, [bc]                                     ; $4e29: $0a
	jr   nz, jr_0fd_4e30                             ; $4e2a: $20 $04

	and  b                                           ; $4e2c: $a0
	inc  bc                                          ; $4e2d: $03
	jr   nz, jr_0fd_4e32                             ; $4e2e: $20 $02

jr_0fd_4e30:
	rra                                              ; $4e30: $1f
	ld   [bc], a                                     ; $4e31: $02

jr_0fd_4e32:
	and  b                                           ; $4e32: $a0
	rlca                                             ; $4e33: $07
	add  hl, hl                                      ; $4e34: $29
	inc  b                                           ; $4e35: $04
	add  hl, sp                                      ; $4e36: $39
	inc  b                                           ; $4e37: $04
	ld   c, c                                        ; $4e38: $49
	inc  b                                           ; $4e39: $04
	add  hl, sp                                      ; $4e3a: $39
	inc  b                                           ; $4e3b: $04
	add  hl, hl                                      ; $4e3c: $29
	inc  b                                           ; $4e3d: $04
	add  hl, sp                                      ; $4e3e: $39
	inc  b                                           ; $4e3f: $04
	ld   c, c                                        ; $4e40: $49
	db   $10                                         ; $4e41: $10
	and  b                                           ; $4e42: $a0
	ld   a, [bc]                                     ; $4e43: $0a
	jr   nz, jr_0fd_4e4a                             ; $4e44: $20 $04

	and  b                                           ; $4e46: $a0
	inc  bc                                          ; $4e47: $03
	jr   nz, jr_0fd_4e4c                             ; $4e48: $20 $02

jr_0fd_4e4a:
	rra                                              ; $4e4a: $1f
	ld   a, [bc]                                     ; $4e4b: $0a

jr_0fd_4e4c:
	and  b                                           ; $4e4c: $a0
	ld   a, [bc]                                     ; $4e4d: $0a
	inc  h                                           ; $4e4e: $24
	inc  b                                           ; $4e4f: $04
	and  b                                           ; $4e50: $a0
	inc  bc                                          ; $4e51: $03
	inc  h                                           ; $4e52: $24
	ld   [bc], a                                     ; $4e53: $02
	rra                                              ; $4e54: $1f
	ld   a, [bc]                                     ; $4e55: $0a
	and  b                                           ; $4e56: $a0
	ld   a, [bc]                                     ; $4e57: $0a
	inc  h                                           ; $4e58: $24
	inc  b                                           ; $4e59: $04
	and  b                                           ; $4e5a: $a0
	inc  bc                                          ; $4e5b: $03
	inc  h                                           ; $4e5c: $24
	ld   [bc], a                                     ; $4e5d: $02
	rra                                              ; $4e5e: $1f
	ld   a, [bc]                                     ; $4e5f: $0a
	and  b                                           ; $4e60: $a0
	ld   a, [bc]                                     ; $4e61: $0a
	add  hl, de                                      ; $4e62: $19
	inc  b                                           ; $4e63: $04
	and  b                                           ; $4e64: $a0
	inc  bc                                          ; $4e65: $03
	add  hl, de                                      ; $4e66: $19
	ld   [bc], a                                     ; $4e67: $02
	rra                                              ; $4e68: $1f
	ld   a, [bc]                                     ; $4e69: $0a
	and  b                                           ; $4e6a: $a0
	ld   a, [bc]                                     ; $4e6b: $0a
	add  hl, de                                      ; $4e6c: $19
	inc  b                                           ; $4e6d: $04
	and  b                                           ; $4e6e: $a0
	inc  bc                                          ; $4e6f: $03
	add  hl, de                                      ; $4e70: $19
	ld   [bc], a                                     ; $4e71: $02
	rra                                              ; $4e72: $1f
	ld   a, [bc]                                     ; $4e73: $0a
	and  b                                           ; $4e74: $a0
	ld   a, [bc]                                     ; $4e75: $0a
	add  hl, de                                      ; $4e76: $19
	dec  bc                                          ; $4e77: $0b
	dec  h                                           ; $4e78: $25
	dec  bc                                          ; $4e79: $0b
	ld   [hl+], a                                    ; $4e7a: $22
	ld   a, [bc]                                     ; $4e7b: $0a
	ld   hl, $250b                                   ; $4e7c: $21 $0b $25
	dec  bc                                          ; $4e7f: $0b
	ld   hl, $200a                                   ; $4e80: $21 $0a $20
	db   $10                                         ; $4e83: $10
	add  hl, de                                      ; $4e84: $19
	inc  b                                           ; $4e85: $04
	and  b                                           ; $4e86: $a0
	inc  bc                                          ; $4e87: $03
	add  hl, de                                      ; $4e88: $19
	ld   [bc], a                                     ; $4e89: $02
	rra                                              ; $4e8a: $1f
	ld   a, [bc]                                     ; $4e8b: $0a
	and  b                                           ; $4e8c: $a0
	ld   a, [bc]                                     ; $4e8d: $0a
	jr   jr_0fd_4e94                                 ; $4e8e: $18 $04

	and  b                                           ; $4e90: $a0
	inc  bc                                          ; $4e91: $03
	jr   jr_0fd_4e96                                 ; $4e92: $18 $02

jr_0fd_4e94:
	rra                                              ; $4e94: $1f
	ld   a, [bc]                                     ; $4e95: $0a

jr_0fd_4e96:
	and  b                                           ; $4e96: $a0
	ld   a, [bc]                                     ; $4e97: $0a
	jr   jr_0fd_4e9e                                 ; $4e98: $18 $04

	and  b                                           ; $4e9a: $a0
	inc  bc                                          ; $4e9b: $03
	jr   jr_0fd_4ea0                                 ; $4e9c: $18 $02

jr_0fd_4e9e:
	rra                                              ; $4e9e: $1f
	ld   a, [bc]                                     ; $4e9f: $0a

jr_0fd_4ea0:
	and  b                                           ; $4ea0: $a0
	ld   a, [bc]                                     ; $4ea1: $0a
	jr   jr_0fd_4ea6                                 ; $4ea2: $18 $02

	rra                                              ; $4ea4: $1f
	ld   [bc], a                                     ; $4ea5: $02

jr_0fd_4ea6:
	and  b                                           ; $4ea6: $a0
	inc  bc                                          ; $4ea7: $03
	jr   jr_0fd_4eac                                 ; $4ea8: $18 $02

	rra                                              ; $4eaa: $1f
	ld   [bc], a                                     ; $4eab: $02

jr_0fd_4eac:
	and  b                                           ; $4eac: $a0
	rlca                                             ; $4ead: $07
	inc  h                                           ; $4eae: $24
	inc  b                                           ; $4eaf: $04
	inc  [hl]                                        ; $4eb0: $34
	inc  b                                           ; $4eb1: $04
	ld   b, h                                        ; $4eb2: $44
	inc  b                                           ; $4eb3: $04
	inc  [hl]                                        ; $4eb4: $34
	inc  b                                           ; $4eb5: $04
	inc  h                                           ; $4eb6: $24
	inc  b                                           ; $4eb7: $04
	inc  [hl]                                        ; $4eb8: $34
	inc  b                                           ; $4eb9: $04
	ld   b, h                                        ; $4eba: $44
	db   $10                                         ; $4ebb: $10
	and  b                                           ; $4ebc: $a0
	ld   a, [bc]                                     ; $4ebd: $0a
	jr   jr_0fd_4ec4                                 ; $4ebe: $18 $04

	and  b                                           ; $4ec0: $a0
	inc  bc                                          ; $4ec1: $03
	jr   jr_0fd_4ec6                                 ; $4ec2: $18 $02

jr_0fd_4ec4:
	rra                                              ; $4ec4: $1f
	ld   a, [bc]                                     ; $4ec5: $0a

jr_0fd_4ec6:
	and  b                                           ; $4ec6: $a0
	ld   a, [bc]                                     ; $4ec7: $0a
	jr   jr_0fd_4ece                                 ; $4ec8: $18 $04

	and  b                                           ; $4eca: $a0
	inc  bc                                          ; $4ecb: $03
	jr   jr_0fd_4ed0                                 ; $4ecc: $18 $02

jr_0fd_4ece:
	rra                                              ; $4ece: $1f
	ld   a, [bc]                                     ; $4ecf: $0a

jr_0fd_4ed0:
	and  b                                           ; $4ed0: $a0
	ld   a, [bc]                                     ; $4ed1: $0a
	jr   jr_0fd_4ed6                                 ; $4ed2: $18 $02

	rra                                              ; $4ed4: $1f
	ld   [bc], a                                     ; $4ed5: $02

jr_0fd_4ed6:
	and  b                                           ; $4ed6: $a0
	inc  bc                                          ; $4ed7: $03
	jr   jr_0fd_4edc                                 ; $4ed8: $18 $02

	rra                                              ; $4eda: $1f
	ld   a, [bc]                                     ; $4edb: $0a

jr_0fd_4edc:
	and  b                                           ; $4edc: $a0
	ld   a, [bc]                                     ; $4edd: $0a
	jr   nz, jr_0fd_4ee4                             ; $4ede: $20 $04

	and  b                                           ; $4ee0: $a0
	inc  bc                                          ; $4ee1: $03
	jr   nz, jr_0fd_4ee6                             ; $4ee2: $20 $02

jr_0fd_4ee4:
	rra                                              ; $4ee4: $1f
	ld   a, [bc]                                     ; $4ee5: $0a

jr_0fd_4ee6:
	and  b                                           ; $4ee6: $a0
	ld   a, [bc]                                     ; $4ee7: $0a
	ld   [hl+], a                                    ; $4ee8: $22
	ld   [$0820], sp                                 ; $4ee9: $08 $20 $08
	dec  de                                          ; $4eec: $1b
	dec  bc                                          ; $4eed: $0b
	rla                                              ; $4eee: $17
	dec  bc                                          ; $4eef: $0b
	jr   jr_0fd_4efc                                 ; $4ef0: $18 $0a

	add  hl, de                                      ; $4ef2: $19
	ld   [$081b], sp                                 ; $4ef3: $08 $1b $08
	ld   hl, $2408                                   ; $4ef6: $21 $08 $24
	ld   [$0c2b], sp                                 ; $4ef9: $08 $2b $0c

jr_0fd_4efc:
	add  hl, hl                                      ; $4efc: $29
	inc  d                                           ; $4efd: $14
	add  hl, de                                      ; $4efe: $19
	inc  b                                           ; $4eff: $04
	and  b                                           ; $4f00: $a0
	inc  bc                                          ; $4f01: $03
	add  hl, de                                      ; $4f02: $19
	ld   [bc], a                                     ; $4f03: $02
	rra                                              ; $4f04: $1f
	ld   a, [bc]                                     ; $4f05: $0a
	and  b                                           ; $4f06: $a0
	ld   a, [bc]                                     ; $4f07: $0a
	add  hl, de                                      ; $4f08: $19
	inc  b                                           ; $4f09: $04
	and  b                                           ; $4f0a: $a0
	inc  bc                                          ; $4f0b: $03
	add  hl, de                                      ; $4f0c: $19
	ld   [bc], a                                     ; $4f0d: $02
	rra                                              ; $4f0e: $1f
	ld   a, [bc]                                     ; $4f0f: $0a
	and  b                                           ; $4f10: $a0
	ld   a, [bc]                                     ; $4f11: $0a
	add  hl, de                                      ; $4f12: $19
	inc  b                                           ; $4f13: $04
	and  b                                           ; $4f14: $a0
	inc  bc                                          ; $4f15: $03
	add  hl, de                                      ; $4f16: $19
	ld   [bc], a                                     ; $4f17: $02
	rra                                              ; $4f18: $1f
	ld   [bc], a                                     ; $4f19: $02
	and  b                                           ; $4f1a: $a0
	rlca                                             ; $4f1b: $07
	add  hl, hl                                      ; $4f1c: $29
	inc  b                                           ; $4f1d: $04
	add  hl, sp                                      ; $4f1e: $39
	inc  b                                           ; $4f1f: $04
	ld   c, c                                        ; $4f20: $49
	inc  b                                           ; $4f21: $04
	add  hl, sp                                      ; $4f22: $39
	inc  b                                           ; $4f23: $04
	add  hl, hl                                      ; $4f24: $29
	inc  b                                           ; $4f25: $04
	add  hl, sp                                      ; $4f26: $39
	inc  b                                           ; $4f27: $04
	ld   c, c                                        ; $4f28: $49
	db   $10                                         ; $4f29: $10
	and  b                                           ; $4f2a: $a0
	ld   a, [bc]                                     ; $4f2b: $0a
	add  hl, de                                      ; $4f2c: $19
	inc  b                                           ; $4f2d: $04
	and  b                                           ; $4f2e: $a0
	inc  bc                                          ; $4f2f: $03
	add  hl, de                                      ; $4f30: $19
	ld   [bc], a                                     ; $4f31: $02
	rra                                              ; $4f32: $1f
	ld   a, [bc]                                     ; $4f33: $0a
	and  b                                           ; $4f34: $a0
	ld   a, [bc]                                     ; $4f35: $0a
	dec  d                                           ; $4f36: $15
	inc  b                                           ; $4f37: $04
	and  b                                           ; $4f38: $a0
	inc  bc                                          ; $4f39: $03
	dec  d                                           ; $4f3a: $15
	ld   [bc], a                                     ; $4f3b: $02
	rra                                              ; $4f3c: $1f
	ld   a, [bc]                                     ; $4f3d: $0a
	and  b                                           ; $4f3e: $a0
	ld   a, [bc]                                     ; $4f3f: $0a
	dec  d                                           ; $4f40: $15
	inc  b                                           ; $4f41: $04
	and  b                                           ; $4f42: $a0
	inc  bc                                          ; $4f43: $03
	dec  d                                           ; $4f44: $15
	ld   [bc], a                                     ; $4f45: $02
	rra                                              ; $4f46: $1f
	ld   a, [bc]                                     ; $4f47: $0a
	and  b                                           ; $4f48: $a0
	ld   a, [bc]                                     ; $4f49: $0a
	rla                                              ; $4f4a: $17
	inc  b                                           ; $4f4b: $04
	and  b                                           ; $4f4c: $a0
	inc  bc                                          ; $4f4d: $03
	rla                                              ; $4f4e: $17
	ld   [bc], a                                     ; $4f4f: $02
	rra                                              ; $4f50: $1f
	ld   a, [bc]                                     ; $4f51: $0a
	and  b                                           ; $4f52: $a0
	ld   a, [bc]                                     ; $4f53: $0a
	rla                                              ; $4f54: $17
	inc  b                                           ; $4f55: $04
	and  b                                           ; $4f56: $a0
	inc  bc                                          ; $4f57: $03
	rla                                              ; $4f58: $17
	ld   [bc], a                                     ; $4f59: $02
	rra                                              ; $4f5a: $1f
	ld   a, [bc]                                     ; $4f5b: $0a
	and  b                                           ; $4f5c: $a0
	ld   a, [bc]                                     ; $4f5d: $0a
	rla                                              ; $4f5e: $17
	inc  b                                           ; $4f5f: $04
	and  b                                           ; $4f60: $a0
	inc  bc                                          ; $4f61: $03
	rla                                              ; $4f62: $17
	ld   [bc], a                                     ; $4f63: $02
	rra                                              ; $4f64: $1f
	ld   a, [bc]                                     ; $4f65: $0a
	and  b                                           ; $4f66: $a0
	ld   a, [bc]                                     ; $4f67: $0a
	rla                                              ; $4f68: $17
	inc  b                                           ; $4f69: $04
	and  b                                           ; $4f6a: $a0
	inc  bc                                          ; $4f6b: $03
	rla                                              ; $4f6c: $17
	ld   [bc], a                                     ; $4f6d: $02
	rra                                              ; $4f6e: $1f
	ld   a, [bc]                                     ; $4f6f: $0a
	and  b                                           ; $4f70: $a0
	ld   a, [bc]                                     ; $4f71: $0a
	jr   nz, jr_0fd_4f78                             ; $4f72: $20 $04

	and  b                                           ; $4f74: $a0
	inc  bc                                          ; $4f75: $03
	jr   nz, jr_0fd_4f7a                             ; $4f76: $20 $02

jr_0fd_4f78:
	rra                                              ; $4f78: $1f
	ld   a, [bc]                                     ; $4f79: $0a

jr_0fd_4f7a:
	and  b                                           ; $4f7a: $a0
	ld   a, [bc]                                     ; $4f7b: $0a
	jr   nz, jr_0fd_4f82                             ; $4f7c: $20 $04

	and  b                                           ; $4f7e: $a0
	inc  bc                                          ; $4f7f: $03
	jr   nz, jr_0fd_4f84                             ; $4f80: $20 $02

jr_0fd_4f82:
	rra                                              ; $4f82: $1f
	ld   a, [bc]                                     ; $4f83: $0a

jr_0fd_4f84:
	and  b                                           ; $4f84: $a0
	ld   a, [bc]                                     ; $4f85: $0a
	jr   nz, jr_0fd_4f8c                             ; $4f86: $20 $04

	and  b                                           ; $4f88: $a0
	inc  bc                                          ; $4f89: $03
	jr   nz, jr_0fd_4f8e                             ; $4f8a: $20 $02

jr_0fd_4f8c:
	rra                                              ; $4f8c: $1f
	ld   a, [bc]                                     ; $4f8d: $0a

jr_0fd_4f8e:
	and  b                                           ; $4f8e: $a0
	ld   a, [bc]                                     ; $4f8f: $0a
	jr   nz, jr_0fd_4f96                             ; $4f90: $20 $04

	and  b                                           ; $4f92: $a0
	inc  bc                                          ; $4f93: $03
	jr   nz, jr_0fd_4f98                             ; $4f94: $20 $02

jr_0fd_4f96:
	rra                                              ; $4f96: $1f
	ld   a, [bc]                                     ; $4f97: $0a

jr_0fd_4f98:
	and  b                                           ; $4f98: $a0
	ld   a, [bc]                                     ; $4f99: $0a
	add  hl, de                                      ; $4f9a: $19
	inc  b                                           ; $4f9b: $04
	and  b                                           ; $4f9c: $a0
	inc  bc                                          ; $4f9d: $03
	add  hl, de                                      ; $4f9e: $19
	ld   [bc], a                                     ; $4f9f: $02
	rra                                              ; $4fa0: $1f
	ld   a, [bc]                                     ; $4fa1: $0a
	and  b                                           ; $4fa2: $a0
	ld   a, [bc]                                     ; $4fa3: $0a
	add  hl, de                                      ; $4fa4: $19
	inc  b                                           ; $4fa5: $04
	and  b                                           ; $4fa6: $a0
	inc  bc                                          ; $4fa7: $03
	add  hl, de                                      ; $4fa8: $19
	ld   [bc], a                                     ; $4fa9: $02
	rra                                              ; $4faa: $1f
	ld   a, [bc]                                     ; $4fab: $0a
	and  b                                           ; $4fac: $a0
	ld   a, [bc]                                     ; $4fad: $0a
	add  hl, de                                      ; $4fae: $19
	inc  b                                           ; $4faf: $04
	and  b                                           ; $4fb0: $a0
	inc  bc                                          ; $4fb1: $03
	add  hl, de                                      ; $4fb2: $19
	ld   [bc], a                                     ; $4fb3: $02
	rra                                              ; $4fb4: $1f
	ld   [bc], a                                     ; $4fb5: $02
	and  b                                           ; $4fb6: $a0
	ld   a, [bc]                                     ; $4fb7: $0a
	add  hl, bc                                      ; $4fb8: $09
	ld   [$0812], sp                                 ; $4fb9: $08 $12 $08
	dec  d                                           ; $4fbc: $15
	ld   [$0418], sp                                 ; $4fbd: $08 $18 $04
	and  b                                           ; $4fc0: $a0
	inc  bc                                          ; $4fc1: $03
	jr   jr_0fd_4fc6                                 ; $4fc2: $18 $02

	rra                                              ; $4fc4: $1f
	ld   a, [bc]                                     ; $4fc5: $0a

jr_0fd_4fc6:
	and  b                                           ; $4fc6: $a0
	ld   a, [bc]                                     ; $4fc7: $0a
	jr   jr_0fd_4fce                                 ; $4fc8: $18 $04

	and  b                                           ; $4fca: $a0
	inc  bc                                          ; $4fcb: $03
	jr   jr_0fd_4fd0                                 ; $4fcc: $18 $02

jr_0fd_4fce:
	rra                                              ; $4fce: $1f
	ld   a, [bc]                                     ; $4fcf: $0a

jr_0fd_4fd0:
	and  b                                           ; $4fd0: $a0
	ld   a, [bc]                                     ; $4fd1: $0a
	jr   jr_0fd_4fd8                                 ; $4fd2: $18 $04

	and  b                                           ; $4fd4: $a0
	inc  bc                                          ; $4fd5: $03
	jr   jr_0fd_4fda                                 ; $4fd6: $18 $02

jr_0fd_4fd8:
	rra                                              ; $4fd8: $1f
	ld   a, [bc]                                     ; $4fd9: $0a

jr_0fd_4fda:
	and  b                                           ; $4fda: $a0
	ld   a, [bc]                                     ; $4fdb: $0a
	jr   jr_0fd_4fe2                                 ; $4fdc: $18 $04

	and  b                                           ; $4fde: $a0
	inc  bc                                          ; $4fdf: $03
	jr   jr_0fd_4fe4                                 ; $4fe0: $18 $02

jr_0fd_4fe2:
	rra                                              ; $4fe2: $1f
	ld   [bc], a                                     ; $4fe3: $02

jr_0fd_4fe4:
	and  b                                           ; $4fe4: $a0
	ld   a, [bc]                                     ; $4fe5: $0a
	dec  de                                          ; $4fe6: $1b
	ld   [$0220], sp                                 ; $4fe7: $08 $20 $02
	and  b                                           ; $4fea: $a0
	inc  bc                                          ; $4feb: $03
	jr   nz, jr_0fd_4ff0                             ; $4fec: $20 $02

	rra                                              ; $4fee: $1f
	inc  b                                           ; $4fef: $04

jr_0fd_4ff0:
	and  b                                           ; $4ff0: $a0
	ld   a, [bc]                                     ; $4ff1: $0a
	jr   nz, jr_0fd_5004                             ; $4ff2: $20 $10

	ld   [hl+], a                                    ; $4ff4: $22
	ld   [bc], a                                     ; $4ff5: $02
	and  b                                           ; $4ff6: $a0
	inc  bc                                          ; $4ff7: $03
	ld   [hl+], a                                    ; $4ff8: $22
	ld   [bc], a                                     ; $4ff9: $02
	and  b                                           ; $4ffa: $a0
	ld   a, [bc]                                     ; $4ffb: $0a
	inc  h                                           ; $4ffc: $24
	ld   [bc], a                                     ; $4ffd: $02
	and  b                                           ; $4ffe: $a0
	inc  bc                                          ; $4fff: $03
	inc  h                                           ; $5000: $24
	ld   [bc], a                                     ; $5001: $02
	and  b                                           ; $5002: $a0
	ld   a, [bc]                                     ; $5003: $0a

jr_0fd_5004:
	dec  h                                           ; $5004: $25
	ld   [bc], a                                     ; $5005: $02
	and  b                                           ; $5006: $a0
	inc  bc                                          ; $5007: $03
	dec  h                                           ; $5008: $25
	ld   [bc], a                                     ; $5009: $02
	rra                                              ; $500a: $1f
	inc  b                                           ; $500b: $04
	and  b                                           ; $500c: $a0
	ld   a, [bc]                                     ; $500d: $0a
	dec  h                                           ; $500e: $25
	db   $10                                         ; $500f: $10
	inc  h                                           ; $5010: $24
	ld   [bc], a                                     ; $5011: $02
	and  b                                           ; $5012: $a0
	inc  bc                                          ; $5013: $03
	inc  h                                           ; $5014: $24
	ld   [bc], a                                     ; $5015: $02
	and  b                                           ; $5016: $a0
	ld   a, [bc]                                     ; $5017: $0a
	ld   [hl+], a                                    ; $5018: $22
	ld   [bc], a                                     ; $5019: $02
	and  b                                           ; $501a: $a0
	inc  bc                                          ; $501b: $03
	ld   [hl+], a                                    ; $501c: $22
	ld   [bc], a                                     ; $501d: $02
	and  b                                           ; $501e: $a0
	ld   a, [bc]                                     ; $501f: $0a
	jr   nz, jr_0fd_5026                             ; $5020: $20 $04

	and  b                                           ; $5022: $a0
	inc  bc                                          ; $5023: $03
	jr   nz, jr_0fd_5028                             ; $5024: $20 $02

jr_0fd_5026:
	rra                                              ; $5026: $1f
	ld   a, [de]                                     ; $5027: $1a

jr_0fd_5028:
	and  b                                           ; $5028: $a0
	ld   a, [bc]                                     ; $5029: $0a
	add  hl, hl                                      ; $502a: $29
	jr   nz, @+$27                                   ; $502b: $20 $25

	ld   a, [de]                                     ; $502d: $1a
	dec  hl                                          ; $502e: $2b
	ld   [bc], a                                     ; $502f: $02
	jr   nc, @+$04                                   ; $5030: $30 $02

	ld   sp, $3202                                   ; $5032: $31 $02 $32
	dec  bc                                          ; $5035: $0b
	add  hl, hl                                      ; $5036: $29
	dec  bc                                          ; $5037: $0b
	jr   nc, jr_0fd_5044                             ; $5038: $30 $0a

	dec  hl                                          ; $503a: $2b
	jr   c, @-$5e                                    ; $503b: $38 $a0

	inc  bc                                          ; $503d: $03
	dec  hl                                          ; $503e: $2b
	ld   [$0aa0], sp                                 ; $503f: $08 $a0 $0a
	dec  hl                                          ; $5042: $2b
	ld   a, [de]                                     ; $5043: $1a

jr_0fd_5044:
	ld   sp, $3202                                   ; $5044: $31 $02 $32
	ld   [bc], a                                     ; $5047: $02
	inc  sp                                          ; $5048: $33
	ld   [bc], a                                     ; $5049: $02
	inc  [hl]                                        ; $504a: $34
	dec  bc                                          ; $504b: $0b
	dec  hl                                          ; $504c: $2b
	dec  bc                                          ; $504d: $0b
	ld   [hl-], a                                    ; $504e: $32
	ld   a, [bc]                                     ; $504f: $0a
	ld   sp, $a038                                   ; $5050: $31 $38 $a0
	inc  bc                                          ; $5053: $03
	ld   sp, $a008                                   ; $5054: $31 $08 $a0
	ld   a, [bc]                                     ; $5057: $0a
	add  hl, hl                                      ; $5058: $29
	ld   a, [de]                                     ; $5059: $1a
	add  hl, hl                                      ; $505a: $29
	ld   [bc], a                                     ; $505b: $02
	ld   a, [hl+]                                    ; $505c: $2a
	ld   [bc], a                                     ; $505d: $02
	dec  hl                                          ; $505e: $2b
	ld   [bc], a                                     ; $505f: $02
	jr   nc, @+$0d                                   ; $5060: $30 $0b

	add  hl, hl                                      ; $5062: $29
	dec  bc                                          ; $5063: $0b
	jr   nc, jr_0fd_5070                             ; $5064: $30 $0a

	inc  sp                                          ; $5066: $33
	jr   nz, jr_0fd_509c                             ; $5067: $20 $33

	jr   jr_0fd_509e                                 ; $5069: $18 $33

	ld   [$2032], sp                                 ; $506b: $08 $32 $20
	ld   b, h                                        ; $506e: $44
	inc  bc                                          ; $506f: $03

jr_0fd_5070:
	dec  sp                                          ; $5070: $3b
	inc  bc                                          ; $5071: $03
	add  hl, sp                                      ; $5072: $39
	ld   [bc], a                                     ; $5073: $02
	inc  [hl]                                        ; $5074: $34
	inc  bc                                          ; $5075: $03
	dec  hl                                          ; $5076: $2b
	inc  bc                                          ; $5077: $03
	add  hl, hl                                      ; $5078: $29
	ld   [bc], a                                     ; $5079: $02
	inc  h                                           ; $507a: $24
	inc  bc                                          ; $507b: $03
	dec  de                                          ; $507c: $1b
	inc  bc                                          ; $507d: $03
	add  hl, de                                      ; $507e: $19
	ld   [bc], a                                     ; $507f: $02
	inc  d                                           ; $5080: $14
	inc  bc                                          ; $5081: $03
	dec  bc                                          ; $5082: $0b
	inc  bc                                          ; $5083: $03
	add  hl, bc                                      ; $5084: $09
	ld   [bc], a                                     ; $5085: $02
	jr   jr_0fd_508a                                 ; $5086: $18 $02

	and  b                                           ; $5088: $a0
	inc  bc                                          ; $5089: $03

jr_0fd_508a:
	jr   jr_0fd_508e                                 ; $508a: $18 $02

	rra                                              ; $508c: $1f
	inc  b                                           ; $508d: $04

jr_0fd_508e:
	and  b                                           ; $508e: $a0
	ld   a, [bc]                                     ; $508f: $0a
	jr   jr_0fd_509e                                 ; $5090: $18 $0c

	and  b                                           ; $5092: $a0
	inc  bc                                          ; $5093: $03
	jr   jr_0fd_509a                                 ; $5094: $18 $04

	and  b                                           ; $5096: $a0
	ld   a, [bc]                                     ; $5097: $0a
	jr   jr_0fd_509e                                 ; $5098: $18 $04

jr_0fd_509a:
	and  b                                           ; $509a: $a0
	inc  bc                                          ; $509b: $03

jr_0fd_509c:
	jr   jr_0fd_50a2                                 ; $509c: $18 $04

jr_0fd_509e:
	and  b                                           ; $509e: $a0
	ld   a, [bc]                                     ; $509f: $0a
	add  hl, de                                      ; $50a0: $19
	db   $10                                         ; $50a1: $10

jr_0fd_50a2:
	jr   jr_0fd_50b4                                 ; $50a2: $18 $10

	jr   nz, jr_0fd_50aa                             ; $50a4: $20 $04

	and  b                                           ; $50a6: $a0
	inc  bc                                          ; $50a7: $03
	jr   nz, jr_0fd_50ac                             ; $50a8: $20 $02

jr_0fd_50aa:
	rra                                              ; $50aa: $1f
	ld   a, [bc]                                     ; $50ab: $0a

jr_0fd_50ac:
	and  b                                           ; $50ac: $a0
	ld   a, [bc]                                     ; $50ad: $0a
	inc  h                                           ; $50ae: $24
	inc  b                                           ; $50af: $04
	and  b                                           ; $50b0: $a0
	inc  bc                                          ; $50b1: $03
	inc  h                                           ; $50b2: $24
	ld   [bc], a                                     ; $50b3: $02

jr_0fd_50b4:
	rra                                              ; $50b4: $1f
	ld   a, [bc]                                     ; $50b5: $0a
	and  b                                           ; $50b6: $a0
	ld   a, [bc]                                     ; $50b7: $0a
	jr   nz, jr_0fd_50be                             ; $50b8: $20 $04

	and  b                                           ; $50ba: $a0
	inc  bc                                          ; $50bb: $03
	jr   nz, jr_0fd_50c0                             ; $50bc: $20 $02

jr_0fd_50be:
	rra                                              ; $50be: $1f
	ld   a, [bc]                                     ; $50bf: $0a

jr_0fd_50c0:
	and  b                                           ; $50c0: $a0
	ld   a, [bc]                                     ; $50c1: $0a
	inc  h                                           ; $50c2: $24
	inc  b                                           ; $50c3: $04
	and  b                                           ; $50c4: $a0
	inc  bc                                          ; $50c5: $03
	inc  h                                           ; $50c6: $24
	ld   [bc], a                                     ; $50c7: $02
	rra                                              ; $50c8: $1f
	ld   a, [bc]                                     ; $50c9: $0a
	and  b                                           ; $50ca: $a0
	ld   a, [bc]                                     ; $50cb: $0a
	jr   nz, jr_0fd_50d2                             ; $50cc: $20 $04

	and  b                                           ; $50ce: $a0
	inc  bc                                          ; $50cf: $03
	jr   nz, jr_0fd_50d4                             ; $50d0: $20 $02

jr_0fd_50d2:
	rra                                              ; $50d2: $1f
	ld   a, [bc]                                     ; $50d3: $0a

jr_0fd_50d4:
	and  b                                           ; $50d4: $a0
	ld   a, [bc]                                     ; $50d5: $0a
	inc  h                                           ; $50d6: $24
	inc  b                                           ; $50d7: $04
	and  b                                           ; $50d8: $a0
	inc  bc                                          ; $50d9: $03
	inc  h                                           ; $50da: $24
	ld   [bc], a                                     ; $50db: $02
	rra                                              ; $50dc: $1f
	ld   a, [bc]                                     ; $50dd: $0a
	and  b                                           ; $50de: $a0
	ld   a, [bc]                                     ; $50df: $0a
	inc  h                                           ; $50e0: $24
	inc  b                                           ; $50e1: $04
	and  b                                           ; $50e2: $a0
	inc  bc                                          ; $50e3: $03
	inc  h                                           ; $50e4: $24
	ld   [bc], a                                     ; $50e5: $02
	rra                                              ; $50e6: $1f
	ld   a, [bc]                                     ; $50e7: $0a
	and  b                                           ; $50e8: $a0
	ld   a, [bc]                                     ; $50e9: $0a
	inc  h                                           ; $50ea: $24
	inc  b                                           ; $50eb: $04
	and  b                                           ; $50ec: $a0
	inc  bc                                          ; $50ed: $03
	inc  h                                           ; $50ee: $24
	ld   [bc], a                                     ; $50ef: $02
	rra                                              ; $50f0: $1f
	ld   a, [bc]                                     ; $50f1: $0a
	and  b                                           ; $50f2: $a0
	ld   a, [bc]                                     ; $50f3: $0a
	add  hl, de                                      ; $50f4: $19
	inc  b                                           ; $50f5: $04
	and  b                                           ; $50f6: $a0
	inc  bc                                          ; $50f7: $03
	add  hl, de                                      ; $50f8: $19
	ld   [bc], a                                     ; $50f9: $02
	rra                                              ; $50fa: $1f
	ld   a, [bc]                                     ; $50fb: $0a
	and  b                                           ; $50fc: $a0
	ld   a, [bc]                                     ; $50fd: $0a
	add  hl, de                                      ; $50fe: $19
	inc  b                                           ; $50ff: $04
	and  b                                           ; $5100: $a0
	inc  bc                                          ; $5101: $03
	add  hl, de                                      ; $5102: $19
	ld   [bc], a                                     ; $5103: $02
	rra                                              ; $5104: $1f
	ld   a, [bc]                                     ; $5105: $0a
	and  b                                           ; $5106: $a0
	ld   a, [bc]                                     ; $5107: $0a
	dec  de                                          ; $5108: $1b
	inc  b                                           ; $5109: $04
	and  b                                           ; $510a: $a0
	inc  bc                                          ; $510b: $03
	dec  de                                          ; $510c: $1b
	ld   [bc], a                                     ; $510d: $02
	rra                                              ; $510e: $1f
	ld   a, [bc]                                     ; $510f: $0a
	and  b                                           ; $5110: $a0
	ld   a, [bc]                                     ; $5111: $0a
	dec  de                                          ; $5112: $1b
	inc  b                                           ; $5113: $04
	and  b                                           ; $5114: $a0
	inc  bc                                          ; $5115: $03
	dec  de                                          ; $5116: $1b
	ld   [bc], a                                     ; $5117: $02
	rra                                              ; $5118: $1f
	ld   a, [bc]                                     ; $5119: $0a
	and  b                                           ; $511a: $a0
	ld   a, [bc]                                     ; $511b: $0a
	rla                                              ; $511c: $17
	inc  b                                           ; $511d: $04
	and  b                                           ; $511e: $a0
	inc  bc                                          ; $511f: $03
	rla                                              ; $5120: $17
	ld   [bc], a                                     ; $5121: $02
	rra                                              ; $5122: $1f
	ld   a, [bc]                                     ; $5123: $0a
	and  b                                           ; $5124: $a0
	ld   a, [bc]                                     ; $5125: $0a
	rla                                              ; $5126: $17
	inc  b                                           ; $5127: $04
	and  b                                           ; $5128: $a0
	inc  bc                                          ; $5129: $03
	rla                                              ; $512a: $17
	ld   [bc], a                                     ; $512b: $02
	rra                                              ; $512c: $1f
	ld   a, [bc]                                     ; $512d: $0a
	and  b                                           ; $512e: $a0
	ld   a, [bc]                                     ; $512f: $0a
	jr   jr_0fd_5136                                 ; $5130: $18 $04

	and  b                                           ; $5132: $a0
	inc  bc                                          ; $5133: $03
	jr   jr_0fd_5138                                 ; $5134: $18 $02

jr_0fd_5136:
	rra                                              ; $5136: $1f
	ld   a, [bc]                                     ; $5137: $0a

jr_0fd_5138:
	and  b                                           ; $5138: $a0
	ld   a, [bc]                                     ; $5139: $0a
	jr   jr_0fd_5140                                 ; $513a: $18 $04

	and  b                                           ; $513c: $a0
	inc  bc                                          ; $513d: $03
	jr   jr_0fd_5142                                 ; $513e: $18 $02

jr_0fd_5140:
	rra                                              ; $5140: $1f
	ld   a, [bc]                                     ; $5141: $0a

jr_0fd_5142:
	and  b                                           ; $5142: $a0
	ld   a, [bc]                                     ; $5143: $0a
	jr   nz, jr_0fd_514a                             ; $5144: $20 $04

	and  b                                           ; $5146: $a0
	inc  bc                                          ; $5147: $03
	jr   nz, jr_0fd_514c                             ; $5148: $20 $02

jr_0fd_514a:
	rra                                              ; $514a: $1f
	ld   a, [bc]                                     ; $514b: $0a

jr_0fd_514c:
	and  b                                           ; $514c: $a0
	ld   a, [bc]                                     ; $514d: $0a
	inc  h                                           ; $514e: $24
	inc  b                                           ; $514f: $04
	and  b                                           ; $5150: $a0
	inc  bc                                          ; $5151: $03
	inc  h                                           ; $5152: $24
	ld   [bc], a                                     ; $5153: $02
	rra                                              ; $5154: $1f
	ld   a, [bc]                                     ; $5155: $0a
	and  b                                           ; $5156: $a0
	ld   a, [bc]                                     ; $5157: $0a
	jr   nz, jr_0fd_515e                             ; $5158: $20 $04

	and  b                                           ; $515a: $a0
	inc  bc                                          ; $515b: $03
	jr   nz, jr_0fd_5160                             ; $515c: $20 $02

jr_0fd_515e:
	rra                                              ; $515e: $1f
	ld   a, [bc]                                     ; $515f: $0a

jr_0fd_5160:
	and  b                                           ; $5160: $a0
	ld   a, [bc]                                     ; $5161: $0a
	inc  h                                           ; $5162: $24
	inc  b                                           ; $5163: $04
	and  b                                           ; $5164: $a0
	inc  bc                                          ; $5165: $03
	inc  h                                           ; $5166: $24
	ld   [bc], a                                     ; $5167: $02
	rra                                              ; $5168: $1f
	ld   a, [bc]                                     ; $5169: $0a
	and  b                                           ; $516a: $a0
	ld   a, [bc]                                     ; $516b: $0a
	db   $10                                         ; $516c: $10
	inc  b                                           ; $516d: $04
	and  b                                           ; $516e: $a0
	inc  bc                                          ; $516f: $03
	db   $10                                         ; $5170: $10
	ld   [bc], a                                     ; $5171: $02
	rra                                              ; $5172: $1f
	ld   [bc], a                                     ; $5173: $02
	and  b                                           ; $5174: $a0
	ld   a, [bc]                                     ; $5175: $0a
	dec  bc                                          ; $5176: $0b
	inc  b                                           ; $5177: $04
	db   $10                                         ; $5178: $10
	inc  b                                           ; $5179: $04
	inc  d                                           ; $517a: $14
	inc  b                                           ; $517b: $04
	add  hl, de                                      ; $517c: $19
	inc  b                                           ; $517d: $04
	dec  de                                          ; $517e: $1b
	inc  b                                           ; $517f: $04
	jr   nz, jr_0fd_5186                             ; $5180: $20 $04

	dec  d                                           ; $5182: $15
	inc  bc                                          ; $5183: $03
	rla                                              ; $5184: $17
	inc  bc                                          ; $5185: $03

jr_0fd_5186:
	add  hl, de                                      ; $5186: $19
	ld   [bc], a                                     ; $5187: $02
	dec  de                                          ; $5188: $1b
	inc  bc                                          ; $5189: $03
	jr   nz, jr_0fd_518f                             ; $518a: $20 $03

	ld   [hl+], a                                    ; $518c: $22
	ld   [bc], a                                     ; $518d: $02
	inc  h                                           ; $518e: $24

jr_0fd_518f:
	inc  bc                                          ; $518f: $03
	dec  h                                           ; $5190: $25
	inc  bc                                          ; $5191: $03
	daa                                              ; $5192: $27
	ld   [bc], a                                     ; $5193: $02
	add  hl, hl                                      ; $5194: $29
	inc  bc                                          ; $5195: $03
	dec  hl                                          ; $5196: $2b
	inc  bc                                          ; $5197: $03
	jr   nc, @+$04                                   ; $5198: $30 $02

	ld   [hl-], a                                    ; $519a: $32
	jr   jr_0fd_51ce                                 ; $519b: $18 $31

	inc  b                                           ; $519d: $04
	jr   nc, jr_0fd_51a4                             ; $519e: $30 $04

	dec  hl                                          ; $51a0: $2b
	inc  e                                           ; $51a1: $1c
	and  b                                           ; $51a2: $a0
	inc  bc                                          ; $51a3: $03

jr_0fd_51a4:
	dec  hl                                          ; $51a4: $2b
	inc  b                                           ; $51a5: $04
	and  b                                           ; $51a6: $a0
	ld   a, [bc]                                     ; $51a7: $0a

jr_0fd_51a8:
	jr   nz, jr_0fd_51ac                             ; $51a8: $20 $02

	and  b                                           ; $51aa: $a0
	inc  bc                                          ; $51ab: $03

jr_0fd_51ac:
	jr   nz, jr_0fd_51b0                             ; $51ac: $20 $02

	rra                                              ; $51ae: $1f
	inc  b                                           ; $51af: $04

jr_0fd_51b0:
	and  b                                           ; $51b0: $a0
	ld   a, [bc]                                     ; $51b1: $0a
	jr   nz, jr_0fd_51c4                             ; $51b2: $20 $10

	jr   nz, jr_0fd_51b8                             ; $51b4: $20 $02

	and  b                                           ; $51b6: $a0
	inc  bc                                          ; $51b7: $03

jr_0fd_51b8:
	jr   nz, jr_0fd_51bc                             ; $51b8: $20 $02

	and  b                                           ; $51ba: $a0
	ld   a, [bc]                                     ; $51bb: $0a

jr_0fd_51bc:
	jr   nz, jr_0fd_51c0                             ; $51bc: $20 $02

	and  b                                           ; $51be: $a0
	inc  bc                                          ; $51bf: $03

jr_0fd_51c0:
	jr   nz, jr_0fd_51c4                             ; $51c0: $20 $02

	and  b                                           ; $51c2: $a0
	ld   a, [bc]                                     ; $51c3: $0a

jr_0fd_51c4:
	ld   [hl+], a                                    ; $51c4: $22
	ld   [bc], a                                     ; $51c5: $02
	and  b                                           ; $51c6: $a0
	inc  bc                                          ; $51c7: $03
	ld   [hl+], a                                    ; $51c8: $22
	ld   [bc], a                                     ; $51c9: $02
	rra                                              ; $51ca: $1f
	inc  b                                           ; $51cb: $04
	and  b                                           ; $51cc: $a0
	ld   a, [bc]                                     ; $51cd: $0a

jr_0fd_51ce:
	ld   [hl+], a                                    ; $51ce: $22
	db   $10                                         ; $51cf: $10
	ld   [hl+], a                                    ; $51d0: $22
	ld   [bc], a                                     ; $51d1: $02
	and  b                                           ; $51d2: $a0
	inc  bc                                          ; $51d3: $03
	ld   [hl+], a                                    ; $51d4: $22
	ld   [bc], a                                     ; $51d5: $02
	and  b                                           ; $51d6: $a0
	ld   a, [bc]                                     ; $51d7: $0a
	ld   [hl+], a                                    ; $51d8: $22
	ld   [bc], a                                     ; $51d9: $02
	and  b                                           ; $51da: $a0
	inc  bc                                          ; $51db: $03
	ld   [hl+], a                                    ; $51dc: $22
	ld   [bc], a                                     ; $51dd: $02
	and  b                                           ; $51de: $a0
	ld   a, [bc]                                     ; $51df: $0a
	jr   nz, jr_0fd_51e6                             ; $51e0: $20 $04

	and  b                                           ; $51e2: $a0
	inc  bc                                          ; $51e3: $03
	jr   nz, jr_0fd_51e8                             ; $51e4: $20 $02

jr_0fd_51e6:
	rra                                              ; $51e6: $1f
	ld   a, [bc]                                     ; $51e7: $0a

jr_0fd_51e8:
	and  b                                           ; $51e8: $a0
	ld   a, [bc]                                     ; $51e9: $0a
	inc  h                                           ; $51ea: $24
	ld   [bc], a                                     ; $51eb: $02
	and  b                                           ; $51ec: $a0
	inc  bc                                          ; $51ed: $03
	dec  h                                           ; $51ee: $25
	ld   [bc], a                                     ; $51ef: $02
	db   $fd                                         ; $51f0: $fd
	pop  af                                          ; $51f1: $f1
	inc  h                                           ; $51f2: $24
	ld   [bc], a                                     ; $51f3: $02
	dec  h                                           ; $51f4: $25
	ld   [bc], a                                     ; $51f5: $02
	cp   d                                           ; $51f6: $ba
	pop  af                                          ; $51f7: $f1
	or   b                                           ; $51f8: $b0
	di                                               ; $51f9: $f3
	rst  $38                                         ; $51fa: $ff
	rst  $38                                         ; $51fb: $ff
	ld   b, $00                                      ; $51fc: $06 $00
	add  hl, bc                                      ; $51fe: $09
	nop                                              ; $51ff: $00
	and  d                                           ; $5200: $a2
	nop                                              ; $5201: $00
	rst  ToBoot                                         ; $5202: $c7
	jr   nc, jr_0fd_51a8                             ; $5203: $30 $a3

	ld   h, $a0                                      ; $5205: $26 $a0
	ld   a, [bc]                                     ; $5207: $0a
	dec  hl                                          ; $5208: $2b
	ld   [bc], a                                     ; $5209: $02
	and  b                                           ; $520a: $a0
	inc  bc                                          ; $520b: $03
	dec  hl                                          ; $520c: $2b
	ld   [bc], a                                     ; $520d: $02
	rra                                              ; $520e: $1f
	inc  b                                           ; $520f: $04
	and  b                                           ; $5210: $a0
	ld   a, [bc]                                     ; $5211: $0a
	dec  hl                                          ; $5212: $2b
	inc  c                                           ; $5213: $0c
	and  b                                           ; $5214: $a0
	inc  bc                                          ; $5215: $03
	dec  hl                                          ; $5216: $2b
	ld   [bc], a                                     ; $5217: $02
	rra                                              ; $5218: $1f
	ld   [bc], a                                     ; $5219: $02
	and  b                                           ; $521a: $a0
	ld   a, [bc]                                     ; $521b: $0a
	dec  hl                                          ; $521c: $2b
	ld   [bc], a                                     ; $521d: $02
	and  b                                           ; $521e: $a0
	inc  bc                                          ; $521f: $03
	dec  hl                                          ; $5220: $2b
	ld   [bc], a                                     ; $5221: $02
	and  b                                           ; $5222: $a0
	ld   a, [bc]                                     ; $5223: $0a
	dec  hl                                          ; $5224: $2b
	ld   [bc], a                                     ; $5225: $02
	and  b                                           ; $5226: $a0
	inc  bc                                          ; $5227: $03
	dec  hl                                          ; $5228: $2b
	ld   [bc], a                                     ; $5229: $02
	and  b                                           ; $522a: $a0
	ld   a, [bc]                                     ; $522b: $0a
	jr   nc, jr_0fd_5230                             ; $522c: $30 $02

	and  b                                           ; $522e: $a0
	inc  bc                                          ; $522f: $03

jr_0fd_5230:
	jr   nc, jr_0fd_5234                             ; $5230: $30 $02

	rra                                              ; $5232: $1f
	inc  b                                           ; $5233: $04

jr_0fd_5234:
	and  b                                           ; $5234: $a0
	ld   a, [bc]                                     ; $5235: $0a
	jr   nc, jr_0fd_5244                             ; $5236: $30 $0c

	and  b                                           ; $5238: $a0
	inc  bc                                          ; $5239: $03
	jr   nc, jr_0fd_523e                             ; $523a: $30 $02

	rra                                              ; $523c: $1f
	ld   [bc], a                                     ; $523d: $02

jr_0fd_523e:
	and  b                                           ; $523e: $a0
	ld   a, [bc]                                     ; $523f: $0a
	jr   nc, jr_0fd_5244                             ; $5240: $30 $02

	and  b                                           ; $5242: $a0
	inc  bc                                          ; $5243: $03

jr_0fd_5244:
	jr   nc, jr_0fd_5248                             ; $5244: $30 $02

	and  b                                           ; $5246: $a0
	ld   a, [bc]                                     ; $5247: $0a

jr_0fd_5248:
	jr   nc, jr_0fd_524c                             ; $5248: $30 $02

	and  b                                           ; $524a: $a0
	inc  bc                                          ; $524b: $03

jr_0fd_524c:
	jr   nc, jr_0fd_5250                             ; $524c: $30 $02

	and  b                                           ; $524e: $a0
	ld   a, [bc]                                     ; $524f: $0a

jr_0fd_5250:
	ld   [hl-], a                                    ; $5250: $32
	ld   [$0831], sp                                 ; $5251: $08 $31 $08
	jr   nc, jr_0fd_525e                             ; $5254: $30 $08

	dec  hl                                          ; $5256: $2b
	inc  b                                           ; $5257: $04
	and  b                                           ; $5258: $a0
	inc  bc                                          ; $5259: $03
	dec  hl                                          ; $525a: $2b
	ld   [bc], a                                     ; $525b: $02
	rra                                              ; $525c: $1f
	ld   [hl+], a                                    ; $525d: $22

jr_0fd_525e:
	and  b                                           ; $525e: $a0
	ld   a, [bc]                                     ; $525f: $0a
	jr   c, @+$26                                    ; $5260: $38 $24

	and  b                                           ; $5262: $a0
	inc  bc                                          ; $5263: $03
	jr   c, jr_0fd_526a                              ; $5264: $38 $04

	and  b                                           ; $5266: $a0
	inc  c                                           ; $5267: $0c
	inc  [hl]                                        ; $5268: $34
	db   $10                                         ; $5269: $10

jr_0fd_526a:
	ld   [hl-], a                                    ; $526a: $32
	ld   [$f3fd], sp                                 ; $526b: $08 $fd $f3
	and  d                                           ; $526e: $a2
	nop                                              ; $526f: $00
	jp   $a308                                       ; $5270: $c3 $08 $a3


	ld   h, $32                                      ; $5273: $26 $32
	ld   [$0434], sp                                 ; $5275: $08 $34 $04
	ld   [hl-], a                                    ; $5278: $32
	inc  b                                           ; $5279: $04
	jr   nc, @+$20                                   ; $527a: $30 $1e

	and  b                                           ; $527c: $a0
	inc  bc                                          ; $527d: $03
	jr   nc, jr_0fd_5284                             ; $527e: $30 $04

	rra                                              ; $5280: $1f
	ld   d, $a0                                      ; $5281: $16 $a0
	inc  c                                           ; $5283: $0c

jr_0fd_5284:
	add  hl, hl                                      ; $5284: $29
	ld   [$0828], sp                                 ; $5285: $08 $28 $08
	add  hl, hl                                      ; $5288: $29
	ld   [$0839], sp                                 ; $5289: $08 $39 $08
	ld   a, [hl-]                                    ; $528c: $3a
	ld   [$0839], sp                                 ; $528d: $08 $39 $08
	inc  [hl]                                        ; $5290: $34
	ld   [$3c35], sp                                 ; $5291: $08 $35 $3c
	and  b                                           ; $5294: $a0
	inc  bc                                          ; $5295: $03
	dec  [hl]                                        ; $5296: $35
	inc  b                                           ; $5297: $04
	rra                                              ; $5298: $1f
	jr   z, @-$5e                                    ; $5299: $28 $a0

	inc  c                                           ; $529b: $0c
	ld   [hl-], a                                    ; $529c: $32
	db   $10                                         ; $529d: $10
	jr   nc, @+$0a                                   ; $529e: $30 $08

	jr   nc, jr_0fd_52aa                             ; $52a0: $30 $08

	ld   [hl-], a                                    ; $52a2: $32
	inc  b                                           ; $52a3: $04
	jr   nc, jr_0fd_52aa                             ; $52a4: $30 $04

	dec  hl                                          ; $52a6: $2b
	jr   nc, @-$5e                                   ; $52a7: $30 $a0

	inc  bc                                          ; $52a9: $03

jr_0fd_52aa:
	dec  hl                                          ; $52aa: $2b
	inc  b                                           ; $52ab: $04
	rra                                              ; $52ac: $1f
	inc  b                                           ; $52ad: $04
	and  b                                           ; $52ae: $a0
	inc  c                                           ; $52af: $0c
	dec  hl                                          ; $52b0: $2b
	ld   [$082a], sp                                 ; $52b1: $08 $2a $08
	dec  hl                                          ; $52b4: $2b
	ld   [$0830], sp                                 ; $52b5: $08 $30 $08
	dec  hl                                          ; $52b8: $2b
	ld   [$0830], sp                                 ; $52b9: $08 $30 $08
	ld   [hl-], a                                    ; $52bc: $32
	ld   [$4034], sp                                 ; $52bd: $08 $34 $40
	and  b                                           ; $52c0: $a0

jr_0fd_52c1:
	inc  bc                                          ; $52c1: $03
	inc  [hl]                                        ; $52c2: $34
	inc  b                                           ; $52c3: $04
	rra                                              ; $52c4: $1f
	inc  e                                           ; $52c5: $1c
	and  b                                           ; $52c6: $a0
	inc  c                                           ; $52c7: $0c
	inc  [hl]                                        ; $52c8: $34
	db   $10                                         ; $52c9: $10
	dec  [hl]                                        ; $52ca: $35
	db   $10                                         ; $52cb: $10
	scf                                              ; $52cc: $37
	jr   @+$37                                       ; $52cd: $18 $35

	jr   z, @-$5e                                    ; $52cf: $28 $a0

	inc  bc                                          ; $52d1: $03
	dec  [hl]                                        ; $52d2: $35
	inc  b                                           ; $52d3: $04
	rra                                              ; $52d4: $1f
	inc  b                                           ; $52d5: $04
	and  b                                           ; $52d6: $a0
	inc  c                                           ; $52d7: $0c
	add  hl, sp                                      ; $52d8: $39
	ld   [$0838], sp                                 ; $52d9: $08 $38 $08
	add  hl, sp                                      ; $52dc: $39
	ld   [$083b], sp                                 ; $52dd: $08 $3b $08
	add  hl, sp                                      ; $52e0: $39
	ld   [$0837], sp                                 ; $52e1: $08 $37 $08
	dec  [hl]                                        ; $52e4: $35
	ld   [$2034], sp                                 ; $52e5: $08 $34 $20
	ld   [hl-], a                                    ; $52e8: $32
	ld   [$1030], sp                                 ; $52e9: $08 $30 $10
	ld   [hl-], a                                    ; $52ec: $32
	ld   [$2434], sp                                 ; $52ed: $08 $34 $24
	and  b                                           ; $52f0: $a0
	inc  bc                                          ; $52f1: $03
	inc  [hl]                                        ; $52f2: $34
	inc  b                                           ; $52f3: $04
	rra                                              ; $52f4: $1f
	ld   [$0ca0], sp                                 ; $52f5: $08 $a0 $0c
	dec  hl                                          ; $52f8: $2b
	ld   [$0830], sp                                 ; $52f9: $08 $30 $08
	ld   [hl-], a                                    ; $52fc: $32
	ld   [hl], $a0                                   ; $52fd: $36 $a0
	inc  bc                                          ; $52ff: $03
	ld   [hl-], a                                    ; $5300: $32
	inc  b                                           ; $5301: $04
	rra                                              ; $5302: $1f
	ld   b, $a0                                      ; $5303: $06 $a0
	inc  c                                           ; $5305: $0c
	inc  [hl]                                        ; $5306: $34
	ld   [$0435], sp                                 ; $5307: $08 $35 $04
	inc  [hl]                                        ; $530a: $34
	inc  b                                           ; $530b: $04
	ld   [hl-], a                                    ; $530c: $32
	ld   [$0434], sp                                 ; $530d: $08 $34 $04
	ld   [hl-], a                                    ; $5310: $32
	inc  b                                           ; $5311: $04
	jr   nc, jr_0fd_531c                             ; $5312: $30 $08

	ld   [hl-], a                                    ; $5314: $32
	inc  b                                           ; $5315: $04
	jr   nc, jr_0fd_531c                             ; $5316: $30 $04

	dec  hl                                          ; $5318: $2b
	ld   [$0429], sp                                 ; $5319: $08 $29 $04

jr_0fd_531c:
	jr   z, jr_0fd_5322                              ; $531c: $28 $04

	add  hl, hl                                      ; $531e: $29
	jr   nc, jr_0fd_52c1                             ; $531f: $30 $a0

	inc  bc                                          ; $5321: $03

jr_0fd_5322:
	add  hl, hl                                      ; $5322: $29
	inc  b                                           ; $5323: $04
	rra                                              ; $5324: $1f
	inc  d                                           ; $5325: $14
	and  b                                           ; $5326: $a0
	inc  c                                           ; $5327: $0c
	add  hl, hl                                      ; $5328: $29
	ld   [$082b], sp                                 ; $5329: $08 $2b $08
	ld   sp, $3208                                   ; $532c: $31 $08 $32
	ld   [$0834], sp                                 ; $532f: $08 $34 $08
	dec  [hl]                                        ; $5332: $35
	ld   [$0837], sp                                 ; $5333: $08 $37 $08
	add  hl, sp                                      ; $5336: $39
	ld   a, [hl-]                                    ; $5337: $3a
	and  b                                           ; $5338: $a0
	inc  bc                                          ; $5339: $03
	add  hl, sp                                      ; $533a: $39
	ld   b, $a0                                      ; $533b: $06 $a0
	inc  c                                           ; $533d: $0c
	dec  sp                                          ; $533e: $3b
	jr   nz, jr_0fd_537a                             ; $533f: $20 $39

	jr   jr_0fd_537b                                 ; $5341: $18 $38

	ld   [$3e37], sp                                 ; $5343: $08 $37 $3e
	and  b                                           ; $5346: $a0
	inc  bc                                          ; $5347: $03
	scf                                              ; $5348: $37
	ld   b, $1f                                      ; $5349: $06 $1f

jr_0fd_534b:
	inc  b                                           ; $534b: $04
	and  b                                           ; $534c: $a0
	inc  c                                           ; $534d: $0c
	add  hl, hl                                      ; $534e: $29
	ld   [$082b], sp                                 ; $534f: $08 $2b $08
	ld   sp, $3208                                   ; $5352: $31 $08 $32
	ld   [$0834], sp                                 ; $5355: $08 $34 $08
	dec  [hl]                                        ; $5358: $35
	ld   [$0837], sp                                 ; $5359: $08 $37 $08
	dec  [hl]                                        ; $535c: $35
	inc  [hl]                                        ; $535d: $34
	and  b                                           ; $535e: $a0
	inc  bc                                          ; $535f: $03
	dec  [hl]                                        ; $5360: $35
	ld   b, $1f                                      ; $5361: $06 $1f
	ld   b, $a0                                      ; $5363: $06 $a0
	inc  c                                           ; $5365: $0c
	add  hl, sp                                      ; $5366: $39
	jr   nz, jr_0fd_53a1                             ; $5367: $20 $38

	jr   jr_0fd_53a4                                 ; $5369: $18 $39

	ld   [$403b], sp                                 ; $536b: $08 $3b $40
	and  b                                           ; $536e: $a0
	ld   a, [bc]                                     ; $536f: $0a
	dec  de                                          ; $5370: $1b
	ld   [bc], a                                     ; $5371: $02
	and  b                                           ; $5372: $a0
	inc  bc                                          ; $5373: $03
	dec  de                                          ; $5374: $1b
	ld   [bc], a                                     ; $5375: $02
	rra                                              ; $5376: $1f
	inc  b                                           ; $5377: $04
	and  b                                           ; $5378: $a0
	ld   a, [bc]                                     ; $5379: $0a

jr_0fd_537a:
	dec  de                                          ; $537a: $1b

jr_0fd_537b:
	inc  c                                           ; $537b: $0c
	and  b                                           ; $537c: $a0
	inc  bc                                          ; $537d: $03
	dec  de                                          ; $537e: $1b
	inc  b                                           ; $537f: $04
	and  b                                           ; $5380: $a0
	inc  c                                           ; $5381: $0c
	inc  [hl]                                        ; $5382: $34
	ld   [$0840], sp                                 ; $5383: $08 $40 $08
	dec  sp                                          ; $5386: $3b
	db   $10                                         ; $5387: $10
	add  hl, sp                                      ; $5388: $39
	inc  b                                           ; $5389: $04
	jr   c, jr_0fd_5390                              ; $538a: $38 $04

	add  hl, sp                                      ; $538c: $39
	ld   d, $a0                                      ; $538d: $16 $a0
	inc  bc                                          ; $538f: $03

jr_0fd_5390:
	add  hl, sp                                      ; $5390: $39
	inc  b                                           ; $5391: $04
	rra                                              ; $5392: $1f
	ld   c, $a0                                      ; $5393: $0e $a0
	rlca                                             ; $5395: $07
	jr   nc, jr_0fd_539b                             ; $5396: $30 $03

	dec  hl                                          ; $5398: $2b
	inc  bc                                          ; $5399: $03
	add  hl, hl                                      ; $539a: $29

jr_0fd_539b:
	ld   [bc], a                                     ; $539b: $02
	inc  h                                           ; $539c: $24
	inc  bc                                          ; $539d: $03
	jr   nz, jr_0fd_53a3                             ; $539e: $20 $03

	dec  de                                          ; $53a0: $1b

jr_0fd_53a1:
	ld   [bc], a                                     ; $53a1: $02
	add  hl, de                                      ; $53a2: $19

jr_0fd_53a3:
	inc  b                                           ; $53a3: $04

jr_0fd_53a4:
	and  b                                           ; $53a4: $a0
	inc  bc                                          ; $53a5: $03
	add  hl, de                                      ; $53a6: $19
	inc  b                                           ; $53a7: $04
	rra                                              ; $53a8: $1f
	jr   nz, jr_0fd_534b                             ; $53a9: $20 $a0

	inc  c                                           ; $53ab: $0c
	add  hl, sp                                      ; $53ac: $39
	ld   [$0837], sp                                 ; $53ad: $08 $37 $08
	dec  [hl]                                        ; $53b0: $35
	ld   [$0834], sp                                 ; $53b1: $08 $34 $08
	dec  [hl]                                        ; $53b4: $35

jr_0fd_53b5:
	inc  c                                           ; $53b5: $0c
	and  b                                           ; $53b6: $a0
	inc  bc                                          ; $53b7: $03
	dec  [hl]                                        ; $53b8: $35
	inc  b                                           ; $53b9: $04
	and  b                                           ; $53ba: $a0
	inc  c                                           ; $53bb: $0c
	dec  [hl]                                        ; $53bc: $35
	ld   [$0834], sp                                 ; $53bd: $08 $34 $08
	ld   [hl-], a                                    ; $53c0: $32
	ld   [$1034], sp                                 ; $53c1: $08 $34 $10
	dec  [hl]                                        ; $53c4: $35
	ld   [$0437], sp                                 ; $53c5: $08 $37 $04
	dec  [hl]                                        ; $53c8: $35
	inc  b                                           ; $53c9: $04
	inc  [hl]                                        ; $53ca: $34
	inc  c                                           ; $53cb: $0c
	and  b                                           ; $53cc: $a0
	inc  bc                                          ; $53cd: $03
	inc  [hl]                                        ; $53ce: $34
	inc  b                                           ; $53cf: $04
	and  b                                           ; $53d0: $a0
	inc  c                                           ; $53d1: $0c
	inc  [hl]                                        ; $53d2: $34
	ld   [$0840], sp                                 ; $53d3: $08 $40 $08
	dec  sp                                          ; $53d6: $3b
	db   $10                                         ; $53d7: $10
	add  hl, sp                                      ; $53d8: $39
	inc  b                                           ; $53d9: $04
	jr   c, jr_0fd_53e0                              ; $53da: $38 $04

	add  hl, sp                                      ; $53dc: $39
	ld   d, $a0                                      ; $53dd: $16 $a0
	inc  bc                                          ; $53df: $03

jr_0fd_53e0:
	add  hl, sp                                      ; $53e0: $39
	inc  b                                           ; $53e1: $04
	rra                                              ; $53e2: $1f
	ld   b, $a0                                      ; $53e3: $06 $a0
	inc  c                                           ; $53e5: $0c
	ld   b, b                                        ; $53e6: $40
	ld   [$083b], sp                                 ; $53e7: $08 $3b $08
	add  hl, sp                                      ; $53ea: $39
	ld   [$0838], sp                                 ; $53eb: $08 $38 $08
	add  hl, sp                                      ; $53ee: $39
	ld   d, $a0                                      ; $53ef: $16 $a0
	inc  bc                                          ; $53f1: $03
	add  hl, sp                                      ; $53f2: $39
	inc  b                                           ; $53f3: $04
	rra                                              ; $53f4: $1f
	ld   d, $a0                                      ; $53f5: $16 $a0
	inc  c                                           ; $53f7: $0c
	dec  sp                                          ; $53f8: $3b
	ld   [$0840], sp                                 ; $53f9: $08 $40 $08
	ld   b, d                                        ; $53fc: $42
	ld   b, $40                                      ; $53fd: $06 $40
	dec  b                                           ; $53ff: $05
	dec  sp                                          ; $5400: $3b
	dec  b                                           ; $5401: $05
	ld   b, b                                        ; $5402: $40
	ld   b, $3b                                      ; $5403: $06 $3b
	dec  b                                           ; $5405: $05
	add  hl, sp                                      ; $5406: $39

jr_0fd_5407:
	dec  b                                           ; $5407: $05
	dec  sp                                          ; $5408: $3b
	ld   b, $39                                      ; $5409: $06 $39
	dec  b                                           ; $540b: $05
	jr   c, jr_0fd_5413                              ; $540c: $38 $05

	ld   [hl], $08                                   ; $540e: $36 $08
	jr   c, jr_0fd_541a                              ; $5410: $38 $08

	add  hl, sp                                      ; $5412: $39

jr_0fd_5413:
	jr   nc, jr_0fd_53b5                             ; $5413: $30 $a0

	inc  bc                                          ; $5415: $03
	add  hl, sp                                      ; $5416: $39
	inc  b                                           ; $5417: $04
	rra                                              ; $5418: $1f
	inc  e                                           ; $5419: $1c

jr_0fd_541a:
	and  b                                           ; $541a: $a0
	ld   a, [bc]                                     ; $541b: $0a
	jr   c, jr_0fd_5432                              ; $541c: $38 $14

	and  b                                           ; $541e: $a0
	inc  bc                                          ; $541f: $03
	jr   c, jr_0fd_5426                              ; $5420: $38 $04

	and  b                                           ; $5422: $a0
	inc  c                                           ; $5423: $0c
	inc  [hl]                                        ; $5424: $34
	db   $10                                         ; $5425: $10

jr_0fd_5426:
	ld   [hl-], a                                    ; $5426: $32
	ld   [$f3b0], sp                                 ; $5427: $08 $b0 $f3
	rst  $38                                         ; $542a: $ff
	rst  $38                                         ; $542b: $ff
	ld   b, $40                                      ; $542c: $06 $40
	ld   [bc], a                                     ; $542e: $02
	inc  bc                                          ; $542f: $03
	and  b                                           ; $5430: $a0
	ld   [bc], a                                     ; $5431: $02

jr_0fd_5432:
	and  e                                           ; $5432: $a3
	inc  h                                           ; $5433: $24
	and  d                                           ; $5434: $a2
	add  b                                           ; $5435: $80
	and  b                                           ; $5436: $a0
	ld   [bc], a                                     ; $5437: $02
	inc  d                                           ; $5438: $14
	inc  b                                           ; $5439: $04
	rra                                              ; $543a: $1f
	inc  b                                           ; $543b: $04
	inc  d                                           ; $543c: $14
	inc  c                                           ; $543d: $0c
	rra                                              ; $543e: $1f
	inc  b                                           ; $543f: $04
	inc  d                                           ; $5440: $14
	ld   [bc], a                                     ; $5441: $02
	rra                                              ; $5442: $1f
	ld   [bc], a                                     ; $5443: $02
	inc  d                                           ; $5444: $14
	ld   [bc], a                                     ; $5445: $02
	rra                                              ; $5446: $1f
	ld   [bc], a                                     ; $5447: $02
	dec  d                                           ; $5448: $15
	inc  b                                           ; $5449: $04
	rra                                              ; $544a: $1f
	inc  b                                           ; $544b: $04
	dec  d                                           ; $544c: $15
	inc  c                                           ; $544d: $0c
	rra                                              ; $544e: $1f
	inc  b                                           ; $544f: $04
	dec  d                                           ; $5450: $15
	ld   [bc], a                                     ; $5451: $02
	rra                                              ; $5452: $1f
	ld   [bc], a                                     ; $5453: $02
	dec  d                                           ; $5454: $15
	ld   [bc], a                                     ; $5455: $02
	rra                                              ; $5456: $1f
	ld   [bc], a                                     ; $5457: $02
	rla                                              ; $5458: $17
	ld   [$0816], sp                                 ; $5459: $08 $16 $08
	dec  d                                           ; $545c: $15
	ld   [$0614], sp                                 ; $545d: $08 $14 $06
	and  b                                           ; $5460: $a0
	ld   b, $14                                      ; $5461: $06 $14
	ld   [bc], a                                     ; $5463: $02
	rra                                              ; $5464: $1f
	jr   jr_0fd_5407                                 ; $5465: $18 $a0

	ld   [bc], a                                     ; $5467: $02
	add  hl, de                                      ; $5468: $19
	inc  b                                           ; $5469: $04
	dec  de                                          ; $546a: $1b
	inc  b                                           ; $546b: $04
	inc  h                                           ; $546c: $24
	inc  l                                           ; $546d: $2c
	and  b                                           ; $546e: $a0
	ld   b, $24                                      ; $546f: $06 $24
	inc  b                                           ; $5471: $04
	and  b                                           ; $5472: $a0
	ld   [bc], a                                     ; $5473: $02
	inc  h                                           ; $5474: $24
	inc  b                                           ; $5475: $04
	ld   [hl+], a                                    ; $5476: $22
	inc  b                                           ; $5477: $04
	jr   nz, jr_0fd_547e                             ; $5478: $20 $04

	dec  de                                          ; $547a: $1b
	inc  b                                           ; $547b: $04
	db   $fd                                         ; $547c: $fd
	di                                               ; $547d: $f3

jr_0fd_547e:
	db   $fd                                         ; $547e: $fd
	ldh  a, [rAUD2HIGH]                              ; $547f: $f0 $19
	inc  b                                           ; $5481: $04
	rra                                              ; $5482: $1f
	inc  c                                           ; $5483: $0c
	or   d                                           ; $5484: $b2
	ldh  a, [rAUD2HIGH]                              ; $5485: $f0 $19
	inc  b                                           ; $5487: $04
	rra                                              ; $5488: $1f
	inc  b                                           ; $5489: $04
	inc  d                                           ; $548a: $14
	ld   [$0419], sp                                 ; $548b: $08 $19 $04
	rra                                              ; $548e: $1f
	inc  c                                           ; $548f: $0c
	add  hl, de                                      ; $5490: $19
	inc  b                                           ; $5491: $04
	rra                                              ; $5492: $1f
	inc  c                                           ; $5493: $0c
	ld   hl, $1f04                                   ; $5494: $21 $04 $1f
	inc  c                                           ; $5497: $0c
	ld   hl, $1f04                                   ; $5498: $21 $04 $1f
	inc  b                                           ; $549b: $04
	add  hl, de                                      ; $549c: $19
	ld   [$f0fd], sp                                 ; $549d: $08 $fd $f0
	ld   [hl+], a                                    ; $54a0: $22
	inc  b                                           ; $54a1: $04
	rra                                              ; $54a2: $1f
	inc  c                                           ; $54a3: $0c
	or   d                                           ; $54a4: $b2
	ldh  a, [rAUD4POLY]                              ; $54a5: $f0 $22
	inc  b                                           ; $54a7: $04
	rra                                              ; $54a8: $1f
	inc  b                                           ; $54a9: $04
	add  hl, de                                      ; $54aa: $19
	ld   [$f0fd], sp                                 ; $54ab: $08 $fd $f0
	ld   [hl+], a                                    ; $54ae: $22
	inc  b                                           ; $54af: $04
	rra                                              ; $54b0: $1f
	inc  c                                           ; $54b1: $0c
	or   d                                           ; $54b2: $b2
	ldh  a, [rAUD4POLY]                              ; $54b3: $f0 $22
	inc  b                                           ; $54b5: $04
	rra                                              ; $54b6: $1f
	inc  b                                           ; $54b7: $04
	ld   [hl+], a                                    ; $54b8: $22
	ld   [$f1fd], sp                                 ; $54b9: $08 $fd $f1
	db   $fd                                         ; $54bc: $fd
	ldh  a, [rAUDVOL]                                ; $54bd: $f0 $24
	inc  b                                           ; $54bf: $04
	rra                                              ; $54c0: $1f
	inc  c                                           ; $54c1: $0c
	or   d                                           ; $54c2: $b2
	ldh  a, [rAUDVOL]                                ; $54c3: $f0 $24
	inc  b                                           ; $54c5: $04
	rra                                              ; $54c6: $1f
	inc  b                                           ; $54c7: $04
	dec  de                                          ; $54c8: $1b
	ld   [$f1b1], sp                                 ; $54c9: $08 $b1 $f1
	db   $fd                                         ; $54cc: $fd
	ldh  a, [rAUD2HIGH]                              ; $54cd: $f0 $19
	inc  b                                           ; $54cf: $04
	rra                                              ; $54d0: $1f
	inc  c                                           ; $54d1: $0c
	or   d                                           ; $54d2: $b2
	ldh  a, [rAUD2HIGH]                              ; $54d3: $f0 $19
	inc  b                                           ; $54d5: $04
	rra                                              ; $54d6: $1f
	inc  b                                           ; $54d7: $04
	inc  h                                           ; $54d8: $24
	ld   [$0419], sp                                 ; $54d9: $08 $19 $04
	rra                                              ; $54dc: $1f
	inc  c                                           ; $54dd: $0c
	add  hl, de                                      ; $54de: $19
	db   $10                                         ; $54df: $10
	add  hl, de                                      ; $54e0: $19
	ld   [$081b], sp                                 ; $54e1: $08 $1b $08
	ld   hl, $1908                                   ; $54e4: $21 $08 $19
	ld   [$f0fd], sp                                 ; $54e7: $08 $fd $f0
	ld   [hl+], a                                    ; $54ea: $22
	inc  b                                           ; $54eb: $04
	rra                                              ; $54ec: $1f
	inc  c                                           ; $54ed: $0c
	or   d                                           ; $54ee: $b2
	ldh  a, [rAUD4POLY]                              ; $54ef: $f0 $22
	inc  b                                           ; $54f1: $04
	rra                                              ; $54f2: $1f
	inc  b                                           ; $54f3: $04
	add  hl, de                                      ; $54f4: $19
	ld   [$0422], sp                                 ; $54f5: $08 $22 $04
	rra                                              ; $54f8: $1f
	inc  c                                           ; $54f9: $0c
	ld   [hl+], a                                    ; $54fa: $22
	inc  c                                           ; $54fb: $0c
	rra                                              ; $54fc: $1f
	inc  b                                           ; $54fd: $04
	add  hl, de                                      ; $54fe: $19
	inc  b                                           ; $54ff: $04
	rra                                              ; $5500: $1f
	inc  c                                           ; $5501: $0c
	add  hl, de                                      ; $5502: $19
	ld   c, $1f                                      ; $5503: $0e $1f
	ld   [bc], a                                     ; $5505: $02
	db   $fd                                         ; $5506: $fd
	ldh  a, [rAUD4LEN]                               ; $5507: $f0 $20
	inc  b                                           ; $5509: $04
	rra                                              ; $550a: $1f
	inc  c                                           ; $550b: $0c
	or   d                                           ; $550c: $b2
	ldh  a, [rAUD4LEN]                               ; $550d: $f0 $20
	inc  b                                           ; $550f: $04
	rra                                              ; $5510: $1f
	inc  b                                           ; $5511: $04
	rla                                              ; $5512: $17
	ld   [$f0fd], sp                                 ; $5513: $08 $fd $f0
	add  hl, de                                      ; $5516: $19
	inc  b                                           ; $5517: $04
	rra                                              ; $5518: $1f
	inc  c                                           ; $5519: $0c
	or   d                                           ; $551a: $b2
	ldh  a, [rAUD2HIGH]                              ; $551b: $f0 $19
	inc  b                                           ; $551d: $04
	rra                                              ; $551e: $1f
	inc  b                                           ; $551f: $04
	inc  h                                           ; $5520: $24
	ld   [$f0fd], sp                                 ; $5521: $08 $fd $f0
	dec  de                                          ; $5524: $1b
	inc  b                                           ; $5525: $04
	rra                                              ; $5526: $1f
	inc  c                                           ; $5527: $0c
	or   d                                           ; $5528: $b2
	ldh  a, [rAUD3LEN]                               ; $5529: $f0 $1b
	inc  b                                           ; $552b: $04
	rra                                              ; $552c: $1f
	inc  b                                           ; $552d: $04
	dec  de                                          ; $552e: $1b
	ld   [$f0fd], sp                                 ; $552f: $08 $fd $f0
	inc  h                                           ; $5532: $24
	inc  b                                           ; $5533: $04
	rra                                              ; $5534: $1f
	inc  c                                           ; $5535: $0c
	or   d                                           ; $5536: $b2
	ldh  a, [rAUDVOL]                                ; $5537: $f0 $24
	inc  b                                           ; $5539: $04
	rra                                              ; $553a: $1f
	inc  b                                           ; $553b: $04
	inc  h                                           ; $553c: $24
	ld   [$0219], sp                                 ; $553d: $08 $19 $02
	rra                                              ; $5540: $1f
	ld   b, $19                                      ; $5541: $06 $19
	db   $10                                         ; $5543: $10
	dec  de                                          ; $5544: $1b
	ld   [bc], a                                     ; $5545: $02
	rra                                              ; $5546: $1f
	ld   [bc], a                                     ; $5547: $02
	jr   nz, jr_0fd_554c                             ; $5548: $20 $02

	rra                                              ; $554a: $1f
	ld   [bc], a                                     ; $554b: $02

jr_0fd_554c:
	ld   [hl+], a                                    ; $554c: $22
	ld   [bc], a                                     ; $554d: $02
	rra                                              ; $554e: $1f
	ld   b, $22                                      ; $554f: $06 $22
	db   $10                                         ; $5551: $10
	jr   nz, jr_0fd_5556                             ; $5552: $20 $02

	rra                                              ; $5554: $1f
	ld   [bc], a                                     ; $5555: $02

jr_0fd_5556:
	dec  de                                          ; $5556: $1b
	ld   [bc], a                                     ; $5557: $02
	rra                                              ; $5558: $1f
	ld   [bc], a                                     ; $5559: $02
	add  hl, de                                      ; $555a: $19
	inc  b                                           ; $555b: $04
	rra                                              ; $555c: $1f
	inc  d                                           ; $555d: $14
	inc  h                                           ; $555e: $24
	ld   [$0829], sp                                 ; $555f: $08 $29 $08
	inc  h                                           ; $5562: $24
	ld   [$1021], sp                                 ; $5563: $08 $21 $10
	ld   [hl+], a                                    ; $5566: $22
	jr   @+$27                                       ; $5567: $18 $25

	jr   jr_0fd_5584                                 ; $5569: $18 $19

	ld   [$0818], sp                                 ; $556b: $08 $18 $08
	rla                                              ; $556e: $17
	jr   @+$1d                                       ; $556f: $18 $1b

	jr   jr_0fd_5595                                 ; $5571: $18 $22

	db   $10                                         ; $5573: $10
	jr   nz, @+$1a                                   ; $5574: $20 $18

	daa                                              ; $5576: $27
	jr   jr_0fd_5599                                 ; $5577: $18 $20

	ld   [$081b], sp                                 ; $5579: $08 $1b $08
	add  hl, de                                      ; $557c: $19
	jr   jr_0fd_55a0                                 ; $557d: $18 $21

	db   $10                                         ; $557f: $10
	ld   hl, $2408                                   ; $5580: $21 $08 $24
	db   $10                                         ; $5583: $10

jr_0fd_5584:
	ld   [hl+], a                                    ; $5584: $22
	jr   jr_0fd_55b0                                 ; $5585: $18 $29

	jr   @+$34                                       ; $5587: $18 $32

	db   $10                                         ; $5589: $10
	dec  de                                          ; $558a: $1b
	jr   jr_0fd_55b3                                 ; $558b: $18 $26

	jr   jr_0fd_55b2                                 ; $558d: $18 $23

	db   $10                                         ; $558f: $10
	inc  h                                           ; $5590: $24
	jr   @+$36                                       ; $5591: $18 $34

	jr   jr_0fd_55b9                                 ; $5593: $18 $24

jr_0fd_5595:
	db   $10                                         ; $5595: $10
	inc  h                                           ; $5596: $24
	ld   [bc], a                                     ; $5597: $02
	rra                                              ; $5598: $1f

jr_0fd_5599:
	ld   b, $24                                      ; $5599: $06 $24
	inc  c                                           ; $559b: $0c
	rra                                              ; $559c: $1f
	inc  b                                           ; $559d: $04
	inc  h                                           ; $559e: $24
	inc  b                                           ; $559f: $04

jr_0fd_55a0:
	rra                                              ; $55a0: $1f
	inc  b                                           ; $55a1: $04
	dec  h                                           ; $55a2: $25
	ld   [$0824], sp                                 ; $55a3: $08 $24 $08
	dec  de                                          ; $55a6: $1b
	db   $10                                         ; $55a7: $10
	add  hl, de                                      ; $55a8: $19
	inc  b                                           ; $55a9: $04
	rra                                              ; $55aa: $1f
	inc  c                                           ; $55ab: $0c
	jr   nz, jr_0fd_55b2                             ; $55ac: $20 $04

	rra                                              ; $55ae: $1f
	inc  c                                           ; $55af: $0c

jr_0fd_55b0:
	inc  h                                           ; $55b0: $24
	inc  b                                           ; $55b1: $04

jr_0fd_55b2:
	rra                                              ; $55b2: $1f

jr_0fd_55b3:
	inc  c                                           ; $55b3: $0c
	jr   nz, @+$06                                   ; $55b4: $20 $04

	rra                                              ; $55b6: $1f
	inc  b                                           ; $55b7: $04
	inc  h                                           ; $55b8: $24

jr_0fd_55b9:
	ld   [$0419], sp                                 ; $55b9: $08 $19 $04
	rra                                              ; $55bc: $1f
	inc  c                                           ; $55bd: $0c
	jr   nz, @+$06                                   ; $55be: $20 $04

	rra                                              ; $55c0: $1f
	inc  c                                           ; $55c1: $0c
	ld   hl, $1f04                                   ; $55c2: $21 $04 $1f
	inc  c                                           ; $55c5: $0c
	ld   hl, $2210                                   ; $55c6: $21 $10 $22
	inc  b                                           ; $55c9: $04
	rra                                              ; $55ca: $1f
	inc  c                                           ; $55cb: $0c
	ld   [hl+], a                                    ; $55cc: $22
	inc  b                                           ; $55cd: $04
	rra                                              ; $55ce: $1f
	inc  c                                           ; $55cf: $0c
	rla                                              ; $55d0: $17
	inc  b                                           ; $55d1: $04
	rra                                              ; $55d2: $1f
	inc  c                                           ; $55d3: $0c
	rla                                              ; $55d4: $17
	inc  b                                           ; $55d5: $04
	rra                                              ; $55d6: $1f
	inc  b                                           ; $55d7: $04
	ld   [hl+], a                                    ; $55d8: $22
	ld   [$0420], sp                                 ; $55d9: $08 $20 $04
	rra                                              ; $55dc: $1f
	inc  c                                           ; $55dd: $0c
	jr   nz, jr_0fd_55e4                             ; $55de: $20 $04

	rra                                              ; $55e0: $1f
	ld   [$0420], sp                                 ; $55e1: $08 $20 $04

jr_0fd_55e4:
	inc  h                                           ; $55e4: $24
	ld   [$0822], sp                                 ; $55e5: $08 $22 $08
	dec  de                                          ; $55e8: $1b
	ld   [$0814], sp                                 ; $55e9: $08 $14 $08
	add  hl, de                                      ; $55ec: $19
	inc  b                                           ; $55ed: $04
	rra                                              ; $55ee: $1f
	inc  c                                           ; $55ef: $0c
	jr   nz, jr_0fd_55f6                             ; $55f0: $20 $04

	rra                                              ; $55f2: $1f
	inc  c                                           ; $55f3: $0c
	inc  h                                           ; $55f4: $24
	inc  b                                           ; $55f5: $04

jr_0fd_55f6:
	rra                                              ; $55f6: $1f
	inc  c                                           ; $55f7: $0c
	jr   nz, @+$06                                   ; $55f8: $20 $04

	rra                                              ; $55fa: $1f
	inc  b                                           ; $55fb: $04
	inc  h                                           ; $55fc: $24
	ld   [$f0fd], sp                                 ; $55fd: $08 $fd $f0
	dec  d                                           ; $5600: $15
	inc  b                                           ; $5601: $04
	rra                                              ; $5602: $1f
	inc  c                                           ; $5603: $0c
	or   d                                           ; $5604: $b2
	ldh  a, [$15]                                    ; $5605: $f0 $15
	inc  b                                           ; $5607: $04
	rra                                              ; $5608: $1f
	inc  b                                           ; $5609: $04
	jr   nz, jr_0fd_5614                             ; $560a: $20 $08

	dec  de                                          ; $560c: $1b
	ld   e, $1f                                      ; $560d: $1e $1f
	ld   [bc], a                                     ; $560f: $02
	inc  d                                           ; $5610: $14
	ld   e, $1f                                      ; $5611: $1e $1f
	ld   [bc], a                                     ; $5613: $02

jr_0fd_5614:
	add  hl, de                                      ; $5614: $19
	ld   [bc], a                                     ; $5615: $02
	rra                                              ; $5616: $1f
	ld   b, $19                                      ; $5617: $06 $19
	db   $10                                         ; $5619: $10
	add  hl, de                                      ; $561a: $19
	ld   [bc], a                                     ; $561b: $02
	rra                                              ; $561c: $1f
	ld   [bc], a                                     ; $561d: $02
	add  hl, de                                      ; $561e: $19
	ld   [bc], a                                     ; $561f: $02
	rra                                              ; $5620: $1f
	ld   [bc], a                                     ; $5621: $02
	dec  de                                          ; $5622: $1b
	ld   [bc], a                                     ; $5623: $02
	rra                                              ; $5624: $1f
	ld   b, $1b                                      ; $5625: $06 $1b
	db   $10                                         ; $5627: $10
	dec  de                                          ; $5628: $1b
	ld   [bc], a                                     ; $5629: $02
	rra                                              ; $562a: $1f
	ld   [bc], a                                     ; $562b: $02
	dec  de                                          ; $562c: $1b
	ld   [bc], a                                     ; $562d: $02
	rra                                              ; $562e: $1f
	ld   [bc], a                                     ; $562f: $02
	add  hl, de                                      ; $5630: $19
	inc  b                                           ; $5631: $04
	rra                                              ; $5632: $1f
	inc  c                                           ; $5633: $0c
	inc  h                                           ; $5634: $24
	jr   nc, @-$4e                                   ; $5635: $30 $b0

	di                                               ; $5637: $f3
	rst  $38                                         ; $5638: $ff
	rst  $38                                         ; $5639: $ff
	ld   b, $00                                      ; $563a: $06 $00
	add  hl, bc                                      ; $563c: $09
	nop                                              ; $563d: $00
	db   $fd                                         ; $563e: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $563f: $f0 $a0
	dec  c                                           ; $5641: $0d
	rla                                              ; $5642: $17
	ld   bc, $0aa0                                   ; $5643: $01 $a0 $0a

jr_0fd_5646:
	db   $10                                         ; $5646: $10
	ld   bc, $01a0                                   ; $5647: $01 $a0 $01
	nop                                              ; $564a: $00
	ld   b, $a0                                      ; $564b: $06 $a0
	dec  c                                           ; $564d: $0d
	rla                                              ; $564e: $17
	ld   bc, $0aa0                                   ; $564f: $01 $a0 $0a
	db   $10                                         ; $5652: $10
	ld   bc, $01a0                                   ; $5653: $01 $a0 $01
	nop                                              ; $5656: $00
	ld   c, $a0                                      ; $5657: $0e $a0
	dec  c                                           ; $5659: $0d
	rla                                              ; $565a: $17
	ld   bc, $0aa0                                   ; $565b: $01 $a0 $0a
	db   $10                                         ; $565e: $10
	ld   bc, $01a0                                   ; $565f: $01 $a0 $01
	nop                                              ; $5662: $00
	ld   [bc], a                                     ; $5663: $02
	and  b                                           ; $5664: $a0
	dec  c                                           ; $5665: $0d
	rla                                              ; $5666: $17
	ld   bc, $0aa0                                   ; $5667: $01 $a0 $0a
	db   $10                                         ; $566a: $10
	ld   bc, $01a0                                   ; $566b: $01 $a0 $01
	nop                                              ; $566e: $00
	ld   [bc], a                                     ; $566f: $02
	or   c                                           ; $5670: $b1
	ldh  a, [$fd]                                    ; $5671: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5673: $f0 $a0
	dec  c                                           ; $5675: $0d
	rla                                              ; $5676: $17
	ld   bc, $0aa0                                   ; $5677: $01 $a0 $0a
	db   $10                                         ; $567a: $10
	ld   bc, $01a0                                   ; $567b: $01 $a0 $01
	nop                                              ; $567e: $00
	ld   b, $b3                                      ; $567f: $06 $b3
	ldh  a, [$1f]                                    ; $5681: $f0 $1f
	jr   jr_0fd_5646                                 ; $5683: $18 $c1

	inc  bc                                          ; $5685: $03
	and  b                                           ; $5686: $a0
	rlca                                             ; $5687: $07
	ld   [bc], a                                     ; $5688: $02
	ld   bc, $01a0                                   ; $5689: $01 $a0 $01
	nop                                              ; $568c: $00
	ld   [bc], a                                     ; $568d: $02
	pop  bc                                          ; $568e: $c1
	inc  bc                                          ; $568f: $03
	and  b                                           ; $5690: $a0
	rlca                                             ; $5691: $07
	ld   [bc], a                                     ; $5692: $02
	ld   bc, $01a0                                   ; $5693: $01 $a0 $01
	nop                                              ; $5696: $00
	ld   [bc], a                                     ; $5697: $02
	pop  bc                                          ; $5698: $c1
	inc  bc                                          ; $5699: $03
	and  b                                           ; $569a: $a0
	rlca                                             ; $569b: $07
	ld   [bc], a                                     ; $569c: $02
	ld   bc, $01a0                                   ; $569d: $01 $a0 $01
	nop                                              ; $56a0: $00
	ld   bc, $03c1                                   ; $56a1: $01 $c1 $03
	and  b                                           ; $56a4: $a0
	rlca                                             ; $56a5: $07
	ld   [bc], a                                     ; $56a6: $02
	ld   bc, $01a0                                   ; $56a7: $01 $a0 $01
	nop                                              ; $56aa: $00
	ccf                                              ; $56ab: $3f
	db   $fd                                         ; $56ac: $fd
	di                                               ; $56ad: $f3
	db   $fd                                         ; $56ae: $fd
	pop  af                                          ; $56af: $f1
	xor  h                                           ; $56b0: $ac
	ld   bc, $01ec                                   ; $56b1: $01 $ec $01
	or   [hl]                                        ; $56b4: $b6
	pop  af                                          ; $56b5: $f1
	db   $fd                                         ; $56b6: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $56b7: $f0 $a0
	dec  c                                           ; $56b9: $0d
	rla                                              ; $56ba: $17
	ld   bc, $0aa0                                   ; $56bb: $01 $a0 $0a
	db   $10                                         ; $56be: $10
	ld   bc, $01a0                                   ; $56bf: $01 $a0 $01
	nop                                              ; $56c2: $00
	ld   b, $b4                                      ; $56c3: $06 $b4
	ldh  a, [$1f]                                    ; $56c5: $f0 $1f
	ld   [$0da0], sp                                 ; $56c7: $08 $a0 $0d
	rla                                              ; $56ca: $17
	ld   bc, $0aa0                                   ; $56cb: $01 $a0 $0a
	db   $10                                         ; $56ce: $10
	ld   bc, $01a0                                   ; $56cf: $01 $a0 $01
	nop                                              ; $56d2: $00
	ld   b, $fd                                      ; $56d3: $06 $fd
	ldh  a, [$c1]                                    ; $56d5: $f0 $c1
	inc  b                                           ; $56d7: $04
	and  b                                           ; $56d8: $a0
	dec  bc                                          ; $56d9: $0b
	ld   d, $01                                      ; $56da: $16 $01
	jr   nz, jr_0fd_56df                             ; $56dc: $20 $01

	or   e                                           ; $56de: $b3

jr_0fd_56df:
	ldh  a, [$fd]                                    ; $56df: $f0 $fd
	pop  af                                          ; $56e1: $f1
	xor  h                                           ; $56e2: $ac
	ld   bc, $01ec                                   ; $56e3: $01 $ec $01
	or   l                                           ; $56e6: $b5
	pop  af                                          ; $56e7: $f1
	db   $fd                                         ; $56e8: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $56e9: $f0 $a0
	dec  c                                           ; $56eb: $0d
	rla                                              ; $56ec: $17
	ld   bc, $0aa0                                   ; $56ed: $01 $a0 $0a
	db   $10                                         ; $56f0: $10
	ld   bc, $01a0                                   ; $56f1: $01 $a0 $01
	nop                                              ; $56f4: $00
	ld   b, $a0                                      ; $56f5: $06 $a0
	dec  c                                           ; $56f7: $0d
	rla                                              ; $56f8: $17
	ld   bc, $0aa0                                   ; $56f9: $01 $a0 $0a
	db   $10                                         ; $56fc: $10
	ld   bc, $01a0                                   ; $56fd: $01 $a0 $01
	nop                                              ; $5700: $00
	ld   c, $a0                                      ; $5701: $0e $a0
	dec  c                                           ; $5703: $0d
	rla                                              ; $5704: $17
	ld   bc, $0aa0                                   ; $5705: $01 $a0 $0a
	db   $10                                         ; $5708: $10
	ld   bc, $01a0                                   ; $5709: $01 $a0 $01
	nop                                              ; $570c: $00
	ld   [bc], a                                     ; $570d: $02
	and  b                                           ; $570e: $a0
	dec  c                                           ; $570f: $0d
	rla                                              ; $5710: $17
	ld   bc, $0aa0                                   ; $5711: $01 $a0 $0a
	db   $10                                         ; $5714: $10
	ld   bc, $01a0                                   ; $5715: $01 $a0 $01
	nop                                              ; $5718: $00
	ld   [bc], a                                     ; $5719: $02
	or   c                                           ; $571a: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $571b: $f0 $a0
	dec  c                                           ; $571d: $0d
	rla                                              ; $571e: $17
	ld   bc, $0aa0                                   ; $571f: $01 $a0 $0a
	db   $10                                         ; $5722: $10
	ld   bc, $01a0                                   ; $5723: $01 $a0 $01
	nop                                              ; $5726: $00
	ld   d, $a0                                      ; $5727: $16 $a0
	dec  c                                           ; $5729: $0d
	rla                                              ; $572a: $17
	ld   bc, $0aa0                                   ; $572b: $01 $a0 $0a
	db   $10                                         ; $572e: $10
	ld   bc, $01a0                                   ; $572f: $01 $a0 $01
	nop                                              ; $5732: $00
	ld   [bc], a                                     ; $5733: $02
	and  b                                           ; $5734: $a0
	dec  c                                           ; $5735: $0d
	rla                                              ; $5736: $17
	ld   bc, $0aa0                                   ; $5737: $01 $a0 $0a
	db   $10                                         ; $573a: $10
	ld   bc, $01a0                                   ; $573b: $01 $a0 $01
	nop                                              ; $573e: $00
	ld   [bc], a                                     ; $573f: $02
	db   $fd                                         ; $5740: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5741: $f0 $a0
	dec  c                                           ; $5743: $0d
	rla                                              ; $5744: $17
	ld   bc, $0aa0                                   ; $5745: $01 $a0 $0a
	db   $10                                         ; $5748: $10
	ld   bc, $01a0                                   ; $5749: $01 $a0 $01
	nop                                              ; $574c: $00
	ld   b, $b3                                      ; $574d: $06 $b3
	ldh  a, [$fd]                                    ; $574f: $f0 $fd
	pop  af                                          ; $5751: $f1
	xor  h                                           ; $5752: $ac
	ld   bc, $01ec                                   ; $5753: $01 $ec $01
	or   [hl]                                        ; $5756: $b6
	pop  af                                          ; $5757: $f1
	pop  bc                                          ; $5758: $c1
	inc  b                                           ; $5759: $04
	and  b                                           ; $575a: $a0
	add  hl, bc                                      ; $575b: $09
	ld   l, b                                        ; $575c: $68
	ld   bc, $06a0                                   ; $575d: $01 $a0 $06
	sbc  c                                           ; $5760: $99
	ld   bc, $01a0                                   ; $5761: $01 $a0 $01
	sbc  c                                           ; $5764: $99
	ld   b, $c1                                      ; $5765: $06 $c1
	inc  bc                                          ; $5767: $03
	and  b                                           ; $5768: $a0
	rlca                                             ; $5769: $07
	ld   [bc], a                                     ; $576a: $02
	ld   bc, $01a0                                   ; $576b: $01 $a0 $01
	nop                                              ; $576e: $00
	inc  bc                                          ; $576f: $03
	pop  bc                                          ; $5770: $c1
	inc  bc                                          ; $5771: $03
	and  b                                           ; $5772: $a0
	rlca                                             ; $5773: $07
	ld   [bc], a                                     ; $5774: $02
	ld   bc, $01a0                                   ; $5775: $01 $a0 $01
	nop                                              ; $5778: $00
	inc  bc                                          ; $5779: $03
	pop  bc                                          ; $577a: $c1
	inc  bc                                          ; $577b: $03
	and  b                                           ; $577c: $a0
	rlca                                             ; $577d: $07
	ld   [bc], a                                     ; $577e: $02
	ld   bc, $01a0                                   ; $577f: $01 $a0 $01
	nop                                              ; $5782: $00
	rlca                                             ; $5783: $07
	pop  bc                                          ; $5784: $c1
	inc  bc                                          ; $5785: $03
	and  b                                           ; $5786: $a0
	rlca                                             ; $5787: $07
	ld   [bc], a                                     ; $5788: $02
	ld   bc, $01a0                                   ; $5789: $01 $a0 $01
	nop                                              ; $578c: $00
	rlca                                             ; $578d: $07
	and  b                                           ; $578e: $a0
	dec  c                                           ; $578f: $0d
	rla                                              ; $5790: $17
	ld   bc, $0aa0                                   ; $5791: $01 $a0 $0a
	db   $10                                         ; $5794: $10
	ld   bc, $01a0                                   ; $5795: $01 $a0 $01
	nop                                              ; $5798: $00
	ld   b, $c1                                      ; $5799: $06 $c1
	inc  bc                                          ; $579b: $03
	and  b                                           ; $579c: $a0
	rlca                                             ; $579d: $07
	ld   [bc], a                                     ; $579e: $02
	ld   bc, $01a0                                   ; $579f: $01 $a0 $01
	nop                                              ; $57a2: $00
	rlca                                             ; $57a3: $07
	and  b                                           ; $57a4: $a0
	dec  c                                           ; $57a5: $0d
	rla                                              ; $57a6: $17
	ld   bc, $0aa0                                   ; $57a7: $01 $a0 $0a
	db   $10                                         ; $57aa: $10
	ld   bc, $01a0                                   ; $57ab: $01 $a0 $01
	nop                                              ; $57ae: $00
	ld   b, $c1                                      ; $57af: $06 $c1
	inc  b                                           ; $57b1: $04
	and  b                                           ; $57b2: $a0
	add  hl, bc                                      ; $57b3: $09
	ld   l, b                                        ; $57b4: $68
	ld   bc, $06a0                                   ; $57b5: $01 $a0 $06
	sbc  c                                           ; $57b8: $99
	ld   bc, $01a0                                   ; $57b9: $01 $a0 $01
	sbc  c                                           ; $57bc: $99
	ld   [bc], a                                     ; $57bd: $02
	pop  bc                                          ; $57be: $c1
	inc  b                                           ; $57bf: $04
	and  b                                           ; $57c0: $a0
	add  hl, bc                                      ; $57c1: $09
	ld   l, b                                        ; $57c2: $68
	ld   bc, $06a0                                   ; $57c3: $01 $a0 $06
	sbc  c                                           ; $57c6: $99
	ld   bc, $01a0                                   ; $57c7: $01 $a0 $01
	sbc  c                                           ; $57ca: $99
	ld   [bc], a                                     ; $57cb: $02
	db   $fd                                         ; $57cc: $fd
	pop  af                                          ; $57cd: $f1
	xor  h                                           ; $57ce: $ac
	ld   bc, $01ec                                   ; $57cf: $01 $ec $01
	or   [hl]                                        ; $57d2: $b6
	pop  af                                          ; $57d3: $f1
	db   $fd                                         ; $57d4: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $57d5: $f0 $a0
	dec  c                                           ; $57d7: $0d
	rla                                              ; $57d8: $17
	ld   bc, $0aa0                                   ; $57d9: $01 $a0 $0a
	db   $10                                         ; $57dc: $10
	ld   bc, $01a0                                   ; $57dd: $01 $a0 $01
	nop                                              ; $57e0: $00
	ld   b, $a0                                      ; $57e1: $06 $a0
	dec  c                                           ; $57e3: $0d
	rla                                              ; $57e4: $17
	ld   bc, $0aa0                                   ; $57e5: $01 $a0 $0a
	db   $10                                         ; $57e8: $10
	ld   bc, $01a0                                   ; $57e9: $01 $a0 $01
	nop                                              ; $57ec: $00
	ld   c, $a0                                      ; $57ed: $0e $a0
	dec  c                                           ; $57ef: $0d
	rla                                              ; $57f0: $17
	ld   bc, $0aa0                                   ; $57f1: $01 $a0 $0a
	db   $10                                         ; $57f4: $10
	ld   bc, $01a0                                   ; $57f5: $01 $a0 $01
	nop                                              ; $57f8: $00
	ld   [bc], a                                     ; $57f9: $02
	and  b                                           ; $57fa: $a0
	dec  c                                           ; $57fb: $0d
	rla                                              ; $57fc: $17
	ld   bc, $0aa0                                   ; $57fd: $01 $a0 $0a
	db   $10                                         ; $5800: $10
	ld   bc, $01a0                                   ; $5801: $01 $a0 $01
	nop                                              ; $5804: $00
	ld   [bc], a                                     ; $5805: $02
	or   c                                           ; $5806: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $5807: $f0 $a0
	dec  c                                           ; $5809: $0d
	rla                                              ; $580a: $17
	ld   bc, $0aa0                                   ; $580b: $01 $a0 $0a
	db   $10                                         ; $580e: $10
	ld   bc, $01a0                                   ; $580f: $01 $a0 $01
	nop                                              ; $5812: $00
	ld   c, $c1                                      ; $5813: $0e $c1
	inc  b                                           ; $5815: $04
	and  b                                           ; $5816: $a0
	add  hl, bc                                      ; $5817: $09
	ld   l, b                                        ; $5818: $68
	ld   bc, $06a0                                   ; $5819: $01 $a0 $06
	sbc  c                                           ; $581c: $99
	ld   bc, $01a0                                   ; $581d: $01 $a0 $01
	sbc  c                                           ; $5820: $99
	ld   l, $b0                                      ; $5821: $2e $b0
	di                                               ; $5823: $f3
	rst  $38                                         ; $5824: $ff
	rst  $38                                         ; $5825: $ff
	db   $fd                                         ; $5826: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5827: $f0 $a0
	dec  c                                           ; $5829: $0d
	rla                                              ; $582a: $17
	ld   bc, $0aa0                                   ; $582b: $01 $a0 $0a
	db   $10                                         ; $582e: $10
	ld   bc, $01a0                                   ; $582f: $01 $a0 $01
	nop                                              ; $5832: $00
	ld   c, $b2                                      ; $5833: $0e $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $5835: $f0 $a0
	dec  c                                           ; $5837: $0d
	rla                                              ; $5838: $17
	ld   bc, $0aa0                                   ; $5839: $01 $a0 $0a
	db   $10                                         ; $583c: $10
	ld   bc, $01a0                                   ; $583d: $01 $a0 $01
	nop                                              ; $5840: $00
	ld   b, $fd                                      ; $5841: $06 $fd
	ldh  a, [$c1]                                    ; $5843: $f0 $c1
	inc  b                                           ; $5845: $04
	and  b                                           ; $5846: $a0
	dec  bc                                          ; $5847: $0b
	ld   d, $01                                      ; $5848: $16 $01
	jr   nz, jr_0fd_584d                             ; $584a: $20 $01

	or   e                                           ; $584c: $b3

jr_0fd_584d:
	ldh  a, [$ad]                                    ; $584d: $f0 $ad
	nop                                              ; $584f: $00
	pop  bc                                          ; $5850: $c1
	inc  b                                           ; $5851: $04

jr_0fd_5852:
	and  b                                           ; $5852: $a0
	add  hl, bc                                      ; $5853: $09
	ld   l, b                                        ; $5854: $68
	ld   bc, $06a0                                   ; $5855: $01 $a0 $06
	sbc  c                                           ; $5858: $99
	ld   bc, $01a0                                   ; $5859: $01 $a0 $01
	sbc  c                                           ; $585c: $99
	ld   b, $c1                                      ; $585d: $06 $c1
	inc  bc                                          ; $585f: $03
	and  b                                           ; $5860: $a0
	rlca                                             ; $5861: $07
	ld   [bc], a                                     ; $5862: $02
	ld   bc, $01a0                                   ; $5863: $01 $a0 $01
	nop                                              ; $5866: $00
	inc  bc                                          ; $5867: $03
	pop  bc                                          ; $5868: $c1
	inc  bc                                          ; $5869: $03
	and  b                                           ; $586a: $a0
	rlca                                             ; $586b: $07
	ld   [bc], a                                     ; $586c: $02
	ld   bc, $01a0                                   ; $586d: $01 $a0 $01
	nop                                              ; $5870: $00
	inc  bc                                          ; $5871: $03
	pop  bc                                          ; $5872: $c1
	inc  bc                                          ; $5873: $03
	and  b                                           ; $5874: $a0
	rlca                                             ; $5875: $07
	ld   [bc], a                                     ; $5876: $02
	ld   bc, $01a0                                   ; $5877: $01 $a0 $01
	nop                                              ; $587a: $00
	rlca                                             ; $587b: $07
	pop  bc                                          ; $587c: $c1
	inc  bc                                          ; $587d: $03
	and  b                                           ; $587e: $a0
	rlca                                             ; $587f: $07
	ld   [bc], a                                     ; $5880: $02
	ld   bc, $01a0                                   ; $5881: $01 $a0 $01
	nop                                              ; $5884: $00
	rlca                                             ; $5885: $07
	db   $fd                                         ; $5886: $fd
	ldh  a, [$c1]                                    ; $5887: $f0 $c1
	inc  b                                           ; $5889: $04
	and  b                                           ; $588a: $a0
	add  hl, bc                                      ; $588b: $09
	ld   l, b                                        ; $588c: $68
	ld   bc, $06a0                                   ; $588d: $01 $a0 $06
	sbc  c                                           ; $5890: $99
	ld   bc, $01a0                                   ; $5891: $01 $a0 $01
	sbc  c                                           ; $5894: $99
	ld   b, $c1                                      ; $5895: $06 $c1
	inc  bc                                          ; $5897: $03
	and  b                                           ; $5898: $a0
	rlca                                             ; $5899: $07
	ld   [bc], a                                     ; $589a: $02
	ld   bc, $01a0                                   ; $589b: $01 $a0 $01
	nop                                              ; $589e: $00
	rlca                                             ; $589f: $07
	or   c                                           ; $58a0: $b1
	ldh  a, [$ad]                                    ; $58a1: $f0 $ad
	nop                                              ; $58a3: $00
	ld   a, [bc]                                     ; $58a4: $0a
	nop                                              ; $58a5: $00
	add  hl, bc                                      ; $58a6: $09
	nop                                              ; $58a7: $00
	db   $fd                                         ; $58a8: $fd
	di                                               ; $58a9: $f3
	and  d                                           ; $58aa: $a2
	nop                                              ; $58ab: $00
	rst  ToBoot                                         ; $58ac: $c7
	jr   nc, jr_0fd_5852                             ; $58ad: $30 $a3

	ld   h, $fd                                      ; $58af: $26 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $58b1: $f0 $a0
	ld   [$0319], sp                                 ; $58b3: $08 $19 $03
	and  b                                           ; $58b6: $a0
	ld   [bc], a                                     ; $58b7: $02
	dec  de                                          ; $58b8: $1b
	inc  bc                                          ; $58b9: $03
	and  b                                           ; $58ba: $a0
	ld   [$021b], sp                                 ; $58bb: $08 $1b $02
	and  b                                           ; $58be: $a0
	ld   [bc], a                                     ; $58bf: $02
	add  hl, de                                      ; $58c0: $19
	inc  bc                                          ; $58c1: $03
	and  b                                           ; $58c2: $a0
	ld   [$0322], sp                                 ; $58c3: $08 $22 $03
	and  b                                           ; $58c6: $a0
	ld   [bc], a                                     ; $58c7: $02
	dec  de                                          ; $58c8: $1b
	ld   [bc], a                                     ; $58c9: $02
	and  b                                           ; $58ca: $a0
	ld   [$0327], sp                                 ; $58cb: $08 $27 $03
	and  b                                           ; $58ce: $a0
	ld   [bc], a                                     ; $58cf: $02
	ld   [hl+], a                                    ; $58d0: $22
	inc  bc                                          ; $58d1: $03
	and  b                                           ; $58d2: $a0
	ld   [$0222], sp                                 ; $58d3: $08 $22 $02
	and  b                                           ; $58d6: $a0
	ld   [bc], a                                     ; $58d7: $02
	daa                                              ; $58d8: $27
	inc  bc                                          ; $58d9: $03
	and  b                                           ; $58da: $a0
	ld   [$031b], sp                                 ; $58db: $08 $1b $03
	and  b                                           ; $58de: $a0
	ld   [bc], a                                     ; $58df: $02
	ld   [hl+], a                                    ; $58e0: $22
	ld   [bc], a                                     ; $58e1: $02
	or   h                                           ; $58e2: $b4
	ldh  a, [hScriptOpcodeParams]                                    ; $58e3: $f0 $a0
	ld   [$0319], sp                                 ; $58e5: $08 $19 $03
	and  b                                           ; $58e8: $a0
	ld   [bc], a                                     ; $58e9: $02
	dec  de                                          ; $58ea: $1b
	inc  bc                                          ; $58eb: $03
	and  b                                           ; $58ec: $a0
	ld   [$021b], sp                                 ; $58ed: $08 $1b $02
	and  b                                           ; $58f0: $a0
	ld   [bc], a                                     ; $58f1: $02
	add  hl, de                                      ; $58f2: $19
	inc  bc                                          ; $58f3: $03
	and  b                                           ; $58f4: $a0
	ld   [$0322], sp                                 ; $58f5: $08 $22 $03
	and  b                                           ; $58f8: $a0
	ld   [bc], a                                     ; $58f9: $02
	dec  de                                          ; $58fa: $1b
	ld   [bc], a                                     ; $58fb: $02
	and  b                                           ; $58fc: $a0
	ld   [$0325], sp                                 ; $58fd: $08 $25 $03
	and  b                                           ; $5900: $a0
	ld   [bc], a                                     ; $5901: $02
	ld   [hl+], a                                    ; $5902: $22
	inc  bc                                          ; $5903: $03
	and  b                                           ; $5904: $a0
	ld   [$0222], sp                                 ; $5905: $08 $22 $02
	and  b                                           ; $5908: $a0
	ld   [bc], a                                     ; $5909: $02
	dec  h                                           ; $590a: $25
	inc  bc                                          ; $590b: $03
	and  b                                           ; $590c: $a0
	ld   [$031b], sp                                 ; $590d: $08 $1b $03
	and  b                                           ; $5910: $a0
	ld   [bc], a                                     ; $5911: $02
	ld   [hl+], a                                    ; $5912: $22
	ld   [bc], a                                     ; $5913: $02
	and  b                                           ; $5914: $a0
	ld   [$0317], sp                                 ; $5915: $08 $17 $03
	and  b                                           ; $5918: $a0
	ld   [bc], a                                     ; $5919: $02
	dec  de                                          ; $591a: $1b
	inc  bc                                          ; $591b: $03
	and  b                                           ; $591c: $a0
	ld   [$021b], sp                                 ; $591d: $08 $1b $02
	and  b                                           ; $5920: $a0
	ld   [bc], a                                     ; $5921: $02
	rla                                              ; $5922: $17
	inc  bc                                          ; $5923: $03
	and  b                                           ; $5924: $a0
	ld   [$0322], sp                                 ; $5925: $08 $22 $03
	and  b                                           ; $5928: $a0
	ld   [bc], a                                     ; $5929: $02
	dec  de                                          ; $592a: $1b
	ld   [bc], a                                     ; $592b: $02
	and  b                                           ; $592c: $a0
	ld   [$0324], sp                                 ; $592d: $08 $24 $03
	and  b                                           ; $5930: $a0
	ld   [bc], a                                     ; $5931: $02
	ld   [hl+], a                                    ; $5932: $22
	inc  bc                                          ; $5933: $03
	and  b                                           ; $5934: $a0
	ld   [$0222], sp                                 ; $5935: $08 $22 $02
	and  b                                           ; $5938: $a0
	ld   [bc], a                                     ; $5939: $02
	inc  h                                           ; $593a: $24
	inc  bc                                          ; $593b: $03
	and  b                                           ; $593c: $a0
	ld   [$031b], sp                                 ; $593d: $08 $1b $03
	and  b                                           ; $5940: $a0
	ld   [bc], a                                     ; $5941: $02
	ld   [hl+], a                                    ; $5942: $22
	ld   [bc], a                                     ; $5943: $02
	and  b                                           ; $5944: $a0
	ld   [$0317], sp                                 ; $5945: $08 $17 $03
	and  b                                           ; $5948: $a0
	ld   [bc], a                                     ; $5949: $02
	dec  de                                          ; $594a: $1b
	inc  bc                                          ; $594b: $03
	and  b                                           ; $594c: $a0
	ld   [$0219], sp                                 ; $594d: $08 $19 $02
	and  b                                           ; $5950: $a0
	ld   [bc], a                                     ; $5951: $02
	rla                                              ; $5952: $17
	inc  bc                                          ; $5953: $03
	and  b                                           ; $5954: $a0
	ld   [$0320], sp                                 ; $5955: $08 $20 $03
	and  b                                           ; $5958: $a0
	ld   [bc], a                                     ; $5959: $02
	add  hl, de                                      ; $595a: $19
	ld   [bc], a                                     ; $595b: $02
	and  b                                           ; $595c: $a0
	ld   [$0324], sp                                 ; $595d: $08 $24 $03
	and  b                                           ; $5960: $a0
	ld   [bc], a                                     ; $5961: $02
	jr   nz, @+$05                                   ; $5962: $20 $03

	and  b                                           ; $5964: $a0
	ld   [$0220], sp                                 ; $5965: $08 $20 $02
	and  b                                           ; $5968: $a0
	ld   [bc], a                                     ; $5969: $02
	inc  h                                           ; $596a: $24
	inc  bc                                          ; $596b: $03
	and  b                                           ; $596c: $a0
	ld   [$0319], sp                                 ; $596d: $08 $19 $03
	and  b                                           ; $5970: $a0
	ld   [bc], a                                     ; $5971: $02
	jr   nz, @+$04                                   ; $5972: $20 $02

	and  b                                           ; $5974: $a0
	ld   [$0317], sp                                 ; $5975: $08 $17 $03
	and  b                                           ; $5978: $a0
	ld   [bc], a                                     ; $5979: $02
	add  hl, de                                      ; $597a: $19
	inc  bc                                          ; $597b: $03
	and  b                                           ; $597c: $a0
	ld   [$021a], sp                                 ; $597d: $08 $1a $02
	and  b                                           ; $5980: $a0
	ld   [bc], a                                     ; $5981: $02
	rla                                              ; $5982: $17
	inc  bc                                          ; $5983: $03
	and  b                                           ; $5984: $a0
	ld   [$0321], sp                                 ; $5985: $08 $21 $03
	and  b                                           ; $5988: $a0
	ld   [bc], a                                     ; $5989: $02
	ld   a, [de]                                     ; $598a: $1a
	ld   [bc], a                                     ; $598b: $02
	and  b                                           ; $598c: $a0
	ld   [$0324], sp                                 ; $598d: $08 $24 $03
	and  b                                           ; $5990: $a0
	ld   [bc], a                                     ; $5991: $02
	ld   hl, $a003                                   ; $5992: $21 $03 $a0
	ld   [$0221], sp                                 ; $5995: $08 $21 $02
	and  b                                           ; $5998: $a0
	ld   [bc], a                                     ; $5999: $02
	inc  h                                           ; $599a: $24
	inc  bc                                          ; $599b: $03
	and  b                                           ; $599c: $a0
	ld   [$031a], sp                                 ; $599d: $08 $1a $03
	and  b                                           ; $59a0: $a0
	ld   [bc], a                                     ; $59a1: $02
	ld   hl, $a002                                   ; $59a2: $21 $02 $a0
	ld   [$0317], sp                                 ; $59a5: $08 $17 $03
	and  b                                           ; $59a8: $a0
	ld   [bc], a                                     ; $59a9: $02
	ld   a, [de]                                     ; $59aa: $1a
	inc  bc                                          ; $59ab: $03
	and  b                                           ; $59ac: $a0
	ld   [$021a], sp                                 ; $59ad: $08 $1a $02
	and  b                                           ; $59b0: $a0
	ld   [bc], a                                     ; $59b1: $02
	rla                                              ; $59b2: $17
	inc  bc                                          ; $59b3: $03
	and  b                                           ; $59b4: $a0
	ld   [$0321], sp                                 ; $59b5: $08 $21 $03
	and  b                                           ; $59b8: $a0
	ld   [bc], a                                     ; $59b9: $02
	ld   a, [de]                                     ; $59ba: $1a
	ld   [bc], a                                     ; $59bb: $02
	and  b                                           ; $59bc: $a0
	ld   [$0324], sp                                 ; $59bd: $08 $24 $03
	and  b                                           ; $59c0: $a0
	ld   [bc], a                                     ; $59c1: $02
	ld   hl, $a003                                   ; $59c2: $21 $03 $a0
	ld   [$0221], sp                                 ; $59c5: $08 $21 $02
	and  b                                           ; $59c8: $a0
	ld   [bc], a                                     ; $59c9: $02
	inc  h                                           ; $59ca: $24
	inc  bc                                          ; $59cb: $03
	and  b                                           ; $59cc: $a0
	ld   [$031a], sp                                 ; $59cd: $08 $1a $03
	and  b                                           ; $59d0: $a0
	ld   [bc], a                                     ; $59d1: $02
	ld   hl, $a002                                   ; $59d2: $21 $02 $a0
	ld   [$0317], sp                                 ; $59d5: $08 $17 $03
	and  b                                           ; $59d8: $a0
	ld   [bc], a                                     ; $59d9: $02
	ld   a, [de]                                     ; $59da: $1a
	inc  bc                                          ; $59db: $03
	and  b                                           ; $59dc: $a0
	ld   [$021b], sp                                 ; $59dd: $08 $1b $02
	and  b                                           ; $59e0: $a0
	ld   [bc], a                                     ; $59e1: $02
	rla                                              ; $59e2: $17
	inc  bc                                          ; $59e3: $03
	and  b                                           ; $59e4: $a0
	ld   [$0322], sp                                 ; $59e5: $08 $22 $03
	and  b                                           ; $59e8: $a0
	ld   [bc], a                                     ; $59e9: $02
	dec  de                                          ; $59ea: $1b
	ld   [bc], a                                     ; $59eb: $02
	and  b                                           ; $59ec: $a0
	ld   [$0327], sp                                 ; $59ed: $08 $27 $03
	and  b                                           ; $59f0: $a0
	ld   [bc], a                                     ; $59f1: $02
	ld   [hl+], a                                    ; $59f2: $22
	inc  bc                                          ; $59f3: $03
	and  b                                           ; $59f4: $a0
	ld   [$0222], sp                                 ; $59f5: $08 $22 $02
	and  b                                           ; $59f8: $a0
	ld   [bc], a                                     ; $59f9: $02
	daa                                              ; $59fa: $27
	inc  bc                                          ; $59fb: $03
	and  b                                           ; $59fc: $a0
	ld   [$031b], sp                                 ; $59fd: $08 $1b $03
	and  b                                           ; $5a00: $a0
	ld   [bc], a                                     ; $5a01: $02
	ld   [hl+], a                                    ; $5a02: $22
	ld   [bc], a                                     ; $5a03: $02
	and  b                                           ; $5a04: $a0
	ld   [$0317], sp                                 ; $5a05: $08 $17 $03
	and  b                                           ; $5a08: $a0
	ld   [bc], a                                     ; $5a09: $02
	dec  de                                          ; $5a0a: $1b
	inc  bc                                          ; $5a0b: $03
	and  b                                           ; $5a0c: $a0
	ld   [$021b], sp                                 ; $5a0d: $08 $1b $02
	and  b                                           ; $5a10: $a0
	ld   [bc], a                                     ; $5a11: $02
	rla                                              ; $5a12: $17
	inc  bc                                          ; $5a13: $03
	and  b                                           ; $5a14: $a0
	ld   [$0322], sp                                 ; $5a15: $08 $22 $03
	and  b                                           ; $5a18: $a0
	ld   [bc], a                                     ; $5a19: $02
	dec  de                                          ; $5a1a: $1b
	ld   [bc], a                                     ; $5a1b: $02
	and  b                                           ; $5a1c: $a0
	ld   [$0324], sp                                 ; $5a1d: $08 $24 $03
	and  b                                           ; $5a20: $a0
	ld   [bc], a                                     ; $5a21: $02
	ld   [hl+], a                                    ; $5a22: $22
	inc  bc                                          ; $5a23: $03
	and  b                                           ; $5a24: $a0
	ld   [$0222], sp                                 ; $5a25: $08 $22 $02
	and  b                                           ; $5a28: $a0
	ld   [bc], a                                     ; $5a29: $02
	inc  h                                           ; $5a2a: $24
	inc  bc                                          ; $5a2b: $03
	and  b                                           ; $5a2c: $a0
	ld   [$031b], sp                                 ; $5a2d: $08 $1b $03
	and  b                                           ; $5a30: $a0
	ld   [bc], a                                     ; $5a31: $02
	ld   [hl+], a                                    ; $5a32: $22
	ld   [bc], a                                     ; $5a33: $02
	db   $fd                                         ; $5a34: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5a35: $f0 $a0
	ld   [$0317], sp                                 ; $5a37: $08 $17 $03
	and  b                                           ; $5a3a: $a0
	ld   [bc], a                                     ; $5a3b: $02
	add  hl, de                                      ; $5a3c: $19
	inc  bc                                          ; $5a3d: $03
	and  b                                           ; $5a3e: $a0
	ld   [$0219], sp                                 ; $5a3f: $08 $19 $02
	and  b                                           ; $5a42: $a0
	ld   [bc], a                                     ; $5a43: $02
	rla                                              ; $5a44: $17
	inc  bc                                          ; $5a45: $03
	and  b                                           ; $5a46: $a0
	ld   [$0321], sp                                 ; $5a47: $08 $21 $03
	and  b                                           ; $5a4a: $a0
	ld   [bc], a                                     ; $5a4b: $02
	add  hl, de                                      ; $5a4c: $19
	ld   [bc], a                                     ; $5a4d: $02
	and  b                                           ; $5a4e: $a0
	ld   [$0324], sp                                 ; $5a4f: $08 $24 $03
	and  b                                           ; $5a52: $a0
	ld   [bc], a                                     ; $5a53: $02
	ld   hl, $a003                                   ; $5a54: $21 $03 $a0
	ld   [$0221], sp                                 ; $5a57: $08 $21 $02
	and  b                                           ; $5a5a: $a0
	ld   [bc], a                                     ; $5a5b: $02
	inc  h                                           ; $5a5c: $24
	inc  bc                                          ; $5a5d: $03
	and  b                                           ; $5a5e: $a0
	ld   [$0319], sp                                 ; $5a5f: $08 $19 $03
	and  b                                           ; $5a62: $a0
	ld   [bc], a                                     ; $5a63: $02
	ld   hl, $b102                                   ; $5a64: $21 $02 $b1
	ldh  a, [$fd]                                    ; $5a67: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5a69: $f0 $a0
	ld   [$0316], sp                                 ; $5a6b: $08 $16 $03
	and  b                                           ; $5a6e: $a0
	ld   [bc], a                                     ; $5a6f: $02
	add  hl, de                                      ; $5a70: $19
	inc  bc                                          ; $5a71: $03
	and  b                                           ; $5a72: $a0
	ld   [$0219], sp                                 ; $5a73: $08 $19 $02
	and  b                                           ; $5a76: $a0
	ld   [bc], a                                     ; $5a77: $02
	ld   d, $03                                      ; $5a78: $16 $03
	and  b                                           ; $5a7a: $a0
	ld   [$0320], sp                                 ; $5a7b: $08 $20 $03
	and  b                                           ; $5a7e: $a0
	ld   [bc], a                                     ; $5a7f: $02
	add  hl, de                                      ; $5a80: $19
	ld   [bc], a                                     ; $5a81: $02
	and  b                                           ; $5a82: $a0
	ld   [$0322], sp                                 ; $5a83: $08 $22 $03
	and  b                                           ; $5a86: $a0
	ld   [bc], a                                     ; $5a87: $02
	jr   nz, @+$05                                   ; $5a88: $20 $03

	and  b                                           ; $5a8a: $a0
	ld   [$0220], sp                                 ; $5a8b: $08 $20 $02
	and  b                                           ; $5a8e: $a0
	ld   [bc], a                                     ; $5a8f: $02
	ld   [hl+], a                                    ; $5a90: $22
	inc  bc                                          ; $5a91: $03
	and  b                                           ; $5a92: $a0
	ld   [$0319], sp                                 ; $5a93: $08 $19 $03
	and  b                                           ; $5a96: $a0
	ld   [bc], a                                     ; $5a97: $02
	jr   nz, @+$04                                   ; $5a98: $20 $02

	or   c                                           ; $5a9a: $b1
	ldh  a, [$fd]                                    ; $5a9b: $f0 $fd
	ldh  a, [$1f]                                    ; $5a9d: $f0 $1f
	ld   [bc], a                                     ; $5a9f: $02
	and  b                                           ; $5aa0: $a0
	ld   [bc], a                                     ; $5aa1: $02
	ld   [hl+], a                                    ; $5aa2: $22
	ld   [bc], a                                     ; $5aa3: $02
	and  b                                           ; $5aa4: $a0
	ld   [$0222], sp                                 ; $5aa5: $08 $22 $02
	rra                                              ; $5aa8: $1f
	ld   [bc], a                                     ; $5aa9: $02
	daa                                              ; $5aaa: $27
	ld   [bc], a                                     ; $5aab: $02
	and  b                                           ; $5aac: $a0
	ld   [bc], a                                     ; $5aad: $02
	ld   [hl+], a                                    ; $5aae: $22
	ld   [bc], a                                     ; $5aaf: $02
	and  b                                           ; $5ab0: $a0
	ld   [$0226], sp                                 ; $5ab1: $08 $26 $02
	and  b                                           ; $5ab4: $a0
	ld   [bc], a                                     ; $5ab5: $02
	daa                                              ; $5ab6: $27
	ld   [bc], a                                     ; $5ab7: $02
	and  b                                           ; $5ab8: $a0
	ld   [$0227], sp                                 ; $5ab9: $08 $27 $02
	and  b                                           ; $5abc: $a0
	ld   [bc], a                                     ; $5abd: $02
	ld   h, $02                                      ; $5abe: $26 $02
	and  b                                           ; $5ac0: $a0
	ld   [$0226], sp                                 ; $5ac1: $08 $26 $02
	and  b                                           ; $5ac4: $a0
	ld   [bc], a                                     ; $5ac5: $02
	daa                                              ; $5ac6: $27
	ld   [bc], a                                     ; $5ac7: $02
	and  b                                           ; $5ac8: $a0
	ld   [$0227], sp                                 ; $5ac9: $08 $27 $02
	and  b                                           ; $5acc: $a0
	ld   [bc], a                                     ; $5acd: $02
	ld   h, $02                                      ; $5ace: $26 $02
	and  b                                           ; $5ad0: $a0
	ld   [$0222], sp                                 ; $5ad1: $08 $22 $02
	and  b                                           ; $5ad4: $a0
	ld   [bc], a                                     ; $5ad5: $02
	daa                                              ; $5ad6: $27
	ld   [bc], a                                     ; $5ad7: $02
	or   c                                           ; $5ad8: $b1
	ldh  a, [$fd]                                    ; $5ad9: $f0 $fd
	ldh  a, [$1f]                                    ; $5adb: $f0 $1f
	ld   [bc], a                                     ; $5add: $02
	inc  hl                                          ; $5ade: $23
	ld   [bc], a                                     ; $5adf: $02
	and  b                                           ; $5ae0: $a0
	ld   [$0223], sp                                 ; $5ae1: $08 $23 $02
	rra                                              ; $5ae4: $1f
	ld   [bc], a                                     ; $5ae5: $02
	daa                                              ; $5ae6: $27
	ld   [bc], a                                     ; $5ae7: $02
	and  b                                           ; $5ae8: $a0
	ld   [bc], a                                     ; $5ae9: $02
	inc  hl                                          ; $5aea: $23
	ld   [bc], a                                     ; $5aeb: $02
	and  b                                           ; $5aec: $a0
	ld   [$0226], sp                                 ; $5aed: $08 $26 $02
	and  b                                           ; $5af0: $a0
	ld   [bc], a                                     ; $5af1: $02
	daa                                              ; $5af2: $27
	ld   [bc], a                                     ; $5af3: $02
	and  b                                           ; $5af4: $a0
	ld   [$0227], sp                                 ; $5af5: $08 $27 $02
	and  b                                           ; $5af8: $a0
	ld   [bc], a                                     ; $5af9: $02
	ld   h, $02                                      ; $5afa: $26 $02
	and  b                                           ; $5afc: $a0
	ld   [$0226], sp                                 ; $5afd: $08 $26 $02
	and  b                                           ; $5b00: $a0
	ld   [bc], a                                     ; $5b01: $02
	daa                                              ; $5b02: $27
	ld   [bc], a                                     ; $5b03: $02
	and  b                                           ; $5b04: $a0
	ld   [$0227], sp                                 ; $5b05: $08 $27 $02
	and  b                                           ; $5b08: $a0

jr_0fd_5b09:
	ld   [bc], a                                     ; $5b09: $02
	ld   h, $02                                      ; $5b0a: $26 $02
	and  b                                           ; $5b0c: $a0
	ld   [$0223], sp                                 ; $5b0d: $08 $23 $02
	and  b                                           ; $5b10: $a0
	ld   [bc], a                                     ; $5b11: $02
	daa                                              ; $5b12: $27
	ld   [bc], a                                     ; $5b13: $02
	or   c                                           ; $5b14: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $5b15: $f0 $a0
	ld   a, [bc]                                     ; $5b17: $0a
	daa                                              ; $5b18: $27
	jr   @-$5e                                       ; $5b19: $18 $a0

	dec  b                                           ; $5b1b: $05
	daa                                              ; $5b1c: $27
	ld   [$0aa0], sp                                 ; $5b1d: $08 $a0 $0a
	add  hl, hl                                      ; $5b20: $29
	ld   [bc], a                                     ; $5b21: $02
	rra                                              ; $5b22: $1f
	ld   [bc], a                                     ; $5b23: $02
	rst  ToBoot                                         ; $5b24: $c7
	ld   h, b                                        ; $5b25: $60
	dec  hl                                          ; $5b26: $2b
	ld   [bc], a                                     ; $5b27: $02
	and  b                                           ; $5b28: $a0
	ld   [bc], a                                     ; $5b29: $02
	add  hl, hl                                      ; $5b2a: $29
	ld   [bc], a                                     ; $5b2b: $02
	and  b                                           ; $5b2c: $a0
	ld   a, [bc]                                     ; $5b2d: $0a
	daa                                              ; $5b2e: $27
	ld   [bc], a                                     ; $5b2f: $02
	and  b                                           ; $5b30: $a0
	ld   [bc], a                                     ; $5b31: $02
	dec  hl                                          ; $5b32: $2b
	ld   [bc], a                                     ; $5b33: $02
	and  b                                           ; $5b34: $a0
	ld   a, [bc]                                     ; $5b35: $0a
	inc  h                                           ; $5b36: $24
	ld   [bc], a                                     ; $5b37: $02
	and  b                                           ; $5b38: $a0
	ld   [bc], a                                     ; $5b39: $02
	daa                                              ; $5b3a: $27
	ld   [bc], a                                     ; $5b3b: $02
	and  b                                           ; $5b3c: $a0
	ld   a, [bc]                                     ; $5b3d: $0a
	dec  de                                          ; $5b3e: $1b
	ld   [bc], a                                     ; $5b3f: $02
	and  b                                           ; $5b40: $a0
	ld   [bc], a                                     ; $5b41: $02
	inc  h                                           ; $5b42: $24
	ld   [bc], a                                     ; $5b43: $02
	and  b                                           ; $5b44: $a0
	ld   a, [bc]                                     ; $5b45: $0a
	rla                                              ; $5b46: $17
	ld   [bc], a                                     ; $5b47: $02
	and  b                                           ; $5b48: $a0
	ld   [bc], a                                     ; $5b49: $02
	dec  de                                          ; $5b4a: $1b

jr_0fd_5b4b:
	ld   [bc], a                                     ; $5b4b: $02
	and  b                                           ; $5b4c: $a0
	ld   a, [bc]                                     ; $5b4d: $0a
	ld   d, $02                                      ; $5b4e: $16 $02
	and  b                                           ; $5b50: $a0
	ld   [bc], a                                     ; $5b51: $02
	rla                                              ; $5b52: $17
	ld   [bc], a                                     ; $5b53: $02
	and  b                                           ; $5b54: $a0
	ld   a, [bc]                                     ; $5b55: $0a
	inc  d                                           ; $5b56: $14
	ld   [bc], a                                     ; $5b57: $02
	and  b                                           ; $5b58: $a0
	ld   [bc], a                                     ; $5b59: $02
	ld   d, $02                                      ; $5b5a: $16 $02
	and  b                                           ; $5b5c: $a0
	ld   [$2020], sp                                 ; $5b5d: $08 $20 $20
	ld   h, $08                                      ; $5b60: $26 $08
	ld   [hl+], a                                    ; $5b62: $22
	ld   [$1020], sp                                 ; $5b63: $08 $20 $10
	dec  de                                          ; $5b66: $1b
	jr   nz, jr_0fd_5b09                             ; $5b67: $20 $a0

	dec  b                                           ; $5b69: $05
	dec  de                                          ; $5b6a: $1b
	db   $10                                         ; $5b6b: $10
	and  b                                           ; $5b6c: $a0
	ld   [$1023], sp                                 ; $5b6d: $08 $23 $10
	ld   h, $03                                      ; $5b70: $26 $03
	rra                                              ; $5b72: $1f
	inc  bc                                          ; $5b73: $03
	inc  hl                                          ; $5b74: $23
	ld   [bc], a                                     ; $5b75: $02
	and  b                                           ; $5b76: $a0

jr_0fd_5b77:
	ld   [bc], a                                     ; $5b77: $02
	ld   h, $03                                      ; $5b78: $26 $03
	and  b                                           ; $5b7a: $a0
	ld   [$0324], sp                                 ; $5b7b: $08 $24 $03
	and  b                                           ; $5b7e: $a0
	ld   [bc], a                                     ; $5b7f: $02
	inc  hl                                          ; $5b80: $23
	ld   [bc], a                                     ; $5b81: $02
	and  b                                           ; $5b82: $a0
	ld   [$0327], sp                                 ; $5b83: $08 $27 $03
	and  b                                           ; $5b86: $a0
	ld   [bc], a                                     ; $5b87: $02
	inc  h                                           ; $5b88: $24
	inc  bc                                          ; $5b89: $03
	and  b                                           ; $5b8a: $a0
	ld   [$022b], sp                                 ; $5b8b: $08 $2b $02
	and  b                                           ; $5b8e: $a0
	ld   [bc], a                                     ; $5b8f: $02
	daa                                              ; $5b90: $27
	inc  bc                                          ; $5b91: $03
	and  b                                           ; $5b92: $a0
	ld   [$0327], sp                                 ; $5b93: $08 $27 $03
	and  b                                           ; $5b96: $a0
	ld   [bc], a                                     ; $5b97: $02
	dec  hl                                          ; $5b98: $2b
	ld   [bc], a                                     ; $5b99: $02
	and  b                                           ; $5b9a: $a0
	ld   [$2037], sp                                 ; $5b9b: $08 $37 $20
	daa                                              ; $5b9e: $27
	db   $10                                         ; $5b9f: $10
	ld   h, $08                                      ; $5ba0: $26 $08
	ld   [hl+], a                                    ; $5ba2: $22
	ld   [$1020], sp                                 ; $5ba3: $08 $20 $10
	jr   nz, jr_0fd_5bb8                             ; $5ba6: $20 $10

	dec  de                                          ; $5ba8: $1b
	jr   nc, jr_0fd_5b4b                             ; $5ba9: $30 $a0

	ld   bc, $101b                                   ; $5bab: $01 $1b $10
	or   b                                           ; $5bae: $b0

jr_0fd_5baf:
	di                                               ; $5baf: $f3
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	ld   a, [bc]                                     ; $5bb2: $0a
	nop                                              ; $5bb3: $00
	add  hl, bc                                      ; $5bb4: $09
	nop                                              ; $5bb5: $00
	db   $fd                                         ; $5bb6: $fd
	di                                               ; $5bb7: $f3

jr_0fd_5bb8:
	and  d                                           ; $5bb8: $a2
	ld   bc, $70c7                                   ; $5bb9: $01 $c7 $70
	and  e                                           ; $5bbc: $a3
	ld   h, $a0                                      ; $5bbd: $26 $a0
	dec  bc                                          ; $5bbf: $0b
	dec  hl                                          ; $5bc0: $2b
	ld   d, $a0                                      ; $5bc1: $16 $a0
	dec  b                                           ; $5bc3: $05
	dec  hl                                          ; $5bc4: $2b
	ld   [bc], a                                     ; $5bc5: $02
	and  b                                           ; $5bc6: $a0
	dec  bc                                          ; $5bc7: $0b
	dec  hl                                          ; $5bc8: $2b
	ld   [$0829], sp                                 ; $5bc9: $08 $29 $08
	daa                                              ; $5bcc: $27
	ld   [$082b], sp                                 ; $5bcd: $08 $2b $08
	ld   [hl], $08                                   ; $5bd0: $36 $08
	inc  [hl]                                        ; $5bd2: $34
	jr   nz, jr_0fd_5c00                             ; $5bd3: $20 $2b

	jr   jr_0fd_5b77                                 ; $5bd5: $18 $a0

	ld   bc, $082b                                   ; $5bd7: $01 $2b $08
	and  b                                           ; $5bda: $a0
	dec  bc                                          ; $5bdb: $0b
	dec  hl                                          ; $5bdc: $2b
	ld   d, $a0                                      ; $5bdd: $16 $a0
	dec  b                                           ; $5bdf: $05
	dec  hl                                          ; $5be0: $2b
	ld   [bc], a                                     ; $5be1: $02
	and  b                                           ; $5be2: $a0
	dec  bc                                          ; $5be3: $0b
	dec  hl                                          ; $5be4: $2b
	ld   [$0829], sp                                 ; $5be5: $08 $29 $08
	daa                                              ; $5be8: $27
	ld   [$0829], sp                                 ; $5be9: $08 $29 $08
	dec  hl                                          ; $5bec: $2b
	ld   [$3424], sp                                 ; $5bed: $08 $24 $34
	and  b                                           ; $5bf0: $a0
	ld   bc, $0824                                   ; $5bf1: $01 $24 $08
	rra                                              ; $5bf4: $1f
	inc  b                                           ; $5bf5: $04
	and  b                                           ; $5bf6: $a0
	dec  bc                                          ; $5bf7: $0b
	inc  h                                           ; $5bf8: $24
	ld   d, $a0                                      ; $5bf9: $16 $a0
	dec  b                                           ; $5bfb: $05
	inc  h                                           ; $5bfc: $24

jr_0fd_5bfd:
	ld   [bc], a                                     ; $5bfd: $02
	and  b                                           ; $5bfe: $a0
	dec  bc                                          ; $5bff: $0b

jr_0fd_5c00:
	inc  h                                           ; $5c00: $24
	ld   [$0826], sp                                 ; $5c01: $08 $26 $08
	daa                                              ; $5c04: $27
	ld   [$0829], sp                                 ; $5c05: $08 $29 $08
	daa                                              ; $5c08: $27
	ld   [$2032], sp                                 ; $5c09: $08 $32 $20
	dec  hl                                          ; $5c0c: $2b
	jr   jr_0fd_5baf                                 ; $5c0d: $18 $a0

	ld   bc, $082b                                   ; $5c0f: $01 $2b $08
	and  b                                           ; $5c12: $a0
	dec  bc                                          ; $5c13: $0b
	dec  hl                                          ; $5c14: $2b
	jr   jr_0fd_5c41                                 ; $5c15: $18 $2a

	ld   [$0c29], sp                                 ; $5c17: $08 $29 $0c
	and  b                                           ; $5c1a: $a0
	dec  b                                           ; $5c1b: $05
	add  hl, hl                                      ; $5c1c: $29
	inc  b                                           ; $5c1d: $04
	and  b                                           ; $5c1e: $a0
	dec  bc                                          ; $5c1f: $0b
	add  hl, hl                                      ; $5c20: $29
	ld   b, $36                                      ; $5c21: $06 $36
	dec  b                                           ; $5c23: $05
	inc  [hl]                                        ; $5c24: $34
	dec  b                                           ; $5c25: $05
	inc  [hl]                                        ; $5c26: $34
	jr   nz, jr_0fd_5c5b                             ; $5c27: $20 $32

	jr   @-$5e                                       ; $5c29: $18 $a0

	ld   bc, FadePalettesAndSetRangeToUpdate                                   ; $5c2b: $01 $32 $08
	rra                                              ; $5c2e: $1f
	ld   [$0ba0], sp                                 ; $5c2f: $08 $a0 $0b
	dec  hl                                          ; $5c32: $2b

jr_0fd_5c33:
	ld   b, $a0                                      ; $5c33: $06 $a0
	ld   bc, $022b                                   ; $5c35: $01 $2b $02
	and  b                                           ; $5c38: $a0
	dec  bc                                          ; $5c39: $0b
	dec  hl                                          ; $5c3a: $2b
	ld   [$0829], sp                                 ; $5c3b: $08 $29 $08
	daa                                              ; $5c3e: $27
	db   $10                                         ; $5c3f: $10
	dec  hl                                          ; $5c40: $2b

jr_0fd_5c41:
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $5c41: $08 $32 $08
	inc  sp                                          ; $5c44: $33
	jr   nz, jr_0fd_5c80                             ; $5c45: $20 $39

	db   $10                                         ; $5c47: $10
	scf                                              ; $5c48: $37
	db   $10                                         ; $5c49: $10
	inc  [hl]                                        ; $5c4a: $34

jr_0fd_5c4b:
	dec  bc                                          ; $5c4b: $0b
	ld   [hl], $0b                                   ; $5c4c: $36 $0b
	scf                                              ; $5c4e: $37

jr_0fd_5c4f:
	ld   a, [bc]                                     ; $5c4f: $0a
	inc  [hl]                                        ; $5c50: $34
	inc  d                                           ; $5c51: $14
	dec  hl                                          ; $5c52: $2b

jr_0fd_5c53:
	inc  b                                           ; $5c53: $04
	add  hl, hl                                      ; $5c54: $29
	inc  b                                           ; $5c55: $04
	daa                                              ; $5c56: $27

jr_0fd_5c57:
	inc  b                                           ; $5c57: $04
	add  hl, hl                                      ; $5c58: $29
	jr   nz, jr_0fd_5c8d                             ; $5c59: $20 $32

jr_0fd_5c5b:
	jr   nz, jr_0fd_5bfd                             ; $5c5b: $20 $a0

	ld   bc, FadePalettesAndSetRangeToUpdate                                   ; $5c5d: $01 $32 $08
	rra                                              ; $5c60: $1f

jr_0fd_5c61:
	ld   [$0ba0], sp                                 ; $5c61: $08 $a0 $0b
	dec  hl                                          ; $5c64: $2b
	ld   b, $30                                      ; $5c65: $06 $30
	dec  b                                           ; $5c67: $05
	ld   sp, $3205                                   ; $5c68: $31 $05 $32
	ld   [$1037], sp                                 ; $5c6b: $08 $37 $10
	ld   [hl], $08                                   ; $5c6e: $36 $08
	ld   [hl], $18                                   ; $5c70: $36 $18
	inc  [hl]                                        ; $5c72: $34
	ld   b, $a0                                      ; $5c73: $06 $a0
	ld   bc, $0234                                   ; $5c75: $01 $34 $02
	and  b                                           ; $5c78: $a0
	dec  bc                                          ; $5c79: $0b
	inc  [hl]                                        ; $5c7a: $34
	inc  e                                           ; $5c7b: $1c
	and  b                                           ; $5c7c: $a0

jr_0fd_5c7d:
	ld   bc, $0434                                   ; $5c7d: $01 $34 $04

jr_0fd_5c80:
	and  b                                           ; $5c80: $a0

jr_0fd_5c81:
	dec  bc                                          ; $5c81: $0b
	ld   [hl-], a                                    ; $5c82: $32
	db   $10                                         ; $5c83: $10
	dec  hl                                          ; $5c84: $2b

jr_0fd_5c85:
	ld   [$0827], sp                                 ; $5c85: $08 $27 $08
	inc  h                                           ; $5c88: $24

jr_0fd_5c89:
	db   $10                                         ; $5c89: $10
	add  hl, hl                                      ; $5c8a: $29
	ld   b, $27                                      ; $5c8b: $06 $27

jr_0fd_5c8d:
	dec  b                                           ; $5c8d: $05
	add  hl, hl                                      ; $5c8e: $29
	dec  b                                           ; $5c8f: $05
	daa                                              ; $5c90: $27
	jr   nc, jr_0fd_5c33                             ; $5c91: $30 $a0

	ld   bc, PopulateKanjiConvoStructForCurrTextBox                                   ; $5c93: $01 $27 $10
	or   b                                           ; $5c96: $b0
	di                                               ; $5c97: $f3
	rst  $38                                         ; $5c98: $ff
	rst  $38                                         ; $5c99: $ff
	ld   a, [bc]                                     ; $5c9a: $0a
	ld   b, b                                        ; $5c9b: $40
	ld   [bc], a                                     ; $5c9c: $02
	ld   [bc], a                                     ; $5c9d: $02
	db   $fd                                         ; $5c9e: $fd
	di                                               ; $5c9f: $f3
	and  b                                           ; $5ca0: $a0
	ld   [bc], a                                     ; $5ca1: $02
	and  e                                           ; $5ca2: $a3
	inc  h                                           ; $5ca3: $24
	and  d                                           ; $5ca4: $a2
	add  b                                           ; $5ca5: $80
	and  b                                           ; $5ca6: $a0
	inc  b                                           ; $5ca7: $04
	rla                                              ; $5ca8: $17
	jr   nz, jr_0fd_5c4b                             ; $5ca9: $20 $a0

	ld   b, $17                                      ; $5cab: $06 $17
	jr   nz, jr_0fd_5c4f                             ; $5cad: $20 $a0

	inc  b                                           ; $5caf: $04
	rla                                              ; $5cb0: $17
	jr   nz, jr_0fd_5c53                             ; $5cb1: $20 $a0

	ld   b, $17                                      ; $5cb3: $06 $17
	jr   jr_0fd_5c57                                 ; $5cb5: $18 $a0

	inc  b                                           ; $5cb7: $04
	ld   [hl+], a                                    ; $5cb8: $22
	ld   [$2017], sp                                 ; $5cb9: $08 $17 $20
	and  b                                           ; $5cbc: $a0
	ld   b, $17                                      ; $5cbd: $06 $17
	jr   nz, jr_0fd_5c61                             ; $5cbf: $20 $a0

	inc  b                                           ; $5cc1: $04
	jr   nz, @+$22                                   ; $5cc2: $20 $20

	and  b                                           ; $5cc4: $a0
	ld   b, $20                                      ; $5cc5: $06 $20
	jr   nz, @-$5e                                   ; $5cc7: $20 $a0

	inc  b                                           ; $5cc9: $04
	ld   hl, $a020                                   ; $5cca: $21 $20 $a0
	ld   b, $21                                      ; $5ccd: $06 $21
	db   $10                                         ; $5ccf: $10
	and  b                                           ; $5cd0: $a0
	inc  b                                           ; $5cd1: $04
	inc  h                                           ; $5cd2: $24
	db   $10                                         ; $5cd3: $10
	ld   [hl+], a                                    ; $5cd4: $22
	jr   nz, jr_0fd_5cfb                             ; $5cd5: $20 $24

	db   $10                                         ; $5cd7: $10
	dec  de                                          ; $5cd8: $1b
	db   $10                                         ; $5cd9: $10
	add  hl, de                                      ; $5cda: $19
	jr   nz, jr_0fd_5c7d                             ; $5cdb: $20 $a0

	ld   b, $19                                      ; $5cdd: $06 $19
	jr   nz, jr_0fd_5c81                             ; $5cdf: $20 $a0

	inc  b                                           ; $5ce1: $04
	ld   [hl+], a                                    ; $5ce2: $22
	jr   nz, jr_0fd_5c85                             ; $5ce3: $20 $a0

	ld   b, $22                                      ; $5ce5: $06 $22
	jr   nz, jr_0fd_5c89                             ; $5ce7: $20 $a0

	inc  b                                           ; $5ce9: $04
	daa                                              ; $5cea: $27
	inc  b                                           ; $5ceb: $04
	and  b                                           ; $5cec: $a0
	ld   b, $27                                      ; $5ced: $06 $27
	inc  b                                           ; $5cef: $04
	and  b                                           ; $5cf0: $a0
	inc  b                                           ; $5cf1: $04
	dec  hl                                          ; $5cf2: $2b
	inc  b                                           ; $5cf3: $04
	add  hl, hl                                      ; $5cf4: $29
	inc  b                                           ; $5cf5: $04
	dec  hl                                          ; $5cf6: $2b
	inc  b                                           ; $5cf7: $04
	add  hl, hl                                      ; $5cf8: $29
	inc  b                                           ; $5cf9: $04
	dec  hl                                          ; $5cfa: $2b

jr_0fd_5cfb:
	inc  b                                           ; $5cfb: $04
	daa                                              ; $5cfc: $27
	inc  b                                           ; $5cfd: $04
	and  b                                           ; $5cfe: $a0
	inc  b                                           ; $5cff: $04
	daa                                              ; $5d00: $27
	inc  b                                           ; $5d01: $04
	and  b                                           ; $5d02: $a0
	ld   b, $27                                      ; $5d03: $06 $27
	inc  b                                           ; $5d05: $04
	and  b                                           ; $5d06: $a0
	inc  b                                           ; $5d07: $04
	dec  hl                                          ; $5d08: $2b
	inc  b                                           ; $5d09: $04
	add  hl, hl                                      ; $5d0a: $29

jr_0fd_5d0b:
	inc  b                                           ; $5d0b: $04
	dec  hl                                          ; $5d0c: $2b
	inc  b                                           ; $5d0d: $04
	add  hl, hl                                      ; $5d0e: $29
	inc  b                                           ; $5d0f: $04
	dec  hl                                          ; $5d10: $2b
	inc  b                                           ; $5d11: $04
	daa                                              ; $5d12: $27
	inc  b                                           ; $5d13: $04
	and  b                                           ; $5d14: $a0
	inc  b                                           ; $5d15: $04
	daa                                              ; $5d16: $27
	inc  b                                           ; $5d17: $04
	and  b                                           ; $5d18: $a0
	ld   b, $27                                      ; $5d19: $06 $27
	inc  b                                           ; $5d1b: $04
	and  b                                           ; $5d1c: $a0
	inc  b                                           ; $5d1d: $04
	dec  hl                                          ; $5d1e: $2b
	inc  b                                           ; $5d1f: $04
	add  hl, hl                                      ; $5d20: $29
	inc  b                                           ; $5d21: $04
	dec  hl                                          ; $5d22: $2b
	inc  b                                           ; $5d23: $04
	add  hl, hl                                      ; $5d24: $29
	inc  b                                           ; $5d25: $04
	dec  hl                                          ; $5d26: $2b
	inc  b                                           ; $5d27: $04
	daa                                              ; $5d28: $27
	inc  b                                           ; $5d29: $04
	and  b                                           ; $5d2a: $a0
	inc  b                                           ; $5d2b: $04
	daa                                              ; $5d2c: $27
	inc  b                                           ; $5d2d: $04
	and  b                                           ; $5d2e: $a0
	ld   b, $27                                      ; $5d2f: $06 $27

jr_0fd_5d31:
	inc  b                                           ; $5d31: $04
	and  b                                           ; $5d32: $a0
	inc  b                                           ; $5d33: $04
	dec  hl                                          ; $5d34: $2b
	inc  b                                           ; $5d35: $04
	add  hl, hl                                      ; $5d36: $29
	inc  b                                           ; $5d37: $04
	dec  hl                                          ; $5d38: $2b
	inc  b                                           ; $5d39: $04
	add  hl, hl                                      ; $5d3a: $29
	inc  b                                           ; $5d3b: $04
	dec  hl                                          ; $5d3c: $2b
	inc  b                                           ; $5d3d: $04
	daa                                              ; $5d3e: $27
	inc  b                                           ; $5d3f: $04
	and  b                                           ; $5d40: $a0
	inc  b                                           ; $5d41: $04
	jr   nc, jr_0fd_5d5c                             ; $5d42: $30 $18

	and  b                                           ; $5d44: $a0
	ld   b, $30                                      ; $5d45: $06 $30
	ld   [$04a0], sp                                 ; $5d47: $08 $a0 $04
	ld   sp, $a018                                   ; $5d4a: $31 $18 $a0
	ld   b, $31                                      ; $5d4d: $06 $31
	ld   [$04a0], sp                                 ; $5d4f: $08 $a0 $04
	add  hl, hl                                      ; $5d52: $29
	ld   b, $27                                      ; $5d53: $06 $27
	dec  b                                           ; $5d55: $05
	inc  hl                                          ; $5d56: $23
	dec  b                                           ; $5d57: $05
	jr   nz, @+$08                                   ; $5d58: $20 $06

	dec  de                                          ; $5d5a: $1b
	dec  b                                           ; $5d5b: $05

jr_0fd_5d5c:
	ld   a, [de]                                     ; $5d5c: $1a
	dec  b                                           ; $5d5d: $05
	add  hl, de                                      ; $5d5e: $19
	ld   [$0816], sp                                 ; $5d5f: $08 $16 $08
	inc  d                                           ; $5d62: $14
	ld   [$0812], sp                                 ; $5d63: $08 $12 $08
	and  b                                           ; $5d66: $a0
	inc  b                                           ; $5d67: $04
	rla                                              ; $5d68: $17
	jr   jr_0fd_5d0b                                 ; $5d69: $18 $a0

	ld   b, $17                                      ; $5d6b: $06 $17
	ld   [$04a0], sp                                 ; $5d6d: $08 $a0 $04
	rla                                              ; $5d70: $17
	ld   [$0819], sp                                 ; $5d71: $08 $19 $08
	dec  de                                          ; $5d74: $1b
	ld   [$0823], sp                                 ; $5d75: $08 $23 $08
	inc  h                                           ; $5d78: $24
	db   $10                                         ; $5d79: $10
	inc  h                                           ; $5d7a: $24
	ld   b, $27                                      ; $5d7b: $06 $27
	dec  b                                           ; $5d7d: $05
	dec  hl                                          ; $5d7e: $2b
	dec  b                                           ; $5d7f: $05
	ld   sp, $3408                                   ; $5d80: $31 $08 $34
	ld   [$0837], sp                                 ; $5d83: $08 $37 $08
	ld   a, [hl-]                                    ; $5d86: $3a
	ld   [$202b], sp                                 ; $5d87: $08 $2b $20
	add  hl, hl                                      ; $5d8a: $29
	db   $10                                         ; $5d8b: $10
	ld   [hl+], a                                    ; $5d8c: $22
	db   $10                                         ; $5d8d: $10
	rla                                              ; $5d8e: $17
	jr   nz, jr_0fd_5d31                             ; $5d8f: $20 $a0

	ld   b, $17                                      ; $5d91: $06 $17
	db   $10                                         ; $5d93: $10
	rla                                              ; $5d94: $17
	db   $10                                         ; $5d95: $10
	or   b                                           ; $5d96: $b0
	di                                               ; $5d97: $f3
	rst  $38                                         ; $5d98: $ff
	rst  $38                                         ; $5d99: $ff
	ld   a, [bc]                                     ; $5d9a: $0a
	nop                                              ; $5d9b: $00
	add  hl, bc                                      ; $5d9c: $09
	nop                                              ; $5d9d: $00
	rst  $38                                         ; $5d9e: $ff
	rst  $38                                         ; $5d9f: $ff
	inc  b                                           ; $5da0: $04
	nop                                              ; $5da1: $00
	add  hl, bc                                      ; $5da2: $09
	nop                                              ; $5da3: $00

jr_0fd_5da4:
	rra                                              ; $5da4: $1f
	jr   z, jr_0fd_5da4                              ; $5da5: $28 $fd

	di                                               ; $5da7: $f3
	and  d                                           ; $5da8: $a2
	nop                                              ; $5da9: $00
	rst  ToBoot                                         ; $5daa: $c7
	jr   nc, @-$5b                                   ; $5dab: $30 $a3

	ld   h, $1f                                      ; $5dad: $26 $1f
	ld   [$09a0], sp                                 ; $5daf: $08 $a0 $09
	ld   [hl+], a                                    ; $5db2: $22
	ld   [$0820], sp                                 ; $5db3: $08 $20 $08
	ld   [hl+], a                                    ; $5db6: $22
	ld   [$021b], sp                                 ; $5db7: $08 $1b $02
	jr   nz, @+$08                                   ; $5dba: $20 $06

	dec  de                                          ; $5dbc: $1b
	ld   [$0819], sp                                 ; $5dbd: $08 $19 $08
	rla                                              ; $5dc0: $17
	ld   [$0820], sp                                 ; $5dc1: $08 $20 $08
	ld   [hl+], a                                    ; $5dc4: $22
	ld   [$021b], sp                                 ; $5dc5: $08 $1b $02
	jr   nz, @+$08                                   ; $5dc8: $20 $06

	dec  de                                          ; $5dca: $1b
	ld   [$0819], sp                                 ; $5dcb: $08 $19 $08
	rla                                              ; $5dce: $17
	ld   [$03a0], sp                                 ; $5dcf: $08 $a0 $03
	rla                                              ; $5dd2: $17
	ld   [$101f], sp                                 ; $5dd3: $08 $1f $10
	and  b                                           ; $5dd6: $a0
	add  hl, bc                                      ; $5dd7: $09
	ld   [hl+], a                                    ; $5dd8: $22
	ld   [$0820], sp                                 ; $5dd9: $08 $20 $08
	ld   [hl+], a                                    ; $5ddc: $22
	ld   [$021b], sp                                 ; $5ddd: $08 $1b $02
	jr   nz, jr_0fd_5de8                             ; $5de0: $20 $06

	dec  de                                          ; $5de2: $1b
	ld   [$0819], sp                                 ; $5de3: $08 $19 $08
	add  hl, de                                      ; $5de6: $19
	db   $10                                         ; $5de7: $10

jr_0fd_5de8:
	dec  de                                          ; $5de8: $1b
	ld   [$0820], sp                                 ; $5de9: $08 $20 $08
	dec  de                                          ; $5dec: $1b
	ld   b, b                                        ; $5ded: $40
	and  b                                           ; $5dee: $a0
	inc  bc                                          ; $5def: $03
	dec  de                                          ; $5df0: $1b
	ld   [$09a0], sp                                 ; $5df1: $08 $a0 $09
	ld   a, [de]                                     ; $5df4: $1a
	db   $10                                         ; $5df5: $10
	ld   a, [de]                                     ; $5df6: $1a
	ld   [$101a], sp                                 ; $5df7: $08 $1a $10
	ld   a, [de]                                     ; $5dfa: $1a
	ld   [$081a], sp                                 ; $5dfb: $08 $1a $08
	and  b                                           ; $5dfe: $a0
	inc  bc                                          ; $5dff: $03
	ld   a, [de]                                     ; $5e00: $1a
	ld   [$09a0], sp                                 ; $5e01: $08 $a0 $09
	rla                                              ; $5e04: $17
	db   $10                                         ; $5e05: $10
	rla                                              ; $5e06: $17
	ld   [$1017], sp                                 ; $5e07: $08 $17 $10
	rla                                              ; $5e0a: $17
	ld   [$0817], sp                                 ; $5e0b: $08 $17 $08
	and  b                                           ; $5e0e: $a0
	inc  bc                                          ; $5e0f: $03
	rla                                              ; $5e10: $17
	ld   [$09a0], sp                                 ; $5e11: $08 $a0 $09
	add  hl, de                                      ; $5e14: $19
	db   $10                                         ; $5e15: $10
	add  hl, de                                      ; $5e16: $19
	ld   [$1019], sp                                 ; $5e17: $08 $19 $10
	add  hl, de                                      ; $5e1a: $19
	ld   [$0819], sp                                 ; $5e1b: $08 $19 $08
	and  b                                           ; $5e1e: $a0
	inc  bc                                          ; $5e1f: $03
	add  hl, de                                      ; $5e20: $19
	ld   [$09a0], sp                                 ; $5e21: $08 $a0 $09
	dec  d                                           ; $5e24: $15
	db   $10                                         ; $5e25: $10
	dec  d                                           ; $5e26: $15
	ld   [$1015], sp                                 ; $5e27: $08 $15 $10
	dec  d                                           ; $5e2a: $15
	ld   [$0815], sp                                 ; $5e2b: $08 $15 $08
	and  b                                           ; $5e2e: $a0
	inc  bc                                          ; $5e2f: $03
	dec  d                                           ; $5e30: $15
	ld   [$09a0], sp                                 ; $5e31: $08 $a0 $09
	rla                                              ; $5e34: $17
	db   $10                                         ; $5e35: $10
	rla                                              ; $5e36: $17
	ld   [$1017], sp                                 ; $5e37: $08 $17 $10
	rla                                              ; $5e3a: $17
	ld   [$0817], sp                                 ; $5e3b: $08 $17 $08
	and  b                                           ; $5e3e: $a0
	inc  bc                                          ; $5e3f: $03
	rla                                              ; $5e40: $17
	ld   [$09a0], sp                                 ; $5e41: $08 $a0 $09
	rla                                              ; $5e44: $17
	db   $10                                         ; $5e45: $10
	rla                                              ; $5e46: $17
	ld   [$1017], sp                                 ; $5e47: $08 $17 $10
	rla                                              ; $5e4a: $17
	ld   [$0817], sp                                 ; $5e4b: $08 $17 $08
	and  b                                           ; $5e4e: $a0
	inc  bc                                          ; $5e4f: $03
	rla                                              ; $5e50: $17
	ld   [$09a0], sp                                 ; $5e51: $08 $a0 $09
	rla                                              ; $5e54: $17
	db   $10                                         ; $5e55: $10
	rla                                              ; $5e56: $17
	ld   [$1017], sp                                 ; $5e57: $08 $17 $10
	rla                                              ; $5e5a: $17
	ld   [$0817], sp                                 ; $5e5b: $08 $17 $08
	and  b                                           ; $5e5e: $a0
	inc  bc                                          ; $5e5f: $03
	rla                                              ; $5e60: $17
	ld   [$09a0], sp                                 ; $5e61: $08 $a0 $09
	add  hl, de                                      ; $5e64: $19
	db   $10                                         ; $5e65: $10
	add  hl, de                                      ; $5e66: $19
	ld   [$1019], sp                                 ; $5e67: $08 $19 $10
	add  hl, de                                      ; $5e6a: $19
	ld   [$0819], sp                                 ; $5e6b: $08 $19 $08
	and  b                                           ; $5e6e: $a0
	inc  bc                                          ; $5e6f: $03
	add  hl, de                                      ; $5e70: $19
	ld   [$09a0], sp                                 ; $5e71: $08 $a0 $09
	ld   [hl+], a                                    ; $5e74: $22
	db   $10                                         ; $5e75: $10
	ld   [hl+], a                                    ; $5e76: $22
	ld   [$1022], sp                                 ; $5e77: $08 $22 $10
	ld   a, [de]                                     ; $5e7a: $1a
	ld   [$081a], sp                                 ; $5e7b: $08 $1a $08
	and  b                                           ; $5e7e: $a0
	inc  bc                                          ; $5e7f: $03
	ld   a, [de]                                     ; $5e80: $1a
	ld   [$09a0], sp                                 ; $5e81: $08 $a0 $09
	ld   [hl+], a                                    ; $5e84: $22
	db   $10                                         ; $5e85: $10
	ld   [hl+], a                                    ; $5e86: $22
	ld   [$1022], sp                                 ; $5e87: $08 $22 $10
	ld   a, [de]                                     ; $5e8a: $1a
	ld   [$081a], sp                                 ; $5e8b: $08 $1a $08
	and  b                                           ; $5e8e: $a0
	inc  bc                                          ; $5e8f: $03
	ld   a, [de]                                     ; $5e90: $1a
	ld   [$09a0], sp                                 ; $5e91: $08 $a0 $09
	ld   [hl+], a                                    ; $5e94: $22
	db   $10                                         ; $5e95: $10
	ld   [hl+], a                                    ; $5e96: $22
	ld   [$0822], sp                                 ; $5e97: $08 $22 $08
	and  b                                           ; $5e9a: $a0
	inc  bc                                          ; $5e9b: $03
	ld   a, [de]                                     ; $5e9c: $1a
	ld   [$09a0], sp                                 ; $5e9d: $08 $a0 $09
	ld   a, [de]                                     ; $5ea0: $1a
	ld   [$081a], sp                                 ; $5ea1: $08 $1a $08
	and  b                                           ; $5ea4: $a0
	inc  bc                                          ; $5ea5: $03
	ld   a, [de]                                     ; $5ea6: $1a
	ld   [$09a0], sp                                 ; $5ea7: $08 $a0 $09
	ld   [hl+], a                                    ; $5eaa: $22
	db   $10                                         ; $5eab: $10
	ld   [hl+], a                                    ; $5eac: $22
	ld   [$1022], sp                                 ; $5ead: $08 $22 $10
	ld   a, [de]                                     ; $5eb0: $1a
	ld   [$081a], sp                                 ; $5eb1: $08 $1a $08
	and  b                                           ; $5eb4: $a0
	inc  bc                                          ; $5eb5: $03
	ld   a, [de]                                     ; $5eb6: $1a
	ld   [$09a0], sp                                 ; $5eb7: $08 $a0 $09
	ld   a, [de]                                     ; $5eba: $1a
	db   $10                                         ; $5ebb: $10
	ld   a, [de]                                     ; $5ebc: $1a
	ld   [$101a], sp                                 ; $5ebd: $08 $1a $10
	ld   a, [de]                                     ; $5ec0: $1a
	ld   [$081a], sp                                 ; $5ec1: $08 $1a $08
	and  b                                           ; $5ec4: $a0
	inc  bc                                          ; $5ec5: $03
	ld   a, [de]                                     ; $5ec6: $1a
	ld   [$09a0], sp                                 ; $5ec7: $08 $a0 $09
	rla                                              ; $5eca: $17
	db   $10                                         ; $5ecb: $10
	rla                                              ; $5ecc: $17
	ld   [$1017], sp                                 ; $5ecd: $08 $17 $10
	rla                                              ; $5ed0: $17
	ld   [$0817], sp                                 ; $5ed1: $08 $17 $08
	and  b                                           ; $5ed4: $a0
	inc  bc                                          ; $5ed5: $03
	rla                                              ; $5ed6: $17
	ld   [$09a0], sp                                 ; $5ed7: $08 $a0 $09
	add  hl, de                                      ; $5eda: $19
	db   $10                                         ; $5edb: $10
	add  hl, de                                      ; $5edc: $19
	ld   [$1019], sp                                 ; $5edd: $08 $19 $10
	add  hl, de                                      ; $5ee0: $19
	ld   [$0819], sp                                 ; $5ee1: $08 $19 $08
	and  b                                           ; $5ee4: $a0
	inc  bc                                          ; $5ee5: $03
	add  hl, de                                      ; $5ee6: $19
	ld   [$09a0], sp                                 ; $5ee7: $08 $a0 $09
	add  hl, de                                      ; $5eea: $19
	db   $10                                         ; $5eeb: $10
	add  hl, de                                      ; $5eec: $19
	ld   [$1019], sp                                 ; $5eed: $08 $19 $10
	add  hl, de                                      ; $5ef0: $19
	ld   [$0819], sp                                 ; $5ef1: $08 $19 $08
	and  b                                           ; $5ef4: $a0
	inc  bc                                          ; $5ef5: $03
	add  hl, de                                      ; $5ef6: $19
	ld   [$09a0], sp                                 ; $5ef7: $08 $a0 $09
	add  hl, de                                      ; $5efa: $19
	db   $10                                         ; $5efb: $10
	add  hl, de                                      ; $5efc: $19
	ld   [$1019], sp                                 ; $5efd: $08 $19 $10
	add  hl, de                                      ; $5f00: $19
	ld   [$0819], sp                                 ; $5f01: $08 $19 $08
	and  b                                           ; $5f04: $a0
	inc  bc                                          ; $5f05: $03
	add  hl, de                                      ; $5f06: $19
	ld   [$09a0], sp                                 ; $5f07: $08 $a0 $09
	ld   [hl+], a                                    ; $5f0a: $22
	ld   c, $a0                                      ; $5f0b: $0e $a0
	inc  bc                                          ; $5f0d: $03
	ld   [hl+], a                                    ; $5f0e: $22
	ld   [bc], a                                     ; $5f0f: $02
	and  b                                           ; $5f10: $a0
	add  hl, bc                                      ; $5f11: $09
	ld   [hl+], a                                    ; $5f12: $22
	ld   b, $a0                                      ; $5f13: $06 $a0
	inc  bc                                          ; $5f15: $03
	ld   [hl+], a                                    ; $5f16: $22
	ld   [bc], a                                     ; $5f17: $02
	and  b                                           ; $5f18: $a0
	add  hl, bc                                      ; $5f19: $09
	ld   [hl+], a                                    ; $5f1a: $22
	ld   c, $a0                                      ; $5f1b: $0e $a0
	inc  bc                                          ; $5f1d: $03
	ld   [hl+], a                                    ; $5f1e: $22
	ld   [bc], a                                     ; $5f1f: $02
	and  b                                           ; $5f20: $a0
	add  hl, bc                                      ; $5f21: $09
	ld   [hl+], a                                    ; $5f22: $22
	ld   c, $a0                                      ; $5f23: $0e $a0
	inc  bc                                          ; $5f25: $03
	ld   [hl+], a                                    ; $5f26: $22
	ld   [bc], a                                     ; $5f27: $02
	and  b                                           ; $5f28: $a0
	add  hl, bc                                      ; $5f29: $09
	ld   [hl+], a                                    ; $5f2a: $22
	ld   [$0e26], sp                                 ; $5f2b: $08 $26 $0e
	and  b                                           ; $5f2e: $a0
	inc  bc                                          ; $5f2f: $03
	ld   h, $02                                      ; $5f30: $26 $02
	and  b                                           ; $5f32: $a0
	add  hl, bc                                      ; $5f33: $09
	ld   h, $06                                      ; $5f34: $26 $06
	and  b                                           ; $5f36: $a0
	inc  bc                                          ; $5f37: $03
	ld   h, $02                                      ; $5f38: $26 $02
	and  b                                           ; $5f3a: $a0
	add  hl, bc                                      ; $5f3b: $09
	ld   h, $0e                                      ; $5f3c: $26 $0e
	and  b                                           ; $5f3e: $a0
	inc  bc                                          ; $5f3f: $03
	ld   h, $02                                      ; $5f40: $26 $02
	and  b                                           ; $5f42: $a0
	add  hl, bc                                      ; $5f43: $09
	ld   h, $0e                                      ; $5f44: $26 $0e
	and  b                                           ; $5f46: $a0
	inc  bc                                          ; $5f47: $03
	ld   h, $02                                      ; $5f48: $26 $02
	and  b                                           ; $5f4a: $a0
	add  hl, bc                                      ; $5f4b: $09
	ld   h, $08                                      ; $5f4c: $26 $08
	add  hl, hl                                      ; $5f4e: $29
	ld   c, $a0                                      ; $5f4f: $0e $a0
	inc  bc                                          ; $5f51: $03
	add  hl, hl                                      ; $5f52: $29
	ld   [bc], a                                     ; $5f53: $02
	and  b                                           ; $5f54: $a0
	add  hl, bc                                      ; $5f55: $09
	add  hl, hl                                      ; $5f56: $29
	ld   b, $a0                                      ; $5f57: $06 $a0
	inc  bc                                          ; $5f59: $03
	add  hl, hl                                      ; $5f5a: $29
	ld   [bc], a                                     ; $5f5b: $02
	and  b                                           ; $5f5c: $a0
	add  hl, bc                                      ; $5f5d: $09
	add  hl, hl                                      ; $5f5e: $29
	ld   c, $a0                                      ; $5f5f: $0e $a0
	inc  bc                                          ; $5f61: $03
	add  hl, hl                                      ; $5f62: $29

jr_0fd_5f63:
	ld   [bc], a                                     ; $5f63: $02
	and  b                                           ; $5f64: $a0
	add  hl, bc                                      ; $5f65: $09
	add  hl, hl                                      ; $5f66: $29
	ld   c, $a0                                      ; $5f67: $0e $a0
	inc  bc                                          ; $5f69: $03
	add  hl, hl                                      ; $5f6a: $29
	ld   [bc], a                                     ; $5f6b: $02
	and  b                                           ; $5f6c: $a0
	add  hl, bc                                      ; $5f6d: $09
	add  hl, hl                                      ; $5f6e: $29
	ld   [$1029], sp                                 ; $5f6f: $08 $29 $10
	add  hl, hl                                      ; $5f72: $29
	db   $10                                         ; $5f73: $10
	add  hl, hl                                      ; $5f74: $29
	db   $10                                         ; $5f75: $10
	add  hl, hl                                      ; $5f76: $29
	db   $10                                         ; $5f77: $10
	add  hl, hl                                      ; $5f78: $29
	ld   [$0829], sp                                 ; $5f79: $08 $29 $08
	add  hl, hl                                      ; $5f7c: $29
	ld   [$0829], sp                                 ; $5f7d: $08 $29 $08
	add  hl, hl                                      ; $5f80: $29
	ld   [$0429], sp                                 ; $5f81: $08 $29 $04
	add  hl, hl                                      ; $5f84: $29
	inc  b                                           ; $5f85: $04
	add  hl, hl                                      ; $5f86: $29
	inc  b                                           ; $5f87: $04
	add  hl, hl                                      ; $5f88: $29
	inc  b                                           ; $5f89: $04
	add  hl, hl                                      ; $5f8a: $29
	inc  b                                           ; $5f8b: $04
	add  hl, hl                                      ; $5f8c: $29
	inc  b                                           ; $5f8d: $04
	dec  de                                          ; $5f8e: $1b
	inc  b                                           ; $5f8f: $04
	and  b                                           ; $5f90: $a0
	inc  bc                                          ; $5f91: $03
	dec  de                                          ; $5f92: $1b
	inc  b                                           ; $5f93: $04
	and  b                                           ; $5f94: $a0
	add  hl, bc                                      ; $5f95: $09
	dec  de                                          ; $5f96: $1b
	ld   [$0819], sp                                 ; $5f97: $08 $19 $08
	rla                                              ; $5f9a: $17
	ld   [$081b], sp                                 ; $5f9b: $08 $1b $08
	and  b                                           ; $5f9e: $a0
	inc  bc                                          ; $5f9f: $03
	dec  de                                          ; $5fa0: $1b
	ld   [$09a0], sp                                 ; $5fa1: $08 $a0 $09
	dec  de                                          ; $5fa4: $1b
	inc  b                                           ; $5fa5: $04
	and  b                                           ; $5fa6: $a0
	inc  bc                                          ; $5fa7: $03
	dec  de                                          ; $5fa8: $1b
	inc  b                                           ; $5fa9: $04
	and  b                                           ; $5faa: $a0
	add  hl, bc                                      ; $5fab: $09
	dec  de                                          ; $5fac: $1b
	ld   [$0819], sp                                 ; $5fad: $08 $19 $08
	rla                                              ; $5fb0: $17
	ld   [$081b], sp                                 ; $5fb1: $08 $1b $08
	and  b                                           ; $5fb4: $a0
	inc  bc                                          ; $5fb5: $03
	dec  de                                          ; $5fb6: $1b
	ld   [$09a0], sp                                 ; $5fb7: $08 $a0 $09
	dec  de                                          ; $5fba: $1b
	ld   [$1020], sp                                 ; $5fbb: $08 $20 $10
	ld   [hl+], a                                    ; $5fbe: $22
	ld   c, b                                        ; $5fbf: $48
	dec  de                                          ; $5fc0: $1b
	jr   nc, jr_0fd_5f63                             ; $5fc1: $30 $a0

	inc  bc                                          ; $5fc3: $03
	dec  de                                          ; $5fc4: $1b
	db   $10                                         ; $5fc5: $10
	and  b                                           ; $5fc6: $a0
	add  hl, bc                                      ; $5fc7: $09
	jr   nz, jr_0fd_5fce                             ; $5fc8: $20 $04

	and  b                                           ; $5fca: $a0
	inc  bc                                          ; $5fcb: $03
	jr   nz, jr_0fd_5fd2                             ; $5fcc: $20 $04

jr_0fd_5fce:
	and  b                                           ; $5fce: $a0
	add  hl, bc                                      ; $5fcf: $09
	jr   nz, jr_0fd_5fda                             ; $5fd0: $20 $08

jr_0fd_5fd2:
	rla                                              ; $5fd2: $17
	ld   [$0819], sp                                 ; $5fd3: $08 $19 $08
	jr   nz, jr_0fd_5fdc                             ; $5fd6: $20 $04

	and  b                                           ; $5fd8: $a0
	inc  bc                                          ; $5fd9: $03

jr_0fd_5fda:
	jr   nz, jr_0fd_5fe0                             ; $5fda: $20 $04

jr_0fd_5fdc:
	jr   nz, jr_0fd_5fe6                             ; $5fdc: $20 $08

	and  b                                           ; $5fde: $a0
	add  hl, bc                                      ; $5fdf: $09

jr_0fd_5fe0:
	rla                                              ; $5fe0: $17
	ld   [$0c24], sp                                 ; $5fe1: $08 $24 $0c
	and  b                                           ; $5fe4: $a0
	inc  bc                                          ; $5fe5: $03

jr_0fd_5fe6:
	inc  h                                           ; $5fe6: $24
	inc  b                                           ; $5fe7: $04
	and  b                                           ; $5fe8: $a0
	add  hl, bc                                      ; $5fe9: $09
	inc  h                                           ; $5fea: $24
	inc  b                                           ; $5feb: $04
	and  b                                           ; $5fec: $a0
	inc  bc                                          ; $5fed: $03
	inc  h                                           ; $5fee: $24
	inc  b                                           ; $5fef: $04
	and  b                                           ; $5ff0: $a0
	add  hl, bc                                      ; $5ff1: $09
	inc  h                                           ; $5ff2: $24

jr_0fd_5ff3:
	inc  b                                           ; $5ff3: $04
	and  b                                           ; $5ff4: $a0
	inc  bc                                          ; $5ff5: $03
	inc  h                                           ; $5ff6: $24
	inc  b                                           ; $5ff7: $04
	and  b                                           ; $5ff8: $a0
	add  hl, bc                                      ; $5ff9: $09
	inc  h                                           ; $5ffa: $24
	ld   [$0827], sp                                 ; $5ffb: $08 $27 $08
	ld   hl, $2710                                   ; $5ffe: $21 $10 $27
	ld   c, b                                        ; $6001: $48
	ld   h, $18                                      ; $6002: $26 $18
	daa                                              ; $6004: $27
	jr   jr_0fd_6030                                 ; $6005: $18 $29

	db   $10                                         ; $6007: $10
	dec  de                                          ; $6008: $1b
	inc  b                                           ; $6009: $04
	and  b                                           ; $600a: $a0
	inc  bc                                          ; $600b: $03
	dec  de                                          ; $600c: $1b
	inc  b                                           ; $600d: $04
	and  b                                           ; $600e: $a0
	add  hl, bc                                      ; $600f: $09
	dec  de                                          ; $6010: $1b
	ld   [$0819], sp                                 ; $6011: $08 $19 $08
	rla                                              ; $6014: $17
	ld   [$081b], sp                                 ; $6015: $08 $1b $08
	and  b                                           ; $6018: $a0
	inc  bc                                          ; $6019: $03
	dec  de                                          ; $601a: $1b
	ld   [$09a0], sp                                 ; $601b: $08 $a0 $09
	dec  de                                          ; $601e: $1b
	inc  b                                           ; $601f: $04
	and  b                                           ; $6020: $a0
	inc  bc                                          ; $6021: $03
	dec  de                                          ; $6022: $1b
	inc  b                                           ; $6023: $04
	and  b                                           ; $6024: $a0
	add  hl, bc                                      ; $6025: $09
	dec  de                                          ; $6026: $1b
	ld   [$0819], sp                                 ; $6027: $08 $19 $08
	rla                                              ; $602a: $17
	ld   [$081b], sp                                 ; $602b: $08 $1b $08
	and  b                                           ; $602e: $a0
	inc  bc                                          ; $602f: $03

jr_0fd_6030:
	dec  de                                          ; $6030: $1b
	ld   [$09a0], sp                                 ; $6031: $08 $a0 $09
	dec  de                                          ; $6034: $1b
	ld   [$1020], sp                                 ; $6035: $08 $20 $10
	inc  hl                                          ; $6038: $23
	jr   nz, @-$5e                                   ; $6039: $20 $a0

	inc  bc                                          ; $603b: $03
	inc  hl                                          ; $603c: $23
	ld   [$09a0], sp                                 ; $603d: $08 $a0 $09
	inc  hl                                          ; $6040: $23
	inc  b                                           ; $6041: $04
	and  b                                           ; $6042: $a0
	inc  bc                                          ; $6043: $03
	inc  hl                                          ; $6044: $23
	inc  b                                           ; $6045: $04
	and  b                                           ; $6046: $a0
	add  hl, bc                                      ; $6047: $09
	inc  hl                                          ; $6048: $23
	ld   [$0826], sp                                 ; $6049: $08 $26 $08
	daa                                              ; $604c: $27
	db   $10                                         ; $604d: $10
	ld   h, $08                                      ; $604e: $26 $08
	inc  h                                           ; $6050: $24
	jr   z, jr_0fd_5ff3                              ; $6051: $28 $a0

	inc  bc                                          ; $6053: $03
	inc  h                                           ; $6054: $24
	ld   [$09a0], sp                                 ; $6055: $08 $a0 $09
	inc  h                                           ; $6058: $24
	ld   b, $a0                                      ; $6059: $06 $a0
	inc  bc                                          ; $605b: $03
	inc  h                                           ; $605c: $24
	ld   [bc], a                                     ; $605d: $02
	and  b                                           ; $605e: $a0
	add  hl, bc                                      ; $605f: $09
	inc  h                                           ; $6060: $24
	ld   b, $a0                                      ; $6061: $06 $a0
	inc  bc                                          ; $6063: $03
	inc  h                                           ; $6064: $24
	ld   [bc], a                                     ; $6065: $02
	and  b                                           ; $6066: $a0
	add  hl, bc                                      ; $6067: $09
	inc  h                                           ; $6068: $24
	ld   b, $a0                                      ; $6069: $06 $a0
	inc  bc                                          ; $606b: $03
	inc  h                                           ; $606c: $24
	ld   [bc], a                                     ; $606d: $02
	and  b                                           ; $606e: $a0
	add  hl, bc                                      ; $606f: $09
	inc  h                                           ; $6070: $24
	ld   [$0822], sp                                 ; $6071: $08 $22 $08
	jr   nz, jr_0fd_607e                             ; $6074: $20 $08

	and  b                                           ; $6076: $a0
	inc  bc                                          ; $6077: $03
	jr   nz, jr_0fd_6082                             ; $6078: $20 $08

	and  b                                           ; $607a: $a0
	add  hl, bc                                      ; $607b: $09
	jr   nz, @+$3a                                   ; $607c: $20 $38

jr_0fd_607e:
	and  b                                           ; $607e: $a0
	inc  bc                                          ; $607f: $03
	jr   nz, @+$12                                   ; $6080: $20 $10

jr_0fd_6082:
	and  b                                           ; $6082: $a0
	add  hl, bc                                      ; $6083: $09
	inc  h                                           ; $6084: $24
	inc  b                                           ; $6085: $04
	and  b                                           ; $6086: $a0
	inc  bc                                          ; $6087: $03
	inc  h                                           ; $6088: $24
	inc  b                                           ; $6089: $04
	and  b                                           ; $608a: $a0
	add  hl, bc                                      ; $608b: $09
	inc  h                                           ; $608c: $24
	ld   [$0817], sp                                 ; $608d: $08 $17 $08
	add  hl, de                                      ; $6090: $19
	ld   [$0824], sp                                 ; $6091: $08 $24 $08
	inc  h                                           ; $6094: $24
	ld   [$03a0], sp                                 ; $6095: $08 $a0 $03
	inc  h                                           ; $6098: $24
	ld   [$09a0], sp                                 ; $6099: $08 $a0 $09
	dec  h                                           ; $609c: $25
	jr   c, @-$5e                                    ; $609d: $38 $a0

	inc  bc                                          ; $609f: $03
	dec  h                                           ; $60a0: $25
	db   $10                                         ; $60a1: $10
	or   b                                           ; $60a2: $b0
	di                                               ; $60a3: $f3
	rst  $38                                         ; $60a4: $ff
	rst  $38                                         ; $60a5: $ff
	inc  b                                           ; $60a6: $04
	nop                                              ; $60a7: $00
	add  hl, bc                                      ; $60a8: $09
	nop                                              ; $60a9: $00

jr_0fd_60aa:
	rra                                              ; $60aa: $1f
	jr   z, jr_0fd_60aa                              ; $60ab: $28 $fd

	di                                               ; $60ad: $f3
	and  d                                           ; $60ae: $a2
	ld   [bc], a                                     ; $60af: $02
	rst  ToBoot                                         ; $60b0: $c7
	ld   h, b                                        ; $60b1: $60
	and  e                                           ; $60b2: $a3
	ld   h, $1f                                      ; $60b3: $26 $1f
	ld   [$0aa0], sp                                 ; $60b5: $08 $a0 $0a
	ld   [hl-], a                                    ; $60b8: $32
	ld   [$0830], sp                                 ; $60b9: $08 $30 $08
	ld   [hl-], a                                    ; $60bc: $32
	ld   [$022b], sp                                 ; $60bd: $08 $2b $02
	jr   nc, @+$08                                   ; $60c0: $30 $06

	dec  hl                                          ; $60c2: $2b
	ld   [$0829], sp                                 ; $60c3: $08 $29 $08
	daa                                              ; $60c6: $27
	ld   [$0830], sp                                 ; $60c7: $08 $30 $08
	ld   [hl-], a                                    ; $60ca: $32
	ld   [$022b], sp                                 ; $60cb: $08 $2b $02
	jr   nc, @+$08                                   ; $60ce: $30 $06

	dec  hl                                          ; $60d0: $2b
	ld   [$0829], sp                                 ; $60d1: $08 $29 $08
	daa                                              ; $60d4: $27
	ld   [$03a0], sp                                 ; $60d5: $08 $a0 $03
	daa                                              ; $60d8: $27
	ld   [$101f], sp                                 ; $60d9: $08 $1f $10
	and  b                                           ; $60dc: $a0
	ld   a, [bc]                                     ; $60dd: $0a
	ld   [hl-], a                                    ; $60de: $32
	ld   [$0830], sp                                 ; $60df: $08 $30 $08
	ld   [hl-], a                                    ; $60e2: $32
	ld   [$022b], sp                                 ; $60e3: $08 $2b $02
	jr   nc, jr_0fd_60ee                             ; $60e6: $30 $06

	dec  hl                                          ; $60e8: $2b
	ld   [$0829], sp                                 ; $60e9: $08 $29 $08
	dec  h                                           ; $60ec: $25
	db   $10                                         ; $60ed: $10

jr_0fd_60ee:
	daa                                              ; $60ee: $27
	ld   [$0829], sp                                 ; $60ef: $08 $29 $08
	daa                                              ; $60f2: $27
	ld   b, b                                        ; $60f3: $40
	and  b                                           ; $60f4: $a0

jr_0fd_60f5:
	inc  bc                                          ; $60f5: $03
	daa                                              ; $60f6: $27
	ld   [$0da0], sp                                 ; $60f7: $08 $a0 $0d
	ld   [hl+], a                                    ; $60fa: $22
	db   $10                                         ; $60fb: $10
	daa                                              ; $60fc: $27
	db   $10                                         ; $60fd: $10
	add  hl, hl                                      ; $60fe: $29
	db   $10                                         ; $60ff: $10
	ld   a, [hl+]                                    ; $6100: $2a
	ld   c, $a0                                      ; $6101: $0e $a0
	inc  bc                                          ; $6103: $03
	ld   a, [hl+]                                    ; $6104: $2a
	ld   [bc], a                                     ; $6105: $02
	and  b                                           ; $6106: $a0
	dec  c                                           ; $6107: $0d
	ld   a, [hl+]                                    ; $6108: $2a
	db   $10                                         ; $6109: $10
	add  hl, hl                                      ; $610a: $29
	ld   [$2023], sp                                 ; $610b: $08 $23 $20
	and  b                                           ; $610e: $a0
	inc  bc                                          ; $610f: $03
	inc  hl                                          ; $6110: $23
	ld   [$0da0], sp                                 ; $6111: $08 $a0 $0d
	add  hl, hl                                      ; $6114: $29
	db   $10                                         ; $6115: $10
	daa                                              ; $6116: $27
	db   $10                                         ; $6117: $10
	dec  h                                           ; $6118: $25
	db   $10                                         ; $6119: $10
	add  hl, hl                                      ; $611a: $29
	ld   [$3822], sp                                 ; $611b: $08 $22 $38
	and  b                                           ; $611e: $a0
	inc  bc                                          ; $611f: $03
	ld   [hl+], a                                    ; $6120: $22
	db   $10                                         ; $6121: $10
	and  b                                           ; $6122: $a0
	dec  c                                           ; $6123: $0d
	ld   a, [de]                                     ; $6124: $1a
	db   $10                                         ; $6125: $10
	inc  hl                                          ; $6126: $23
	db   $10                                         ; $6127: $10
	dec  h                                           ; $6128: $25
	db   $10                                         ; $6129: $10
	daa                                              ; $612a: $27
	db   $10                                         ; $612b: $10
	dec  h                                           ; $612c: $25
	db   $10                                         ; $612d: $10
	ld   [hl+], a                                    ; $612e: $22
	ld   [$201a], sp                                 ; $612f: $08 $1a $20
	and  b                                           ; $6132: $a0
	inc  bc                                          ; $6133: $03
	ld   a, [de]                                     ; $6134: $1a
	ld   [$0da0], sp                                 ; $6135: $08 $a0 $0d
	jr   nz, jr_0fd_6148                             ; $6138: $20 $0e

	and  b                                           ; $613a: $a0
	inc  bc                                          ; $613b: $03
	jr   nz, jr_0fd_6140                             ; $613c: $20 $02

	and  b                                           ; $613e: $a0
	dec  c                                           ; $613f: $0d

jr_0fd_6140:
	jr   nz, jr_0fd_6152                             ; $6140: $20 $10

	ld   a, [de]                                     ; $6142: $1a
	db   $10                                         ; $6143: $10
	ld   [hl+], a                                    ; $6144: $22
	ld   [$2820], sp                                 ; $6145: $08 $20 $28

jr_0fd_6148:
	and  b                                           ; $6148: $a0
	inc  bc                                          ; $6149: $03
	jr   nz, @+$12                                   ; $614a: $20 $10

	and  b                                           ; $614c: $a0
	dec  c                                           ; $614d: $0d
	ld   [hl+], a                                    ; $614e: $22
	ld   [$0823], sp                                 ; $614f: $08 $23 $08

jr_0fd_6152:
	dec  h                                           ; $6152: $25
	jr   z, jr_0fd_60f5                              ; $6153: $28 $a0

	inc  bc                                          ; $6155: $03
	dec  h                                           ; $6156: $25
	ld   [$0da0], sp                                 ; $6157: $08 $a0 $0d
	ld   [hl+], a                                    ; $615a: $22
	ld   [$0825], sp                                 ; $615b: $08 $25 $08
	ld   h, $28                                      ; $615e: $26 $28
	and  b                                           ; $6160: $a0
	inc  bc                                          ; $6161: $03
	ld   h, $08                                      ; $6162: $26 $08
	and  b                                           ; $6164: $a0
	dec  c                                           ; $6165: $0d
	ld   [hl+], a                                    ; $6166: $22
	ld   [$0826], sp                                 ; $6167: $08 $26 $08
	daa                                              ; $616a: $27
	ld   b, $a0                                      ; $616b: $06 $a0
	inc  bc                                          ; $616d: $03
	daa                                              ; $616e: $27
	ld   [bc], a                                     ; $616f: $02
	and  b                                           ; $6170: $a0
	dec  c                                           ; $6171: $0d
	daa                                              ; $6172: $27
	ld   b, $a0                                      ; $6173: $06 $a0
	inc  bc                                          ; $6175: $03
	daa                                              ; $6176: $27
	ld   [bc], a                                     ; $6177: $02
	and  b                                           ; $6178: $a0
	dec  c                                           ; $6179: $0d
	daa                                              ; $617a: $27
	ld   b, $a0                                      ; $617b: $06 $a0
	inc  bc                                          ; $617d: $03
	daa                                              ; $617e: $27
	ld   [bc], a                                     ; $617f: $02
	and  b                                           ; $6180: $a0
	dec  c                                           ; $6181: $0d
	daa                                              ; $6182: $27
	ld   [$0822], sp                                 ; $6183: $08 $22 $08
	daa                                              ; $6186: $27
	db   $10                                         ; $6187: $10
	jr   z, @+$3a                                    ; $6188: $28 $38

	and  b                                           ; $618a: $a0
	inc  bc                                          ; $618b: $03
	jr   z, jr_0fd_619e                              ; $618c: $28 $10

	and  b                                           ; $618e: $a0
	dec  c                                           ; $618f: $0d
	daa                                              ; $6190: $27
	ld   c, $a0                                      ; $6191: $0e $a0
	inc  bc                                          ; $6193: $03
	daa                                              ; $6194: $27
	ld   [bc], a                                     ; $6195: $02
	and  b                                           ; $6196: $a0
	dec  c                                           ; $6197: $0d
	daa                                              ; $6198: $27
	db   $10                                         ; $6199: $10
	add  hl, hl                                      ; $619a: $29
	ld   [$082a], sp                                 ; $619b: $08 $2a $08

jr_0fd_619e:
	and  b                                           ; $619e: $a0
	inc  bc                                          ; $619f: $03
	ld   a, [hl+]                                    ; $61a0: $2a
	ld   [$0da0], sp                                 ; $61a1: $08 $a0 $0d
	jr   nc, jr_0fd_61b4                             ; $61a4: $30 $0e

	and  b                                           ; $61a6: $a0
	inc  bc                                          ; $61a7: $03
	jr   nc, jr_0fd_61ac                             ; $61a8: $30 $02

	and  b                                           ; $61aa: $a0
	dec  c                                           ; $61ab: $0d

jr_0fd_61ac:
	jr   nc, jr_0fd_61bc                             ; $61ac: $30 $0e

	and  b                                           ; $61ae: $a0
	inc  bc                                          ; $61af: $03
	jr   nc, jr_0fd_61b4                             ; $61b0: $30 $02

	and  b                                           ; $61b2: $a0
	dec  c                                           ; $61b3: $0d

jr_0fd_61b4:
	jr   nc, @+$0a                                   ; $61b4: $30 $08

	ld   a, [hl+]                                    ; $61b6: $2a
	ld   [PopulateKanjiConvoStructForCurrTextBox], sp                                 ; $61b7: $08 $27 $10
	add  hl, hl                                      ; $61ba: $29
	ld   c, b                                        ; $61bb: $48

jr_0fd_61bc:
	ld   [hl+], a                                    ; $61bc: $22
	jr   c, @-$5e                                    ; $61bd: $38 $a0

	inc  bc                                          ; $61bf: $03
	ld   [hl+], a                                    ; $61c0: $22
	ld   [$0da0], sp                                 ; $61c1: $08 $a0 $0d
	ld   [hl+], a                                    ; $61c4: $22
	ld   c, $a0                                      ; $61c5: $0e $a0
	inc  bc                                          ; $61c7: $03
	ld   [hl+], a                                    ; $61c8: $22
	ld   [bc], a                                     ; $61c9: $02
	and  b                                           ; $61ca: $a0
	dec  c                                           ; $61cb: $0d
	ld   [hl+], a                                    ; $61cc: $22
	ld   b, $a0                                      ; $61cd: $06 $a0
	inc  bc                                          ; $61cf: $03
	ld   [hl+], a                                    ; $61d0: $22
	ld   [bc], a                                     ; $61d1: $02
	and  b                                           ; $61d2: $a0
	dec  c                                           ; $61d3: $0d
	ld   [hl+], a                                    ; $61d4: $22
	ld   c, $a0                                      ; $61d5: $0e $a0
	inc  bc                                          ; $61d7: $03
	ld   [hl+], a                                    ; $61d8: $22
	ld   [bc], a                                     ; $61d9: $02
	and  b                                           ; $61da: $a0
	dec  c                                           ; $61db: $0d
	ld   [hl+], a                                    ; $61dc: $22
	ld   c, $a0                                      ; $61dd: $0e $a0
	inc  bc                                          ; $61df: $03
	ld   [hl+], a                                    ; $61e0: $22
	ld   [bc], a                                     ; $61e1: $02
	and  b                                           ; $61e2: $a0
	dec  c                                           ; $61e3: $0d
	ld   [hl+], a                                    ; $61e4: $22
	ld   [$0e26], sp                                 ; $61e5: $08 $26 $0e
	and  b                                           ; $61e8: $a0
	inc  bc                                          ; $61e9: $03
	ld   h, $02                                      ; $61ea: $26 $02
	and  b                                           ; $61ec: $a0
	dec  c                                           ; $61ed: $0d
	ld   h, $06                                      ; $61ee: $26 $06
	and  b                                           ; $61f0: $a0
	inc  bc                                          ; $61f1: $03
	ld   h, $02                                      ; $61f2: $26 $02
	and  b                                           ; $61f4: $a0
	dec  c                                           ; $61f5: $0d
	ld   h, $0e                                      ; $61f6: $26 $0e
	and  b                                           ; $61f8: $a0
	inc  bc                                          ; $61f9: $03
	ld   h, $02                                      ; $61fa: $26 $02
	and  b                                           ; $61fc: $a0
	dec  c                                           ; $61fd: $0d
	ld   h, $0e                                      ; $61fe: $26 $0e
	and  b                                           ; $6200: $a0
	inc  bc                                          ; $6201: $03
	ld   h, $02                                      ; $6202: $26 $02
	and  b                                           ; $6204: $a0
	dec  c                                           ; $6205: $0d
	ld   h, $08                                      ; $6206: $26 $08
	add  hl, hl                                      ; $6208: $29
	ld   c, $a0                                      ; $6209: $0e $a0
	inc  bc                                          ; $620b: $03
	add  hl, hl                                      ; $620c: $29
	ld   [bc], a                                     ; $620d: $02
	and  b                                           ; $620e: $a0
	dec  c                                           ; $620f: $0d
	add  hl, hl                                      ; $6210: $29
	ld   b, $a0                                      ; $6211: $06 $a0
	inc  bc                                          ; $6213: $03
	add  hl, hl                                      ; $6214: $29
	ld   [bc], a                                     ; $6215: $02
	and  b                                           ; $6216: $a0
	dec  c                                           ; $6217: $0d
	add  hl, hl                                      ; $6218: $29
	ld   c, $a0                                      ; $6219: $0e $a0
	inc  bc                                          ; $621b: $03
	add  hl, hl                                      ; $621c: $29
	ld   [bc], a                                     ; $621d: $02
	and  b                                           ; $621e: $a0
	dec  c                                           ; $621f: $0d
	add  hl, hl                                      ; $6220: $29
	ld   c, $a0                                      ; $6221: $0e $a0
	inc  bc                                          ; $6223: $03
	add  hl, hl                                      ; $6224: $29
	ld   [bc], a                                     ; $6225: $02
	and  b                                           ; $6226: $a0
	dec  c                                           ; $6227: $0d
	add  hl, hl                                      ; $6228: $29

jr_0fd_6229:
	ld   [$0e30], sp                                 ; $6229: $08 $30 $0e
	and  b                                           ; $622c: $a0
	inc  bc                                          ; $622d: $03
	jr   nc, jr_0fd_6232                             ; $622e: $30 $02

	and  b                                           ; $6230: $a0
	dec  c                                           ; $6231: $0d

jr_0fd_6232:
	jr   nc, jr_0fd_623a                             ; $6232: $30 $06

	and  b                                           ; $6234: $a0
	inc  bc                                          ; $6235: $03
	jr   nc, jr_0fd_623a                             ; $6236: $30 $02

	and  b                                           ; $6238: $a0
	dec  c                                           ; $6239: $0d

jr_0fd_623a:
	jr   nc, jr_0fd_624a                             ; $623a: $30 $0e

	and  b                                           ; $623c: $a0
	inc  bc                                          ; $623d: $03
	jr   nc, jr_0fd_6242                             ; $623e: $30 $02

	and  b                                           ; $6240: $a0
	dec  c                                           ; $6241: $0d

jr_0fd_6242:
	jr   nc, jr_0fd_6252                             ; $6242: $30 $0e

	and  b                                           ; $6244: $a0
	inc  bc                                          ; $6245: $03
	jr   nc, jr_0fd_624a                             ; $6246: $30 $02

	and  b                                           ; $6248: $a0
	dec  c                                           ; $6249: $0d

jr_0fd_624a:
	jr   nc, jr_0fd_6254                             ; $624a: $30 $08

	ld   [hl-], a                                    ; $624c: $32
	ld   [hl], b                                     ; $624d: $70
	and  b                                           ; $624e: $a0
	inc  bc                                          ; $624f: $03
	ld   [hl-], a                                    ; $6250: $32
	db   $10                                         ; $6251: $10

jr_0fd_6252:
	and  b                                           ; $6252: $a0
	dec  c                                           ; $6253: $0d

jr_0fd_6254:
	daa                                              ; $6254: $27
	inc  b                                           ; $6255: $04
	and  b                                           ; $6256: $a0
	inc  bc                                          ; $6257: $03
	daa                                              ; $6258: $27
	inc  b                                           ; $6259: $04
	and  b                                           ; $625a: $a0
	dec  c                                           ; $625b: $0d
	daa                                              ; $625c: $27
	ld   [$0824], sp                                 ; $625d: $08 $24 $08
	ld   [hl+], a                                    ; $6260: $22
	ld   [$0827], sp                                 ; $6261: $08 $27 $08
	and  b                                           ; $6264: $a0
	inc  bc                                          ; $6265: $03
	daa                                              ; $6266: $27
	ld   [$0da0], sp                                 ; $6267: $08 $a0 $0d
	daa                                              ; $626a: $27

jr_0fd_626b:
	inc  b                                           ; $626b: $04
	and  b                                           ; $626c: $a0
	inc  bc                                          ; $626d: $03
	daa                                              ; $626e: $27
	inc  b                                           ; $626f: $04
	and  b                                           ; $6270: $a0
	dec  c                                           ; $6271: $0d
	daa                                              ; $6272: $27
	ld   [$0824], sp                                 ; $6273: $08 $24 $08
	ld   [hl+], a                                    ; $6276: $22
	ld   [$0827], sp                                 ; $6277: $08 $27 $08
	and  b                                           ; $627a: $a0
	inc  bc                                          ; $627b: $03
	daa                                              ; $627c: $27
	ld   [$0da0], sp                                 ; $627d: $08 $a0 $0d
	daa                                              ; $6280: $27
	ld   [$1029], sp                                 ; $6281: $08 $29 $10
	dec  hl                                          ; $6284: $2b
	ld   c, b                                        ; $6285: $48
	daa                                              ; $6286: $27
	jr   nc, jr_0fd_6229                             ; $6287: $30 $a0

	inc  bc                                          ; $6289: $03
	daa                                              ; $628a: $27
	db   $10                                         ; $628b: $10
	and  b                                           ; $628c: $a0
	dec  c                                           ; $628d: $0d
	daa                                              ; $628e: $27
	inc  b                                           ; $628f: $04
	and  b                                           ; $6290: $a0
	inc  bc                                          ; $6291: $03
	daa                                              ; $6292: $27
	inc  b                                           ; $6293: $04
	and  b                                           ; $6294: $a0
	dec  c                                           ; $6295: $0d
	daa                                              ; $6296: $27
	ld   [$0824], sp                                 ; $6297: $08 $24 $08
	ld   [hl+], a                                    ; $629a: $22
	ld   [$0427], sp                                 ; $629b: $08 $27 $04
	and  b                                           ; $629e: $a0
	inc  bc                                          ; $629f: $03
	daa                                              ; $62a0: $27
	inc  b                                           ; $62a1: $04
	daa                                              ; $62a2: $27

jr_0fd_62a3:
	ld   [$0da0], sp                                 ; $62a3: $08 $a0 $0d
	inc  h                                           ; $62a6: $24
	ld   [$0c27], sp                                 ; $62a7: $08 $27 $0c
	and  b                                           ; $62aa: $a0
	inc  bc                                          ; $62ab: $03
	daa                                              ; $62ac: $27
	inc  b                                           ; $62ad: $04
	and  b                                           ; $62ae: $a0
	dec  c                                           ; $62af: $0d
	daa                                              ; $62b0: $27
	inc  b                                           ; $62b1: $04
	and  b                                           ; $62b2: $a0
	inc  bc                                          ; $62b3: $03
	daa                                              ; $62b4: $27
	inc  b                                           ; $62b5: $04
	and  b                                           ; $62b6: $a0
	dec  c                                           ; $62b7: $0d
	daa                                              ; $62b8: $27
	inc  b                                           ; $62b9: $04
	and  b                                           ; $62ba: $a0
	inc  bc                                          ; $62bb: $03
	daa                                              ; $62bc: $27
	inc  b                                           ; $62bd: $04
	and  b                                           ; $62be: $a0
	dec  c                                           ; $62bf: $0d
	daa                                              ; $62c0: $27
	ld   [$082b], sp                                 ; $62c1: $08 $2b $08
	daa                                              ; $62c4: $27
	db   $10                                         ; $62c5: $10
	add  hl, hl                                      ; $62c6: $29
	ld   c, b                                        ; $62c7: $48
	ld   [hl+], a                                    ; $62c8: $22
	jr   nc, jr_0fd_626b                             ; $62c9: $30 $a0

	inc  bc                                          ; $62cb: $03
	ld   [hl+], a                                    ; $62cc: $22
	db   $10                                         ; $62cd: $10
	and  b                                           ; $62ce: $a0
	dec  c                                           ; $62cf: $0d
	daa                                              ; $62d0: $27
	inc  b                                           ; $62d1: $04
	and  b                                           ; $62d2: $a0
	inc  bc                                          ; $62d3: $03
	daa                                              ; $62d4: $27
	inc  b                                           ; $62d5: $04
	and  b                                           ; $62d6: $a0
	dec  c                                           ; $62d7: $0d
	daa                                              ; $62d8: $27
	ld   [$0824], sp                                 ; $62d9: $08 $24 $08
	ld   [hl+], a                                    ; $62dc: $22
	ld   [$0827], sp                                 ; $62dd: $08 $27 $08
	and  b                                           ; $62e0: $a0
	inc  bc                                          ; $62e1: $03
	daa                                              ; $62e2: $27
	ld   [$0da0], sp                                 ; $62e3: $08 $a0 $0d
	daa                                              ; $62e6: $27

jr_0fd_62e7:
	inc  b                                           ; $62e7: $04
	and  b                                           ; $62e8: $a0
	inc  bc                                          ; $62e9: $03
	daa                                              ; $62ea: $27
	inc  b                                           ; $62eb: $04
	and  b                                           ; $62ec: $a0
	dec  c                                           ; $62ed: $0d
	daa                                              ; $62ee: $27
	ld   [$0824], sp                                 ; $62ef: $08 $24 $08
	ld   [hl+], a                                    ; $62f2: $22
	ld   [$0827], sp                                 ; $62f3: $08 $27 $08
	and  b                                           ; $62f6: $a0
	inc  bc                                          ; $62f7: $03
	daa                                              ; $62f8: $27
	ld   [$0da0], sp                                 ; $62f9: $08 $a0 $0d
	daa                                              ; $62fc: $27
	ld   [$1029], sp                                 ; $62fd: $08 $29 $10
	dec  hl                                          ; $6300: $2b
	jr   nz, jr_0fd_62a3                             ; $6301: $20 $a0

	inc  bc                                          ; $6303: $03
	dec  hl                                          ; $6304: $2b
	ld   [$0da0], sp                                 ; $6305: $08 $a0 $0d
	dec  hl                                          ; $6308: $2b
	inc  b                                           ; $6309: $04
	and  b                                           ; $630a: $a0
	inc  bc                                          ; $630b: $03
	dec  hl                                          ; $630c: $2b
	inc  b                                           ; $630d: $04
	and  b                                           ; $630e: $a0
	dec  c                                           ; $630f: $0d
	dec  hl                                          ; $6310: $2b
	ld   [$0833], sp                                 ; $6311: $08 $33 $08
	dec  hl                                          ; $6314: $2b
	db   $10                                         ; $6315: $10
	add  hl, hl                                      ; $6316: $29
	ld   [$2827], sp                                 ; $6317: $08 $27 $28
	and  b                                           ; $631a: $a0

jr_0fd_631b:
	inc  bc                                          ; $631b: $03
	daa                                              ; $631c: $27
	ld   [$0da0], sp                                 ; $631d: $08 $a0 $0d
	jr   nc, jr_0fd_6326                             ; $6320: $30 $04

	and  b                                           ; $6322: $a0
	inc  bc                                          ; $6323: $03
	jr   nc, jr_0fd_632a                             ; $6324: $30 $04

jr_0fd_6326:
	and  b                                           ; $6326: $a0
	dec  c                                           ; $6327: $0d
	jr   nc, jr_0fd_632e                             ; $6328: $30 $04

jr_0fd_632a:
	and  b                                           ; $632a: $a0
	inc  bc                                          ; $632b: $03
	jr   nc, jr_0fd_6332                             ; $632c: $30 $04

jr_0fd_632e:
	and  b                                           ; $632e: $a0
	dec  c                                           ; $632f: $0d
	jr   nc, jr_0fd_6336                             ; $6330: $30 $04

jr_0fd_6332:
	and  b                                           ; $6332: $a0
	inc  bc                                          ; $6333: $03
	jr   nc, jr_0fd_633a                             ; $6334: $30 $04

jr_0fd_6336:
	and  b                                           ; $6336: $a0
	dec  c                                           ; $6337: $0d
	jr   nc, @+$0a                                   ; $6338: $30 $08

jr_0fd_633a:
	dec  hl                                          ; $633a: $2b
	ld   [$0829], sp                                 ; $633b: $08 $29 $08
	and  b                                           ; $633e: $a0
	inc  bc                                          ; $633f: $03
	add  hl, hl                                      ; $6340: $29
	ld   [$0da0], sp                                 ; $6341: $08 $a0 $0d
	daa                                              ; $6344: $27
	jr   c, jr_0fd_62e7                              ; $6345: $38 $a0

	inc  bc                                          ; $6347: $03
	daa                                              ; $6348: $27
	db   $10                                         ; $6349: $10
	and  b                                           ; $634a: $a0
	dec  c                                           ; $634b: $0d
	daa                                              ; $634c: $27
	inc  b                                           ; $634d: $04
	and  b                                           ; $634e: $a0
	inc  bc                                          ; $634f: $03
	daa                                              ; $6350: $27
	inc  b                                           ; $6351: $04
	and  b                                           ; $6352: $a0
	dec  c                                           ; $6353: $0d
	daa                                              ; $6354: $27
	ld   [$0824], sp                                 ; $6355: $08 $24 $08
	ld   [hl+], a                                    ; $6358: $22
	ld   [$0827], sp                                 ; $6359: $08 $27 $08
	add  hl, hl                                      ; $635c: $29
	ld   [$03a0], sp                                 ; $635d: $08 $a0 $03
	add  hl, hl                                      ; $6360: $29
	ld   [$0da0], sp                                 ; $6361: $08 $a0 $0d
	daa                                              ; $6364: $27
	jr   c, @-$5e                                    ; $6365: $38 $a0

	inc  bc                                          ; $6367: $03
	daa                                              ; $6368: $27
	db   $10                                         ; $6369: $10
	or   b                                           ; $636a: $b0
	di                                               ; $636b: $f3
	rst  $38                                         ; $636c: $ff
	rst  $38                                         ; $636d: $ff
	inc  b                                           ; $636e: $04
	ld   b, b                                        ; $636f: $40
	ld   [bc], a                                     ; $6370: $02
	ld   [bc], a                                     ; $6371: $02

jr_0fd_6372:
	rra                                              ; $6372: $1f
	jr   z, jr_0fd_6372                              ; $6373: $28 $fd

	di                                               ; $6375: $f3
	and  e                                           ; $6376: $a3
	inc  h                                           ; $6377: $24
	and  d                                           ; $6378: $a2
	jr   c, jr_0fd_631b                              ; $6379: $38 $a0

	ld   [bc], a                                     ; $637b: $02
	rla                                              ; $637c: $17
	db   $10                                         ; $637d: $10
	daa                                              ; $637e: $27
	db   $10                                         ; $637f: $10
	ld   [hl+], a                                    ; $6380: $22
	ld   [$0825], sp                                 ; $6381: $08 $25 $08
	rra                                              ; $6384: $1f
	ld   [$0c17], sp                                 ; $6385: $08 $17 $0c
	rra                                              ; $6388: $1f
	inc  b                                           ; $6389: $04
	rla                                              ; $638a: $17
	ld   [$0827], sp                                 ; $638b: $08 $27 $08
	ld   [hl+], a                                    ; $638e: $22
	ld   [$1025], sp                                 ; $638f: $08 $25 $10
	daa                                              ; $6392: $27
	db   $10                                         ; $6393: $10
	rla                                              ; $6394: $17
	db   $10                                         ; $6395: $10
	daa                                              ; $6396: $27
	db   $10                                         ; $6397: $10
	ld   [hl+], a                                    ; $6398: $22
	ld   [$0825], sp                                 ; $6399: $08 $25 $08
	rra                                              ; $639c: $1f
	ld   [$2015], sp                                 ; $639d: $08 $15 $20
	rla                                              ; $63a0: $17
	ld   c, b                                        ; $63a1: $48
	rla                                              ; $63a2: $17
	inc  d                                           ; $63a3: $14
	rra                                              ; $63a4: $1f
	inc  b                                           ; $63a5: $04
	rla                                              ; $63a6: $17
	db   $10                                         ; $63a7: $10
	rla                                              ; $63a8: $17
	ld   [PopulateKanjiConvoStructForCurrTextBox], sp                                 ; $63a9: $08 $27 $10
	inc  de                                          ; $63ac: $13
	db   $10                                         ; $63ad: $10
	rra                                              ; $63ae: $1f
	ld   [$0813], sp                                 ; $63af: $08 $13 $08
	rra                                              ; $63b2: $1f
	jr   nz, jr_0fd_63ca                             ; $63b3: $20 $15

	inc  d                                           ; $63b5: $14
	rra                                              ; $63b6: $1f
	inc  b                                           ; $63b7: $04
	dec  d                                           ; $63b8: $15
	db   $10                                         ; $63b9: $10
	dec  d                                           ; $63ba: $15
	ld   [$0825], sp                                 ; $63bb: $08 $25 $08
	dec  d                                           ; $63be: $15
	ld   [$141a], sp                                 ; $63bf: $08 $1a $14
	rra                                              ; $63c2: $1f
	inc  b                                           ; $63c3: $04
	ld   a, [de]                                     ; $63c4: $1a
	db   $10                                         ; $63c5: $10
	ld   a, [de]                                     ; $63c6: $1a
	ld   [$0c25], sp                                 ; $63c7: $08 $25 $0c

jr_0fd_63ca:
	rra                                              ; $63ca: $1f
	inc  b                                           ; $63cb: $04
	inc  hl                                          ; $63cc: $23
	inc  d                                           ; $63cd: $14
	rra                                              ; $63ce: $1f
	inc  b                                           ; $63cf: $04
	inc  hl                                          ; $63d0: $23
	ld   [$201f], sp                                 ; $63d1: $08 $1f $20
	rla                                              ; $63d4: $17
	db   $10                                         ; $63d5: $10
	rla                                              ; $63d6: $17
	ld   [$1017], sp                                 ; $63d7: $08 $17 $10
	rra                                              ; $63da: $1f
	jr   jr_0fd_63fd                                 ; $63db: $18 $20

	inc  d                                           ; $63dd: $14
	rra                                              ; $63de: $1f
	inc  b                                           ; $63df: $04
	jr   nz, jr_0fd_63ea                             ; $63e0: $20 $08

	ld   a, [de]                                     ; $63e2: $1a
	ld   [$0820], sp                                 ; $63e3: $08 $20 $08
	ld   [hl+], a                                    ; $63e6: $22
	ld   [$081a], sp                                 ; $63e7: $08 $1a $08

jr_0fd_63ea:
	dec  d                                           ; $63ea: $15
	jr   jr_0fd_6402                                 ; $63eb: $18 $15

	inc  d                                           ; $63ed: $14
	rra                                              ; $63ee: $1f
	inc  b                                           ; $63ef: $04
	rla                                              ; $63f0: $17
	ld   [$0819], sp                                 ; $63f1: $08 $19 $08
	ld   a, [de]                                     ; $63f4: $1a
	inc  d                                           ; $63f5: $14
	rra                                              ; $63f6: $1f
	inc  b                                           ; $63f7: $04
	ld   a, [de]                                     ; $63f8: $1a
	inc  d                                           ; $63f9: $14
	rra                                              ; $63fa: $1f
	inc  c                                           ; $63fb: $0c
	dec  d                                           ; $63fc: $15

jr_0fd_63fd:
	ld   [$0c1a], sp                                 ; $63fd: $08 $1a $0c
	rra                                              ; $6400: $1f
	inc  c                                           ; $6401: $0c

jr_0fd_6402:
	ld   a, [de]                                     ; $6402: $1a
	db   $10                                         ; $6403: $10
	ld   h, $08                                      ; $6404: $26 $08
	ld   [hl+], a                                    ; $6406: $22
	ld   [$081a], sp                                 ; $6407: $08 $1a $08
	ld   a, [de]                                     ; $640a: $1a
	inc  d                                           ; $640b: $14
	rra                                              ; $640c: $1f
	inc  b                                           ; $640d: $04
	ld   a, [de]                                     ; $640e: $1a
	inc  d                                           ; $640f: $14
	rra                                              ; $6410: $1f
	inc  c                                           ; $6411: $0c
	dec  d                                           ; $6412: $15
	ld   [$0c1a], sp                                 ; $6413: $08 $1a $0c
	rra                                              ; $6416: $1f
	inc  c                                           ; $6417: $0c
	ld   a, [de]                                     ; $6418: $1a
	inc  c                                           ; $6419: $0c
	rra                                              ; $641a: $1f
	inc  b                                           ; $641b: $04
	jr   nz, jr_0fd_6426                             ; $641c: $20 $08

	ld   [hl+], a                                    ; $641e: $22
	db   $10                                         ; $641f: $10
	inc  hl                                          ; $6420: $23
	inc  d                                           ; $6421: $14
	rra                                              ; $6422: $1f
	inc  b                                           ; $6423: $04
	inc  hl                                          ; $6424: $23
	inc  d                                           ; $6425: $14

jr_0fd_6426:
	rra                                              ; $6426: $1f
	inc  c                                           ; $6427: $0c
	ld   [hl+], a                                    ; $6428: $22
	ld   [$1420], sp                                 ; $6429: $08 $20 $14
	rra                                              ; $642c: $1f
	inc  b                                           ; $642d: $04
	jr   nz, jr_0fd_6440                             ; $642e: $20 $10

	jr   nz, jr_0fd_643a                             ; $6430: $20 $08

	jr   nz, jr_0fd_643c                             ; $6432: $20 $08

	ld   hl, $2208                                   ; $6434: $21 $08 $22
	inc  d                                           ; $6437: $14
	rra                                              ; $6438: $1f
	inc  b                                           ; $6439: $04

jr_0fd_643a:
	ld   [hl+], a                                    ; $643a: $22
	inc  d                                           ; $643b: $14

jr_0fd_643c:
	rra                                              ; $643c: $1f
	inc  b                                           ; $643d: $04
	add  hl, hl                                      ; $643e: $29
	db   $10                                         ; $643f: $10

jr_0fd_6440:
	ld   [hl+], a                                    ; $6440: $22
	inc  d                                           ; $6441: $14
	rra                                              ; $6442: $1f
	inc  b                                           ; $6443: $04
	ld   [hl+], a                                    ; $6444: $22
	jr   jr_0fd_6470                                 ; $6445: $18 $29

	inc  c                                           ; $6447: $0c
	rra                                              ; $6448: $1f
	inc  b                                           ; $6449: $04
	db   $fd                                         ; $644a: $fd
	ldh  a, [rAUD4POLY]                              ; $644b: $f0 $22
	inc  d                                           ; $644d: $14
	rra                                              ; $644e: $1f
	inc  b                                           ; $644f: $04
	add  hl, de                                      ; $6450: $19
	db   $10                                         ; $6451: $10
	add  hl, de                                      ; $6452: $19
	ld   [$0820], sp                                 ; $6453: $08 $20 $08
	ld   [hl+], a                                    ; $6456: $22
	ld   [$f0b4], sp                                 ; $6457: $08 $b4 $f0
	and  d                                           ; $645a: $a2
	jr   nz, jr_0fd_647f                             ; $645b: $20 $22

	ld   [$0822], sp                                 ; $645d: $08 $22 $08
	ld   [hl+], a                                    ; $6460: $22
	ld   [$0822], sp                                 ; $6461: $08 $22 $08
	ld   [hl+], a                                    ; $6464: $22
	ld   [$0822], sp                                 ; $6465: $08 $22 $08
	ld   [hl+], a                                    ; $6468: $22
	ld   [$0822], sp                                 ; $6469: $08 $22 $08
	rla                                              ; $646c: $17
	ld   [$0817], sp                                 ; $646d: $08 $17 $08

jr_0fd_6470:
	daa                                              ; $6470: $27
	ld   [$0817], sp                                 ; $6471: $08 $17 $08
	dec  h                                           ; $6474: $25
	ld   [$0824], sp                                 ; $6475: $08 $24 $08
	ld   [hl+], a                                    ; $6478: $22
	ld   [$0c17], sp                                 ; $6479: $08 $17 $0c
	rra                                              ; $647c: $1f
	inc  b                                           ; $647d: $04
	rla                                              ; $647e: $17

jr_0fd_647f:
	ld   [$0827], sp                                 ; $647f: $08 $27 $08
	rla                                              ; $6482: $17
	ld   [$0825], sp                                 ; $6483: $08 $25 $08
	inc  h                                           ; $6486: $24
	ld   [$0819], sp                                 ; $6487: $08 $19 $08
	ld   a, [de]                                     ; $648a: $1a
	ld   [$081b], sp                                 ; $648b: $08 $1b $08
	dec  de                                          ; $648e: $1b
	ld   [$081b], sp                                 ; $648f: $08 $1b $08
	dec  de                                          ; $6492: $1b
	ld   [$081b], sp                                 ; $6493: $08 $1b $08
	dec  de                                          ; $6496: $1b
	ld   [$081b], sp                                 ; $6497: $08 $1b $08
	inc  hl                                          ; $649a: $23
	ld   [$0824], sp                                 ; $649b: $08 $24 $08
	inc  h                                           ; $649e: $24
	ld   [$0824], sp                                 ; $649f: $08 $24 $08
	inc  h                                           ; $64a2: $24
	ld   [$0824], sp                                 ; $64a3: $08 $24 $08
	inc  h                                           ; $64a6: $24
	ld   [$0824], sp                                 ; $64a7: $08 $24 $08
	ld   [hl+], a                                    ; $64aa: $22
	ld   [$0820], sp                                 ; $64ab: $08 $20 $08
	jr   nz, jr_0fd_64b8                             ; $64ae: $20 $08

	jr   nc, @+$0a                                   ; $64b0: $30 $08

	jr   nz, jr_0fd_64bc                             ; $64b2: $20 $08

	ld   a, [hl+]                                    ; $64b4: $2a
	ld   [$0829], sp                                 ; $64b5: $08 $29 $08

jr_0fd_64b8:
	daa                                              ; $64b8: $27
	ld   [$0c20], sp                                 ; $64b9: $08 $20 $0c

jr_0fd_64bc:
	rra                                              ; $64bc: $1f
	inc  b                                           ; $64bd: $04
	jr   nz, @+$0a                                   ; $64be: $20 $08

	jr   nz, jr_0fd_64ca                             ; $64c0: $20 $08

	jr   nz, @+$0a                                   ; $64c2: $20 $08

	ld   hl, $2108                                   ; $64c4: $21 $08 $21
	ld   [$0821], sp                                 ; $64c7: $08 $21 $08

jr_0fd_64ca:
	ld   hl, $2208                                   ; $64ca: $21 $08 $22
	ld   [$0822], sp                                 ; $64cd: $08 $22 $08
	ld   [hl+], a                                    ; $64d0: $22
	ld   [$0822], sp                                 ; $64d1: $08 $22 $08
	ld   [hl+], a                                    ; $64d4: $22
	ld   [$0822], sp                                 ; $64d5: $08 $22 $08
	ld   [hl+], a                                    ; $64d8: $22
	ld   [$0822], sp                                 ; $64d9: $08 $22 $08
	ld   [de], a                                     ; $64dc: $12
	ld   [$0812], sp                                 ; $64dd: $08 $12 $08
	ld   [de], a                                     ; $64e0: $12
	ld   [$0812], sp                                 ; $64e1: $08 $12 $08
	ld   [de], a                                     ; $64e4: $12
	ld   [$0812], sp                                 ; $64e5: $08 $12 $08
	inc  d                                           ; $64e8: $14
	ld   [$0816], sp                                 ; $64e9: $08 $16 $08
	rla                                              ; $64ec: $17
	ld   [$0817], sp                                 ; $64ed: $08 $17 $08
	daa                                              ; $64f0: $27
	ld   [$0817], sp                                 ; $64f1: $08 $17 $08
	dec  h                                           ; $64f4: $25
	ld   [$0824], sp                                 ; $64f5: $08 $24 $08
	ld   [hl+], a                                    ; $64f8: $22
	ld   [$0c17], sp                                 ; $64f9: $08 $17 $0c
	rra                                              ; $64fc: $1f
	inc  b                                           ; $64fd: $04
	rla                                              ; $64fe: $17
	ld   [$0827], sp                                 ; $64ff: $08 $27 $08
	rla                                              ; $6502: $17
	ld   [$0825], sp                                 ; $6503: $08 $25 $08
	inc  h                                           ; $6506: $24
	ld   [$0819], sp                                 ; $6507: $08 $19 $08
	ld   a, [de]                                     ; $650a: $1a
	ld   [$081b], sp                                 ; $650b: $08 $1b $08
	dec  de                                          ; $650e: $1b
	ld   [$081b], sp                                 ; $650f: $08 $1b $08
	dec  de                                          ; $6512: $1b
	ld   [$081b], sp                                 ; $6513: $08 $1b $08
	dec  de                                          ; $6516: $1b
	ld   [$081b], sp                                 ; $6517: $08 $1b $08
	inc  hl                                          ; $651a: $23
	ld   [$0824], sp                                 ; $651b: $08 $24 $08
	inc  h                                           ; $651e: $24
	ld   [$0824], sp                                 ; $651f: $08 $24 $08
	inc  h                                           ; $6522: $24
	ld   [$0824], sp                                 ; $6523: $08 $24 $08
	inc  h                                           ; $6526: $24
	ld   [$0824], sp                                 ; $6527: $08 $24 $08
	ld   [hl+], a                                    ; $652a: $22
	ld   [$0820], sp                                 ; $652b: $08 $20 $08
	jr   nz, jr_0fd_6538                             ; $652e: $20 $08

	jr   nz, jr_0fd_653a                             ; $6530: $20 $08

	jr   nz, jr_0fd_653c                             ; $6532: $20 $08

	jr   nz, jr_0fd_653e                             ; $6534: $20 $08

	jr   nz, @+$0a                                   ; $6536: $20 $08

jr_0fd_6538:
	jr   nz, jr_0fd_6542                             ; $6538: $20 $08

jr_0fd_653a:
	dec  d                                           ; $653a: $15
	inc  c                                           ; $653b: $0c

jr_0fd_653c:
	rra                                              ; $653c: $1f
	inc  b                                           ; $653d: $04

jr_0fd_653e:
	dec  d                                           ; $653e: $15
	ld   [$0817], sp                                 ; $653f: $08 $17 $08

jr_0fd_6542:
	jr   jr_0fd_654c                                 ; $6542: $18 $08

	add  hl, de                                      ; $6544: $19
	ld   [$0819], sp                                 ; $6545: $08 $19 $08
	ld   a, [de]                                     ; $6548: $1a
	ld   [$081a], sp                                 ; $6549: $08 $1a $08

jr_0fd_654c:
	jr   nz, jr_0fd_6556                             ; $654c: $20 $08

	jr   nz, jr_0fd_6558                             ; $654e: $20 $08

	jr   nz, jr_0fd_655a                             ; $6550: $20 $08

	jr   nz, jr_0fd_655c                             ; $6552: $20 $08

	jr   nz, jr_0fd_655e                             ; $6554: $20 $08

jr_0fd_6556:
	jr   nz, @+$0a                                   ; $6556: $20 $08

jr_0fd_6558:
	jr   nz, jr_0fd_6562                             ; $6558: $20 $08

jr_0fd_655a:
	and  d                                           ; $655a: $a2
	ld   [hl], b                                     ; $655b: $70

jr_0fd_655c:
	jr   nz, jr_0fd_65a6                             ; $655c: $20 $48

jr_0fd_655e:
	and  d                                           ; $655e: $a2
	jr   c, @-$4e                                    ; $655f: $38 $b0

	di                                               ; $6561: $f3

jr_0fd_6562:
	rst  $38                                         ; $6562: $ff
	rst  $38                                         ; $6563: $ff
	inc  b                                           ; $6564: $04
	nop                                              ; $6565: $00
	add  hl, bc                                      ; $6566: $09
	nop                                              ; $6567: $00
	pop  bc                                          ; $6568: $c1
	inc  b                                           ; $6569: $04
	and  b                                           ; $656a: $a0
	add  hl, bc                                      ; $656b: $09
	ld   l, b                                        ; $656c: $68
	ld   bc, $06a0                                   ; $656d: $01 $a0 $06
	sbc  c                                           ; $6570: $99
	ld   bc, $01a0                                   ; $6571: $01 $a0 $01
	sbc  c                                           ; $6574: $99
	ld   b, $a0                                      ; $6575: $06 $a0
	dec  c                                           ; $6577: $0d
	rla                                              ; $6578: $17
	ld   bc, $0aa0                                   ; $6579: $01 $a0 $0a
	db   $10                                         ; $657c: $10
	ld   bc, $01a0                                   ; $657d: $01 $a0 $01
	nop                                              ; $6580: $00
	ld   b, $c1                                      ; $6581: $06 $c1
	inc  b                                           ; $6583: $04
	and  b                                           ; $6584: $a0
	add  hl, bc                                      ; $6585: $09
	ld   l, b                                        ; $6586: $68
	ld   bc, $06a0                                   ; $6587: $01 $a0 $06
	sbc  c                                           ; $658a: $99
	ld   bc, $01a0                                   ; $658b: $01 $a0 $01
	sbc  c                                           ; $658e: $99
	ld   b, $a0                                      ; $658f: $06 $a0
	dec  c                                           ; $6591: $0d
	rla                                              ; $6592: $17
	ld   bc, $0aa0                                   ; $6593: $01 $a0 $0a
	db   $10                                         ; $6596: $10
	ld   bc, $01a0                                   ; $6597: $01 $a0 $01
	nop                                              ; $659a: $00
	ld   b, $a0                                      ; $659b: $06 $a0
	dec  c                                           ; $659d: $0d
	rla                                              ; $659e: $17
	ld   bc, $0aa0                                   ; $659f: $01 $a0 $0a
	db   $10                                         ; $65a2: $10
	ld   bc, $01a0                                   ; $65a3: $01 $a0 $01

jr_0fd_65a6:
	nop                                              ; $65a6: $00
	ld   b, $fd                                      ; $65a7: $06 $fd
	di                                               ; $65a9: $f3
	db   $fd                                         ; $65aa: $fd
	ldh  a, [$ac]                                    ; $65ab: $f0 $ac
	ld   bc, $0390                                   ; $65ad: $01 $90 $03
	or   h                                           ; $65b0: $b4
	ldh  a, [$c1]                                    ; $65b1: $f0 $c1
	inc  b                                           ; $65b3: $04
	and  b                                           ; $65b4: $a0
	add  hl, bc                                      ; $65b5: $09
	ld   l, b                                        ; $65b6: $68
	ld   bc, $06a0                                   ; $65b7: $01 $a0 $06
	sbc  c                                           ; $65ba: $99
	ld   bc, $01a0                                   ; $65bb: $01 $a0 $01
	sbc  c                                           ; $65be: $99
	ld   b, $c1                                      ; $65bf: $06 $c1
	inc  bc                                          ; $65c1: $03
	and  b                                           ; $65c2: $a0
	rlca                                             ; $65c3: $07
	ld   [bc], a                                     ; $65c4: $02
	ld   bc, $01a0                                   ; $65c5: $01 $a0 $01
	nop                                              ; $65c8: $00
	rlca                                             ; $65c9: $07
	and  b                                           ; $65ca: $a0
	dec  c                                           ; $65cb: $0d
	rla                                              ; $65cc: $17
	ld   bc, $0aa0                                   ; $65cd: $01 $a0 $0a
	db   $10                                         ; $65d0: $10
	ld   bc, $01a0                                   ; $65d1: $01 $a0 $01
	nop                                              ; $65d4: $00
	ld   b, $c1                                      ; $65d5: $06 $c1
	inc  b                                           ; $65d7: $04
	and  b                                           ; $65d8: $a0
	add  hl, bc                                      ; $65d9: $09
	ld   l, b                                        ; $65da: $68
	ld   bc, $06a0                                   ; $65db: $01 $a0 $06
	sbc  c                                           ; $65de: $99
	ld   bc, $01a0                                   ; $65df: $01 $a0 $01
	sbc  c                                           ; $65e2: $99
	ld   b, $1f                                      ; $65e3: $06 $1f
	ld   [$04c1], sp                                 ; $65e5: $08 $c1 $04
	and  b                                           ; $65e8: $a0
	add  hl, bc                                      ; $65e9: $09
	ld   l, b                                        ; $65ea: $68
	ld   bc, $06a0                                   ; $65eb: $01 $a0 $06
	sbc  c                                           ; $65ee: $99
	ld   bc, $01a0                                   ; $65ef: $01 $a0 $01
	sbc  c                                           ; $65f2: $99
	ld   b, $a0                                      ; $65f3: $06 $a0
	dec  c                                           ; $65f5: $0d
	rla                                              ; $65f6: $17
	ld   bc, $0aa0                                   ; $65f7: $01 $a0 $0a
	db   $10                                         ; $65fa: $10
	ld   bc, $01a0                                   ; $65fb: $01 $a0 $01
	nop                                              ; $65fe: $00
	ld   b, $c1                                      ; $65ff: $06 $c1
	inc  b                                           ; $6601: $04
	and  b                                           ; $6602: $a0
	add  hl, bc                                      ; $6603: $09
	ld   l, b                                        ; $6604: $68
	ld   bc, $06a0                                   ; $6605: $01 $a0 $06
	sbc  c                                           ; $6608: $99
	ld   bc, $01a0                                   ; $6609: $01 $a0 $01
	sbc  c                                           ; $660c: $99
	ld   b, $1f                                      ; $660d: $06 $1f
	db   $10                                         ; $660f: $10
	pop  bc                                          ; $6610: $c1
	inc  bc                                          ; $6611: $03
	and  b                                           ; $6612: $a0
	rlca                                             ; $6613: $07
	ld   [bc], a                                     ; $6614: $02
	ld   bc, $01a0                                   ; $6615: $01 $a0 $01
	nop                                              ; $6618: $00
	rlca                                             ; $6619: $07
	pop  bc                                          ; $661a: $c1
	inc  b                                           ; $661b: $04
	and  b                                           ; $661c: $a0
	add  hl, bc                                      ; $661d: $09
	ld   l, b                                        ; $661e: $68
	ld   bc, $06a0                                   ; $661f: $01 $a0 $06
	sbc  c                                           ; $6622: $99
	ld   bc, $01a0                                   ; $6623: $01 $a0 $01
	sbc  c                                           ; $6626: $99
	ld   b, $a0                                      ; $6627: $06 $a0
	dec  c                                           ; $6629: $0d
	rla                                              ; $662a: $17
	ld   bc, $0aa0                                   ; $662b: $01 $a0 $0a
	db   $10                                         ; $662e: $10
	ld   bc, $01a0                                   ; $662f: $01 $a0 $01
	nop                                              ; $6632: $00
	ld   b, $a0                                      ; $6633: $06 $a0
	dec  c                                           ; $6635: $0d
	rla                                              ; $6636: $17
	ld   bc, $0aa0                                   ; $6637: $01 $a0 $0a
	db   $10                                         ; $663a: $10
	ld   bc, $01a0                                   ; $663b: $01 $a0 $01
	nop                                              ; $663e: $00
	ld   [bc], a                                     ; $663f: $02
	and  b                                           ; $6640: $a0
	dec  c                                           ; $6641: $0d
	rla                                              ; $6642: $17
	ld   bc, $0aa0                                   ; $6643: $01 $a0 $0a
	db   $10                                         ; $6646: $10
	ld   bc, $01a0                                   ; $6647: $01 $a0 $01
	nop                                              ; $664a: $00
	ld   [bc], a                                     ; $664b: $02
	and  b                                           ; $664c: $a0
	dec  c                                           ; $664d: $0d
	rla                                              ; $664e: $17
	ld   bc, $0aa0                                   ; $664f: $01 $a0 $0a
	db   $10                                         ; $6652: $10
	ld   bc, $01a0                                   ; $6653: $01 $a0 $01
	nop                                              ; $6656: $00
	ld   b, $a0                                      ; $6657: $06 $a0
	dec  c                                           ; $6659: $0d
	rla                                              ; $665a: $17
	ld   bc, $0aa0                                   ; $665b: $01 $a0 $0a
	db   $10                                         ; $665e: $10
	ld   bc, $01a0                                   ; $665f: $01 $a0 $01
	nop                                              ; $6662: $00
	ld   b, $fd                                      ; $6663: $06 $fd
	pop  af                                          ; $6665: $f1
	db   $fd                                         ; $6666: $fd
	ldh  a, [$ac]                                    ; $6667: $f0 $ac
	ld   bc, $0390                                   ; $6669: $01 $90 $03
	cp   [hl]                                        ; $666c: $be
	ldh  a, [hScriptOpcodeParams]                                    ; $666d: $f0 $a0
	dec  c                                           ; $666f: $0d
	rla                                              ; $6670: $17
	ld   bc, $0aa0                                   ; $6671: $01 $a0 $0a
	db   $10                                         ; $6674: $10
	ld   bc, $01a0                                   ; $6675: $01 $a0 $01
	nop                                              ; $6678: $00
	ld   b, $c1                                      ; $6679: $06 $c1
	inc  bc                                          ; $667b: $03
	and  b                                           ; $667c: $a0
	rlca                                             ; $667d: $07
	ld   [bc], a                                     ; $667e: $02
	ld   bc, $01a0                                   ; $667f: $01 $a0 $01
	nop                                              ; $6682: $00
	rlca                                             ; $6683: $07
	and  b                                           ; $6684: $a0
	dec  c                                           ; $6685: $0d
	rla                                              ; $6686: $17
	ld   bc, $0aa0                                   ; $6687: $01 $a0 $0a
	db   $10                                         ; $668a: $10
	ld   bc, $01a0                                   ; $668b: $01 $a0 $01
	nop                                              ; $668e: $00
	ld   b, $a0                                      ; $668f: $06 $a0
	dec  c                                           ; $6691: $0d
	rla                                              ; $6692: $17
	ld   bc, $0aa0                                   ; $6693: $01 $a0 $0a
	db   $10                                         ; $6696: $10
	ld   bc, $01a0                                   ; $6697: $01 $a0 $01
	nop                                              ; $669a: $00
	ld   b, $b1                                      ; $669b: $06 $b1
	pop  af                                          ; $669d: $f1
	db   $fd                                         ; $669e: $fd
	ldh  a, [$ac]                                    ; $669f: $f0 $ac
	ld   bc, $0390                                   ; $66a1: $01 $90 $03
	cp   d                                           ; $66a4: $ba
	ldh  a, [hScriptOpcodeParams]                                    ; $66a5: $f0 $a0
	dec  c                                           ; $66a7: $0d
	rla                                              ; $66a8: $17
	ld   bc, $0aa0                                   ; $66a9: $01 $a0 $0a
	db   $10                                         ; $66ac: $10
	ld   bc, $01a0                                   ; $66ad: $01 $a0 $01
	nop                                              ; $66b0: $00
	ld   b, $fd                                      ; $66b1: $06 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $66b3: $f0 $a0
	dec  c                                           ; $66b5: $0d
	rla                                              ; $66b6: $17
	ld   bc, $0aa0                                   ; $66b7: $01 $a0 $0a
	db   $10                                         ; $66ba: $10
	ld   bc, $01a0                                   ; $66bb: $01 $a0 $01
	nop                                              ; $66be: $00
	ld   [bc], a                                     ; $66bf: $02
	or   l                                           ; $66c0: $b5
	ldh  a, [$fd]                                    ; $66c1: $f0 $fd
	ldh  a, [$ac]                                    ; $66c3: $f0 $ac
	ld   bc, $0390                                   ; $66c5: $01 $90 $03
	or   [hl]                                        ; $66c8: $b6
	ldh  a, [$c1]                                    ; $66c9: $f0 $c1
	inc  b                                           ; $66cb: $04
	and  b                                           ; $66cc: $a0
	add  hl, bc                                      ; $66cd: $09
	ld   l, b                                        ; $66ce: $68
	ld   bc, $06a0                                   ; $66cf: $01 $a0 $06
	sbc  c                                           ; $66d2: $99
	ld   bc, $01a0                                   ; $66d3: $01 $a0 $01
	sbc  c                                           ; $66d6: $99
	ld   [bc], a                                     ; $66d7: $02
	and  b                                           ; $66d8: $a0
	dec  c                                           ; $66d9: $0d
	rla                                              ; $66da: $17
	ld   bc, $0aa0                                   ; $66db: $01 $a0 $0a
	db   $10                                         ; $66de: $10
	ld   bc, $01a0                                   ; $66df: $01 $a0 $01
	nop                                              ; $66e2: $00
	ld   [bc], a                                     ; $66e3: $02
	pop  bc                                          ; $66e4: $c1
	inc  bc                                          ; $66e5: $03
	and  b                                           ; $66e6: $a0
	rlca                                             ; $66e7: $07
	ld   [bc], a                                     ; $66e8: $02
	ld   bc, $01a0                                   ; $66e9: $01 $a0 $01
	nop                                              ; $66ec: $00
	rlca                                             ; $66ed: $07
	and  b                                           ; $66ee: $a0
	dec  c                                           ; $66ef: $0d
	rla                                              ; $66f0: $17
	ld   bc, $0aa0                                   ; $66f1: $01 $a0 $0a
	db   $10                                         ; $66f4: $10
	ld   bc, $01a0                                   ; $66f5: $01 $a0 $01
	nop                                              ; $66f8: $00
	ld   b, $c1                                      ; $66f9: $06 $c1
	inc  bc                                          ; $66fb: $03
	and  b                                           ; $66fc: $a0
	rlca                                             ; $66fd: $07
	ld   [bc], a                                     ; $66fe: $02
	ld   bc, $01a0                                   ; $66ff: $01 $a0 $01
	nop                                              ; $6702: $00
	rlca                                             ; $6703: $07
	db   $fd                                         ; $6704: $fd
	ldh  a, [$ac]                                    ; $6705: $f0 $ac
	ld   bc, $0390                                   ; $6707: $01 $90 $03
	or   h                                           ; $670a: $b4
	ldh  a, [$c1]                                    ; $670b: $f0 $c1
	inc  b                                           ; $670d: $04
	and  b                                           ; $670e: $a0
	add  hl, bc                                      ; $670f: $09
	ld   l, b                                        ; $6710: $68
	ld   bc, $06a0                                   ; $6711: $01 $a0 $06
	sbc  c                                           ; $6714: $99
	ld   bc, $01a0                                   ; $6715: $01 $a0 $01
	sbc  c                                           ; $6718: $99
	ld   b, $c1                                      ; $6719: $06 $c1
	inc  bc                                          ; $671b: $03
	and  b                                           ; $671c: $a0
	rlca                                             ; $671d: $07
	ld   [bc], a                                     ; $671e: $02
	ld   bc, $01a0                                   ; $671f: $01 $a0 $01
	nop                                              ; $6722: $00
	rlca                                             ; $6723: $07
	and  b                                           ; $6724: $a0
	dec  c                                           ; $6725: $0d
	rla                                              ; $6726: $17
	ld   bc, $0aa0                                   ; $6727: $01 $a0 $0a
	db   $10                                         ; $672a: $10
	ld   bc, $01a0                                   ; $672b: $01 $a0 $01
	nop                                              ; $672e: $00
	ld   b, $c1                                      ; $672f: $06 $c1
	inc  bc                                          ; $6731: $03
	and  b                                           ; $6732: $a0
	rlca                                             ; $6733: $07
	ld   [bc], a                                     ; $6734: $02
	ld   bc, $01a0                                   ; $6735: $01 $a0 $01
	nop                                              ; $6738: $00
	inc  bc                                          ; $6739: $03
	pop  bc                                          ; $673a: $c1
	inc  bc                                          ; $673b: $03
	and  b                                           ; $673c: $a0
	rlca                                             ; $673d: $07
	ld   [bc], a                                     ; $673e: $02
	ld   bc, $01a0                                   ; $673f: $01 $a0 $01
	nop                                              ; $6742: $00
	inc  bc                                          ; $6743: $03
	pop  bc                                          ; $6744: $c1
	inc  bc                                          ; $6745: $03
	and  b                                           ; $6746: $a0
	rlca                                             ; $6747: $07
	ld   [bc], a                                     ; $6748: $02
	ld   bc, $01a0                                   ; $6749: $01 $a0 $01
	nop                                              ; $674c: $00
	inc  bc                                          ; $674d: $03
	pop  bc                                          ; $674e: $c1
	inc  bc                                          ; $674f: $03
	and  b                                           ; $6750: $a0
	rlca                                             ; $6751: $07
	ld   [bc], a                                     ; $6752: $02
	ld   bc, $01a0                                   ; $6753: $01 $a0 $01
	nop                                              ; $6756: $00
	inc  bc                                          ; $6757: $03
	pop  bc                                          ; $6758: $c1
	inc  bc                                          ; $6759: $03
	and  b                                           ; $675a: $a0
	rlca                                             ; $675b: $07
	ld   [bc], a                                     ; $675c: $02
	ld   bc, $01a0                                   ; $675d: $01 $a0 $01
	nop                                              ; $6760: $00
	rlca                                             ; $6761: $07
	pop  bc                                          ; $6762: $c1
	inc  bc                                          ; $6763: $03
	and  b                                           ; $6764: $a0
	rlca                                             ; $6765: $07
	ld   [bc], a                                     ; $6766: $02
	ld   bc, $01a0                                   ; $6767: $01 $a0 $01
	nop                                              ; $676a: $00
	rlca                                             ; $676b: $07
	and  b                                           ; $676c: $a0
	dec  c                                           ; $676d: $0d
	rla                                              ; $676e: $17
	ld   bc, $0aa0                                   ; $676f: $01 $a0 $0a
	db   $10                                         ; $6772: $10
	ld   bc, $01a0                                   ; $6773: $01 $a0 $01
	nop                                              ; $6776: $00
	ld   b, $a0                                      ; $6777: $06 $a0
	dec  c                                           ; $6779: $0d
	rla                                              ; $677a: $17
	ld   bc, $0aa0                                   ; $677b: $01 $a0 $0a
	db   $10                                         ; $677e: $10
	ld   bc, $01a0                                   ; $677f: $01 $a0 $01
	nop                                              ; $6782: $00
	ld   b, $c1                                      ; $6783: $06 $c1
	inc  b                                           ; $6785: $04
	and  b                                           ; $6786: $a0
	add  hl, bc                                      ; $6787: $09
	ld   l, b                                        ; $6788: $68
	ld   bc, $06a0                                   ; $6789: $01 $a0 $06
	sbc  c                                           ; $678c: $99
	ld   bc, $01a0                                   ; $678d: $01 $a0 $01
	sbc  c                                           ; $6790: $99
	ld   b, $c1                                      ; $6791: $06 $c1
	inc  b                                           ; $6793: $04
	and  b                                           ; $6794: $a0
	add  hl, bc                                      ; $6795: $09
	ld   l, b                                        ; $6796: $68
	ld   bc, $06a0                                   ; $6797: $01 $a0 $06
	sbc  c                                           ; $679a: $99
	ld   bc, $01a0                                   ; $679b: $01 $a0 $01
	sbc  c                                           ; $679e: $99
	ld   [bc], a                                     ; $679f: $02
	and  b                                           ; $67a0: $a0
	dec  c                                           ; $67a1: $0d
	rla                                              ; $67a2: $17
	ld   bc, $0aa0                                   ; $67a3: $01 $a0 $0a
	db   $10                                         ; $67a6: $10
	ld   bc, $01a0                                   ; $67a7: $01 $a0 $01
	nop                                              ; $67aa: $00
	ld   [bc], a                                     ; $67ab: $02
	and  b                                           ; $67ac: $a0
	dec  c                                           ; $67ad: $0d
	rla                                              ; $67ae: $17
	ld   bc, $0aa0                                   ; $67af: $01 $a0 $0a
	db   $10                                         ; $67b2: $10
	ld   bc, $01a0                                   ; $67b3: $01 $a0 $01
	nop                                              ; $67b6: $00
	ld   b, $fd                                      ; $67b7: $06 $fd
	ldh  a, [$ac]                                    ; $67b9: $f0 $ac
	ld   bc, $0390                                   ; $67bb: $01 $90 $03
	or   [hl]                                        ; $67be: $b6
	ldh  a, [$c1]                                    ; $67bf: $f0 $c1
	inc  b                                           ; $67c1: $04
	and  b                                           ; $67c2: $a0
	add  hl, bc                                      ; $67c3: $09
	ld   l, b                                        ; $67c4: $68
	ld   bc, $06a0                                   ; $67c5: $01 $a0 $06
	sbc  c                                           ; $67c8: $99
	ld   bc, $01a0                                   ; $67c9: $01 $a0 $01
	sbc  c                                           ; $67cc: $99
	ld   [bc], a                                     ; $67cd: $02
	and  b                                           ; $67ce: $a0
	dec  c                                           ; $67cf: $0d
	rla                                              ; $67d0: $17
	ld   bc, $0aa0                                   ; $67d1: $01 $a0 $0a
	db   $10                                         ; $67d4: $10
	ld   bc, $01a0                                   ; $67d5: $01 $a0 $01
	nop                                              ; $67d8: $00
	ld   [bc], a                                     ; $67d9: $02
	pop  bc                                          ; $67da: $c1
	inc  bc                                          ; $67db: $03
	and  b                                           ; $67dc: $a0
	rlca                                             ; $67dd: $07
	ld   [bc], a                                     ; $67de: $02
	ld   bc, $01a0                                   ; $67df: $01 $a0 $01
	nop                                              ; $67e2: $00
	rlca                                             ; $67e3: $07
	and  b                                           ; $67e4: $a0
	dec  c                                           ; $67e5: $0d
	rla                                              ; $67e6: $17
	ld   bc, $0aa0                                   ; $67e7: $01 $a0 $0a
	db   $10                                         ; $67ea: $10
	ld   bc, $01a0                                   ; $67eb: $01 $a0 $01
	nop                                              ; $67ee: $00
	ld   b, $c1                                      ; $67ef: $06 $c1
	inc  bc                                          ; $67f1: $03
	and  b                                           ; $67f2: $a0
	rlca                                             ; $67f3: $07
	ld   [bc], a                                     ; $67f4: $02
	ld   bc, $01a0                                   ; $67f5: $01 $a0 $01
	nop                                              ; $67f8: $00
	rlca                                             ; $67f9: $07
	xor  h                                           ; $67fa: $ac
	ld   bc, $0390                                   ; $67fb: $01 $90 $03
	pop  bc                                          ; $67fe: $c1
	inc  b                                           ; $67ff: $04
	and  b                                           ; $6800: $a0
	add  hl, bc                                      ; $6801: $09
	ld   l, b                                        ; $6802: $68
	ld   bc, $06a0                                   ; $6803: $01 $a0 $06
	sbc  c                                           ; $6806: $99
	ld   bc, $01a0                                   ; $6807: $01 $a0 $01
	sbc  c                                           ; $680a: $99
	ld   b, $c1                                      ; $680b: $06 $c1
	inc  bc                                          ; $680d: $03
	and  b                                           ; $680e: $a0
	rlca                                             ; $680f: $07
	ld   [bc], a                                     ; $6810: $02
	ld   bc, $01a0                                   ; $6811: $01 $a0 $01
	nop                                              ; $6814: $00
	rlca                                             ; $6815: $07
	and  b                                           ; $6816: $a0
	dec  c                                           ; $6817: $0d
	rla                                              ; $6818: $17
	ld   bc, $0aa0                                   ; $6819: $01 $a0 $0a
	db   $10                                         ; $681c: $10
	ld   bc, $01a0                                   ; $681d: $01 $a0 $01
	nop                                              ; $6820: $00
	ld   b, $c1                                      ; $6821: $06 $c1
	inc  b                                           ; $6823: $04
	and  b                                           ; $6824: $a0
	add  hl, bc                                      ; $6825: $09
	ld   l, b                                        ; $6826: $68
	ld   bc, $06a0                                   ; $6827: $01 $a0 $06
	sbc  c                                           ; $682a: $99
	ld   bc, $01a0                                   ; $682b: $01 $a0 $01
	sbc  c                                           ; $682e: $99
	ld   b, $1f                                      ; $682f: $06 $1f
	ld   [$03c1], sp                                 ; $6831: $08 $c1 $03
	and  b                                           ; $6834: $a0
	rlca                                             ; $6835: $07
	ld   [bc], a                                     ; $6836: $02
	ld   bc, $01a0                                   ; $6837: $01 $a0 $01
	nop                                              ; $683a: $00
	rlca                                             ; $683b: $07
	and  b                                           ; $683c: $a0
	dec  c                                           ; $683d: $0d
	rla                                              ; $683e: $17
	ld   bc, $0aa0                                   ; $683f: $01 $a0 $0a
	db   $10                                         ; $6842: $10
	ld   bc, $01a0                                   ; $6843: $01 $a0 $01
	nop                                              ; $6846: $00
	ld   b, $c1                                      ; $6847: $06 $c1
	inc  bc                                          ; $6849: $03
	and  b                                           ; $684a: $a0
	rlca                                             ; $684b: $07
	ld   [bc], a                                     ; $684c: $02
	ld   bc, $01a0                                   ; $684d: $01 $a0 $01
	nop                                              ; $6850: $00
	rlca                                             ; $6851: $07
	xor  h                                           ; $6852: $ac
	ld   bc, $0390                                   ; $6853: $01 $90 $03
	xor  h                                           ; $6856: $ac
	ld   bc, $0390                                   ; $6857: $01 $90 $03
	pop  bc                                          ; $685a: $c1
	inc  b                                           ; $685b: $04
	and  b                                           ; $685c: $a0
	add  hl, bc                                      ; $685d: $09
	ld   l, b                                        ; $685e: $68
	ld   bc, $06a0                                   ; $685f: $01 $a0 $06
	sbc  c                                           ; $6862: $99
	ld   bc, $01a0                                   ; $6863: $01 $a0 $01
	sbc  c                                           ; $6866: $99
	ld   b, $c1                                      ; $6867: $06 $c1
	inc  bc                                          ; $6869: $03
	and  b                                           ; $686a: $a0
	rlca                                             ; $686b: $07
	ld   [bc], a                                     ; $686c: $02
	ld   bc, $01a0                                   ; $686d: $01 $a0 $01
	nop                                              ; $6870: $00
	rlca                                             ; $6871: $07
	and  b                                           ; $6872: $a0
	dec  c                                           ; $6873: $0d
	rla                                              ; $6874: $17
	ld   bc, $0aa0                                   ; $6875: $01 $a0 $0a
	db   $10                                         ; $6878: $10
	ld   bc, $01a0                                   ; $6879: $01 $a0 $01
	nop                                              ; $687c: $00
	ld   b, $c1                                      ; $687d: $06 $c1
	inc  b                                           ; $687f: $04
	and  b                                           ; $6880: $a0
	add  hl, bc                                      ; $6881: $09
	ld   l, b                                        ; $6882: $68
	ld   bc, $06a0                                   ; $6883: $01 $a0 $06
	sbc  c                                           ; $6886: $99
	ld   bc, $01a0                                   ; $6887: $01 $a0 $01
	sbc  c                                           ; $688a: $99
	ld   b, $1f                                      ; $688b: $06 $1f
	db   $10                                         ; $688d: $10
	pop  bc                                          ; $688e: $c1
	inc  bc                                          ; $688f: $03
	and  b                                           ; $6890: $a0
	rlca                                             ; $6891: $07
	ld   [bc], a                                     ; $6892: $02
	ld   bc, $01a0                                   ; $6893: $01 $a0 $01
	nop                                              ; $6896: $00
	rlca                                             ; $6897: $07
	pop  bc                                          ; $6898: $c1
	inc  bc                                          ; $6899: $03
	and  b                                           ; $689a: $a0
	rlca                                             ; $689b: $07
	ld   [bc], a                                     ; $689c: $02
	ld   bc, $01a0                                   ; $689d: $01 $a0 $01
	nop                                              ; $68a0: $00
	rlca                                             ; $68a1: $07
	and  b                                           ; $68a2: $a0
	dec  c                                           ; $68a3: $0d
	rla                                              ; $68a4: $17
	ld   bc, $0aa0                                   ; $68a5: $01 $a0 $0a
	db   $10                                         ; $68a8: $10
	ld   bc, $01a0                                   ; $68a9: $01 $a0 $01
	nop                                              ; $68ac: $00
	ld   [bc], a                                     ; $68ad: $02
	and  b                                           ; $68ae: $a0
	dec  c                                           ; $68af: $0d
	rla                                              ; $68b0: $17
	ld   bc, $0aa0                                   ; $68b1: $01 $a0 $0a
	db   $10                                         ; $68b4: $10
	ld   bc, $01a0                                   ; $68b5: $01 $a0 $01
	nop                                              ; $68b8: $00
	ld   [bc], a                                     ; $68b9: $02
	pop  bc                                          ; $68ba: $c1
	inc  b                                           ; $68bb: $04
	and  b                                           ; $68bc: $a0
	add  hl, bc                                      ; $68bd: $09
	ld   l, b                                        ; $68be: $68
	ld   bc, $06a0                                   ; $68bf: $01 $a0 $06
	sbc  c                                           ; $68c2: $99
	ld   bc, $01a0                                   ; $68c3: $01 $a0 $01
	sbc  c                                           ; $68c6: $99
	ld   [bc], a                                     ; $68c7: $02
	pop  bc                                          ; $68c8: $c1
	inc  b                                           ; $68c9: $04
	and  b                                           ; $68ca: $a0
	add  hl, bc                                      ; $68cb: $09
	ld   l, b                                        ; $68cc: $68
	ld   bc, $06a0                                   ; $68cd: $01 $a0 $06
	sbc  c                                           ; $68d0: $99
	ld   bc, $01a0                                   ; $68d1: $01 $a0 $01
	sbc  c                                           ; $68d4: $99
	ld   [bc], a                                     ; $68d5: $02
	and  b                                           ; $68d6: $a0
	dec  c                                           ; $68d7: $0d
	rla                                              ; $68d8: $17
	ld   bc, $0aa0                                   ; $68d9: $01 $a0 $0a
	db   $10                                         ; $68dc: $10
	ld   bc, $01a0                                   ; $68dd: $01 $a0 $01
	nop                                              ; $68e0: $00
	ld   b, $c1                                      ; $68e1: $06 $c1
	inc  b                                           ; $68e3: $04
	and  b                                           ; $68e4: $a0
	add  hl, bc                                      ; $68e5: $09
	ld   l, b                                        ; $68e6: $68
	ld   bc, $06a0                                   ; $68e7: $01 $a0 $06
	sbc  c                                           ; $68ea: $99
	ld   bc, $01a0                                   ; $68eb: $01 $a0 $01
	sbc  c                                           ; $68ee: $99
	ld   b, $b0                                      ; $68ef: $06 $b0
	di                                               ; $68f1: $f3
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	pop  bc                                          ; $68f4: $c1
	inc  b                                           ; $68f5: $04
	and  b                                           ; $68f6: $a0
	add  hl, bc                                      ; $68f7: $09
	ld   l, b                                        ; $68f8: $68
	ld   bc, $06a0                                   ; $68f9: $01 $a0 $06
	sbc  c                                           ; $68fc: $99
	ld   bc, $01a0                                   ; $68fd: $01 $a0 $01
	sbc  c                                           ; $6900: $99
	ld   b, $c1                                      ; $6901: $06 $c1
	inc  bc                                          ; $6903: $03
	and  b                                           ; $6904: $a0
	rlca                                             ; $6905: $07
	ld   [bc], a                                     ; $6906: $02
	ld   bc, $01a0                                   ; $6907: $01 $a0 $01
	nop                                              ; $690a: $00
	rlca                                             ; $690b: $07
	and  b                                           ; $690c: $a0
	dec  c                                           ; $690d: $0d
	rla                                              ; $690e: $17
	ld   bc, $0aa0                                   ; $690f: $01 $a0 $0a
	db   $10                                         ; $6912: $10
	ld   bc, $01a0                                   ; $6913: $01 $a0 $01
	nop                                              ; $6916: $00
	ld   b, $c1                                      ; $6917: $06 $c1
	inc  bc                                          ; $6919: $03
	and  b                                           ; $691a: $a0
	rlca                                             ; $691b: $07
	ld   [bc], a                                     ; $691c: $02
	ld   bc, $01a0                                   ; $691d: $01 $a0 $01
	nop                                              ; $6920: $00
	rlca                                             ; $6921: $07
	xor  l                                           ; $6922: $ad
	nop                                              ; $6923: $00
	ld   [$0900], sp                                 ; $6924: $08 $00 $09
	nop                                              ; $6927: $00
	db   $fd                                         ; $6928: $fd
	di                                               ; $6929: $f3
	and  d                                           ; $692a: $a2
	ld   [bc], a                                     ; $692b: $02
	rst  ToBoot                                         ; $692c: $c7
	jr   z, @-$5b                                    ; $692d: $28 $a3

	ld   h, $fd                                      ; $692f: $26 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6931: $f0 $a0
	add  hl, bc                                      ; $6933: $09
	ld   [hl+], a                                    ; $6934: $22
	ld   [bc], a                                     ; $6935: $02
	and  b                                           ; $6936: $a0
	inc  bc                                          ; $6937: $03
	ld   [hl+], a                                    ; $6938: $22
	ld   [bc], a                                     ; $6939: $02
	rra                                              ; $693a: $1f
	inc  b                                           ; $693b: $04
	cp   e                                           ; $693c: $bb
	ldh  a, [$fd]                                    ; $693d: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $693f: $f0 $a0
	add  hl, bc                                      ; $6941: $09
	jr   nz, jr_0fd_6946                             ; $6942: $20 $02

	and  b                                           ; $6944: $a0
	inc  bc                                          ; $6945: $03

jr_0fd_6946:
	jr   nz, jr_0fd_694a                             ; $6946: $20 $02

	rra                                              ; $6948: $1f
	inc  b                                           ; $6949: $04

jr_0fd_694a:
	or   e                                           ; $694a: $b3
	ldh  a, [$fd]                                    ; $694b: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $694d: $f0 $a0
	add  hl, bc                                      ; $694f: $09
	daa                                              ; $6950: $27
	ld   [bc], a                                     ; $6951: $02
	and  b                                           ; $6952: $a0
	inc  bc                                          ; $6953: $03
	daa                                              ; $6954: $27
	ld   [bc], a                                     ; $6955: $02
	rra                                              ; $6956: $1f
	inc  b                                           ; $6957: $04
	or   a                                           ; $6958: $b7
	ldh  a, [$fd]                                    ; $6959: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $695b: $f0 $a0
	add  hl, bc                                      ; $695d: $09
	inc  h                                           ; $695e: $24
	ld   [bc], a                                     ; $695f: $02
	and  b                                           ; $6960: $a0
	inc  bc                                          ; $6961: $03
	inc  h                                           ; $6962: $24
	ld   [bc], a                                     ; $6963: $02
	rra                                              ; $6964: $1f
	inc  b                                           ; $6965: $04
	or   e                                           ; $6966: $b3
	ldh  a, [$fd]                                    ; $6967: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6969: $f0 $a0
	add  hl, bc                                      ; $696b: $09
	daa                                              ; $696c: $27
	ld   [bc], a                                     ; $696d: $02
	and  b                                           ; $696e: $a0
	inc  bc                                          ; $696f: $03
	daa                                              ; $6970: $27
	ld   [bc], a                                     ; $6971: $02
	rra                                              ; $6972: $1f
	inc  b                                           ; $6973: $04
	or   c                                           ; $6974: $b1
	ldh  a, [$fd]                                    ; $6975: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6977: $f0 $a0
	add  hl, bc                                      ; $6979: $09
	ld   h, $02                                      ; $697a: $26 $02
	and  b                                           ; $697c: $a0
	inc  bc                                          ; $697d: $03
	ld   h, $04                                      ; $697e: $26 $04
	rra                                              ; $6980: $1f
	ld   [bc], a                                     ; $6981: $02
	or   c                                           ; $6982: $b1
	ldh  a, [$fd]                                    ; $6983: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6985: $f0 $a0
	add  hl, bc                                      ; $6987: $09
	ld   [hl+], a                                    ; $6988: $22
	ld   [bc], a                                     ; $6989: $02
	and  b                                           ; $698a: $a0
	inc  bc                                          ; $698b: $03
	ld   [hl+], a                                    ; $698c: $22
	ld   [bc], a                                     ; $698d: $02
	rra                                              ; $698e: $1f
	inc  b                                           ; $698f: $04
	or   e                                           ; $6990: $b3
	ldh  a, [$fd]                                    ; $6991: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6993: $f0 $a0
	add  hl, bc                                      ; $6995: $09
	jr   nz, jr_0fd_699a                             ; $6996: $20 $02

	and  b                                           ; $6998: $a0
	inc  bc                                          ; $6999: $03

jr_0fd_699a:
	jr   nz, jr_0fd_699e                             ; $699a: $20 $02

	rra                                              ; $699c: $1f
	inc  b                                           ; $699d: $04

jr_0fd_699e:
	or   e                                           ; $699e: $b3
	ldh  a, [$fd]                                    ; $699f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69a1: $f0 $a0
	add  hl, bc                                      ; $69a3: $09
	ld   a, [de]                                     ; $69a4: $1a
	ld   [bc], a                                     ; $69a5: $02
	and  b                                           ; $69a6: $a0
	inc  bc                                          ; $69a7: $03
	ld   a, [de]                                     ; $69a8: $1a
	ld   [bc], a                                     ; $69a9: $02
	rra                                              ; $69aa: $1f
	inc  b                                           ; $69ab: $04
	or   c                                           ; $69ac: $b1
	ldh  a, [$fd]                                    ; $69ad: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69af: $f0 $a0
	add  hl, bc                                      ; $69b1: $09
	jr   nz, jr_0fd_69b6                             ; $69b2: $20 $02

	and  b                                           ; $69b4: $a0
	inc  bc                                          ; $69b5: $03

jr_0fd_69b6:
	jr   nz, jr_0fd_69ba                             ; $69b6: $20 $02

	rra                                              ; $69b8: $1f
	inc  b                                           ; $69b9: $04

jr_0fd_69ba:
	or   c                                           ; $69ba: $b1
	ldh  a, [$fd]                                    ; $69bb: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69bd: $f0 $a0
	add  hl, bc                                      ; $69bf: $09
	ld   [hl+], a                                    ; $69c0: $22
	ld   [bc], a                                     ; $69c1: $02
	and  b                                           ; $69c2: $a0
	inc  bc                                          ; $69c3: $03
	ld   [hl+], a                                    ; $69c4: $22
	ld   [bc], a                                     ; $69c5: $02
	rra                                              ; $69c6: $1f
	inc  b                                           ; $69c7: $04
	or   e                                           ; $69c8: $b3
	ldh  a, [$fd]                                    ; $69c9: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69cb: $f0 $a0
	add  hl, bc                                      ; $69cd: $09
	jr   nz, jr_0fd_69d2                             ; $69ce: $20 $02

	and  b                                           ; $69d0: $a0
	inc  bc                                          ; $69d1: $03

jr_0fd_69d2:
	jr   nz, jr_0fd_69d6                             ; $69d2: $20 $02

	rra                                              ; $69d4: $1f
	inc  b                                           ; $69d5: $04

jr_0fd_69d6:
	or   e                                           ; $69d6: $b3
	ldh  a, [$fd]                                    ; $69d7: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69d9: $f0 $a0
	add  hl, bc                                      ; $69db: $09
	daa                                              ; $69dc: $27
	ld   [bc], a                                     ; $69dd: $02
	and  b                                           ; $69de: $a0
	inc  bc                                          ; $69df: $03
	daa                                              ; $69e0: $27
	ld   [bc], a                                     ; $69e1: $02
	rra                                              ; $69e2: $1f
	inc  b                                           ; $69e3: $04
	or   c                                           ; $69e4: $b1
	ldh  a, [$fd]                                    ; $69e5: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69e7: $f0 $a0
	add  hl, bc                                      ; $69e9: $09
	add  hl, hl                                      ; $69ea: $29
	ld   [bc], a                                     ; $69eb: $02
	and  b                                           ; $69ec: $a0
	inc  bc                                          ; $69ed: $03
	add  hl, hl                                      ; $69ee: $29
	ld   [bc], a                                     ; $69ef: $02
	rra                                              ; $69f0: $1f
	inc  b                                           ; $69f1: $04
	or   c                                           ; $69f2: $b1
	ldh  a, [$fd]                                    ; $69f3: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $69f5: $f0 $a0
	add  hl, bc                                      ; $69f7: $09
	ld   a, [hl+]                                    ; $69f8: $2a
	ld   [bc], a                                     ; $69f9: $02
	and  b                                           ; $69fa: $a0
	inc  bc                                          ; $69fb: $03
	ld   a, [hl+]                                    ; $69fc: $2a
	ld   [bc], a                                     ; $69fd: $02
	rra                                              ; $69fe: $1f
	inc  b                                           ; $69ff: $04
	or   c                                           ; $6a00: $b1
	ldh  a, [$fd]                                    ; $6a01: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6a03: $f0 $a0
	add  hl, bc                                      ; $6a05: $09
	add  hl, hl                                      ; $6a06: $29
	inc  b                                           ; $6a07: $04
	ld   a, [hl+]                                    ; $6a08: $2a
	inc  b                                           ; $6a09: $04
	or   c                                           ; $6a0a: $b1
	ldh  a, [$29]                                    ; $6a0b: $f0 $29
	ld   [$0827], sp                                 ; $6a0d: $08 $27 $08
	ld   [hl+], a                                    ; $6a10: $22
	ld   [$081a], sp                                 ; $6a11: $08 $1a $08
	db   $fd                                         ; $6a14: $fd
	ldh  a, [$1f]                                    ; $6a15: $f0 $1f
	ld   [$09a0], sp                                 ; $6a17: $08 $a0 $09
	daa                                              ; $6a1a: $27
	ld   [bc], a                                     ; $6a1b: $02
	and  b                                           ; $6a1c: $a0
	inc  bc                                          ; $6a1d: $03
	daa                                              ; $6a1e: $27
	ld   [bc], a                                     ; $6a1f: $02
	and  b                                           ; $6a20: $a0
	add  hl, bc                                      ; $6a21: $09
	daa                                              ; $6a22: $27
	ld   [bc], a                                     ; $6a23: $02
	and  b                                           ; $6a24: $a0
	inc  bc                                          ; $6a25: $03
	daa                                              ; $6a26: $27
	ld   [bc], a                                     ; $6a27: $02
	or   c                                           ; $6a28: $b1
	ldh  a, [$fd]                                    ; $6a29: $f0 $fd
	ldh  a, [$1f]                                    ; $6a2b: $f0 $1f
	ld   [$09a0], sp                                 ; $6a2d: $08 $a0 $09
	ld   h, $02                                      ; $6a30: $26 $02
	and  b                                           ; $6a32: $a0
	inc  bc                                          ; $6a33: $03
	ld   h, $02                                      ; $6a34: $26 $02
	and  b                                           ; $6a36: $a0
	add  hl, bc                                      ; $6a37: $09
	ld   h, $02                                      ; $6a38: $26 $02
	and  b                                           ; $6a3a: $a0
	inc  bc                                          ; $6a3b: $03
	ld   h, $02                                      ; $6a3c: $26 $02
	or   c                                           ; $6a3e: $b1
	ldh  a, [$1f]                                    ; $6a3f: $f0 $1f
	ld   [$09a0], sp                                 ; $6a41: $08 $a0 $09
	jr   z, jr_0fd_6a48                              ; $6a44: $28 $02

	and  b                                           ; $6a46: $a0
	inc  bc                                          ; $6a47: $03

jr_0fd_6a48:
	jr   z, jr_0fd_6a4c                              ; $6a48: $28 $02

	and  b                                           ; $6a4a: $a0
	add  hl, bc                                      ; $6a4b: $09

jr_0fd_6a4c:
	jr   z, jr_0fd_6a50                              ; $6a4c: $28 $02

	and  b                                           ; $6a4e: $a0
	inc  bc                                          ; $6a4f: $03

jr_0fd_6a50:
	jr   z, @+$04                                    ; $6a50: $28 $02

	db   $fd                                         ; $6a52: $fd
	ldh  a, [$1f]                                    ; $6a53: $f0 $1f
	ld   [$09a0], sp                                 ; $6a55: $08 $a0 $09
	daa                                              ; $6a58: $27
	ld   [bc], a                                     ; $6a59: $02
	and  b                                           ; $6a5a: $a0
	inc  bc                                          ; $6a5b: $03
	daa                                              ; $6a5c: $27
	ld   [bc], a                                     ; $6a5d: $02
	and  b                                           ; $6a5e: $a0
	add  hl, bc                                      ; $6a5f: $09
	daa                                              ; $6a60: $27
	ld   [bc], a                                     ; $6a61: $02
	and  b                                           ; $6a62: $a0
	inc  bc                                          ; $6a63: $03
	daa                                              ; $6a64: $27
	ld   [bc], a                                     ; $6a65: $02
	cp   c                                           ; $6a66: $b9
	ldh  a, [$1f]                                    ; $6a67: $f0 $1f
	ld   [$09a0], sp                                 ; $6a69: $08 $a0 $09
	ld   h, $02                                      ; $6a6c: $26 $02
	and  b                                           ; $6a6e: $a0
	inc  bc                                          ; $6a6f: $03
	ld   h, $02                                      ; $6a70: $26 $02
	and  b                                           ; $6a72: $a0
	add  hl, bc                                      ; $6a73: $09
	ld   h, $02                                      ; $6a74: $26 $02
	and  b                                           ; $6a76: $a0
	inc  bc                                          ; $6a77: $03
	ld   h, $02                                      ; $6a78: $26 $02
	db   $fd                                         ; $6a7a: $fd
	ldh  a, [$1f]                                    ; $6a7b: $f0 $1f
	ld   [$09a0], sp                                 ; $6a7d: $08 $a0 $09
	daa                                              ; $6a80: $27
	ld   [bc], a                                     ; $6a81: $02
	and  b                                           ; $6a82: $a0
	inc  bc                                          ; $6a83: $03
	daa                                              ; $6a84: $27
	ld   [bc], a                                     ; $6a85: $02
	and  b                                           ; $6a86: $a0
	add  hl, bc                                      ; $6a87: $09
	daa                                              ; $6a88: $27
	ld   [bc], a                                     ; $6a89: $02
	and  b                                           ; $6a8a: $a0
	inc  bc                                          ; $6a8b: $03
	daa                                              ; $6a8c: $27
	ld   [bc], a                                     ; $6a8d: $02
	or   c                                           ; $6a8e: $b1
	ldh  a, [$fd]                                    ; $6a8f: $f0 $fd
	ldh  a, [$1f]                                    ; $6a91: $f0 $1f
	ld   [$09a0], sp                                 ; $6a93: $08 $a0 $09
	dec  h                                           ; $6a96: $25
	ld   [bc], a                                     ; $6a97: $02
	and  b                                           ; $6a98: $a0
	inc  bc                                          ; $6a99: $03
	dec  h                                           ; $6a9a: $25
	ld   [bc], a                                     ; $6a9b: $02
	and  b                                           ; $6a9c: $a0
	add  hl, bc                                      ; $6a9d: $09
	dec  h                                           ; $6a9e: $25
	ld   [bc], a                                     ; $6a9f: $02
	and  b                                           ; $6aa0: $a0
	inc  bc                                          ; $6aa1: $03
	dec  h                                           ; $6aa2: $25
	ld   [bc], a                                     ; $6aa3: $02
	or   c                                           ; $6aa4: $b1
	ldh  a, [$1f]                                    ; $6aa5: $f0 $1f
	ld   [$09a0], sp                                 ; $6aa7: $08 $a0 $09
	daa                                              ; $6aaa: $27
	ld   [bc], a                                     ; $6aab: $02
	and  b                                           ; $6aac: $a0
	inc  bc                                          ; $6aad: $03
	daa                                              ; $6aae: $27
	ld   [bc], a                                     ; $6aaf: $02
	and  b                                           ; $6ab0: $a0
	add  hl, bc                                      ; $6ab1: $09
	daa                                              ; $6ab2: $27
	ld   [bc], a                                     ; $6ab3: $02
	and  b                                           ; $6ab4: $a0
	inc  bc                                          ; $6ab5: $03
	daa                                              ; $6ab6: $27
	ld   [bc], a                                     ; $6ab7: $02
	db   $fd                                         ; $6ab8: $fd
	ldh  a, [$1f]                                    ; $6ab9: $f0 $1f
	ld   [$09a0], sp                                 ; $6abb: $08 $a0 $09
	dec  h                                           ; $6abe: $25
	ld   [bc], a                                     ; $6abf: $02
	and  b                                           ; $6ac0: $a0
	inc  bc                                          ; $6ac1: $03
	dec  h                                           ; $6ac2: $25
	ld   [bc], a                                     ; $6ac3: $02
	and  b                                           ; $6ac4: $a0
	add  hl, bc                                      ; $6ac5: $09
	dec  h                                           ; $6ac6: $25
	ld   [bc], a                                     ; $6ac7: $02
	and  b                                           ; $6ac8: $a0
	inc  bc                                          ; $6ac9: $03
	dec  h                                           ; $6aca: $25
	ld   [bc], a                                     ; $6acb: $02
	or   d                                           ; $6acc: $b2
	ldh  a, [$fd]                                    ; $6acd: $f0 $fd
	ldh  a, [$1f]                                    ; $6acf: $f0 $1f
	ld   [$09a0], sp                                 ; $6ad1: $08 $a0 $09
	daa                                              ; $6ad4: $27
	ld   [bc], a                                     ; $6ad5: $02
	and  b                                           ; $6ad6: $a0
	inc  bc                                          ; $6ad7: $03
	daa                                              ; $6ad8: $27
	ld   [bc], a                                     ; $6ad9: $02
	and  b                                           ; $6ada: $a0
	add  hl, bc                                      ; $6adb: $09
	daa                                              ; $6adc: $27
	ld   [bc], a                                     ; $6add: $02
	and  b                                           ; $6ade: $a0
	inc  bc                                          ; $6adf: $03
	daa                                              ; $6ae0: $27
	ld   [bc], a                                     ; $6ae1: $02
	or   c                                           ; $6ae2: $b1
	ldh  a, [$fd]                                    ; $6ae3: $f0 $fd
	ldh  a, [$1f]                                    ; $6ae5: $f0 $1f
	ld   [$09a0], sp                                 ; $6ae7: $08 $a0 $09
	ld   h, $02                                      ; $6aea: $26 $02
	and  b                                           ; $6aec: $a0
	inc  bc                                          ; $6aed: $03
	ld   h, $02                                      ; $6aee: $26 $02
	and  b                                           ; $6af0: $a0
	add  hl, bc                                      ; $6af1: $09
	ld   h, $02                                      ; $6af2: $26 $02
	and  b                                           ; $6af4: $a0
	inc  bc                                          ; $6af5: $03
	ld   h, $02                                      ; $6af6: $26 $02
	or   c                                           ; $6af8: $b1
	ldh  a, [$fd]                                    ; $6af9: $f0 $fd
	ldh  a, [$1f]                                    ; $6afb: $f0 $1f
	ld   [$09a0], sp                                 ; $6afd: $08 $a0 $09
	daa                                              ; $6b00: $27
	ld   [bc], a                                     ; $6b01: $02
	and  b                                           ; $6b02: $a0
	inc  bc                                          ; $6b03: $03
	daa                                              ; $6b04: $27
	ld   [bc], a                                     ; $6b05: $02
	and  b                                           ; $6b06: $a0
	add  hl, bc                                      ; $6b07: $09
	daa                                              ; $6b08: $27
	ld   [bc], a                                     ; $6b09: $02
	and  b                                           ; $6b0a: $a0
	inc  bc                                          ; $6b0b: $03
	daa                                              ; $6b0c: $27
	ld   [bc], a                                     ; $6b0d: $02
	or   e                                           ; $6b0e: $b3
	ldh  a, [$fd]                                    ; $6b0f: $f0 $fd
	ldh  a, [$1f]                                    ; $6b11: $f0 $1f
	ld   [$09a0], sp                                 ; $6b13: $08 $a0 $09
	ld   h, $02                                      ; $6b16: $26 $02
	and  b                                           ; $6b18: $a0
	inc  bc                                          ; $6b19: $03
	ld   h, $02                                      ; $6b1a: $26 $02
	and  b                                           ; $6b1c: $a0
	add  hl, bc                                      ; $6b1d: $09
	ld   h, $02                                      ; $6b1e: $26 $02
	and  b                                           ; $6b20: $a0
	inc  bc                                          ; $6b21: $03
	ld   h, $02                                      ; $6b22: $26 $02
	or   c                                           ; $6b24: $b1
	ldh  a, [$1f]                                    ; $6b25: $f0 $1f
	ld   [$09a0], sp                                 ; $6b27: $08 $a0 $09
	inc  h                                           ; $6b2a: $24
	ld   [bc], a                                     ; $6b2b: $02
	and  b                                           ; $6b2c: $a0
	inc  bc                                          ; $6b2d: $03
	inc  h                                           ; $6b2e: $24
	ld   [bc], a                                     ; $6b2f: $02
	and  b                                           ; $6b30: $a0
	add  hl, bc                                      ; $6b31: $09
	inc  h                                           ; $6b32: $24
	ld   [bc], a                                     ; $6b33: $02
	and  b                                           ; $6b34: $a0
	inc  bc                                          ; $6b35: $03
	inc  h                                           ; $6b36: $24
	ld   [bc], a                                     ; $6b37: $02
	rra                                              ; $6b38: $1f
	ld   [$09a0], sp                                 ; $6b39: $08 $a0 $09
	ld   h, $02                                      ; $6b3c: $26 $02
	and  b                                           ; $6b3e: $a0
	inc  bc                                          ; $6b3f: $03
	ld   h, $02                                      ; $6b40: $26 $02
	and  b                                           ; $6b42: $a0
	add  hl, bc                                      ; $6b43: $09
	ld   h, $02                                      ; $6b44: $26 $02
	and  b                                           ; $6b46: $a0
	inc  bc                                          ; $6b47: $03
	ld   h, $02                                      ; $6b48: $26 $02
	db   $fd                                         ; $6b4a: $fd
	ldh  a, [$1f]                                    ; $6b4b: $f0 $1f
	ld   [$09a0], sp                                 ; $6b4d: $08 $a0 $09
	daa                                              ; $6b50: $27
	ld   [bc], a                                     ; $6b51: $02
	and  b                                           ; $6b52: $a0
	inc  bc                                          ; $6b53: $03
	daa                                              ; $6b54: $27
	ld   [bc], a                                     ; $6b55: $02
	and  b                                           ; $6b56: $a0
	add  hl, bc                                      ; $6b57: $09
	daa                                              ; $6b58: $27
	ld   [bc], a                                     ; $6b59: $02
	and  b                                           ; $6b5a: $a0
	inc  bc                                          ; $6b5b: $03
	daa                                              ; $6b5c: $27
	ld   [bc], a                                     ; $6b5d: $02
	or   d                                           ; $6b5e: $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $6b5f: $f0 $a0
	rlca                                             ; $6b61: $07
	inc  hl                                          ; $6b62: $23
	ld   [bc], a                                     ; $6b63: $02
	dec  h                                           ; $6b64: $25
	ld   [bc], a                                     ; $6b65: $02
	daa                                              ; $6b66: $27
	ld   [bc], a                                     ; $6b67: $02
	add  hl, hl                                      ; $6b68: $29
	ld   [bc], a                                     ; $6b69: $02
	and  b                                           ; $6b6a: $a0
	ld   [$022a], sp                                 ; $6b6b: $08 $2a $02
	jr   nc, jr_0fd_6b72                             ; $6b6e: $30 $02

	ld   [hl-], a                                    ; $6b70: $32
	ld   [bc], a                                     ; $6b71: $02

jr_0fd_6b72:
	inc  sp                                          ; $6b72: $33
	ld   [bc], a                                     ; $6b73: $02
	and  b                                           ; $6b74: $a0
	add  hl, bc                                      ; $6b75: $09
	dec  [hl]                                        ; $6b76: $35
	ld   [bc], a                                     ; $6b77: $02
	rra                                              ; $6b78: $1f
	ld   [bc], a                                     ; $6b79: $02
	ld   [hl-], a                                    ; $6b7a: $32
	ld   [bc], a                                     ; $6b7b: $02
	and  b                                           ; $6b7c: $a0
	ld   [bc], a                                     ; $6b7d: $02
	dec  [hl]                                        ; $6b7e: $35
	ld   [bc], a                                     ; $6b7f: $02
	and  b                                           ; $6b80: $a0
	add  hl, bc                                      ; $6b81: $09
	ld   a, [hl+]                                    ; $6b82: $2a
	ld   [bc], a                                     ; $6b83: $02
	and  b                                           ; $6b84: $a0
	ld   [bc], a                                     ; $6b85: $02
	ld   [hl-], a                                    ; $6b86: $32
	ld   [bc], a                                     ; $6b87: $02
	and  b                                           ; $6b88: $a0
	add  hl, bc                                      ; $6b89: $09
	dec  h                                           ; $6b8a: $25
	ld   [bc], a                                     ; $6b8b: $02
	and  b                                           ; $6b8c: $a0
	ld   [bc], a                                     ; $6b8d: $02
	ld   a, [hl+]                                    ; $6b8e: $2a
	ld   [bc], a                                     ; $6b8f: $02
	and  b                                           ; $6b90: $a0
	add  hl, bc                                      ; $6b91: $09
	dec  [hl]                                        ; $6b92: $35
	ld   [bc], a                                     ; $6b93: $02
	and  b                                           ; $6b94: $a0
	ld   [bc], a                                     ; $6b95: $02
	dec  h                                           ; $6b96: $25
	ld   [bc], a                                     ; $6b97: $02
	and  b                                           ; $6b98: $a0
	add  hl, bc                                      ; $6b99: $09
	ld   [hl-], a                                    ; $6b9a: $32
	ld   [bc], a                                     ; $6b9b: $02
	and  b                                           ; $6b9c: $a0
	ld   [bc], a                                     ; $6b9d: $02
	dec  [hl]                                        ; $6b9e: $35
	ld   [bc], a                                     ; $6b9f: $02
	and  b                                           ; $6ba0: $a0
	add  hl, bc                                      ; $6ba1: $09
	ld   a, [hl+]                                    ; $6ba2: $2a
	ld   [bc], a                                     ; $6ba3: $02
	and  b                                           ; $6ba4: $a0
	ld   [bc], a                                     ; $6ba5: $02
	ld   [hl-], a                                    ; $6ba6: $32
	ld   [bc], a                                     ; $6ba7: $02
	and  b                                           ; $6ba8: $a0
	add  hl, bc                                      ; $6ba9: $09
	dec  h                                           ; $6baa: $25
	ld   [bc], a                                     ; $6bab: $02
	and  b                                           ; $6bac: $a0
	ld   [bc], a                                     ; $6bad: $02
	ld   a, [hl+]                                    ; $6bae: $2a
	ld   [bc], a                                     ; $6baf: $02
	and  b                                           ; $6bb0: $a0
	add  hl, bc                                      ; $6bb1: $09
	ld   [hl-], a                                    ; $6bb2: $32
	ld   [bc], a                                     ; $6bb3: $02
	and  b                                           ; $6bb4: $a0
	ld   [bc], a                                     ; $6bb5: $02
	dec  h                                           ; $6bb6: $25
	ld   [bc], a                                     ; $6bb7: $02
	and  b                                           ; $6bb8: $a0
	add  hl, bc                                      ; $6bb9: $09
	ld   a, [hl+]                                    ; $6bba: $2a
	ld   [bc], a                                     ; $6bbb: $02
	and  b                                           ; $6bbc: $a0
	ld   [bc], a                                     ; $6bbd: $02
	ld   [hl-], a                                    ; $6bbe: $32
	ld   [bc], a                                     ; $6bbf: $02
	and  b                                           ; $6bc0: $a0
	add  hl, bc                                      ; $6bc1: $09
	dec  h                                           ; $6bc2: $25
	ld   [bc], a                                     ; $6bc3: $02
	and  b                                           ; $6bc4: $a0
	ld   [bc], a                                     ; $6bc5: $02
	ld   a, [hl+]                                    ; $6bc6: $2a
	ld   [bc], a                                     ; $6bc7: $02
	and  b                                           ; $6bc8: $a0
	add  hl, bc                                      ; $6bc9: $09
	ld   [hl+], a                                    ; $6bca: $22
	ld   [bc], a                                     ; $6bcb: $02
	and  b                                           ; $6bcc: $a0
	ld   [bc], a                                     ; $6bcd: $02
	dec  h                                           ; $6bce: $25
	ld   [bc], a                                     ; $6bcf: $02
	and  b                                           ; $6bd0: $a0
	add  hl, bc                                      ; $6bd1: $09
	ld   [hl-], a                                    ; $6bd2: $32
	ld   [bc], a                                     ; $6bd3: $02
	and  b                                           ; $6bd4: $a0
	ld   [bc], a                                     ; $6bd5: $02
	ld   [hl+], a                                    ; $6bd6: $22
	ld   [bc], a                                     ; $6bd7: $02
	and  b                                           ; $6bd8: $a0
	add  hl, bc                                      ; $6bd9: $09
	ld   a, [hl+]                                    ; $6bda: $2a
	ld   [bc], a                                     ; $6bdb: $02
	and  b                                           ; $6bdc: $a0
	ld   [bc], a                                     ; $6bdd: $02
	ld   [hl-], a                                    ; $6bde: $32
	ld   [bc], a                                     ; $6bdf: $02
	and  b                                           ; $6be0: $a0
	add  hl, bc                                      ; $6be1: $09
	dec  h                                           ; $6be2: $25
	ld   [bc], a                                     ; $6be3: $02
	and  b                                           ; $6be4: $a0
	ld   [bc], a                                     ; $6be5: $02
	ld   a, [hl+]                                    ; $6be6: $2a
	ld   [bc], a                                     ; $6be7: $02
	and  b                                           ; $6be8: $a0
	add  hl, bc                                      ; $6be9: $09
	ld   [hl+], a                                    ; $6bea: $22
	ld   [bc], a                                     ; $6beb: $02
	and  b                                           ; $6bec: $a0
	ld   [bc], a                                     ; $6bed: $02
	dec  h                                           ; $6bee: $25
	ld   [bc], a                                     ; $6bef: $02
	and  b                                           ; $6bf0: $a0
	add  hl, bc                                      ; $6bf1: $09
	inc  [hl]                                        ; $6bf2: $34
	ld   [bc], a                                     ; $6bf3: $02
	and  b                                           ; $6bf4: $a0
	ld   [bc], a                                     ; $6bf5: $02
	ld   [hl+], a                                    ; $6bf6: $22
	ld   [bc], a                                     ; $6bf7: $02
	and  b                                           ; $6bf8: $a0
	add  hl, bc                                      ; $6bf9: $09
	jr   nc, jr_0fd_6bfe                             ; $6bfa: $30 $02

	and  b                                           ; $6bfc: $a0
	ld   [bc], a                                     ; $6bfd: $02

jr_0fd_6bfe:
	inc  [hl]                                        ; $6bfe: $34
	ld   [bc], a                                     ; $6bff: $02
	and  b                                           ; $6c00: $a0
	add  hl, bc                                      ; $6c01: $09
	add  hl, hl                                      ; $6c02: $29
	ld   [bc], a                                     ; $6c03: $02
	and  b                                           ; $6c04: $a0
	ld   [bc], a                                     ; $6c05: $02
	jr   nc, jr_0fd_6c0a                             ; $6c06: $30 $02

	and  b                                           ; $6c08: $a0
	add  hl, bc                                      ; $6c09: $09

jr_0fd_6c0a:
	daa                                              ; $6c0a: $27
	ld   [bc], a                                     ; $6c0b: $02
	and  b                                           ; $6c0c: $a0
	ld   [bc], a                                     ; $6c0d: $02
	add  hl, hl                                      ; $6c0e: $29
	ld   [bc], a                                     ; $6c0f: $02
	and  b                                           ; $6c10: $a0
	add  hl, bc                                      ; $6c11: $09
	inc  [hl]                                        ; $6c12: $34
	ld   [bc], a                                     ; $6c13: $02
	and  b                                           ; $6c14: $a0
	ld   [bc], a                                     ; $6c15: $02
	daa                                              ; $6c16: $27
	ld   [bc], a                                     ; $6c17: $02
	and  b                                           ; $6c18: $a0
	add  hl, bc                                      ; $6c19: $09
	jr   nc, jr_0fd_6c1e                             ; $6c1a: $30 $02

	and  b                                           ; $6c1c: $a0
	ld   [bc], a                                     ; $6c1d: $02

jr_0fd_6c1e:
	inc  [hl]                                        ; $6c1e: $34
	ld   [bc], a                                     ; $6c1f: $02
	and  b                                           ; $6c20: $a0
	add  hl, bc                                      ; $6c21: $09
	add  hl, hl                                      ; $6c22: $29
	ld   [bc], a                                     ; $6c23: $02
	and  b                                           ; $6c24: $a0
	ld   [bc], a                                     ; $6c25: $02
	jr   nc, jr_0fd_6c2a                             ; $6c26: $30 $02

	and  b                                           ; $6c28: $a0
	add  hl, bc                                      ; $6c29: $09

jr_0fd_6c2a:
	daa                                              ; $6c2a: $27
	ld   [bc], a                                     ; $6c2b: $02
	and  b                                           ; $6c2c: $a0
	ld   [bc], a                                     ; $6c2d: $02
	add  hl, hl                                      ; $6c2e: $29
	ld   [bc], a                                     ; $6c2f: $02
	and  b                                           ; $6c30: $a0
	add  hl, bc                                      ; $6c31: $09
	ld   [hl], $02                                   ; $6c32: $36 $02
	and  b                                           ; $6c34: $a0
	ld   [bc], a                                     ; $6c35: $02
	daa                                              ; $6c36: $27
	ld   [bc], a                                     ; $6c37: $02
	and  b                                           ; $6c38: $a0
	add  hl, bc                                      ; $6c39: $09
	ld   [hl-], a                                    ; $6c3a: $32
	ld   [bc], a                                     ; $6c3b: $02
	and  b                                           ; $6c3c: $a0
	ld   [bc], a                                     ; $6c3d: $02
	ld   [hl], $02                                   ; $6c3e: $36 $02
	and  b                                           ; $6c40: $a0
	add  hl, bc                                      ; $6c41: $09
	add  hl, hl                                      ; $6c42: $29
	ld   [bc], a                                     ; $6c43: $02
	and  b                                           ; $6c44: $a0
	ld   [bc], a                                     ; $6c45: $02
	ld   [hl-], a                                    ; $6c46: $32
	ld   [bc], a                                     ; $6c47: $02
	and  b                                           ; $6c48: $a0
	add  hl, bc                                      ; $6c49: $09
	ld   h, $02                                      ; $6c4a: $26 $02
	and  b                                           ; $6c4c: $a0
	ld   [bc], a                                     ; $6c4d: $02
	add  hl, hl                                      ; $6c4e: $29
	ld   [bc], a                                     ; $6c4f: $02
	and  b                                           ; $6c50: $a0
	add  hl, bc                                      ; $6c51: $09
	ld   [hl], $02                                   ; $6c52: $36 $02
	and  b                                           ; $6c54: $a0
	ld   [bc], a                                     ; $6c55: $02
	ld   h, $02                                      ; $6c56: $26 $02
	and  b                                           ; $6c58: $a0
	add  hl, bc                                      ; $6c59: $09
	ld   [hl-], a                                    ; $6c5a: $32
	ld   [bc], a                                     ; $6c5b: $02
	and  b                                           ; $6c5c: $a0
	ld   [bc], a                                     ; $6c5d: $02
	ld   [hl], $02                                   ; $6c5e: $36 $02
	and  b                                           ; $6c60: $a0
	add  hl, bc                                      ; $6c61: $09
	add  hl, hl                                      ; $6c62: $29
	ld   [bc], a                                     ; $6c63: $02
	and  b                                           ; $6c64: $a0
	ld   [bc], a                                     ; $6c65: $02
	ld   [hl-], a                                    ; $6c66: $32
	ld   [bc], a                                     ; $6c67: $02
	and  b                                           ; $6c68: $a0
	add  hl, bc                                      ; $6c69: $09
	ld   h, $02                                      ; $6c6a: $26 $02
	and  b                                           ; $6c6c: $a0
	ld   [bc], a                                     ; $6c6d: $02
	add  hl, hl                                      ; $6c6e: $29
	ld   [bc], a                                     ; $6c6f: $02
	and  b                                           ; $6c70: $a0
	add  hl, bc                                      ; $6c71: $09
	ld   [hl-], a                                    ; $6c72: $32
	ld   [bc], a                                     ; $6c73: $02
	and  b                                           ; $6c74: $a0
	ld   [bc], a                                     ; $6c75: $02
	ld   h, $02                                      ; $6c76: $26 $02
	and  b                                           ; $6c78: $a0
	add  hl, bc                                      ; $6c79: $09
	ld   a, [hl+]                                    ; $6c7a: $2a
	ld   [bc], a                                     ; $6c7b: $02
	and  b                                           ; $6c7c: $a0
	ld   [bc], a                                     ; $6c7d: $02
	ld   [hl-], a                                    ; $6c7e: $32
	ld   [bc], a                                     ; $6c7f: $02
	and  b                                           ; $6c80: $a0
	add  hl, bc                                      ; $6c81: $09
	daa                                              ; $6c82: $27
	ld   [bc], a                                     ; $6c83: $02
	and  b                                           ; $6c84: $a0
	ld   [bc], a                                     ; $6c85: $02
	ld   a, [hl+]                                    ; $6c86: $2a
	ld   [bc], a                                     ; $6c87: $02
	and  b                                           ; $6c88: $a0
	add  hl, bc                                      ; $6c89: $09
	ld   [hl+], a                                    ; $6c8a: $22
	ld   [bc], a                                     ; $6c8b: $02
	and  b                                           ; $6c8c: $a0
	ld   [bc], a                                     ; $6c8d: $02
	daa                                              ; $6c8e: $27
	ld   [bc], a                                     ; $6c8f: $02
	and  b                                           ; $6c90: $a0
	add  hl, bc                                      ; $6c91: $09
	ld   [hl-], a                                    ; $6c92: $32
	ld   [bc], a                                     ; $6c93: $02
	and  b                                           ; $6c94: $a0
	ld   [bc], a                                     ; $6c95: $02
	ld   [hl+], a                                    ; $6c96: $22
	ld   [bc], a                                     ; $6c97: $02
	and  b                                           ; $6c98: $a0
	add  hl, bc                                      ; $6c99: $09
	ld   a, [hl+]                                    ; $6c9a: $2a
	ld   [bc], a                                     ; $6c9b: $02
	and  b                                           ; $6c9c: $a0
	ld   [bc], a                                     ; $6c9d: $02
	ld   [hl-], a                                    ; $6c9e: $32
	ld   [bc], a                                     ; $6c9f: $02
	and  b                                           ; $6ca0: $a0
	add  hl, bc                                      ; $6ca1: $09
	daa                                              ; $6ca2: $27
	ld   [bc], a                                     ; $6ca3: $02
	and  b                                           ; $6ca4: $a0
	ld   [bc], a                                     ; $6ca5: $02
	ld   a, [hl+]                                    ; $6ca6: $2a
	ld   [bc], a                                     ; $6ca7: $02
	and  b                                           ; $6ca8: $a0
	add  hl, bc                                      ; $6ca9: $09
	ld   [hl+], a                                    ; $6caa: $22
	ld   [bc], a                                     ; $6cab: $02
	and  b                                           ; $6cac: $a0
	ld   [bc], a                                     ; $6cad: $02
	daa                                              ; $6cae: $27
	ld   [bc], a                                     ; $6caf: $02
	and  b                                           ; $6cb0: $a0
	add  hl, bc                                      ; $6cb1: $09
	jr   nc, jr_0fd_6cb6                             ; $6cb2: $30 $02

	and  b                                           ; $6cb4: $a0
	ld   [bc], a                                     ; $6cb5: $02

jr_0fd_6cb6:
	ld   [hl+], a                                    ; $6cb6: $22
	ld   [bc], a                                     ; $6cb7: $02
	and  b                                           ; $6cb8: $a0
	add  hl, bc                                      ; $6cb9: $09
	add  hl, hl                                      ; $6cba: $29
	ld   [bc], a                                     ; $6cbb: $02
	and  b                                           ; $6cbc: $a0
	ld   [bc], a                                     ; $6cbd: $02
	jr   nc, jr_0fd_6cc2                             ; $6cbe: $30 $02

	and  b                                           ; $6cc0: $a0
	add  hl, bc                                      ; $6cc1: $09

jr_0fd_6cc2:
	dec  h                                           ; $6cc2: $25
	ld   [bc], a                                     ; $6cc3: $02
	and  b                                           ; $6cc4: $a0
	ld   [bc], a                                     ; $6cc5: $02
	add  hl, hl                                      ; $6cc6: $29
	ld   [bc], a                                     ; $6cc7: $02
	and  b                                           ; $6cc8: $a0
	add  hl, bc                                      ; $6cc9: $09
	ld   [hl+], a                                    ; $6cca: $22
	ld   [bc], a                                     ; $6ccb: $02
	and  b                                           ; $6ccc: $a0
	ld   [bc], a                                     ; $6ccd: $02
	dec  h                                           ; $6cce: $25
	ld   [bc], a                                     ; $6ccf: $02
	and  b                                           ; $6cd0: $a0
	add  hl, bc                                      ; $6cd1: $09
	jr   nc, jr_0fd_6cd6                             ; $6cd2: $30 $02

	and  b                                           ; $6cd4: $a0
	ld   [bc], a                                     ; $6cd5: $02

jr_0fd_6cd6:
	ld   [hl+], a                                    ; $6cd6: $22
	ld   [bc], a                                     ; $6cd7: $02
	and  b                                           ; $6cd8: $a0
	add  hl, bc                                      ; $6cd9: $09
	add  hl, hl                                      ; $6cda: $29
	ld   [bc], a                                     ; $6cdb: $02
	and  b                                           ; $6cdc: $a0
	ld   [bc], a                                     ; $6cdd: $02
	jr   nc, jr_0fd_6ce2                             ; $6cde: $30 $02

	and  b                                           ; $6ce0: $a0
	add  hl, bc                                      ; $6ce1: $09

jr_0fd_6ce2:
	dec  h                                           ; $6ce2: $25
	ld   [bc], a                                     ; $6ce3: $02
	and  b                                           ; $6ce4: $a0
	ld   [bc], a                                     ; $6ce5: $02
	add  hl, hl                                      ; $6ce6: $29
	ld   [bc], a                                     ; $6ce7: $02
	and  b                                           ; $6ce8: $a0
	add  hl, bc                                      ; $6ce9: $09
	ld   [hl+], a                                    ; $6cea: $22
	ld   [bc], a                                     ; $6ceb: $02
	and  b                                           ; $6cec: $a0
	ld   [bc], a                                     ; $6ced: $02
	dec  h                                           ; $6cee: $25
	ld   [bc], a                                     ; $6cef: $02
	and  b                                           ; $6cf0: $a0
	add  hl, bc                                      ; $6cf1: $09
	ld   [hl-], a                                    ; $6cf2: $32
	ld   [bc], a                                     ; $6cf3: $02
	and  b                                           ; $6cf4: $a0
	ld   [bc], a                                     ; $6cf5: $02
	ld   [hl+], a                                    ; $6cf6: $22
	ld   [bc], a                                     ; $6cf7: $02
	and  b                                           ; $6cf8: $a0
	add  hl, bc                                      ; $6cf9: $09
	ld   a, [hl+]                                    ; $6cfa: $2a
	ld   [bc], a                                     ; $6cfb: $02
	and  b                                           ; $6cfc: $a0
	ld   [bc], a                                     ; $6cfd: $02
	ld   [hl-], a                                    ; $6cfe: $32
	ld   [bc], a                                     ; $6cff: $02
	and  b                                           ; $6d00: $a0
	add  hl, bc                                      ; $6d01: $09
	daa                                              ; $6d02: $27
	ld   [bc], a                                     ; $6d03: $02
	and  b                                           ; $6d04: $a0
	ld   [bc], a                                     ; $6d05: $02
	ld   a, [hl+]                                    ; $6d06: $2a
	ld   [bc], a                                     ; $6d07: $02
	and  b                                           ; $6d08: $a0
	add  hl, bc                                      ; $6d09: $09
	inc  hl                                          ; $6d0a: $23
	ld   [bc], a                                     ; $6d0b: $02
	and  b                                           ; $6d0c: $a0
	ld   [bc], a                                     ; $6d0d: $02
	daa                                              ; $6d0e: $27
	ld   [bc], a                                     ; $6d0f: $02
	and  b                                           ; $6d10: $a0
	add  hl, bc                                      ; $6d11: $09
	ld   [hl-], a                                    ; $6d12: $32
	ld   [bc], a                                     ; $6d13: $02
	and  b                                           ; $6d14: $a0
	ld   [bc], a                                     ; $6d15: $02
	inc  hl                                          ; $6d16: $23
	ld   [bc], a                                     ; $6d17: $02
	and  b                                           ; $6d18: $a0
	add  hl, bc                                      ; $6d19: $09
	ld   a, [hl+]                                    ; $6d1a: $2a
	ld   [bc], a                                     ; $6d1b: $02
	and  b                                           ; $6d1c: $a0
	ld   [bc], a                                     ; $6d1d: $02
	ld   [hl-], a                                    ; $6d1e: $32
	ld   [bc], a                                     ; $6d1f: $02
	and  b                                           ; $6d20: $a0
	add  hl, bc                                      ; $6d21: $09
	daa                                              ; $6d22: $27
	ld   [bc], a                                     ; $6d23: $02
	and  b                                           ; $6d24: $a0
	ld   [bc], a                                     ; $6d25: $02
	ld   a, [hl+]                                    ; $6d26: $2a
	ld   [bc], a                                     ; $6d27: $02
	and  b                                           ; $6d28: $a0
	add  hl, bc                                      ; $6d29: $09
	inc  hl                                          ; $6d2a: $23
	ld   [bc], a                                     ; $6d2b: $02
	and  b                                           ; $6d2c: $a0
	ld   [bc], a                                     ; $6d2d: $02
	daa                                              ; $6d2e: $27
	ld   [bc], a                                     ; $6d2f: $02
	and  b                                           ; $6d30: $a0
	add  hl, bc                                      ; $6d31: $09
	jr   nc, jr_0fd_6d36                             ; $6d32: $30 $02

	and  b                                           ; $6d34: $a0
	ld   [bc], a                                     ; $6d35: $02

jr_0fd_6d36:
	inc  hl                                          ; $6d36: $23
	ld   [bc], a                                     ; $6d37: $02
	and  b                                           ; $6d38: $a0
	add  hl, bc                                      ; $6d39: $09
	ld   a, [hl+]                                    ; $6d3a: $2a
	ld   [bc], a                                     ; $6d3b: $02
	and  b                                           ; $6d3c: $a0
	ld   [bc], a                                     ; $6d3d: $02
	jr   nc, jr_0fd_6d42                             ; $6d3e: $30 $02

	and  b                                           ; $6d40: $a0
	add  hl, bc                                      ; $6d41: $09

jr_0fd_6d42:
	daa                                              ; $6d42: $27
	ld   [bc], a                                     ; $6d43: $02
	and  b                                           ; $6d44: $a0
	ld   [bc], a                                     ; $6d45: $02
	ld   a, [hl+]                                    ; $6d46: $2a
	ld   [bc], a                                     ; $6d47: $02
	and  b                                           ; $6d48: $a0
	add  hl, bc                                      ; $6d49: $09
	inc  hl                                          ; $6d4a: $23
	ld   [bc], a                                     ; $6d4b: $02
	and  b                                           ; $6d4c: $a0
	ld   [bc], a                                     ; $6d4d: $02
	daa                                              ; $6d4e: $27
	ld   [bc], a                                     ; $6d4f: $02
	and  b                                           ; $6d50: $a0
	add  hl, bc                                      ; $6d51: $09
	jr   nc, jr_0fd_6d56                             ; $6d52: $30 $02

	and  b                                           ; $6d54: $a0
	ld   [bc], a                                     ; $6d55: $02

jr_0fd_6d56:
	inc  hl                                          ; $6d56: $23
	ld   [bc], a                                     ; $6d57: $02
	and  b                                           ; $6d58: $a0
	add  hl, bc                                      ; $6d59: $09
	ld   a, [hl+]                                    ; $6d5a: $2a
	ld   [bc], a                                     ; $6d5b: $02
	and  b                                           ; $6d5c: $a0
	ld   [bc], a                                     ; $6d5d: $02
	jr   nc, jr_0fd_6d62                             ; $6d5e: $30 $02

	and  b                                           ; $6d60: $a0
	add  hl, bc                                      ; $6d61: $09

jr_0fd_6d62:
	daa                                              ; $6d62: $27
	ld   [bc], a                                     ; $6d63: $02
	and  b                                           ; $6d64: $a0
	ld   [bc], a                                     ; $6d65: $02
	ld   a, [hl+]                                    ; $6d66: $2a
	ld   [bc], a                                     ; $6d67: $02
	and  b                                           ; $6d68: $a0
	add  hl, bc                                      ; $6d69: $09
	inc  hl                                          ; $6d6a: $23
	ld   [bc], a                                     ; $6d6b: $02
	and  b                                           ; $6d6c: $a0
	ld   [bc], a                                     ; $6d6d: $02
	daa                                              ; $6d6e: $27
	ld   [bc], a                                     ; $6d6f: $02
	and  b                                           ; $6d70: $a0
	add  hl, bc                                      ; $6d71: $09
	jr   nc, jr_0fd_6d76                             ; $6d72: $30 $02

	and  b                                           ; $6d74: $a0
	ld   [bc], a                                     ; $6d75: $02

jr_0fd_6d76:
	inc  hl                                          ; $6d76: $23
	ld   [bc], a                                     ; $6d77: $02
	and  b                                           ; $6d78: $a0
	add  hl, bc                                      ; $6d79: $09
	ld   a, [hl+]                                    ; $6d7a: $2a
	ld   [bc], a                                     ; $6d7b: $02
	and  b                                           ; $6d7c: $a0
	ld   [bc], a                                     ; $6d7d: $02
	jr   nc, jr_0fd_6d82                             ; $6d7e: $30 $02

	and  b                                           ; $6d80: $a0
	add  hl, bc                                      ; $6d81: $09

jr_0fd_6d82:
	daa                                              ; $6d82: $27
	ld   [bc], a                                     ; $6d83: $02
	and  b                                           ; $6d84: $a0
	ld   [bc], a                                     ; $6d85: $02
	ld   a, [hl+]                                    ; $6d86: $2a
	ld   [bc], a                                     ; $6d87: $02
	and  b                                           ; $6d88: $a0
	add  hl, bc                                      ; $6d89: $09
	inc  hl                                          ; $6d8a: $23
	ld   [bc], a                                     ; $6d8b: $02
	and  b                                           ; $6d8c: $a0
	ld   [bc], a                                     ; $6d8d: $02
	daa                                              ; $6d8e: $27
	ld   [bc], a                                     ; $6d8f: $02
	and  b                                           ; $6d90: $a0
	add  hl, bc                                      ; $6d91: $09
	jr   nc, jr_0fd_6d96                             ; $6d92: $30 $02

	and  b                                           ; $6d94: $a0
	ld   [bc], a                                     ; $6d95: $02

jr_0fd_6d96:
	inc  hl                                          ; $6d96: $23
	ld   [bc], a                                     ; $6d97: $02
	and  b                                           ; $6d98: $a0
	add  hl, bc                                      ; $6d99: $09
	ld   a, [hl+]                                    ; $6d9a: $2a
	ld   [bc], a                                     ; $6d9b: $02
	and  b                                           ; $6d9c: $a0
	ld   [bc], a                                     ; $6d9d: $02
	jr   nc, jr_0fd_6da2                             ; $6d9e: $30 $02

	and  b                                           ; $6da0: $a0
	add  hl, bc                                      ; $6da1: $09

jr_0fd_6da2:
	daa                                              ; $6da2: $27
	ld   [bc], a                                     ; $6da3: $02
	and  b                                           ; $6da4: $a0
	ld   [bc], a                                     ; $6da5: $02
	ld   a, [hl+]                                    ; $6da6: $2a
	ld   [bc], a                                     ; $6da7: $02
	and  b                                           ; $6da8: $a0
	add  hl, bc                                      ; $6da9: $09
	inc  hl                                          ; $6daa: $23
	ld   [bc], a                                     ; $6dab: $02
	and  b                                           ; $6dac: $a0
	ld   [bc], a                                     ; $6dad: $02
	daa                                              ; $6dae: $27
	ld   [bc], a                                     ; $6daf: $02
	and  b                                           ; $6db0: $a0
	add  hl, bc                                      ; $6db1: $09
	jr   nc, jr_0fd_6db6                             ; $6db2: $30 $02

	and  b                                           ; $6db4: $a0
	ld   [bc], a                                     ; $6db5: $02

jr_0fd_6db6:
	inc  hl                                          ; $6db6: $23
	ld   [bc], a                                     ; $6db7: $02
	and  b                                           ; $6db8: $a0
	add  hl, bc                                      ; $6db9: $09
	add  hl, hl                                      ; $6dba: $29
	ld   [bc], a                                     ; $6dbb: $02
	and  b                                           ; $6dbc: $a0
	ld   [bc], a                                     ; $6dbd: $02
	jr   nc, jr_0fd_6dc2                             ; $6dbe: $30 $02

	and  b                                           ; $6dc0: $a0
	add  hl, bc                                      ; $6dc1: $09

jr_0fd_6dc2:
	dec  h                                           ; $6dc2: $25
	ld   [bc], a                                     ; $6dc3: $02
	and  b                                           ; $6dc4: $a0
	ld   [bc], a                                     ; $6dc5: $02
	add  hl, hl                                      ; $6dc6: $29
	ld   [bc], a                                     ; $6dc7: $02
	and  b                                           ; $6dc8: $a0
	add  hl, bc                                      ; $6dc9: $09
	jr   nz, jr_0fd_6dce                             ; $6dca: $20 $02

	and  b                                           ; $6dcc: $a0
	ld   [bc], a                                     ; $6dcd: $02

jr_0fd_6dce:
	dec  h                                           ; $6dce: $25
	ld   [bc], a                                     ; $6dcf: $02
	and  b                                           ; $6dd0: $a0
	add  hl, bc                                      ; $6dd1: $09
	jr   nc, jr_0fd_6dd6                             ; $6dd2: $30 $02

	and  b                                           ; $6dd4: $a0
	ld   [bc], a                                     ; $6dd5: $02

jr_0fd_6dd6:
	jr   nz, jr_0fd_6dda                             ; $6dd6: $20 $02

	and  b                                           ; $6dd8: $a0
	add  hl, bc                                      ; $6dd9: $09

jr_0fd_6dda:
	add  hl, hl                                      ; $6dda: $29
	ld   [bc], a                                     ; $6ddb: $02
	and  b                                           ; $6ddc: $a0
	ld   [bc], a                                     ; $6ddd: $02
	jr   nc, jr_0fd_6de2                             ; $6dde: $30 $02

	and  b                                           ; $6de0: $a0
	add  hl, bc                                      ; $6de1: $09

jr_0fd_6de2:
	dec  h                                           ; $6de2: $25
	ld   [bc], a                                     ; $6de3: $02
	and  b                                           ; $6de4: $a0
	ld   [bc], a                                     ; $6de5: $02
	add  hl, hl                                      ; $6de6: $29
	ld   [bc], a                                     ; $6de7: $02
	and  b                                           ; $6de8: $a0
	add  hl, bc                                      ; $6de9: $09
	jr   nz, jr_0fd_6dee                             ; $6dea: $20 $02

	and  b                                           ; $6dec: $a0
	ld   [bc], a                                     ; $6ded: $02

jr_0fd_6dee:
	dec  h                                           ; $6dee: $25
	ld   [bc], a                                     ; $6def: $02
	and  b                                           ; $6df0: $a0
	add  hl, bc                                      ; $6df1: $09
	jr   nc, jr_0fd_6df6                             ; $6df2: $30 $02

	and  b                                           ; $6df4: $a0
	ld   [bc], a                                     ; $6df5: $02

jr_0fd_6df6:
	jr   nz, jr_0fd_6dfa                             ; $6df6: $20 $02

	and  b                                           ; $6df8: $a0
	add  hl, bc                                      ; $6df9: $09

jr_0fd_6dfa:
	add  hl, hl                                      ; $6dfa: $29
	ld   [bc], a                                     ; $6dfb: $02
	and  b                                           ; $6dfc: $a0
	ld   [bc], a                                     ; $6dfd: $02
	jr   nc, jr_0fd_6e02                             ; $6dfe: $30 $02

	and  b                                           ; $6e00: $a0
	add  hl, bc                                      ; $6e01: $09

jr_0fd_6e02:
	dec  h                                           ; $6e02: $25
	ld   [bc], a                                     ; $6e03: $02
	and  b                                           ; $6e04: $a0
	ld   [bc], a                                     ; $6e05: $02
	add  hl, hl                                      ; $6e06: $29
	ld   [bc], a                                     ; $6e07: $02
	and  b                                           ; $6e08: $a0
	add  hl, bc                                      ; $6e09: $09
	ld   [hl+], a                                    ; $6e0a: $22
	ld   [bc], a                                     ; $6e0b: $02
	and  b                                           ; $6e0c: $a0
	ld   [bc], a                                     ; $6e0d: $02
	dec  h                                           ; $6e0e: $25
	ld   [bc], a                                     ; $6e0f: $02
	and  b                                           ; $6e10: $a0
	add  hl, bc                                      ; $6e11: $09
	jr   nc, jr_0fd_6e16                             ; $6e12: $30 $02

	and  b                                           ; $6e14: $a0
	ld   [bc], a                                     ; $6e15: $02

jr_0fd_6e16:
	ld   [hl+], a                                    ; $6e16: $22
	ld   [bc], a                                     ; $6e17: $02
	and  b                                           ; $6e18: $a0
	add  hl, bc                                      ; $6e19: $09
	add  hl, hl                                      ; $6e1a: $29
	ld   [bc], a                                     ; $6e1b: $02
	and  b                                           ; $6e1c: $a0
	ld   [bc], a                                     ; $6e1d: $02
	jr   nc, jr_0fd_6e22                             ; $6e1e: $30 $02

	and  b                                           ; $6e20: $a0
	add  hl, bc                                      ; $6e21: $09

jr_0fd_6e22:
	dec  h                                           ; $6e22: $25
	ld   [bc], a                                     ; $6e23: $02
	and  b                                           ; $6e24: $a0
	ld   [bc], a                                     ; $6e25: $02
	add  hl, hl                                      ; $6e26: $29
	ld   [bc], a                                     ; $6e27: $02
	and  b                                           ; $6e28: $a0
	add  hl, bc                                      ; $6e29: $09
	ld   [hl+], a                                    ; $6e2a: $22
	ld   [bc], a                                     ; $6e2b: $02
	and  b                                           ; $6e2c: $a0
	ld   [bc], a                                     ; $6e2d: $02
	dec  h                                           ; $6e2e: $25
	ld   [bc], a                                     ; $6e2f: $02
	and  b                                           ; $6e30: $a0
	add  hl, bc                                      ; $6e31: $09
	dec  hl                                          ; $6e32: $2b
	ld   [bc], a                                     ; $6e33: $02
	and  b                                           ; $6e34: $a0
	ld   [bc], a                                     ; $6e35: $02
	ld   [hl+], a                                    ; $6e36: $22
	ld   [bc], a                                     ; $6e37: $02
	and  b                                           ; $6e38: $a0
	add  hl, bc                                      ; $6e39: $09
	daa                                              ; $6e3a: $27
	ld   [bc], a                                     ; $6e3b: $02
	and  b                                           ; $6e3c: $a0
	ld   [bc], a                                     ; $6e3d: $02
	dec  hl                                          ; $6e3e: $2b
	ld   [bc], a                                     ; $6e3f: $02
	and  b                                           ; $6e40: $a0
	add  hl, bc                                      ; $6e41: $09
	dec  h                                           ; $6e42: $25
	ld   [bc], a                                     ; $6e43: $02
	and  b                                           ; $6e44: $a0
	ld   [bc], a                                     ; $6e45: $02
	daa                                              ; $6e46: $27
	ld   [bc], a                                     ; $6e47: $02
	and  b                                           ; $6e48: $a0
	add  hl, bc                                      ; $6e49: $09
	ld   [hl+], a                                    ; $6e4a: $22
	ld   [bc], a                                     ; $6e4b: $02
	and  b                                           ; $6e4c: $a0
	ld   [bc], a                                     ; $6e4d: $02
	dec  h                                           ; $6e4e: $25
	ld   [bc], a                                     ; $6e4f: $02
	and  b                                           ; $6e50: $a0
	add  hl, bc                                      ; $6e51: $09
	dec  hl                                          ; $6e52: $2b
	ld   [bc], a                                     ; $6e53: $02
	and  b                                           ; $6e54: $a0
	ld   [bc], a                                     ; $6e55: $02
	ld   [hl+], a                                    ; $6e56: $22
	ld   [bc], a                                     ; $6e57: $02
	and  b                                           ; $6e58: $a0
	add  hl, bc                                      ; $6e59: $09
	daa                                              ; $6e5a: $27
	ld   [bc], a                                     ; $6e5b: $02
	and  b                                           ; $6e5c: $a0
	ld   [bc], a                                     ; $6e5d: $02
	dec  hl                                          ; $6e5e: $2b
	ld   [bc], a                                     ; $6e5f: $02
	and  b                                           ; $6e60: $a0
	add  hl, bc                                      ; $6e61: $09
	dec  h                                           ; $6e62: $25
	ld   [bc], a                                     ; $6e63: $02
	and  b                                           ; $6e64: $a0
	ld   [bc], a                                     ; $6e65: $02
	daa                                              ; $6e66: $27
	ld   [bc], a                                     ; $6e67: $02
	and  b                                           ; $6e68: $a0
	add  hl, bc                                      ; $6e69: $09
	ld   [hl+], a                                    ; $6e6a: $22
	ld   [bc], a                                     ; $6e6b: $02
	and  b                                           ; $6e6c: $a0
	ld   [bc], a                                     ; $6e6d: $02
	dec  h                                           ; $6e6e: $25
	ld   [bc], a                                     ; $6e6f: $02
	and  b                                           ; $6e70: $a0
	add  hl, bc                                      ; $6e71: $09
	jr   nc, jr_0fd_6e76                             ; $6e72: $30 $02

	and  b                                           ; $6e74: $a0
	ld   [bc], a                                     ; $6e75: $02

jr_0fd_6e76:
	ld   [hl+], a                                    ; $6e76: $22
	ld   [bc], a                                     ; $6e77: $02
	and  b                                           ; $6e78: $a0
	add  hl, bc                                      ; $6e79: $09
	ld   a, [hl+]                                    ; $6e7a: $2a
	ld   [bc], a                                     ; $6e7b: $02
	and  b                                           ; $6e7c: $a0
	ld   [bc], a                                     ; $6e7d: $02
	jr   nc, jr_0fd_6e82                             ; $6e7e: $30 $02

	and  b                                           ; $6e80: $a0
	add  hl, bc                                      ; $6e81: $09

jr_0fd_6e82:
	daa                                              ; $6e82: $27
	ld   [bc], a                                     ; $6e83: $02
	and  b                                           ; $6e84: $a0
	ld   [bc], a                                     ; $6e85: $02
	ld   a, [hl+]                                    ; $6e86: $2a
	ld   [bc], a                                     ; $6e87: $02
	and  b                                           ; $6e88: $a0
	add  hl, bc                                      ; $6e89: $09
	inc  hl                                          ; $6e8a: $23
	ld   [bc], a                                     ; $6e8b: $02
	and  b                                           ; $6e8c: $a0
	ld   [bc], a                                     ; $6e8d: $02
	daa                                              ; $6e8e: $27
	ld   [bc], a                                     ; $6e8f: $02
	and  b                                           ; $6e90: $a0
	add  hl, bc                                      ; $6e91: $09
	jr   nc, jr_0fd_6e96                             ; $6e92: $30 $02

	and  b                                           ; $6e94: $a0
	ld   [bc], a                                     ; $6e95: $02

jr_0fd_6e96:
	inc  hl                                          ; $6e96: $23
	ld   [bc], a                                     ; $6e97: $02
	and  b                                           ; $6e98: $a0
	add  hl, bc                                      ; $6e99: $09
	ld   a, [hl+]                                    ; $6e9a: $2a
	ld   [bc], a                                     ; $6e9b: $02
	and  b                                           ; $6e9c: $a0
	ld   [bc], a                                     ; $6e9d: $02
	jr   nc, jr_0fd_6ea2                             ; $6e9e: $30 $02

	and  b                                           ; $6ea0: $a0
	add  hl, bc                                      ; $6ea1: $09

jr_0fd_6ea2:
	daa                                              ; $6ea2: $27
	ld   [bc], a                                     ; $6ea3: $02
	and  b                                           ; $6ea4: $a0
	ld   [bc], a                                     ; $6ea5: $02
	ld   a, [hl+]                                    ; $6ea6: $2a
	ld   [bc], a                                     ; $6ea7: $02
	and  b                                           ; $6ea8: $a0
	add  hl, bc                                      ; $6ea9: $09
	inc  hl                                          ; $6eaa: $23
	ld   [bc], a                                     ; $6eab: $02
	and  b                                           ; $6eac: $a0
	ld   [bc], a                                     ; $6ead: $02
	daa                                              ; $6eae: $27
	ld   [bc], a                                     ; $6eaf: $02
	and  b                                           ; $6eb0: $a0
	add  hl, bc                                      ; $6eb1: $09
	jr   nc, jr_0fd_6eb6                             ; $6eb2: $30 $02

	and  b                                           ; $6eb4: $a0
	ld   [bc], a                                     ; $6eb5: $02

jr_0fd_6eb6:
	inc  hl                                          ; $6eb6: $23
	ld   [bc], a                                     ; $6eb7: $02
	and  b                                           ; $6eb8: $a0
	add  hl, bc                                      ; $6eb9: $09
	ld   a, [hl+]                                    ; $6eba: $2a
	ld   [bc], a                                     ; $6ebb: $02
	and  b                                           ; $6ebc: $a0
	ld   [bc], a                                     ; $6ebd: $02
	jr   nc, jr_0fd_6ec2                             ; $6ebe: $30 $02

	and  b                                           ; $6ec0: $a0
	add  hl, bc                                      ; $6ec1: $09

jr_0fd_6ec2:
	daa                                              ; $6ec2: $27
	ld   [bc], a                                     ; $6ec3: $02
	and  b                                           ; $6ec4: $a0
	ld   [bc], a                                     ; $6ec5: $02
	ld   a, [hl+]                                    ; $6ec6: $2a
	ld   [bc], a                                     ; $6ec7: $02
	and  b                                           ; $6ec8: $a0
	add  hl, bc                                      ; $6ec9: $09
	inc  hl                                          ; $6eca: $23
	ld   [bc], a                                     ; $6ecb: $02
	and  b                                           ; $6ecc: $a0
	ld   [bc], a                                     ; $6ecd: $02
	daa                                              ; $6ece: $27
	ld   [bc], a                                     ; $6ecf: $02
	and  b                                           ; $6ed0: $a0
	add  hl, bc                                      ; $6ed1: $09
	jr   nc, jr_0fd_6ed6                             ; $6ed2: $30 $02

	and  b                                           ; $6ed4: $a0
	ld   [bc], a                                     ; $6ed5: $02

jr_0fd_6ed6:
	inc  hl                                          ; $6ed6: $23
	ld   [bc], a                                     ; $6ed7: $02
	and  b                                           ; $6ed8: $a0
	add  hl, bc                                      ; $6ed9: $09
	ld   a, [hl+]                                    ; $6eda: $2a
	ld   [bc], a                                     ; $6edb: $02
	and  b                                           ; $6edc: $a0
	ld   [bc], a                                     ; $6edd: $02
	jr   nc, jr_0fd_6ee2                             ; $6ede: $30 $02

	and  b                                           ; $6ee0: $a0
	add  hl, bc                                      ; $6ee1: $09

jr_0fd_6ee2:
	daa                                              ; $6ee2: $27
	ld   [bc], a                                     ; $6ee3: $02
	and  b                                           ; $6ee4: $a0
	ld   [bc], a                                     ; $6ee5: $02
	ld   a, [hl+]                                    ; $6ee6: $2a
	ld   [bc], a                                     ; $6ee7: $02
	and  b                                           ; $6ee8: $a0
	add  hl, bc                                      ; $6ee9: $09
	inc  hl                                          ; $6eea: $23
	ld   [bc], a                                     ; $6eeb: $02
	and  b                                           ; $6eec: $a0
	ld   [bc], a                                     ; $6eed: $02
	daa                                              ; $6eee: $27
	ld   [bc], a                                     ; $6eef: $02
	and  b                                           ; $6ef0: $a0
	add  hl, bc                                      ; $6ef1: $09
	ld   sp, $a002                                   ; $6ef2: $31 $02 $a0
	ld   [bc], a                                     ; $6ef5: $02
	inc  hl                                          ; $6ef6: $23
	ld   [bc], a                                     ; $6ef7: $02
	and  b                                           ; $6ef8: $a0
	add  hl, bc                                      ; $6ef9: $09
	add  hl, hl                                      ; $6efa: $29
	ld   [bc], a                                     ; $6efb: $02
	and  b                                           ; $6efc: $a0
	ld   [bc], a                                     ; $6efd: $02
	ld   sp, $a002                                   ; $6efe: $31 $02 $a0
	add  hl, bc                                      ; $6f01: $09
	daa                                              ; $6f02: $27
	ld   [bc], a                                     ; $6f03: $02
	and  b                                           ; $6f04: $a0
	ld   [bc], a                                     ; $6f05: $02
	add  hl, hl                                      ; $6f06: $29
	ld   [bc], a                                     ; $6f07: $02
	and  b                                           ; $6f08: $a0
	add  hl, bc                                      ; $6f09: $09
	inc  h                                           ; $6f0a: $24
	ld   [bc], a                                     ; $6f0b: $02
	and  b                                           ; $6f0c: $a0
	ld   [bc], a                                     ; $6f0d: $02
	daa                                              ; $6f0e: $27
	ld   [bc], a                                     ; $6f0f: $02
	and  b                                           ; $6f10: $a0
	add  hl, bc                                      ; $6f11: $09
	ld   sp, $a002                                   ; $6f12: $31 $02 $a0
	ld   [bc], a                                     ; $6f15: $02
	inc  h                                           ; $6f16: $24
	ld   [bc], a                                     ; $6f17: $02
	and  b                                           ; $6f18: $a0
	add  hl, bc                                      ; $6f19: $09
	add  hl, hl                                      ; $6f1a: $29
	ld   [bc], a                                     ; $6f1b: $02
	and  b                                           ; $6f1c: $a0
	ld   [bc], a                                     ; $6f1d: $02
	ld   sp, $a002                                   ; $6f1e: $31 $02 $a0
	add  hl, bc                                      ; $6f21: $09
	daa                                              ; $6f22: $27
	ld   [bc], a                                     ; $6f23: $02
	and  b                                           ; $6f24: $a0
	ld   [bc], a                                     ; $6f25: $02
	add  hl, hl                                      ; $6f26: $29
	ld   [bc], a                                     ; $6f27: $02
	and  b                                           ; $6f28: $a0
	add  hl, bc                                      ; $6f29: $09
	inc  h                                           ; $6f2a: $24
	ld   [bc], a                                     ; $6f2b: $02
	and  b                                           ; $6f2c: $a0
	ld   [bc], a                                     ; $6f2d: $02
	daa                                              ; $6f2e: $27
	ld   [bc], a                                     ; $6f2f: $02
	and  b                                           ; $6f30: $a0
	add  hl, bc                                      ; $6f31: $09
	ld   sp, $a002                                   ; $6f32: $31 $02 $a0
	ld   [bc], a                                     ; $6f35: $02
	inc  h                                           ; $6f36: $24
	ld   [bc], a                                     ; $6f37: $02
	and  b                                           ; $6f38: $a0
	add  hl, bc                                      ; $6f39: $09
	add  hl, hl                                      ; $6f3a: $29
	ld   [bc], a                                     ; $6f3b: $02
	and  b                                           ; $6f3c: $a0
	ld   [bc], a                                     ; $6f3d: $02
	ld   sp, $a002                                   ; $6f3e: $31 $02 $a0
	add  hl, bc                                      ; $6f41: $09
	daa                                              ; $6f42: $27
	ld   [bc], a                                     ; $6f43: $02
	and  b                                           ; $6f44: $a0
	ld   [bc], a                                     ; $6f45: $02
	add  hl, hl                                      ; $6f46: $29
	ld   [bc], a                                     ; $6f47: $02
	and  b                                           ; $6f48: $a0
	add  hl, bc                                      ; $6f49: $09
	inc  h                                           ; $6f4a: $24
	ld   [bc], a                                     ; $6f4b: $02
	and  b                                           ; $6f4c: $a0
	ld   [bc], a                                     ; $6f4d: $02
	daa                                              ; $6f4e: $27
	ld   [bc], a                                     ; $6f4f: $02
	and  b                                           ; $6f50: $a0
	add  hl, bc                                      ; $6f51: $09
	ld   sp, $a002                                   ; $6f52: $31 $02 $a0
	ld   [bc], a                                     ; $6f55: $02
	inc  h                                           ; $6f56: $24
	ld   [bc], a                                     ; $6f57: $02
	and  b                                           ; $6f58: $a0
	add  hl, bc                                      ; $6f59: $09
	add  hl, hl                                      ; $6f5a: $29
	ld   [bc], a                                     ; $6f5b: $02
	and  b                                           ; $6f5c: $a0
	ld   [bc], a                                     ; $6f5d: $02
	ld   sp, $a002                                   ; $6f5e: $31 $02 $a0
	add  hl, bc                                      ; $6f61: $09
	daa                                              ; $6f62: $27
	ld   [bc], a                                     ; $6f63: $02
	and  b                                           ; $6f64: $a0
	ld   [bc], a                                     ; $6f65: $02
	add  hl, hl                                      ; $6f66: $29
	ld   [bc], a                                     ; $6f67: $02
	and  b                                           ; $6f68: $a0
	add  hl, bc                                      ; $6f69: $09
	inc  h                                           ; $6f6a: $24
	ld   [bc], a                                     ; $6f6b: $02
	and  b                                           ; $6f6c: $a0
	ld   [bc], a                                     ; $6f6d: $02
	daa                                              ; $6f6e: $27
	ld   [bc], a                                     ; $6f6f: $02
	and  b                                           ; $6f70: $a0
	add  hl, bc                                      ; $6f71: $09
	ld   [hl-], a                                    ; $6f72: $32
	ld   [bc], a                                     ; $6f73: $02
	and  b                                           ; $6f74: $a0
	ld   [bc], a                                     ; $6f75: $02
	inc  h                                           ; $6f76: $24
	ld   [bc], a                                     ; $6f77: $02
	and  b                                           ; $6f78: $a0
	add  hl, bc                                      ; $6f79: $09
	add  hl, hl                                      ; $6f7a: $29
	ld   [bc], a                                     ; $6f7b: $02
	and  b                                           ; $6f7c: $a0
	ld   [bc], a                                     ; $6f7d: $02
	ld   [hl-], a                                    ; $6f7e: $32
	ld   [bc], a                                     ; $6f7f: $02
	and  b                                           ; $6f80: $a0
	add  hl, bc                                      ; $6f81: $09
	daa                                              ; $6f82: $27
	ld   [bc], a                                     ; $6f83: $02
	and  b                                           ; $6f84: $a0
	ld   [bc], a                                     ; $6f85: $02
	add  hl, hl                                      ; $6f86: $29
	ld   [bc], a                                     ; $6f87: $02
	and  b                                           ; $6f88: $a0
	add  hl, bc                                      ; $6f89: $09
	ld   [hl+], a                                    ; $6f8a: $22
	ld   [bc], a                                     ; $6f8b: $02
	and  b                                           ; $6f8c: $a0
	ld   [bc], a                                     ; $6f8d: $02
	daa                                              ; $6f8e: $27
	ld   [bc], a                                     ; $6f8f: $02
	and  b                                           ; $6f90: $a0
	add  hl, bc                                      ; $6f91: $09
	ld   [hl-], a                                    ; $6f92: $32
	ld   [bc], a                                     ; $6f93: $02
	and  b                                           ; $6f94: $a0
	ld   [bc], a                                     ; $6f95: $02
	ld   [hl+], a                                    ; $6f96: $22
	ld   [bc], a                                     ; $6f97: $02
	and  b                                           ; $6f98: $a0
	add  hl, bc                                      ; $6f99: $09
	add  hl, hl                                      ; $6f9a: $29
	ld   [bc], a                                     ; $6f9b: $02
	and  b                                           ; $6f9c: $a0
	ld   [bc], a                                     ; $6f9d: $02
	ld   [hl-], a                                    ; $6f9e: $32
	ld   [bc], a                                     ; $6f9f: $02
	and  b                                           ; $6fa0: $a0
	add  hl, bc                                      ; $6fa1: $09
	daa                                              ; $6fa2: $27
	ld   [bc], a                                     ; $6fa3: $02
	and  b                                           ; $6fa4: $a0
	ld   [bc], a                                     ; $6fa5: $02
	add  hl, hl                                      ; $6fa6: $29
	ld   [bc], a                                     ; $6fa7: $02
	and  b                                           ; $6fa8: $a0
	add  hl, bc                                      ; $6fa9: $09
	ld   [hl+], a                                    ; $6faa: $22
	ld   [bc], a                                     ; $6fab: $02
	and  b                                           ; $6fac: $a0
	ld   [bc], a                                     ; $6fad: $02
	daa                                              ; $6fae: $27
	ld   [bc], a                                     ; $6faf: $02
	and  b                                           ; $6fb0: $a0
	add  hl, bc                                      ; $6fb1: $09
	ld   [hl-], a                                    ; $6fb2: $32
	ld   [bc], a                                     ; $6fb3: $02
	and  b                                           ; $6fb4: $a0
	ld   [bc], a                                     ; $6fb5: $02
	ld   [hl+], a                                    ; $6fb6: $22
	ld   [bc], a                                     ; $6fb7: $02
	and  b                                           ; $6fb8: $a0
	add  hl, bc                                      ; $6fb9: $09
	add  hl, hl                                      ; $6fba: $29
	ld   [bc], a                                     ; $6fbb: $02
	and  b                                           ; $6fbc: $a0
	ld   [bc], a                                     ; $6fbd: $02
	ld   [hl-], a                                    ; $6fbe: $32
	ld   [bc], a                                     ; $6fbf: $02
	and  b                                           ; $6fc0: $a0
	add  hl, bc                                      ; $6fc1: $09
	daa                                              ; $6fc2: $27
	ld   [bc], a                                     ; $6fc3: $02
	and  b                                           ; $6fc4: $a0
	ld   [bc], a                                     ; $6fc5: $02
	add  hl, hl                                      ; $6fc6: $29
	ld   [bc], a                                     ; $6fc7: $02
	and  b                                           ; $6fc8: $a0
	add  hl, bc                                      ; $6fc9: $09
	ld   [hl+], a                                    ; $6fca: $22
	ld   [bc], a                                     ; $6fcb: $02
	and  b                                           ; $6fcc: $a0
	ld   [bc], a                                     ; $6fcd: $02
	daa                                              ; $6fce: $27
	ld   [bc], a                                     ; $6fcf: $02
	and  b                                           ; $6fd0: $a0
	add  hl, bc                                      ; $6fd1: $09
	ld   [hl-], a                                    ; $6fd2: $32
	ld   [bc], a                                     ; $6fd3: $02
	and  b                                           ; $6fd4: $a0
	ld   [bc], a                                     ; $6fd5: $02
	ld   [hl+], a                                    ; $6fd6: $22
	ld   [bc], a                                     ; $6fd7: $02
	and  b                                           ; $6fd8: $a0
	add  hl, bc                                      ; $6fd9: $09
	add  hl, hl                                      ; $6fda: $29
	ld   [bc], a                                     ; $6fdb: $02
	and  b                                           ; $6fdc: $a0
	ld   [bc], a                                     ; $6fdd: $02
	ld   [hl-], a                                    ; $6fde: $32
	ld   [bc], a                                     ; $6fdf: $02
	and  b                                           ; $6fe0: $a0
	add  hl, bc                                      ; $6fe1: $09
	daa                                              ; $6fe2: $27
	ld   [bc], a                                     ; $6fe3: $02
	and  b                                           ; $6fe4: $a0
	ld   [bc], a                                     ; $6fe5: $02
	add  hl, hl                                      ; $6fe6: $29
	ld   [bc], a                                     ; $6fe7: $02
	and  b                                           ; $6fe8: $a0
	add  hl, bc                                      ; $6fe9: $09
	ld   [hl+], a                                    ; $6fea: $22
	ld   [bc], a                                     ; $6feb: $02
	and  b                                           ; $6fec: $a0
	ld   [bc], a                                     ; $6fed: $02
	daa                                              ; $6fee: $27
	ld   [bc], a                                     ; $6fef: $02
	and  b                                           ; $6ff0: $a0
	add  hl, bc                                      ; $6ff1: $09
	ld   [hl-], a                                    ; $6ff2: $32
	ld   [bc], a                                     ; $6ff3: $02
	and  b                                           ; $6ff4: $a0
	ld   [bc], a                                     ; $6ff5: $02
	ld   [hl+], a                                    ; $6ff6: $22
	ld   [bc], a                                     ; $6ff7: $02
	and  b                                           ; $6ff8: $a0
	add  hl, bc                                      ; $6ff9: $09
	add  hl, hl                                      ; $6ffa: $29
	ld   [bc], a                                     ; $6ffb: $02
	and  b                                           ; $6ffc: $a0
	ld   [bc], a                                     ; $6ffd: $02
	ld   [hl-], a                                    ; $6ffe: $32
	ld   [bc], a                                     ; $6fff: $02
	and  b                                           ; $7000: $a0
	add  hl, bc                                      ; $7001: $09
	ld   h, $02                                      ; $7002: $26 $02
	and  b                                           ; $7004: $a0
	ld   [bc], a                                     ; $7005: $02
	add  hl, hl                                      ; $7006: $29
	ld   [bc], a                                     ; $7007: $02
	and  b                                           ; $7008: $a0
	add  hl, bc                                      ; $7009: $09
	ld   [hl+], a                                    ; $700a: $22
	ld   [bc], a                                     ; $700b: $02
	and  b                                           ; $700c: $a0
	ld   [bc], a                                     ; $700d: $02
	ld   h, $02                                      ; $700e: $26 $02
	and  b                                           ; $7010: $a0
	add  hl, bc                                      ; $7011: $09
	ld   [hl-], a                                    ; $7012: $32
	ld   [bc], a                                     ; $7013: $02
	and  b                                           ; $7014: $a0
	ld   [bc], a                                     ; $7015: $02
	ld   [hl+], a                                    ; $7016: $22
	ld   [bc], a                                     ; $7017: $02
	and  b                                           ; $7018: $a0
	add  hl, bc                                      ; $7019: $09
	add  hl, hl                                      ; $701a: $29
	ld   [bc], a                                     ; $701b: $02
	and  b                                           ; $701c: $a0
	ld   [bc], a                                     ; $701d: $02
	ld   [hl-], a                                    ; $701e: $32
	ld   [bc], a                                     ; $701f: $02
	and  b                                           ; $7020: $a0
	add  hl, bc                                      ; $7021: $09
	ld   h, $02                                      ; $7022: $26 $02
	and  b                                           ; $7024: $a0
	ld   [bc], a                                     ; $7025: $02
	add  hl, hl                                      ; $7026: $29
	ld   [bc], a                                     ; $7027: $02
	and  b                                           ; $7028: $a0
	add  hl, bc                                      ; $7029: $09
	ld   [hl+], a                                    ; $702a: $22
	ld   [bc], a                                     ; $702b: $02
	and  b                                           ; $702c: $a0
	ld   [bc], a                                     ; $702d: $02
	ld   h, $02                                      ; $702e: $26 $02
	and  b                                           ; $7030: $a0
	add  hl, bc                                      ; $7031: $09

jr_0fd_7032:
	ld   [hl-], a                                    ; $7032: $32
	ld   [bc], a                                     ; $7033: $02
	and  b                                           ; $7034: $a0
	ld   [bc], a                                     ; $7035: $02
	ld   [hl+], a                                    ; $7036: $22
	ld   [bc], a                                     ; $7037: $02
	and  b                                           ; $7038: $a0
	add  hl, bc                                      ; $7039: $09
	add  hl, hl                                      ; $703a: $29
	ld   [bc], a                                     ; $703b: $02
	and  b                                           ; $703c: $a0
	ld   [bc], a                                     ; $703d: $02
	ld   [hl-], a                                    ; $703e: $32
	ld   [bc], a                                     ; $703f: $02
	and  b                                           ; $7040: $a0
	add  hl, bc                                      ; $7041: $09
	ld   [hl-], a                                    ; $7042: $32
	ld   [bc], a                                     ; $7043: $02
	and  b                                           ; $7044: $a0
	ld   [bc], a                                     ; $7045: $02
	add  hl, hl                                      ; $7046: $29
	ld   [bc], a                                     ; $7047: $02
	and  b                                           ; $7048: $a0
	add  hl, bc                                      ; $7049: $09
	ld   [hl], $02                                   ; $704a: $36 $02
	and  b                                           ; $704c: $a0
	ld   [bc], a                                     ; $704d: $02
	ld   [hl-], a                                    ; $704e: $32
	ld   [bc], a                                     ; $704f: $02
	and  b                                           ; $7050: $a0
	add  hl, bc                                      ; $7051: $09
	add  hl, sp                                      ; $7052: $39
	ld   [bc], a                                     ; $7053: $02
	and  b                                           ; $7054: $a0
	ld   [bc], a                                     ; $7055: $02
	ld   [hl], $02                                   ; $7056: $36 $02
	and  b                                           ; $7058: $a0
	add  hl, bc                                      ; $7059: $09
	ld   [hl], $02                                   ; $705a: $36 $02
	and  b                                           ; $705c: $a0
	ld   [bc], a                                     ; $705d: $02
	add  hl, sp                                      ; $705e: $39
	ld   [bc], a                                     ; $705f: $02
	and  b                                           ; $7060: $a0
	add  hl, bc                                      ; $7061: $09
	add  hl, sp                                      ; $7062: $39
	ld   [bc], a                                     ; $7063: $02
	and  b                                           ; $7064: $a0
	ld   [bc], a                                     ; $7065: $02
	ld   [hl], $02                                   ; $7066: $36 $02
	and  b                                           ; $7068: $a0
	add  hl, bc                                      ; $7069: $09
	ld   b, d                                        ; $706a: $42
	ld   [bc], a                                     ; $706b: $02
	and  b                                           ; $706c: $a0
	ld   [bc], a                                     ; $706d: $02
	add  hl, sp                                      ; $706e: $39
	ld   [bc], a                                     ; $706f: $02
	jp   $a310                                       ; $7070: $c3 $10 $a3


	ld   h, $a0                                      ; $7073: $26 $a0
	add  hl, bc                                      ; $7075: $09
	add  hl, hl                                      ; $7076: $29
	jr   nz, @+$2c                                   ; $7077: $20 $2a

	jr   nz, @+$2d                                   ; $7079: $20 $2b

	jr   nz, @+$32                                   ; $707b: $20 $30

	jr   nz, @+$34                                   ; $707d: $20 $32

	ld   b, b                                        ; $707f: $40
	or   b                                           ; $7080: $b0
	di                                               ; $7081: $f3
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	ld   [$0900], sp                                 ; $7084: $08 $00 $09
	nop                                              ; $7087: $00
	db   $fd                                         ; $7088: $fd
	di                                               ; $7089: $f3
	and  d                                           ; $708a: $a2
	nop                                              ; $708b: $00
	rst  ToBoot                                         ; $708c: $c7
	jr   nc, jr_0fd_7032                             ; $708d: $30 $a3

	ld   h, $a0                                      ; $708f: $26 $a0
	dec  c                                           ; $7091: $0d
	ld   a, [hl-]                                    ; $7092: $3a
	inc  c                                           ; $7093: $0c
	ld   a, [hl-]                                    ; $7094: $3a
	inc  b                                           ; $7095: $04
	ld   [hl-], a                                    ; $7096: $32
	ld   [$083a], sp                                 ; $7097: $08 $3a $08
	add  hl, sp                                      ; $709a: $39
	jr   nz, @+$3a                                   ; $709b: $20 $38

	inc  c                                           ; $709d: $0c
	jr   c, jr_0fd_70a4                              ; $709e: $38 $04

	scf                                              ; $70a0: $37
	ld   [$0835], sp                                 ; $70a1: $08 $35 $08

jr_0fd_70a4:
	inc  sp                                          ; $70a4: $33
	jr   nz, jr_0fd_70d7                             ; $70a5: $20 $30

	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $70a7: $08 $32 $08
	inc  sp                                          ; $70aa: $33
	ld   [$0830], sp                                 ; $70ab: $08 $30 $08
	ld   a, [hl+]                                    ; $70ae: $2a
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $70af: $08 $32 $08
	scf                                              ; $70b2: $37
	db   $10                                         ; $70b3: $10
	scf                                              ; $70b4: $37
	inc  c                                           ; $70b5: $0c
	scf                                              ; $70b6: $37
	inc  b                                           ; $70b7: $04
	ld   [hl], $08                                   ; $70b8: $36 $08
	scf                                              ; $70ba: $37
	ld   [$2039], sp                                 ; $70bb: $08 $39 $20
	ld   a, [hl-]                                    ; $70be: $3a
	inc  c                                           ; $70bf: $0c
	ld   a, [hl-]                                    ; $70c0: $3a
	inc  b                                           ; $70c1: $04
	ld   [hl-], a                                    ; $70c2: $32
	ld   [$083a], sp                                 ; $70c3: $08 $3a $08
	add  hl, sp                                      ; $70c6: $39
	jr   nz, jr_0fd_7100                             ; $70c7: $20 $37

	inc  c                                           ; $70c9: $0c
	scf                                              ; $70ca: $37
	inc  b                                           ; $70cb: $04
	dec  [hl]                                        ; $70cc: $35
	ld   [$0833], sp                                 ; $70cd: $08 $33 $08
	ld   [hl-], a                                    ; $70d0: $32
	jr   nz, @+$32                                   ; $70d1: $20 $30

	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $70d3: $08 $32 $08
	inc  sp                                          ; $70d6: $33

jr_0fd_70d7:
	ld   [$0830], sp                                 ; $70d7: $08 $30 $08
	ld   [hl-], a                                    ; $70da: $32
	db   $10                                         ; $70db: $10
	ld   [hl], $10                                   ; $70dc: $36 $10
	scf                                              ; $70de: $37
	ld   b, b                                        ; $70df: $40
	ld   a, [hl-]                                    ; $70e0: $3a
	inc  c                                           ; $70e1: $0c
	ld   a, [hl-]                                    ; $70e2: $3a
	inc  b                                           ; $70e3: $04
	ld   [hl-], a                                    ; $70e4: $32
	ld   [$083a], sp                                 ; $70e5: $08 $3a $08
	add  hl, sp                                      ; $70e8: $39
	inc  e                                           ; $70e9: $1c
	rra                                              ; $70ea: $1f
	inc  b                                           ; $70eb: $04
	jr   c, @+$0e                                    ; $70ec: $38 $0c

	jr   c, jr_0fd_70f4                              ; $70ee: $38 $04

	scf                                              ; $70f0: $37
	ld   [$0835], sp                                 ; $70f1: $08 $35 $08

jr_0fd_70f4:
	inc  sp                                          ; $70f4: $33
	ld   a, [de]                                     ; $70f5: $1a
	rra                                              ; $70f6: $1f
	ld   b, $30                                      ; $70f7: $06 $30
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $70f9: $08 $32 $08
	inc  sp                                          ; $70fc: $33
	ld   [$0830], sp                                 ; $70fd: $08 $30 $08

jr_0fd_7100:
	ld   a, [hl+]                                    ; $7100: $2a
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $7101: $08 $32 $08
	scf                                              ; $7104: $37
	ld   a, [bc]                                     ; $7105: $0a
	rra                                              ; $7106: $1f
	ld   b, $37                                      ; $7107: $06 $37
	inc  c                                           ; $7109: $0c
	scf                                              ; $710a: $37
	inc  b                                           ; $710b: $04
	ld   [hl], $08                                   ; $710c: $36 $08
	scf                                              ; $710e: $37
	ld   [$2039], sp                                 ; $710f: $08 $39 $20
	ld   a, [hl-]                                    ; $7112: $3a
	inc  c                                           ; $7113: $0c
	ld   a, [hl-]                                    ; $7114: $3a
	inc  b                                           ; $7115: $04
	ld   [hl-], a                                    ; $7116: $32
	ld   [$083a], sp                                 ; $7117: $08 $3a $08
	add  hl, sp                                      ; $711a: $39
	inc  c                                           ; $711b: $0c
	rra                                              ; $711c: $1f
	inc  b                                           ; $711d: $04
	add  hl, sp                                      ; $711e: $39
	ld   [$083a], sp                                 ; $711f: $08 $3a $08
	ld   b, b                                        ; $7122: $40
	inc  c                                           ; $7123: $0c
	ld   b, b                                        ; $7124: $40
	inc  b                                           ; $7125: $04
	ld   a, [hl-]                                    ; $7126: $3a
	ld   [$0840], sp                                 ; $7127: $08 $40 $08
	ld   b, d                                        ; $712a: $42
	ld   a, [de]                                     ; $712b: $1a
	rra                                              ; $712c: $1f
	ld   b, $42                                      ; $712d: $06 $42
	ld   [$0840], sp                                 ; $712f: $08 $40 $08
	scf                                              ; $7132: $37
	ld   [$0833], sp                                 ; $7133: $08 $33 $08
	ld   a, [hl-]                                    ; $7136: $3a
	db   $10                                         ; $7137: $10
	add  hl, sp                                      ; $7138: $39
	ld   c, $1f                                      ; $7139: $0e $1f
	ld   [bc], a                                     ; $713b: $02
	add  hl, sp                                      ; $713c: $39
	ld   [$0837], sp                                 ; $713d: $08 $37 $08
	ld   [hl-], a                                    ; $7140: $32
	ld   [$082a], sp                                 ; $7141: $08 $2a $08
	dec  [hl]                                        ; $7144: $35
	db   $10                                         ; $7145: $10
	inc  sp                                          ; $7146: $33
	inc  c                                           ; $7147: $0c
	rra                                              ; $7148: $1f
	inc  b                                           ; $7149: $04
	ld   [hl-], a                                    ; $714a: $32
	ld   [$0831], sp                                 ; $714b: $08 $31 $08
	ld   [hl-], a                                    ; $714e: $32
	ld   [$0836], sp                                 ; $714f: $08 $36 $08
	ld   a, [hl-]                                    ; $7152: $3a
	db   $10                                         ; $7153: $10
	add  hl, sp                                      ; $7154: $39
	db   $10                                         ; $7155: $10
	scf                                              ; $7156: $37
	jr   nz, @+$21                                   ; $7157: $20 $1f

	ld   [$0839], sp                                 ; $7159: $08 $39 $08
	ld   a, [hl-]                                    ; $715c: $3a
	ld   [$0840], sp                                 ; $715d: $08 $40 $08
	ld   b, d                                        ; $7160: $42
	ld   a, [de]                                     ; $7161: $1a
	rra                                              ; $7162: $1f
	ld   b, $35                                      ; $7163: $06 $35
	ld   [$0437], sp                                 ; $7165: $08 $37 $04
	dec  [hl]                                        ; $7168: $35
	inc  b                                           ; $7169: $04
	inc  [hl]                                        ; $716a: $34
	ld   [$0835], sp                                 ; $716b: $08 $35 $08
	ld   b, b                                        ; $716e: $40
	ld   c, $1f                                      ; $716f: $0e $1f
	ld   [bc], a                                     ; $7171: $02
	ld   b, b                                        ; $7172: $40
	ld   [$0839], sp                                 ; $7173: $08 $39 $08
	ld   b, d                                        ; $7176: $42
	jr   jr_0fd_7198                                 ; $7177: $18 $1f

	ld   [$0c3a], sp                                 ; $7179: $08 $3a $0c
	ld   a, [hl-]                                    ; $717c: $3a
	inc  b                                           ; $717d: $04
	add  hl, sp                                      ; $717e: $39
	ld   [$083a], sp                                 ; $717f: $08 $3a $08
	add  hl, sp                                      ; $7182: $39
	ld   [$1032], sp                                 ; $7183: $08 $32 $10
	add  hl, sp                                      ; $7186: $39
	ld   [$3637], sp                                 ; $7187: $08 $37 $36
	rra                                              ; $718a: $1f
	ld   a, [bc]                                     ; $718b: $0a
	scf                                              ; $718c: $37
	inc  c                                           ; $718d: $0c
	scf                                              ; $718e: $37
	inc  b                                           ; $718f: $04
	scf                                              ; $7190: $37
	ld   [$0837], sp                                 ; $7191: $08 $37 $08
	scf                                              ; $7194: $37
	ld   [$1039], sp                                 ; $7195: $08 $39 $10

jr_0fd_7198:
	scf                                              ; $7198: $37
	ld   [$0c35], sp                                 ; $7199: $08 $35 $0c
	dec  [hl]                                        ; $719c: $35
	inc  b                                           ; $719d: $04
	dec  [hl]                                        ; $719e: $35
	ld   [$0835], sp                                 ; $719f: $08 $35 $08
	dec  [hl]                                        ; $71a2: $35
	ld   [$1037], sp                                 ; $71a3: $08 $37 $10
	ld   [hl-], a                                    ; $71a6: $32
	ld   [$1e33], sp                                 ; $71a7: $08 $33 $1e
	rra                                              ; $71aa: $1f
	ld   [bc], a                                     ; $71ab: $02
	dec  [hl]                                        ; $71ac: $35
	db   $10                                         ; $71ad: $10
	scf                                              ; $71ae: $37
	db   $10                                         ; $71af: $10
	add  hl, sp                                      ; $71b0: $39
	jr   nz, @+$3b                                   ; $71b1: $20 $39

	ld   [$1037], sp                                 ; $71b3: $08 $37 $10
	ld   [hl], $08                                   ; $71b6: $36 $08
	add  hl, sp                                      ; $71b8: $39
	ld   b, b                                        ; $71b9: $40
	rra                                              ; $71ba: $1f
	ld   b, b                                        ; $71bb: $40
	and  d                                           ; $71bc: $a2
	nop                                              ; $71bd: $00
	jp   $a310                                       ; $71be: $c3 $10 $a3


	ld   h, $a0                                      ; $71c1: $26 $a0
	dec  c                                           ; $71c3: $0d
	ld   [hl-], a                                    ; $71c4: $32
	jr   nz, @+$35                                   ; $71c5: $20 $33

	jr   nz, jr_0fd_71fd                             ; $71c7: $20 $34

	jr   nz, jr_0fd_7200                             ; $71c9: $20 $35

	jr   nz, jr_0fd_7203                             ; $71cb: $20 $36

	ld   b, b                                        ; $71cd: $40
	or   b                                           ; $71ce: $b0
	di                                               ; $71cf: $f3
	rst  $38                                         ; $71d0: $ff
	rst  $38                                         ; $71d1: $ff
	ld   [$0240], sp                                 ; $71d2: $08 $40 $02
	ld   [bc], a                                     ; $71d5: $02
	db   $fd                                         ; $71d6: $fd
	di                                               ; $71d7: $f3
	and  b                                           ; $71d8: $a0
	ld   [bc], a                                     ; $71d9: $02
	and  e                                           ; $71da: $a3
	inc  h                                           ; $71db: $24
	and  d                                           ; $71dc: $a2
	ld   b, b                                        ; $71dd: $40
	db   $fd                                         ; $71de: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $71df: $f0 $a0
	ld   [bc], a                                     ; $71e1: $02
	daa                                              ; $71e2: $27
	ld   [bc], a                                     ; $71e3: $02
	and  b                                           ; $71e4: $a0
	ld   b, $27                                      ; $71e5: $06 $27
	ld   [bc], a                                     ; $71e7: $02
	rra                                              ; $71e8: $1f
	inc  b                                           ; $71e9: $04
	or   e                                           ; $71ea: $b3
	ldh  a, [$fd]                                    ; $71eb: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $71ed: $f0 $a0
	ld   [bc], a                                     ; $71ef: $02
	ld   h, $02                                      ; $71f0: $26 $02
	and  b                                           ; $71f2: $a0
	ld   b, $26                                      ; $71f3: $06 $26
	ld   [bc], a                                     ; $71f5: $02
	rra                                              ; $71f6: $1f
	inc  b                                           ; $71f7: $04
	or   e                                           ; $71f8: $b3
	ldh  a, [$fd]                                    ; $71f9: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $71fb: $f0 $a0

jr_0fd_71fd:
	ld   [bc], a                                     ; $71fd: $02
	dec  h                                           ; $71fe: $25
	ld   [bc], a                                     ; $71ff: $02

jr_0fd_7200:
	and  b                                           ; $7200: $a0
	ld   b, $25                                      ; $7201: $06 $25

jr_0fd_7203:
	ld   [bc], a                                     ; $7203: $02
	rra                                              ; $7204: $1f
	inc  b                                           ; $7205: $04
	or   e                                           ; $7206: $b3
	ldh  a, [$fd]                                    ; $7207: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7209: $f0 $a0
	ld   [bc], a                                     ; $720b: $02
	daa                                              ; $720c: $27
	ld   [bc], a                                     ; $720d: $02
	and  b                                           ; $720e: $a0
	ld   b, $27                                      ; $720f: $06 $27
	ld   [bc], a                                     ; $7211: $02
	rra                                              ; $7212: $1f
	inc  b                                           ; $7213: $04
	or   e                                           ; $7214: $b3
	ldh  a, [$fd]                                    ; $7215: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7217: $f0 $a0
	ld   [bc], a                                     ; $7219: $02
	add  hl, hl                                      ; $721a: $29
	ld   [bc], a                                     ; $721b: $02
	and  b                                           ; $721c: $a0
	ld   b, $29                                      ; $721d: $06 $29
	ld   [bc], a                                     ; $721f: $02
	rra                                              ; $7220: $1f
	inc  b                                           ; $7221: $04
	or   e                                           ; $7222: $b3
	ldh  a, [$fd]                                    ; $7223: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7225: $f0 $a0
	ld   [bc], a                                     ; $7227: $02
	ld   a, [hl+]                                    ; $7228: $2a
	ld   [bc], a                                     ; $7229: $02
	and  b                                           ; $722a: $a0
	ld   b, $2a                                      ; $722b: $06 $2a
	ld   [bc], a                                     ; $722d: $02
	rra                                              ; $722e: $1f
	inc  b                                           ; $722f: $04
	or   e                                           ; $7230: $b3
	ldh  a, [$fd]                                    ; $7231: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7233: $f0 $a0
	ld   [bc], a                                     ; $7235: $02
	ld   sp, $a002                                   ; $7236: $31 $02 $a0
	ld   b, $31                                      ; $7239: $06 $31
	ld   [bc], a                                     ; $723b: $02
	rra                                              ; $723c: $1f
	inc  b                                           ; $723d: $04
	or   e                                           ; $723e: $b3
	ldh  a, [$fd]                                    ; $723f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7241: $f0 $a0
	ld   [bc], a                                     ; $7243: $02
	ld   [hl-], a                                    ; $7244: $32
	ld   [bc], a                                     ; $7245: $02
	and  b                                           ; $7246: $a0
	ld   b, $32                                      ; $7247: $06 $32
	ld   [bc], a                                     ; $7249: $02
	rra                                              ; $724a: $1f
	inc  b                                           ; $724b: $04
	or   c                                           ; $724c: $b1
	ldh  a, [hScriptOpcodeParams]                                    ; $724d: $f0 $a0
	ld   [bc], a                                     ; $724f: $02
	ld   [hl-], a                                    ; $7250: $32
	inc  b                                           ; $7251: $04
	add  hl, hl                                      ; $7252: $29
	inc  b                                           ; $7253: $04
	ld   [hl+], a                                    ; $7254: $22
	inc  b                                           ; $7255: $04
	ld   h, $04                                      ; $7256: $26 $04
	db   $fd                                         ; $7258: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7259: $f0 $a0
	ld   [bc], a                                     ; $725b: $02
	daa                                              ; $725c: $27
	ld   [bc], a                                     ; $725d: $02
	and  b                                           ; $725e: $a0
	ld   b, $27                                      ; $725f: $06 $27
	ld   [bc], a                                     ; $7261: $02
	rra                                              ; $7262: $1f
	inc  b                                           ; $7263: $04
	or   e                                           ; $7264: $b3
	ldh  a, [$fd]                                    ; $7265: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7267: $f0 $a0
	ld   [bc], a                                     ; $7269: $02
	dec  h                                           ; $726a: $25
	ld   [bc], a                                     ; $726b: $02
	and  b                                           ; $726c: $a0
	ld   b, $25                                      ; $726d: $06 $25
	ld   [bc], a                                     ; $726f: $02
	rra                                              ; $7270: $1f
	inc  b                                           ; $7271: $04
	or   e                                           ; $7272: $b3
	ldh  a, [$fd]                                    ; $7273: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7275: $f0 $a0
	ld   [bc], a                                     ; $7277: $02
	inc  hl                                          ; $7278: $23
	ld   [bc], a                                     ; $7279: $02
	and  b                                           ; $727a: $a0
	ld   b, $23                                      ; $727b: $06 $23
	ld   [bc], a                                     ; $727d: $02
	rra                                              ; $727e: $1f
	inc  b                                           ; $727f: $04
	or   c                                           ; $7280: $b1
	ldh  a, [$fd]                                    ; $7281: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7283: $f0 $a0
	ld   [bc], a                                     ; $7285: $02
	dec  h                                           ; $7286: $25
	ld   [bc], a                                     ; $7287: $02
	and  b                                           ; $7288: $a0
	ld   b, $25                                      ; $7289: $06 $25
	ld   [bc], a                                     ; $728b: $02
	rra                                              ; $728c: $1f
	inc  b                                           ; $728d: $04
	or   c                                           ; $728e: $b1
	ldh  a, [$fd]                                    ; $728f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $7291: $f0 $a0
	ld   [bc], a                                     ; $7293: $02
	ld   a, [hl+]                                    ; $7294: $2a
	ld   [bc], a                                     ; $7295: $02
	and  b                                           ; $7296: $a0
	ld   b, $2a                                      ; $7297: $06 $2a
	ld   [bc], a                                     ; $7299: $02
	rra                                              ; $729a: $1f
	inc  b                                           ; $729b: $04
	or   e                                           ; $729c: $b3
	ldh  a, [$fd]                                    ; $729d: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $729f: $f0 $a0
	ld   [bc], a                                     ; $72a1: $02
	add  hl, hl                                      ; $72a2: $29
	ld   [bc], a                                     ; $72a3: $02
	and  b                                           ; $72a4: $a0
	ld   b, $29                                      ; $72a5: $06 $29
	ld   [bc], a                                     ; $72a7: $02
	rra                                              ; $72a8: $1f
	inc  b                                           ; $72a9: $04
	or   e                                           ; $72aa: $b3
	ldh  a, [$fd]                                    ; $72ab: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $72ad: $f0 $a0
	ld   [bc], a                                     ; $72af: $02
	ld   [hl+], a                                    ; $72b0: $22
	ld   [bc], a                                     ; $72b1: $02
	and  b                                           ; $72b2: $a0
	ld   b, $22                                      ; $72b3: $06 $22
	ld   [bc], a                                     ; $72b5: $02
	rra                                              ; $72b6: $1f
	inc  b                                           ; $72b7: $04
	or   e                                           ; $72b8: $b3
	ldh  a, [$fd]                                    ; $72b9: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $72bb: $f0 $a0
	ld   [bc], a                                     ; $72bd: $02
	daa                                              ; $72be: $27
	ld   [bc], a                                     ; $72bf: $02
	and  b                                           ; $72c0: $a0
	ld   b, $27                                      ; $72c1: $06 $27
	ld   [bc], a                                     ; $72c3: $02
	rra                                              ; $72c4: $1f
	inc  b                                           ; $72c5: $04
	or   l                                           ; $72c6: $b5
	ldh  a, [hScriptOpcodeParams]                                    ; $72c7: $f0 $a0
	ld   [bc], a                                     ; $72c9: $02
	daa                                              ; $72ca: $27
	inc  b                                           ; $72cb: $04
	ld   [hl+], a                                    ; $72cc: $22
	inc  b                                           ; $72cd: $04
	dec  d                                           ; $72ce: $15
	inc  b                                           ; $72cf: $04
	ld   d, $04                                      ; $72d0: $16 $04
	rla                                              ; $72d2: $17
	ld   [$02a0], sp                                 ; $72d3: $08 $a0 $02
	ld   [hl-], a                                    ; $72d6: $32
	ld   [bc], a                                     ; $72d7: $02
	and  b                                           ; $72d8: $a0
	ld   b, $32                                      ; $72d9: $06 $32
	ld   [bc], a                                     ; $72db: $02
	and  b                                           ; $72dc: $a0
	ld   [bc], a                                     ; $72dd: $02
	ld   [hl-], a                                    ; $72de: $32
	ld   [bc], a                                     ; $72df: $02
	and  b                                           ; $72e0: $a0
	ld   b, $32                                      ; $72e1: $06 $32
	ld   [bc], a                                     ; $72e3: $02
	rra                                              ; $72e4: $1f
	ld   [$02a0], sp                                 ; $72e5: $08 $a0 $02
	ld   [hl-], a                                    ; $72e8: $32
	ld   [bc], a                                     ; $72e9: $02
	and  b                                           ; $72ea: $a0
	ld   b, $32                                      ; $72eb: $06 $32
	ld   [bc], a                                     ; $72ed: $02
	and  b                                           ; $72ee: $a0
	ld   [bc], a                                     ; $72ef: $02
	ld   [hl-], a                                    ; $72f0: $32
	ld   [bc], a                                     ; $72f1: $02
	and  b                                           ; $72f2: $a0
	ld   b, $32                                      ; $72f3: $06 $32
	ld   [bc], a                                     ; $72f5: $02
	and  b                                           ; $72f6: $a0
	ld   [bc], a                                     ; $72f7: $02
	ld   d, $08                                      ; $72f8: $16 $08
	ld   [hl-], a                                    ; $72fa: $32
	ld   [bc], a                                     ; $72fb: $02
	and  b                                           ; $72fc: $a0
	ld   b, $32                                      ; $72fd: $06 $32
	ld   [bc], a                                     ; $72ff: $02
	and  b                                           ; $7300: $a0
	ld   [bc], a                                     ; $7301: $02
	ld   [hl-], a                                    ; $7302: $32
	ld   [bc], a                                     ; $7303: $02
	and  b                                           ; $7304: $a0
	ld   b, $32                                      ; $7305: $06 $32
	ld   [bc], a                                     ; $7307: $02
	rra                                              ; $7308: $1f
	ld   [$02a0], sp                                 ; $7309: $08 $a0 $02
	ld   [hl-], a                                    ; $730c: $32
	ld   [bc], a                                     ; $730d: $02
	and  b                                           ; $730e: $a0
	ld   b, $32                                      ; $730f: $06 $32
	ld   [bc], a                                     ; $7311: $02
	and  b                                           ; $7312: $a0
	ld   [bc], a                                     ; $7313: $02
	ld   [hl-], a                                    ; $7314: $32
	ld   [bc], a                                     ; $7315: $02
	and  b                                           ; $7316: $a0
	ld   b, $32                                      ; $7317: $06 $32
	ld   [bc], a                                     ; $7319: $02
	and  b                                           ; $731a: $a0
	ld   [bc], a                                     ; $731b: $02
	dec  d                                           ; $731c: $15
	ld   [$0230], sp                                 ; $731d: $08 $30 $02
	and  b                                           ; $7320: $a0
	ld   b, $30                                      ; $7321: $06 $30
	ld   [bc], a                                     ; $7323: $02
	and  b                                           ; $7324: $a0
	ld   [bc], a                                     ; $7325: $02
	jr   nc, @+$04                                   ; $7326: $30 $02

	and  b                                           ; $7328: $a0
	ld   b, $30                                      ; $7329: $06 $30
	ld   [bc], a                                     ; $732b: $02
	and  b                                           ; $732c: $a0
	ld   [bc], a                                     ; $732d: $02
	rla                                              ; $732e: $17
	ld   [$022b], sp                                 ; $732f: $08 $2b $02
	and  b                                           ; $7332: $a0
	ld   b, $2b                                      ; $7333: $06 $2b
	ld   [bc], a                                     ; $7335: $02
	and  b                                           ; $7336: $a0
	ld   [bc], a                                     ; $7337: $02
	dec  hl                                          ; $7338: $2b
	ld   [bc], a                                     ; $7339: $02
	and  b                                           ; $733a: $a0
	ld   b, $2b                                      ; $733b: $06 $2b
	ld   [bc], a                                     ; $733d: $02
	and  b                                           ; $733e: $a0
	ld   [bc], a                                     ; $733f: $02
	jr   nz, jr_0fd_734a                             ; $7340: $20 $08

	inc  sp                                          ; $7342: $33
	ld   [bc], a                                     ; $7343: $02
	and  b                                           ; $7344: $a0
	ld   b, $33                                      ; $7345: $06 $33
	ld   [bc], a                                     ; $7347: $02
	and  b                                           ; $7348: $a0
	ld   [bc], a                                     ; $7349: $02

jr_0fd_734a:
	inc  sp                                          ; $734a: $33
	ld   [bc], a                                     ; $734b: $02
	and  b                                           ; $734c: $a0
	ld   b, $33                                      ; $734d: $06 $33
	ld   [bc], a                                     ; $734f: $02
	rra                                              ; $7350: $1f
	ld   [$02a0], sp                                 ; $7351: $08 $a0 $02
	inc  sp                                          ; $7354: $33
	ld   [bc], a                                     ; $7355: $02
	and  b                                           ; $7356: $a0
	ld   b, $33                                      ; $7357: $06 $33
	ld   [bc], a                                     ; $7359: $02
	and  b                                           ; $735a: $a0
	ld   [bc], a                                     ; $735b: $02
	inc  sp                                          ; $735c: $33
	ld   [bc], a                                     ; $735d: $02
	and  b                                           ; $735e: $a0
	ld   b, $33                                      ; $735f: $06 $33
	ld   [bc], a                                     ; $7361: $02
	and  b                                           ; $7362: $a0
	ld   [bc], a                                     ; $7363: $02
	add  hl, de                                      ; $7364: $19
	ld   [$0233], sp                                 ; $7365: $08 $33 $02
	and  b                                           ; $7368: $a0
	ld   b, $33                                      ; $7369: $06 $33
	ld   [bc], a                                     ; $736b: $02
	and  b                                           ; $736c: $a0
	ld   [bc], a                                     ; $736d: $02
	inc  sp                                          ; $736e: $33
	ld   [bc], a                                     ; $736f: $02
	and  b                                           ; $7370: $a0
	ld   b, $33                                      ; $7371: $06 $33
	ld   [bc], a                                     ; $7373: $02
	rra                                              ; $7374: $1f
	ld   [$02a0], sp                                 ; $7375: $08 $a0 $02
	inc  sp                                          ; $7378: $33
	ld   [bc], a                                     ; $7379: $02
	and  b                                           ; $737a: $a0
	ld   b, $33                                      ; $737b: $06 $33
	ld   [bc], a                                     ; $737d: $02
	and  b                                           ; $737e: $a0
	ld   [bc], a                                     ; $737f: $02
	inc  sp                                          ; $7380: $33
	ld   [bc], a                                     ; $7381: $02
	and  b                                           ; $7382: $a0
	ld   b, $33                                      ; $7383: $06 $33
	ld   [bc], a                                     ; $7385: $02
	and  b                                           ; $7386: $a0
	ld   [bc], a                                     ; $7387: $02
	ld   a, [de]                                     ; $7388: $1a
	ld   [$0232], sp                                 ; $7389: $08 $32 $02
	and  b                                           ; $738c: $a0
	ld   b, $32                                      ; $738d: $06 $32
	ld   [bc], a                                     ; $738f: $02
	and  b                                           ; $7390: $a0
	ld   [bc], a                                     ; $7391: $02
	ld   [hl-], a                                    ; $7392: $32
	ld   [bc], a                                     ; $7393: $02
	and  b                                           ; $7394: $a0
	ld   b, $32                                      ; $7395: $06 $32
	ld   [bc], a                                     ; $7397: $02
	and  b                                           ; $7398: $a0
	ld   [bc], a                                     ; $7399: $02
	ld   [hl+], a                                    ; $739a: $22
	ld   [$0232], sp                                 ; $739b: $08 $32 $02
	and  b                                           ; $739e: $a0
	ld   b, $32                                      ; $739f: $06 $32
	ld   [bc], a                                     ; $73a1: $02
	and  b                                           ; $73a2: $a0
	ld   [bc], a                                     ; $73a3: $02
	ld   [hl-], a                                    ; $73a4: $32
	ld   [bc], a                                     ; $73a5: $02
	and  b                                           ; $73a6: $a0
	ld   b, $32                                      ; $73a7: $06 $32
	ld   [bc], a                                     ; $73a9: $02
	and  b                                           ; $73aa: $a0
	ld   [bc], a                                     ; $73ab: $02
	ld   hl, $3408                                   ; $73ac: $21 $08 $34
	ld   [bc], a                                     ; $73af: $02
	and  b                                           ; $73b0: $a0
	ld   b, $34                                      ; $73b1: $06 $34
	ld   [bc], a                                     ; $73b3: $02
	and  b                                           ; $73b4: $a0
	ld   [bc], a                                     ; $73b5: $02
	inc  [hl]                                        ; $73b6: $34
	ld   [bc], a                                     ; $73b7: $02
	and  b                                           ; $73b8: $a0
	ld   b, $34                                      ; $73b9: $06 $34
	ld   [bc], a                                     ; $73bb: $02
	rra                                              ; $73bc: $1f
	ld   [$02a0], sp                                 ; $73bd: $08 $a0 $02
	inc  [hl]                                        ; $73c0: $34
	ld   [bc], a                                     ; $73c1: $02
	and  b                                           ; $73c2: $a0
	ld   b, $34                                      ; $73c3: $06 $34
	ld   [bc], a                                     ; $73c5: $02
	and  b                                           ; $73c6: $a0
	ld   [bc], a                                     ; $73c7: $02
	inc  [hl]                                        ; $73c8: $34
	ld   [bc], a                                     ; $73c9: $02
	and  b                                           ; $73ca: $a0
	ld   b, $34                                      ; $73cb: $06 $34
	ld   [bc], a                                     ; $73cd: $02
	and  b                                           ; $73ce: $a0
	ld   [bc], a                                     ; $73cf: $02
	ld   [hl+], a                                    ; $73d0: $22
	ld   [$0232], sp                                 ; $73d1: $08 $32 $02
	and  b                                           ; $73d4: $a0
	ld   b, $32                                      ; $73d5: $06 $32
	ld   [bc], a                                     ; $73d7: $02
	and  b                                           ; $73d8: $a0
	ld   [bc], a                                     ; $73d9: $02
	ld   [hl-], a                                    ; $73da: $32
	ld   [bc], a                                     ; $73db: $02
	and  b                                           ; $73dc: $a0
	ld   b, $32                                      ; $73dd: $06 $32
	ld   [bc], a                                     ; $73df: $02
	and  b                                           ; $73e0: $a0
	ld   [bc], a                                     ; $73e1: $02
	ld   h, $08                                      ; $73e2: $26 $08
	ld   [hl-], a                                    ; $73e4: $32
	ld   [bc], a                                     ; $73e5: $02
	and  b                                           ; $73e6: $a0
	ld   b, $32                                      ; $73e7: $06 $32
	ld   [bc], a                                     ; $73e9: $02
	and  b                                           ; $73ea: $a0
	ld   [bc], a                                     ; $73eb: $02
	ld   [hl-], a                                    ; $73ec: $32
	ld   [bc], a                                     ; $73ed: $02
	and  b                                           ; $73ee: $a0
	ld   b, $32                                      ; $73ef: $06 $32
	ld   [bc], a                                     ; $73f1: $02
	and  b                                           ; $73f2: $a0
	ld   [bc], a                                     ; $73f3: $02
	rla                                              ; $73f4: $17
	ld   [$0232], sp                                 ; $73f5: $08 $32 $02
	and  b                                           ; $73f8: $a0
	ld   b, $32                                      ; $73f9: $06 $32
	ld   [bc], a                                     ; $73fb: $02
	and  b                                           ; $73fc: $a0
	ld   [bc], a                                     ; $73fd: $02
	ld   [hl-], a                                    ; $73fe: $32
	ld   [bc], a                                     ; $73ff: $02
	and  b                                           ; $7400: $a0
	ld   b, $32                                      ; $7401: $06 $32
	ld   [bc], a                                     ; $7403: $02
	rra                                              ; $7404: $1f
	ld   [$02a0], sp                                 ; $7405: $08 $a0 $02
	ld   [hl-], a                                    ; $7408: $32
	ld   [bc], a                                     ; $7409: $02
	and  b                                           ; $740a: $a0
	ld   b, $32                                      ; $740b: $06 $32
	ld   [bc], a                                     ; $740d: $02
	and  b                                           ; $740e: $a0
	ld   [bc], a                                     ; $740f: $02
	ld   [hl-], a                                    ; $7410: $32
	ld   [bc], a                                     ; $7411: $02
	and  b                                           ; $7412: $a0
	ld   b, $32                                      ; $7413: $06 $32
	ld   [bc], a                                     ; $7415: $02
	and  b                                           ; $7416: $a0
	ld   [bc], a                                     ; $7417: $02
	ld   [hl+], a                                    ; $7418: $22
	ld   [$0232], sp                                 ; $7419: $08 $32 $02
	and  b                                           ; $741c: $a0
	ld   b, $32                                      ; $741d: $06 $32
	ld   [bc], a                                     ; $741f: $02
	and  b                                           ; $7420: $a0
	ld   [bc], a                                     ; $7421: $02
	ld   [hl-], a                                    ; $7422: $32
	ld   [bc], a                                     ; $7423: $02
	and  b                                           ; $7424: $a0
	ld   b, $32                                      ; $7425: $06 $32
	ld   [bc], a                                     ; $7427: $02
	and  b                                           ; $7428: $a0
	ld   [bc], a                                     ; $7429: $02
	add  hl, de                                      ; $742a: $19
	ld   [$0232], sp                                 ; $742b: $08 $32 $02
	and  b                                           ; $742e: $a0
	ld   b, $32                                      ; $742f: $06 $32
	ld   [bc], a                                     ; $7431: $02
	and  b                                           ; $7432: $a0
	ld   [bc], a                                     ; $7433: $02
	ld   [hl-], a                                    ; $7434: $32
	ld   [bc], a                                     ; $7435: $02
	and  b                                           ; $7436: $a0
	ld   b, $32                                      ; $7437: $06 $32
	ld   [bc], a                                     ; $7439: $02
	and  b                                           ; $743a: $a0
	ld   [bc], a                                     ; $743b: $02
	jr   nz, jr_0fd_7446                             ; $743c: $20 $08

	inc  sp                                          ; $743e: $33
	ld   [bc], a                                     ; $743f: $02
	and  b                                           ; $7440: $a0
	ld   b, $33                                      ; $7441: $06 $33
	ld   [bc], a                                     ; $7443: $02
	and  b                                           ; $7444: $a0
	ld   [bc], a                                     ; $7445: $02

jr_0fd_7446:
	inc  sp                                          ; $7446: $33
	ld   [bc], a                                     ; $7447: $02
	and  b                                           ; $7448: $a0
	ld   b, $33                                      ; $7449: $06 $33
	ld   [bc], a                                     ; $744b: $02
	and  b                                           ; $744c: $a0
	ld   [bc], a                                     ; $744d: $02
	dec  d                                           ; $744e: $15
	ld   [$0230], sp                                 ; $744f: $08 $30 $02
	and  b                                           ; $7452: $a0
	ld   b, $30                                      ; $7453: $06 $30
	ld   [bc], a                                     ; $7455: $02
	and  b                                           ; $7456: $a0
	ld   [bc], a                                     ; $7457: $02
	jr   nc, @+$04                                   ; $7458: $30 $02

	and  b                                           ; $745a: $a0
	ld   b, $30                                      ; $745b: $06 $30
	ld   [bc], a                                     ; $745d: $02
	and  b                                           ; $745e: $a0
	ld   [bc], a                                     ; $745f: $02
	ld   a, [de]                                     ; $7460: $1a
	ld   [$0232], sp                                 ; $7461: $08 $32 $02
	and  b                                           ; $7464: $a0
	ld   b, $32                                      ; $7465: $06 $32
	ld   [bc], a                                     ; $7467: $02
	and  b                                           ; $7468: $a0
	ld   [bc], a                                     ; $7469: $02
	ld   [hl-], a                                    ; $746a: $32
	ld   [bc], a                                     ; $746b: $02
	and  b                                           ; $746c: $a0
	ld   b, $32                                      ; $746d: $06 $32
	ld   [bc], a                                     ; $746f: $02
	rra                                              ; $7470: $1f
	ld   [$02a0], sp                                 ; $7471: $08 $a0 $02
	ld   [hl-], a                                    ; $7474: $32
	ld   [bc], a                                     ; $7475: $02
	and  b                                           ; $7476: $a0
	ld   b, $32                                      ; $7477: $06 $32
	ld   [bc], a                                     ; $7479: $02
	and  b                                           ; $747a: $a0
	ld   [bc], a                                     ; $747b: $02
	ld   [hl-], a                                    ; $747c: $32
	ld   [bc], a                                     ; $747d: $02
	and  b                                           ; $747e: $a0
	ld   b, $32                                      ; $747f: $06 $32
	ld   [bc], a                                     ; $7481: $02
	and  b                                           ; $7482: $a0
	ld   [bc], a                                     ; $7483: $02
	add  hl, de                                      ; $7484: $19
	ld   [$0233], sp                                 ; $7485: $08 $33 $02
	and  b                                           ; $7488: $a0
	ld   b, $33                                      ; $7489: $06 $33
	ld   [bc], a                                     ; $748b: $02
	and  b                                           ; $748c: $a0
	ld   [bc], a                                     ; $748d: $02
	inc  sp                                          ; $748e: $33
	ld   [bc], a                                     ; $748f: $02
	and  b                                           ; $7490: $a0
	ld   b, $33                                      ; $7491: $06 $33
	ld   [bc], a                                     ; $7493: $02
	rra                                              ; $7494: $1f
	ld   [$02a0], sp                                 ; $7495: $08 $a0 $02
	inc  sp                                          ; $7498: $33
	ld   [bc], a                                     ; $7499: $02
	and  b                                           ; $749a: $a0
	ld   b, $33                                      ; $749b: $06 $33
	ld   [bc], a                                     ; $749d: $02
	and  b                                           ; $749e: $a0
	ld   [bc], a                                     ; $749f: $02
	inc  sp                                          ; $74a0: $33
	ld   [bc], a                                     ; $74a1: $02
	and  b                                           ; $74a2: $a0
	ld   b, $33                                      ; $74a3: $06 $33
	ld   [bc], a                                     ; $74a5: $02
	and  b                                           ; $74a6: $a0
	ld   [bc], a                                     ; $74a7: $02
	ld   [hl+], a                                    ; $74a8: $22
	ld   [$0232], sp                                 ; $74a9: $08 $32 $02
	and  b                                           ; $74ac: $a0
	ld   b, $32                                      ; $74ad: $06 $32
	ld   [bc], a                                     ; $74af: $02
	and  b                                           ; $74b0: $a0
	ld   [bc], a                                     ; $74b1: $02
	ld   [hl-], a                                    ; $74b2: $32
	ld   [bc], a                                     ; $74b3: $02
	and  b                                           ; $74b4: $a0
	ld   b, $32                                      ; $74b5: $06 $32
	ld   [bc], a                                     ; $74b7: $02
	and  b                                           ; $74b8: $a0
	ld   [bc], a                                     ; $74b9: $02
	add  hl, de                                      ; $74ba: $19
	ld   [$0232], sp                                 ; $74bb: $08 $32 $02
	and  b                                           ; $74be: $a0
	ld   b, $32                                      ; $74bf: $06 $32
	ld   [bc], a                                     ; $74c1: $02
	and  b                                           ; $74c2: $a0
	ld   [bc], a                                     ; $74c3: $02
	ld   [hl-], a                                    ; $74c4: $32
	ld   [bc], a                                     ; $74c5: $02
	and  b                                           ; $74c6: $a0
	ld   b, $32                                      ; $74c7: $06 $32
	ld   [bc], a                                     ; $74c9: $02
	and  b                                           ; $74ca: $a0
	ld   [bc], a                                     ; $74cb: $02
	rla                                              ; $74cc: $17
	ld   [$0232], sp                                 ; $74cd: $08 $32 $02
	and  b                                           ; $74d0: $a0
	ld   b, $32                                      ; $74d1: $06 $32
	ld   [bc], a                                     ; $74d3: $02
	and  b                                           ; $74d4: $a0
	ld   [bc], a                                     ; $74d5: $02
	ld   [hl-], a                                    ; $74d6: $32
	ld   [bc], a                                     ; $74d7: $02
	and  b                                           ; $74d8: $a0
	ld   b, $32                                      ; $74d9: $06 $32
	ld   [bc], a                                     ; $74db: $02
	rra                                              ; $74dc: $1f
	ld   [$02a0], sp                                 ; $74dd: $08 $a0 $02
	ld   [hl-], a                                    ; $74e0: $32
	ld   [bc], a                                     ; $74e1: $02
	and  b                                           ; $74e2: $a0
	ld   b, $32                                      ; $74e3: $06 $32
	ld   [bc], a                                     ; $74e5: $02
	and  b                                           ; $74e6: $a0
	ld   [bc], a                                     ; $74e7: $02
	ld   [hl-], a                                    ; $74e8: $32
	ld   [bc], a                                     ; $74e9: $02
	and  b                                           ; $74ea: $a0
	ld   b, $32                                      ; $74eb: $06 $32
	ld   [bc], a                                     ; $74ed: $02
	and  b                                           ; $74ee: $a0
	ld   [bc], a                                     ; $74ef: $02
	jr   nz, jr_0fd_74fa                             ; $74f0: $20 $08

	inc  sp                                          ; $74f2: $33
	ld   [bc], a                                     ; $74f3: $02
	and  b                                           ; $74f4: $a0
	ld   b, $33                                      ; $74f5: $06 $33
	ld   [bc], a                                     ; $74f7: $02
	and  b                                           ; $74f8: $a0
	ld   [bc], a                                     ; $74f9: $02

jr_0fd_74fa:
	inc  sp                                          ; $74fa: $33
	ld   [bc], a                                     ; $74fb: $02
	and  b                                           ; $74fc: $a0
	ld   b, $33                                      ; $74fd: $06 $33
	ld   [bc], a                                     ; $74ff: $02
	and  b                                           ; $7500: $a0
	ld   [bc], a                                     ; $7501: $02
	rla                                              ; $7502: $17
	ld   [$0233], sp                                 ; $7503: $08 $33 $02
	and  b                                           ; $7506: $a0
	ld   b, $33                                      ; $7507: $06 $33
	ld   [bc], a                                     ; $7509: $02
	and  b                                           ; $750a: $a0
	ld   [bc], a                                     ; $750b: $02
	inc  sp                                          ; $750c: $33
	ld   [bc], a                                     ; $750d: $02
	and  b                                           ; $750e: $a0
	ld   b, $33                                      ; $750f: $06 $33
	ld   [bc], a                                     ; $7511: $02
	and  b                                           ; $7512: $a0
	ld   [bc], a                                     ; $7513: $02
	ld   [hl+], a                                    ; $7514: $22
	ld   [$0232], sp                                 ; $7515: $08 $32 $02
	and  b                                           ; $7518: $a0
	ld   b, $32                                      ; $7519: $06 $32
	ld   [bc], a                                     ; $751b: $02
	and  b                                           ; $751c: $a0
	ld   [bc], a                                     ; $751d: $02
	ld   [hl-], a                                    ; $751e: $32
	ld   [bc], a                                     ; $751f: $02
	and  b                                           ; $7520: $a0
	ld   b, $32                                      ; $7521: $06 $32
	ld   [bc], a                                     ; $7523: $02
	rra                                              ; $7524: $1f
	ld   [$02a0], sp                                 ; $7525: $08 $a0 $02
	ld   [hl-], a                                    ; $7528: $32
	ld   [bc], a                                     ; $7529: $02
	and  b                                           ; $752a: $a0
	ld   b, $32                                      ; $752b: $06 $32
	ld   [bc], a                                     ; $752d: $02
	and  b                                           ; $752e: $a0
	ld   [bc], a                                     ; $752f: $02
	ld   [hl-], a                                    ; $7530: $32
	ld   [bc], a                                     ; $7531: $02
	and  b                                           ; $7532: $a0
	ld   b, $32                                      ; $7533: $06 $32
	ld   [bc], a                                     ; $7535: $02
	and  b                                           ; $7536: $a0
	ld   [bc], a                                     ; $7537: $02
	ld   [hl+], a                                    ; $7538: $22
	ld   [$0230], sp                                 ; $7539: $08 $30 $02
	and  b                                           ; $753c: $a0
	ld   b, $30                                      ; $753d: $06 $30
	ld   [bc], a                                     ; $753f: $02
	and  b                                           ; $7540: $a0
	ld   [bc], a                                     ; $7541: $02
	jr   nc, @+$04                                   ; $7542: $30 $02

	and  b                                           ; $7544: $a0
	ld   b, $30                                      ; $7545: $06 $30
	ld   [bc], a                                     ; $7547: $02
	and  b                                           ; $7548: $a0
	ld   [bc], a                                     ; $7549: $02
	add  hl, de                                      ; $754a: $19
	ld   [$0232], sp                                 ; $754b: $08 $32 $02
	and  b                                           ; $754e: $a0
	ld   b, $32                                      ; $754f: $06 $32
	ld   [bc], a                                     ; $7551: $02
	and  b                                           ; $7552: $a0
	ld   [bc], a                                     ; $7553: $02
	ld   [hl-], a                                    ; $7554: $32
	ld   [bc], a                                     ; $7555: $02
	and  b                                           ; $7556: $a0
	ld   b, $32                                      ; $7557: $06 $32
	ld   [bc], a                                     ; $7559: $02
	and  b                                           ; $755a: $a0
	ld   [bc], a                                     ; $755b: $02
	rla                                              ; $755c: $17
	ld   [$0232], sp                                 ; $755d: $08 $32 $02
	and  b                                           ; $7560: $a0
	ld   b, $32                                      ; $7561: $06 $32
	ld   [bc], a                                     ; $7563: $02
	and  b                                           ; $7564: $a0
	ld   [bc], a                                     ; $7565: $02
	ld   [hl-], a                                    ; $7566: $32
	ld   [bc], a                                     ; $7567: $02
	and  b                                           ; $7568: $a0
	ld   b, $32                                      ; $7569: $06 $32
	ld   [bc], a                                     ; $756b: $02
	and  b                                           ; $756c: $a0
	ld   [bc], a                                     ; $756d: $02
	rla                                              ; $756e: $17
	ld   [$0232], sp                                 ; $756f: $08 $32 $02
	and  b                                           ; $7572: $a0
	ld   b, $32                                      ; $7573: $06 $32
	ld   [bc], a                                     ; $7575: $02
	and  b                                           ; $7576: $a0
	ld   [bc], a                                     ; $7577: $02
	ld   [hl-], a                                    ; $7578: $32
	ld   [bc], a                                     ; $7579: $02
	and  b                                           ; $757a: $a0
	ld   b, $32                                      ; $757b: $06 $32
	ld   [bc], a                                     ; $757d: $02
	and  b                                           ; $757e: $a0
	ld   [bc], a                                     ; $757f: $02
	daa                                              ; $7580: $27
	inc  b                                           ; $7581: $04
	ld   [hl+], a                                    ; $7582: $22
	inc  b                                           ; $7583: $04
	rla                                              ; $7584: $17
	inc  b                                           ; $7585: $04
	rra                                              ; $7586: $1f
	inc  b                                           ; $7587: $04
	dec  d                                           ; $7588: $15
	db   $10                                         ; $7589: $10
	ld   a, [de]                                     ; $758a: $1a
	db   $10                                         ; $758b: $10
	ld   a, [de]                                     ; $758c: $1a
	inc  c                                           ; $758d: $0c
	dec  d                                           ; $758e: $15
	inc  b                                           ; $758f: $04
	ld   a, [de]                                     ; $7590: $1a
	inc  b                                           ; $7591: $04
	ld   a, [de]                                     ; $7592: $1a
	inc  b                                           ; $7593: $04
	dec  d                                           ; $7594: $15
	ld   [$0817], sp                                 ; $7595: $08 $17 $08
	ld   a, [de]                                     ; $7598: $1a
	ld   [$1019], sp                                 ; $7599: $08 $19 $10
	add  hl, de                                      ; $759c: $19
	inc  c                                           ; $759d: $0c
	jr   nz, jr_0fd_75a4                             ; $759e: $20 $04

	ld   [hl+], a                                    ; $75a0: $22
	inc  b                                           ; $75a1: $04
	ld   [hl+], a                                    ; $75a2: $22
	inc  b                                           ; $75a3: $04

jr_0fd_75a4:
	ld   d, $08                                      ; $75a4: $16 $08
	rla                                              ; $75a6: $17
	ld   [$0819], sp                                 ; $75a7: $08 $19 $08
	rla                                              ; $75aa: $17
	db   $10                                         ; $75ab: $10
	rla                                              ; $75ac: $17
	inc  c                                           ; $75ad: $0c
	rla                                              ; $75ae: $17
	inc  b                                           ; $75af: $04
	dec  d                                           ; $75b0: $15
	inc  b                                           ; $75b1: $04
	dec  d                                           ; $75b2: $15
	inc  b                                           ; $75b3: $04
	add  hl, de                                      ; $75b4: $19
	ld   [$0820], sp                                 ; $75b5: $08 $20 $08
	ld   [hl+], a                                    ; $75b8: $22
	ld   [$1023], sp                                 ; $75b9: $08 $23 $10
	inc  hl                                          ; $75bc: $23
	inc  c                                           ; $75bd: $0c
	ld   a, [de]                                     ; $75be: $1a
	inc  b                                           ; $75bf: $04
	inc  hl                                          ; $75c0: $23
	inc  b                                           ; $75c1: $04
	inc  hl                                          ; $75c2: $23
	inc  b                                           ; $75c3: $04
	ld   [hl+], a                                    ; $75c4: $22
	ld   [$0820], sp                                 ; $75c5: $08 $20 $08
	ld   a, [de]                                     ; $75c8: $1a
	ld   [$1020], sp                                 ; $75c9: $08 $20 $10
	jr   nz, jr_0fd_75da                             ; $75cc: $20 $0c

	rla                                              ; $75ce: $17
	inc  b                                           ; $75cf: $04
	dec  d                                           ; $75d0: $15
	inc  b                                           ; $75d1: $04
	dec  d                                           ; $75d2: $15
	inc  b                                           ; $75d3: $04
	rla                                              ; $75d4: $17
	ld   [$0819], sp                                 ; $75d5: $08 $19 $08
	jr   nz, jr_0fd_75e2                             ; $75d8: $20 $08

jr_0fd_75da:
	ld   [hl+], a                                    ; $75da: $22
	db   $10                                         ; $75db: $10
	ld   [hl+], a                                    ; $75dc: $22
	inc  c                                           ; $75dd: $0c
	add  hl, de                                      ; $75de: $19
	inc  b                                           ; $75df: $04
	rla                                              ; $75e0: $17
	inc  b                                           ; $75e1: $04

jr_0fd_75e2:
	rla                                              ; $75e2: $17
	inc  b                                           ; $75e3: $04
	add  hl, de                                      ; $75e4: $19
	ld   [$081b], sp                                 ; $75e5: $08 $1b $08
	ld   [hl+], a                                    ; $75e8: $22
	ld   [$1020], sp                                 ; $75e9: $08 $20 $10
	jr   nz, jr_0fd_75fa                             ; $75ec: $20 $0c

	rla                                              ; $75ee: $17
	inc  b                                           ; $75ef: $04
	jr   nz, @+$06                                   ; $75f0: $20 $04

	jr   nz, jr_0fd_75f8                             ; $75f2: $20 $04

	rla                                              ; $75f4: $17
	ld   [$081a], sp                                 ; $75f5: $08 $1a $08

jr_0fd_75f8:
	jr   nz, @+$0a                                   ; $75f8: $20 $08

jr_0fd_75fa:
	ld   hl, $2110                                   ; $75fa: $21 $10 $21
	inc  c                                           ; $75fd: $0c
	add  hl, de                                      ; $75fe: $19
	inc  b                                           ; $75ff: $04
	ld   hl, $2104                                   ; $7600: $21 $04 $21
	inc  b                                           ; $7603: $04
	add  hl, de                                      ; $7604: $19
	ld   [$081b], sp                                 ; $7605: $08 $1b $08
	ld   hl, $2208                                   ; $7608: $21 $08 $22
	db   $10                                         ; $760b: $10
	ld   [hl+], a                                    ; $760c: $22
	inc  c                                           ; $760d: $0c
	add  hl, de                                      ; $760e: $19
	inc  b                                           ; $760f: $04
	ld   [hl+], a                                    ; $7610: $22
	inc  b                                           ; $7611: $04
	ld   [hl+], a                                    ; $7612: $22
	inc  b                                           ; $7613: $04
	add  hl, de                                      ; $7614: $19
	ld   [$0820], sp                                 ; $7615: $08 $20 $08
	ld   hl, $2208                                   ; $7618: $21 $08 $22
	db   $10                                         ; $761b: $10
	ld   [hl+], a                                    ; $761c: $22
	inc  c                                           ; $761d: $0c
	inc  h                                           ; $761e: $24
	inc  b                                           ; $761f: $04
	ld   h, $04                                      ; $7620: $26 $04
	ld   h, $04                                      ; $7622: $26 $04
	daa                                              ; $7624: $27
	ld   [$0829], sp                                 ; $7625: $08 $29 $08
	jr   nz, @+$0a                                   ; $7628: $20 $08

	ld   [hl+], a                                    ; $762a: $22
	jr   nz, jr_0fd_764f                             ; $762b: $20 $22

	jr   nz, jr_0fd_7651                             ; $762d: $20 $22

	jr   nz, jr_0fd_7653                             ; $762f: $20 $22

	jr   nz, jr_0fd_7645                             ; $7631: $20 $12

	db   $10                                         ; $7633: $10
	ld   [de], a                                     ; $7634: $12
	db   $10                                         ; $7635: $10
	ld   [de], a                                     ; $7636: $12
	db   $10                                         ; $7637: $10
	ld   [de], a                                     ; $7638: $12
	db   $10                                         ; $7639: $10
	or   b                                           ; $763a: $b0
	di                                               ; $763b: $f3
	rst  $38                                         ; $763c: $ff
	rst  $38                                         ; $763d: $ff
	ld   [$0900], sp                                 ; $763e: $08 $00 $09
	nop                                              ; $7641: $00
	db   $fd                                         ; $7642: $fd
	di                                               ; $7643: $f3
	db   $fd                                         ; $7644: $fd

jr_0fd_7645:
	ldh  a, [$c1]                                    ; $7645: $f0 $c1
	inc  bc                                          ; $7647: $03
	and  b                                           ; $7648: $a0
	rlca                                             ; $7649: $07
	ld   [bc], a                                     ; $764a: $02
	ld   bc, $01a0                                   ; $764b: $01 $a0 $01
	nop                                              ; $764e: $00

jr_0fd_764f:
	rrca                                             ; $764f: $0f
	cp   l                                           ; $7650: $bd

jr_0fd_7651:
	ldh  a, [$c1]                                    ; $7651: $f0 $c1

jr_0fd_7653:
	inc  bc                                          ; $7653: $03
	and  b                                           ; $7654: $a0
	rlca                                             ; $7655: $07
	ld   [bc], a                                     ; $7656: $02
	ld   bc, $01a0                                   ; $7657: $01 $a0 $01
	nop                                              ; $765a: $00
	rlca                                             ; $765b: $07
	pop  bc                                          ; $765c: $c1
	inc  bc                                          ; $765d: $03
	and  b                                           ; $765e: $a0
	rlca                                             ; $765f: $07
	ld   [bc], a                                     ; $7660: $02
	ld   bc, $01a0                                   ; $7661: $01 $a0 $01
	nop                                              ; $7664: $00
	inc  bc                                          ; $7665: $03
	pop  bc                                          ; $7666: $c1
	inc  bc                                          ; $7667: $03
	and  b                                           ; $7668: $a0
	rlca                                             ; $7669: $07
	ld   [bc], a                                     ; $766a: $02
	ld   bc, $01a0                                   ; $766b: $01 $a0 $01
	nop                                              ; $766e: $00
	ld   bc, $03c1                                   ; $766f: $01 $c1 $03
	and  b                                           ; $7672: $a0
	rlca                                             ; $7673: $07
	ld   [bc], a                                     ; $7674: $02
	ld   bc, $01a0                                   ; $7675: $01 $a0 $01
	nop                                              ; $7678: $00
	ld   bc, $03c1                                   ; $7679: $01 $c1 $03
	and  b                                           ; $767c: $a0
	rlca                                             ; $767d: $07
	ld   [bc], a                                     ; $767e: $02
	ld   bc, $01a0                                   ; $767f: $01 $a0 $01
	nop                                              ; $7682: $00
	rlca                                             ; $7683: $07
	pop  bc                                          ; $7684: $c1
	inc  bc                                          ; $7685: $03
	and  b                                           ; $7686: $a0
	rlca                                             ; $7687: $07
	ld   [bc], a                                     ; $7688: $02
	ld   bc, $01a0                                   ; $7689: $01 $a0 $01
	nop                                              ; $768c: $00
	rlca                                             ; $768d: $07
	db   $fd                                         ; $768e: $fd
	ldh  a, [$c1]                                    ; $768f: $f0 $c1
	inc  bc                                          ; $7691: $03
	and  b                                           ; $7692: $a0
	rlca                                             ; $7693: $07
	ld   [bc], a                                     ; $7694: $02
	ld   bc, $01a0                                   ; $7695: $01 $a0 $01
	nop                                              ; $7698: $00
	rrca                                             ; $7699: $0f
	cp   l                                           ; $769a: $bd
	ldh  a, [$c1]                                    ; $769b: $f0 $c1
	inc  bc                                          ; $769d: $03
	and  b                                           ; $769e: $a0
	rlca                                             ; $769f: $07
	ld   [bc], a                                     ; $76a0: $02
	ld   bc, $01a0                                   ; $76a1: $01 $a0 $01
	nop                                              ; $76a4: $00
	rlca                                             ; $76a5: $07
	pop  bc                                          ; $76a6: $c1
	inc  b                                           ; $76a7: $04
	and  b                                           ; $76a8: $a0
	add  hl, bc                                      ; $76a9: $09
	ld   l, b                                        ; $76aa: $68
	ld   bc, $06a0                                   ; $76ab: $01 $a0 $06
	sbc  c                                           ; $76ae: $99
	ld   bc, $01a0                                   ; $76af: $01 $a0 $01
	sbc  c                                           ; $76b2: $99
	ld   [bc], a                                     ; $76b3: $02
	pop  bc                                          ; $76b4: $c1
	inc  b                                           ; $76b5: $04
	and  b                                           ; $76b6: $a0
	add  hl, bc                                      ; $76b7: $09
	ld   l, b                                        ; $76b8: $68
	ld   bc, $06a0                                   ; $76b9: $01 $a0 $06
	sbc  c                                           ; $76bc: $99
	ld   bc, $01a0                                   ; $76bd: $01 $a0 $01
	sbc  c                                           ; $76c0: $99
	ld   [bc], a                                     ; $76c1: $02
	and  b                                           ; $76c2: $a0
	dec  c                                           ; $76c3: $0d
	rla                                              ; $76c4: $17
	ld   bc, $0aa0                                   ; $76c5: $01 $a0 $0a
	db   $10                                         ; $76c8: $10
	ld   bc, $01a0                                   ; $76c9: $01 $a0 $01
	nop                                              ; $76cc: $00
	ld   b, $a0                                      ; $76cd: $06 $a0
	dec  c                                           ; $76cf: $0d
	rla                                              ; $76d0: $17
	ld   bc, $0aa0                                   ; $76d1: $01 $a0 $0a
	db   $10                                         ; $76d4: $10
	ld   bc, $01a0                                   ; $76d5: $01 $a0 $01
	nop                                              ; $76d8: $00
	ld   b, $fd                                      ; $76d9: $06 $fd
	ldh  a, [$ac]                                    ; $76db: $f0 $ac
	ld   bc, $025e                                   ; $76dd: $01 $5e $02
	cp   a                                           ; $76e0: $bf
	ldh  a, [$fd]                                    ; $76e1: $f0 $fd
	ldh  a, [$ac]                                    ; $76e3: $f0 $ac
	ld   bc, $025e                                   ; $76e5: $01 $5e $02
	or   c                                           ; $76e8: $b1
	ldh  a, [$c1]                                    ; $76e9: $f0 $c1
	inc  b                                           ; $76eb: $04
	and  b                                           ; $76ec: $a0
	add  hl, bc                                      ; $76ed: $09
	ld   l, b                                        ; $76ee: $68
	ld   bc, $06a0                                   ; $76ef: $01 $a0 $06
	sbc  c                                           ; $76f2: $99
	ld   bc, $01a0                                   ; $76f3: $01 $a0 $01
	sbc  c                                           ; $76f6: $99
	ld   b, $c1                                      ; $76f7: $06 $c1
	inc  bc                                          ; $76f9: $03
	and  b                                           ; $76fa: $a0
	rlca                                             ; $76fb: $07
	ld   [bc], a                                     ; $76fc: $02
	ld   bc, $01a0                                   ; $76fd: $01 $a0 $01
	nop                                              ; $7700: $00
	inc  bc                                          ; $7701: $03
	pop  bc                                          ; $7702: $c1
	inc  bc                                          ; $7703: $03
	and  b                                           ; $7704: $a0
	rlca                                             ; $7705: $07
	ld   [bc], a                                     ; $7706: $02
	ld   bc, $01a0                                   ; $7707: $01 $a0 $01
	nop                                              ; $770a: $00
	inc  bc                                          ; $770b: $03
	pop  bc                                          ; $770c: $c1
	inc  bc                                          ; $770d: $03
	and  b                                           ; $770e: $a0
	rlca                                             ; $770f: $07
	ld   [bc], a                                     ; $7710: $02
	ld   bc, $01a0                                   ; $7711: $01 $a0 $01
	nop                                              ; $7714: $00
	inc  bc                                          ; $7715: $03
	and  b                                           ; $7716: $a0
	dec  c                                           ; $7717: $0d
	rla                                              ; $7718: $17
	ld   bc, $0aa0                                   ; $7719: $01 $a0 $0a
	db   $10                                         ; $771c: $10
	ld   bc, $01a0                                   ; $771d: $01 $a0 $01
	nop                                              ; $7720: $00
	ld   [bc], a                                     ; $7721: $02
	pop  bc                                          ; $7722: $c1
	inc  b                                           ; $7723: $04
	and  b                                           ; $7724: $a0
	add  hl, bc                                      ; $7725: $09
	ld   l, b                                        ; $7726: $68
	ld   bc, $06a0                                   ; $7727: $01 $a0 $06
	sbc  c                                           ; $772a: $99
	ld   bc, $01a0                                   ; $772b: $01 $a0 $01
	sbc  c                                           ; $772e: $99
	ld   [bc], a                                     ; $772f: $02
	pop  bc                                          ; $7730: $c1
	inc  b                                           ; $7731: $04
	and  b                                           ; $7732: $a0
	add  hl, bc                                      ; $7733: $09
	ld   l, b                                        ; $7734: $68
	ld   bc, $06a0                                   ; $7735: $01 $a0 $06
	sbc  c                                           ; $7738: $99
	ld   bc, $01a0                                   ; $7739: $01 $a0 $01
	sbc  c                                           ; $773c: $99
	ld   [bc], a                                     ; $773d: $02
	and  b                                           ; $773e: $a0
	dec  c                                           ; $773f: $0d
	rla                                              ; $7740: $17
	ld   bc, $0aa0                                   ; $7741: $01 $a0 $0a
	db   $10                                         ; $7744: $10
	ld   bc, $01a0                                   ; $7745: $01 $a0 $01
	nop                                              ; $7748: $00
	ld   b, $a0                                      ; $7749: $06 $a0
	dec  c                                           ; $774b: $0d
	rla                                              ; $774c: $17
	ld   bc, $0aa0                                   ; $774d: $01 $a0 $0a
	db   $10                                         ; $7750: $10
	ld   bc, $01a0                                   ; $7751: $01 $a0 $01
	nop                                              ; $7754: $00
	ld   [bc], a                                     ; $7755: $02
	and  b                                           ; $7756: $a0
	dec  c                                           ; $7757: $0d
	rla                                              ; $7758: $17
	ld   bc, $0aa0                                   ; $7759: $01 $a0 $0a
	db   $10                                         ; $775c: $10
	ld   bc, $01a0                                   ; $775d: $01 $a0 $01
	nop                                              ; $7760: $00
	ld   [bc], a                                     ; $7761: $02
	pop  bc                                          ; $7762: $c1
	inc  bc                                          ; $7763: $03
	and  b                                           ; $7764: $a0
	rlca                                             ; $7765: $07
	ld   [bc], a                                     ; $7766: $02
	ld   bc, $01a0                                   ; $7767: $01 $a0 $01
	nop                                              ; $776a: $00
	inc  bc                                          ; $776b: $03
	and  b                                           ; $776c: $a0
	dec  c                                           ; $776d: $0d
	rla                                              ; $776e: $17
	ld   bc, $0aa0                                   ; $776f: $01 $a0 $0a
	db   $10                                         ; $7772: $10
	ld   bc, $01a0                                   ; $7773: $01 $a0 $01
	nop                                              ; $7776: $00
	ld   [bc], a                                     ; $7777: $02
	pop  bc                                          ; $7778: $c1
	inc  b                                           ; $7779: $04
	and  b                                           ; $777a: $a0
	add  hl, bc                                      ; $777b: $09
	ld   l, b                                        ; $777c: $68
	ld   bc, $06a0                                   ; $777d: $01 $a0 $06
	sbc  c                                           ; $7780: $99
	ld   bc, $01a0                                   ; $7781: $01 $a0 $01
	sbc  c                                           ; $7784: $99
	ld   [bc], a                                     ; $7785: $02
	pop  bc                                          ; $7786: $c1
	inc  b                                           ; $7787: $04
	and  b                                           ; $7788: $a0
	add  hl, bc                                      ; $7789: $09
	ld   l, b                                        ; $778a: $68
	ld   bc, $06a0                                   ; $778b: $01 $a0 $06
	sbc  c                                           ; $778e: $99
	ld   bc, $01a0                                   ; $778f: $01 $a0 $01
	sbc  c                                           ; $7792: $99
	ld   [bc], a                                     ; $7793: $02
	db   $fd                                         ; $7794: $fd
	ldh  a, [$ac]                                    ; $7795: $f0 $ac
	ld   bc, $02a2                                   ; $7797: $01 $a2 $02
	cp   b                                           ; $779a: $b8
	ldh  a, [$c1]                                    ; $779b: $f0 $c1
	inc  b                                           ; $779d: $04
	and  b                                           ; $779e: $a0
	add  hl, bc                                      ; $779f: $09
	ld   l, b                                        ; $77a0: $68
	ld   bc, $06a0                                   ; $77a1: $01 $a0 $06
	sbc  c                                           ; $77a4: $99
	ld   bc, $01a0                                   ; $77a5: $01 $a0 $01
	sbc  c                                           ; $77a8: $99
	ld   b, $c1                                      ; $77a9: $06 $c1
	inc  bc                                          ; $77ab: $03
	and  b                                           ; $77ac: $a0
	rlca                                             ; $77ad: $07
	ld   [bc], a                                     ; $77ae: $02
	ld   bc, $01a0                                   ; $77af: $01 $a0 $01
	nop                                              ; $77b2: $00
	rlca                                             ; $77b3: $07
	and  b                                           ; $77b4: $a0
	dec  c                                           ; $77b5: $0d
	rla                                              ; $77b6: $17
	ld   bc, $0aa0                                   ; $77b7: $01 $a0 $0a
	db   $10                                         ; $77ba: $10
	ld   bc, $01a0                                   ; $77bb: $01 $a0 $01
	nop                                              ; $77be: $00
	ld   b, $c1                                      ; $77bf: $06 $c1
	inc  bc                                          ; $77c1: $03
	and  b                                           ; $77c2: $a0
	rlca                                             ; $77c3: $07
	ld   [bc], a                                     ; $77c4: $02
	ld   bc, $01a0                                   ; $77c5: $01 $a0 $01
	nop                                              ; $77c8: $00
	rlca                                             ; $77c9: $07
	and  b                                           ; $77ca: $a0
	dec  c                                           ; $77cb: $0d
	rla                                              ; $77cc: $17
	ld   bc, $0aa0                                   ; $77cd: $01 $a0 $0a
	db   $10                                         ; $77d0: $10
	ld   bc, $01a0                                   ; $77d1: $01 $a0 $01
	nop                                              ; $77d4: $00
	ld   [bc], a                                     ; $77d5: $02
	pop  bc                                          ; $77d6: $c1
	inc  b                                           ; $77d7: $04
	and  b                                           ; $77d8: $a0
	dec  bc                                          ; $77d9: $0b
	ld   d, $01                                      ; $77da: $16 $01
	jr   nz, jr_0fd_77df                             ; $77dc: $20 $01

	pop  bc                                          ; $77de: $c1

jr_0fd_77df:
	inc  b                                           ; $77df: $04
	and  b                                           ; $77e0: $a0
	dec  bc                                          ; $77e1: $0b
	ld   d, $01                                      ; $77e2: $16 $01
	jr   nz, jr_0fd_77e7                             ; $77e4: $20 $01

	and  b                                           ; $77e6: $a0

jr_0fd_77e7:
	dec  c                                           ; $77e7: $0d
	rla                                              ; $77e8: $17
	ld   bc, $0aa0                                   ; $77e9: $01 $a0 $0a
	db   $10                                         ; $77ec: $10
	ld   bc, $01a0                                   ; $77ed: $01 $a0 $01
	nop                                              ; $77f0: $00
	ld   [bc], a                                     ; $77f1: $02
	and  b                                           ; $77f2: $a0
	dec  c                                           ; $77f3: $0d
	rla                                              ; $77f4: $17
	ld   bc, $0aa0                                   ; $77f5: $01 $a0 $0a
	db   $10                                         ; $77f8: $10
	ld   bc, $01a0                                   ; $77f9: $01 $a0 $01
	nop                                              ; $77fc: $00
	ld   [bc], a                                     ; $77fd: $02
	pop  bc                                          ; $77fe: $c1
	inc  bc                                          ; $77ff: $03
	and  b                                           ; $7800: $a0
	rlca                                             ; $7801: $07
	ld   [bc], a                                     ; $7802: $02
	ld   bc, $01a0                                   ; $7803: $01 $a0 $01
	nop                                              ; $7806: $00
	inc  bc                                          ; $7807: $03
	pop  bc                                          ; $7808: $c1
	inc  bc                                          ; $7809: $03
	and  b                                           ; $780a: $a0
	rlca                                             ; $780b: $07
	ld   [bc], a                                     ; $780c: $02
	ld   bc, $01a0                                   ; $780d: $01 $a0 $01
	nop                                              ; $7810: $00
	inc  bc                                          ; $7811: $03
	and  b                                           ; $7812: $a0
	dec  c                                           ; $7813: $0d
	rla                                              ; $7814: $17
	ld   bc, $0aa0                                   ; $7815: $01 $a0 $0a
	db   $10                                         ; $7818: $10
	ld   bc, $01a0                                   ; $7819: $01 $a0 $01
	nop                                              ; $781c: $00
	ld   [bc], a                                     ; $781d: $02
	and  b                                           ; $781e: $a0
	dec  c                                           ; $781f: $0d
	rla                                              ; $7820: $17
	ld   bc, $0aa0                                   ; $7821: $01 $a0 $0a
	db   $10                                         ; $7824: $10
	ld   bc, $01a0                                   ; $7825: $01 $a0 $01
	nop                                              ; $7828: $00
	ld   [bc], a                                     ; $7829: $02
	pop  bc                                          ; $782a: $c1
	inc  b                                           ; $782b: $04
	and  b                                           ; $782c: $a0
	add  hl, bc                                      ; $782d: $09
	ld   l, b                                        ; $782e: $68
	ld   bc, $06a0                                   ; $782f: $01 $a0 $06
	sbc  c                                           ; $7832: $99
	ld   bc, $01a0                                   ; $7833: $01 $a0 $01
	sbc  c                                           ; $7836: $99
	ld   c, $1f                                      ; $7837: $0e $1f
	jr   nc, jr_0fd_785a                             ; $7839: $30 $1f

	ld   b, b                                        ; $783b: $40
	db   $fd                                         ; $783c: $fd
	ldh  a, [$c1]                                    ; $783d: $f0 $c1
	inc  bc                                          ; $783f: $03
	and  b                                           ; $7840: $a0
	rlca                                             ; $7841: $07
	ld   [bc], a                                     ; $7842: $02
	ld   bc, $01a0                                   ; $7843: $01 $a0 $01
	nop                                              ; $7846: $00
	inc  bc                                          ; $7847: $03
	or   a                                           ; $7848: $b7
	ldh  a, [$c1]                                    ; $7849: $f0 $c1
	inc  b                                           ; $784b: $04
	and  b                                           ; $784c: $a0
	add  hl, bc                                      ; $784d: $09
	ld   l, b                                        ; $784e: $68
	ld   bc, $06a0                                   ; $784f: $01 $a0 $06
	sbc  c                                           ; $7852: $99
	ld   bc, $01a0                                   ; $7853: $01 $a0 $01
	sbc  c                                           ; $7856: $99
	ld   [bc], a                                     ; $7857: $02
	pop  bc                                          ; $7858: $c1
	inc  b                                           ; $7859: $04

jr_0fd_785a:
	and  b                                           ; $785a: $a0
	add  hl, bc                                      ; $785b: $09
	ld   l, b                                        ; $785c: $68
	ld   bc, $06a0                                   ; $785d: $01 $a0 $06
	sbc  c                                           ; $7860: $99
	ld   bc, $01a0                                   ; $7861: $01 $a0 $01
	sbc  c                                           ; $7864: $99
	ld   [bc], a                                     ; $7865: $02
	and  b                                           ; $7866: $a0
	dec  c                                           ; $7867: $0d
	rla                                              ; $7868: $17
	ld   bc, $0aa0                                   ; $7869: $01 $a0 $0a
	db   $10                                         ; $786c: $10
	ld   bc, $01a0                                   ; $786d: $01 $a0 $01
	nop                                              ; $7870: $00
	ld   b, $a0                                      ; $7871: $06 $a0
	dec  c                                           ; $7873: $0d
	rla                                              ; $7874: $17
	ld   bc, $0aa0                                   ; $7875: $01 $a0 $0a
	db   $10                                         ; $7878: $10
	ld   bc, $01a0                                   ; $7879: $01 $a0 $01
	nop                                              ; $787c: $00
	ld   b, $c1                                      ; $787d: $06 $c1
	inc  b                                           ; $787f: $04
	and  b                                           ; $7880: $a0
	add  hl, bc                                      ; $7881: $09
	ld   l, b                                        ; $7882: $68
	ld   bc, $06a0                                   ; $7883: $01 $a0 $06
	sbc  c                                           ; $7886: $99
	ld   bc, $01a0                                   ; $7887: $01 $a0 $01
	sbc  c                                           ; $788a: $99
	ld   [bc], a                                     ; $788b: $02
	and  b                                           ; $788c: $a0
	dec  c                                           ; $788d: $0d
	rla                                              ; $788e: $17
	ld   bc, $0aa0                                   ; $788f: $01 $a0 $0a
	db   $10                                         ; $7892: $10
	ld   bc, $01a0                                   ; $7893: $01 $a0 $01
	nop                                              ; $7896: $00
	ld   [bc], a                                     ; $7897: $02
	or   b                                           ; $7898: $b0
	di                                               ; $7899: $f3
	rst  $38                                         ; $789a: $ff
	rst  $38                                         ; $789b: $ff
	pop  bc                                          ; $789c: $c1
	inc  b                                           ; $789d: $04
	and  b                                           ; $789e: $a0
	add  hl, bc                                      ; $789f: $09
	ld   l, b                                        ; $78a0: $68
	ld   bc, $06a0                                   ; $78a1: $01 $a0 $06
	sbc  c                                           ; $78a4: $99
	ld   bc, $01a0                                   ; $78a5: $01 $a0 $01
	sbc  c                                           ; $78a8: $99
	ld   b, $c1                                      ; $78a9: $06 $c1
	inc  bc                                          ; $78ab: $03
	and  b                                           ; $78ac: $a0
	rlca                                             ; $78ad: $07
	ld   [bc], a                                     ; $78ae: $02
	ld   bc, $01a0                                   ; $78af: $01 $a0 $01
	nop                                              ; $78b2: $00
	inc  bc                                          ; $78b3: $03
	pop  bc                                          ; $78b4: $c1
	inc  bc                                          ; $78b5: $03
	and  b                                           ; $78b6: $a0
	rlca                                             ; $78b7: $07
	ld   [bc], a                                     ; $78b8: $02
	ld   bc, $01a0                                   ; $78b9: $01 $a0 $01
	nop                                              ; $78bc: $00
	inc  bc                                          ; $78bd: $03
	and  b                                           ; $78be: $a0
	dec  c                                           ; $78bf: $0d
	rla                                              ; $78c0: $17
	ld   bc, $0aa0                                   ; $78c1: $01 $a0 $0a
	db   $10                                         ; $78c4: $10
	ld   bc, $01a0                                   ; $78c5: $01 $a0 $01
	nop                                              ; $78c8: $00
	ld   b, $c1                                      ; $78c9: $06 $c1
	inc  bc                                          ; $78cb: $03
	and  b                                           ; $78cc: $a0
	rlca                                             ; $78cd: $07
	ld   [bc], a                                     ; $78ce: $02
	ld   bc, $01a0                                   ; $78cf: $01 $a0 $01
	nop                                              ; $78d2: $00
	inc  bc                                          ; $78d3: $03
	pop  bc                                          ; $78d4: $c1
	inc  bc                                          ; $78d5: $03
	and  b                                           ; $78d6: $a0
	rlca                                             ; $78d7: $07
	ld   [bc], a                                     ; $78d8: $02
	ld   bc, $01a0                                   ; $78d9: $01 $a0 $01
	nop                                              ; $78dc: $00
	inc  bc                                          ; $78dd: $03
	xor  l                                           ; $78de: $ad
	nop                                              ; $78df: $00
	pop  bc                                          ; $78e0: $c1
	inc  b                                           ; $78e1: $04
	and  b                                           ; $78e2: $a0
	add  hl, bc                                      ; $78e3: $09
	ld   l, b                                        ; $78e4: $68
	ld   bc, $06a0                                   ; $78e5: $01 $a0 $06
	sbc  c                                           ; $78e8: $99
	ld   bc, $01a0                                   ; $78e9: $01 $a0 $01
	sbc  c                                           ; $78ec: $99
	ld   b, $c1                                      ; $78ed: $06 $c1
	inc  bc                                          ; $78ef: $03
	and  b                                           ; $78f0: $a0
	rlca                                             ; $78f1: $07
	ld   [bc], a                                     ; $78f2: $02
	ld   bc, $01a0                                   ; $78f3: $01 $a0 $01
	nop                                              ; $78f6: $00
	rlca                                             ; $78f7: $07
	and  b                                           ; $78f8: $a0
	dec  c                                           ; $78f9: $0d
	rla                                              ; $78fa: $17
	ld   bc, $0aa0                                   ; $78fb: $01 $a0 $0a
	db   $10                                         ; $78fe: $10
	ld   bc, $01a0                                   ; $78ff: $01 $a0 $01
	nop                                              ; $7902: $00
	ld   b, $c1                                      ; $7903: $06 $c1
	inc  bc                                          ; $7905: $03
	and  b                                           ; $7906: $a0
	rlca                                             ; $7907: $07
	ld   [bc], a                                     ; $7908: $02
	ld   bc, $01a0                                   ; $7909: $01 $a0 $01
	nop                                              ; $790c: $00
	rlca                                             ; $790d: $07
	pop  bc                                          ; $790e: $c1
	inc  b                                           ; $790f: $04
	and  b                                           ; $7910: $a0
	add  hl, bc                                      ; $7911: $09
	ld   l, b                                        ; $7912: $68
	ld   bc, $06a0                                   ; $7913: $01 $a0 $06
	sbc  c                                           ; $7916: $99
	ld   bc, $01a0                                   ; $7917: $01 $a0 $01
	sbc  c                                           ; $791a: $99
	ld   b, $c1                                      ; $791b: $06 $c1
	inc  bc                                          ; $791d: $03
	and  b                                           ; $791e: $a0
	rlca                                             ; $791f: $07
	ld   [bc], a                                     ; $7920: $02
	ld   bc, $01a0                                   ; $7921: $01 $a0 $01
	nop                                              ; $7924: $00
	rlca                                             ; $7925: $07
	and  b                                           ; $7926: $a0
	dec  c                                           ; $7927: $0d
	rla                                              ; $7928: $17
	ld   bc, $0aa0                                   ; $7929: $01 $a0 $0a
	db   $10                                         ; $792c: $10
	ld   bc, $01a0                                   ; $792d: $01 $a0 $01
	nop                                              ; $7930: $00
	ld   [bc], a                                     ; $7931: $02
	pop  bc                                          ; $7932: $c1
	inc  bc                                          ; $7933: $03
	and  b                                           ; $7934: $a0
	rlca                                             ; $7935: $07
	ld   [bc], a                                     ; $7936: $02
	ld   bc, $01a0                                   ; $7937: $01 $a0 $01
	nop                                              ; $793a: $00
	inc  bc                                          ; $793b: $03
	pop  bc                                          ; $793c: $c1
	inc  bc                                          ; $793d: $03
	and  b                                           ; $793e: $a0
	rlca                                             ; $793f: $07
	ld   [bc], a                                     ; $7940: $02
	ld   bc, $01a0                                   ; $7941: $01 $a0 $01
	nop                                              ; $7944: $00
	rlca                                             ; $7945: $07
	xor  l                                           ; $7946: $ad
