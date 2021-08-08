; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $093", ROMX[$4000], BANK[$93]

	db   $10                                         ; $4000: $10
	ldh  a, [c]                                      ; $4001: $f2
	db   $30, $f6                                    ; $4002: $30 $f6
	ld   hl, $61fd                                   ; $4004: $21 $fd $61
	db   $fd                                         ; $4007: $fd
	ld   b, e                                        ; $4008: $43
	cp   $43                                         ; $4009: $fe $43
	rst  $38                                         ; $400b: $ff
	rst  ToBoot                                         ; $400c: $c7
	db   $fc                                         ; $400d: $fc
	add  a                                           ; $400e: $87
	rst  $38                                         ; $400f: $ff
	adc  [hl]                                        ; $4010: $8e
	cp   $8c                                         ; $4011: $fe $8c
	db   $fc                                         ; $4013: $fc
	inc  e                                           ; $4014: $1c
	ld   hl, sp+$1e                                  ; $4015: $f8 $1e
	ldh  a, [c]                                      ; $4017: $f2
	ccf                                              ; $4018: $3f
	pop  af                                          ; $4019: $f1
	cpl                                              ; $401a: $2f
	ldh  a, [$6e]                                    ; $401b: $f0 $6e
	ldh  a, [$6e]                                    ; $401d: $f0 $6e
	ldh  a, [$97]                                    ; $401f: $f0 $97
	sbc  a                                           ; $4021: $9f
	db   $fc                                         ; $4022: $fc
	db   $fc                                         ; $4023: $fc
	call c, $9c18                                    ; $4024: $dc $18 $9c
	db   $18, $9c                                    ; $4027: $18 $9c
	db   $10                                         ; $4029: $10
	ld   hl, sp-$70                                  ; $402a: $f8 $90
	ld   hl, sp+$70                                  ; $402c: $f8 $70
	ld   hl, sp-$18                                  ; $402e: $f8 $e8
	ld   a, h                                        ; $4030: $7c
	ld   [hl], h                                     ; $4031: $74
	adc  $e8                                         ; $4032: $ce $e8
	adc  [hl]                                        ; $4034: $8e
	add  sp, $00                                     ; $4035: $e8 $00
	nop                                              ; $4037: $00
	ret  nz                                          ; $4038: $c0

	ret  nz                                          ; $4039: $c0

	nop                                              ; $403a: $00
	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	nop                                              ; $403d: $00
	ld   bc, $fe00                                   ; $403e: $01 $00 $fe
	cp   $01                                         ; $4041: $fe $01
	ld   bc, $0001                                   ; $4043: $01 $01 $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	ld   bc, $0700                                   ; $404a: $01 $00 $07
	inc  bc                                          ; $404d: $03
	rra                                              ; $404e: $1f
	rrca                                             ; $404f: $0f
	ccf                                              ; $4050: $3f
	rla                                              ; $4051: $17
	ld   a, [hl-]                                    ; $4052: $3a
	dec  bc                                          ; $4053: $0b
	inc  [hl]                                        ; $4054: $34
	rlca                                             ; $4055: $07
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	inc  bc                                          ; $4058: $03
	inc  bc                                          ; $4059: $03
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	ld   b, d                                        ; $4060: $42
	ld   d, e                                        ; $4061: $53
	jp   $e1eb                                       ; $4062: $c3 $eb $e1


	ld   [hl], l                                     ; $4065: $75
	pop  hl                                          ; $4066: $e1
	dec  a                                           ; $4067: $3d
	ldh  a, [$1f]                                    ; $4068: $f0 $1f
	ldh  a, [rIE]                                    ; $406a: $f0 $ff
	add  sp, $1f                                     ; $406c: $e8 $1f
	add  sp, -$21                                    ; $406e: $e8 $df
	ld   a, h                                        ; $4070: $7c
	ld   a, a                                        ; $4071: $7f
	inc  l                                           ; $4072: $2c
	ccf                                              ; $4073: $3f
	ld   l, $1f                                      ; $4074: $2e $1f
	ld   l, [hl]                                     ; $4076: $6e
	ld   e, e                                        ; $4077: $5b
	xor  $9b                                         ; $4078: $ee $9b

jr_093_407a:
	cpl                                              ; $407a: $2f
	dec  de                                          ; $407b: $1b
	dec  l                                           ; $407c: $2d
	rra                                              ; $407d: $1f
	dec  l                                           ; $407e: $2d
	rra                                              ; $407f: $1f
	db   $10                                         ; $4080: $10
	ldh  a, [c]                                      ; $4081: $f2
	jr   nc, jr_093_407a                             ; $4082: $30 $f6

	ld   hl, $61fd                                   ; $4084: $21 $fd $61
	db   $fd                                         ; $4087: $fd
	ld   b, e                                        ; $4088: $43
	cp   $43                                         ; $4089: $fe $43
	rst  $38                                         ; $408b: $ff
	rst  ToBoot                                         ; $408c: $c7
	db   $fc                                         ; $408d: $fc
	add  [hl]                                        ; $408e: $86
	db   $fc                                         ; $408f: $fc
	adc  a                                           ; $4090: $8f
	db   $fc                                         ; $4091: $fc
	adc  a                                           ; $4092: $8f
	ei                                               ; $4093: $fb
	ld   e, $fe                                      ; $4094: $1e $fe
	ld   e, $f6                                      ; $4096: $1e $f6
	ccf                                              ; $4098: $3f
	pop  af                                          ; $4099: $f1
	cpl                                              ; $409a: $2f
	ldh  a, [$6e]                                    ; $409b: $f0 $6e
	ldh  a, [$6e]                                    ; $409d: $f0 $6e
	ldh  a, [$97]                                    ; $409f: $f0 $97
	sbc  a                                           ; $40a1: $9f
	db   $fc                                         ; $40a2: $fc
	db   $fc                                         ; $40a3: $fc
	call c, $9c18                                    ; $40a4: $dc $18 $9c
	jr   @-$62                                       ; $40a7: $18 $9c

	db   $10                                         ; $40a9: $10
	ld   hl, sp-$70                                  ; $40aa: $f8 $90
	ld   hl, sp+$70                                  ; $40ac: $f8 $70
	ld   a, b                                        ; $40ae: $78
	ld   [$048c], sp                                 ; $40af: $08 $8c $04
	cp   $f0                                         ; $40b2: $fe $f0
	adc  $e8                                         ; $40b4: $ce $e8
	add  b                                           ; $40b6: $80
	ldh  [$c0], a                                    ; $40b7: $e0 $c0
	ret  nz                                          ; $40b9: $c0

	nop                                              ; $40ba: $00
	nop                                              ; $40bb: $00
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	ld   bc, $fe00                                   ; $40be: $01 $00 $fe
	cp   $01                                         ; $40c1: $fe $01
	ld   bc, $0001                                   ; $40c3: $01 $01 $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	ld   bc, $0700                                   ; $40ca: $01 $00 $07
	inc  bc                                          ; $40cd: $03
	rra                                              ; $40ce: $1f
	inc  c                                           ; $40cf: $0c
	jr   c, jr_093_40e2                              ; $40d0: $38 $10

	ccf                                              ; $40d2: $3f
	rlca                                             ; $40d3: $07
	ld   a, $0f                                      ; $40d4: $3e $0f
	inc  b                                           ; $40d6: $04
	rlca                                             ; $40d7: $07
	inc  bc                                          ; $40d8: $03
	inc  bc                                          ; $40d9: $03
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	ld   b, d                                        ; $40e0: $42
	ld   d, e                                        ; $40e1: $53

jr_093_40e2:
	jp   $e1eb                                       ; $40e2: $c3 $eb $e1


	ld   [hl], l                                     ; $40e5: $75
	pop  hl                                          ; $40e6: $e1
	dec  a                                           ; $40e7: $3d
	ldh  a, [$1f]                                    ; $40e8: $f0 $1f
	ldh  a, [rIE]                                    ; $40ea: $f0 $ff
	add  sp, $1f                                     ; $40ec: $e8 $1f
	ld   l, b                                        ; $40ee: $68
	rra                                              ; $40ef: $1f
	db   $ec                                         ; $40f0: $ec
	rra                                              ; $40f1: $1f
	db   $ec                                         ; $40f2: $ec
	rst  JumpTable                                         ; $40f3: $df
	ld   a, $3f                                      ; $40f4: $3e $3f
	ld   l, [hl]                                     ; $40f6: $6e
	ld   a, e                                        ; $40f7: $7b
	xor  [hl]                                        ; $40f8: $ae
	sbc  e                                           ; $40f9: $9b
	cpl                                              ; $40fa: $2f
	dec  de                                          ; $40fb: $1b
	dec  l                                           ; $40fc: $2d
	rra                                              ; $40fd: $1f
	dec  l                                           ; $40fe: $2d
	rra                                              ; $40ff: $1f
	adc  [hl]                                        ; $4100: $8e
	db   $fc                                         ; $4101: $fc
	adc  h                                           ; $4102: $8c
	ld   hl, sp+$1e                                  ; $4103: $f8 $1e
	ld   hl, sp+$1f                                  ; $4105: $f8 $1f
	di                                               ; $4107: $f3
	ccf                                              ; $4108: $3f
	pop  af                                          ; $4109: $f1
	cpl                                              ; $410a: $2f
	ldh  a, [$6e]                                    ; $410b: $f0 $6e
	ldh  a, [$6e]                                    ; $410d: $f0 $6e
	ldh  a, [$0c]                                    ; $410f: $f0 $0c
	inc  b                                           ; $4111: $04
	ld   b, $00                                      ; $4112: $06 $00
	ld   b, $00                                      ; $4114: $06 $00
	ld   hl, sp-$08                                  ; $4116: $f8 $f8
	ldh  a, [$e0]                                    ; $4118: $f0 $e0
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	ld   bc, $3800                                   ; $411e: $01 $00 $38
	db   $10                                         ; $4121: $10
	jr   nc, jr_093_4124                             ; $4122: $30 $00

jr_093_4124:
	jr   nc, jr_093_4126                             ; $4124: $30 $00

jr_093_4126:
	rlca                                             ; $4126: $07
	rlca                                             ; $4127: $07
	rlca                                             ; $4128: $07
	inc  bc                                          ; $4129: $03
	nop                                              ; $412a: $00
	nop                                              ; $412b: $00
	nop                                              ; $412c: $00
	nop                                              ; $412d: $00
	nop                                              ; $412e: $00
	nop                                              ; $412f: $00
	inc  l                                           ; $4130: $2c
	rra                                              ; $4131: $1f
	inc  l                                           ; $4132: $2c
	rra                                              ; $4133: $1f
	ld   l, [hl]                                     ; $4134: $6e
	rra                                              ; $4135: $1f
	xor  $db                                         ; $4136: $ee $db
	xor  $9b                                         ; $4138: $ee $9b
	cpl                                              ; $413a: $2f
	dec  de                                          ; $413b: $1b
	dec  l                                           ; $413c: $2d
	rra                                              ; $413d: $1f
	dec  l                                           ; $413e: $2d
	rra                                              ; $413f: $1f
	jr   jr_093_414a                                 ; $4140: $18 $08

	inc  e                                           ; $4142: $1c
	ld   [$081c], sp                                 ; $4143: $08 $1c $08
	inc  e                                           ; $4146: $1c
	nop                                              ; $4147: $00
	ld   h, e                                        ; $4148: $63
	nop                                              ; $4149: $00

jr_093_414a:
	ld   a, e                                        ; $414a: $7b
	ld   [hl-], a                                    ; $414b: $32
	ld   b, $00                                      ; $414c: $06 $00
	ld   c, $00                                      ; $414e: $0e $00
	nop                                              ; $4150: $00
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	nop                                              ; $4158: $00
	nop                                              ; $4159: $00
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	jr   jr_093_416a                                 ; $4160: $18 $08

	inc  e                                           ; $4162: $1c
	ld   [$081c], sp                                 ; $4163: $08 $1c $08
	inc  e                                           ; $4166: $1c
	nop                                              ; $4167: $00
	ld   [bc], a                                     ; $4168: $02
	nop                                              ; $4169: $00

jr_093_416a:
	ld   e, e                                        ; $416a: $5b
	ld   [hl-], a                                    ; $416b: $32
	ld   h, e                                        ; $416c: $63
	ld   [hl+], a                                    ; $416d: $22
	ld   [hl-], a                                    ; $416e: $32
	inc  e                                           ; $416f: $1c
	inc  c                                           ; $4170: $0c
	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00

jr_093_4175:
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	sub  a                                           ; $4180: $97
	sbc  a                                           ; $4181: $9f
	db   $fc                                         ; $4182: $fc
	db   $fc                                         ; $4183: $fc
	call c, $9c18                                    ; $4184: $dc $18 $9c
	jr   @-$62                                       ; $4187: $18 $9c

	db   $10                                         ; $4189: $10
	ld   hl, sp-$10                                  ; $418a: $f8 $f0
	ld   hl, sp+$18                                  ; $418c: $f8 $18
	db   $fc                                         ; $418e: $fc
	db   $f4                                         ; $418f: $f4
	ld   a, [hl]                                     ; $4190: $7e
	ld   a, b                                        ; $4191: $78
	adc  $e8                                         ; $4192: $ce $e8
	add  b                                           ; $4194: $80
	ldh  [rP1], a                                    ; $4195: $e0 $00
	nop                                              ; $4197: $00
	ret  nz                                          ; $4198: $c0

	ret  nz                                          ; $4199: $c0

	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	nop                                              ; $419c: $00
	nop                                              ; $419d: $00
	ld   bc, $fe00                                   ; $419e: $01 $00 $fe
	cp   $01                                         ; $41a1: $fe $01
	ld   bc, $0001                                   ; $41a3: $01 $01 $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	rlca                                             ; $41aa: $07
	rrca                                             ; $41ab: $0f
	rla                                              ; $41ac: $17
	jr   jr_093_41ee                                 ; $41ad: $18 $3f

	daa                                              ; $41af: $27
	ccf                                              ; $41b0: $3f
	rrca                                             ; $41b1: $0f
	ld   a, [hl-]                                    ; $41b2: $3a
	dec  bc                                          ; $41b3: $0b
	inc  b                                           ; $41b4: $04
	rlca                                             ; $41b5: $07
	nop                                              ; $41b6: $00
	nop                                              ; $41b7: $00
	inc  bc                                          ; $41b8: $03
	inc  bc                                          ; $41b9: $03
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	ld   l, h                                        ; $41c0: $6c
	ld   a, a                                        ; $41c1: $7f
	inc  a                                           ; $41c2: $3c
	ccf                                              ; $41c3: $3f
	ld   l, $1f                                      ; $41c4: $2e $1f
	ld   l, [hl]                                     ; $41c6: $6e
	ld   e, e                                        ; $41c7: $5b
	xor  $9b                                         ; $41c8: $ee $9b
	cpl                                              ; $41ca: $2f
	dec  de                                          ; $41cb: $1b
	dec  l                                           ; $41cc: $2d
	rra                                              ; $41cd: $1f
	dec  l                                           ; $41ce: $2d
	rra                                              ; $41cf: $1f
	sub  a                                           ; $41d0: $97
	sbc  a                                           ; $41d1: $9f
	db   $fc                                         ; $41d2: $fc
	db   $fc                                         ; $41d3: $fc
	call c, $9c18                                    ; $41d4: $dc $18 $9c
	jr   jr_093_4175                                 ; $41d7: $18 $9c

	db   $10                                         ; $41d9: $10
	ld   hl, sp-$10                                  ; $41da: $f8 $f0
	ld   hl, sp+$18                                  ; $41dc: $f8 $18
	inc  e                                           ; $41de: $1c
	inc  d                                           ; $41df: $14
	or   $10                                         ; $41e0: $f6 $10
	cp   $f0                                         ; $41e2: $fe $f0
	ret  z                                           ; $41e4: $c8

	add  sp, -$80                                    ; $41e5: $e8 $80
	ldh  [$c0], a                                    ; $41e7: $e0 $c0
	ret  nz                                          ; $41e9: $c0

	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00

jr_093_41ee:
	ld   bc, $fe00                                   ; $41ee: $01 $00 $fe
	cp   $01                                         ; $41f1: $fe $01
	ld   bc, $0001                                   ; $41f3: $01 $01 $00
	nop                                              ; $41f6: $00
	nop                                              ; $41f7: $00
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	rlca                                             ; $41fa: $07
	rrca                                             ; $41fb: $0f
	rla                                              ; $41fc: $17
	jr   jr_093_422f                                 ; $41fd: $18 $30

	jr   nz, jr_093_4208                             ; $41ff: $20 $07

	nop                                              ; $4201: $00
	rrca                                             ; $4202: $0f
	rlca                                             ; $4203: $07
	ld   c, $0f                                      ; $4204: $0e $0f
	inc  b                                           ; $4206: $04
	rlca                                             ; $4207: $07

jr_093_4208:
	inc  bc                                          ; $4208: $03
	inc  bc                                          ; $4209: $03
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	ld   b, d                                        ; $4210: $42
	ld   d, e                                        ; $4211: $53
	jp   $e1eb                                       ; $4212: $c3 $eb $e1


	ld   [hl], l                                     ; $4215: $75
	pop  hl                                          ; $4216: $e1
	dec  a                                           ; $4217: $3d
	ldh  a, [$1f]                                    ; $4218: $f0 $1f
	ldh  a, [rIE]                                    ; $421a: $f0 $ff
	add  sp, $1f                                     ; $421c: $e8 $1f
	jr   z, jr_093_423f                              ; $421e: $28 $1f

	adc  h                                           ; $4220: $8c
	ld   hl, sp-$74                                  ; $4221: $f8 $8c
	ld   hl, sp+$1e                                  ; $4223: $f8 $1e
	ld   hl, sp+$1f                                  ; $4225: $f8 $1f
	di                                               ; $4227: $f3
	ccf                                              ; $4228: $3f
	pop  af                                          ; $4229: $f1
	cpl                                              ; $422a: $2f
	ldh  a, [$6e]                                    ; $422b: $f0 $6e
	ldh  a, [$6e]                                    ; $422d: $f0 $6e

jr_093_422f:
	ldh  a, [$97]                                    ; $422f: $f0 $97
	sbc  a                                           ; $4231: $9f
	db   $fc                                         ; $4232: $fc
	db   $fc                                         ; $4233: $fc
	call c, $9c18                                    ; $4234: $dc $18 $9c
	jr   @-$62                                       ; $4237: $18 $9c

	db   $10                                         ; $4239: $10
	ld   hl, sp-$10                                  ; $423a: $f8 $f0
	ld   hl, sp+$18                                  ; $423c: $f8 $18
	inc  c                                           ; $423e: $0c

jr_093_423f:
	inc  b                                           ; $423f: $04
	ld   b, $00                                      ; $4240: $06 $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	ld   hl, sp-$08                                  ; $4246: $f8 $f8
	ldh  a, [$e0]                                    ; $4248: $f0 $e0
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	nop                                              ; $424c: $00
	nop                                              ; $424d: $00
	ld   bc, $fe00                                   ; $424e: $01 $00 $fe
	cp   $01                                         ; $4251: $fe $01
	ld   bc, $0001                                   ; $4253: $01 $01 $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	rlca                                             ; $425a: $07
	rrca                                             ; $425b: $0f
	rla                                              ; $425c: $17
	jr   jr_093_4297                                 ; $425d: $18 $38

	jr   nz, jr_093_4291                             ; $425f: $20 $30

	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	rlca                                             ; $4266: $07
	rlca                                             ; $4267: $07
	rlca                                             ; $4268: $07
	inc  bc                                          ; $4269: $03
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	jr   jr_093_427a                                 ; $4270: $18 $08

	inc  e                                           ; $4272: $1c
	ld   [$081c], sp                                 ; $4273: $08 $1c $08
	inc  e                                           ; $4276: $1c
	nop                                              ; $4277: $00
	ld   h, c                                        ; $4278: $61
	nop                                              ; $4279: $00

jr_093_427a:
	ld   l, e                                        ; $427a: $6b
	ld   [hl-], a                                    ; $427b: $32
	ld   b, $00                                      ; $427c: $06 $00
	ld   c, $00                                      ; $427e: $0e $00
	jr   jr_093_428a                                 ; $4280: $18 $08

	inc  e                                           ; $4282: $1c
	ld   [$081c], sp                                 ; $4283: $08 $1c $08
	inc  e                                           ; $4286: $1c
	nop                                              ; $4287: $00
	nop                                              ; $4288: $00
	nop                                              ; $4289: $00

jr_093_428a:
	ld   l, a                                        ; $428a: $6f
	ld   [hl-], a                                    ; $428b: $32
	ld   b, c                                        ; $428c: $41
	ld   b, d                                        ; $428d: $42
	ld   l, [hl]                                     ; $428e: $6e
	ld   [hl+], a                                    ; $428f: $22
	ld   a, [hl-]                                    ; $4290: $3a

jr_093_4291:
	inc  e                                           ; $4291: $1c
	ld   b, $00                                      ; $4292: $06 $00
	inc  c                                           ; $4294: $0c
	nop                                              ; $4295: $00
	nop                                              ; $4296: $00

jr_093_4297:
	nop                                              ; $4297: $00
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00

jr_093_429a:
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	db   $10                                         ; $42a0: $10
	ldh  a, [c]                                      ; $42a1: $f2
	jr   nc, jr_093_429a                             ; $42a2: $30 $f6

	ld   hl, $61fd                                   ; $42a4: $21 $fd $61
	db   $fd                                         ; $42a7: $fd
	ld   b, e                                        ; $42a8: $43
	rst  $38                                         ; $42a9: $ff
	ld   b, e                                        ; $42aa: $43
	cp   $c7                                         ; $42ab: $fe $c7
	db   $fc                                         ; $42ad: $fc
	add  a                                           ; $42ae: $87
	rst  $38                                         ; $42af: $ff
	sub  a                                           ; $42b0: $97
	sbc  a                                           ; $42b1: $9f
	db   $fc                                         ; $42b2: $fc
	db   $fc                                         ; $42b3: $fc
	call c, $9c18                                    ; $42b4: $dc $18 $9c
	jr   @-$62                                       ; $42b7: $18 $9c

	db   $10                                         ; $42b9: $10
	ld   hl, sp-$30                                  ; $42ba: $f8 $d0
	ld   hl, sp+$30                                  ; $42bc: $f8 $30
	ld   hl, sp-$10                                  ; $42be: $f8 $f0
	ld   a, h                                        ; $42c0: $7c
	ld   a, b                                        ; $42c1: $78

Jump_093_42c2:
	adc  $ec                                         ; $42c2: $ce $ec
	adc  [hl]                                        ; $42c4: $8e
	add  sp, $00                                     ; $42c5: $e8 $00
	nop                                              ; $42c7: $00
	ret  nz                                          ; $42c8: $c0

	ret  nz                                          ; $42c9: $c0

	nop                                              ; $42ca: $00
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	nop                                              ; $42cd: $00
	ld   bc, $fe00                                   ; $42ce: $01 $00 $fe
	cp   $01                                         ; $42d1: $fe $01
	ld   bc, $0001                                   ; $42d3: $01 $01 $00
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	ld   bc, $0700                                   ; $42da: $01 $00 $07
	inc  bc                                          ; $42dd: $03
	rra                                              ; $42de: $1f
	rlca                                             ; $42df: $07
	ccf                                              ; $42e0: $3f
	rrca                                             ; $42e1: $0f
	ld   a, [hl-]                                    ; $42e2: $3a
	dec  bc                                          ; $42e3: $0b
	inc  [hl]                                        ; $42e4: $34
	rlca                                             ; $42e5: $07
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	inc  bc                                          ; $42e8: $03
	inc  bc                                          ; $42e9: $03

jr_093_42ea:
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	db   $10                                         ; $42f0: $10
	ldh  a, [c]                                      ; $42f1: $f2
	jr   nc, jr_093_42ea                             ; $42f2: $30 $f6

	ld   hl, $61fd                                   ; $42f4: $21 $fd $61
	db   $fd                                         ; $42f7: $fd
	ld   b, e                                        ; $42f8: $43
	rst  $38                                         ; $42f9: $ff
	ld   b, e                                        ; $42fa: $43
	cp   $c6                                         ; $42fb: $fe $c6
	db   $fc                                         ; $42fd: $fc
	add  [hl]                                        ; $42fe: $86
	db   $fc                                         ; $42ff: $fc
	sub  a                                           ; $4300: $97
	sbc  a                                           ; $4301: $9f
	db   $fc                                         ; $4302: $fc
	db   $fc                                         ; $4303: $fc
	call c, $9c18                                    ; $4304: $dc $18 $9c
	jr   @-$62                                       ; $4307: $18 $9c

	db   $10                                         ; $4309: $10
	ld   hl, sp-$30                                  ; $430a: $f8 $d0
	ld   hl, sp+$30                                  ; $430c: $f8 $30
	jr   c, jr_093_4340                              ; $430e: $38 $30

	db   $fc                                         ; $4310: $fc

jr_093_4311:
	jr   jr_093_4311                                 ; $4311: $18 $fe

	db   $fc                                         ; $4313: $fc
	adc  $e8                                         ; $4314: $ce $e8
	add  b                                           ; $4316: $80
	ldh  [$c0], a                                    ; $4317: $e0 $c0
	ret  nz                                          ; $4319: $c0

	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	ld   bc, $fe00                                   ; $431e: $01 $00 $fe
	cp   $01                                         ; $4321: $fe $01
	ld   bc, $0001                                   ; $4323: $01 $01 $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	ld   bc, $0700                                   ; $432a: $01 $00 $07
	inc  bc                                          ; $432d: $03
	rra                                              ; $432e: $1f
	ld   b, $3e                                      ; $432f: $06 $3e
	inc  c                                           ; $4331: $0c
	ccf                                              ; $4332: $3f
	rrca                                             ; $4333: $0f
	ld   a, $0f                                      ; $4334: $3e $0f
	inc  b                                           ; $4336: $04
	rlca                                             ; $4337: $07
	inc  bc                                          ; $4338: $03
	inc  bc                                          ; $4339: $03
	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00

jr_093_4340:
	ld   l, h                                        ; $4340: $6c
	rra                                              ; $4341: $1f
	db   $ec                                         ; $4342: $ec
	rst  JumpTable                                         ; $4343: $df
	ld   a, $3f                                      ; $4344: $3e $3f
	ld   l, [hl]                                     ; $4346: $6e
	ld   e, e                                        ; $4347: $5b
	xor  $9b                                         ; $4348: $ee $9b

jr_093_434a:
	cpl                                              ; $434a: $2f
	dec  de                                          ; $434b: $1b
	dec  l                                           ; $434c: $2d
	rra                                              ; $434d: $1f
	dec  l                                           ; $434e: $2d
	rra                                              ; $434f: $1f
	db   $10                                         ; $4350: $10
	ldh  a, [c]                                      ; $4351: $f2
	jr   nc, jr_093_434a                             ; $4352: $30 $f6

	ld   hl, $61fd                                   ; $4354: $21 $fd $61
	db   $fd                                         ; $4357: $fd
	ld   b, e                                        ; $4358: $43
	rst  $38                                         ; $4359: $ff
	ld   b, e                                        ; $435a: $43
	cp   $c7                                         ; $435b: $fe $c7
	db   $fc                                         ; $435d: $fc
	add  [hl]                                        ; $435e: $86
	db   $fc                                         ; $435f: $fc
	inc  e                                           ; $4360: $1c
	jr   jr_093_4381                                 ; $4361: $18 $1e

	inc  c                                           ; $4363: $0c
	ld   c, $00                                      ; $4364: $0e $00
	ld   hl, sp-$08                                  ; $4366: $f8 $f8
	ldh  a, [$e0]                                    ; $4368: $f0 $e0
	nop                                              ; $436a: $00
	nop                                              ; $436b: $00
	nop                                              ; $436c: $00
	nop                                              ; $436d: $00
	ld   bc, $fe00                                   ; $436e: $01 $00 $fe
	cp   $01                                         ; $4371: $fe $01
	ld   bc, $0001                                   ; $4373: $01 $01 $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	ld   bc, $0700                                   ; $437a: $01 $00 $07
	inc  bc                                          ; $437d: $03
	ld   e, $06                                      ; $437e: $1e $06
	inc  a                                           ; $4380: $3c

jr_093_4381:
	inc  c                                           ; $4381: $0c
	inc  a                                           ; $4382: $3c
	ld   [$0030], sp                                 ; $4383: $08 $30 $00
	rlca                                             ; $4386: $07
	rlca                                             ; $4387: $07
	rlca                                             ; $4388: $07
	inc  bc                                          ; $4389: $03
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	jr   jr_093_439a                                 ; $4390: $18 $08

	inc  e                                           ; $4392: $1c
	ld   [$081c], sp                                 ; $4393: $08 $1c $08
	inc  e                                           ; $4396: $1c
	nop                                              ; $4397: $00
	nop                                              ; $4398: $00
	nop                                              ; $4399: $00

jr_093_439a:
	ld   a, e                                        ; $439a: $7b
	ld   [hl-], a                                    ; $439b: $32
	ld   h, [hl]                                     ; $439c: $66
	nop                                              ; $439d: $00
	ld   c, $00                                      ; $439e: $0e $00
	jr   jr_093_43aa                                 ; $43a0: $18 $08

	inc  e                                           ; $43a2: $1c
	ld   [$081c], sp                                 ; $43a3: $08 $1c $08
	inc  e                                           ; $43a6: $1c
	nop                                              ; $43a7: $00
	nop                                              ; $43a8: $00
	nop                                              ; $43a9: $00

jr_093_43aa:
	dec  sp                                          ; $43aa: $3b
	ld   [de], a                                     ; $43ab: $12
	ld   [hl], a                                     ; $43ac: $77
	ld   hl, $2163                                   ; $43ad: $21 $63 $21
	inc  sp                                          ; $43b0: $33
	nop                                              ; $43b1: $00
	ld   e, $0c                                      ; $43b2: $1e $0c
	nop                                              ; $43b4: $00
	nop                                              ; $43b5: $00
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	nop                                              ; $43b8: $00
	nop                                              ; $43b9: $00
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	adc  [hl]                                        ; $43c0: $8e
	cp   $8c                                         ; $43c1: $fe $8c
	db   $fc                                         ; $43c3: $fc
	inc  e                                           ; $43c4: $1c
	ld   hl, sp+$1c                                  ; $43c5: $f8 $1c
	ldh  a, [$3e]                                    ; $43c7: $f0 $3e
	ldh  a, [c]                                      ; $43c9: $f2
	cpl                                              ; $43ca: $2f
	di                                               ; $43cb: $f3
	ld   l, [hl]                                     ; $43cc: $6e
	ldh  a, [$6e]                                    ; $43cd: $f0 $6e
	ldh  a, [$97]                                    ; $43cf: $f0 $97
	sbc  a                                           ; $43d1: $9f
	db   $fc                                         ; $43d2: $fc
	db   $fc                                         ; $43d3: $fc
	call c, $9c18                                    ; $43d4: $dc $18 $9c
	jr   @-$02                                       ; $43d7: $18 $fc

jr_093_43d9:
	ldh  a, [$f8]                                    ; $43d9: $f0 $f8
	jr   jr_093_43d9                                 ; $43db: $18 $fc

	inc  d                                           ; $43dd: $14
	ld   hl, sp-$20                                  ; $43de: $f8 $e0
	inc  a                                           ; $43e0: $3c
	jr   nc, jr_093_4431                             ; $43e1: $30 $4e

	ld   c, b                                        ; $43e3: $48
	adc  [hl]                                        ; $43e4: $8e
	ret  z                                           ; $43e5: $c8

	add  b                                           ; $43e6: $80
	ret  nz                                          ; $43e7: $c0

	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	ret  nz                                          ; $43ea: $c0

	ret  nz                                          ; $43eb: $c0

	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	ld   bc, $fe00                                   ; $43ee: $01 $00 $fe
	cp   $01                                         ; $43f1: $fe $01
	ld   bc, $0001                                   ; $43f3: $01 $01 $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	inc  bc                                          ; $43f8: $03
	inc  bc                                          ; $43f9: $03
	rrca                                             ; $43fa: $0f
	inc  c                                           ; $43fb: $0c
	rra                                              ; $43fc: $1f
	db   $10                                         ; $43fd: $10
	rra                                              ; $43fe: $1f
	rlca                                             ; $43ff: $07
	inc  a                                           ; $4400: $3c
	inc  c                                           ; $4401: $0c
	ld   a, [hl-]                                    ; $4402: $3a
	ld   a, [bc]                                     ; $4403: $0a
	inc  [hl]                                        ; $4404: $34
	ld   b, $04                                      ; $4405: $06 $04
	ld   b, $00                                      ; $4407: $06 $00
	nop                                              ; $4409: $00
	inc  bc                                          ; $440a: $03
	inc  bc                                          ; $440b: $03
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	ld   b, d                                        ; $4410: $42
	ld   d, e                                        ; $4411: $53
	jp   $e1eb                                       ; $4412: $c3 $eb $e1


	ld   [hl], l                                     ; $4415: $75
	pop  hl                                          ; $4416: $e1
	dec  a                                           ; $4417: $3d
	ldh  a, [$df]                                    ; $4418: $f0 $df
	ldh  a, [$3f]                                    ; $441a: $f0 $3f
	add  sp, $1f                                     ; $441c: $e8 $1f
	add  sp, -$21                                    ; $441e: $e8 $df
	ld   a, h                                        ; $4420: $7c
	ld   a, a                                        ; $4421: $7f
	inc  l                                           ; $4422: $2c
	ccf                                              ; $4423: $3f
	ld   l, $1f                                      ; $4424: $2e $1f
	ld   l, $1b                                      ; $4426: $2e $1b
	ld   l, [hl]                                     ; $4428: $6e
	ld   e, e                                        ; $4429: $5b

jr_093_442a:
	rst  $28                                         ; $442a: $ef
	db   $db                                         ; $442b: $db
	dec  l                                           ; $442c: $2d
	rra                                              ; $442d: $1f
	dec  l                                           ; $442e: $2d
	rra                                              ; $442f: $1f
	db   $10                                         ; $4430: $10

jr_093_4431:
	ldh  a, [c]                                      ; $4431: $f2
	jr   nc, jr_093_442a                             ; $4432: $30 $f6

	ld   hl, $61fd                                   ; $4434: $21 $fd $61
	db   $fd                                         ; $4437: $fd
	ld   b, e                                        ; $4438: $43
	cp   $43                                         ; $4439: $fe $43
	rst  $38                                         ; $443b: $ff
	rst  ToBoot                                         ; $443c: $c7
	db   $fc                                         ; $443d: $fc
	add  a                                           ; $443e: $87
	db   $fc                                         ; $443f: $fc
	adc  a                                           ; $4440: $8f
	ei                                               ; $4441: $fb
	adc  [hl]                                        ; $4442: $8e
	cp   $1c                                         ; $4443: $fe $1c
	db   $fc                                         ; $4445: $fc
	ld   e, $f2                                      ; $4446: $1e $f2
	ccf                                              ; $4448: $3f
	di                                               ; $4449: $f3
	ld   l, $f0                                      ; $444a: $2e $f0
	ld   l, [hl]                                     ; $444c: $6e
	ldh  a, [$6e]                                    ; $444d: $f0 $6e
	ldh  a, [$97]                                    ; $444f: $f0 $97
	sbc  a                                           ; $4451: $9f
	db   $fc                                         ; $4452: $fc
	db   $fc                                         ; $4453: $fc
	call c, $9c18                                    ; $4454: $dc $18 $9c
	jr   @-$02                                       ; $4457: $18 $fc

	ldh  a, [$f8]                                    ; $4459: $f0 $f8
	jr   jr_093_4479                                 ; $445b: $18 $1c

	inc  d                                           ; $445d: $14
	ldh  [rP1], a                                    ; $445e: $e0 $00
	ldh  a, [$e0]                                    ; $4460: $f0 $e0
	ld   e, b                                        ; $4462: $58
	ld   d, b                                        ; $4463: $50
	adc  h                                           ; $4464: $8c
	ret  z                                           ; $4465: $c8

	adc  b                                           ; $4466: $88
	ret  z                                           ; $4467: $c8

	ret  nz                                          ; $4468: $c0

	ret  nz                                          ; $4469: $c0

	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	ld   bc, $fe00                                   ; $446e: $01 $00 $fe
	cp   $01                                         ; $4471: $fe $01
	ld   bc, $0001                                   ; $4473: $01 $01 $00
	nop                                              ; $4476: $00
	nop                                              ; $4477: $00
	inc  bc                                          ; $4478: $03

jr_093_4479:
	inc  bc                                          ; $4479: $03
	rrca                                             ; $447a: $0f
	inc  c                                           ; $447b: $0c
	inc  e                                           ; $447c: $1c
	db   $10                                         ; $447d: $10
	inc  de                                          ; $447e: $13
	nop                                              ; $447f: $00
	rrca                                             ; $4480: $0f
	rlca                                             ; $4481: $07
	ld   a, [de]                                     ; $4482: $1a
	ld   a, [bc]                                     ; $4483: $0a
	inc  e                                           ; $4484: $1c
	ld   c, $0c                                      ; $4485: $0e $0c
	ld   c, $03                                      ; $4487: $0e $03
	inc  bc                                          ; $4489: $03
	nop                                              ; $448a: $00
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	ld   b, d                                        ; $4490: $42
	ld   d, e                                        ; $4491: $53
	jp   $e1eb                                       ; $4492: $c3 $eb $e1


	ld   [hl], l                                     ; $4495: $75
	pop  hl                                          ; $4496: $e1
	dec  a                                           ; $4497: $3d
	ldh  a, [$df]                                    ; $4498: $f0 $df
	ldh  a, [$3f]                                    ; $449a: $f0 $3f
	jr   z, jr_093_44bd                              ; $449c: $28 $1f

	add  sp, $1f                                     ; $449e: $e8 $1f
	db   $ec                                         ; $44a0: $ec
	rst  JumpTable                                         ; $44a1: $df
	inc  a                                           ; $44a2: $3c
	ccf                                              ; $44a3: $3f
	ld   l, $3f                                      ; $44a4: $2e $3f
	ld   l, [hl]                                     ; $44a6: $6e
	ld   e, e                                        ; $44a7: $5b
	xor  $db                                         ; $44a8: $ee $db
	cpl                                              ; $44aa: $2f
	dec  de                                          ; $44ab: $1b
	dec  l                                           ; $44ac: $2d
	rra                                              ; $44ad: $1f
	dec  l                                           ; $44ae: $2d
	rra                                              ; $44af: $1f
	sub  a                                           ; $44b0: $97
	sbc  a                                           ; $44b1: $9f
	db   $fc                                         ; $44b2: $fc
	db   $fc                                         ; $44b3: $fc
	call c, $9c18                                    ; $44b4: $dc $18 $9c
	jr   @-$02                                       ; $44b7: $18 $fc

	ldh  a, [$f8]                                    ; $44b9: $f0 $f8
	jr   jr_093_44d9                                 ; $44bb: $18 $1c

jr_093_44bd:
	inc  d                                           ; $44bd: $14
	inc  c                                           ; $44be: $0c
	nop                                              ; $44bf: $00
	inc  b                                           ; $44c0: $04
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	ld   hl, sp-$08                                  ; $44c6: $f8 $f8
	ldh  a, [$e0]                                    ; $44c8: $f0 $e0
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	ld   bc, $fe00                                   ; $44ce: $01 $00 $fe
	cp   $01                                         ; $44d1: $fe $01
	ld   bc, $0001                                   ; $44d3: $01 $01 $00
	nop                                              ; $44d6: $00
	nop                                              ; $44d7: $00
	inc  bc                                          ; $44d8: $03

jr_093_44d9:
	inc  bc                                          ; $44d9: $03
	rrca                                             ; $44da: $0f
	inc  c                                           ; $44db: $0c
	inc  e                                           ; $44dc: $1c
	db   $10                                         ; $44dd: $10
	jr   c, jr_093_44e0                              ; $44de: $38 $00

jr_093_44e0:
	jr   nz, jr_093_44e2                             ; $44e0: $20 $00

jr_093_44e2:
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00

jr_093_44e5:
	nop                                              ; $44e5: $00
	rlca                                             ; $44e6: $07
	rlca                                             ; $44e7: $07
	rlca                                             ; $44e8: $07
	inc  bc                                          ; $44e9: $03
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	nop                                              ; $44ec: $00
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	ld   b, d                                        ; $44f0: $42
	ld   d, e                                        ; $44f1: $53
	jp   $e1eb                                       ; $44f2: $c3 $eb $e1


	ld   [hl], l                                     ; $44f5: $75
	pop  hl                                          ; $44f6: $e1
	dec  a                                           ; $44f7: $3d
	ldh  a, [$df]                                    ; $44f8: $f0 $df
	ldh  a, [$3f]                                    ; $44fa: $f0 $3f
	ld   l, b                                        ; $44fc: $68
	rra                                              ; $44fd: $1f
	jr   z, jr_093_451f                              ; $44fe: $28 $1f

	jr   jr_093_450a                                 ; $4500: $18 $08

	inc  e                                           ; $4502: $1c
	ld   [$081c], sp                                 ; $4503: $08 $1c $08
	inc  e                                           ; $4506: $1c
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	nop                                              ; $4509: $00

jr_093_450a:
	dec  c                                           ; $450a: $0d
	ld   e, $16                                      ; $450b: $1e $16
	ld   hl, $2163                                   ; $450d: $21 $63 $21
	inc  sp                                          ; $4510: $33
	jr   nz, jr_093_453f                             ; $4511: $20 $2c

	ld   e, $18                                      ; $4513: $1e $18
	nop                                              ; $4515: $00
	nop                                              ; $4516: $00
	nop                                              ; $4517: $00
	nop                                              ; $4518: $00
	nop                                              ; $4519: $00

jr_093_451a:
	nop                                              ; $451a: $00
	nop                                              ; $451b: $00
	nop                                              ; $451c: $00
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00

jr_093_451f:
	nop                                              ; $451f: $00
	db   $10                                         ; $4520: $10
	ldh  a, [c]                                      ; $4521: $f2
	jr   nc, jr_093_451a                             ; $4522: $30 $f6

	ld   hl, $61fd                                   ; $4524: $21 $fd $61
	db   $fd                                         ; $4527: $fd
	ld   b, e                                        ; $4528: $43
	cp   $43                                         ; $4529: $fe $43
	rst  $38                                         ; $452b: $ff
	rst  ToBoot                                         ; $452c: $c7
	cp   $87                                         ; $452d: $fe $87
	rst  $38                                         ; $452f: $ff
	adc  [hl]                                        ; $4530: $8e
	cp   $8c                                         ; $4531: $fe $8c
	db   $fc                                         ; $4533: $fc
	inc  e                                           ; $4534: $1c
	ld   hl, sp+$1e                                  ; $4535: $f8 $1e
	ldh  a, [c]                                      ; $4537: $f2
	ccf                                              ; $4538: $3f
	di                                               ; $4539: $f3
	cpl                                              ; $453a: $2f
	ldh  a, [$6f]                                    ; $453b: $f0 $6f
	ldh  a, [$6e]                                    ; $453d: $f0 $6e

jr_093_453f:
	ldh  a, [$97]                                    ; $453f: $f0 $97
	sbc  a                                           ; $4541: $9f
	db   $fc                                         ; $4542: $fc

Call_093_4543:
	db   $fc                                         ; $4543: $fc
	call c, $9c18                                    ; $4544: $dc $18 $9c
	jr   jr_093_44e5                                 ; $4547: $18 $9c

	inc  e                                           ; $4549: $1c
	db   $fc                                         ; $454a: $fc
	ldh  a, [$f8]                                    ; $454b: $f0 $f8
	db   $10                                         ; $454d: $10
	cp   $f0                                         ; $454e: $fe $f0
	ld   a, [hl]                                     ; $4550: $7e
	ld   a, b                                        ; $4551: $78
	ret  z                                           ; $4552: $c8

	add  sp, -$80                                    ; $4553: $e8 $80

jr_093_4555:
	ldh  [rP1], a                                    ; $4555: $e0 $00
	nop                                              ; $4557: $00
	ret  nz                                          ; $4558: $c0

	ret  nz                                          ; $4559: $c0

	nop                                              ; $455a: $00
	nop                                              ; $455b: $00
	ld   d, b                                        ; $455c: $50
	nop                                              ; $455d: $00
	xor  c                                           ; $455e: $a9
	nop                                              ; $455f: $00
	cp   $fe                                         ; $4560: $fe $fe
	ld   bc, $0101                                   ; $4562: $01 $01 $01
	nop                                              ; $4565: $00
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	inc  e                                           ; $4568: $1c
	inc  e                                           ; $4569: $1c
	rrca                                             ; $456a: $0f
	inc  bc                                          ; $456b: $03
	rra                                              ; $456c: $1f
	nop                                              ; $456d: $00
	ccf                                              ; $456e: $3f
	rlca                                             ; $456f: $07
	dec  sp                                          ; $4570: $3b
	dec  bc                                          ; $4571: $0b
	ld   c, $0f                                      ; $4572: $0e $0f
	inc  b                                           ; $4574: $04
	rlca                                             ; $4575: $07
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	inc  bc                                          ; $4578: $03
	inc  bc                                          ; $4579: $03
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	ld   [bc], a                                     ; $457c: $02
	nop                                              ; $457d: $00
	ld   bc, $6c00                                   ; $457e: $01 $00 $6c
	ld   a, a                                        ; $4581: $7f
	inc  a                                           ; $4582: $3c
	ccf                                              ; $4583: $3f
	ld   l, $1f                                      ; $4584: $2e $1f
	ld   l, [hl]                                     ; $4586: $6e
	ld   e, e                                        ; $4587: $5b
	xor  $db                                         ; $4588: $ee $db

jr_093_458a:
	cpl                                              ; $458a: $2f
	dec  de                                          ; $458b: $1b
	xor  l                                           ; $458c: $ad
	rra                                              ; $458d: $1f
	ld   l, l                                        ; $458e: $6d
	rra                                              ; $458f: $1f
	db   $10                                         ; $4590: $10
	ldh  a, [c]                                      ; $4591: $f2
	jr   nc, jr_093_458a                             ; $4592: $30 $f6

	ld   hl, $61fd                                   ; $4594: $21 $fd $61
	db   $fd                                         ; $4597: $fd
	ld   b, e                                        ; $4598: $43
	cp   $43                                         ; $4599: $fe $43
	rst  $38                                         ; $459b: $ff
	rst  ToBoot                                         ; $459c: $c7
	cp   $87                                         ; $459d: $fe $87
	db   $fc                                         ; $459f: $fc
	adc  a                                           ; $45a0: $8f
	ld   hl, sp-$71                                  ; $45a1: $f8 $8f
	ei                                               ; $45a3: $fb
	ld   e, $fe                                      ; $45a4: $1e $fe
	ld   e, $f6                                      ; $45a6: $1e $f6
	ccf                                              ; $45a8: $3f
	di                                               ; $45a9: $f3
	cpl                                              ; $45aa: $2f
	ldh  a, [$6f]                                    ; $45ab: $f0 $6f
	ldh  a, [$6e]                                    ; $45ad: $f0 $6e
	ldh  a, [$97]                                    ; $45af: $f0 $97
	sbc  a                                           ; $45b1: $9f
	db   $fc                                         ; $45b2: $fc
	db   $fc                                         ; $45b3: $fc
	call c, $9c18                                    ; $45b4: $dc $18 $9c
	jr   jr_093_4555                                 ; $45b7: $18 $9c

	inc  e                                           ; $45b9: $1c
	db   $fc                                         ; $45ba: $fc
	ldh  a, [$f8]                                    ; $45bb: $f0 $f8
	stop                                             ; $45bd: $10 $00
	nop                                              ; $45bf: $00
	ldh  [rP1], a                                    ; $45c0: $e0 $00
	ld   hl, sp-$10                                  ; $45c2: $f8 $f0
	ret  c                                           ; $45c4: $d8

	ld   hl, sp-$78                                  ; $45c5: $f8 $88
	add  sp, -$40                                    ; $45c7: $e8 $c0
	ret  nz                                          ; $45c9: $c0

	nop                                              ; $45ca: $00
	nop                                              ; $45cb: $00
	ld   d, b                                        ; $45cc: $50
	nop                                              ; $45cd: $00
	xor  c                                           ; $45ce: $a9
	nop                                              ; $45cf: $00
	cp   $fe                                         ; $45d0: $fe $fe
	ld   bc, $0101                                   ; $45d2: $01 $01 $01
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	inc  e                                           ; $45d8: $1c
	inc  e                                           ; $45d9: $1c
	rrca                                             ; $45da: $0f
	inc  bc                                          ; $45db: $03
	inc  bc                                          ; $45dc: $03
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	inc  bc                                          ; $45e0: $03
	nop                                              ; $45e1: $00
	rrca                                             ; $45e2: $0f
	rlca                                             ; $45e3: $07
	ld   c, $0f                                      ; $45e4: $0e $0f
	inc  b                                           ; $45e6: $04
	rlca                                             ; $45e7: $07
	inc  bc                                          ; $45e8: $03
	inc  bc                                          ; $45e9: $03
	nop                                              ; $45ea: $00
	nop                                              ; $45eb: $00
	ld   [bc], a                                     ; $45ec: $02
	nop                                              ; $45ed: $00
	ld   bc, $ec00                                   ; $45ee: $01 $00 $ec
	rra                                              ; $45f1: $1f
	db   $ec                                         ; $45f2: $ec
	rst  JumpTable                                         ; $45f3: $df
	ld   a, $3f                                      ; $45f4: $3e $3f
	ld   l, [hl]                                     ; $45f6: $6e
	ld   a, e                                        ; $45f7: $7b
	xor  $db                                         ; $45f8: $ee $db

jr_093_45fa:
	cpl                                              ; $45fa: $2f
	dec  de                                          ; $45fb: $1b
	xor  l                                           ; $45fc: $ad
	rra                                              ; $45fd: $1f
	ld   l, l                                        ; $45fe: $6d
	rra                                              ; $45ff: $1f
	db   $10                                         ; $4600: $10
	ldh  a, [c]                                      ; $4601: $f2
	jr   nc, jr_093_45fa                             ; $4602: $30 $f6

	ld   hl, $61fd                                   ; $4604: $21 $fd $61
	db   $fd                                         ; $4607: $fd
	ld   b, e                                        ; $4608: $43
	cp   $43                                         ; $4609: $fe $43
	rst  $38                                         ; $460b: $ff
	rst  ToBoot                                         ; $460c: $c7
	cp   $86                                         ; $460d: $fe $86
	db   $fc                                         ; $460f: $fc
	adc  [hl]                                        ; $4610: $8e
	db   $fc                                         ; $4611: $fc
	adc  h                                           ; $4612: $8c
	ld   hl, sp+$1e                                  ; $4613: $f8 $1e
	ld   hl, sp+$1f                                  ; $4615: $f8 $1f
	di                                               ; $4617: $f3
	ccf                                              ; $4618: $3f
	pop  af                                          ; $4619: $f1
	cpl                                              ; $461a: $2f
	ldh  a, [$6f]                                    ; $461b: $f0 $6f
	ldh  a, [$6e]                                    ; $461d: $f0 $6e
	ldh  a, [rP1]                                    ; $461f: $f0 $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00

jr_093_4625:
	nop                                              ; $4625: $00
	ld   hl, sp-$08                                  ; $4626: $f8 $f8
	ldh  a, [$e0]                                    ; $4628: $f0 $e0
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	ld   d, b                                        ; $462c: $50
	nop                                              ; $462d: $00
	xor  c                                           ; $462e: $a9
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	rlca                                             ; $4636: $07
	rlca                                             ; $4637: $07
	rlca                                             ; $4638: $07
	inc  bc                                          ; $4639: $03
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	ld   [bc], a                                     ; $463c: $02
	nop                                              ; $463d: $00
	ld   bc, $2c00                                   ; $463e: $01 $00 $2c
	rra                                              ; $4641: $1f
	inc  l                                           ; $4642: $2c
	rra                                              ; $4643: $1f
	ld   l, [hl]                                     ; $4644: $6e
	rra                                              ; $4645: $1f
	xor  $db                                         ; $4646: $ee $db
	xor  $9b                                         ; $4648: $ee $9b
	cpl                                              ; $464a: $2f
	dec  de                                          ; $464b: $1b
	xor  l                                           ; $464c: $ad
	rra                                              ; $464d: $1f
	ld   l, l                                        ; $464e: $6d
	rra                                              ; $464f: $1f
	jr   jr_093_465a                                 ; $4650: $18 $08

	inc  e                                           ; $4652: $1c
	ld   [$081c], sp                                 ; $4653: $08 $1c $08
	inc  e                                           ; $4656: $1c
	nop                                              ; $4657: $00
	ld   [bc], a                                     ; $4658: $02
	nop                                              ; $4659: $00

jr_093_465a:
	cpl                                              ; $465a: $2f
	ld   [hl], d                                     ; $465b: $72
	jr   nz, @+$44                                   ; $465c: $20 $42

	jr   z, @+$1e                                    ; $465e: $28 $1c

	db   $10                                         ; $4660: $10
	ldh  a, [c]                                      ; $4661: $f2
	jr   nc, jr_093_465a                             ; $4662: $30 $f6

	ld   hl, $61fd                                   ; $4664: $21 $fd $61
	db   $fd                                         ; $4667: $fd
	ld   b, e                                        ; $4668: $43
	cp   $43                                         ; $4669: $fe $43
	rst  $38                                         ; $466b: $ff
	rst  ToBoot                                         ; $466c: $c7
	db   $fc                                         ; $466d: $fc
	add  a                                           ; $466e: $87
	db   $fd                                         ; $466f: $fd
	adc  [hl]                                        ; $4670: $8e
	cp   $8c                                         ; $4671: $fe $8c
	db   $fc                                         ; $4673: $fc
	inc  e                                           ; $4674: $1c
	ld   hl, sp+$1e                                  ; $4675: $f8 $1e
	ldh  a, [c]                                      ; $4677: $f2
	ccf                                              ; $4678: $3f
	di                                               ; $4679: $f3
	cpl                                              ; $467a: $2f
	ldh  a, [$6e]                                    ; $467b: $f0 $6e
	ldh  a, [$6e]                                    ; $467d: $f0 $6e
	ldh  a, [$97]                                    ; $467f: $f0 $97
	sbc  a                                           ; $4681: $9f
	db   $fc                                         ; $4682: $fc
	db   $fc                                         ; $4683: $fc
	call c, $9c18                                    ; $4684: $dc $18 $9c
	jr   jr_093_4625                                 ; $4687: $18 $9c

	db   $10                                         ; $4689: $10
	ret  c                                           ; $468a: $d8

	sub  b                                           ; $468b: $90
	db   $fc                                         ; $468c: $fc
	ld   a, h                                        ; $468d: $7c
	cp   $e0                                         ; $468e: $fe $e0
	ld   a, h                                        ; $4690: $7c
	ld   [hl], b                                     ; $4691: $70
	ret  z                                           ; $4692: $c8

	add  sp, -$80                                    ; $4693: $e8 $80
	ldh  [rP1], a                                    ; $4695: $e0 $00
	nop                                              ; $4697: $00
	ret  nz                                          ; $4698: $c0

	ret  nz                                          ; $4699: $c0

	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	ld   bc, $fe00                                   ; $469e: $01 $00 $fe
	cp   $01                                         ; $46a1: $fe $01
	ld   bc, $0001                                   ; $46a3: $01 $01 $00
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	ld   bc, $1f00                                   ; $46aa: $01 $00 $1f
	rra                                              ; $46ad: $1f
	rra                                              ; $46ae: $1f
	rlca                                             ; $46af: $07
	rra                                              ; $46b0: $1f
	rrca                                             ; $46b1: $0f
	ld   a, [bc]                                     ; $46b2: $0a
	dec  bc                                          ; $46b3: $0b
	inc  b                                           ; $46b4: $04
	rlca                                             ; $46b5: $07
	nop                                              ; $46b6: $00
	nop                                              ; $46b7: $00
	inc  bc                                          ; $46b8: $03
	inc  bc                                          ; $46b9: $03
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	ld   l, h                                        ; $46c0: $6c
	ld   a, a                                        ; $46c1: $7f
	inc  a                                           ; $46c2: $3c
	ccf                                              ; $46c3: $3f
	ld   l, $1f                                      ; $46c4: $2e $1f
	ld   l, [hl]                                     ; $46c6: $6e
	ld   e, e                                        ; $46c7: $5b
	xor  $db                                         ; $46c8: $ee $db
	cpl                                              ; $46ca: $2f
	dec  de                                          ; $46cb: $1b
	dec  l                                           ; $46cc: $2d
	rra                                              ; $46cd: $1f
	dec  l                                           ; $46ce: $2d
	rra                                              ; $46cf: $1f
	adc  l                                           ; $46d0: $8d
	db   $fc                                         ; $46d1: $fc
	adc  a                                           ; $46d2: $8f
	ld   sp, hl                                      ; $46d3: $f9
	ld   e, $fa                                      ; $46d4: $1e $fa
	ld   e, $f6                                      ; $46d6: $1e $f6
	ccf                                              ; $46d8: $3f
	di                                               ; $46d9: $f3
	cpl                                              ; $46da: $2f
	ldh  a, [$6e]                                    ; $46db: $f0 $6e
	ldh  a, [$6e]                                    ; $46dd: $f0 $6e
	ldh  a, [$97]                                    ; $46df: $f0 $97
	sbc  a                                           ; $46e1: $9f
	db   $fc                                         ; $46e2: $fc
	db   $fc                                         ; $46e3: $fc
	call c, $9c18                                    ; $46e4: $dc $18 $9c
	jr   @-$62                                       ; $46e7: $18 $9c

	db   $10                                         ; $46e9: $10
	ret  c                                           ; $46ea: $d8

	sub  b                                           ; $46eb: $90
	db   $fc                                         ; $46ec: $fc
	ld   a, h                                        ; $46ed: $7c
	ld   a, h                                        ; $46ee: $7c
	nop                                              ; $46ef: $00
	ldh  [rP1], a                                    ; $46f0: $e0 $00
	ld   hl, sp-$10                                  ; $46f2: $f8 $f0
	ret  c                                           ; $46f4: $d8

	ld   hl, sp-$78                                  ; $46f5: $f8 $88
	add  sp, -$40                                    ; $46f7: $e8 $c0
	ret  nz                                          ; $46f9: $c0

	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	ld   bc, $fe00                                   ; $46fe: $01 $00 $fe
	cp   $01                                         ; $4701: $fe $01
	ld   bc, $0001                                   ; $4703: $01 $01 $00
	nop                                              ; $4706: $00
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	ld   bc, $1f00                                   ; $470a: $01 $00 $1f
	rra                                              ; $470d: $1f
	rra                                              ; $470e: $1f
	nop                                              ; $470f: $00
	ld   bc, $0f00                                   ; $4710: $01 $00 $0f
	rlca                                             ; $4713: $07
	ld   c, $0f                                      ; $4714: $0e $0f
	inc  c                                           ; $4716: $0c
	rrca                                             ; $4717: $0f
	inc  bc                                          ; $4718: $03
	inc  bc                                          ; $4719: $03
	nop                                              ; $471a: $00
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	db   $ec                                         ; $4720: $ec
	rra                                              ; $4721: $1f
	db   $ec                                         ; $4722: $ec
	rst  JumpTable                                         ; $4723: $df
	ld   l, [hl]                                     ; $4724: $6e
	ld   a, a                                        ; $4725: $7f
	ld   a, [hl]                                     ; $4726: $7e
	ld   a, e                                        ; $4727: $7b
	xor  $db                                         ; $4728: $ee $db
	cpl                                              ; $472a: $2f
	dec  de                                          ; $472b: $1b
	dec  l                                           ; $472c: $2d
	rra                                              ; $472d: $1f
	dec  l                                           ; $472e: $2d
	rra                                              ; $472f: $1f
	sub  a                                           ; $4730: $97
	sbc  a                                           ; $4731: $9f
	db   $fc                                         ; $4732: $fc
	db   $fc                                         ; $4733: $fc
	call c, $9c18                                    ; $4734: $dc $18 $9c
	jr   @-$62                                       ; $4737: $18 $9c

	db   $10                                         ; $4739: $10
	ret  c                                           ; $473a: $d8

	sub  b                                           ; $473b: $90
	db   $fc                                         ; $473c: $fc
	ld   a, h                                        ; $473d: $7c
	ld   a, b                                        ; $473e: $78
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	ld   hl, sp-$08                                  ; $4746: $f8 $f8
	ldh  a, [$e0]                                    ; $4748: $f0 $e0
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	nop                                              ; $474d: $00
	ld   bc, $fe00                                   ; $474e: $01 $00 $fe
	cp   $01                                         ; $4751: $fe $01
	ld   bc, $0001                                   ; $4753: $01 $01 $00
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	ld   bc, $1f00                                   ; $475a: $01 $00 $1f
	rra                                              ; $475d: $1f
	rlca                                             ; $475e: $07
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	rlca                                             ; $4766: $07
	rlca                                             ; $4767: $07
	rlca                                             ; $4768: $07
	inc  bc                                          ; $4769: $03
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	jr   jr_093_477a                                 ; $4770: $18 $08

	inc  e                                           ; $4772: $1c
	ld   [$081c], sp                                 ; $4773: $08 $1c $08
	inc  e                                           ; $4776: $1c
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00

jr_093_477a:
	ld   a, e                                        ; $477a: $7b
	ld   [de], a                                     ; $477b: $12
	ld   h, a                                        ; $477c: $67
	ld   [hl+], a                                    ; $477d: $22
	inc  h                                           ; $477e: $24
	ld   [hl+], a                                    ; $477f: $22
	ld   a, [de]                                     ; $4780: $1a
	inc  e                                           ; $4781: $1c
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00

jr_093_478a:
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	db   $10                                         ; $4790: $10
	ldh  a, [c]                                      ; $4791: $f2
	jr   nc, jr_093_478a                             ; $4792: $30 $f6

	ld   hl, $61fd                                   ; $4794: $21 $fd $61
	db   $fd                                         ; $4797: $fd
	ld   b, e                                        ; $4798: $43
	cp   $43                                         ; $4799: $fe $43
	cp   $c7                                         ; $479b: $fe $c7
	rst  $38                                         ; $479d: $ff
	add  a                                           ; $479e: $87
	db   $fc                                         ; $479f: $fc
	adc  a                                           ; $47a0: $8f
	db   $fd                                         ; $47a1: $fd
	adc  a                                           ; $47a2: $8f
	cp   $1c                                         ; $47a3: $fe $1c
	ld   a, [$f11e]                                  ; $47a5: $fa $1e $f1
	ccf                                              ; $47a8: $3f
	ldh  a, [$2f]                                    ; $47a9: $f0 $2f
	ldh  a, [$6e]                                    ; $47ab: $f0 $6e
	ldh  a, [$6e]                                    ; $47ad: $f0 $6e
	ldh  a, [$97]                                    ; $47af: $f0 $97
	sbc  a                                           ; $47b1: $9f
	db   $fc                                         ; $47b2: $fc
	db   $fc                                         ; $47b3: $fc
	call c, $9c18                                    ; $47b4: $dc $18 $9c
	jr   @-$62                                       ; $47b7: $18 $9c

	db   $10                                         ; $47b9: $10
	sbc  b                                           ; $47ba: $98
	db   $10                                         ; $47bb: $10
	ld   hl, sp-$30                                  ; $47bc: $f8 $d0
	db   $fc                                         ; $47be: $fc
	inc  a                                           ; $47bf: $3c
	cp   $f0                                         ; $47c0: $fe $f0
	inc  e                                           ; $47c2: $1c
	ld   e, b                                        ; $47c3: $58
	ld   c, b                                        ; $47c4: $48
	ld   a, b                                        ; $47c5: $78
	ldh  [$f0], a                                    ; $47c6: $e0 $f0
	nop                                              ; $47c8: $00
	nop                                              ; $47c9: $00
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	ld   bc, $fe00                                   ; $47ce: $01 $00 $fe
	cp   $01                                         ; $47d1: $fe $01
	ld   bc, $0001                                   ; $47d3: $01 $01 $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	ld   bc, $0300                                   ; $47da: $01 $00 $03
	ld   bc, $1e1f                                   ; $47dd: $01 $1f $1e
	rra                                              ; $47e0: $1f
	rlca                                             ; $47e1: $07
	jr   jr_093_47ed                                 ; $47e2: $18 $09

	ld   bc, $0101                                   ; $47e4: $01 $01 $01
	rlca                                             ; $47e7: $07
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00

jr_093_47ed:
	nop                                              ; $47ed: $00
	nop                                              ; $47ee: $00
	nop                                              ; $47ef: $00
	ld   b, d                                        ; $47f0: $42
	ld   d, e                                        ; $47f1: $53
	jp   $e1eb                                       ; $47f2: $c3 $eb $e1


	ld   [hl], l                                     ; $47f5: $75
	pop  hl                                          ; $47f6: $e1
	dec  a                                           ; $47f7: $3d
	ldh  a, [$1f]                                    ; $47f8: $f0 $1f
	ldh  a, [$1f]                                    ; $47fa: $f0 $1f
	add  sp, -$01                                    ; $47fc: $e8 $ff
	add  sp, $1f                                     ; $47fe: $e8 $1f

Call_093_4800:
	db   $fc                                         ; $4800: $fc
	rst  JumpTable                                         ; $4801: $df
	inc  l                                           ; $4802: $2c
	ld   a, a                                        ; $4803: $7f
	ld   c, [hl]                                     ; $4804: $4e
	rst  $38                                         ; $4805: $ff
	xor  $db                                         ; $4806: $ee $db
	ld   l, [hl]                                     ; $4808: $6e
	dec  de                                          ; $4809: $1b
	cpl                                              ; $480a: $2f
	dec  de                                          ; $480b: $1b
	dec  l                                           ; $480c: $2d
	rra                                              ; $480d: $1f
	dec  l                                           ; $480e: $2d
	rra                                              ; $480f: $1f
	adc  a                                           ; $4810: $8f
	db   $fc                                         ; $4811: $fc
	adc  a                                           ; $4812: $8f
	db   $fd                                         ; $4813: $fd
	ld   e, $fe                                      ; $4814: $1e $fe
	ld   e, $f1                                      ; $4816: $1e $f1
	ccf                                              ; $4818: $3f
	ldh  a, [$2f]                                    ; $4819: $f0 $2f
	ldh  a, [$6e]                                    ; $481b: $f0 $6e
	ldh  a, [$6e]                                    ; $481d: $f0 $6e
	ldh  a, [$fc]                                    ; $481f: $f0 $fc
	nop                                              ; $4821: $00
	ld   hl, sp-$10                                  ; $4822: $f8 $f0
	ld   l, b                                        ; $4824: $68
	ld   a, b                                        ; $4825: $78
	ldh  [$f0], a                                    ; $4826: $e0 $f0
	nop                                              ; $4828: $00
	nop                                              ; $4829: $00
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	nop                                              ; $482c: $00
	nop                                              ; $482d: $00
	ld   bc, $1f00                                   ; $482e: $01 $00 $1f
	nop                                              ; $4831: $00
	rrca                                             ; $4832: $0f
	rlca                                             ; $4833: $07
	add  hl, bc                                      ; $4834: $09
	add  hl, bc                                      ; $4835: $09
	inc  bc                                          ; $4836: $03
	rlca                                             ; $4837: $07
	nop                                              ; $4838: $00
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	db   $ec                                         ; $4840: $ec
	rra                                              ; $4841: $1f
	xor  h                                           ; $4842: $ac
	rst  JumpTable                                         ; $4843: $df
	ld   l, [hl]                                     ; $4844: $6e
	rst  $38                                         ; $4845: $ff
	xor  $db                                         ; $4846: $ee $db
	ld   l, [hl]                                     ; $4848: $6e
	dec  de                                          ; $4849: $1b
	cpl                                              ; $484a: $2f
	dec  de                                          ; $484b: $1b
	dec  l                                           ; $484c: $2d
	rra                                              ; $484d: $1f
	dec  l                                           ; $484e: $2d
	rra                                              ; $484f: $1f
	inc  a                                           ; $4850: $3c
	nop                                              ; $4851: $00
	nop                                              ; $4852: $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	ld   hl, sp-$08                                  ; $4856: $f8 $f8
	ldh  a, [$e0]                                    ; $4858: $f0 $e0
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	ld   bc, $1c00                                   ; $485e: $01 $00 $1c
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	rlca                                             ; $4866: $07
	rlca                                             ; $4867: $07
	rlca                                             ; $4868: $07
	inc  bc                                          ; $4869: $03
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	ld   l, h                                        ; $4870: $6c
	rra                                              ; $4871: $1f
	inc  l                                           ; $4872: $2c
	rra                                              ; $4873: $1f
	ld   l, [hl]                                     ; $4874: $6e
	rra                                              ; $4875: $1f
	xor  $db                                         ; $4876: $ee $db
	xor  $9b                                         ; $4878: $ee $9b
	cpl                                              ; $487a: $2f
	dec  de                                          ; $487b: $1b
	dec  l                                           ; $487c: $2d
	rra                                              ; $487d: $1f
	dec  l                                           ; $487e: $2d
	rra                                              ; $487f: $1f
	jr   jr_093_488a                                 ; $4880: $18 $08

	inc  e                                           ; $4882: $1c
	ld   [$081c], sp                                 ; $4883: $08 $1c $08
	inc  e                                           ; $4886: $1c
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	nop                                              ; $4889: $00

jr_093_488a:
	ld   a, e                                        ; $488a: $7b
	ld   a, [de]                                     ; $488b: $1a
	ld   h, a                                        ; $488c: $67
	ld   [hl+], a                                    ; $488d: $22
	ld   [hl+], a                                    ; $488e: $22
	ld   [hl+], a                                    ; $488f: $22
	ld   e, $1c                                      ; $4890: $1e $1c
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	nop                                              ; $4894: $00
	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	nop                                              ; $489b: $00
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	adc  [hl]                                        ; $48a0: $8e
	db   $fc                                         ; $48a1: $fc
	adc  a                                           ; $48a2: $8f
	ei                                               ; $48a3: $fb
	rra                                              ; $48a4: $1f
	cp   $1e                                         ; $48a5: $fe $1e
	ldh  a, [$3e]                                    ; $48a7: $f0 $3e
	ldh  a, [$2e]                                    ; $48a9: $f0 $2e
	ldh  a, [$6e]                                    ; $48ab: $f0 $6e
	ldh  a, [$6e]                                    ; $48ad: $f0 $6e
	ldh  a, [$0c]                                    ; $48af: $f0 $0c
	inc  b                                           ; $48b1: $04
	and  $e0                                         ; $48b2: $e6 $e0
	ld   e, $18                                      ; $48b4: $1e $18
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	nop                                              ; $48b8: $00
	nop                                              ; $48b9: $00
	nop                                              ; $48ba: $00
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	ld   bc, $fe00                                   ; $48be: $01 $00 $fe
	cp   $01                                         ; $48c1: $fe $01
	ld   bc, $0001                                   ; $48c3: $01 $01 $00
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00
	nop                                              ; $48c8: $00
	nop                                              ; $48c9: $00
	rlca                                             ; $48ca: $07
	rlca                                             ; $48cb: $07
	rrca                                             ; $48cc: $0f
	ld   [$171f], sp                                 ; $48cd: $08 $1f $17
	ccf                                              ; $48d0: $3f
	rrca                                             ; $48d1: $0f
	ld   a, [hl-]                                    ; $48d2: $3a
	dec  bc                                          ; $48d3: $0b
	dec  [hl]                                        ; $48d4: $35
	ld   b, $06                                      ; $48d5: $06 $06
	rlca                                             ; $48d7: $07
	ld   bc, $0000                                   ; $48d8: $01 $00 $00
	nop                                              ; $48db: $00
	nop                                              ; $48dc: $00
	nop                                              ; $48dd: $00
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	ld   b, d                                        ; $48e0: $42
	ld   d, e                                        ; $48e1: $53
	jp   $e1eb                                       ; $48e2: $c3 $eb $e1


	ld   [hl], l                                     ; $48e5: $75
	pop  hl                                          ; $48e6: $e1
	dec  a                                           ; $48e7: $3d
	ldh  a, [$1f]                                    ; $48e8: $f0 $1f
	ldh  a, [$df]                                    ; $48ea: $f0 $df
	add  sp, $3f                                     ; $48ec: $e8 $3f
	add  sp, -$21                                    ; $48ee: $e8 $df
	ld   a, h                                        ; $48f0: $7c
	ld   a, a                                        ; $48f1: $7f
	inc  l                                           ; $48f2: $2c
	ccf                                              ; $48f3: $3f
	ld   l, $1f                                      ; $48f4: $2e $1f
	xor  [hl]                                        ; $48f6: $ae
	dec  de                                          ; $48f7: $1b
	ld   l, [hl]                                     ; $48f8: $6e
	db   $db                                         ; $48f9: $db
	cpl                                              ; $48fa: $2f
	dec  de                                          ; $48fb: $1b
	dec  l                                           ; $48fc: $2d
	rra                                              ; $48fd: $1f
	dec  l                                           ; $48fe: $2d
	rra                                              ; $48ff: $1f
	jr   jr_093_490a                                 ; $4900: $18 $08

	inc  e                                           ; $4902: $1c
	ld   [$081c], sp                                 ; $4903: $08 $1c $08
	inc  e                                           ; $4906: $1c
	nop                                              ; $4907: $00
	ret  nz                                          ; $4908: $c0

	add  b                                           ; $4909: $80

jr_093_490a:
	dec  sp                                          ; $490a: $3b
	ld   [hl], d                                     ; $490b: $72
	ld   b, $00                                      ; $490c: $06 $00
	ld   c, $00                                      ; $490e: $0e $00
	jr   jr_093_491a                                 ; $4910: $18 $08

	inc  e                                           ; $4912: $1c
	ld   [$081c], sp                                 ; $4913: $08 $1c $08
	inc  e                                           ; $4916: $1c
	nop                                              ; $4917: $00
	ret  nz                                          ; $4918: $c0

	nop                                              ; $4919: $00

jr_093_491a:
	dec  sp                                          ; $491a: $3b
	di                                               ; $491b: $f3
	add  e                                           ; $491c: $83
	ld   b, b                                        ; $491d: $40
	ld   h, [hl]                                     ; $491e: $66
	ld   b, d                                        ; $491f: $42
	ld   l, [hl]                                     ; $4920: $6e
	inc  a                                           ; $4921: $3c
	inc  c                                           ; $4922: $0c
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	nop                                              ; $4925: $00
	nop                                              ; $4926: $00
	nop                                              ; $4927: $00
	nop                                              ; $4928: $00
	nop                                              ; $4929: $00
	nop                                              ; $492a: $00
	nop                                              ; $492b: $00
	nop                                              ; $492c: $00
	nop                                              ; $492d: $00
	nop                                              ; $492e: $00
	nop                                              ; $492f: $00
	ld   d, h                                        ; $4930: $54
	inc  bc                                          ; $4931: $03
	jp   nz, Boot                                    ; $4932: $c2 $00 $01

	rst  $38                                         ; $4935: $ff
	nop                                              ; $4936: $00
	add  [hl]                                        ; $4937: $86
	db   $db                                         ; $4938: $db
	add  b                                           ; $4939: $80
	nop                                              ; $493a: $00
	nop                                              ; $493b: $00
	rst  $38                                         ; $493c: $ff
	add  c                                           ; $493d: $81
	nop                                              ; $493e: $00
	ld   bc, $00ff                                   ; $493f: $01 $ff $00
	add  [hl]                                        ; $4942: $86
	ld   l, l                                        ; $4943: $6d
	add  b                                           ; $4944: $80
	nop                                              ; $4945: $00
	nop                                              ; $4946: $00
	rst  $38                                         ; $4947: $ff
	add  c                                           ; $4948: $81
	nop                                              ; $4949: $00
	ld   bc, $00ff                                   ; $494a: $01 $ff $00
	add  [hl]                                        ; $494d: $86
	or   [hl]                                        ; $494e: $b6
	add  b                                           ; $494f: $80
	nop                                              ; $4950: $00
	nop                                              ; $4951: $00
	rst  $38                                         ; $4952: $ff
	add  c                                           ; $4953: $81
	nop                                              ; $4954: $00
	ld   [bc], a                                     ; $4955: $02
	rst  $38                                         ; $4956: $ff
	nop                                              ; $4957: $00
	dec  de                                          ; $4958: $1b
	add  l                                           ; $4959: $85
	db   $db                                         ; $495a: $db
	ld   [bc], a                                     ; $495b: $02
	ret  nz                                          ; $495c: $c0

	nop                                              ; $495d: $00
	rst  $38                                         ; $495e: $ff
	add  c                                           ; $495f: $81
	nop                                              ; $4960: $00
	ld   [bc], a                                     ; $4961: $02
	rst  $38                                         ; $4962: $ff
	nop                                              ; $4963: $00
	inc  bc                                          ; $4964: $03
	add  l                                           ; $4965: $85
	db   $db                                         ; $4966: $db
	ld   [bc], a                                     ; $4967: $02
	ret  c                                           ; $4968: $d8

jr_093_4969:
	nop                                              ; $4969: $00
	rst  $38                                         ; $496a: $ff
	add  c                                           ; $496b: $81
	nop                                              ; $496c: $00
	nop                                              ; $496d: $00
	rst  $38                                         ; $496e: $ff
	add  b                                           ; $496f: $80
	nop                                              ; $4970: $00
	add  [hl]                                        ; $4971: $86
	db   $db                                         ; $4972: $db
	ld   bc, $ff00                                   ; $4973: $01 $00 $ff
	add  c                                           ; $4976: $81
	nop                                              ; $4977: $00
	ld   [bc], a                                     ; $4978: $02
	rst  $38                                         ; $4979: $ff
	nop                                              ; $497a: $00
	dec  c                                           ; $497b: $0d
	add  l                                           ; $497c: $85
	ld   l, l                                        ; $497d: $6d
	ld   [bc], a                                     ; $497e: $02
	ld   h, b                                        ; $497f: $60
	nop                                              ; $4980: $00
	rst  $38                                         ; $4981: $ff
	add  c                                           ; $4982: $81
	nop                                              ; $4983: $00
	ld   [bc], a                                     ; $4984: $02
	rst  $38                                         ; $4985: $ff
	nop                                              ; $4986: $00
	ld   bc, $6d85                                   ; $4987: $01 $85 $6d
	ld   [bc], a                                     ; $498a: $02
	ld   l, h                                        ; $498b: $6c
	nop                                              ; $498c: $00
	rst  $38                                         ; $498d: $ff
	add  c                                           ; $498e: $81
	nop                                              ; $498f: $00
	nop                                              ; $4990: $00
	rst  $38                                         ; $4991: $ff
	add  b                                           ; $4992: $80
	nop                                              ; $4993: $00
	add  [hl]                                        ; $4994: $86
	ld   l, l                                        ; $4995: $6d
	ld   bc, $ff00                                   ; $4996: $01 $00 $ff
	add  c                                           ; $4999: $81
	nop                                              ; $499a: $00
	ld   [bc], a                                     ; $499b: $02
	rst  $38                                         ; $499c: $ff
	nop                                              ; $499d: $00
	ld   [hl], $85                                   ; $499e: $36 $85
	or   [hl]                                        ; $49a0: $b6
	ld   [bc], a                                     ; $49a1: $02
	add  b                                           ; $49a2: $80
	nop                                              ; $49a3: $00
	rst  $38                                         ; $49a4: $ff
	add  c                                           ; $49a5: $81
	nop                                              ; $49a6: $00
	ld   [bc], a                                     ; $49a7: $02
	rst  $38                                         ; $49a8: $ff
	nop                                              ; $49a9: $00
	ld   b, $85                                      ; $49aa: $06 $85
	or   [hl]                                        ; $49ac: $b6
	ld   [bc], a                                     ; $49ad: $02
	or   b                                           ; $49ae: $b0
	nop                                              ; $49af: $00
	rst  $38                                         ; $49b0: $ff

jr_093_49b1:
	add  c                                           ; $49b1: $81
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	rst  $38                                         ; $49b4: $ff
	add  b                                           ; $49b5: $80
	nop                                              ; $49b6: $00
	add  [hl]                                        ; $49b7: $86
	or   [hl]                                        ; $49b8: $b6
	ld   bc, $ff00                                   ; $49b9: $01 $00 $ff
	add  b                                           ; $49bc: $80
	nop                                              ; $49bd: $00
	add  b                                           ; $49be: $80
	ld   b, h                                        ; $49bf: $44
	add  b                                           ; $49c0: $80
	ld   a, a                                        ; $49c1: $7f
	add  b                                           ; $49c2: $80
	adc  $80                                         ; $49c3: $ce $80
	ld   d, l                                        ; $49c5: $55
	add  b                                           ; $49c6: $80
	ld   h, h                                        ; $49c7: $64
	add  b                                           ; $49c8: $80
	ld   l, [hl]                                     ; $49c9: $6e
	add  b                                           ; $49ca: $80
	ld   b, h                                        ; $49cb: $44
	add  d                                           ; $49cc: $82
	nop                                              ; $49cd: $00
	add  b                                           ; $49ce: $80
	add  b                                           ; $49cf: $80
	add  d                                           ; $49d0: $82
	nop                                              ; $49d1: $00
	add  d                                           ; $49d2: $82
	add  b                                           ; $49d3: $80
	add  h                                           ; $49d4: $84
	nop                                              ; $49d5: $00
	add  b                                           ; $49d6: $80
	inc  bc                                          ; $49d7: $03
	add  [hl]                                        ; $49d8: $86
	nop                                              ; $49d9: $00
	add  b                                           ; $49da: $80
	inc  bc                                          ; $49db: $03
	add  b                                           ; $49dc: $80
	nop                                              ; $49dd: $00
	add  b                                           ; $49de: $80
	ld   b, b                                        ; $49df: $40
	add  b                                           ; $49e0: $80
	db   $fc                                         ; $49e1: $fc
	add  d                                           ; $49e2: $82
	ld   b, h                                        ; $49e3: $44
	add  d                                           ; $49e4: $82
	add  h                                           ; $49e5: $84
	add  b                                           ; $49e6: $80
	jr   jr_093_4969                                 ; $49e7: $18 $80

	nop                                              ; $49e9: $00
	add  b                                           ; $49ea: $80
	ld   b, b                                        ; $49eb: $40
	add  b                                           ; $49ec: $80
	ld   [hl], a                                     ; $49ed: $77
	add  b                                           ; $49ee: $80
	and  h                                           ; $49ef: $a4
	add  b                                           ; $49f0: $80
	db   $fc                                         ; $49f1: $fc
	add  d                                           ; $49f2: $82
	inc  h                                           ; $49f3: $24
	add  b                                           ; $49f4: $80
	rst  $10                                         ; $49f5: $d7
	add  d                                           ; $49f6: $82
	nop                                              ; $49f7: $00
	adc  d                                           ; $49f8: $8a
	add  b                                           ; $49f9: $80
	add  b                                           ; $49fa: $80
	nop                                              ; $49fb: $00
	add  b                                           ; $49fc: $80
	ld   a, $80                                      ; $49fd: $3e $80
	rst  $38                                         ; $49ff: $ff
	add  b                                           ; $4a00: $80

jr_093_4a01:
	xor  d                                           ; $4a01: $aa
	add  b                                           ; $4a02: $80
	ld   a, $80                                      ; $4a03: $3e $80
	rst  $38                                         ; $4a05: $ff
	add  b                                           ; $4a06: $80
	ld   d, l                                        ; $4a07: $55
	add  b                                           ; $4a08: $80
	rst  $38                                         ; $4a09: $ff
	add  d                                           ; $4a0a: $82
	nop                                              ; $4a0b: $00
	add  d                                           ; $4a0c: $82
	add  b                                           ; $4a0d: $80
	add  b                                           ; $4a0e: $80
	nop                                              ; $4a0f: $00
	add  b                                           ; $4a10: $80

jr_093_4a11:
	add  b                                           ; $4a11: $80
	add  b                                           ; $4a12: $80
	nop                                              ; $4a13: $00
	add  b                                           ; $4a14: $80
	add  b                                           ; $4a15: $80
	add  b                                           ; $4a16: $80
	nop                                              ; $4a17: $00
	add  b                                           ; $4a18: $80
	ld   a, a                                        ; $4a19: $7f
	add  b                                           ; $4a1a: $80
	ld   e, [hl]                                     ; $4a1b: $5e
	add  b                                           ; $4a1c: $80
	add  b                                           ; $4a1d: $80
	add  b                                           ; $4a1e: $80
	ld   a, a                                        ; $4a1f: $7f
	add  b                                           ; $4a20: $80
	ld   a, [hl+]                                    ; $4a21: $2a
	add  b                                           ; $4a22: $80
	ld   [de], a                                     ; $4a23: $12
	add  b                                           ; $4a24: $80
	ld   l, l                                        ; $4a25: $6d
	add  b                                           ; $4a26: $80
	nop                                              ; $4a27: $00
	add  b                                           ; $4a28: $80
	ld   bc, $0280                                   ; $4a29: $01 $80 $02
	add  b                                           ; $4a2c: $80
	rlca                                             ; $4a2d: $07
	add  b                                           ; $4a2e: $80
	jr   jr_093_49b1                                 ; $4a2f: $18 $80

	rlca                                             ; $4a31: $07
	add  b                                           ; $4a32: $80
	add  h                                           ; $4a33: $84
	add  b                                           ; $4a34: $80
	add  a                                           ; $4a35: $87
	add  b                                           ; $4a36: $80
	nop                                              ; $4a37: $00
	add  b                                           ; $4a38: $80

jr_093_4a39:
	ld   bc, $8180                                   ; $4a39: $01 $80 $81
	add  b                                           ; $4a3c: $80
	pop  bc                                          ; $4a3d: $c1
	add  b                                           ; $4a3e: $80
	ld   sp, $c180                                   ; $4a3f: $31 $80 $c1
	add  b                                           ; $4a42: $80
	ld   b, c                                        ; $4a43: $41
	add  b                                           ; $4a44: $80
	pop  bc                                          ; $4a45: $c1
	add  d                                           ; $4a46: $82

jr_093_4a47:
	nop                                              ; $4a47: $00
	add  b                                           ; $4a48: $80
	ld   [$0484], sp                                 ; $4a49: $08 $84 $04
	add  b                                           ; $4a4c: $80
	ld   b, b                                        ; $4a4d: $40
	add  b                                           ; $4a4e: $80
	add  b                                           ; $4a4f: $80
	add  b                                           ; $4a50: $80
	nop                                              ; $4a51: $00
	add  b                                           ; $4a52: $80
	ld   a, $80                                      ; $4a53: $3e $80
	inc  e                                           ; $4a55: $1c
	add  b                                           ; $4a56: $80
	rst  $38                                         ; $4a57: $ff
	add  b                                           ; $4a58: $80
	inc  d                                           ; $4a59: $14
	add  b                                           ; $4a5a: $80
	ccf                                              ; $4a5b: $3f
	add  b                                           ; $4a5c: $80
	ld   e, h                                        ; $4a5d: $5c
	add  b                                           ; $4a5e: $80
	ld   c, c                                        ; $4a5f: $49
	add  b                                           ; $4a60: $80
	nop                                              ; $4a61: $00
	add  b                                           ; $4a62: $80
	rrca                                             ; $4a63: $0f
	add  b                                           ; $4a64: $80
	ld   [$8f80], sp                                 ; $4a65: $08 $80 $8f
	add  b                                           ; $4a68: $80
	ld   bc, $1f80                                   ; $4a69: $01 $80 $1f
	add  d                                           ; $4a6c: $82
	ld   bc, $0080                                   ; $4a6d: $01 $80 $00
	add  b                                           ; $4a70: $80
	ldh  [$80], a                                    ; $4a71: $e0 $80
	ld   hl, $e080                                   ; $4a73: $21 $80 $e0
	add  b                                           ; $4a76: $80
	nop                                              ; $4a77: $00
	add  b                                           ; $4a78: $80
	pop  af                                          ; $4a79: $f1
	add  b                                           ; $4a7a: $80
	ld   bc, $0082                                   ; $4a7b: $01 $82 $00
	add  b                                           ; $4a7e: $80
	jr   nz, jr_093_4a01                             ; $4a7f: $20 $80

	db   $fc                                         ; $4a81: $fc
	add  b                                           ; $4a82: $80
	db   $10                                         ; $4a83: $10
	add  b                                           ; $4a84: $80
	ld   [$1880], sp                                 ; $4a85: $08 $80 $18
	add  b                                           ; $4a88: $80
	nop                                              ; $4a89: $00
	add  b                                           ; $4a8a: $80
	ldh  a, [$80]                                    ; $4a8b: $f0 $80
	nop                                              ; $4a8d: $00
	add  b                                           ; $4a8e: $80
	jr   jr_093_4a11                                 ; $4a8f: $18 $80

	ld   h, $80                                      ; $4a91: $26 $80
	rst  $38                                         ; $4a93: $ff
	add  d                                           ; $4a94: $82
	ld   d, l                                        ; $4a95: $55
	add  b                                           ; $4a96: $80
	ld   [hl], a                                     ; $4a97: $77
	add  b                                           ; $4a98: $80
	inc  b                                           ; $4a99: $04
	add  b                                           ; $4a9a: $80
	nop                                              ; $4a9b: $00
	add  b                                           ; $4a9c: $80
	ld   bc, $0f80                                   ; $4a9d: $01 $80 $0f
	add  b                                           ; $4aa0: $80
	adc  c                                           ; $4aa1: $89
	add  b                                           ; $4aa2: $80
	add  hl, bc                                      ; $4aa3: $09
	add  b                                           ; $4aa4: $80
	rrca                                             ; $4aa5: $0f
	add  d                                           ; $4aa6: $82
	ld   bc, $0082                                   ; $4aa7: $01 $82 $00
	add  b                                           ; $4aaa: $80
	db   $e3                                         ; $4aab: $e3
	add  b                                           ; $4aac: $80
	ld   hl, $2080                                   ; $4aad: $21 $80 $20
	add  b                                           ; $4ab0: $80
	pop  hl                                          ; $4ab1: $e1
	add  b                                           ; $4ab2: $80
	inc  bc                                          ; $4ab3: $03
	add  d                                           ; $4ab4: $82
	nop                                              ; $4ab5: $00
	add  b                                           ; $4ab6: $80
	jr   nz, jr_093_4a39                             ; $4ab7: $20 $80

	cp   $80                                         ; $4ab9: $fe $80
	ld   h, h                                        ; $4abb: $64
	add  b                                           ; $4abc: $80
	ld   hl, sp-$80                                  ; $4abd: $f8 $80
	inc  [hl]                                        ; $4abf: $34
	add  b                                           ; $4ac0: $80
	cp   $80                                         ; $4ac1: $fe $80
	jr   nz, jr_093_4a47                             ; $4ac3: $20 $82

	nop                                              ; $4ac5: $00
	adc  c                                           ; $4ac6: $89
	ld   bc, $6100                                   ; $4ac7: $01 $00 $61
	sub  e                                           ; $4aca: $93
	and  b                                           ; $4acb: $a0
	add  b                                           ; $4acc: $80
	cp   a                                           ; $4acd: $bf
	ld   bc, $f0b0                                   ; $4ace: $01 $b0 $f0
	add  b                                           ; $4ad1: $80
	rst  $38                                         ; $4ad2: $ff
	add  b                                           ; $4ad3: $80
	ret  nz                                          ; $4ad4: $c0

	nop                                              ; $4ad5: $00
	add  b                                           ; $4ad6: $80
	add  b                                           ; $4ad7: $80
	rst  $38                                         ; $4ad8: $ff
	add  e                                           ; $4ad9: $83
	nop                                              ; $4ada: $00
	add  b                                           ; $4adb: $80
	rst  $38                                         ; $4adc: $ff
	add  b                                           ; $4add: $80
	nop                                              ; $4ade: $00
	add  b                                           ; $4adf: $80
	rst  $38                                         ; $4ae0: $ff
	add  c                                           ; $4ae1: $81
	nop                                              ; $4ae2: $00
	add  b                                           ; $4ae3: $80
	rst  $38                                         ; $4ae4: $ff
	add  b                                           ; $4ae5: $80
	ld   bc, $0780                                   ; $4ae6: $01 $80 $07
	dec  bc                                          ; $4ae9: $0b
	jr   jr_093_4b07                                 ; $4aea: $18 $1b

	ld   h, b                                        ; $4aec: $60
	ld   l, a                                        ; $4aed: $6f
	rst  ToBoot                                         ; $4aee: $c7
	db   $db                                         ; $4aef: $db
	call $f9db                                       ; $4af0: $cd $db $f9
	pop  af                                          ; $4af3: $f1
	ld   [hl], c                                     ; $4af4: $71
	ld   a, a                                        ; $4af5: $7f
	adc  [hl]                                        ; $4af6: $8e
	nop                                              ; $4af7: $00
	add  e                                           ; $4af8: $83
	ld   bc, $ff80                                   ; $4af9: $01 $80 $ff
	add  b                                           ; $4afc: $80
	ld   bc, $ff80                                   ; $4afd: $01 $80 $ff
	add  c                                           ; $4b00: $81
	ld   bc, $ff02                                   ; $4b01: $01 $02 $ff
	nop                                              ; $4b04: $00
	rst  $38                                         ; $4b05: $ff
	add  b                                           ; $4b06: $80

jr_093_4b07:
	adc  b                                           ; $4b07: $88
	nop                                              ; $4b08: $00
	cp   a                                           ; $4b09: $bf
	add  b                                           ; $4b0a: $80
	adc  b                                           ; $4b0b: $88
	add  a                                           ; $4b0c: $87
	sub  b                                           ; $4b0d: $90
	ld   bc, $ffd0                                   ; $4b0e: $01 $d0 $ff
	add  b                                           ; $4b11: $80
	nop                                              ; $4b12: $00
	nop                                              ; $4b13: $00
	rst  $38                                         ; $4b14: $ff
	adc  d                                           ; $4b15: $8a
	nop                                              ; $4b16: $00
	nop                                              ; $4b17: $00
	rst  $38                                         ; $4b18: $ff
	add  b                                           ; $4b19: $80
	nop                                              ; $4b1a: $00
	nop                                              ; $4b1b: $00
	rst  $38                                         ; $4b1c: $ff
	adc  d                                           ; $4b1d: $8a
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	rst  $38                                         ; $4b20: $ff
	add  b                                           ; $4b21: $80
	ld   de, $ff00                                   ; $4b22: $11 $00 $ff
	add  b                                           ; $4b25: $80
	inc  de                                          ; $4b26: $13
	add  a                                           ; $4b27: $87
	dec  bc                                          ; $4b28: $0b
	nop                                              ; $4b29: $00
	ld   c, e                                        ; $4b2a: $4b
	add  [hl]                                        ; $4b2b: $86
	sub  b                                           ; $4b2c: $90
	add  b                                           ; $4b2d: $80
	sbc  a                                           ; $4b2e: $9f
	ld   bc, $c080                                   ; $4b2f: $01 $80 $c0
	add  d                                           ; $4b32: $82
	rst  $38                                         ; $4b33: $ff
	add  [hl]                                        ; $4b34: $86
	nop                                              ; $4b35: $00
	add  b                                           ; $4b36: $80
	rst  $38                                         ; $4b37: $ff
	add  b                                           ; $4b38: $80
	nop                                              ; $4b39: $00
	add  d                                           ; $4b3a: $82
	rst  $38                                         ; $4b3b: $ff
	add  [hl]                                        ; $4b3c: $86
	nop                                              ; $4b3d: $00
	add  b                                           ; $4b3e: $80
	rst  $38                                         ; $4b3f: $ff
	add  b                                           ; $4b40: $80
	nop                                              ; $4b41: $00
	add  d                                           ; $4b42: $82
	rst  $38                                         ; $4b43: $ff
	add  [hl]                                        ; $4b44: $86
	dec  bc                                          ; $4b45: $0b
	add  b                                           ; $4b46: $80
	ei                                               ; $4b47: $fb
	add  b                                           ; $4b48: $80
	inc  bc                                          ; $4b49: $03
	add  c                                           ; $4b4a: $81
	rst  $38                                         ; $4b4b: $ff
	rst  $38                                         ; $4b4c: $ff
	nop                                              ; $4b4d: $00
	rst  $38                                         ; $4b4e: $ff
	nop                                              ; $4b4f: $00
	rst  $38                                         ; $4b50: $ff
	nop                                              ; $4b51: $00
	rst  $38                                         ; $4b52: $ff
	nop                                              ; $4b53: $00
	rst  $38                                         ; $4b54: $ff
	nop                                              ; $4b55: $00
	rst  $38                                         ; $4b56: $ff
	nop                                              ; $4b57: $00
	add  sp, $00                                     ; $4b58: $e8 $00
	add  b                                           ; $4b5a: $80
	rst  $38                                         ; $4b5b: $ff
	add  b                                           ; $4b5c: $80
	add  b                                           ; $4b5d: $80
	nop                                              ; $4b5e: $00
	cp   a                                           ; $4b5f: $bf
	sub  l                                           ; $4b60: $95
	add  b                                           ; $4b61: $80
	ld   bc, $80bf                                   ; $4b62: $01 $bf $80
	add  d                                           ; $4b65: $82
	rst  $38                                         ; $4b66: $ff
	add  b                                           ; $4b67: $80
	nop                                              ; $4b68: $00
	nop                                              ; $4b69: $00
	rst  $38                                         ; $4b6a: $ff
	sub  l                                           ; $4b6b: $95
	nop                                              ; $4b6c: $00
	ld   bc, $00ff                                   ; $4b6d: $01 $ff $00
	add  d                                           ; $4b70: $82
	rst  $38                                         ; $4b71: $ff
	add  b                                           ; $4b72: $80
	ld   bc, $fd00                                   ; $4b73: $01 $00 $fd
	sub  l                                           ; $4b76: $95
	ld   bc, $fd01                                   ; $4b77: $01 $01 $fd
	ld   bc, $ff80                                   ; $4b7a: $01 $80 $ff
	ld   bc, $080f                                   ; $4b7d: $01 $0f $08
	add  b                                           ; $4b80: $80
	add  hl, bc                                      ; $4b81: $09
	add  b                                           ; $4b82: $80
	ld   [$0986], sp                                 ; $4b83: $08 $86 $09
	add  b                                           ; $4b86: $80
	ld   [$2a01], sp                                 ; $4b87: $08 $01 $2a
	jp   nc, $c980                                   ; $4b8a: $d2 $80 $c9

	add  b                                           ; $4b8d: $80
	jp   c, $c980                                    ; $4b8e: $da $80 $c9

	ld   bc, $dad2                                   ; $4b91: $01 $d2 $da
	add  b                                           ; $4b94: $80
	reti                                             ; $4b95: $d9


	add  b                                           ; $4b96: $80
	jp   c, $d980                                    ; $4b97: $da $80 $d9

	ld   bc, $654d                                   ; $4b9a: $01 $4d $65
	add  b                                           ; $4b9d: $80
	ld   h, d                                        ; $4b9e: $62
	adc  b                                           ; $4b9f: $88
	ld   h, b                                        ; $4ba0: $60
	add  b                                           ; $4ba1: $80
	ld   h, d                                        ; $4ba2: $62
	ld   bc, $ee2a                                   ; $4ba3: $01 $2a $ee
	add  b                                           ; $4ba6: $80
	cp   $03                                         ; $4ba7: $fe $03
	db   $ec                                         ; $4ba9: $ec
	xor  $fc                                         ; $4baa: $ee $fc
	cp   $80                                         ; $4bac: $fe $80
	xor  $80                                         ; $4bae: $ee $80
	cp   $82                                         ; $4bb0: $fe $82
	xor  $01                                         ; $4bb2: $ee $01
	ei                                               ; $4bb4: $fb
	add  b                                           ; $4bb5: $80
	add  b                                           ; $4bb6: $80
	nop                                              ; $4bb7: $00
	add  b                                           ; $4bb8: $80
	add  b                                           ; $4bb9: $80
	adc  b                                           ; $4bba: $88
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	ld   h, b                                        ; $4bbd: $60
	adc  l                                           ; $4bbe: $8d
	ld   bc, $e901                                   ; $4bbf: $01 $01 $e9
	db   $eb                                         ; $4bc2: $eb
	add  b                                           ; $4bc3: $80
	ld   [hl], a                                     ; $4bc4: $77
	add  b                                           ; $4bc5: $80
	dec  hl                                          ; $4bc6: $2b
	add  b                                           ; $4bc7: $80
	rla                                              ; $4bc8: $17
	add  hl, bc                                      ; $4bc9: $09
	adc  c                                           ; $4bca: $89
	adc  e                                           ; $4bcb: $8b
	push bc                                          ; $4bcc: $c5
	rst  ToBoot                                         ; $4bcd: $c7
	ld   h, c                                        ; $4bce: $61
	ld   h, e                                        ; $4bcf: $63
	jr   nz, jr_093_4bf5                             ; $4bd0: $20 $23

	ld   b, b                                        ; $4bd2: $40
	add  d                                           ; $4bd3: $82
	add  b                                           ; $4bd4: $80
	add  c                                           ; $4bd5: $81
	add  b                                           ; $4bd6: $80
	add  b                                           ; $4bd7: $80
	add  b                                           ; $4bd8: $80
	add  c                                           ; $4bd9: $81
	add  [hl]                                        ; $4bda: $86
	add  b                                           ; $4bdb: $80
	nop                                              ; $4bdc: $00
	and  b                                           ; $4bdd: $a0
	adc  e                                           ; $4bde: $8b
	nop                                              ; $4bdf: $00
	ld   b, $a8                                      ; $4be0: $06 $a8
	db   $f4                                         ; $4be2: $f4
	ld   b, a                                        ; $4be3: $47
	and  $e4                                         ; $4be4: $e6 $e4
	and  $e4                                         ; $4be6: $e6 $e4
	add  a                                           ; $4be8: $87
	and  $03                                         ; $4be9: $e6 $03
	ld   h, [hl]                                     ; $4beb: $66
	and  $bd                                         ; $4bec: $e6 $bd
	and  e                                           ; $4bee: $a3
	add  b                                           ; $4bef: $80
	ld   d, e                                        ; $4bf0: $53
	add  b                                           ; $4bf1: $80
	add  e                                           ; $4bf2: $83
	add  d                                           ; $4bf3: $82
	inc  bc                                          ; $4bf4: $03

jr_093_4bf5:
	add  d                                           ; $4bf5: $82
	nop                                              ; $4bf6: $00
	ld   [bc], a                                     ; $4bf7: $02
	ld   [$bff4], sp                                 ; $4bf8: $08 $f4 $bf
	adc  l                                           ; $4bfb: $8d
	add  b                                           ; $4bfc: $80
	nop                                              ; $4bfd: $00
	inc  a                                           ; $4bfe: $3c
	add  e                                           ; $4bff: $83
	inc  bc                                          ; $4c00: $03
	add  b                                           ; $4c01: $80
	ldh  a, [$09]                                    ; $4c02: $f0 $09
	add  e                                           ; $4c04: $83
	di                                               ; $4c05: $f3
	inc  a                                           ; $4c06: $3c
	db   $fc                                         ; $4c07: $fc
	db   $10                                         ; $4c08: $10
	ld   a, a                                        ; $4c09: $7f
	adc  a                                           ; $4c0a: $8f
	cp   a                                           ; $4c0b: $bf
	sub  b                                           ; $4c0c: $90
	add  c                                           ; $4c0d: $81
	add  b                                           ; $4c0e: $80
	add  b                                           ; $4c0f: $80
	ld   [$80c1], sp                                 ; $4c10: $08 $c1 $80
	or   b                                           ; $4c13: $b0
	ld   b, b                                        ; $4c14: $40
	ld   c, h                                        ; $4c15: $4c
	ldh  [$e2], a                                    ; $4c16: $e0 $e2
	ld   a, b                                        ; $4c18: $78
	ld   a, c                                        ; $4c19: $79
	add  b                                           ; $4c1a: $80
	cp   $02                                         ; $4c1b: $fe $02
	rst  $38                                         ; $4c1d: $ff
	ld   a, a                                        ; $4c1e: $7f
	add  b                                           ; $4c1f: $80
	add  b                                           ; $4c20: $80
	ld   h, b                                        ; $4c21: $60
	inc  c                                           ; $4c22: $0c
	sbc  b                                           ; $4c23: $98
	jr   jr_093_4c8d                                 ; $4c24: $18 $67

	rlca                                             ; $4c26: $07
	ld   [de], a                                     ; $4c27: $12
	inc  bc                                          ; $4c28: $03
	dec  c                                           ; $4c29: $0d
	nop                                              ; $4c2a: $00
	add  e                                           ; $4c2b: $83

jr_093_4c2c:
	nop                                              ; $4c2c: $00
	ld   h, b                                        ; $4c2d: $60
	nop                                              ; $4c2e: $00
	and  b                                           ; $4c2f: $a0
	add  l                                           ; $4c30: $85
	add  b                                           ; $4c31: $80
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	add  c                                           ; $4c34: $81
	add  b                                           ; $4c35: $80
	dec  b                                           ; $4c36: $05
	nop                                              ; $4c37: $00
	add  b                                           ; $4c38: $80
	ret  nz                                          ; $4c39: $c0

	nop                                              ; $4c3a: $00
	ld   hl, sp-$68                                  ; $4c3b: $f8 $98
	add  b                                           ; $4c3d: $80
	db   $10                                         ; $4c3e: $10
	add  b                                           ; $4c3f: $80
	adc  b                                           ; $4c40: $88
	add  b                                           ; $4c41: $80
	db   $10                                         ; $4c42: $10
	add  b                                           ; $4c43: $80
	add  b                                           ; $4c44: $80
	add  b                                           ; $4c45: $80
	db   $10                                         ; $4c46: $10
	add  b                                           ; $4c47: $80
	add  b                                           ; $4c48: $80
	add  b                                           ; $4c49: $80
	nop                                              ; $4c4a: $00
	ld   de, $d807                                   ; $4c4b: $11 $07 $d8
	sbc  b                                           ; $4c4e: $98
	ret  c                                           ; $4c4f: $d8

	sbc  b                                           ; $4c50: $98
	ret  c                                           ; $4c51: $d8

	jr   jr_093_4c2c                                 ; $4c52: $18 $d8

	db   $10                                         ; $4c54: $10
	ret  c                                           ; $4c55: $d8

	nop                                              ; $4c56: $00
	ret  c                                           ; $4c57: $d8

	nop                                              ; $4c58: $00
	ret  c                                           ; $4c59: $d8

	ld   b, b                                        ; $4c5a: $40
	ret  c                                           ; $4c5b: $d8

	cpl                                              ; $4c5c: $2f
	inc  bc                                          ; $4c5d: $03
	add  h                                           ; $4c5e: $84
	rst  $38                                         ; $4c5f: $ff
	add  b                                           ; $4c60: $80
	xor  a                                           ; $4c61: $af
	add  b                                           ; $4c62: $80
	rst  $10                                         ; $4c63: $d7
	add  b                                           ; $4c64: $80
	xor  e                                           ; $4c65: $ab
	add  b                                           ; $4c66: $80
	rst  $10                                         ; $4c67: $d7
	ld   bc, $8a49                                   ; $4c68: $01 $49 $8a
	add  b                                           ; $4c6b: $80
	sub  l                                           ; $4c6c: $95
	add  b                                           ; $4c6d: $80
	adc  d                                           ; $4c6e: $8a
	add  b                                           ; $4c6f: $80
	add  l                                           ; $4c70: $85
	add  b                                           ; $4c71: $80
	add  d                                           ; $4c72: $82
	add  b                                           ; $4c73: $80
	add  l                                           ; $4c74: $85
	add  b                                           ; $4c75: $80
	add  d                                           ; $4c76: $82
	add  b                                           ; $4c77: $80
	add  c                                           ; $4c78: $81
	nop                                              ; $4c79: $00
	and  b                                           ; $4c7a: $a0
	adc  l                                           ; $4c7b: $8d
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	and  b                                           ; $4c7e: $a0
	adc  l                                           ; $4c7f: $8d
	ld   b, b                                        ; $4c80: $40
	ld   bc, $9310                                   ; $4c81: $01 $10 $93
	add  b                                           ; $4c84: $80
	jp   Jump_093_6780                               ; $4c85: $c3 $80 $67


	add  b                                           ; $4c88: $80
	inc  sp                                          ; $4c89: $33
	add  b                                           ; $4c8a: $80
	sbc  e                                           ; $4c8b: $9b
	inc  b                                           ; $4c8c: $04

jr_093_4c8d:
	ld   c, l                                        ; $4c8d: $4d
	ld   c, a                                        ; $4c8e: $4f
	and  h                                           ; $4c8f: $a4
	and  a                                           ; $4c90: $a7
	ld   b, d                                        ; $4c91: $42
	add  b                                           ; $4c92: $80
	ld   b, e                                        ; $4c93: $43
	adc  l                                           ; $4c94: $8d
	add  b                                           ; $4c95: $80
	ld   bc, $fa05                                   ; $4c96: $01 $05 $fa
	add  b                                           ; $4c99: $80
	push af                                          ; $4c9a: $f5
	nop                                              ; $4c9b: $00
	ret  nz                                          ; $4c9c: $c0

	add  c                                           ; $4c9d: $81
	nop                                              ; $4c9e: $00
	ld   bc, $0080                                   ; $4c9f: $01 $80 $00
	add  c                                           ; $4ca2: $81
	inc  bc                                          ; $4ca3: $03
	nop                                              ; $4ca4: $00
	add  e                                           ; $4ca5: $83
	add  b                                           ; $4ca6: $80
	inc  bc                                          ; $4ca7: $03
	inc  b                                           ; $4ca8: $04
	rst  $38                                         ; $4ca9: $ff
	ld   bc, $4181                                   ; $4caa: $01 $81 $41
	ld   hl, $0181                                   ; $4cad: $21 $81 $01

jr_093_4cb0:
	ld   [bc], a                                     ; $4cb0: $02
	pop  hl                                          ; $4cb1: $e1
	add  c                                           ; $4cb2: $81
	ld   bc, $8183                                   ; $4cb3: $01 $83 $81
	ld   bc, $e816                                   ; $4cb6: $01 $16 $e8
	add  b                                           ; $4cb9: $80
	call nc, $0082                                   ; $4cba: $d4 $82 $00
	nop                                              ; $4cbd: $00
	db   $fc                                         ; $4cbe: $fc
	add  d                                           ; $4cbf: $82
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	db   $fc                                         ; $4cc2: $fc
	add  b                                           ; $4cc3: $80
	nop                                              ; $4cc4: $00
	nop                                              ; $4cc5: $00
	cp   a                                           ; $4cc6: $bf
	adc  l                                           ; $4cc7: $8d
	add  b                                           ; $4cc8: $80
	ld   bc, $5f97                                   ; $4cc9: $01 $97 $5f
	add  b                                           ; $4ccc: $80
	xor  a                                           ; $4ccd: $af
	inc  bc                                          ; $4cce: $03
	ld   d, e                                        ; $4ccf: $53
	ld   d, a                                        ; $4cd0: $57
	rla                                              ; $4cd1: $17
	rst  $20                                         ; $4cd2: $e7
	add  b                                           ; $4cd3: $80
	dec  de                                          ; $4cd4: $1b
	ld   [bc], a                                     ; $4cd5: $02
	ld   [bc], a                                     ; $4cd6: $02
	db   $fd                                         ; $4cd7: $fd
	db   $fc                                         ; $4cd8: $fc
	sub  c                                           ; $4cd9: $91
	rst  $38                                         ; $4cda: $ff
	inc  b                                           ; $4cdb: $04
	ld   hl, sp-$40                                  ; $4cdc: $f8 $c0
	call nz, $e3e0                                   ; $4cde: $c4 $e0 $e3
	add  b                                           ; $4ce1: $80
	ld   hl, sp-$80                                  ; $4ce2: $f8 $80
	cp   $85                                         ; $4ce4: $fe $85
	rst  $38                                         ; $4ce6: $ff
	add  h                                           ; $4ce7: $84
	nop                                              ; $4ce8: $00
	dec  bc                                          ; $4ce9: $0b
	ret  nz                                          ; $4cea: $c0

	nop                                              ; $4ceb: $00
	jr   nz, jr_093_4cee                             ; $4cec: $20 $00

jr_093_4cee:
	jr   jr_093_4cb0                                 ; $4cee: $18 $c0

	add  $f0                                         ; $4cf0: $c6 $f0
	pop  af                                          ; $4cf2: $f1
	ld   hl, sp-$53                                  ; $4cf3: $f8 $ad
	xor  d                                           ; $4cf5: $aa
	add  b                                           ; $4cf6: $80
	ld   d, l                                        ; $4cf7: $55
	add  b                                           ; $4cf8: $80

jr_093_4cf9:
	xor  d                                           ; $4cf9: $aa
	add  b                                           ; $4cfa: $80
	ld   d, l                                        ; $4cfb: $55
	add  b                                           ; $4cfc: $80

jr_093_4cfd:
	xor  d                                           ; $4cfd: $aa
	add  b                                           ; $4cfe: $80
	ld   d, c                                        ; $4cff: $51
	add  b                                           ; $4d00: $80
	and  b                                           ; $4d01: $a0
	add  b                                           ; $4d02: $80

jr_093_4d03:
	ld   b, b                                        ; $4d03: $40
	nop                                              ; $4d04: $00
	sub  h                                           ; $4d05: $94
	adc  l                                           ; $4d06: $8d
	ld   a, e                                        ; $4d07: $7b
	nop                                              ; $4d08: $00
	push bc                                          ; $4d09: $c5
	adc  l                                           ; $4d0a: $8d
	rst  JumpTable                                         ; $4d0b: $df
	ld   bc, $9c9a                                   ; $4d0c: $01 $9a $9c
	add  b                                           ; $4d0f: $80
	sbc  b                                           ; $4d10: $98
	add  b                                           ; $4d11: $80
	sbc  h                                           ; $4d12: $9c
	add  b                                           ; $4d13: $80
	sbc  b                                           ; $4d14: $98
	add  b                                           ; $4d15: $80
	sbc  h                                           ; $4d16: $9c
	add  b                                           ; $4d17: $80
	sbc  b                                           ; $4d18: $98
	add  b                                           ; $4d19: $80
	sbc  h                                           ; $4d1a: $9c
	add  b                                           ; $4d1b: $80
	sbc  b                                           ; $4d1c: $98
	ld   bc, $aa59                                   ; $4d1d: $01 $59 $aa
	add  b                                           ; $4d20: $80
	ld   d, h                                        ; $4d21: $54
	add  b                                           ; $4d22: $80
	xor  b                                           ; $4d23: $a8
	add  b                                           ; $4d24: $80
	ld   d, b                                        ; $4d25: $50
	add  b                                           ; $4d26: $80
	and  b                                           ; $4d27: $a0
	add  b                                           ; $4d28: $80
	ld   b, b                                        ; $4d29: $40
	add  b                                           ; $4d2a: $80
	and  b                                           ; $4d2b: $a0
	add  b                                           ; $4d2c: $80
	ld   b, b                                        ; $4d2d: $40
	add  c                                           ; $4d2e: $81
	cp   [hl]                                        ; $4d2f: $be
	ld   [$a6bf], sp                                 ; $4d30: $08 $bf $a6
	and  l                                           ; $4d33: $a5
	cp   l                                           ; $4d34: $bd
	cp   c                                           ; $4d35: $b9
	or   d                                           ; $4d36: $b2
	cp   e                                           ; $4d37: $bb
	sub  a                                           ; $4d38: $97
	and  a                                           ; $4d39: $a7
	add  d                                           ; $4d3a: $82
	cp   a                                           ; $4d3b: $bf
	rlca                                             ; $4d3c: $07
	add  l                                           ; $4d3d: $85
	cp   d                                           ; $4d3e: $ba
	sbc  d                                           ; $4d3f: $9a
	ld   a, [$ba2a]                                  ; $4d40: $fa $2a $ba
	and  d                                           ; $4d43: $a2
	xor  d                                           ; $4d44: $aa
	add  b                                           ; $4d45: $80
	add  d                                           ; $4d46: $82
	add  b                                           ; $4d47: $80
	ld   [bc], a                                     ; $4d48: $02
	add  d                                           ; $4d49: $82
	ld   a, [$f601]                                  ; $4d4a: $fa $01 $f6
	add  hl, bc                                      ; $4d4d: $09
	add  b                                           ; $4d4e: $80
	ld   [$0980], sp                                 ; $4d4f: $08 $80 $09
	add  b                                           ; $4d52: $80
	ld   [$0986], sp                                 ; $4d53: $08 $86 $09
	ld   bc, $2ed6                                   ; $4d56: $01 $d6 $2e
	add  b                                           ; $4d59: $80
	ld   c, h                                        ; $4d5a: $4c
	add  b                                           ; $4d5b: $80
	ld   e, h                                        ; $4d5c: $5c
	add  b                                           ; $4d5d: $80
	ld   e, l                                        ; $4d5e: $5d
	add  b                                           ; $4d5f: $80
	sbc  c                                           ; $4d60: $99
	add  b                                           ; $4d61: $80
	cp   c                                           ; $4d62: $b9
	add  b                                           ; $4d63: $80
	inc  sp                                          ; $4d64: $33
	add  b                                           ; $4d65: $80
	ld   [hl-], a                                    ; $4d66: $32
	nop                                              ; $4d67: $00
	cp   a                                           ; $4d68: $bf
	add  b                                           ; $4d69: $80
	cp   b                                           ; $4d6a: $b8
	add  e                                           ; $4d6b: $83
	or   b                                           ; $4d6c: $b0
	ld   bc, $6070                                   ; $4d6d: $01 $70 $60
	add  e                                           ; $4d70: $83
	ldh  [rSC], a                                    ; $4d71: $e0 $02
	ret  nz                                          ; $4d73: $c0

	ldh  a, [rP1]                                    ; $4d74: $f0 $00
	add  b                                           ; $4d76: $80
	jr   nz, jr_093_4cf9                             ; $4d77: $20 $80

	db   $10                                         ; $4d79: $10
	add  b                                           ; $4d7a: $80
	jr   nz, jr_093_4cfd                             ; $4d7b: $20 $80

	db   $10                                         ; $4d7d: $10
	add  b                                           ; $4d7e: $80
	jr   nz, jr_093_4d03                             ; $4d7f: $20 $82

	jr   nc, jr_093_4d85                             ; $4d81: $30 $02

Call_093_4d83:
	inc  hl                                          ; $4d83: $23
	ld   l, h                                        ; $4d84: $6c

jr_093_4d85:
	ld   a, [hl]                                     ; $4d85: $7e
	add  c                                           ; $4d86: $81
	ld   a, $80                                      ; $4d87: $3e $80
	ld   [hl], $01                                   ; $4d89: $36 $01
	scf                                              ; $4d8b: $37
	rla                                              ; $4d8c: $17
	add  d                                           ; $4d8d: $82
	dec  de                                          ; $4d8e: $1b
	inc  bc                                          ; $4d8f: $03
	dec  e                                           ; $4d90: $1d
	dec  c                                           ; $4d91: $0d
	ld   d, h                                        ; $4d92: $54
	and  h                                           ; $4d93: $a4
	add  b                                           ; $4d94: $80
	or   h                                           ; $4d95: $b4
	add  d                                           ; $4d96: $82
	jp   nc, $e880                                   ; $4d97: $d2 $80 $e8

	add  b                                           ; $4d9a: $80
	inc  h                                           ; $4d9b: $24
	add  b                                           ; $4d9c: $80
	or   h                                           ; $4d9d: $b4
	add  b                                           ; $4d9e: $80
	or   b                                           ; $4d9f: $b0
	nop                                              ; $4da0: $00
	ccf                                              ; $4da1: $3f
	adc  l                                           ; $4da2: $8d
	ld   b, b                                        ; $4da3: $40
	nop                                              ; $4da4: $00
	adc  a                                           ; $4da5: $8f
	add  e                                           ; $4da6: $83
	ld   [$0986], sp                                 ; $4da7: $08 $86 $09
	add  b                                           ; $4daa: $80
	ld   [$2d01], sp                                 ; $4dab: $08 $01 $2d
	ld   a, [hl+]                                    ; $4dae: $2a
	add  b                                           ; $4daf: $80
	dec  d                                           ; $4db0: $15
	add  b                                           ; $4db1: $80
	ld   a, [bc]                                     ; $4db2: $0a
	add  b                                           ; $4db3: $80
	dec  b                                           ; $4db4: $05
	add  b                                           ; $4db5: $80
	ld   [bc], a                                     ; $4db6: $02
	add  b                                           ; $4db7: $80
	dec  b                                           ; $4db8: $05
	add  b                                           ; $4db9: $80
	ld   [bc], a                                     ; $4dba: $02
	add  b                                           ; $4dbb: $80
	ld   bc, $8080                                   ; $4dbc: $01 $80 $80
	add  b                                           ; $4dbf: $80
	ld   b, b                                        ; $4dc0: $40
	add  b                                           ; $4dc1: $80
	add  b                                           ; $4dc2: $80
	adc  b                                           ; $4dc3: $88
	nop                                              ; $4dc4: $00
	nop                                              ; $4dc5: $00
	sub  h                                           ; $4dc6: $94
	adc  l                                           ; $4dc7: $8d
	ld   a, e                                        ; $4dc8: $7b
	ld   bc, $d5c5                                   ; $4dc9: $01 $c5 $d5
	add  h                                           ; $4dcc: $84
	jp   c, $d581                                    ; $4dcd: $da $81 $d5

	add  e                                           ; $4dd0: $83
	rst  JumpTable                                         ; $4dd1: $df
	ld   bc, $9c9a                                   ; $4dd2: $01 $9a $9c
	add  b                                           ; $4dd5: $80
	sbc  b                                           ; $4dd6: $98
	add  b                                           ; $4dd7: $80
	sbc  h                                           ; $4dd8: $9c
	add  b                                           ; $4dd9: $80
	sbc  b                                           ; $4dda: $98
	add  b                                           ; $4ddb: $80
	sbc  h                                           ; $4ddc: $9c
	add  b                                           ; $4ddd: $80
	sbc  b                                           ; $4dde: $98
	add  b                                           ; $4ddf: $80
	sbc  h                                           ; $4de0: $9c
	add  b                                           ; $4de1: $80
	sbc  b                                           ; $4de2: $98
	ld   bc, $8073                                   ; $4de3: $01 $73 $80
	add  b                                           ; $4de6: $80
	ld   b, b                                        ; $4de7: $40
	add  b                                           ; $4de8: $80
	add  b                                           ; $4de9: $80
	adc  b                                           ; $4dea: $88
	nop                                              ; $4deb: $00
	add  b                                           ; $4dec: $80
	add  b                                           ; $4ded: $80
	add  b                                           ; $4dee: $80
	sbc  a                                           ; $4def: $9f
	dec  bc                                          ; $4df0: $0b
	xor  d                                           ; $4df1: $aa
	add  b                                           ; $4df2: $80
	adc  c                                           ; $4df3: $89
	and  e                                           ; $4df4: $a3
	xor  d                                           ; $4df5: $aa
	add  b                                           ; $4df6: $80
	sub  a                                           ; $4df7: $97
	cp   l                                           ; $4df8: $bd
	xor  d                                           ; $4df9: $aa
	add  b                                           ; $4dfa: $80
	sbc  l                                           ; $4dfb: $9d
	or   a                                           ; $4dfc: $b7
	add  b                                           ; $4dfd: $80
	ld   [bc], a                                     ; $4dfe: $02
	add  c                                           ; $4dff: $81
	xor  d                                           ; $4e00: $aa
	dec  bc                                          ; $4e01: $0b
	ld   [bc], a                                     ; $4e02: $02
	ld   d, d                                        ; $4e03: $52
	ld   a, [$02aa]                                  ; $4e04: $fa $aa $02
	ld   c, d                                        ; $4e07: $4a
	ldh  [c], a                                      ; $4e08: $e2
	xor  d                                           ; $4e09: $aa
	ld   [bc], a                                     ; $4e0a: $02
	ldh  a, [c]                                      ; $4e0b: $f2
	ld   e, d                                        ; $4e0c: $5a
	rrca                                             ; $4e0d: $0f
	add  l                                           ; $4e0e: $85
	ld   [$0982], sp                                 ; $4e0f: $08 $82 $09
	add  d                                           ; $4e12: $82
	ld   [$9e01], sp                                 ; $4e13: $08 $01 $9e
	ld   h, [hl]                                     ; $4e16: $66
	add  b                                           ; $4e17: $80
	ld   l, l                                        ; $4e18: $6d
	add  b                                           ; $4e19: $80
	call $9b80                                       ; $4e1a: $cd $80 $9b
	ld   [$b6b7], sp                                 ; $4e1d: $08 $b7 $b6
	ld   l, l                                        ; $4e20: $6d
	ld   l, h                                        ; $4e21: $6c
	ld   e, a                                        ; $4e22: $5f
	ld   e, b                                        ; $4e23: $58
	jr   c, jr_093_4e56                              ; $4e24: $38 $30

	or   b                                           ; $4e26: $b0
	add  c                                           ; $4e27: $81
	add  b                                           ; $4e28: $80
	add  b                                           ; $4e29: $80
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	add  b                                           ; $4e2c: $80
	add  c                                           ; $4e2d: $81
	nop                                              ; $4e2e: $00
	ld   [bc], a                                     ; $4e2f: $02
	cp   a                                           ; $4e30: $bf
	nop                                              ; $4e31: $00
	cp   a                                           ; $4e32: $bf
	add  c                                           ; $4e33: $81
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	ld   [hl], b                                     ; $4e36: $70
	add  l                                           ; $4e37: $85
	nop                                              ; $4e38: $00
	add  b                                           ; $4e39: $80
	jr   nc, @+$04                                   ; $4e3a: $30 $02

	rst  $38                                         ; $4e3c: $ff
	jr   nc, @+$01                                   ; $4e3d: $30 $ff

	add  c                                           ; $4e3f: $81
	jr   nc, jr_093_4e43                             ; $4e40: $30 $01

	ld   [hl-], a                                    ; $4e42: $32

jr_093_4e43:
	dec  c                                           ; $4e43: $0d
	add  b                                           ; $4e44: $80
	ld   c, $81                                      ; $4e45: $0e $81
	ld   b, $05                                      ; $4e47: $06 $05
	ld   [bc], a                                     ; $4e49: $02
	inc  bc                                          ; $4e4a: $03
	ld   bc, $00f6                                   ; $4e4b: $01 $f6 $00
	rst  $30                                         ; $4e4e: $f7
	add  c                                           ; $4e4f: $81
	nop                                              ; $4e50: $00
	ld   bc, $986f                                   ; $4e51: $01 $6f $98
	add  b                                           ; $4e54: $80
	ret  c                                           ; $4e55: $d8

jr_093_4e56:
	add  b                                           ; $4e56: $80

jr_093_4e57:
	call z, $6c80                                    ; $4e57: $cc $80 $6c
	add  b                                           ; $4e5a: $80
	ld   h, $80                                      ; $4e5b: $26 $80
	sub  b                                           ; $4e5d: $90
	rlca                                             ; $4e5e: $07
	ret  z                                           ; $4e5f: $c8

	ld   c, b                                        ; $4e60: $48
	ld   h, b                                        ; $4e61: $60
	jr   nz, jr_093_4e76                             ; $4e62: $20 $12

	jp   c, $d9c9                                    ; $4e64: $da $c9 $d9

	add  b                                           ; $4e67: $80
	jp   c, $9901                                    ; $4e68: $da $01 $99

	reti                                             ; $4e6b: $d9


	add  b                                           ; $4e6c: $80
	jp   c, $5901                                    ; $4e6d: $da $01 $59

jr_093_4e70:
	reti                                             ; $4e70: $d9


	add  b                                           ; $4e71: $80
	jp   c, $d980                                    ; $4e72: $da $80 $d9

	dec  bc                                          ; $4e75: $0b

jr_093_4e76:
	sbc  h                                           ; $4e76: $9c
	ld   h, h                                        ; $4e77: $64
	ld   a, [hl+]                                    ; $4e78: $2a
	ld   l, d                                        ; $4e79: $6a
	inc  h                                           ; $4e7a: $24
	ld   h, h                                        ; $4e7b: $64
	ld   a, [hl+]                                    ; $4e7c: $2a
	ld   l, d                                        ; $4e7d: $6a
	ld   h, $66                                      ; $4e7e: $26 $66
	ld   l, $6e                                      ; $4e80: $2e $6e
	add  b                                           ; $4e82: $80
	ld   h, [hl]                                     ; $4e83: $66
	add  b                                           ; $4e84: $80
	ld   l, [hl]                                     ; $4e85: $6e
	ld   bc, $009f                                   ; $4e86: $01 $9f $00
	add  b                                           ; $4e89: $80
	ld   bc, $009a                                   ; $4e8a: $01 $9a $00
	nop                                              ; $4e8d: $00
	sub  h                                           ; $4e8e: $94
	adc  l                                           ; $4e8f: $8d
	ld   a, e                                        ; $4e90: $7b
	nop                                              ; $4e91: $00
	push bc                                          ; $4e92: $c5
	adc  l                                           ; $4e93: $8d
	rst  JumpTable                                         ; $4e94: $df
	nop                                              ; $4e95: $00
	sbc  [hl]                                        ; $4e96: $9e
	adc  l                                           ; $4e97: $8d
	sbc  b                                           ; $4e98: $98
	nop                                              ; $4e99: $00
	ld   b, $8d                                      ; $4e9a: $06 $8d
	xor  $02                                         ; $4e9c: $ee $02
	sbc  e                                           ; $4e9e: $9b
	add  b                                           ; $4e9f: $80
	nop                                              ; $4ea0: $00
	add  b                                           ; $4ea1: $80
	rst  $38                                         ; $4ea2: $ff
	adc  c                                           ; $4ea3: $89
	nop                                              ; $4ea4: $00
	add  b                                           ; $4ea5: $80
	ld   [bc], a                                     ; $4ea6: $02
	nop                                              ; $4ea7: $00
	nop                                              ; $4ea8: $00
	add  b                                           ; $4ea9: $80
	cp   $89                                         ; $4eaa: $fe $89
	nop                                              ; $4eac: $00
	ld   bc, $090e                                   ; $4ead: $01 $0e $09
	adc  b                                           ; $4eb0: $88
	ld   [FarMemCopy16C], sp                                 ; $4eb1: $08 $82 $0a
	ld   bc, $c027                                   ; $4eb4: $01 $27 $c0
	add  b                                           ; $4eb7: $80
	ld   h, b                                        ; $4eb8: $60
	add  d                                           ; $4eb9: $82
	nop                                              ; $4eba: $00
	ld   bc, $7060                                   ; $4ebb: $01 $60 $70
	add  b                                           ; $4ebe: $80
	or   b                                           ; $4ebf: $b0
	ld   bc, $b3bc                                   ; $4ec0: $01 $bc $b3
	add  b                                           ; $4ec3: $80
	or   b                                           ; $4ec4: $b0
	nop                                              ; $4ec5: $00
	cp   a                                           ; $4ec6: $bf
	adc  c                                           ; $4ec7: $89
	nop                                              ; $4ec8: $00
	ld   bc, $3f80                                   ; $4ec9: $01 $80 $3f
	add  b                                           ; $4ecc: $80
	nop                                              ; $4ecd: $00
	nop                                              ; $4ece: $00
	rst  $38                                         ; $4ecf: $ff
	add  c                                           ; $4ed0: $81
	jr   nc, @-$7e                                   ; $4ed1: $30 $80

	db   $10                                         ; $4ed3: $10
	add  b                                           ; $4ed4: $80
	jr   nz, jr_093_4e57                             ; $4ed5: $20 $80

	db   $10                                         ; $4ed7: $10
	add  b                                           ; $4ed8: $80
	nop                                              ; $4ed9: $00
	ld   bc, $ff30                                   ; $4eda: $01 $30 $ff
	add  b                                           ; $4edd: $80
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	rst  $30                                         ; $4ee0: $f7
	adc  c                                           ; $4ee1: $89
	nop                                              ; $4ee2: $00
	ld   bc, $f403                                   ; $4ee3: $01 $03 $f4
	add  b                                           ; $4ee6: $80
	nop                                              ; $4ee7: $00
	ld   bc, $0cec                                   ; $4ee8: $01 $ec $0c
	add  b                                           ; $4eeb: $80
	jr   jr_093_4e70                                 ; $4eec: $18 $82

	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	inc  d                                           ; $4ef0: $14
	add  c                                           ; $4ef1: $81
	inc  [hl]                                        ; $4ef2: $34
	ld   bc, $34f4                                   ; $4ef3: $01 $f4 $34
	add  b                                           ; $4ef6: $80
	inc  l                                           ; $4ef7: $2c
	ld   [$e684], sp                                 ; $4ef8: $08 $84 $e6
	ld   h, [hl]                                     ; $4efb: $66
	and  $66                                         ; $4efc: $e6 $66
	and  $66                                         ; $4efe: $e6 $66
	and  $e2                                         ; $4f00: $e6 $e2
	add  l                                           ; $4f02: $85
	and  $04                                         ; $4f03: $e6 $04
	or   $d8                                         ; $4f05: $f6 $d8
	ret  nz                                          ; $4f07: $c0

	ret  c                                           ; $4f08: $d8

	ret  nc                                          ; $4f09: $d0

	adc  c                                           ; $4f0a: $89
	ret  c                                           ; $4f0b: $d8

	add  b                                           ; $4f0c: $80
	jp   c, $d980                                    ; $4f0d: $da $80 $d9

	add  b                                           ; $4f10: $80
	jp   c, $d980                                    ; $4f11: $da $80 $d9

	add  b                                           ; $4f14: $80
	jp   c, $d980                                    ; $4f15: $da $80 $d9

	add  b                                           ; $4f18: $80
	jp   c, $d980                                    ; $4f19: $da $80 $d9

	nop                                              ; $4f1c: $00
	sub  $85                                         ; $4f1d: $d6 $85
	ld   l, [hl]                                     ; $4f1f: $6e
	nop                                              ; $4f20: $00
	ld   h, [hl]                                     ; $4f21: $66
	add  l                                           ; $4f22: $85
	ld   l, [hl]                                     ; $4f23: $6e
	nop                                              ; $4f24: $00
	inc  bc                                          ; $4f25: $03
	add  e                                           ; $4f26: $83
	ld   a, e                                        ; $4f27: $7b
	ld   h, $78                                      ; $4f28: $26 $78
	ld   a, e                                        ; $4f2a: $7b
	ld   a, b                                        ; $4f2b: $78
	ld   a, e                                        ; $4f2c: $7b
	ld   a, [hl]                                     ; $4f2d: $7e
	ld   a, a                                        ; $4f2e: $7f
	ld   [hl], b                                     ; $4f2f: $70
	ld   a, a                                        ; $4f30: $7f
	ld   [hl], c                                     ; $4f31: $71
	ld   a, a                                        ; $4f32: $7f
	call nz, $dedf                                   ; $4f33: $c4 $df $de
	rst  JumpTable                                         ; $4f36: $df
	rra                                              ; $4f37: $1f
	rst  $38                                         ; $4f38: $ff
	ld   a, [de]                                     ; $4f39: $1a
	rst  $38                                         ; $4f3a: $ff
	ret  z                                           ; $4f3b: $c8

	rst  $38                                         ; $4f3c: $ff
	ld   b, $fe                                      ; $4f3d: $06 $fe
	ld   sp, $8ef0                                   ; $4f3f: $31 $f0 $8e
	add  b                                           ; $4f42: $80

jr_093_4f43:
	dec  de                                          ; $4f43: $1b
	sbc  b                                           ; $4f44: $98
	ld   e, b                                        ; $4f45: $58
	ret  c                                           ; $4f46: $d8

	jr   @-$06                                       ; $4f47: $18 $f8

	jr   jr_093_4f43                                 ; $4f49: $18 $f8

	ret  nz                                          ; $4f4b: $c0

	ret  z                                           ; $4f4c: $c8

	jr   c, jr_093_4f4f                              ; $4f4d: $38 $00

jr_093_4f4f:
	ret  nz                                          ; $4f4f: $c0

	add  c                                           ; $4f50: $81
	nop                                              ; $4f51: $00
	nop                                              ; $4f52: $00
	or   $8d                                         ; $4f53: $f6 $8d
	xor  $00                                         ; $4f55: $ee $00
	db   $e4                                         ; $4f57: $e4
	adc  [hl]                                        ; $4f58: $8e
	and  $8d                                         ; $4f59: $e6 $8d
	ret  c                                           ; $4f5b: $d8

	ld   bc, $0a2a                                   ; $4f5c: $01 $2a $0a
	adc  h                                           ; $4f5f: $8c
	dec  bc                                          ; $4f60: $0b
	ld   bc, $b74f                                   ; $4f61: $01 $4f $b7
	add  b                                           ; $4f64: $80
	or   b                                           ; $4f65: $b0
	ld   bc, $9390                                   ; $4f66: $01 $90 $93
	add  b                                           ; $4f69: $80
	sbc  e                                           ; $4f6a: $9b
	add  b                                           ; $4f6b: $80
	sbc  d                                           ; $4f6c: $9a
	add  h                                           ; $4f6d: $84
	sbc  [hl]                                        ; $4f6e: $9e
	ld   bc, $fffc                                   ; $4f6f: $01 $fc $ff
	add  c                                           ; $4f72: $81
	nop                                              ; $4f73: $00
	nop                                              ; $4f74: $00
	rst  $38                                         ; $4f75: $ff
	add  b                                           ; $4f76: $80
	ld   d, l                                        ; $4f77: $55
	add  b                                           ; $4f78: $80
	xor  d                                           ; $4f79: $aa
	add  l                                           ; $4f7a: $85
	nop                                              ; $4f7b: $00
	nop                                              ; $4f7c: $00
	rst  $38                                         ; $4f7d: $ff
	add  c                                           ; $4f7e: $81
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	rst  $38                                         ; $4f81: $ff
	add  b                                           ; $4f82: $80
	ld   d, l                                        ; $4f83: $55
	add  b                                           ; $4f84: $80
	xor  d                                           ; $4f85: $aa
	add  l                                           ; $4f86: $85
	nop                                              ; $4f87: $00
	nop                                              ; $4f88: $00
	rst  $38                                         ; $4f89: $ff
	add  c                                           ; $4f8a: $81
	nop                                              ; $4f8b: $00
	nop                                              ; $4f8c: $00
	rst  $38                                         ; $4f8d: $ff
	add  b                                           ; $4f8e: $80
	ld   d, l                                        ; $4f8f: $55
	add  b                                           ; $4f90: $80
	xor  e                                           ; $4f91: $ab
	add  d                                           ; $4f92: $82
	inc  bc                                          ; $4f93: $03
	inc  bc                                          ; $4f94: $03
	add  hl, bc                                      ; $4f95: $09
	rlca                                             ; $4f96: $07
	sbc  c                                           ; $4f97: $99
	ld   l, b                                        ; $4f98: $68
	add  b                                           ; $4f99: $80
	ld   l, d                                        ; $4f9a: $6a
	add  b                                           ; $4f9b: $80
	jp   z, $c282                                    ; $4f9c: $ca $82 $c2

	add  b                                           ; $4f9f: $80
	ld   [bc], a                                     ; $4fa0: $02
	add  b                                           ; $4fa1: $80
	nop                                              ; $4fa2: $00
	add  b                                           ; $4fa3: $80
	db   $fd                                         ; $4fa4: $fd
	nop                                              ; $4fa5: $00
	ccf                                              ; $4fa6: $3f
	adc  e                                           ; $4fa7: $8b
	ld   b, b                                        ; $4fa8: $40
	ld   [bc], a                                     ; $4fa9: $02
	ld   a, d                                        ; $4faa: $7a
	dec  b                                           ; $4fab: $05
	rst  $38                                         ; $4fac: $ff
	adc  e                                           ; $4fad: $8b
	nop                                              ; $4fae: $00
	ld   [bc], a                                     ; $4faf: $02
	add  d                                           ; $4fb0: $82
	ld   a, a                                        ; $4fb1: $7f
	db   $fd                                         ; $4fb2: $fd
	adc  e                                           ; $4fb3: $8b
	nop                                              ; $4fb4: $00
	ld   [bc], a                                     ; $4fb5: $02
	xor  e                                           ; $4fb6: $ab
	rst  $38                                         ; $4fb7: $ff
	xor  l                                           ; $4fb8: $ad
	add  c                                           ; $4fb9: $81
	ld   l, [hl]                                     ; $4fba: $6e
	nop                                              ; $4fbb: $00
	ld   l, d                                        ; $4fbc: $6a
	adc  c                                           ; $4fbd: $89
	ld   l, [hl]                                     ; $4fbe: $6e
	ld   b, $10                                      ; $4fbf: $06 $10
	ld   a, h                                        ; $4fc1: $7c
	ld   h, e                                        ; $4fc2: $63
	ld   h, b                                        ; $4fc3: $60
	inc  e                                           ; $4fc4: $1c
	nop                                              ; $4fc5: $00
	ldh  [$87], a                                    ; $4fc6: $e0 $87
	nop                                              ; $4fc8: $00
	ld   [bc], a                                     ; $4fc9: $02
	add  b                                           ; $4fca: $80
	nop                                              ; $4fcb: $00
	add  b                                           ; $4fcc: $80
	add  l                                           ; $4fcd: $85
	nop                                              ; $4fce: $00
	add  b                                           ; $4fcf: $80
	inc  bc                                          ; $4fd0: $03
	add  b                                           ; $4fd1: $80
	inc  c                                           ; $4fd2: $0c
	add  b                                           ; $4fd3: $80
	stop                                             ; $4fd4: $10 $00
	inc  bc                                          ; $4fd6: $03
	add  e                                           ; $4fd7: $83
	nop                                              ; $4fd8: $00
	ld   bc, $3f3c                                   ; $4fd9: $01 $3c $3f
	add  b                                           ; $4fdc: $80
	ret  nz                                          ; $4fdd: $c0

	adc  d                                           ; $4fde: $8a
	nop                                              ; $4fdf: $00
	add  b                                           ; $4fe0: $80
	add  b                                           ; $4fe1: $80
	ld   [$7f6a], sp                                 ; $4fe2: $08 $6a $7f
	db   $10                                         ; $4fe5: $10
	rra                                              ; $4fe6: $1f
	ld   [$781f], sp                                 ; $4fe7: $08 $1f $78
	ld   a, a                                        ; $4fea: $7f
	ld   a, [bc]                                     ; $4feb: $0a
	add  l                                           ; $4fec: $85
	nop                                              ; $4fed: $00
	ld   [$ffab], sp                                 ; $4fee: $08 $ab $ff
	ld   bc, $05ff                                   ; $4ff1: $01 $ff $05
	rst  $38                                         ; $4ff4: $ff
	dec  b                                           ; $4ff5: $05
	rst  $38                                         ; $4ff6: $ff
	xor  d                                           ; $4ff7: $aa
	add  l                                           ; $4ff8: $85
	nop                                              ; $4ff9: $00
	add  b                                           ; $4ffa: $80
	add  b                                           ; $4ffb: $80
	ld   b, $e0                                      ; $4ffc: $06 $e0
	ld   hl, sp-$34                                  ; $4ffe: $f8 $cc
	ld   hl, sp+$4b                                  ; $5000: $f8 $4b
	ld   hl, sp-$6d                                  ; $5002: $f8 $93
	add  c                                           ; $5004: $81
	dec  bc                                          ; $5005: $0b
	add  b                                           ; $5006: $80
	add  hl, bc                                      ; $5007: $09
	add  [hl]                                        ; $5008: $86
	ld   [$f802], sp                                 ; $5009: $08 $02 $f8
	nop                                              ; $500c: $00
	sbc  l                                           ; $500d: $9d
	add  e                                           ; $500e: $83
	sbc  [hl]                                        ; $500f: $9e
	add  b                                           ; $5010: $80
	ld   a, [de]                                     ; $5011: $1a
	add  b                                           ; $5012: $80
	ld   [bc], a                                     ; $5013: $02
	add  b                                           ; $5014: $80
	inc  a                                           ; $5015: $3c
	inc  b                                           ; $5016: $04
	nop                                              ; $5017: $00
	inc  a                                           ; $5018: $3c
	ccf                                              ; $5019: $3f
	nop                                              ; $501a: $00
	rst  $38                                         ; $501b: $ff
	adc  e                                           ; $501c: $8b
	nop                                              ; $501d: $00
	ld   [bc], a                                     ; $501e: $02
	rst  $38                                         ; $501f: $ff
	nop                                              ; $5020: $00
	rst  $38                                         ; $5021: $ff
	adc  e                                           ; $5022: $8b
	nop                                              ; $5023: $00
	ld   b, $ff                                      ; $5024: $06 $ff
	nop                                              ; $5026: $00
	pop  af                                          ; $5027: $f1
	inc  bc                                          ; $5028: $03
	ld   [bc], a                                     ; $5029: $02
	ld   bc, $8709                                   ; $502a: $01 $09 $87
	nop                                              ; $502d: $00
	ld   b, $f8                                      ; $502e: $06 $f8
	nop                                              ; $5030: $00
	ld   e, [hl]                                     ; $5031: $5e
	cp   $8d                                         ; $5032: $fe $8d
	db   $fd                                         ; $5034: $fd
	ret  nc                                          ; $5035: $d0

	add  c                                           ; $5036: $81
	nop                                              ; $5037: $00
	add  b                                           ; $5038: $80
	jr   nz, jr_093_503c                             ; $5039: $20 $01

	rst  JumpTable                                         ; $503b: $df

jr_093_503c:
	rst  $38                                         ; $503c: $ff
	add  d                                           ; $503d: $82
	ldh  [rSB], a                                    ; $503e: $e0 $01
	ld   a, [hl+]                                    ; $5040: $2a
	ld   a, [bc]                                     ; $5041: $0a
	add  b                                           ; $5042: $80
	dec  b                                           ; $5043: $05
	add  d                                           ; $5044: $82
	nop                                              ; $5045: $00
	ld   bc, $407f                                   ; $5046: $01 $7f $40
	add  b                                           ; $5049: $80
	ret  nz                                          ; $504a: $c0

	ld   bc, $3f00                                   ; $504b: $01 $00 $3f
	add  b                                           ; $504e: $80
	nop                                              ; $504f: $00
	add  b                                           ; $5050: $80
	rst  $38                                         ; $5051: $ff
	add  b                                           ; $5052: $80
	ld   a, a                                        ; $5053: $7f
	add  d                                           ; $5054: $82
	nop                                              ; $5055: $00
	nop                                              ; $5056: $00
	rst  $38                                         ; $5057: $ff
	add  d                                           ; $5058: $82
	nop                                              ; $5059: $00
	nop                                              ; $505a: $00
	rst  $38                                         ; $505b: $ff
	add  b                                           ; $505c: $80
	nop                                              ; $505d: $00
	inc  b                                           ; $505e: $04
	xor  d                                           ; $505f: $aa
	rst  $38                                         ; $5060: $ff
	xor  b                                           ; $5061: $a8
	rst  $38                                         ; $5062: $ff

jr_093_5063:
	ld   [bc], a                                     ; $5063: $02
	add  c                                           ; $5064: $81
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	rst  $38                                         ; $5067: $ff
	add  d                                           ; $5068: $82
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	rst  $38                                         ; $506b: $ff
	add  c                                           ; $506c: $81
	nop                                              ; $506d: $00
	adc  e                                           ; $506e: $8b
	and  $02                                         ; $506f: $e6 $02
	push hl                                          ; $5071: $e5
	db   $e3                                         ; $5072: $e3
	rra                                              ; $5073: $1f
	add  l                                           ; $5074: $85
	nop                                              ; $5075: $00
	add  hl, bc                                      ; $5076: $09
	ld   [bc], a                                     ; $5077: $02
	inc  bc                                          ; $5078: $03
	inc  b                                           ; $5079: $04
	rrca                                             ; $507a: $0f

jr_093_507b:
	nop                                              ; $507b: $00
	dec  e                                           ; $507c: $1d
	ld   [bc], a                                     ; $507d: $02
	ld   a, [hl+]                                    ; $507e: $2a
	dec  b                                           ; $507f: $05
	ld   a, [hl-]                                    ; $5080: $3a
	add  b                                           ; $5081: $80
	dec  [hl]                                        ; $5082: $35
	rlca                                             ; $5083: $07
	ld   c, $3e                                      ; $5084: $0e $3e
	ld   l, c                                        ; $5086: $69
	rst  $20                                         ; $5087: $e7
	jr   nc, jr_093_507b                             ; $5088: $30 $f1

	ld   a, [hl]                                     ; $508a: $7e
	cp   $80                                         ; $508b: $fe $80
	ld   d, l                                        ; $508d: $55
	add  b                                           ; $508e: $80
	xor  d                                           ; $508f: $aa
	ld   bc, $0af5                                   ; $5090: $01 $f5 $0a
	add  b                                           ; $5093: $80
	ld   d, l                                        ; $5094: $55
	add  b                                           ; $5095: $80
	xor  a                                           ; $5096: $af
	rlca                                             ; $5097: $07
	ld   sp, hl                                      ; $5098: $f9
	cp   $00                                         ; $5099: $fe $00
	ld   sp, hl                                      ; $509b: $f9
	inc  bc                                          ; $509c: $03
	rlca                                             ; $509d: $07
	ld   d, b                                        ; $509e: $50
	ld   d, l                                        ; $509f: $55
	add  b                                           ; $50a0: $80
	xor  d                                           ; $50a1: $aa
	rlca                                             ; $50a2: $07
	dec  e                                           ; $50a3: $1d
	rst  $38                                         ; $50a4: $ff
	ret  c                                           ; $50a5: $d8

	rst  $38                                         ; $50a6: $ff
	jr   nc, @+$01                                   ; $50a7: $30 $ff

	jr   nz, jr_093_512a                             ; $50a9: $20 $7f

	add  d                                           ; $50ab: $82
	rst  $38                                         ; $50ac: $ff
	ld   bc, $5500                                   ; $50ad: $01 $00 $55
	add  b                                           ; $50b0: $80
	xor  d                                           ; $50b1: $aa
	ld   b, $50                                      ; $50b2: $06 $50
	rst  $38                                         ; $50b4: $ff
	dec  b                                           ; $50b5: $05
	rst  $38                                         ; $50b6: $ff
	ld   d, l                                        ; $50b7: $55
	rst  $38                                         ; $50b8: $ff
	ld   d, h                                        ; $50b9: $54
	add  c                                           ; $50ba: $81
	rst  $38                                         ; $50bb: $ff
	inc  bc                                          ; $50bc: $03
	ld   a, [$06fe]                                  ; $50bd: $fa $fe $06
	ld   d, [hl]                                     ; $50c0: $56

jr_093_50c1:
	add  b                                           ; $50c1: $80
	xor  d                                           ; $50c2: $aa
	inc  bc                                          ; $50c3: $03
	jr   c, jr_093_50c1                              ; $50c4: $38 $fb

	dec  hl                                          ; $50c6: $2b
	jp   hl                                          ; $50c7: $e9


	add  b                                           ; $50c8: $80
	ldh  [c], a                                      ; $50c9: $e2
	ld   a, [bc]                                     ; $50ca: $0a
	and  [hl]                                        ; $50cb: $a6
	and  h                                           ; $50cc: $a4
	adc  l                                           ; $50cd: $8d
	adc  b                                           ; $50ce: $88
	sbc  e                                           ; $50cf: $9b
	sub  c                                           ; $50d0: $91
	ld   [hl], $23                                   ; $50d1: $36 $23
	ld   c, c                                        ; $50d3: $49
	ld   h, b                                        ; $50d4: $60
	jr   nc, jr_093_5063                             ; $50d5: $30 $8c

	rst  $38                                         ; $50d7: $ff
	add  b                                           ; $50d8: $80
	nop                                              ; $50d9: $00
	adc  e                                           ; $50da: $8b
	ret  c                                           ; $50db: $d8

	ld   [bc], a                                     ; $50dc: $02
	ld   e, b                                        ; $50dd: $58
	add  b                                           ; $50de: $80
	di                                               ; $50df: $f3
	add  c                                           ; $50e0: $81
	dec  bc                                          ; $50e1: $0b
	add  b                                           ; $50e2: $80
	add  hl, bc                                      ; $50e3: $09
	add  [hl]                                        ; $50e4: $86
	ld   [$f803], sp                                 ; $50e5: $08 $03 $f8
	nop                                              ; $50e8: $00
	ld   bc, $80d9                                   ; $50e9: $01 $d9 $80
	jp   c, $d980                                    ; $50ec: $da $80 $d9

	add  b                                           ; $50ef: $80
	jp   c, $d980                                    ; $50f0: $da $80 $d9

	inc  b                                           ; $50f3: $04
	jp   c, $f81a                                    ; $50f4: $da $1a $f8

	nop                                              ; $50f7: $00
	ldh  [$80], a                                    ; $50f8: $e0 $80
	nop                                              ; $50fa: $00
	nop                                              ; $50fb: $00
	ldh  a, [$80]                                    ; $50fc: $f0 $80
	ld   hl, sp+$01                                  ; $50fe: $f8 $01
	ldh  a, [$f8]                                    ; $5100: $f0 $f8
	add  b                                           ; $5102: $80
	db   $fc                                         ; $5103: $fc
	ld   bc, $fcf8                                   ; $5104: $01 $f8 $fc
	add  b                                           ; $5107: $80
	cp   $00                                         ; $5108: $fe $00
	db   $fc                                         ; $510a: $fc
	add  b                                           ; $510b: $80
	rst  $38                                         ; $510c: $ff
	ld   bc, $c000                                   ; $510d: $01 $00 $c0
	add  e                                           ; $5110: $83
	ldh  [rDIV], a                                   ; $5111: $e0 $04
	ccf                                              ; $5113: $3f
	rra                                              ; $5114: $1f
	ret  nz                                          ; $5115: $c0

	rst  $38                                         ; $5116: $ff
	ccf                                              ; $5117: $3f
	add  b                                           ; $5118: $80
	rra                                              ; $5119: $1f
	add  b                                           ; $511a: $80
	cp   $85                                         ; $511b: $fe $85
	nop                                              ; $511d: $00
	ld   a, [bc]                                     ; $511e: $0a
	cp   $ff                                         ; $511f: $fe $ff
	dec  d                                           ; $5121: $15
	ei                                               ; $5122: $fb
	push bc                                          ; $5123: $c5
	push af                                          ; $5124: $f5
	jp   z, $151a                                    ; $5125: $ca $1a $15

	dec  e                                           ; $5128: $1d
	rlca                                             ; $5129: $07

jr_093_512a:
	add  e                                           ; $512a: $83
	nop                                              ; $512b: $00
	inc  bc                                          ; $512c: $03
	ret                                              ; $512d: $c9


	rst  $38                                         ; $512e: $ff
	db   $ed                                         ; $512f: $ed
	inc  h                                           ; $5130: $24
	add  b                                           ; $5131: $80
	or   [hl]                                        ; $5132: $b6
	add  b                                           ; $5133: $80
	db   $db                                         ; $5134: $db
	add  b                                           ; $5135: $80
	ld   l, l                                        ; $5136: $6d
	nop                                              ; $5137: $00
	rst  $38                                         ; $5138: $ff
	add  e                                           ; $5139: $83
	nop                                              ; $513a: $00
	dec  b                                           ; $513b: $05
	daa                                              ; $513c: $27
	rst  $38                                         ; $513d: $ff
	or   l                                           ; $513e: $b5
	sub  e                                           ; $513f: $93
	jp   c, $80db                                    ; $5140: $da $db $80

	ld   l, l                                        ; $5143: $6d
	add  b                                           ; $5144: $80
	or   $84                                         ; $5145: $f6 $84
	nop                                              ; $5147: $00
	dec  bc                                          ; $5148: $0b
	ld   bc, $0600                                   ; $5149: $01 $00 $06

jr_093_514c:
	nop                                              ; $514c: $00
	dec  de                                          ; $514d: $1b
	inc  bc                                          ; $514e: $03
	ld   h, c                                        ; $514f: $61

jr_093_5150:
	rrca                                             ; $5150: $0f
	adc  [hl]                                        ; $5151: $8e
	rra                                              ; $5152: $1f
	push af                                          ; $5153: $f5
	ld   a, [hl+]                                    ; $5154: $2a
	add  b                                           ; $5155: $80
	nop                                              ; $5156: $00
	ld   [$1fdf], sp                                 ; $5157: $08 $df $1f
	nop                                              ; $515a: $00
	jr   nz, jr_093_514c                             ; $515b: $20 $ef

	ldh  a, [$c0]                                    ; $515d: $f0 $c0
	rst  $38                                         ; $515f: $ff
	ret  nz                                          ; $5160: $c0

	add  b                                           ; $5161: $80
	rst  $38                                         ; $5162: $ff
	nop                                              ; $5163: $00
	ret  nz                                          ; $5164: $c0

	add  b                                           ; $5165: $80
	xor  d                                           ; $5166: $aa
	add  b                                           ; $5167: $80
	nop                                              ; $5168: $00
	add  b                                           ; $5169: $80
	rst  $38                                         ; $516a: $ff
	add  b                                           ; $516b: $80
	nop                                              ; $516c: $00
	nop                                              ; $516d: $00
	rst  $38                                         ; $516e: $ff
	add  b                                           ; $516f: $80
	nop                                              ; $5170: $00
	ld   bc, $00ff                                   ; $5171: $01 $ff $00
	add  b                                           ; $5174: $80
	rst  $38                                         ; $5175: $ff
	ld   bc, $0200                                   ; $5176: $01 $00 $02
	add  a                                           ; $5179: $87
	ld   l, [hl]                                     ; $517a: $6e
	ld   b, $6c                                      ; $517b: $06 $6c
	ld   b, b                                        ; $517d: $40
	ld   a, [hl]                                     ; $517e: $7e
	nop                                              ; $517f: $00
	ld   a, $00                                      ; $5180: $3e $00
	ld   a, [bc]                                     ; $5182: $0a
	add  a                                           ; $5183: $87
	xor  $05                                         ; $5184: $ee $05
	db   $e4                                         ; $5186: $e4
	ldh  [rIE], a                                    ; $5187: $e0 $ff
	nop                                              ; $5189: $00
	rra                                              ; $518a: $1f
	nop                                              ; $518b: $00
	add  b                                           ; $518c: $80
	xor  d                                           ; $518d: $aa
	add  b                                           ; $518e: $80
	dec  b                                           ; $518f: $05
	rla                                              ; $5190: $17
	ld   a, [$04fb]                                  ; $5191: $fa $fb $04
	ld   b, $fc                                      ; $5194: $06 $fc
	nop                                              ; $5196: $00
	inc  c                                           ; $5197: $0c
	db   $fd                                         ; $5198: $fd
	db   $10                                         ; $5199: $10
	ldh  [c], a                                      ; $519a: $e2
	db   $fd                                         ; $519b: $fd
	ld   bc, $d7a7                                   ; $519c: $01 $a7 $d7
	jr   c, jr_093_5150                              ; $519f: $38 $af

	ld   [hl], a                                     ; $51a1: $77
	ld   e, a                                        ; $51a2: $5f
	rst  $28                                         ; $51a3: $ef
	cp   a                                           ; $51a4: $bf
	rst  JumpTable                                         ; $51a5: $df
	ld   a, a                                        ; $51a6: $7f
	ccf                                              ; $51a7: $3f
	ld   a, a                                        ; $51a8: $7f
	add  b                                           ; $51a9: $80
	ld   a, [$7504]                                  ; $51aa: $fa $04 $75
	push af                                          ; $51ad: $f5
	nop                                              ; $51ae: $00
	rst  $38                                         ; $51af: $ff
	nop                                              ; $51b0: $00
	add  e                                           ; $51b1: $83
	rst  $38                                         ; $51b2: $ff
	add  b                                           ; $51b3: $80
	ld   [$5580], a                                  ; $51b4: $ea $80 $55
	add  b                                           ; $51b7: $80
	xor  d                                           ; $51b8: $aa
	add  b                                           ; $51b9: $80
	ld   d, l                                        ; $51ba: $55
	ld   [bc], a                                     ; $51bb: $02
	nop                                              ; $51bc: $00
	rst  $38                                         ; $51bd: $ff
	nop                                              ; $51be: $00
	add  c                                           ; $51bf: $81
	rst  $38                                         ; $51c0: $ff
	add  b                                           ; $51c1: $80
	ld   d, l                                        ; $51c2: $55
	add  b                                           ; $51c3: $80
	xor  d                                           ; $51c4: $aa
	add  b                                           ; $51c5: $80
	ld   d, l                                        ; $51c6: $55
	add  b                                           ; $51c7: $80
	xor  d                                           ; $51c8: $aa
	add  b                                           ; $51c9: $80
	ld   d, l                                        ; $51ca: $55
	ld   [bc], a                                     ; $51cb: $02
	nop                                              ; $51cc: $00
	rst  $38                                         ; $51cd: $ff
	ld   bc, $ff83                                   ; $51ce: $01 $83 $ff
	add  b                                           ; $51d1: $80
	cp   a                                           ; $51d2: $bf
	add  b                                           ; $51d3: $80
	ld   e, a                                        ; $51d4: $5f
	add  b                                           ; $51d5: $80
	xor  a                                           ; $51d6: $af
	add  b                                           ; $51d7: $80
	ld   d, a                                        ; $51d8: $57
	ld   [bc], a                                     ; $51d9: $02
	add  c                                           ; $51da: $81
	ld   a, a                                        ; $51db: $7f
	ld   b, b                                        ; $51dc: $40
	adc  e                                           ; $51dd: $8b
	ld   a, a                                        ; $51de: $7f
	ld   [bc], a                                     ; $51df: $02
	ret  nz                                          ; $51e0: $c0

	rst  $38                                         ; $51e1: $ff
	nop                                              ; $51e2: $00
	adc  e                                           ; $51e3: $8b
	rst  $38                                         ; $51e4: $ff
	ld   bc, $e3fc                                   ; $51e5: $01 $fc $e3
	add  b                                           ; $51e8: $80
	pop  hl                                          ; $51e9: $e1
	add  l                                           ; $51ea: $85
	ldh  [$0d], a                                    ; $51eb: $e0 $0d
	jr   nz, @-$1e                                   ; $51ed: $20 $e0

	nop                                              ; $51ef: $00
	ret  nz                                          ; $51f0: $c0

	nop                                              ; $51f1: $00
	call z, $05cf                                    ; $51f2: $cc $cf $05
	rst  $20                                         ; $51f5: $e7
	ldh  [c], a                                      ; $51f6: $e2
	di                                               ; $51f7: $f3
	pop  af                                          ; $51f8: $f1
	ld   sp, hl                                      ; $51f9: $f9
	ld   hl, sp-$80                                  ; $51fa: $f8 $80
	db   $fc                                         ; $51fc: $fc
	add  b                                           ; $51fd: $80
	ld   sp, hl                                      ; $51fe: $f9
	add  l                                           ; $51ff: $85
	rst  $38                                         ; $5200: $ff
	inc  bc                                          ; $5201: $03
	ld   e, e                                        ; $5202: $5b
	db   $db                                         ; $5203: $db
	add  b                                           ; $5204: $80
	rst  $38                                         ; $5205: $ff
	add  b                                           ; $5206: $80
	nop                                              ; $5207: $00
	ld   b, $48                                      ; $5208: $06 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $520a: $cf
	and  e                                           ; $520b: $a3
	rst  $20                                         ; $520c: $e7
	pop  de                                          ; $520d: $d1
	di                                               ; $520e: $f3
	pop  hl                                          ; $520f: $e1
	add  c                                           ; $5210: $81
	rst  $38                                         ; $5211: $ff
	add  b                                           ; $5212: $80
	ld   l, l                                        ; $5213: $6d
	ld   bc, $ff00                                   ; $5214: $01 $00 $ff
	add  c                                           ; $5217: $81
	nop                                              ; $5218: $00
	add  e                                           ; $5219: $83
	rst  $38                                         ; $521a: $ff
	adc  $f8                                         ; $521b: $ce $f8
	call z, $98f8                                    ; $521d: $cc $f8 $98
	ldh  a, [$78]                                    ; $5220: $f0 $78
	ldh  a, [$b0]                                    ; $5222: $f0 $b0
	ldh  [$f0], a                                    ; $5224: $e0 $f0
	ldh  [hScriptOpcodeParams], a                                    ; $5226: $e0 $a0
	ldh  [$61], a                                    ; $5228: $e0 $61
	ldh  [$e7], a                                    ; $522a: $e0 $e7
	db   $e3                                         ; $522c: $e3
	rst  $28                                         ; $522d: $ef
	db   $ec                                         ; $522e: $ec
	xor  h                                           ; $522f: $ac
	ldh  [$e0], a                                    ; $5230: $e0 $e0
	ldh  [$e0], a                                    ; $5232: $e0 $e0
	ldh  [$f3], a                                    ; $5234: $e0 $f3
	pop  hl                                          ; $5236: $e1
	or   $a6                                         ; $5237: $f6 $a6
	pop  af                                          ; $5239: $f1
	jr   nz, jr_093_523c                             ; $523a: $20 $00

jr_093_523c:
	nop                                              ; $523c: $00
	nop                                              ; $523d: $00
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00

jr_093_5246:
	nop                                              ; $5246: $00
	jr   jr_093_5270                                 ; $5247: $18 $27

	add  b                                           ; $5249: $80
	nop                                              ; $524a: $00
	and  b                                           ; $524b: $a0
	ret  nz                                          ; $524c: $c0

	ld   h, b                                        ; $524d: $60
	ldh  a, [$58]                                    ; $524e: $f0 $58
	jr   nc, jr_093_527a                             ; $5250: $30 $28

	db   $10                                         ; $5252: $10
	ld   a, b                                        ; $5253: $78
	jr   nz, jr_093_5246                             ; $5254: $20 $f0

	ret  nz                                          ; $5256: $c0

	ldh  [$60], a                                    ; $5257: $e0 $60
	rst  $38                                         ; $5259: $ff
	rst  $30                                         ; $525a: $f7
	ld   bc, $0100                                   ; $525b: $01 $00 $01
	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	add  b                                           ; $5267: $80
	nop                                              ; $5268: $00
	rrca                                             ; $5269: $0f
	nop                                              ; $526a: $00
	ld   e, [hl]                                     ; $526b: $5e
	ccf                                              ; $526c: $3f
	xor  $71                                         ; $526d: $ee $71
	ret  nc                                          ; $526f: $d0

jr_093_5270:
	ldh  [$e0], a                                    ; $5270: $e0 $e0
	nop                                              ; $5272: $00
	ld   l, b                                        ; $5273: $68
	ld   [hl], b                                     ; $5274: $70
	ld   a, a                                        ; $5275: $7f
	ld   e, $1f                                      ; $5276: $1e $1f
	add  hl, de                                      ; $5278: $19
	db   $fc                                         ; $5279: $fc

jr_093_527a:
	inc  a                                           ; $527a: $3c
	ld   sp, hl                                      ; $527b: $f9
	ccf                                              ; $527c: $3f
	sbc  $3f                                         ; $527d: $de $3f
	rst  $30                                         ; $527f: $f7
	rra                                              ; $5280: $1f
	ld   sp, hl                                      ; $5281: $f9
	rra                                              ; $5282: $1f
	db   $fc                                         ; $5283: $fc
	rra                                              ; $5284: $1f
	ld   [$f91f], a                                  ; $5285: $ea $1f $f9
	rrca                                             ; $5288: $0f
	ld   sp, hl                                      ; $5289: $f9
	rrca                                             ; $528a: $0f
	db   $fc                                         ; $528b: $fc
	rrca                                             ; $528c: $0f
	ei                                               ; $528d: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528e: $cf
	db   $fd                                         ; $528f: $fd
	rrca                                             ; $5290: $0f
	ld   a, e                                        ; $5291: $7b
	rrca                                             ; $5292: $0f
	ld   [hl], a                                     ; $5293: $77
	rra                                              ; $5294: $1f
	ld   a, a                                        ; $5295: $7f
	rra                                              ; $5296: $1f
	ccf                                              ; $5297: $3f
	add  hl, de                                      ; $5298: $19
	ccf                                              ; $5299: $3f
	dec  e                                           ; $529a: $1d
	pop  hl                                          ; $529b: $e1
	ld   e, a                                        ; $529c: $5f
	pop  hl                                          ; $529d: $e1
	ld   e, a                                        ; $529e: $5f
	pop  hl                                          ; $529f: $e1
	ld   e, a                                        ; $52a0: $5f
	pop  hl                                          ; $52a1: $e1
	sbc  $f0                                         ; $52a2: $de $f0
	xor  a                                           ; $52a4: $af
	ld   a, b                                        ; $52a5: $78
	ld   d, a                                        ; $52a6: $57
	ld   a, b                                        ; $52a7: $78
	ld   d, a                                        ; $52a8: $57
	jr   c, jr_093_52e2                              ; $52a9: $38 $37

	jr   @+$19                                       ; $52ab: $18 $17

	inc  c                                           ; $52ad: $0c
	dec  bc                                          ; $52ae: $0b
	inc  c                                           ; $52af: $0c
	dec  bc                                          ; $52b0: $0b
	inc  c                                           ; $52b1: $0c
	dec  bc                                          ; $52b2: $0b
	ld   b, $05                                      ; $52b3: $06 $05
	ld   b, $05                                      ; $52b5: $06 $05
	inc  bc                                          ; $52b7: $03
	ld   [bc], a                                     ; $52b8: $02
	inc  bc                                          ; $52b9: $03
	inc  bc                                          ; $52ba: $03
	cp   a                                           ; $52bb: $bf
	dec  c                                           ; $52bc: $0d
	inc  c                                           ; $52bd: $0c
	ld   [$0818], sp                                 ; $52be: $08 $18 $08
	cp   [hl]                                        ; $52c1: $be
	sub  b                                           ; $52c2: $90
	ld   hl, sp+$70                                  ; $52c3: $f8 $70
	ccf                                              ; $52c5: $3f
	jr   jr_093_52e7                                 ; $52c6: $18 $1f

	rlca                                             ; $52c8: $07
	rlca                                             ; $52c9: $07
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	nop                                              ; $52d3: $00
	nop                                              ; $52d4: $00
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00
	nop                                              ; $52d8: $00
	add  b                                           ; $52d9: $80
	nop                                              ; $52da: $00
	and  $c2                                         ; $52db: $e6 $c2
	ldh  [c], a                                      ; $52dd: $e2
	ld   b, d                                        ; $52de: $42
	ld   h, d                                        ; $52df: $62
	ld   b, d                                        ; $52e0: $42
	ld   [hl], h                                     ; $52e1: $74

jr_093_52e2:
	ld   h, h                                        ; $52e2: $64
	ld   hl, sp+$38                                  ; $52e3: $f8 $38
	ldh  a, [$e0]                                    ; $52e5: $f0 $e0

jr_093_52e7:
	ld   sp, hl                                      ; $52e7: $f9
	db   $10                                         ; $52e8: $10
	ld   [rRAMG], sp                                 ; $52e9: $08 $00 $00
	nop                                              ; $52ec: $00
	nop                                              ; $52ed: $00
	nop                                              ; $52ee: $00
	nop                                              ; $52ef: $00
	nop                                              ; $52f0: $00
	nop                                              ; $52f1: $00
	nop                                              ; $52f2: $00
	ld   bc, $0100                                   ; $52f3: $01 $00 $01
	nop                                              ; $52f6: $00
	inc  bc                                          ; $52f7: $03
	nop                                              ; $52f8: $00
	rlca                                             ; $52f9: $07
	ld   bc, $ca3f                                   ; $52fa: $01 $3f $ca
	ccf                                              ; $52fd: $3f
	jp   z, $cd3f                                    ; $52fe: $ca $3f $cd

	ccf                                              ; $5301: $3f
	db   $dd                                         ; $5302: $dd
	ld   a, a                                        ; $5303: $7f
	cp   a                                           ; $5304: $bf
	cp   $6a                                         ; $5305: $fe $6a
	cp   $0e                                         ; $5307: $fe $0e
	db   $fc                                         ; $5309: $fc
	inc  e                                           ; $530a: $1c
	ld   hl, sp+$18                                  ; $530b: $f8 $18
	ldh  a, [rAUD1SWEEP]                             ; $530d: $f0 $10
	ldh  a, [$30]                                    ; $530f: $f0 $30
	ldh  [rAUD4LEN], a                               ; $5311: $e0 $20
	ldh  [rAUD4LEN], a                               ; $5313: $e0 $20
	ret  nz                                          ; $5315: $c0

	ld   b, b                                        ; $5316: $40
	ldh  [$e0], a                                    ; $5317: $e0 $e0
	ld   hl, sp-$28                                  ; $5319: $f8 $d8
	rst  $20                                         ; $531b: $e7
	db   $e3                                         ; $531c: $e3
	rst  $28                                         ; $531d: $ef
	db   $ec                                         ; $531e: $ec
	xor  h                                           ; $531f: $ac
	ldh  [$e0], a                                    ; $5320: $e0 $e0
	ldh  [$e0], a                                    ; $5322: $e0 $e0
	ldh  [$f1], a                                    ; $5324: $e0 $f1
	ldh  [$f3], a                                    ; $5326: $e0 $f3
	and  c                                           ; $5328: $a1
	rst  $30                                         ; $5329: $f7
	ld   h, $a0                                      ; $532a: $26 $a0
	ret  nz                                          ; $532c: $c0

	ld   h, b                                        ; $532d: $60
	ldh  a, [$58]                                    ; $532e: $f0 $58
	jr   nc, jr_093_535a                             ; $5330: $30 $28

	db   $10                                         ; $5332: $10
	ld   a, b                                        ; $5333: $78
	nop                                              ; $5334: $00
	ldh  a, [$60]                                    ; $5335: $f0 $60
	ldh  [$e0], a                                    ; $5337: $e0 $e0
	rst  $38                                         ; $5339: $ff
	rst  $30                                         ; $533a: $f7
	ld   e, [hl]                                     ; $533b: $5e
	ccf                                              ; $533c: $3f
	xor  $71                                         ; $533d: $ee $71
	ret  nc                                          ; $533f: $d0

	ldh  [$e0], a                                    ; $5340: $e0 $e0
	nop                                              ; $5342: $00
	ld   [hl], b                                     ; $5343: $70
	nop                                              ; $5344: $00
	ld   l, [hl]                                     ; $5345: $6e
	ld   [hl], b                                     ; $5346: $70
	rra                                              ; $5347: $1f
	ld   e, $ff                                      ; $5348: $1e $ff
	ccf                                              ; $534a: $3f
	rst  $20                                         ; $534b: $e7
	db   $e3                                         ; $534c: $e3
	rst  $28                                         ; $534d: $ef
	db   $ec                                         ; $534e: $ec
	xor  h                                           ; $534f: $ac
	ldh  [$e0], a                                    ; $5350: $e0 $e0
	ldh  [$e0], a                                    ; $5352: $e0 $e0
	ldh  [$f0], a                                    ; $5354: $e0 $f0
	ldh  [$f7], a                                    ; $5356: $e0 $f7
	and  a                                           ; $5358: $a7
	di                                               ; $5359: $f3

jr_093_535a:
	ld   hl, $c0a0                                   ; $535a: $21 $a0 $c0
	ld   h, b                                        ; $535d: $60
	ldh  a, [$58]                                    ; $535e: $f0 $58
	jr   nc, jr_093_538a                             ; $5360: $30 $28

	stop                                             ; $5362: $10 $00
	nop                                              ; $5364: $00
	ld   h, b                                        ; $5365: $60
	nop                                              ; $5366: $00
	ldh  [$e0], a                                    ; $5367: $e0 $e0
	rst  $38                                         ; $5369: $ff
	rst  $30                                         ; $536a: $f7
	ld   e, [hl]                                     ; $536b: $5e
	ccf                                              ; $536c: $3f
	xor  $71                                         ; $536d: $ee $71
	ret  nc                                          ; $536f: $d0

	ldh  [$e0], a                                    ; $5370: $e0 $e0
	nop                                              ; $5372: $00
	nop                                              ; $5373: $00
	nop                                              ; $5374: $00
	jr   nc, jr_093_5377                             ; $5375: $30 $00

jr_093_5377:
	rra                                              ; $5377: $1f
	rra                                              ; $5378: $1f
	rst  $38                                         ; $5379: $ff
	ld   a, $e1                                      ; $537a: $3e $e1
	ld   b, c                                        ; $537c: $41
	pop  hl                                          ; $537d: $e1
	ret  nz                                          ; $537e: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $537f: $f0 $a0
	ld   a, b                                        ; $5381: $78
	ld   d, b                                        ; $5382: $50
	ld   a, b                                        ; $5383: $78
	ld   d, b                                        ; $5384: $50
	jr   c, jr_093_53b7                              ; $5385: $38 $30

	jr   jr_093_5399                                 ; $5387: $18 $10

	inc  c                                           ; $5389: $0c

jr_093_538a:
	ld   [$090d], sp                                 ; $538a: $08 $0d $09
	dec  c                                           ; $538d: $0d
	add  hl, bc                                      ; $538e: $09
	ld   b, $04                                      ; $538f: $06 $04
	ld   b, $04                                      ; $5391: $06 $04
	inc  bc                                          ; $5393: $03
	ld   [bc], a                                     ; $5394: $02
	inc  bc                                          ; $5395: $03
	inc  bc                                          ; $5396: $03
	nop                                              ; $5397: $00
	nop                                              ; $5398: $00

jr_093_5399:
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	jr   jr_093_53a5                                 ; $539b: $18 $08

	cp   [hl]                                        ; $539d: $be
	sub  b                                           ; $539e: $90
	ld   hl, sp+$70                                  ; $539f: $f8 $70
	ccf                                              ; $53a1: $3f
	jr   jr_093_53c3                                 ; $53a2: $18 $1f

	rlca                                             ; $53a4: $07

jr_093_53a5:
	rlca                                             ; $53a5: $07
	nop                                              ; $53a6: $00
	nop                                              ; $53a7: $00
	nop                                              ; $53a8: $00
	nop                                              ; $53a9: $00
	nop                                              ; $53aa: $00
	add  b                                           ; $53ab: $80
	add  b                                           ; $53ac: $80
	sbc  a                                           ; $53ad: $9f
	ccf                                              ; $53ae: $3f
	inc  bc                                          ; $53af: $03
	nop                                              ; $53b0: $00
	rrca                                             ; $53b1: $0f
	dec  b                                           ; $53b2: $05
	rlca                                             ; $53b3: $07
	jr   @-$7e                                       ; $53b4: $18 $80

	nop                                              ; $53b6: $00

jr_093_53b7:
	nop                                              ; $53b7: $00
	nop                                              ; $53b8: $00
	nop                                              ; $53b9: $00
	nop                                              ; $53ba: $00
	ld   h, d                                        ; $53bb: $62
	ld   b, d                                        ; $53bc: $42
	ld   [hl], h                                     ; $53bd: $74
	ld   h, h                                        ; $53be: $64
	ld   hl, sp+$38                                  ; $53bf: $f8 $38
	ldh  a, [$e0]                                    ; $53c1: $f0 $e0

jr_093_53c3:
	ld   sp, hl                                      ; $53c3: $f9
	db   $10                                         ; $53c4: $10
	ld   [rRAMG], sp                                 ; $53c5: $08 $00 $00
	nop                                              ; $53c8: $00
	inc  bc                                          ; $53c9: $03
	ld   [bc], a                                     ; $53ca: $02
	dec  bc                                          ; $53cb: $0b
	add  hl, bc                                      ; $53cc: $09
	pop  af                                          ; $53cd: $f1
	ld   sp, hl                                      ; $53ce: $f9
	db   $e3                                         ; $53cf: $e3
	ld   [bc], a                                     ; $53d0: $02
	add  e                                           ; $53d1: $83
	add  b                                           ; $53d2: $80
	inc  bc                                          ; $53d3: $03
	ret  nz                                          ; $53d4: $c0

	rst  ToBoot                                         ; $53d5: $c7
	ld   bc, $0000                                   ; $53d6: $01 $00 $00
	nop                                              ; $53d9: $00
	nop                                              ; $53da: $00
	sbc  a                                           ; $53db: $9f
	adc  a                                           ; $53dc: $8f
	sub  b                                           ; $53dd: $90
	jr   nc, @+$21                                   ; $53de: $30 $1f

	rrca                                             ; $53e0: $0f
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	rrca                                             ; $53e3: $0f
	dec  b                                           ; $53e4: $05
	add  a                                           ; $53e5: $87
	jr   jr_093_53e8                                 ; $53e6: $18 $00

jr_093_53e8:
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	db   $db                                         ; $53eb: $db
	jp   hl                                          ; $53ec: $e9


	ld   sp, $d319                                   ; $53ed: $31 $19 $d3
	ldh  [c], a                                      ; $53f0: $e2
	inc  bc                                          ; $53f1: $03
	nop                                              ; $53f2: $00
	add  e                                           ; $53f3: $83
	add  b                                           ; $53f4: $80
	rlca                                             ; $53f5: $07
	pop  bc                                          ; $53f6: $c1
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	adc  $f8                                         ; $53fb: $ce $f8
	call z, $98f8                                    ; $53fd: $cc $f8 $98
	ldh  a, [$78]                                    ; $5400: $f0 $78
	ldh  a, [$b0]                                    ; $5402: $f0 $b0
	ldh  [$f0], a                                    ; $5404: $e0 $f0
	ldh  [hScriptOpcodeParams], a                                    ; $5406: $e0 $a0
	ldh  [$62], a                                    ; $5408: $e0 $62
	db   $e3                                         ; $540a: $e3
	rst  $20                                         ; $540b: $e7
	push hl                                          ; $540c: $e5
	rst  $28                                         ; $540d: $ef
	add  sp, -$54                                    ; $540e: $e8 $ac
	ldh  [$e1], a                                    ; $5410: $e0 $e1
	pop  hl                                          ; $5412: $e1
	ldh  [c], a                                      ; $5413: $e2
	ldh  [c], a                                      ; $5414: $e2
	or   $e4                                         ; $5415: $f6 $e4
	or   $a4                                         ; $5417: $f6 $a4
	pop  af                                          ; $5419: $f1
	jr   nz, jr_093_541c                             ; $541a: $20 $00

jr_093_541c:
	nop                                              ; $541c: $00
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	jr   jr_093_5450                                 ; $5427: $18 $27

	ret  nz                                          ; $5429: $c0

	nop                                              ; $542a: $00
	and  b                                           ; $542b: $a0
	ret  nz                                          ; $542c: $c0

	ldh  [rSVBK], a                                  ; $542d: $e0 $70
	ld   a, b                                        ; $542f: $78
	db   $10                                         ; $5430: $10
	ld   hl, sp-$40                                  ; $5431: $f8 $c0
	jr   c, jr_093_5455                              ; $5433: $38 $20

	ret  nz                                          ; $5435: $c0

	ld   b, b                                        ; $5436: $40
	ret  nz                                          ; $5437: $c0

	ld   b, b                                        ; $5438: $40
	rst  $38                                         ; $5439: $ff
	rst  $30                                         ; $543a: $f7
	ld   bc, $0100                                   ; $543b: $01 $00 $01
	nop                                              ; $543e: $00
	nop                                              ; $543f: $00
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	nop                                              ; $5446: $00
	ld   b, b                                        ; $5447: $40
	add  b                                           ; $5448: $80
	ld   d, $0f                                      ; $5449: $16 $0f
	ld   a, d                                        ; $544b: $7a
	dec  e                                           ; $544c: $1d
	xor  a                                           ; $544d: $af
	ld   [hl], b                                     ; $544e: $70
	ret  nc                                          ; $544f: $d0

jr_093_5450:
	ldh  [$fc], a                                    ; $5450: $e0 $fc
	inc  e                                           ; $5452: $1c
	ld   h, d                                        ; $5453: $62
	ld   h, d                                        ; $5454: $62

jr_093_5455:
	dec  de                                          ; $5455: $1b
	ld   de, $111b                                   ; $5456: $11 $1b $11
	db   $fc                                         ; $5459: $fc
	inc  a                                           ; $545a: $3c
	db   $fc                                         ; $545b: $fc
	adc  a                                           ; $545c: $8f
	ei                                               ; $545d: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $545e: $cf
	db   $fd                                         ; $545f: $fd
	rrca                                             ; $5460: $0f
	ld   a, e                                        ; $5461: $7b
	rrca                                             ; $5462: $0f
	ld   [hl], a                                     ; $5463: $77
	rra                                              ; $5464: $1f
	ld   a, a                                        ; $5465: $7f
	rra                                              ; $5466: $1f
	ccf                                              ; $5467: $3f
	add  hl, de                                      ; $5468: $19
	ccf                                              ; $5469: $3f
	dec  e                                           ; $546a: $1d
	rst  $20                                         ; $546b: $e7
	push hl                                          ; $546c: $e5
	rst  $28                                         ; $546d: $ef
	add  sp, -$54                                    ; $546e: $e8 $ac
	ldh  [$e0], a                                    ; $5470: $e0 $e0
	ldh  [$e0], a                                    ; $5472: $e0 $e0
	ldh  [$f3], a                                    ; $5474: $e0 $f3
	pop  hl                                          ; $5476: $e1
	rst  $30                                         ; $5477: $f7
	and  d                                           ; $5478: $a2
	push af                                          ; $5479: $f5
	inc  h                                           ; $547a: $24
	and  b                                           ; $547b: $a0
	ret  nz                                          ; $547c: $c0

	ldh  [rSVBK], a                                  ; $547d: $e0 $70
	ld   a, b                                        ; $547f: $78
	db   $10                                         ; $5480: $10
	jr   c, jr_093_5483                              ; $5481: $38 $00

jr_093_5483:
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	ret  nz                                          ; $5485: $c0

	ret  nz                                          ; $5486: $c0

	ldh  [$e0], a                                    ; $5487: $e0 $e0
	rst  $38                                         ; $5489: $ff
	rst  $30                                         ; $548a: $f7
	ld   a, d                                        ; $548b: $7a
	dec  e                                           ; $548c: $1d
	xor  a                                           ; $548d: $af
	ld   [hl], b                                     ; $548e: $70
	ret  nc                                          ; $548f: $d0

	ldh  [$e0], a                                    ; $5490: $e0 $e0
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	ld   a, $3c                                      ; $5495: $3e $3c
	ld   a, a                                        ; $5497: $7f
	ld   e, d                                        ; $5498: $5a
	db   $fd                                         ; $5499: $fd
	dec  a                                           ; $549a: $3d
	rst  $20                                         ; $549b: $e7
	push hl                                          ; $549c: $e5
	rst  $28                                         ; $549d: $ef
	add  sp, -$54                                    ; $549e: $e8 $ac
	ldh  [$e0], a                                    ; $54a0: $e0 $e0
	ldh  [$e0], a                                    ; $54a2: $e0 $e0
	ldh  [$f0], a                                    ; $54a4: $e0 $f0
	ldh  [$f7], a                                    ; $54a6: $e0 $f7
	and  a                                           ; $54a8: $a7
	di                                               ; $54a9: $f3
	ld   hl, $c0a0                                   ; $54aa: $21 $a0 $c0
	ldh  [rSVBK], a                                  ; $54ad: $e0 $70
	ld   a, b                                        ; $54af: $78
	db   $10                                         ; $54b0: $10
	jr   c, jr_093_54b3                              ; $54b1: $38 $00

jr_093_54b3:
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	ld   h, b                                        ; $54b5: $60
	nop                                              ; $54b6: $00
	ldh  [$e0], a                                    ; $54b7: $e0 $e0
	rst  $38                                         ; $54b9: $ff
	rst  $30                                         ; $54ba: $f7
	ld   a, d                                        ; $54bb: $7a
	dec  e                                           ; $54bc: $1d
	xor  a                                           ; $54bd: $af
	ld   [hl], b                                     ; $54be: $70
	ret  nc                                          ; $54bf: $d0

	ldh  [$e0], a                                    ; $54c0: $e0 $e0
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	jr   nc, jr_093_54c7                             ; $54c5: $30 $00

jr_093_54c7:
	rra                                              ; $54c7: $1f
	rra                                              ; $54c8: $1f
	rst  $38                                         ; $54c9: $ff
	ld   a, $62                                      ; $54ca: $3e $62
	ld   b, d                                        ; $54cc: $42
	ld   [hl], h                                     ; $54cd: $74
	ld   h, h                                        ; $54ce: $64
	ld   hl, sp+$38                                  ; $54cf: $f8 $38
	ldh  a, [$e0]                                    ; $54d1: $f0 $e0
	ld   sp, hl                                      ; $54d3: $f9
	db   $10                                         ; $54d4: $10
	ld   [$0200], sp                                 ; $54d5: $08 $00 $02
	ld   [bc], a                                     ; $54d8: $02
	dec  bc                                          ; $54d9: $0b
	dec  e                                           ; $54da: $1d
	or   l                                           ; $54db: $b5
	ld   h, l                                        ; $54dc: $65
	ld   sp, hl                                      ; $54dd: $f9
	ld   sp, hl                                      ; $54de: $f9
	db   $e3                                         ; $54df: $e3
	nop                                              ; $54e0: $00
	add  e                                           ; $54e1: $83
	add  b                                           ; $54e2: $80
	inc  bc                                          ; $54e3: $03
	ret  nz                                          ; $54e4: $c0

	rst  ToBoot                                         ; $54e5: $c7
	ld   bc, $0000                                   ; $54e6: $01 $00 $00
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	dec  c                                           ; $54eb: $0d
	add  hl, bc                                      ; $54ec: $09
	inc  c                                           ; $54ed: $0c
	ld   [$0406], sp                                 ; $54ee: $08 $06 $04
	ld   b, $04                                      ; $54f1: $06 $04
	inc  bc                                          ; $54f3: $03
	ld   [bc], a                                     ; $54f4: $02
	inc  bc                                          ; $54f5: $03
	inc  bc                                          ; $54f6: $03
	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	jr   jr_093_5505                                 ; $54fb: $18 $08

	cp   [hl]                                        ; $54fd: $be
	sub  b                                           ; $54fe: $90
	ld   hl, sp+$70                                  ; $54ff: $f8 $70
	ccf                                              ; $5501: $3f
	jr   jr_093_5523                                 ; $5502: $18 $1f

	rlca                                             ; $5504: $07

jr_093_5505:
	rlca                                             ; $5505: $07
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	add  b                                           ; $5509: $80
	add  b                                           ; $550a: $80
	sbc  [hl]                                        ; $550b: $9e
	ccf                                              ; $550c: $3f
	sbc  a                                           ; $550d: $9f
	db   $10                                         ; $550e: $10
	ld   [$0708], sp                                 ; $550f: $08 $08 $07
	rlca                                             ; $5512: $07
	nop                                              ; $5513: $00
	nop                                              ; $5514: $00
	add  c                                           ; $5515: $81
	ld   b, $00                                      ; $5516: $06 $00
	nop                                              ; $5518: $00
	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	ld   h, d                                        ; $551b: $62
	ld   b, d                                        ; $551c: $42
	ld   [hl], h                                     ; $551d: $74
	ld   h, h                                        ; $551e: $64
	ld   hl, sp+$38                                  ; $551f: $f8 $38
	ldh  a, [$e0]                                    ; $5521: $f0 $e0

jr_093_5523:
	ld   sp, hl                                      ; $5523: $f9
	db   $10                                         ; $5524: $10
	ld   a, [bc]                                     ; $5525: $0a
	ld   [bc], a                                     ; $5526: $02
	inc  bc                                          ; $5527: $03
	ld   bc, $395d                                   ; $5528: $01 $5d $39
	dec  b                                           ; $552b: $05

jr_093_552c:
	push bc                                          ; $552c: $c5
	ld   hl, sp+$05                                  ; $552d: $f8 $05
	inc  de                                          ; $552f: $13
	jr   jr_093_5555                                 ; $5530: $18 $23

	ldh  [rAUD1LOW], a                               ; $5532: $e0 $13
	nop                                              ; $5534: $00
	add  a                                           ; $5535: $87
	ld   h, c                                        ; $5536: $61
	nop                                              ; $5537: $00
	nop                                              ; $5538: $00
	nop                                              ; $5539: $00
	nop                                              ; $553a: $00
	rst  $20                                         ; $553b: $e7
	db   $e3                                         ; $553c: $e3
	xor  $ed                                         ; $553d: $ee $ed
	xor  h                                           ; $553f: $ac
	ldh  [$e0], a                                    ; $5540: $e0 $e0
	ldh  [$e0], a                                    ; $5542: $e0 $e0
	ldh  [$f3], a                                    ; $5544: $e0 $f3
	pop  hl                                          ; $5546: $e1
	or   $a6                                         ; $5547: $f6 $a6
	pop  af                                          ; $5549: $f1
	jr   nz, jr_093_552c                             ; $554a: $20 $e0

	nop                                              ; $554c: $00
	ldh  a, [$c0]                                    ; $554d: $f0 $c0
	ld   e, b                                        ; $554f: $58
	ldh  [$38], a                                    ; $5550: $e0 $38
	ld   [hl], b                                     ; $5552: $70
	ld   hl, sp-$10                                  ; $5553: $f8 $f0

jr_093_5555:
	ldh  a, [$50]                                    ; $5555: $f0 $50
	ldh  [rLCDC], a                                  ; $5557: $e0 $40
	rst  $38                                         ; $5559: $ff
	rst  $30                                         ; $555a: $f7
	ld   bc, $0100                                   ; $555b: $01 $00 $01
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00

jr_093_5566:
	nop                                              ; $5566: $00
	ld   b, b                                        ; $5567: $40
	add  b                                           ; $5568: $80
	rrca                                             ; $5569: $0f
	nop                                              ; $556a: $00
	ld   a, [hl]                                     ; $556b: $7e
	rlca                                             ; $556c: $07
	xor  $19                                         ; $556d: $ee $19
	ldh  a, [$30]                                    ; $556f: $f0 $30
	ldh  [$f0], a                                    ; $5571: $e0 $f0
	ld   a, b                                        ; $5573: $78
	ld   hl, sp+$7f                                  ; $5574: $f8 $7f
	ld   d, $1f                                      ; $5576: $16 $1f
	ld   de, $3cfc                                   ; $5578: $11 $fc $3c
	rst  $20                                         ; $557b: $e7
	db   $e3                                         ; $557c: $e3
	xor  $ed                                         ; $557d: $ee $ed
	xor  h                                           ; $557f: $ac
	ldh  [$e0], a                                    ; $5580: $e0 $e0
	ldh  [$e0], a                                    ; $5582: $e0 $e0
	ldh  [$f1], a                                    ; $5584: $e0 $f1
	ldh  [$f7], a                                    ; $5586: $e0 $f7
	and  c                                           ; $5588: $a1
	rst  $30                                         ; $5589: $f7
	ld   h, $e0                                      ; $558a: $26 $e0
	nop                                              ; $558c: $00
	ldh  a, [$c0]                                    ; $558d: $f0 $c0
	ld   e, b                                        ; $558f: $58
	ldh  [$38], a                                    ; $5590: $e0 $38
	ld   [hl], b                                     ; $5592: $70
	jr   jr_093_5595                                 ; $5593: $18 $00

jr_093_5595:
	ldh  a, [$f0]                                    ; $5595: $f0 $f0
	ldh  [$60], a                                    ; $5597: $e0 $60
	rst  $38                                         ; $5599: $ff
	rst  $30                                         ; $559a: $f7
	ld   a, [hl]                                     ; $559b: $7e
	rlca                                             ; $559c: $07
	xor  $19                                         ; $559d: $ee $19
	ldh  a, [$30]                                    ; $559f: $f0 $30
	ldh  [$f0], a                                    ; $55a1: $e0 $f0
	ret  nz                                          ; $55a3: $c0

	nop                                              ; $55a4: $00
	ld   a, [hl]                                     ; $55a5: $7e
	ld   a, h                                        ; $55a6: $7c
	rra                                              ; $55a7: $1f
	ld   a, [de]                                     ; $55a8: $1a
	rst  $38                                         ; $55a9: $ff
	ccf                                              ; $55aa: $3f
	rst  $20                                         ; $55ab: $e7
	db   $e3                                         ; $55ac: $e3
	xor  $ed                                         ; $55ad: $ee $ed
	xor  h                                           ; $55af: $ac
	ldh  [$e0], a                                    ; $55b0: $e0 $e0
	ldh  [$e0], a                                    ; $55b2: $e0 $e0
	ldh  [$f0], a                                    ; $55b4: $e0 $f0
	ldh  [$f7], a                                    ; $55b6: $e0 $f7
	and  a                                           ; $55b8: $a7
	di                                               ; $55b9: $f3
	ld   hl, $00e0                                   ; $55ba: $21 $e0 $00
	ldh  a, [$c0]                                    ; $55bd: $f0 $c0
	ld   e, b                                        ; $55bf: $58
	ldh  [$38], a                                    ; $55c0: $e0 $38
	ld   [hl], b                                     ; $55c2: $70
	jr   jr_093_55c5                                 ; $55c3: $18 $00

jr_093_55c5:
	ld   h, b                                        ; $55c5: $60
	nop                                              ; $55c6: $00
	ldh  [$e0], a                                    ; $55c7: $e0 $e0
	rst  $38                                         ; $55c9: $ff
	rst  $30                                         ; $55ca: $f7
	ld   a, [hl]                                     ; $55cb: $7e
	rlca                                             ; $55cc: $07
	xor  $19                                         ; $55cd: $ee $19
	ldh  a, [$30]                                    ; $55cf: $f0 $30
	ldh  [$f0], a                                    ; $55d1: $e0 $f0
	ret  nz                                          ; $55d3: $c0

	nop                                              ; $55d4: $00
	jr   nc, jr_093_55d7                             ; $55d5: $30 $00

jr_093_55d7:
	rra                                              ; $55d7: $1f
	rra                                              ; $55d8: $1f
	rst  $38                                         ; $55d9: $ff
	ld   a, $80                                      ; $55da: $3e $80
	add  b                                           ; $55dc: $80
	sbc  b                                           ; $55dd: $98
	dec  sp                                          ; $55de: $3b
	inc  bc                                          ; $55df: $03
	nop                                              ; $55e0: $00
	rrca                                             ; $55e1: $0f
	dec  b                                           ; $55e2: $05
	rlca                                             ; $55e3: $07
	jr   jr_093_5566                                 ; $55e4: $18 $80

	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00
	nop                                              ; $55ea: $00
	ld   h, d                                        ; $55eb: $62
	ld   b, d                                        ; $55ec: $42
	ld   [hl], h                                     ; $55ed: $74
	ld   h, h                                        ; $55ee: $64
	ld   hl, sp+$38                                  ; $55ef: $f8 $38
	ldh  a, [$e0]                                    ; $55f1: $f0 $e0
	ld   sp, hl                                      ; $55f3: $f9
	db   $10                                         ; $55f4: $10
	ld   [rRAMG], sp                                 ; $55f5: $08 $00 $00
	nop                                              ; $55f8: $00
	rlca                                             ; $55f9: $07
	inc  b                                           ; $55fa: $04
	inc  bc                                          ; $55fb: $03
	ld   [bc], a                                     ; $55fc: $02
	ld   sp, hl                                      ; $55fd: $f9
	pop  hl                                          ; $55fe: $e1
	ld   sp, hl                                      ; $55ff: $f9
	jr   @-$7b                                       ; $5600: $18 $83

	add  b                                           ; $5602: $80
	inc  bc                                          ; $5603: $03
	ret  nz                                          ; $5604: $c0

	rst  ToBoot                                         ; $5605: $c7
	ld   bc, $0000                                   ; $5606: $01 $00 $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	dec  c                                           ; $560b: $0d
	ld   [$090d], sp                                 ; $560c: $08 $0d $09
	rlca                                             ; $560f: $07
	dec  b                                           ; $5610: $05
	ld   b, $04                                      ; $5611: $06 $04
	inc  bc                                          ; $5613: $03
	ld   [bc], a                                     ; $5614: $02
	inc  bc                                          ; $5615: $03
	inc  bc                                          ; $5616: $03
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	add  b                                           ; $561b: $80
	add  b                                           ; $561c: $80
	sbc  d                                           ; $561d: $9a
	ld   sp, $10a0                                   ; $561e: $31 $a0 $10
	rla                                              ; $5621: $17
	rrca                                             ; $5622: $0f
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	add  l                                           ; $5625: $85
	ld   [bc], a                                     ; $5626: $02
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
	nop                                              ; $562a: $00
	ld   h, d                                        ; $562b: $62
	ld   b, d                                        ; $562c: $42
	ld   [hl], h                                     ; $562d: $74
	ld   h, h                                        ; $562e: $64
	ld   hl, sp+$38                                  ; $562f: $f8 $38
	ldh  a, [$e0]                                    ; $5631: $f0 $e0
	ld   sp, hl                                      ; $5633: $f9
	db   $10                                         ; $5634: $10
	ld   [rRAMG], sp                                 ; $5635: $08 $00 $00
	nop                                              ; $5638: $00
	inc  bc                                          ; $5639: $03
	inc  b                                           ; $563a: $04
	inc  bc                                          ; $563b: $03
	ld   [bc], a                                     ; $563c: $02
	ld   l, c                                        ; $563d: $69
	pop  af                                          ; $563e: $f1
	nop                                              ; $563f: $00
	add  hl, bc                                      ; $5640: $09
	db   $eb                                         ; $5641: $eb
	ldh  a, [$03]                                    ; $5642: $f0 $03
	nop                                              ; $5644: $00
	add  a                                           ; $5645: $87
	ld   h, c                                        ; $5646: $61
	nop                                              ; $5647: $00
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	nop                                              ; $564a: $00
	adc  $f8                                         ; $564b: $ce $f8
	call z, $98f8                                    ; $564d: $cc $f8 $98
	ldh  a, [$78]                                    ; $5650: $f0 $78
	ldh  a, [$b0]                                    ; $5652: $f0 $b0
	ldh  [$f0], a                                    ; $5654: $e0 $f0
	ldh  [hScriptOpcodeParams], a                                    ; $5656: $e0 $a0
	ldh  [$63], a                                    ; $5658: $e0 $63
	db   $e3                                         ; $565a: $e3
	and  $e5                                         ; $565b: $e6 $e5
	rst  $28                                         ; $565d: $ef
	add  sp, -$54                                    ; $565e: $e8 $ac
	ldh  [$e3], a                                    ; $5660: $e0 $e3
	db   $e3                                         ; $5662: $e3
	and  $e6                                         ; $5663: $e6 $e6
	or   $e4                                         ; $5665: $f6 $e4
	ldh  a, [c]                                      ; $5667: $f2
	and  b                                           ; $5668: $a0
	pop  af                                          ; $5669: $f1
	jr   nz, jr_093_566c                             ; $566a: $20 $00

jr_093_566c:
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	nop                                              ; $5671: $00
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	nop                                              ; $5675: $00
	nop                                              ; $5676: $00
	jr   jr_093_56a0                                 ; $5677: $18 $27

	nop                                              ; $5679: $00
	nop                                              ; $567a: $00

jr_093_567b:
	add  b                                           ; $567b: $80
	ret  nz                                          ; $567c: $c0

	jp   nz, Jump_093_7b60                           ; $567d: $c2 $60 $7b

	jr   nc, jr_093_567b                             ; $5680: $30 $f9

	ret  nz                                          ; $5682: $c0

	jr   c, jr_093_56a5                              ; $5683: $38 $20

	ret  nz                                          ; $5685: $c0

	ld   b, b                                        ; $5686: $40
	ret  nz                                          ; $5687: $c0

	ld   b, b                                        ; $5688: $40
	rst  $38                                         ; $5689: $ff
	rst  $30                                         ; $568a: $f7
	ld   bc, $0100                                   ; $568b: $01 $00 $01
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	ld   b, [hl]                                     ; $5697: $46
	add  [hl]                                        ; $5698: $86
	ld   [$5e1f], sp                                 ; $5699: $08 $1f $5e
	ld   sp, $70ef                                   ; $569c: $31 $ef $70
	ret  nc                                          ; $569f: $d0

jr_093_56a0:
	ldh  [$fe], a                                    ; $56a0: $e0 $fe
	ld   e, $63                                      ; $56a2: $1e $63
	ld   h, e                                        ; $56a4: $63

jr_093_56a5:
	dec  de                                          ; $56a5: $1b
	ld   de, $101a                                   ; $56a6: $11 $1a $10
	db   $fc                                         ; $56a9: $fc
	inc  a                                           ; $56aa: $3c
	and  $e5                                         ; $56ab: $e6 $e5
	rst  $28                                         ; $56ad: $ef
	add  sp, -$54                                    ; $56ae: $e8 $ac
	ldh  [$e0], a                                    ; $56b0: $e0 $e0
	ldh  [$e0], a                                    ; $56b2: $e0 $e0
	ldh  [$f3], a                                    ; $56b4: $e0 $f3
	db   $e3                                         ; $56b6: $e3
	rst  $30                                         ; $56b7: $f7
	and  [hl]                                        ; $56b8: $a6
	push af                                          ; $56b9: $f5
	inc  h                                           ; $56ba: $24
	add  b                                           ; $56bb: $80
	ret  nz                                          ; $56bc: $c0

	jp   nz, Jump_093_7b60                           ; $56bd: $c2 $60 $7b

	jr   nc, jr_093_56fb                             ; $56c0: $30 $39

	nop                                              ; $56c2: $00
	jr   jr_093_56c5                                 ; $56c3: $18 $00

jr_093_56c5:
	ret  nz                                          ; $56c5: $c0

	ret  nz                                          ; $56c6: $c0

	ldh  [$60], a                                    ; $56c7: $e0 $60
	rst  $38                                         ; $56c9: $ff
	rst  $30                                         ; $56ca: $f7
	ld   e, [hl]                                     ; $56cb: $5e
	ld   sp, $70ef                                   ; $56cc: $31 $ef $70
	ret  nc                                          ; $56cf: $d0

	ldh  [$e0], a                                    ; $56d0: $e0 $e0
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	nop                                              ; $56d4: $00
	ld   a, $3e                                      ; $56d5: $3e $3e
	ld   a, a                                        ; $56d7: $7f
	ld   e, e                                        ; $56d8: $5b
	db   $fd                                         ; $56d9: $fd
	dec  a                                           ; $56da: $3d
	and  $e5                                         ; $56db: $e6 $e5
	rst  $28                                         ; $56dd: $ef
	add  sp, -$54                                    ; $56de: $e8 $ac
	ldh  [$e0], a                                    ; $56e0: $e0 $e0
	ldh  [$e0], a                                    ; $56e2: $e0 $e0
	ldh  [$f0], a                                    ; $56e4: $e0 $f0
	ldh  [$f7], a                                    ; $56e6: $e0 $f7
	and  a                                           ; $56e8: $a7
	di                                               ; $56e9: $f3
	ld   hl, $c080                                   ; $56ea: $21 $80 $c0
	jp   nz, Jump_093_7b60                           ; $56ed: $c2 $60 $7b

	jr   nc, jr_093_572b                             ; $56f0: $30 $39

	nop                                              ; $56f2: $00
	jr   jr_093_56f5                                 ; $56f3: $18 $00

jr_093_56f5:
	ld   h, b                                        ; $56f5: $60
	nop                                              ; $56f6: $00
	ldh  [$e0], a                                    ; $56f7: $e0 $e0
	rst  $38                                         ; $56f9: $ff
	rst  $30                                         ; $56fa: $f7

jr_093_56fb:
	ld   e, [hl]                                     ; $56fb: $5e
	ld   sp, $70ef                                   ; $56fc: $31 $ef $70
	ret  nc                                          ; $56ff: $d0

	ldh  [$e0], a                                    ; $5700: $e0 $e0
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	jr   nc, jr_093_5707                             ; $5705: $30 $00

jr_093_5707:
	rra                                              ; $5707: $1f
	rra                                              ; $5708: $1f
	rst  $38                                         ; $5709: $ff
	ld   a, $0c                                      ; $570a: $3e $0c
	ld   [$080c], sp                                 ; $570c: $08 $0c $08
	ld   b, $04                                      ; $570f: $06 $04
	ld   b, $04                                      ; $5711: $06 $04
	inc  bc                                          ; $5713: $03
	ld   [bc], a                                     ; $5714: $02
	inc  bc                                          ; $5715: $03
	inc  bc                                          ; $5716: $03
	nop                                              ; $5717: $00
	nop                                              ; $5718: $00
	nop                                              ; $5719: $00
	nop                                              ; $571a: $00
	jr   jr_093_5725                                 ; $571b: $18 $08

	cp   [hl]                                        ; $571d: $be
	sub  b                                           ; $571e: $90
	ld   hl, sp+$70                                  ; $571f: $f8 $70
	ccf                                              ; $5721: $3f
	jr   jr_093_5743                                 ; $5722: $18 $1f

	rlca                                             ; $5724: $07

jr_093_5725:
	rlca                                             ; $5725: $07
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00
	nop                                              ; $5728: $00
	ret  nz                                          ; $5729: $c0

	ld   b, b                                        ; $572a: $40

jr_093_572b:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572b: $cf
	add  a                                           ; $572c: $87
	sub  b                                           ; $572d: $90
	jr   c, jr_093_5733                              ; $572e: $38 $03

	inc  bc                                          ; $5730: $03
	inc  bc                                          ; $5731: $03
	inc  c                                           ; $5732: $0c

jr_093_5733:
	nop                                              ; $5733: $00
	nop                                              ; $5734: $00
	add  b                                           ; $5735: $80
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	nop                                              ; $573a: $00
	ld   h, d                                        ; $573b: $62
	ld   b, d                                        ; $573c: $42
	ld   [hl], h                                     ; $573d: $74
	ld   h, h                                        ; $573e: $64
	ld   hl, sp+$38                                  ; $573f: $f8 $38
	ldh  a, [$e0]                                    ; $5741: $f0 $e0

jr_093_5743:
	ld   sp, hl                                      ; $5743: $f9
	db   $10                                         ; $5744: $10
	ld   [$0200], sp                                 ; $5745: $08 $00 $02
	ld   [bc], a                                     ; $5748: $02
	di                                               ; $5749: $f3
	ld   sp, $c9c9                                   ; $574a: $31 $c9 $c9
	ld   [hl], b                                     ; $574d: $70
	dec  sp                                          ; $574e: $3b
	add  c                                           ; $574f: $81
	add  d                                           ; $5750: $82
	inc  bc                                          ; $5751: $03
	ret  nz                                          ; $5752: $c0

	jp   $0700                                       ; $5753: $c3 $00 $07


	ld   bc, $0000                                   ; $5756: $01 $00 $00
	nop                                              ; $5759: $00
	nop                                              ; $575a: $00
	jr   jr_093_5765                                 ; $575b: $18 $08

	cp   [hl]                                        ; $575d: $be
	sub  b                                           ; $575e: $90
	ld   hl, sp+$70                                  ; $575f: $f8 $70
	ccf                                              ; $5761: $3f
	jr   jr_093_5783                                 ; $5762: $18 $1f

	rlca                                             ; $5764: $07

jr_093_5765:
	rlca                                             ; $5765: $07
	nop                                              ; $5766: $00
	nop                                              ; $5767: $00
	nop                                              ; $5768: $00
	ld   b, b                                        ; $5769: $40
	inc  bc                                          ; $576a: $03
	ret  z                                           ; $576b: $c8

	ld   c, h                                        ; $576c: $4c
	sbc  e                                           ; $576d: $9b
	sub  e                                           ; $576e: $93
	inc  e                                           ; $576f: $1c
	inc  c                                           ; $5770: $0c
	inc  bc                                          ; $5771: $03
	inc  bc                                          ; $5772: $03
	inc  bc                                          ; $5773: $03
	inc  c                                           ; $5774: $0c
	add  b                                           ; $5775: $80
	nop                                              ; $5776: $00
	nop                                              ; $5777: $00
	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	ld   h, d                                        ; $577b: $62
	ld   b, d                                        ; $577c: $42
	ld   [hl], h                                     ; $577d: $74
	ld   h, h                                        ; $577e: $64
	ld   hl, sp+$38                                  ; $577f: $f8 $38
	ldh  a, [$e0]                                    ; $5781: $f0 $e0

jr_093_5783:
	ld   sp, hl                                      ; $5783: $f9
	db   $10                                         ; $5784: $10
	ld   [rRAMG], sp                                 ; $5785: $08 $00 $00
	nop                                              ; $5788: $00
	jp   nc, $19e2                                   ; $5789: $d2 $e2 $19

	ld   de, $8988                                   ; $578c: $11 $88 $89
	ld   h, c                                        ; $578f: $61
	ld   l, d                                        ; $5790: $6a
	or   e                                           ; $5791: $b3
	sub  b                                           ; $5792: $90
	inc  bc                                          ; $5793: $03
	ret  nz                                          ; $5794: $c0

	rst  ToBoot                                         ; $5795: $c7
	ld   bc, $0000                                   ; $5796: $01 $00 $00
	nop                                              ; $5799: $00
	nop                                              ; $579a: $00
	adc  $f8                                         ; $579b: $ce $f8
	call z, $98f8                                    ; $579d: $cc $f8 $98
	ldh  a, [$78]                                    ; $57a0: $f0 $78
	ldh  a, [$b0]                                    ; $57a2: $f0 $b0
	ldh  [$f0], a                                    ; $57a4: $e0 $f0
	ldh  [hScriptOpcodeParams], a                                    ; $57a6: $e0 $a0
	ldh  [$60], a                                    ; $57a8: $e0 $60
	ldh  [$e0], a                                    ; $57aa: $e0 $e0
	ldh  [$e4], a                                    ; $57ac: $e0 $e4
	db   $e3                                         ; $57ae: $e3

jr_093_57af:
	and  a                                           ; $57af: $a7
	rst  $28                                         ; $57b0: $ef
	ldh  [$e0], a                                    ; $57b1: $e0 $e0
	ldh  [$e1], a                                    ; $57b3: $e0 $e1
	rst  $30                                         ; $57b5: $f7
	rst  $20                                         ; $57b6: $e7
	or   $a0                                         ; $57b7: $f6 $a0
	pop  af                                          ; $57b9: $f1
	jr   nz, jr_093_57bc                             ; $57ba: $20 $00

jr_093_57bc:
	nop                                              ; $57bc: $00
	jr   nc, jr_093_57af                             ; $57bd: $30 $f0

	ret  c                                           ; $57bf: $d8

	ldh  [$78], a                                    ; $57c0: $e0 $78
	nop                                              ; $57c2: $00
	ld   hl, sp-$20                                  ; $57c3: $f8 $e0
	ldh  a, [$c0]                                    ; $57c5: $f0 $c0
	ld   b, b                                        ; $57c7: $40
	ret  nz                                          ; $57c8: $c0

	rst  $38                                         ; $57c9: $ff
	rst  $30                                         ; $57ca: $f7
	ld   bc, $0100                                   ; $57cb: $01 $00 $01
	nop                                              ; $57ce: $00
	nop                                              ; $57cf: $00
	nop                                              ; $57d0: $00
	nop                                              ; $57d1: $00
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	nop                                              ; $57d6: $00
	ld   b, b                                        ; $57d7: $40
	add  b                                           ; $57d8: $80
	nop                                              ; $57d9: $00
	nop                                              ; $57da: $00
	inc  bc                                          ; $57db: $03
	nop                                              ; $57dc: $00
	nop                                              ; $57dd: $00
	rst  $38                                         ; $57de: $ff
	cp   a                                           ; $57df: $bf
	ld   a, a                                        ; $57e0: $7f
	ldh  [rP1], a                                    ; $57e1: $e0 $00
	ld   a, b                                        ; $57e3: $78
	ld   a, h                                        ; $57e4: $7c
	ld   a, a                                        ; $57e5: $7f

jr_093_57e6:
	rra                                              ; $57e6: $1f
	inc  de                                          ; $57e7: $13
	jr   jr_093_57e6                                 ; $57e8: $18 $fc

	inc  a                                           ; $57ea: $3c
	db   $fc                                         ; $57eb: $fc
	rrca                                             ; $57ec: $0f
	ei                                               ; $57ed: $fb
	rrca                                             ; $57ee: $0f
	ld   a, l                                        ; $57ef: $7d
	adc  a                                           ; $57f0: $8f
	ei                                               ; $57f1: $fb
	rrca                                             ; $57f2: $0f
	ld   [hl], a                                     ; $57f3: $77
	rra                                              ; $57f4: $1f
	ld   a, a                                        ; $57f5: $7f
	rra                                              ; $57f6: $1f
	ccf                                              ; $57f7: $3f
	add  hl, de                                      ; $57f8: $19
	ccf                                              ; $57f9: $3f
	dec  e                                           ; $57fa: $1d
	ldh  [$e0], a                                    ; $57fb: $e0 $e0
	db   $e4                                         ; $57fd: $e4
	db   $e3                                         ; $57fe: $e3

jr_093_57ff:
	and  a                                           ; $57ff: $a7
	rst  $28                                         ; $5800: $ef
	ldh  [$e0], a                                    ; $5801: $e0 $e0
	ldh  [$e0], a                                    ; $5803: $e0 $e0
	ldh  a, [$e1]                                    ; $5805: $f0 $e1
	rst  $30                                         ; $5807: $f7
	and  [hl]                                        ; $5808: $a6
	rst  $30                                         ; $5809: $f7
	ld   hl, $0000                                   ; $580a: $21 $00 $00
	jr   nc, jr_093_57ff                             ; $580d: $30 $f0

	ret  c                                           ; $580f: $d8

	ldh  [$78], a                                    ; $5810: $e0 $78
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	ldh  a, [$e0]                                    ; $5815: $f0 $e0
	ld   b, b                                        ; $5817: $40
	ret  nz                                          ; $5818: $c0

	rst  $38                                         ; $5819: $ff
	rst  $30                                         ; $581a: $f7
	inc  bc                                          ; $581b: $03
	nop                                              ; $581c: $00
	nop                                              ; $581d: $00
	rst  $38                                         ; $581e: $ff
	cp   a                                           ; $581f: $bf
	ld   a, a                                        ; $5820: $7f
	ldh  [rP1], a                                    ; $5821: $e0 $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	ld   a, b                                        ; $5825: $78
	ld   a, h                                        ; $5826: $7c
	rla                                              ; $5827: $17
	dec  de                                          ; $5828: $1b
	rst  $38                                         ; $5829: $ff
	inc  a                                           ; $582a: $3c
	ldh  [$e0], a                                    ; $582b: $e0 $e0
	db   $e4                                         ; $582d: $e4
	db   $e3                                         ; $582e: $e3

jr_093_582f:
	and  a                                           ; $582f: $a7
	rst  $28                                         ; $5830: $ef
	ldh  [$e0], a                                    ; $5831: $e0 $e0
	ldh  [$e0], a                                    ; $5833: $e0 $e0
	ldh  a, [$e0]                                    ; $5835: $f0 $e0
	rst  $30                                         ; $5837: $f7
	and  a                                           ; $5838: $a7
	di                                               ; $5839: $f3
	ld   hl, $0000                                   ; $583a: $21 $00 $00
	jr   nc, jr_093_582f                             ; $583d: $30 $f0

	ret  c                                           ; $583f: $d8

	ldh  [$78], a                                    ; $5840: $e0 $78
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	ld   h, b                                        ; $5845: $60
	nop                                              ; $5846: $00
	ldh  [$e0], a                                    ; $5847: $e0 $e0
	rst  $38                                         ; $5849: $ff
	rst  $30                                         ; $584a: $f7
	inc  bc                                          ; $584b: $03
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	rst  $38                                         ; $584e: $ff
	cp   a                                           ; $584f: $bf
	ld   a, a                                        ; $5850: $7f
	ldh  [rP1], a                                    ; $5851: $e0 $00
	nop                                              ; $5853: $00
	nop                                              ; $5854: $00
	jr   nc, jr_093_5857                             ; $5855: $30 $00

jr_093_5857:
	rra                                              ; $5857: $1f
	rra                                              ; $5858: $1f
	rst  $38                                         ; $5859: $ff
	ld   a, $62                                      ; $585a: $3e $62
	ld   b, d                                        ; $585c: $42
	ld   [hl], h                                     ; $585d: $74
	ld   h, h                                        ; $585e: $64
	ld   hl, sp+$38                                  ; $585f: $f8 $38
	ldh  a, [$e0]                                    ; $5861: $f0 $e0
	ld   sp, hl                                      ; $5863: $f9
	db   $10                                         ; $5864: $10
	ld   [rRAMG], sp                                 ; $5865: $08 $00 $00
	nop                                              ; $5868: $00
	nop                                              ; $5869: $00
	ld   [bc], a                                     ; $586a: $02
	nop                                              ; $586b: $00
	inc  bc                                          ; $586c: $03
	ld   sp, hl                                      ; $586d: $f9
	pop  hl                                          ; $586e: $e1
	ld   sp, hl                                      ; $586f: $f9
	add  hl, de                                      ; $5870: $19
	add  e                                           ; $5871: $83
	add  d                                           ; $5872: $82
	inc  bc                                          ; $5873: $03
	ret  nz                                          ; $5874: $c0

	rst  ToBoot                                         ; $5875: $c7
	ld   bc, $0000                                   ; $5876: $01 $00 $00
	nop                                              ; $5879: $00
	nop                                              ; $587a: $00
	add  b                                           ; $587b: $80
	add  b                                           ; $587c: $80
	add  l                                           ; $587d: $85
	ld   c, $0c                                      ; $587e: $0e $0c
	db   $10                                         ; $5880: $10
	rla                                              ; $5881: $17
	rrca                                             ; $5882: $0f
	nop                                              ; $5883: $00
	nop                                              ; $5884: $00
	adc  b                                           ; $5885: $88
	rlca                                             ; $5886: $07
	nop                                              ; $5887: $00
	nop                                              ; $5888: $00
	nop                                              ; $5889: $00
	nop                                              ; $588a: $00
	nop                                              ; $588b: $00
	inc  bc                                          ; $588c: $03
	ld   d, c                                        ; $588d: $51
	pop  hl                                          ; $588e: $e1
	ld   a, c                                        ; $588f: $79
	ld   de, $e2c3                                   ; $5890: $11 $c3 $e2
	inc  bc                                          ; $5893: $03
	nop                                              ; $5894: $00
	daa                                              ; $5895: $27
	pop  bc                                          ; $5896: $c1
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	pop  hl                                          ; $589b: $e1
	ld   e, a                                        ; $589c: $5f
	db   $e3                                         ; $589d: $e3
	ld   e, l                                        ; $589e: $5d
	rst  $20                                         ; $589f: $e7
	ld   e, c                                        ; $58a0: $59
	pop  hl                                          ; $58a1: $e1
	sbc  $f0                                         ; $58a2: $de $f0
	xor  a                                           ; $58a4: $af
	ld   a, b                                        ; $58a5: $78
	ld   d, a                                        ; $58a6: $57
	ld   a, b                                        ; $58a7: $78
	ld   d, a                                        ; $58a8: $57
	jr   c, jr_093_58e2                              ; $58a9: $38 $37

	sbc  a                                           ; $58ab: $9f
	dec  c                                           ; $58ac: $0d
	db   $fc                                         ; $58ad: $fc
	ld   [$08f8], sp                                 ; $58ae: $08 $f8 $08
	cp   [hl]                                        ; $58b1: $be
	sub  b                                           ; $58b2: $90
	ld   hl, sp+$70                                  ; $58b3: $f8 $70
	ccf                                              ; $58b5: $3f
	jr   jr_093_58d7                                 ; $58b6: $18 $1f

	rlca                                             ; $58b8: $07
	rlca                                             ; $58b9: $07
	nop                                              ; $58ba: $00
	and  $c2                                         ; $58bb: $e6 $c2
	rst  $38                                         ; $58bd: $ff
	ld   b, d                                        ; $58be: $42
	ld   a, a                                        ; $58bf: $7f
	ld   b, d                                        ; $58c0: $42
	halt                                             ; $58c1: $76
	ld   h, h                                        ; $58c2: $64
	ld   hl, sp+$38                                  ; $58c3: $f8 $38
	ldh  a, [$e0]                                    ; $58c5: $f0 $e0
	ld   sp, hl                                      ; $58c7: $f9
	db   $10                                         ; $58c8: $10
	ld   [$3f00], sp                                 ; $58c9: $08 $00 $3f
	jp   z, $ca3f                                    ; $58cc: $ca $3f $ca

	cp   a                                           ; $58cf: $bf
	ld   c, l                                        ; $58d0: $4d
	ccf                                              ; $58d1: $3f
	db   $dd                                         ; $58d2: $dd
	ld   a, a                                        ; $58d3: $7f
	cp   a                                           ; $58d4: $bf
	cp   $6a                                         ; $58d5: $fe $6a

jr_093_58d7:
	cp   $0e                                         ; $58d7: $fe $0e
	db   $fc                                         ; $58d9: $fc
	inc  e                                           ; $58da: $1c
	rst  $20                                         ; $58db: $e7
	ld   b, c                                        ; $58dc: $41
	pop  hl                                          ; $58dd: $e1
	ret  nz                                          ; $58de: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $58df: $f0 $a0
	ld   a, b                                        ; $58e1: $78

jr_093_58e2:
	ld   d, b                                        ; $58e2: $50
	ld   a, b                                        ; $58e3: $78
	ld   d, b                                        ; $58e4: $50
	jr   c, jr_093_5917                              ; $58e5: $38 $30

	jr   jr_093_58f9                                 ; $58e7: $18 $10

	inc  c                                           ; $58e9: $0c
	ld   [$08f8], sp                                 ; $58ea: $08 $f8 $08
	cp   [hl]                                        ; $58ed: $be
	sub  b                                           ; $58ee: $90
	ld   hl, sp+$70                                  ; $58ef: $f8 $70
	ccf                                              ; $58f1: $3f
	jr   jr_093_5913                                 ; $58f2: $18 $1f

	rlca                                             ; $58f4: $07
	rlca                                             ; $58f5: $07
	nop                                              ; $58f6: $00
	nop                                              ; $58f7: $00
	nop                                              ; $58f8: $00

jr_093_58f9:
	nop                                              ; $58f9: $00
	nop                                              ; $58fa: $00
	sbc  a                                           ; $58fb: $9f
	add  a                                           ; $58fc: $87
	sub  b                                           ; $58fd: $90
	jr   c, jr_093_5903                              ; $58fe: $38 $03

	ld   bc, $0207                                   ; $5900: $01 $07 $02

jr_093_5903:
	ld   [bc], a                                     ; $5903: $02
	inc  c                                           ; $5904: $0c
	add  b                                           ; $5905: $80
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	ld   a, a                                        ; $590b: $7f
	ld   b, d                                        ; $590c: $42
	halt                                             ; $590d: $76
	ld   h, h                                        ; $590e: $64
	ld   hl, sp+$38                                  ; $590f: $f8 $38
	ldh  a, [$e0]                                    ; $5911: $f0 $e0

jr_093_5913:
	ld   sp, hl                                      ; $5913: $f9
	db   $10                                         ; $5914: $10
	dec  bc                                          ; $5915: $0b
	ld   [bc], a                                     ; $5916: $02

jr_093_5917:
	ld   bc, $0501                                   ; $5917: $01 $01 $05
	inc  b                                           ; $591a: $04
	ld   sp, hl                                      ; $591b: $f9
	ld   hl, sp+$01                                  ; $591c: $f8 $01
	nop                                              ; $591e: $00
	db   $e3                                         ; $591f: $e3
	add  b                                           ; $5920: $80
	inc  bc                                          ; $5921: $03
	ret  nz                                          ; $5922: $c0

	inc  bc                                          ; $5923: $03
	nop                                              ; $5924: $00
	rlca                                             ; $5925: $07
	ld   bc, $0000                                   ; $5926: $01 $00 $00
	nop                                              ; $5929: $00
	nop                                              ; $592a: $00
	sbc  a                                           ; $592b: $9f
	add  a                                           ; $592c: $87
	sbc  b                                           ; $592d: $98
	jr   nc, jr_093_594f                             ; $592e: $30 $1f

	rrca                                             ; $5930: $0f
	inc  bc                                          ; $5931: $03
	nop                                              ; $5932: $00
	rlca                                             ; $5933: $07
	inc  bc                                          ; $5934: $03
	add  d                                           ; $5935: $82
	inc  c                                           ; $5936: $0c
	nop                                              ; $5937: $00
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	nop                                              ; $593a: $00
	ld   a, a                                        ; $593b: $7f
	ld   b, d                                        ; $593c: $42
	halt                                             ; $593d: $76
	ld   h, h                                        ; $593e: $64
	ld   hl, sp+$38                                  ; $593f: $f8 $38
	ldh  a, [$e0]                                    ; $5941: $f0 $e0
	ld   sp, hl                                      ; $5943: $f9
	db   $10                                         ; $5944: $10
	dec  bc                                          ; $5945: $0b
	ld   [bc], a                                     ; $5946: $02
	ld   bc, $0d01                                   ; $5947: $01 $01 $0d
	inc  a                                           ; $594a: $3c
	dec  a                                           ; $594b: $3d
	call nz, $0809                                   ; $594c: $c4 $09 $08

jr_093_594f:
	di                                               ; $594f: $f3
	ldh  a, [$e3]                                    ; $5950: $f0 $e3
	nop                                              ; $5952: $00
	inc  bc                                          ; $5953: $03
	ret  nz                                          ; $5954: $c0

	rlca                                             ; $5955: $07
	ld   bc, $0000                                   ; $5956: $01 $00 $00
	nop                                              ; $5959: $00
	nop                                              ; $595a: $00
	ldh  [$e0], a                                    ; $595b: $e0 $e0
	db   $e3                                         ; $595d: $e3
	ldh  [$af], a                                    ; $595e: $e0 $af
	rst  $28                                         ; $5960: $ef
	ldh  [$e0], a                                    ; $5961: $e0 $e0
	ldh  [$e0], a                                    ; $5963: $e0 $e0
	di                                               ; $5965: $f3
	pop  hl                                          ; $5966: $e1
	or   $a6                                         ; $5967: $f6 $a6
	pop  af                                          ; $5969: $f1
	jr   nz, jr_093_5985                             ; $596a: $20 $19

	db   $10                                         ; $596c: $10
	ld   l, b                                        ; $596d: $68
	ldh  a, [$30]                                    ; $596e: $f0 $30
	ret  nz                                          ; $5970: $c0

	ld   h, b                                        ; $5971: $60
	nop                                              ; $5972: $00
	ldh  a, [rAUD4LEN]                               ; $5973: $f0 $20
	ldh  a, [$c0]                                    ; $5975: $f0 $c0
	ldh  [$60], a                                    ; $5977: $e0 $60
	rst  $38                                         ; $5979: $ff
	rst  $30                                         ; $597a: $f7
	ld   bc, $0100                                   ; $597b: $01 $00 $01
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	nop                                              ; $5984: $00

jr_093_5985:
	nop                                              ; $5985: $00
	nop                                              ; $5986: $00
	add  b                                           ; $5987: $80
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	add  b                                           ; $598b: $80
	ret  nz                                          ; $598c: $c0

	cp   d                                           ; $598d: $ba
	ld   a, h                                        ; $598e: $7c
	ld   a, c                                        ; $598f: $79
	rlca                                             ; $5990: $07
	pop  hl                                          ; $5991: $e1
	nop                                              ; $5992: $00
	ld   l, b                                        ; $5993: $68
	ld   [hl], b                                     ; $5994: $70
	ld   a, a                                        ; $5995: $7f
	ld   e, $1f                                      ; $5996: $1e $1f
	add  hl, de                                      ; $5998: $19
	db   $fc                                         ; $5999: $fc
	inc  a                                           ; $599a: $3c
	db   $fc                                         ; $599b: $fc
	rrca                                             ; $599c: $0f
	ei                                               ; $599d: $fb
	rrca                                             ; $599e: $0f
	db   $fd                                         ; $599f: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a0: $cf
	ei                                               ; $59a1: $fb
	rrca                                             ; $59a2: $0f
	ld   [hl], a                                     ; $59a3: $77
	rra                                              ; $59a4: $1f
	ld   a, a                                        ; $59a5: $7f
	rra                                              ; $59a6: $1f
	ccf                                              ; $59a7: $3f
	add  hl, de                                      ; $59a8: $19
	ccf                                              ; $59a9: $3f
	dec  e                                           ; $59aa: $1d
	ldh  [$e0], a                                    ; $59ab: $e0 $e0
	db   $e3                                         ; $59ad: $e3
	ldh  [$af], a                                    ; $59ae: $e0 $af
	rst  $28                                         ; $59b0: $ef
	ldh  [$e0], a                                    ; $59b1: $e0 $e0
	ldh  [$e0], a                                    ; $59b3: $e0 $e0
	pop  af                                          ; $59b5: $f1
	ldh  [$f3], a                                    ; $59b6: $e0 $f3
	and  c                                           ; $59b8: $a1
	rst  $30                                         ; $59b9: $f7
	ld   h, $19                                      ; $59ba: $26 $19
	db   $10                                         ; $59bc: $10
	ld   l, b                                        ; $59bd: $68
	ldh  a, [$30]                                    ; $59be: $f0 $30
	ret  nz                                          ; $59c0: $c0

	ld   h, b                                        ; $59c1: $60
	nop                                              ; $59c2: $00
	ld   [hl], b                                     ; $59c3: $70
	nop                                              ; $59c4: $00
	ldh  a, [$60]                                    ; $59c5: $f0 $60
	ldh  [$e0], a                                    ; $59c7: $e0 $e0
	rst  $38                                         ; $59c9: $ff
	rst  $30                                         ; $59ca: $f7
	add  b                                           ; $59cb: $80
	ret  nz                                          ; $59cc: $c0

	cp   d                                           ; $59cd: $ba
	ld   a, h                                        ; $59ce: $7c
	ld   a, c                                        ; $59cf: $79
	rlca                                             ; $59d0: $07
	ldh  [rP1], a                                    ; $59d1: $e0 $00
	ld   [hl], b                                     ; $59d3: $70
	nop                                              ; $59d4: $00
	ld   l, [hl]                                     ; $59d5: $6e
	ld   [hl], b                                     ; $59d6: $70
	rra                                              ; $59d7: $1f
	ld   e, $ff                                      ; $59d8: $1e $ff
	ccf                                              ; $59da: $3f
	db   $fc                                         ; $59db: $fc
	rrca                                             ; $59dc: $0f
	ei                                               ; $59dd: $fb
	rrca                                             ; $59de: $0f
	db   $fd                                         ; $59df: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e0: $cf
	ld   a, e                                        ; $59e1: $7b
	rrca                                             ; $59e2: $0f
	ld   [hl], a                                     ; $59e3: $77
	rra                                              ; $59e4: $1f
	ld   a, a                                        ; $59e5: $7f
	rra                                              ; $59e6: $1f
	ccf                                              ; $59e7: $3f
	add  hl, de                                      ; $59e8: $19
	ccf                                              ; $59e9: $3f
	dec  e                                           ; $59ea: $1d
	ldh  [$e0], a                                    ; $59eb: $e0 $e0
	db   $e3                                         ; $59ed: $e3
	ldh  [$af], a                                    ; $59ee: $e0 $af
	rst  $28                                         ; $59f0: $ef
	ldh  [$e0], a                                    ; $59f1: $e0 $e0
	ldh  [$e0], a                                    ; $59f3: $e0 $e0
	ldh  a, [$e0]                                    ; $59f5: $f0 $e0
	rst  $30                                         ; $59f7: $f7
	and  a                                           ; $59f8: $a7
	di                                               ; $59f9: $f3
	ld   hl, $1019                                   ; $59fa: $21 $19 $10
	ld   l, b                                        ; $59fd: $68
	ldh  a, [$30]                                    ; $59fe: $f0 $30
	ret  nz                                          ; $5a00: $c0

	ld   h, b                                        ; $5a01: $60
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	ld   h, b                                        ; $5a05: $60
	nop                                              ; $5a06: $00
	ldh  a, [$e0]                                    ; $5a07: $f0 $e0
	rst  $38                                         ; $5a09: $ff
	rst  $30                                         ; $5a0a: $f7
	add  b                                           ; $5a0b: $80
	ret  nz                                          ; $5a0c: $c0

	cp   d                                           ; $5a0d: $ba
	ld   a, h                                        ; $5a0e: $7c
	ld   a, c                                        ; $5a0f: $79
	rlca                                             ; $5a10: $07
	ldh  [rP1], a                                    ; $5a11: $e0 $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	jr   nc, jr_093_5a17                             ; $5a15: $30 $00

jr_093_5a17:
	rra                                              ; $5a17: $1f
	rra                                              ; $5a18: $1f
	rst  $38                                         ; $5a19: $ff
	ld   a, $e7                                      ; $5a1a: $3e $e7
	ld   b, c                                        ; $5a1c: $41
	pop  hl                                          ; $5a1d: $e1
	ret  nz                                          ; $5a1e: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $5a1f: $f0 $a0
	ld   a, b                                        ; $5a21: $78
	ld   d, b                                        ; $5a22: $50
	ld   a, b                                        ; $5a23: $78
	ld   d, b                                        ; $5a24: $50
	jr   c, jr_093_5a57                              ; $5a25: $38 $30

	jr   jr_093_5a39                                 ; $5a27: $18 $10

	dec  c                                           ; $5a29: $0d
	add  hl, bc                                      ; $5a2a: $09
	dec  c                                           ; $5a2b: $0d
	add  hl, bc                                      ; $5a2c: $09
	dec  c                                           ; $5a2d: $0d
	ld   [$0406], sp                                 ; $5a2e: $08 $06 $04
	ld   b, $04                                      ; $5a31: $06 $04
	inc  bc                                          ; $5a33: $03
	ld   [bc], a                                     ; $5a34: $02
	inc  bc                                          ; $5a35: $03
	inc  bc                                          ; $5a36: $03
	nop                                              ; $5a37: $00
	nop                                              ; $5a38: $00

jr_093_5a39:
	nop                                              ; $5a39: $00
	nop                                              ; $5a3a: $00
	ld   hl, sp+$08                                  ; $5a3b: $f8 $08
	cp   [hl]                                        ; $5a3d: $be
	sub  b                                           ; $5a3e: $90
	ld   hl, sp+$70                                  ; $5a3f: $f8 $70
	ccf                                              ; $5a41: $3f
	jr   jr_093_5a63                                 ; $5a42: $18 $1f

	rlca                                             ; $5a44: $07
	rlca                                             ; $5a45: $07
	nop                                              ; $5a46: $00
	add  b                                           ; $5a47: $80
	add  b                                           ; $5a48: $80
	and  b                                           ; $5a49: $a0
	jr   nz, jr_093_5aca                             ; $5a4a: $20 $7e

	ccf                                              ; $5a4c: $3f
	jr   nz, jr_093_5a67                             ; $5a4d: $20 $18

	rra                                              ; $5a4f: $1f
	rlca                                             ; $5a50: $07
	nop                                              ; $5a51: $00
	nop                                              ; $5a52: $00
	rlca                                             ; $5a53: $07
	inc  bc                                          ; $5a54: $03
	add  d                                           ; $5a55: $82
	inc  c                                           ; $5a56: $0c

jr_093_5a57:
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	nop                                              ; $5a5a: $00
	ld   a, a                                        ; $5a5b: $7f
	ld   b, d                                        ; $5a5c: $42
	halt                                             ; $5a5d: $76
	ld   h, h                                        ; $5a5e: $64
	ld   hl, sp+$38                                  ; $5a5f: $f8 $38
	ldh  a, [$e0]                                    ; $5a61: $f0 $e0

jr_093_5a63:
	ld   sp, hl                                      ; $5a63: $f9
	db   $10                                         ; $5a64: $10
	dec  bc                                          ; $5a65: $0b
	ld   [bc], a                                     ; $5a66: $02

jr_093_5a67:
	ld   bc, $2901                                   ; $5a67: $01 $01 $29
	inc  e                                           ; $5a6a: $1c
	dec  l                                           ; $5a6b: $2d
	call nz, $0809                                   ; $5a6c: $c4 $09 $08
	di                                               ; $5a6f: $f3
	ldh  a, [$03]                                    ; $5a70: $f0 $03
	nop                                              ; $5a72: $00
	inc  bc                                          ; $5a73: $03
	ret  nz                                          ; $5a74: $c0

	rlca                                             ; $5a75: $07
	ld   bc, $0000                                   ; $5a76: $01 $00 $00
	nop                                              ; $5a79: $00
	nop                                              ; $5a7a: $00
	jr   nz, @+$22                                   ; $5a7b: $20 $20

	ld   a, $1f                                      ; $5a7d: $3e $1f
	nop                                              ; $5a7f: $00

Call_093_5a80:
	nop                                              ; $5a80: $00
	rlca                                             ; $5a81: $07
	inc  bc                                          ; $5a82: $03
	ld   [bc], a                                     ; $5a83: $02
	inc  c                                           ; $5a84: $0c
	add  b                                           ; $5a85: $80
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	nop                                              ; $5a8a: $00
	ld   a, a                                        ; $5a8b: $7f
	ld   b, d                                        ; $5a8c: $42
	halt                                             ; $5a8d: $76
	ld   h, h                                        ; $5a8e: $64
	ld   hl, sp+$38                                  ; $5a8f: $f8 $38
	ldh  a, [$e0]                                    ; $5a91: $f0 $e0
	ld   sp, hl                                      ; $5a93: $f9
	db   $10                                         ; $5a94: $10
	dec  bc                                          ; $5a95: $0b
	ld   [bc], a                                     ; $5a96: $02
	ld   bc, $0101                                   ; $5a97: $01 $01 $01
	nop                                              ; $5a9a: $00
	add  hl, bc                                      ; $5a9b: $09
	jr   jr_093_5acf                                 ; $5a9c: $18 $31

	ret  nz                                          ; $5a9e: $c0

	inc  bc                                          ; $5a9f: $03
	nop                                              ; $5aa0: $00
	inc  bc                                          ; $5aa1: $03
	ret  nz                                          ; $5aa2: $c0

	inc  bc                                          ; $5aa3: $03
	nop                                              ; $5aa4: $00
	rlca                                             ; $5aa5: $07
	ld   bc, $0000                                   ; $5aa6: $01 $00 $00
	nop                                              ; $5aa9: $00
	nop                                              ; $5aaa: $00
	sbc  h                                           ; $5aab: $9c
	ld   [bc], a                                     ; $5aac: $02
	add  [hl]                                        ; $5aad: $86
	nop                                              ; $5aae: $00
	inc  c                                           ; $5aaf: $0c
	rrca                                             ; $5ab0: $0f
	nop                                              ; $5ab1: $00
	ld   [$1800], sp                                 ; $5ab2: $08 $00 $18
	nop                                              ; $5ab5: $00
	jr   nz, jr_093_5ac0                             ; $5ab6: $20 $08

	ld   c, b                                        ; $5ab8: $48
	rlca                                             ; $5ab9: $07
	ld   b, a                                        ; $5aba: $47
	nop                                              ; $5abb: $00
	ld   b, b                                        ; $5abc: $40
	add  b                                           ; $5abd: $80
	nop                                              ; $5abe: $00
	add  b                                           ; $5abf: $80

jr_093_5ac0:
	ld   [bc], a                                     ; $5ac0: $02
	add  b                                           ; $5ac1: $80
	ld   [de], a                                     ; $5ac2: $12
	add  b                                           ; $5ac3: $80
	db   $10                                         ; $5ac4: $10
	inc  bc                                          ; $5ac5: $03
	ld   a, [de]                                     ; $5ac6: $1a
	ld   e, d                                        ; $5ac7: $5a
	inc  de                                          ; $5ac8: $13
	inc  l                                           ; $5ac9: $2c

jr_093_5aca:
	add  a                                           ; $5aca: $87
	nop                                              ; $5acb: $00
	ld   b, $f0                                      ; $5acc: $06 $f0
	nop                                              ; $5ace: $00

jr_093_5acf:
	ld   [$0400], sp                                 ; $5acf: $08 $00 $04
	nop                                              ; $5ad2: $00
	ld   [bc], a                                     ; $5ad3: $02
	add  b                                           ; $5ad4: $80
	ld   [$3001], sp                                 ; $5ad5: $08 $01 $30
	ld   sp, $0084                                   ; $5ad8: $31 $84 $00
	add  b                                           ; $5adb: $80
	add  b                                           ; $5adc: $80
	inc  bc                                          ; $5add: $03
	and  b                                           ; $5ade: $a0
	and  c                                           ; $5adf: $a1
	or   b                                           ; $5ae0: $b0
	ld   c, [hl]                                     ; $5ae1: $4e
	add  c                                           ; $5ae2: $81
	nop                                              ; $5ae3: $00
	ld   [$0001], sp                                 ; $5ae4: $08 $01 $00
	ld   b, $01                                      ; $5ae7: $06 $01
	add  hl, de                                      ; $5ae9: $19
	rlca                                             ; $5aea: $07
	ld   h, a                                        ; $5aeb: $67
	rra                                              ; $5aec: $1f
	sbc  a                                           ; $5aed: $9f
	add  e                                           ; $5aee: $83
	ld   a, a                                        ; $5aef: $7f
	inc  b                                           ; $5af0: $04
	rst  $38                                         ; $5af1: $ff
	jr   c, jr_093_5b6c                              ; $5af2: $38 $78

	rlca                                             ; $5af4: $07
	ld   b, a                                        ; $5af5: $47
	add  e                                           ; $5af6: $83
	ccf                                              ; $5af7: $3f
	ld   [$1e7f], sp                                 ; $5af8: $08 $7f $1e
	ccf                                              ; $5afb: $3f
	nop                                              ; $5afc: $00
	ld   de, $7000                                   ; $5afd: $11 $00 $70
	rrca                                             ; $5b00: $0f
	adc  a                                           ; $5b01: $8f
	add  b                                           ; $5b02: $80
	ld   a, a                                        ; $5b03: $7f
	add  b                                           ; $5b04: $80
	rst  $38                                         ; $5b05: $ff
	add  d                                           ; $5b06: $82
	rst  $30                                         ; $5b07: $f7
	add  b                                           ; $5b08: $80
	rst  $28                                         ; $5b09: $ef
	add  b                                           ; $5b0a: $80
	jp   nz, $3e80                                   ; $5b0b: $c2 $80 $3e

	add  d                                           ; $5b0e: $82
	rst  $38                                         ; $5b0f: $ff
	dec  b                                           ; $5b10: $05
	ldh  a, [rIE]                                    ; $5b11: $f0 $ff
	ret  nz                                          ; $5b13: $c0

	ldh  a, [rP1]                                    ; $5b14: $f0 $00
	ret  nz                                          ; $5b16: $c0

	add  c                                           ; $5b17: $81
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	rst  $38                                         ; $5b1a: $ff
	add  b                                           ; $5b1b: $80
	inc  de                                          ; $5b1c: $13
	add  b                                           ; $5b1d: $80
	rst  JumpTable                                         ; $5b1e: $df
	add  b                                           ; $5b1f: $80
	rst  $28                                         ; $5b20: $ef
	add  b                                           ; $5b21: $80
	ldh  a, [rAUD1LEN]                               ; $5b22: $f0 $11
	di                                               ; $5b24: $f3
	ldh  a, [c]                                      ; $5b25: $f2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b26: $cf
	ret  z                                           ; $5b27: $c8

	ccf                                              ; $5b28: $3f
	ld   hl, $c1d8                                   ; $5b29: $21 $d8 $c1
	rst  ToBoot                                         ; $5b2c: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2d: $cf
	cpl                                              ; $5b2e: $2f
	inc  l                                           ; $5b2f: $2c
	rst  $28                                         ; $5b30: $ef
	rst  $20                                         ; $5b31: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b32: $cf
	reti                                             ; $5b33: $d9


	rra                                              ; $5b34: $1f
	db   $eb                                         ; $5b35: $eb
	add  b                                           ; $5b36: $80
	inc  bc                                          ; $5b37: $03
	ld   c, $0c                                      ; $5b38: $0e $0c
	ld   c, $0f                                      ; $5b3a: $0e $0f
	db   $ec                                         ; $5b3c: $ec
	ldh  a, [$f2]                                    ; $5b3d: $f0 $f2
	ret  nz                                          ; $5b3f: $c0

	call nz, Call_093_4800                           ; $5b40: $c4 $00 $48
	ldh  [$88], a                                    ; $5b43: $e0 $88
	ldh  a, [rLY]                                    ; $5b45: $f0 $44
	ld   hl, sp-$7f                                  ; $5b47: $f8 $81
	ld   a, b                                        ; $5b49: $78
	ld   bc, $c8f8                                   ; $5b4a: $01 $f8 $c8
	add  c                                           ; $5b4d: $81
	ld   hl, sp+$00                                  ; $5b4e: $f8 $00
	adc  h                                           ; $5b50: $8c
	add  c                                           ; $5b51: $81

jr_093_5b52:
	ldh  a, [rP1]                                    ; $5b52: $f0 $00
	nop                                              ; $5b54: $00
	add  c                                           ; $5b55: $81
	ldh  a, [$08]                                    ; $5b56: $f0 $08
	ld   e, b                                        ; $5b58: $58
	nop                                              ; $5b59: $00
	or   b                                           ; $5b5a: $b0
	add  b                                           ; $5b5b: $80
	jp   c, $030f                                    ; $5b5c: $da $0f $03

	rrca                                             ; $5b5f: $0f
	inc  d                                           ; $5b60: $14
	add  c                                           ; $5b61: $81
	rlca                                             ; $5b62: $07
	ld   [$030c], sp                                 ; $5b63: $08 $0c $03
	ld   [bc], a                                     ; $5b66: $02
	nop                                              ; $5b67: $00
	ld   [$0f07], sp                                 ; $5b68: $08 $07 $0f
	nop                                              ; $5b6b: $00

jr_093_5b6c:
	rlca                                             ; $5b6c: $07
	adc  l                                           ; $5b6d: $8d
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	ret  nz                                          ; $5b70: $c0

	add  e                                           ; $5b71: $83
	add  b                                           ; $5b72: $80
	nop                                              ; $5b73: $00
	and  b                                           ; $5b74: $a0
	add  d                                           ; $5b75: $82
	ret  nz                                          ; $5b76: $c0

	add  b                                           ; $5b77: $80
	nop                                              ; $5b78: $00
	inc  bc                                          ; $5b79: $03
	ret  nz                                          ; $5b7a: $c0

	ldh  [rP1], a                                    ; $5b7b: $e0 $00
	ret  nz                                          ; $5b7d: $c0

	sub  d                                           ; $5b7e: $92
	nop                                              ; $5b7f: $00
	add  b                                           ; $5b80: $80
	ld   [bc], a                                     ; $5b81: $02
	add  b                                           ; $5b82: $80
	ld   [de], a                                     ; $5b83: $12
	add  d                                           ; $5b84: $82
	db   $10                                         ; $5b85: $10
	add  d                                           ; $5b86: $82
	ld   de, $1f80                                   ; $5b87: $11 $80 $1f
	add  b                                           ; $5b8a: $80
	rrca                                             ; $5b8b: $0f
	add  [hl]                                        ; $5b8c: $86
	nop                                              ; $5b8d: $00
	add  d                                           ; $5b8e: $82
	ret  nz                                          ; $5b8f: $c0

	add  [hl]                                        ; $5b90: $86
	nop                                              ; $5b91: $00
	add  b                                           ; $5b92: $80
	add  b                                           ; $5b93: $80
	add  b                                           ; $5b94: $80
	and  b                                           ; $5b95: $a0
	add  b                                           ; $5b96: $80
	or   b                                           ; $5b97: $b0
	add  b                                           ; $5b98: $80
	ldh  a, [$80]                                    ; $5b99: $f0 $80
	ret  nz                                          ; $5b9b: $c0

	sbc  b                                           ; $5b9c: $98
	nop                                              ; $5b9d: $00
	add  b                                           ; $5b9e: $80
	rra                                              ; $5b9f: $1f
	adc  a                                           ; $5ba0: $8f
	nop                                              ; $5ba1: $00
	ld   b, $03                                      ; $5ba2: $06 $03
	nop                                              ; $5ba4: $00
	inc  c                                           ; $5ba5: $0c
	nop                                              ; $5ba6: $00
	jr   nc, jr_093_5ba9                             ; $5ba7: $30 $00

jr_093_5ba9:
	ld   b, b                                        ; $5ba9: $40
	add  c                                           ; $5baa: $81
	nop                                              ; $5bab: $00
	ld   [bc], a                                     ; $5bac: $02
	ret  nz                                          ; $5bad: $c0

	ld   [bc], a                                     ; $5bae: $02
	jp   nz, $1880                                   ; $5baf: $c2 $80 $18

	add  d                                           ; $5bb2: $82
	nop                                              ; $5bb3: $00
	dec  b                                           ; $5bb4: $05
	inc  b                                           ; $5bb5: $04
	inc  h                                           ; $5bb6: $24
	inc  b                                           ; $5bb7: $04
	ld   [hl], h                                     ; $5bb8: $74
	rlca                                             ; $5bb9: $07
	cpl                                              ; $5bba: $2f
	add  c                                           ; $5bbb: $81
	inc  bc                                          ; $5bbc: $03
	ld   a, [bc]                                     ; $5bbd: $0a
	rlca                                             ; $5bbe: $07
	ld   bc, $0003                                   ; $5bbf: $01 $03 $00
	pop  af                                          ; $5bc2: $f1
	nop                                              ; $5bc3: $00
	inc  c                                           ; $5bc4: $0c
	ld   h, b                                        ; $5bc5: $60
	ld   h, d                                        ; $5bc6: $62
	jr   nz, jr_093_5bea                             ; $5bc7: $20 $21

	add  b                                           ; $5bc9: $80
	ld   b, b                                        ; $5bca: $40
	add  b                                           ; $5bcb: $80
	add  b                                           ; $5bcc: $80
	add  h                                           ; $5bcd: $84
	nop                                              ; $5bce: $00
	add  b                                           ; $5bcf: $80
	jr   jr_093_5b52                                 ; $5bd0: $18 $80

	adc  h                                           ; $5bd2: $8c
	add  b                                           ; $5bd3: $80
	ld   a, h                                        ; $5bd4: $7c
	add  b                                           ; $5bd5: $80
	dec  a                                           ; $5bd6: $3d
	add  b                                           ; $5bd7: $80
	ld   a, $05                                      ; $5bd8: $3e $05
	db   $fd                                         ; $5bda: $fd
	db   $fc                                         ; $5bdb: $fc
	di                                               ; $5bdc: $f3
	ldh  a, [c]                                      ; $5bdd: $f2
	rrca                                             ; $5bde: $0f
	ldh  a, [$87]                                    ; $5bdf: $f0 $87
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	add  b                                           ; $5be3: $80
	add  l                                           ; $5be4: $85
	nop                                              ; $5be5: $00
	nop                                              ; $5be6: $00
	add  b                                           ; $5be7: $80
	add  c                                           ; $5be8: $81
	nop                                              ; $5be9: $00

jr_093_5bea:
	ld   a, [bc]                                     ; $5bea: $0a
	add  b                                           ; $5beb: $80
	nop                                              ; $5bec: $00
	ret  nz                                          ; $5bed: $c0

	add  b                                           ; $5bee: $80
	ld   h, b                                        ; $5bef: $60
	ret  nz                                          ; $5bf0: $c0

	or   b                                           ; $5bf1: $b0
	ldh  [$58], a                                    ; $5bf2: $e0 $58
	ldh  a, [$98]                                    ; $5bf4: $f0 $98
	sub  c                                           ; $5bf6: $91
	nop                                              ; $5bf7: $00
	inc  b                                           ; $5bf8: $04
	ld   bc, $0200                                   ; $5bf9: $01 $00 $02
	ld   bc, $8305                                   ; $5bfc: $01 $05 $83
	inc  bc                                          ; $5bff: $03
	ld   [de], a                                     ; $5c00: $12
	rlca                                             ; $5c01: $07
	nop                                              ; $5c02: $00
	inc  bc                                          ; $5c03: $03
	nop                                              ; $5c04: $00
	ld   bc, $0200                                   ; $5c05: $01 $00 $02
	ld   bc, $0305                                   ; $5c08: $01 $05 $03
	dec  bc                                          ; $5c0b: $0b
	rlca                                             ; $5c0c: $07
	rla                                              ; $5c0d: $17
	rrca                                             ; $5c0e: $0f
	cpl                                              ; $5c0f: $2f
	rra                                              ; $5c10: $1f
	ld   e, a                                        ; $5c11: $5f
	ccf                                              ; $5c12: $3f
	cp   a                                           ; $5c13: $bf
	add  d                                           ; $5c14: $82
	ld   a, a                                        ; $5c15: $7f
	inc  bc                                          ; $5c16: $03
	ld   h, b                                        ; $5c17: $60
	ld   a, a                                        ; $5c18: $7f
	sbc  a                                           ; $5c19: $9f

jr_093_5c1a:
	add  b                                           ; $5c1a: $80
	add  b                                           ; $5c1b: $80

jr_093_5c1c:
	ret  nz                                          ; $5c1c: $c0

	add  d                                           ; $5c1d: $82
	rst  $38                                         ; $5c1e: $ff
	inc  bc                                          ; $5c1f: $03

jr_093_5c20:
	nop                                              ; $5c20: $00
	rst  $38                                         ; $5c21: $ff
	nop                                              ; $5c22: $00
	rst  $38                                         ; $5c23: $ff
	add  b                                           ; $5c24: $80
	nop                                              ; $5c25: $00
	add  b                                           ; $5c26: $80
	cp   $80                                         ; $5c27: $fe $80
	db   $fc                                         ; $5c29: $fc
	add  b                                           ; $5c2a: $80
	ei                                               ; $5c2b: $fb
	add  b                                           ; $5c2c: $80
	adc  e                                           ; $5c2d: $8b
	add  b                                           ; $5c2e: $80
	ldh  a, [$84]                                    ; $5c2f: $f0 $84
	rst  $38                                         ; $5c31: $ff
	inc  bc                                          ; $5c32: $03
	dec  bc                                          ; $5c33: $0b
	ei                                               ; $5c34: $fb
	rst  $30                                         ; $5c35: $f7
	rlca                                             ; $5c36: $07
	add  b                                           ; $5c37: $80
	dec  bc                                          ; $5c38: $0b
	add  d                                           ; $5c39: $82
	rst  $38                                         ; $5c3a: $ff
	add  hl, bc                                      ; $5c3b: $09
	nop                                              ; $5c3c: $00
	ld   [$273f], sp                                 ; $5c3d: $08 $3f $27
	ld   a, l                                        ; $5c40: $7d
	ld   c, l                                        ; $5c41: $4d
	ei                                               ; $5c42: $fb
	sbc  d                                           ; $5c43: $9a
	rst  $30                                         ; $5c44: $f7
	or   h                                           ; $5c45: $b4
	add  b                                           ; $5c46: $80
	ld   c, a                                        ; $5c47: $4f
	add  b                                           ; $5c48: $80
	scf                                              ; $5c49: $37
	add  b                                           ; $5c4a: $80
	rst  $30                                         ; $5c4b: $f7
	nop                                              ; $5c4c: $00
	ei                                               ; $5c4d: $fb
	add  b                                           ; $5c4e: $80
	ld   sp, hl                                      ; $5c4f: $f9
	nop                                              ; $5c50: $00
	ei                                               ; $5c51: $fb
	add  b                                           ; $5c52: $80
	ld   a, [$f301]                                  ; $5c53: $fa $01 $f3
	ldh  a, [c]                                      ; $5c56: $f2
	add  b                                           ; $5c57: $80
	di                                               ; $5c58: $f3
	add  b                                           ; $5c59: $80
	db   $e3                                         ; $5c5a: $e3
	ld   [bc], a                                     ; $5c5b: $02
	jp   $01c1                                       ; $5c5c: $c3 $c1 $01


	add  b                                           ; $5c5f: $80
	nop                                              ; $5c60: $00
	inc  b                                           ; $5c61: $04

jr_093_5c62:
	sub  a                                           ; $5c62: $97
	ldh  a, [$2c]                                    ; $5c63: $f0 $2c
	ld   hl, sp-$70                                  ; $5c65: $f8 $90
	add  c                                           ; $5c67: $81
	ld   hl, sp+$18                                  ; $5c68: $f8 $18
	ld   c, b                                        ; $5c6a: $48
	ld   hl, sp+$3c                                  ; $5c6b: $f8 $3c
	ldh  a, [$e8]                                    ; $5c6d: $f0 $e8
	ldh  [hScriptOpcodeParams], a                                    ; $5c6f: $e0 $a0
	ret  nz                                          ; $5c71: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $5c72: $e0 $a0
	adc  $40                                         ; $5c74: $ce $40
	ld   e, c                                        ; $5c76: $59
	jp   c, $e4a6                                    ; $5c77: $da $a6 $e4

	ret  nz                                          ; $5c7a: $c0

	ld   a, [$fa02]                                  ; $5c7b: $fa $02 $fa
	ldh  a, [c]                                      ; $5c7e: $f2
	or   $06                                         ; $5c7f: $f6 $06
	nop                                              ; $5c81: $00
	rst  $38                                         ; $5c82: $ff
	add  b                                           ; $5c83: $80
	nop                                              ; $5c84: $00
	add  b                                           ; $5c85: $80
	add  hl, bc                                      ; $5c86: $09
	add  b                                           ; $5c87: $80
	ld   [$0c80], sp                                 ; $5c88: $08 $80 $0c
	add  b                                           ; $5c8b: $80
	ld   b, $80                                      ; $5c8c: $06 $80
	rlca                                             ; $5c8e: $07
	add  b                                           ; $5c8f: $80
	inc  bc                                          ; $5c90: $03
	adc  b                                           ; $5c91: $88
	nop                                              ; $5c92: $00
	add  d                                           ; $5c93: $82
	inc  bc                                          ; $5c94: $03
	add  d                                           ; $5c95: $82

jr_093_5c96:
	nop                                              ; $5c96: $00
	add  b                                           ; $5c97: $80
	jr   nc, jr_093_5c1a                             ; $5c98: $30 $80

	jr   jr_093_5c1c                                 ; $5c9a: $18 $80

	ld   a, b                                        ; $5c9c: $78
	add  b                                           ; $5c9d: $80
	jr   c, jr_093_5c20                              ; $5c9e: $38 $80

	ld   a, h                                        ; $5ca0: $7c
	add  b                                           ; $5ca1: $80
	ld   hl, sp-$80                                  ; $5ca2: $f8 $80
	ldh  [hScriptOpcodeParams+4], a                                    ; $5ca4: $e0 $a4
	nop                                              ; $5ca6: $00
	add  b                                           ; $5ca7: $80
	ld   [bc], a                                     ; $5ca8: $02
	add  b                                           ; $5ca9: $80
	nop                                              ; $5caa: $00
	add  d                                           ; $5cab: $82
	ld   [bc], a                                     ; $5cac: $02
	add  b                                           ; $5cad: $80
	ld   b, $9b                                      ; $5cae: $06 $9b
	nop                                              ; $5cb0: $00
	inc  b                                           ; $5cb1: $04
	ld   a, b                                        ; $5cb2: $78
	nop                                              ; $5cb3: $00
	ld   b, a                                        ; $5cb4: $47
	nop                                              ; $5cb5: $00
	ccf                                              ; $5cb6: $3f
	sub  l                                           ; $5cb7: $95
	nop                                              ; $5cb8: $00
	inc  b                                           ; $5cb9: $04
	inc  bc                                          ; $5cba: $03
	nop                                              ; $5cbb: $00
	inc  b                                           ; $5cbc: $04
	inc  bc                                          ; $5cbd: $03
	dec  bc                                          ; $5cbe: $0b
	add  c                                           ; $5cbf: $81

Jump_093_5cc0:
	rlca                                             ; $5cc0: $07
	ld   [$0008], sp                                 ; $5cc1: $08 $08 $00
	ld   bc, $0200                                   ; $5cc4: $01 $00 $02
	nop                                              ; $5cc7: $00
	ld   [bc], a                                     ; $5cc8: $02
	nop                                              ; $5cc9: $00
	ld   [bc], a                                     ; $5cca: $02
	add  l                                           ; $5ccb: $85
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	ld   [bc], a                                     ; $5cce: $02
	add  l                                           ; $5ccf: $85
	nop                                              ; $5cd0: $00
	ld   [$00c1], sp                                 ; $5cd1: $08 $c1 $00
	jr   nc, jr_093_5c96                             ; $5cd4: $30 $c0

	ret  z                                           ; $5cd6: $c8

	ldh  a, [$f4]                                    ; $5cd7: $f0 $f4
	ld   hl, sp-$05                                  ; $5cd9: $f8 $fb
	add  b                                           ; $5cdb: $80
	nop                                              ; $5cdc: $00
	add  b                                           ; $5cdd: $80
	ld   b, b                                        ; $5cde: $40
	add  b                                           ; $5cdf: $80
	jr   c, jr_093_5c62                              ; $5ce0: $38 $80

	ld   bc, $0080                                   ; $5ce2: $01 $80 $00
	add  b                                           ; $5ce5: $80
	db   $10                                         ; $5ce6: $10
	add  b                                           ; $5ce7: $80
	sub  b                                           ; $5ce8: $90
	add  b                                           ; $5ce9: $80
	add  h                                           ; $5cea: $84
	add  b                                           ; $5ceb: $80
	push de                                          ; $5cec: $d5
	add  b                                           ; $5ced: $80
	sbc  l                                           ; $5cee: $9d
	add  d                                           ; $5cef: $82
	sbc  a                                           ; $5cf0: $9f
	ld   bc, $ff7f                                   ; $5cf1: $01 $7f $ff
	add  b                                           ; $5cf4: $80
	ld   e, $07                                      ; $5cf5: $1e $07
	ld   hl, $0f29                                   ; $5cf7: $21 $29 $0f
	cp   b                                           ; $5cfa: $b8
	nop                                              ; $5cfb: $00
	jr   nz, jr_093_5cfe                             ; $5cfc: $20 $00

jr_093_5cfe:
	db   $10                                         ; $5cfe: $10
	add  b                                           ; $5cff: $80
	ld   b, b                                        ; $5d00: $40
	ld   bc, $8880                                   ; $5d01: $01 $80 $88
	add  a                                           ; $5d04: $87
	nop                                              ; $5d05: $00
	nop                                              ; $5d06: $00
	ld   [$8081], sp                                 ; $5d07: $08 $81 $80
	ld   a, [bc]                                     ; $5d0a: $0a
	sub  b                                           ; $5d0b: $90
	add  b                                           ; $5d0c: $80
	and  b                                           ; $5d0d: $a0
	nop                                              ; $5d0e: $00
	ld   b, b                                        ; $5d0f: $40
	nop                                              ; $5d10: $00
	ld   b, b                                        ; $5d11: $40
	add  b                                           ; $5d12: $80
	ld   h, b                                        ; $5d13: $60
	ret  nz                                          ; $5d14: $c0

	ldh  [$85], a                                    ; $5d15: $e0 $85
	nop                                              ; $5d17: $00
	ld   a, [bc]                                     ; $5d18: $0a
	inc  bc                                          ; $5d19: $03
	nop                                              ; $5d1a: $00
	inc  c                                           ; $5d1b: $0c
	inc  bc                                          ; $5d1c: $03
	inc  de                                          ; $5d1d: $13
	rrca                                             ; $5d1e: $0f
	cpl                                              ; $5d1f: $2f
	ld   e, $1f                                      ; $5d20: $1e $1f
	dec  e                                           ; $5d22: $1d
	ld   e, l                                        ; $5d23: $5d
	add  c                                           ; $5d24: $81
	dec  a                                           ; $5d25: $3d
	nop                                              ; $5d26: $00
	inc  a                                           ; $5d27: $3c
	add  b                                           ; $5d28: $80
	ld   a, $81                                      ; $5d29: $3e $81
	ccf                                              ; $5d2b: $3f
	inc  b                                           ; $5d2c: $04
	ld   a, a                                        ; $5d2d: $7f
	rra                                              ; $5d2e: $1f
	ccf                                              ; $5d2f: $3f
	nop                                              ; $5d30: $00
	rra                                              ; $5d31: $1f
	add  l                                           ; $5d32: $85
	nop                                              ; $5d33: $00
	dec  b                                           ; $5d34: $05
	add  b                                           ; $5d35: $80
	nop                                              ; $5d36: $00
	ld   a, a                                        ; $5d37: $7f
	add  b                                           ; $5d38: $80
	rst  $38                                         ; $5d39: $ff
	ld   a, a                                        ; $5d3a: $7f
	add  [hl]                                        ; $5d3b: $86
	rst  $38                                         ; $5d3c: $ff
	add  c                                           ; $5d3d: $81
	nop                                              ; $5d3e: $00
	add  h                                           ; $5d3f: $84
	rst  $38                                         ; $5d40: $ff
	ld   bc, $e000                                   ; $5d41: $01 $00 $e0
	add  l                                           ; $5d44: $85
	rrca                                             ; $5d45: $0f
	rlca                                             ; $5d46: $07
	rra                                              ; $5d47: $1f
	rlca                                             ; $5d48: $07
	rst  $30                                         ; $5d49: $f7
	inc  bc                                          ; $5d4a: $03
	rst  $38                                         ; $5d4b: $ff
	db   $fd                                         ; $5d4c: $fd
	rst  $38                                         ; $5d4d: $ff
	cp   $80                                         ; $5d4e: $fe $80
	rst  $38                                         ; $5d50: $ff
	add  b                                           ; $5d51: $80
	cp   $02                                         ; $5d52: $fe $02
	db   $fc                                         ; $5d54: $fc
	db   $fd                                         ; $5d55: $fd
	ld   bc, $0380                                   ; $5d56: $01 $80 $03
	add  b                                           ; $5d59: $80
	ei                                               ; $5d5a: $fb
	add  d                                           ; $5d5b: $82
	rst  $38                                         ; $5d5c: $ff
	inc  bc                                          ; $5d5d: $03
	nop                                              ; $5d5e: $00
	ld   bc, $fdfc                                   ; $5d5f: $01 $fc $fd
	add  b                                           ; $5d62: $80
	ld   a, b                                        ; $5d63: $78
	add  b                                           ; $5d64: $80
	or   [hl]                                        ; $5d65: $b6
	add  b                                           ; $5d66: $80
	sub  $80                                         ; $5d67: $d6 $80
	ret  c                                           ; $5d69: $d8

	add  b                                           ; $5d6a: $80
	db   $ec                                         ; $5d6b: $ec
	add  b                                           ; $5d6c: $80
	ldh  a, [$80]                                    ; $5d6d: $f0 $80
	ld   hl, sp-$80                                  ; $5d6f: $f8 $80
	ld   a, h                                        ; $5d71: $7c
	add  b                                           ; $5d72: $80
	sbc  h                                           ; $5d73: $9c
	add  d                                           ; $5d74: $82
	ld   hl, sp-$80                                  ; $5d75: $f8 $80
	ldh  a, [$80]                                    ; $5d77: $f0 $80
	ldh  [$80], a                                    ; $5d79: $e0 $80
	add  b                                           ; $5d7b: $80
	ld   a, [bc]                                     ; $5d7c: $0a
	nop                                              ; $5d7d: $00
	ld   hl, $903f                                   ; $5d7e: $21 $3f $90
	rst  $38                                         ; $5d81: $ff
	ld   bc, $0ffc                                   ; $5d82: $01 $fc $0f
	db   $e3                                         ; $5d85: $e3
	ld   h, l                                        ; $5d86: $65
	rra                                              ; $5d87: $1f
	add  b                                           ; $5d88: $80
	ccf                                              ; $5d89: $3f
	inc  d                                           ; $5d8a: $14
	cpl                                              ; $5d8b: $2f
	ccf                                              ; $5d8c: $3f
	rla                                              ; $5d8d: $17
	sbc  a                                           ; $5d8e: $9f
	add  d                                           ; $5d8f: $82
	ret  nz                                          ; $5d90: $c0

	db   $dd                                         ; $5d91: $dd
	rst  JumpTable                                         ; $5d92: $df
	db   $db                                         ; $5d93: $db
	rst  JumpTable                                         ; $5d94: $df
	call nz, $f9db                                   ; $5d95: $c4 $db $f9
	cp   h                                           ; $5d98: $bc
	db   $e4                                         ; $5d99: $e4
	ld   a, [hl]                                     ; $5d9a: $7e
	ld   [hl-], a                                    ; $5d9b: $32
	dec  a                                           ; $5d9c: $3d
	add  hl, bc                                      ; $5d9d: $09
	nop                                              ; $5d9e: $00
	ld   e, a                                        ; $5d9f: $5f
	adc  c                                           ; $5da0: $89
	ret  nz                                          ; $5da1: $c0

	ld   [bc], a                                     ; $5da2: $02
	and  b                                           ; $5da3: $a0
	add  b                                           ; $5da4: $80
	ldh  [$80], a                                    ; $5da5: $e0 $80
	ld   b, b                                        ; $5da7: $40
	add  c                                           ; $5da8: $81
	ret  nz                                          ; $5da9: $c0

	add  b                                           ; $5daa: $80
	add  b                                           ; $5dab: $80
	nop                                              ; $5dac: $00
	ldh  [$81], a                                    ; $5dad: $e0 $81
	nop                                              ; $5daf: $00
	ld   [bc], a                                     ; $5db0: $02
	ld   b, b                                        ; $5db1: $40
	add  b                                           ; $5db2: $80
	and  b                                           ; $5db3: $a0
	add  b                                           ; $5db4: $80
	ret  nz                                          ; $5db5: $c0

	ld   bc, $e000                                   ; $5db6: $01 $00 $e0
	adc  b                                           ; $5db9: $88
	nop                                              ; $5dba: $00
	add  b                                           ; $5dbb: $80
	db   $10                                         ; $5dbc: $10
	add  b                                           ; $5dbd: $80
	sub  b                                           ; $5dbe: $90
	add  b                                           ; $5dbf: $80
	add  h                                           ; $5dc0: $84
	add  b                                           ; $5dc1: $80
	add  l                                           ; $5dc2: $85
	add  b                                           ; $5dc3: $80
	adc  l                                           ; $5dc4: $8d
	add  b                                           ; $5dc5: $80
	adc  a                                           ; $5dc6: $8f
	add  b                                           ; $5dc7: $80
	sbc  a                                           ; $5dc8: $9f
	add  b                                           ; $5dc9: $80
	ld   a, a                                        ; $5dca: $7f
	add  b                                           ; $5dcb: $80
	ld   e, $94                                      ; $5dcc: $1e $94
	nop                                              ; $5dce: $00
	add  h                                           ; $5dcf: $84
	add  b                                           ; $5dd0: $80
	adc  d                                           ; $5dd1: $8a
	nop                                              ; $5dd2: $00
	add  d                                           ; $5dd3: $82
	ret  nz                                          ; $5dd4: $c0

	or   b                                           ; $5dd5: $b0
	nop                                              ; $5dd6: $00
	add  b                                           ; $5dd7: $80
	db   $10                                         ; $5dd8: $10
	add  b                                           ; $5dd9: $80
	jr   c, jr_093_5ddf                              ; $5dda: $38 $03

	nop                                              ; $5ddc: $00
	rst  $38                                         ; $5ddd: $ff
	nop                                              ; $5dde: $00

jr_093_5ddf:
	ld   a, [hl]                                     ; $5ddf: $7e
	adc  c                                           ; $5de0: $89
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	ld   a, [hl]                                     ; $5de3: $7e
	add  c                                           ; $5de4: $81
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	ld   a, [hl]                                     ; $5de7: $7e
	adc  c                                           ; $5de8: $89
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	ld   a, [hl]                                     ; $5deb: $7e
	add  c                                           ; $5dec: $81
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	ld   a, [hl]                                     ; $5def: $7e
	adc  c                                           ; $5df0: $89
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	ld   a, [hl]                                     ; $5df3: $7e
	add  c                                           ; $5df4: $81
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	ld   a, [hl]                                     ; $5df7: $7e
	adc  c                                           ; $5df8: $89
	nop                                              ; $5df9: $00
	ld   [bc], a                                     ; $5dfa: $02
	ld   a, [hl]                                     ; $5dfb: $7e
	nop                                              ; $5dfc: $00
	rst  $38                                         ; $5dfd: $ff
	add  c                                           ; $5dfe: $81
	nop                                              ; $5dff: $00
	inc  c                                           ; $5e00: $0c
	ld   e, $00                                      ; $5e01: $1e $00
	ld   de, $3000                                   ; $5e03: $11 $00 $30
	nop                                              ; $5e06: $00
	ld   b, b                                        ; $5e07: $40
	db   $10                                         ; $5e08: $10
	sub  b                                           ; $5e09: $90
	ld   c, $8e                                      ; $5e0a: $0e $8e
	nop                                              ; $5e0c: $00
	add  b                                           ; $5e0d: $80
	add  b                                           ; $5e0e: $80
	nop                                              ; $5e0f: $00
	add  b                                           ; $5e10: $80
	inc  b                                           ; $5e11: $04
	add  b                                           ; $5e12: $80
	inc  h                                           ; $5e13: $24
	ld   bc, $a121                                   ; $5e14: $01 $21 $a1
	add  b                                           ; $5e17: $80
	dec  [hl]                                        ; $5e18: $35
	add  d                                           ; $5e19: $82
	daa                                              ; $5e1a: $27
	ld   bc, $403f                                   ; $5e1b: $01 $3f $40
	add  e                                           ; $5e1e: $83
	nop                                              ; $5e1f: $00
	ld   b, $e0                                      ; $5e20: $06 $e0
	nop                                              ; $5e22: $00
	stop                                             ; $5e23: $10 $00
	ld   [$0400], sp                                 ; $5e25: $08 $00 $04
	add  b                                           ; $5e28: $80
	db   $10                                         ; $5e29: $10
	ld   bc, $6260                                   ; $5e2a: $01 $60 $62
	add  [hl]                                        ; $5e2d: $86
	nop                                              ; $5e2e: $00
	ld   bc, $4240                                   ; $5e2f: $01 $40 $42
	add  b                                           ; $5e32: $80
	ld   h, b                                        ; $5e33: $60
	inc  bc                                          ; $5e34: $03
	ldh  [$e4], a                                    ; $5e35: $e0 $e4
	ldh  [rAUD2LOW], a                               ; $5e37: $e0 $18
	add  l                                           ; $5e39: $85
	nop                                              ; $5e3a: $00
	ld   a, [bc]                                     ; $5e3b: $0a
	inc  bc                                          ; $5e3c: $03
	nop                                              ; $5e3d: $00
	inc  c                                           ; $5e3e: $0c
	inc  bc                                          ; $5e3f: $03
	inc  de                                          ; $5e40: $13
	rrca                                             ; $5e41: $0f
	cpl                                              ; $5e42: $2f
	ld   e, $1f                                      ; $5e43: $1e $1f
	dec  e                                           ; $5e45: $1d
	ld   e, l                                        ; $5e46: $5d
	add  c                                           ; $5e47: $81
	dec  a                                           ; $5e48: $3d
	nop                                              ; $5e49: $00
	inc  a                                           ; $5e4a: $3c
	add  b                                           ; $5e4b: $80
	ld   a, $81                                      ; $5e4c: $3e $81
	ccf                                              ; $5e4e: $3f
	inc  b                                           ; $5e4f: $04
	ld   a, a                                        ; $5e50: $7f
	rra                                              ; $5e51: $1f
	ccf                                              ; $5e52: $3f
	nop                                              ; $5e53: $00
	rra                                              ; $5e54: $1f
	add  l                                           ; $5e55: $85
	nop                                              ; $5e56: $00
	dec  b                                           ; $5e57: $05
	add  b                                           ; $5e58: $80
	nop                                              ; $5e59: $00
	ld   a, a                                        ; $5e5a: $7f
	add  b                                           ; $5e5b: $80
	rst  $38                                         ; $5e5c: $ff
	ld   a, a                                        ; $5e5d: $7f
	add  [hl]                                        ; $5e5e: $86
	rst  $38                                         ; $5e5f: $ff
	add  c                                           ; $5e60: $81
	nop                                              ; $5e61: $00
	add  h                                           ; $5e62: $84
	rst  $38                                         ; $5e63: $ff
	ld   bc, $ff00                                   ; $5e64: $01 $00 $ff
	add  e                                           ; $5e67: $83
	nop                                              ; $5e68: $00
	inc  bc                                          ; $5e69: $03
	rlca                                             ; $5e6a: $07
	nop                                              ; $5e6b: $00
	rst  $38                                         ; $5e6c: $ff
	rlca                                             ; $5e6d: $07
	adc  b                                           ; $5e6e: $88
	rst  $38                                         ; $5e6f: $ff
	add  b                                           ; $5e70: $80
	cp   $00                                         ; $5e71: $fe $00

jr_093_5e73:
	nop                                              ; $5e73: $00
	add  b                                           ; $5e74: $80
	ld   bc, $ff84                                   ; $5e75: $01 $84 $ff
	ld   [$ff00], sp                                 ; $5e78: $08 $00 $ff
	nop                                              ; $5e7b: $00
	inc  bc                                          ; $5e7c: $03
	nop                                              ; $5e7d: $00
	inc  a                                           ; $5e7e: $3c
	ld   bc, $3bf9                                   ; $5e7f: $01 $f9 $3b
	adc  b                                           ; $5e82: $88
	ei                                               ; $5e83: $fb
	ld   [bc], a                                     ; $5e84: $02
	db   $e3                                         ; $5e85: $e3
	rst  $20                                         ; $5e86: $e7
	rlca                                             ; $5e87: $07
	add  b                                           ; $5e88: $80
	rra                                              ; $5e89: $1f
	add  d                                           ; $5e8a: $82
	rst  $38                                         ; $5e8b: $ff
	add  b                                           ; $5e8c: $80
	db   $fc                                         ; $5e8d: $fc
	add  b                                           ; $5e8e: $80
	ldh  [$80], a                                    ; $5e8f: $e0 $80
	nop                                              ; $5e91: $00
	add  b                                           ; $5e92: $80
	rra                                              ; $5e93: $1f
	dec  e                                           ; $5e94: $1d
	rst  ToBoot                                         ; $5e95: $c7
	rst  $10                                         ; $5e96: $d7
	ret  nc                                          ; $5e97: $d0

	call c, $dedf                                    ; $5e98: $dc $df $de
	sbc  a                                           ; $5e9b: $9f
	add  d                                           ; $5e9c: $82
	ld   h, b                                        ; $5e9d: $60
	ld   l, [hl]                                     ; $5e9e: $6e
	ld   l, a                                        ; $5e9f: $6f
	ld   h, b                                        ; $5ea0: $60
	xor  a                                           ; $5ea1: $af
	xor  [hl]                                        ; $5ea2: $ae
	rst  ToBoot                                         ; $5ea3: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea4: $cf
	add  sp, -$14                                    ; $5ea5: $e8 $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea7: $cf
	res  1, b                                        ; $5ea8: $cb $88
	cp   c                                           ; $5eaa: $b9
	ccf                                              ; $5eab: $3f
	jr   c, jr_093_5eed                              ; $5eac: $38 $3f

	inc  e                                           ; $5eae: $1c
	rra                                              ; $5eaf: $1f
	ld   [bc], a                                     ; $5eb0: $02
	nop                                              ; $5eb1: $00
	rrca                                             ; $5eb2: $0f
	add  b                                           ; $5eb3: $80
	ret  nz                                          ; $5eb4: $c0

	rlca                                             ; $5eb5: $07
	add  b                                           ; $5eb6: $80
	ldh  [$60], a                                    ; $5eb7: $e0 $60
	ld   [$d0f0], sp                                 ; $5eb9: $08 $f0 $d0
	ld   [hl], b                                     ; $5ebc: $70
	ld   b, h                                        ; $5ebd: $44
	add  b                                           ; $5ebe: $80
	jr   c, @+$05                                    ; $5ebf: $38 $03

	ld   hl, sp+$0c                                  ; $5ec1: $f8 $0c

jr_093_5ec3:
	ldh  a, [rAUD2LOW]                               ; $5ec3: $f0 $18
	add  b                                           ; $5ec5: $80
	ldh  [$09], a                                    ; $5ec6: $e0 $09
	nop                                              ; $5ec8: $00
	ld   d, b                                        ; $5ec9: $50
	ret  nz                                          ; $5eca: $c0

	add  b                                           ; $5ecb: $80
	ld   b, b                                        ; $5ecc: $40
	ldh  [$80], a                                    ; $5ecd: $e0 $80
	nop                                              ; $5ecf: $00
	add  b                                           ; $5ed0: $80
	ret  nz                                          ; $5ed1: $c0

	add  c                                           ; $5ed2: $81
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	add  b                                           ; $5ed5: $80
	add  b                                           ; $5ed6: $80
	nop                                              ; $5ed7: $00
	add  b                                           ; $5ed8: $80
	inc  b                                           ; $5ed9: $04
	add  b                                           ; $5eda: $80
	inc  h                                           ; $5edb: $24
	add  d                                           ; $5edc: $82
	ld   hl, $2382                                   ; $5edd: $21 $82 $23
	add  b                                           ; $5ee0: $80
	ccf                                              ; $5ee1: $3f
	add  b                                           ; $5ee2: $80
	rra                                              ; $5ee3: $1f
	add  b                                           ; $5ee4: $80
	rlca                                             ; $5ee5: $07
	add  h                                           ; $5ee6: $84
	nop                                              ; $5ee7: $00
	add  d                                           ; $5ee8: $82
	ld   h, b                                        ; $5ee9: $60
	add  b                                           ; $5eea: $80
	jr   nz, jr_093_5e73                             ; $5eeb: $20 $86

jr_093_5eed:
	nop                                              ; $5eed: $00
	add  b                                           ; $5eee: $80
	ld   b, b                                        ; $5eef: $40
	add  b                                           ; $5ef0: $80
	ld   h, b                                        ; $5ef1: $60
	add  d                                           ; $5ef2: $82
	ldh  [$80], a                                    ; $5ef3: $e0 $80
	ret  nz                                          ; $5ef5: $c0

	add  b                                           ; $5ef6: $80
	add  b                                           ; $5ef7: $80
	adc  d                                           ; $5ef8: $8a
	nop                                              ; $5ef9: $00
	add  b                                           ; $5efa: $80
	ret  nz                                          ; $5efb: $c0

	add  b                                           ; $5efc: $80
	add  b                                           ; $5efd: $80
	and  l                                           ; $5efe: $a5
	nop                                              ; $5eff: $00
	ld   [bc], a                                     ; $5f00: $02
	ld   bc, $0100                                   ; $5f01: $01 $00 $01
	add  l                                           ; $5f04: $85
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	ld   bc, $0083                                   ; $5f07: $01 $83 $00
	nop                                              ; $5f0a: $00
	ld   bc, $0081                                   ; $5f0b: $01 $81 $00
	ld   [$001e], sp                                 ; $5f0e: $08 $1e $00
	ld   de, $3000                                   ; $5f11: $11 $00 $30
	nop                                              ; $5f14: $00
	ld   b, b                                        ; $5f15: $40
	db   $10                                         ; $5f16: $10
	sub  b                                           ; $5f17: $90
	add  b                                           ; $5f18: $80
	inc  c                                           ; $5f19: $0c
	add  b                                           ; $5f1a: $80
	ld   [bc], a                                     ; $5f1b: $02
	add  b                                           ; $5f1c: $80
	nop                                              ; $5f1d: $00
	inc  bc                                          ; $5f1e: $03
	inc  c                                           ; $5f1f: $0c
	adc  h                                           ; $5f20: $8c
	jr   nz, jr_093_5ec3                             ; $5f21: $20 $a0

	add  b                                           ; $5f23: $80
	ld   l, b                                        ; $5f24: $68
	add  b                                           ; $5f25: $80
	ld   c, d                                        ; $5f26: $4a
	add  b                                           ; $5f27: $80

jr_093_5f28:
	adc  [hl]                                        ; $5f28: $8e
	add  b                                           ; $5f29: $80
	db   $dd                                         ; $5f2a: $dd
	add  b                                           ; $5f2b: $80
	rst  $38                                         ; $5f2c: $ff
	inc  bc                                          ; $5f2d: $03
	ld   a, a                                        ; $5f2e: $7f
	rst  $38                                         ; $5f2f: $ff
	ld   a, $41                                      ; $5f30: $3e $41
	add  c                                           ; $5f32: $81
	nop                                              ; $5f33: $00
	ld   b, $c0                                      ; $5f34: $06 $c0
	nop                                              ; $5f36: $00
	jr   nc, jr_093_5f39                             ; $5f37: $30 $00

jr_093_5f39:
	ld   [$0400], sp                                 ; $5f39: $08 $00 $04
	add  b                                           ; $5f3c: $80
	nop                                              ; $5f3d: $00
	add  b                                           ; $5f3e: $80
	db   $10                                         ; $5f3f: $10
	ld   bc, $6260                                   ; $5f40: $01 $60 $62
	add  l                                           ; $5f43: $85
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	ld   [bc], a                                     ; $5f46: $02
	add  c                                           ; $5f47: $81
	add  b                                           ; $5f48: $80
	inc  b                                           ; $5f49: $04
	add  h                                           ; $5f4a: $84
	nop                                              ; $5f4b: $00
	jr   jr_093_5f4e                                 ; $5f4c: $18 $00

jr_093_5f4e:
	ldh  [$85], a                                    ; $5f4e: $e0 $85
	nop                                              ; $5f50: $00
	ld   a, [bc]                                     ; $5f51: $0a
	inc  bc                                          ; $5f52: $03
	nop                                              ; $5f53: $00
	inc  c                                           ; $5f54: $0c
	inc  bc                                          ; $5f55: $03
	inc  de                                          ; $5f56: $13
	rrca                                             ; $5f57: $0f
	cpl                                              ; $5f58: $2f
	ld   e, $1f                                      ; $5f59: $1e $1f

jr_093_5f5b:
	dec  e                                           ; $5f5b: $1d
	ld   e, l                                        ; $5f5c: $5d
	add  c                                           ; $5f5d: $81
	dec  a                                           ; $5f5e: $3d
	nop                                              ; $5f5f: $00
	inc  a                                           ; $5f60: $3c
	add  b                                           ; $5f61: $80
	ld   a, $81                                      ; $5f62: $3e $81

jr_093_5f64:
	ccf                                              ; $5f64: $3f
	inc  b                                           ; $5f65: $04
	ld   a, a                                        ; $5f66: $7f
	rra                                              ; $5f67: $1f
	ccf                                              ; $5f68: $3f
	nop                                              ; $5f69: $00
	rra                                              ; $5f6a: $1f
	add  l                                           ; $5f6b: $85
	nop                                              ; $5f6c: $00
	dec  b                                           ; $5f6d: $05
	add  b                                           ; $5f6e: $80
	nop                                              ; $5f6f: $00
	ld   a, a                                        ; $5f70: $7f
	add  b                                           ; $5f71: $80
	rst  $38                                         ; $5f72: $ff
	ld   a, a                                        ; $5f73: $7f
	add  [hl]                                        ; $5f74: $86
	rst  $38                                         ; $5f75: $ff
	add  c                                           ; $5f76: $81
	nop                                              ; $5f77: $00
	add  h                                           ; $5f78: $84
	rst  $38                                         ; $5f79: $ff
	rlca                                             ; $5f7a: $07
	nop                                              ; $5f7b: $00
	rst  $38                                         ; $5f7c: $ff
	nop                                              ; $5f7d: $00
	inc  bc                                          ; $5f7e: $03
	nop                                              ; $5f7f: $00
	inc  b                                           ; $5f80: $04
	inc  bc                                          ; $5f81: $03
	dec  bc                                          ; $5f82: $0b
	add  c                                           ; $5f83: $81
	rlca                                             ; $5f84: $07
	ld   bc, $03f7                                   ; $5f85: $01 $f7 $03
	add  b                                           ; $5f88: $80
	di                                               ; $5f89: $f3
	inc  bc                                          ; $5f8a: $03
	rst  $30                                         ; $5f8b: $f7
	push af                                          ; $5f8c: $f5
	rst  $30                                         ; $5f8d: $f7
	or   $80                                         ; $5f8e: $f6 $80
	rst  $30                                         ; $5f90: $f7
	add  b                                           ; $5f91: $80
	ei                                               ; $5f92: $fb
	add  b                                           ; $5f93: $80
	rrca                                             ; $5f94: $0f
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	add  b                                           ; $5f97: $80
	ldh  a, [$82]                                    ; $5f98: $f0 $82
	rst  $38                                         ; $5f9a: $ff
	add  hl, bc                                      ; $5f9b: $09
	nop                                              ; $5f9c: $00
	ret  nz                                          ; $5f9d: $c0

	ld   c, $8e                                      ; $5f9e: $0e $8e
	ld   bc, $9f57                                   ; $5fa0: $01 $57 $9f
	xor  h                                           ; $5fa3: $ac
	ccf                                              ; $5fa4: $3f
	jr   nc, jr_093_5f28                             ; $5fa5: $30 $81

	cp   a                                           ; $5fa7: $bf
	ld   [$de8f], sp                                 ; $5fa8: $08 $8f $de
	adc  $ee                                         ; $5fab: $ce $ee
	db   $e4                                         ; $5fad: $e4
	pop  hl                                          ; $5fae: $e1
	ldh  [$5b], a                                    ; $5faf: $e0 $5b
	ld   e, d                                        ; $5fb1: $5a

jr_093_5fb2:
	add  b                                           ; $5fb2: $80
	ld   e, e                                        ; $5fb3: $5b
	rrca                                             ; $5fb4: $0f
	ld   h, b                                        ; $5fb5: $60
	ld   h, c                                        ; $5fb6: $61
	db   $fd                                         ; $5fb7: $fd
	db   $fc                                         ; $5fb8: $fc
	db   $fd                                         ; $5fb9: $fd
	cp   $fb                                         ; $5fba: $fe $fb
	ld   hl, sp+$00                                  ; $5fbc: $f8 $00
	ld   l, a                                        ; $5fbe: $6f
	ld   h, b                                        ; $5fbf: $60
	jr   z, jr_093_5fb2                              ; $5fc0: $28 $f0

	ld   b, b                                        ; $5fc2: $40
	ldh  a, [$34]                                    ; $5fc3: $f0 $34
	add  b                                           ; $5fc5: $80
	ld   hl, sp-$7f                                  ; $5fc6: $f8 $81
	ld   a, b                                        ; $5fc8: $78
	nop                                              ; $5fc9: $00
	ld   a, h                                        ; $5fca: $7c
	add  c                                           ; $5fcb: $81
	ldh  a, [rTAC]                                   ; $5fcc: $f0 $07
	ld   [$00e0], sp                                 ; $5fce: $08 $e0 $00
	ret  nz                                          ; $5fd1: $c0

	nop                                              ; $5fd2: $00
	and  b                                           ; $5fd3: $a0
	ld   [hl], b                                     ; $5fd4: $70
	ld   b, b                                        ; $5fd5: $40
	add  b                                           ; $5fd6: $80
	ret  nz                                          ; $5fd7: $c0

	inc  bc                                          ; $5fd8: $03
	jr   nz, jr_093_5f5b                             ; $5fd9: $20 $80

	nop                                              ; $5fdb: $00
	add  b                                           ; $5fdc: $80
	add  b                                           ; $5fdd: $80
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	ret  nz                                          ; $5fe0: $c0

	add  b                                           ; $5fe1: $80
	jr   nz, jr_093_5f64                             ; $5fe2: $20 $80

	ld   c, b                                        ; $5fe4: $48
	add  b                                           ; $5fe5: $80
	ld   b, d                                        ; $5fe6: $42
	add  b                                           ; $5fe7: $80
	add  [hl]                                        ; $5fe8: $86
	add  b                                           ; $5fe9: $80
	db   $dd                                         ; $5fea: $dd
	add  b                                           ; $5feb: $80
	rst  $38                                         ; $5fec: $ff
	add  b                                           ; $5fed: $80
	ld   a, a                                        ; $5fee: $7f
	add  b                                           ; $5fef: $80
	ld   a, $80                                      ; $5ff0: $3e $80
	ld   c, $94                                      ; $5ff2: $0e $94
	nop                                              ; $5ff4: $00
	add  d                                           ; $5ff5: $82
	add  b                                           ; $5ff6: $80
	sub  h                                           ; $5ff7: $94
	nop                                              ; $5ff8: $00
	add  d                                           ; $5ff9: $82
	jr   @-$51                                       ; $5ffa: $18 $ad

	nop                                              ; $5ffc: $00
	ld   [bc], a                                     ; $5ffd: $02
	rrca                                             ; $5ffe: $0f
	nop                                              ; $5fff: $00
	db   $10                                         ; $6000: $10
	add  b                                           ; $6001: $80
	dec  b                                           ; $6002: $05
	add  b                                           ; $6003: $80
	dec  bc                                          ; $6004: $0b
	inc  bc                                          ; $6005: $03
	rrca                                             ; $6006: $0f
	rra                                              ; $6007: $1f
	ld   b, $09                                      ; $6008: $06 $09
	sub  e                                           ; $600a: $93
	nop                                              ; $600b: $00
	ld   b, $0f                                      ; $600c: $06 $0f
	nop                                              ; $600e: $00
	adc  b                                           ; $600f: $88
	nop                                              ; $6010: $00
	jr   jr_093_6013                                 ; $6011: $18 $00

jr_093_6013:
	ld   h, b                                        ; $6013: $60
	add  b                                           ; $6014: $80
	ld   [$0601], sp                                 ; $6015: $08 $01 $06
	ld   sp, hl                                      ; $6018: $f9
	sub  l                                           ; $6019: $95
	nop                                              ; $601a: $00
	ld   a, [bc]                                     ; $601b: $0a
	add  b                                           ; $601c: $80
	nop                                              ; $601d: $00
	ld   h, b                                        ; $601e: $60
	nop                                              ; $601f: $00
	jr   jr_093_6022                                 ; $6020: $18 $00

jr_093_6022:
	inc  b                                           ; $6022: $04
	nop                                              ; $6023: $00
	di                                               ; $6024: $f3
	nop                                              ; $6025: $00
	dec  b                                           ; $6026: $05
	add  c                                           ; $6027: $81
	rlca                                             ; $6028: $07
	nop                                              ; $6029: $00
	dec  bc                                          ; $602a: $0b
	add  c                                           ; $602b: $81
	inc  bc                                          ; $602c: $03
	ld   [bc], a                                     ; $602d: $02
	ld   [bc], a                                     ; $602e: $02
	inc  bc                                          ; $602f: $03
	rlca                                             ; $6030: $07
	add  e                                           ; $6031: $83
	ld   bc, $0300                                   ; $6032: $01 $00 $03
	add  c                                           ; $6035: $81
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	ld   bc, $0081                                   ; $6038: $01 $81 $00
	ld   b, $07                                      ; $603b: $06 $07
	nop                                              ; $603d: $00
	jr   jr_093_6047                                 ; $603e: $18 $07

	daa                                              ; $6040: $27
	rra                                              ; $6041: $1f
	rst  JumpTable                                         ; $6042: $df
	add  b                                           ; $6043: $80
	add  c                                           ; $6044: $81
	add  b                                           ; $6045: $80
	add  b                                           ; $6046: $80

jr_093_6047:
	ld   bc, $0686                                   ; $6047: $01 $86 $06
	add  b                                           ; $604a: $80
	ret  nc                                          ; $604b: $d0

	add  b                                           ; $604c: $80
	or   h                                           ; $604d: $b4
	ld   bc, $25a5                                   ; $604e: $01 $a5 $25
	add  b                                           ; $6051: $80
	ld   h, l                                        ; $6052: $65
	ld   de, $ef6f                                   ; $6053: $11 $6f $ef
	cp   [hl]                                        ; $6056: $be
	ld   a, [hl]                                     ; $6057: $7e
	rst  JumpTable                                         ; $6058: $df
	ccf                                              ; $6059: $3f
	rst  $20                                         ; $605a: $e7
	ld   [hl], a                                     ; $605b: $77
	ld   [hl], b                                     ; $605c: $70
	jp   $f81f                                       ; $605d: $c3 $1f $f8


	ld   a, a                                        ; $6060: $7f
	ld   d, d                                        ; $6061: $52
	ld   a, a                                        ; $6062: $7f
	inc  h                                           ; $6063: $24
	ld   a, a                                        ; $6064: $7f
	ld   l, h                                        ; $6065: $6c
	add  b                                           ; $6066: $80
	nop                                              ; $6067: $00
	add  b                                           ; $6068: $80
	ld   [$3001], sp                                 ; $6069: $08 $01 $30
	ld   sp, $0085                                   ; $606c: $31 $85 $00
	nop                                              ; $606f: $00
	ld   bc, $0080                                   ; $6070: $01 $80 $00
	dec  b                                           ; $6073: $05
	ret  nz                                          ; $6074: $c0

	jp   nz, $8c80                                   ; $6075: $c2 $80 $8c

	nop                                              ; $6078: $00
	jr   nc, @-$7e                                   ; $6079: $30 $80

	nop                                              ; $607b: $00
	add  c                                           ; $607c: $81
	add  b                                           ; $607d: $80
	inc  b                                           ; $607e: $04
	and  b                                           ; $607f: $a0
	ret  nz                                          ; $6080: $c0

	ld   b, b                                        ; $6081: $40
	ret  nz                                          ; $6082: $c0

	and  b                                           ; $6083: $a0
	add  l                                           ; $6084: $85
	nop                                              ; $6085: $00
	ld   a, [bc]                                     ; $6086: $0a
	inc  bc                                          ; $6087: $03
	nop                                              ; $6088: $00
	inc  c                                           ; $6089: $0c
	inc  bc                                          ; $608a: $03
	inc  de                                          ; $608b: $13
	rrca                                             ; $608c: $0f
	cpl                                              ; $608d: $2f
	ld   e, $1f                                      ; $608e: $1e $1f
	dec  e                                           ; $6090: $1d
	ld   e, l                                        ; $6091: $5d
	add  c                                           ; $6092: $81

jr_093_6093:
	dec  a                                           ; $6093: $3d
	nop                                              ; $6094: $00
	inc  a                                           ; $6095: $3c
	add  b                                           ; $6096: $80
	ld   a, $81                                      ; $6097: $3e $81
	ccf                                              ; $6099: $3f
	inc  b                                           ; $609a: $04
	ld   a, a                                        ; $609b: $7f
	rra                                              ; $609c: $1f
	ccf                                              ; $609d: $3f
	nop                                              ; $609e: $00
	rra                                              ; $609f: $1f
	add  l                                           ; $60a0: $85
	nop                                              ; $60a1: $00
	dec  b                                           ; $60a2: $05
	add  b                                           ; $60a3: $80
	nop                                              ; $60a4: $00
	ld   a, a                                        ; $60a5: $7f
	add  b                                           ; $60a6: $80
	rst  $38                                         ; $60a7: $ff
	ld   a, a                                        ; $60a8: $7f
	add  [hl]                                        ; $60a9: $86

jr_093_60aa:
	rst  $38                                         ; $60aa: $ff
	add  c                                           ; $60ab: $81
	nop                                              ; $60ac: $00
	add  h                                           ; $60ad: $84
	rst  $38                                         ; $60ae: $ff
	ld   bc, $c000                                   ; $60af: $01 $00 $c0
	add  b                                           ; $60b2: $80
	dec  e                                           ; $60b3: $1d
	inc  c                                           ; $60b4: $0c
	ld   e, $3e                                      ; $60b5: $1e $3e
	rrca                                             ; $60b7: $0f
	cpl                                              ; $60b8: $2f
	rrca                                             ; $60b9: $0f
	ld   a, a                                        ; $60ba: $7f
	scf                                              ; $60bb: $37
	cp   a                                           ; $60bc: $bf
	dec  sp                                          ; $60bd: $3b
	cp   a                                           ; $60be: $bf
	cp   l                                           ; $60bf: $bd
	cp   a                                           ; $60c0: $bf
	cp   [hl]                                        ; $60c1: $be
	add  b                                           ; $60c2: $80
	rst  JumpTable                                         ; $60c3: $df
	add  b                                           ; $60c4: $80
	rst  $38                                         ; $60c5: $ff
	add  b                                           ; $60c6: $80
	db   $fc                                         ; $60c7: $fc
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	add  b                                           ; $60ca: $80
	inc  bc                                          ; $60cb: $03
	add  d                                           ; $60cc: $82
	rst  $38                                         ; $60cd: $ff
	add  b                                           ; $60ce: $80
	cp   $04                                         ; $60cf: $fe $04
	nop                                              ; $60d1: $00
	inc  h                                           ; $60d2: $24
	ld   a, l                                        ; $60d3: $7d
	ld   [hl], c                                     ; $60d4: $71
	ld   a, h                                        ; $60d5: $7c
	add  b                                           ; $60d6: $80
	ld   a, l                                        ; $60d7: $7d
	ld   [$bf7f], sp                                 ; $60d8: $08 $7f $bf
	sbc  [hl]                                        ; $60db: $9e
	rst  JumpTable                                         ; $60dc: $df
	rst  $10                                         ; $60dd: $d7
	rst  $20                                         ; $60de: $e7
	push hl                                          ; $60df: $e5
	pop  af                                          ; $60e0: $f1
	di                                               ; $60e1: $f3
	add  b                                           ; $60e2: $80
	or   $01                                         ; $60e3: $f6 $01
	ld   a, d                                        ; $60e5: $7a
	ld   a, b                                        ; $60e6: $78
	add  b                                           ; $60e7: $80
	ld   a, d                                        ; $60e8: $7a
	nop                                              ; $60e9: $00
	ld   hl, sp-$80                                  ; $60ea: $f8 $80
	ei                                               ; $60ec: $fb
	dec  b                                           ; $60ed: $05
	rst  $38                                         ; $60ee: $ff
	rst  $30                                         ; $60ef: $f7
	ld   hl, sp-$31                                  ; $60f0: $f8 $cf
	ret  nz                                          ; $60f2: $c0

	rlca                                             ; $60f3: $07
	add  b                                           ; $60f4: $80
	nop                                              ; $60f5: $00
	ld   [$e08f], sp                                 ; $60f6: $08 $8f $e0
	ld   h, b                                        ; $60f9: $60
	ldh  [$a8], a                                    ; $60fa: $e0 $a8
	ld   [hl], b                                     ; $60fc: $70
	jr   nc, jr_093_616f                             ; $60fd: $30 $70

	ldh  a, [$80]                                    ; $60ff: $f0 $80
	add  b                                           ; $6101: $80
	add  c                                           ; $6102: $81
	or   b                                           ; $6103: $b0
	ld   [bc], a                                     ; $6104: $02
	ld   a, b                                        ; $6105: $78
	nop                                              ; $6106: $00
	or   b                                           ; $6107: $b0
	add  e                                           ; $6108: $83
	nop                                              ; $6109: $00
	rlca                                             ; $610a: $07
	ret  nz                                          ; $610b: $c0

	nop                                              ; $610c: $00
	ldh  [$c0], a                                    ; $610d: $e0 $c0
	ld   b, b                                        ; $610f: $40
	ret  nz                                          ; $6110: $c0

	jr   nz, jr_093_6093                             ; $6111: $20 $80

	add  b                                           ; $6113: $80
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	ret  nz                                          ; $6116: $c0

	add  [hl]                                        ; $6117: $86
	nop                                              ; $6118: $00
	add  b                                           ; $6119: $80
	dec  b                                           ; $611a: $05
	add  b                                           ; $611b: $80
	dec  bc                                          ; $611c: $0b
	add  b                                           ; $611d: $80
	rrca                                             ; $611e: $0f
	add  b                                           ; $611f: $80
	ld   b, $92                                      ; $6120: $06 $92
	nop                                              ; $6122: $00
	add  b                                           ; $6123: $80
	ld   b, $80                                      ; $6124: $06 $80
	db   $10                                         ; $6126: $10
	add  b                                           ; $6127: $80
	jr   nz, jr_093_60aa                             ; $6128: $20 $80

	ld   hl, $6180                                   ; $612a: $21 $80 $61
	add  b                                           ; $612d: $80

jr_093_612e:
	ld   l, a                                        ; $612e: $6f
	add  b                                           ; $612f: $80
	ld   a, $80                                      ; $6130: $3e $80
	rra                                              ; $6132: $1f
	add  b                                           ; $6133: $80
	rrca                                             ; $6134: $0f
	sub  [hl]                                        ; $6135: $96
	nop                                              ; $6136: $00
	add  b                                           ; $6137: $80
	ld   b, b                                        ; $6138: $40
	add  b                                           ; $6139: $80
	ret  nz                                          ; $613a: $c0

	add  b                                           ; $613b: $80
	add  b                                           ; $613c: $80
	sub  h                                           ; $613d: $94
	nop                                              ; $613e: $00
	add  d                                           ; $613f: $82
	jr   nc, @-$55                                   ; $6140: $30 $a9

	nop                                              ; $6142: $00
	ld   [bc], a                                     ; $6143: $02
	ld   c, $00                                      ; $6144: $0e $00
	ld   de, $0e80                                   ; $6146: $11 $80 $0e
	ld   bc, $1708                                   ; $6149: $01 $08 $17
	sub  e                                           ; $614c: $93
	nop                                              ; $614d: $00
	ld   b, $0f                                      ; $614e: $06 $0f
	nop                                              ; $6150: $00
	ld   [$7800], sp                                 ; $6151: $08 $00 $78
	nop                                              ; $6154: $00
	add  b                                           ; $6155: $80
	add  b                                           ; $6156: $80
	ld   [$0601], sp                                 ; $6157: $08 $01 $06
	and  $81                                         ; $615a: $e6 $81
	rrca                                             ; $615c: $0f
	ld   b, $1f                                      ; $615d: $06 $1f
	nop                                              ; $615f: $00
	inc  b                                           ; $6160: $04
	rlca                                             ; $6161: $07
	ld   [bc], a                                     ; $6162: $02
	rlca                                             ; $6163: $07
	inc  b                                           ; $6164: $04
	add  c                                           ; $6165: $81
	rlca                                             ; $6166: $07
	nop                                              ; $6167: $00
	rrca                                             ; $6168: $0f
	add  e                                           ; $6169: $83
	inc  bc                                          ; $616a: $03
	inc  c                                           ; $616b: $0c
	ld   [bc], a                                     ; $616c: $02
	inc  bc                                          ; $616d: $03
	dec  b                                           ; $616e: $05

jr_093_616f:
	ld   bc, $0002                                   ; $616f: $01 $02 $00
	ld   b, $00                                      ; $6172: $06 $00
	jr   @+$09                                       ; $6174: $18 $07

	daa                                              ; $6176: $27
	rra                                              ; $6177: $1f
	ld   e, a                                        ; $6178: $5f
	add  b                                           ; $6179: $80
	add  c                                           ; $617a: $81
	ld   bc, $0080                                   ; $617b: $01 $80 $00
	add  b                                           ; $617e: $80
	add  [hl]                                        ; $617f: $86
	ld   bc, $1090                                   ; $6180: $01 $90 $10
	add  b                                           ; $6183: $80
	or   h                                           ; $6184: $b4
	ld   bc, $25a5                                   ; $6185: $01 $a5 $25
	add  b                                           ; $6188: $80
	ld   h, l                                        ; $6189: $65
	ld   de, $ef6f                                   ; $618a: $11 $6f $ef
	cp   [hl]                                        ; $618d: $be
	cp   $df                                         ; $618e: $fe $df
	ld   a, a                                        ; $6190: $7f
	rst  $28                                         ; $6191: $ef
	adc  a                                           ; $6192: $8f
	ldh  [$63], a                                    ; $6193: $e0 $63
	rra                                              ; $6195: $1f
	ld   hl, sp+$7f                                  ; $6196: $f8 $7f
	ld   d, d                                        ; $6198: $52
	ld   a, a                                        ; $6199: $7f
	inc  h                                           ; $619a: $24
	ld   a, a                                        ; $619b: $7f
	sub  d                                           ; $619c: $92
	adc  d                                           ; $619d: $8a
	nop                                              ; $619e: $00
	add  b                                           ; $619f: $80
	ld   c, $80                                      ; $61a0: $0e $80
	ld   [$0f82], sp                                 ; $61a2: $08 $82 $0f
	adc  [hl]                                        ; $61a5: $8e
	nop                                              ; $61a6: $00
	add  b                                           ; $61a7: $80
	ld   b, $80                                      ; $61a8: $06 $80
	db   $10                                         ; $61aa: $10
	add  b                                           ; $61ab: $80
	jr   nz, jr_093_612e                             ; $61ac: $20 $80

	ld   hl, $6180                                   ; $61ae: $21 $80 $61
	add  b                                           ; $61b1: $80
	ld   l, a                                        ; $61b2: $6f
	add  b                                           ; $61b3: $80
	ld   a, [hl]                                     ; $61b4: $7e
	add  b                                           ; $61b5: $80
	ccf                                              ; $61b6: $3f
	add  b                                           ; $61b7: $80
	rrca                                             ; $61b8: $0f
	or   e                                           ; $61b9: $b3
	nop                                              ; $61ba: $00
	inc  b                                           ; $61bb: $04
	ld   bc, $0200                                   ; $61bc: $01 $00 $02
	ld   bc, $8905                                   ; $61bf: $01 $05 $89
	inc  bc                                          ; $61c2: $03
	inc  b                                           ; $61c3: $04
	rlca                                             ; $61c4: $07
	ld   bc, $0003                                   ; $61c5: $01 $03 $00
	ld   bc, $0085                                   ; $61c8: $01 $85 $00
	ld   b, $03                                      ; $61cb: $06 $03
	nop                                              ; $61cd: $00
	ld   a, a                                        ; $61ce: $7f
	inc  bc                                          ; $61cf: $03
	sbc  a                                           ; $61d0: $9f
	ld   e, a                                        ; $61d1: $5f
	ld   a, a                                        ; $61d2: $7f
	add  l                                           ; $61d3: $85
	cp   a                                           ; $61d4: $bf

jr_093_61d5:
	nop                                              ; $61d5: $00
	add  b                                           ; $61d6: $80
	add  b                                           ; $61d7: $80
	ret  nz                                          ; $61d8: $c0

	add  h                                           ; $61d9: $84
	rst  $38                                         ; $61da: $ff
	ld   bc, $ff00                                   ; $61db: $01 $00 $ff
	add  c                                           ; $61de: $81
	nop                                              ; $61df: $00
	dec  b                                           ; $61e0: $05
	inc  bc                                          ; $61e1: $03
	nop                                              ; $61e2: $00
	ccf                                              ; $61e3: $3f
	inc  bc                                          ; $61e4: $03
	rst  $38                                         ; $61e5: $ff
	ccf                                              ; $61e6: $3f
	adc  d                                           ; $61e7: $8a
	rst  $38                                         ; $61e8: $ff
	add  c                                           ; $61e9: $81
	nop                                              ; $61ea: $00
	add  h                                           ; $61eb: $84
	rst  $38                                         ; $61ec: $ff
	ld   [$ff00], sp                                 ; $61ed: $08 $00 $ff
	nop                                              ; $61f0: $00
	ld   [hl], b                                     ; $61f1: $70
	nop                                              ; $61f2: $00
	cp   $70                                         ; $61f3: $fe $70
	rst  $28                                         ; $61f5: $ef
	xor  $80                                         ; $61f6: $ee $80
	sbc  $00                                         ; $61f8: $de $00
	db   $fc                                         ; $61fa: $fc
	add  a                                           ; $61fb: $87
	db   $fd                                         ; $61fc: $fd
	nop                                              ; $61fd: $00
	ld   bc, $0380                                   ; $61fe: $01 $80 $03
	add  h                                           ; $6201: $84
	rst  $38                                         ; $6202: $ff
	add  b                                           ; $6203: $80
	ret  nz                                          ; $6204: $c0

	ld   bc, $ff00                                   ; $6205: $01 $00 $ff
	add  c                                           ; $6208: $81
	nop                                              ; $6209: $00
	inc  b                                           ; $620a: $04
	db   $e3                                         ; $620b: $e3
	nop                                              ; $620c: $00
	rla                                              ; $620d: $17
	db   $e3                                         ; $620e: $e3
	rst  $28                                         ; $620f: $ef
	add  e                                           ; $6210: $83
	rst  $20                                         ; $6211: $e7
	add  d                                           ; $6212: $82
	rst  $28                                         ; $6213: $ef
	add  d                                           ; $6214: $82
	rst  $20                                         ; $6215: $e7
	add  b                                           ; $6216: $80
	db   $e3                                         ; $6217: $e3
	nop                                              ; $6218: $00
	ldh  [$80], a                                    ; $6219: $e0 $80
	ret  nz                                          ; $621b: $c0

	add  b                                           ; $621c: $80
	add  b                                           ; $621d: $80
	add  c                                           ; $621e: $81
	nop                                              ; $621f: $00
	dec  b                                           ; $6220: $05
	rst  $38                                         ; $6221: $ff
	nop                                              ; $6222: $00
	dec  a                                           ; $6223: $3d
	nop                                              ; $6224: $00
	jp   nz, $8300                                   ; $6225: $c2 $00 $83

	or   b                                           ; $6228: $b0
	nop                                              ; $6229: $00
	or   c                                           ; $622a: $b1
	add  b                                           ; $622b: $80
	ld   sp, hl                                      ; $622c: $f9
	add  b                                           ; $622d: $80
	add  c                                           ; $622e: $81
	ld   bc, $e0e1                                   ; $622f: $01 $e1 $e0
	add  b                                           ; $6232: $80
	nop                                              ; $6233: $00
	add  b                                           ; $6234: $80
	ret  nz                                          ; $6235: $c0

	add  b                                           ; $6236: $80
	adc  a                                           ; $6237: $8f
	add  b                                           ; $6238: $80
	db   $10                                         ; $6239: $10
	add  b                                           ; $623a: $80
	rrca                                             ; $623b: $0f
	add  d                                           ; $623c: $82
	rra                                              ; $623d: $1f
	nop                                              ; $623e: $00
	rst  $38                                         ; $623f: $ff
	add  c                                           ; $6240: $81
	nop                                              ; $6241: $00
	ld   [bc], a                                     ; $6242: $02
	add  b                                           ; $6243: $80
	nop                                              ; $6244: $00
	ld   b, b                                        ; $6245: $40
	add  b                                           ; $6246: $80
	nop                                              ; $6247: $00
	dec  b                                           ; $6248: $05
	add  b                                           ; $6249: $80
	sbc  b                                           ; $624a: $98
	nop                                              ; $624b: $00
	jr   z, jr_093_624e                              ; $624c: $28 $00

jr_093_624e:
	db   $10                                         ; $624e: $10
	add  l                                           ; $624f: $85
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	jr   nz, jr_093_61d5                             ; $6252: $20 $81

	nop                                              ; $6254: $00
	ld   [bc], a                                     ; $6255: $02
	ldh  [$c0], a                                    ; $6256: $e0 $c0
	ldh  a, [$81]                                    ; $6258: $f0 $81
	ldh  [rP1], a                                    ; $625a: $e0 $00
	ldh  a, [$87]                                    ; $625c: $f0 $87
	nop                                              ; $625e: $00
	ld   [bc], a                                     ; $625f: $02
	rlca                                             ; $6260: $07
	nop                                              ; $6261: $00
	ld   [$0781], sp                                 ; $6262: $08 $81 $07
	ld   [bc], a                                     ; $6265: $02
	scf                                              ; $6266: $37
	rlca                                             ; $6267: $07
	ld   [hl], a                                     ; $6268: $77
	add  c                                           ; $6269: $81
	scf                                              ; $626a: $37
	inc  de                                          ; $626b: $13
	ld   d, a                                        ; $626c: $57
	rla                                              ; $626d: $17
	daa                                              ; $626e: $27
	rlca                                             ; $626f: $07
	rla                                              ; $6270: $17
	rlca                                             ; $6271: $07
	rrca                                             ; $6272: $0f
	inc  bc                                          ; $6273: $03
	rlca                                             ; $6274: $07
	nop                                              ; $6275: $00
	inc  bc                                          ; $6276: $03
	nop                                              ; $6277: $00
	ld   bc, $0700                                   ; $6278: $01 $00 $07
	ld   bc, $071f                                   ; $627b: $01 $1f $07
	rst  $38                                         ; $627e: $ff
	rra                                              ; $627f: $1f
	add  b                                           ; $6280: $80
	rst  $38                                         ; $6281: $ff
	add  [hl]                                        ; $6282: $86
	ld   a, a                                        ; $6283: $7f
	ld   [bc], a                                     ; $6284: $02
	ccf                                              ; $6285: $3f
	cp   a                                           ; $6286: $bf
	add  b                                           ; $6287: $80
	add  b                                           ; $6288: $80
	ret  nz                                          ; $6289: $c0

	add  h                                           ; $628a: $84
	rst  $38                                         ; $628b: $ff
	inc  b                                           ; $628c: $04
	nop                                              ; $628d: $00
	ldh  [rP1], a                                    ; $628e: $e0 $00
	rst  $38                                         ; $6290: $ff
	rra                                              ; $6291: $1f
	adc  [hl]                                        ; $6292: $8e
	rst  $38                                         ; $6293: $ff
	add  b                                           ; $6294: $80
	cp   $00                                         ; $6295: $fe $00
	nop                                              ; $6297: $00
	add  b                                           ; $6298: $80
	ld   bc, $ff84                                   ; $6299: $01 $84 $ff
	inc  bc                                          ; $629c: $03
	nop                                              ; $629d: $00
	inc  bc                                          ; $629e: $03
	nop                                              ; $629f: $00
	db   $e3                                         ; $62a0: $e3
	add  b                                           ; $62a1: $80
	db   $ec                                         ; $62a2: $ec
	adc  e                                           ; $62a3: $8b
	xor  $04                                         ; $62a4: $ee $04
	adc  $de                                         ; $62a6: $ce $de
	ld   e, $3e                                      ; $62a8: $1e $3e
	ccf                                              ; $62aa: $3f
	add  c                                           ; $62ab: $81
	db   $fd                                         ; $62ac: $fd
	nop                                              ; $62ad: $00
	db   $fc                                         ; $62ae: $fc
	add  b                                           ; $62af: $80
	ld   hl, sp-$80                                  ; $62b0: $f8 $80
	ldh  [rDIV], a                                   ; $62b2: $e0 $04
	nop                                              ; $62b4: $00
	pop  hl                                          ; $62b5: $e1
	nop                                              ; $62b6: $00
	pop  hl                                          ; $62b7: $e1
	nop                                              ; $62b8: $00
	add  b                                           ; $62b9: $80
	ld   [hl], b                                     ; $62ba: $70
	add  b                                           ; $62bb: $80
	ld   h, b                                        ; $62bc: $60
	add  b                                           ; $62bd: $80
	ld   b, b                                        ; $62be: $40
	ld   bc, $d1d0                                   ; $62bf: $01 $d0 $d1
	add  b                                           ; $62c2: $80
	or   c                                           ; $62c3: $b1
	add  b                                           ; $62c4: $80
	ld   h, c                                        ; $62c5: $61
	add  c                                           ; $62c6: $81
	ld   d, c                                        ; $62c7: $51
	nop                                              ; $62c8: $00
	ld   d, b                                        ; $62c9: $50
	add  b                                           ; $62ca: $80
	ldh  [$80], a                                    ; $62cb: $e0 $80
	rst  $20                                         ; $62cd: $e7
	add  b                                           ; $62ce: $80
	add  b                                           ; $62cf: $80
	add  b                                           ; $62d0: $80
	rrca                                             ; $62d1: $0f
	add  d                                           ; $62d2: $82
	rra                                              ; $62d3: $1f
	ld   b, $ff                                      ; $62d4: $06 $ff
	nop                                              ; $62d6: $00
	add  b                                           ; $62d7: $80
	nop                                              ; $62d8: $00
	ld   b, b                                        ; $62d9: $40
	nop                                              ; $62da: $00
	jr   nz, @-$7e                                   ; $62db: $20 $80

	nop                                              ; $62dd: $00
	rlca                                             ; $62de: $07
	add  b                                           ; $62df: $80
	adc  b                                           ; $62e0: $88
	nop                                              ; $62e1: $00
	stop                                             ; $62e2: $10 $00
	ld   [$1000], sp                                 ; $62e4: $08 $00 $10
	add  l                                           ; $62e7: $85
	nop                                              ; $62e8: $00
	inc  b                                           ; $62e9: $04
	jr   nz, jr_093_62ec                             ; $62ea: $20 $00

jr_093_62ec:
	ldh  [$c0], a                                    ; $62ec: $e0 $c0
	ldh  a, [$81]                                    ; $62ee: $f0 $81
	ldh  [rAUD2LEN], a                               ; $62f0: $e0 $16
	ldh  a, [rP1]                                    ; $62f2: $f0 $00
	inc  b                                           ; $62f4: $04
	nop                                              ; $62f5: $00
	inc  b                                           ; $62f6: $04
	nop                                              ; $62f7: $00
	inc  b                                           ; $62f8: $04
	nop                                              ; $62f9: $00
	inc  b                                           ; $62fa: $04
	nop                                              ; $62fb: $00
	inc  b                                           ; $62fc: $04
	nop                                              ; $62fd: $00
	inc  b                                           ; $62fe: $04
	nop                                              ; $62ff: $00
	inc  b                                           ; $6300: $04
	nop                                              ; $6301: $00
	inc  b                                           ; $6302: $04
	nop                                              ; $6303: $00
	inc  b                                           ; $6304: $04
	nop                                              ; $6305: $00
	inc  b                                           ; $6306: $04
	nop                                              ; $6307: $00
	inc  b                                           ; $6308: $04
	add  c                                           ; $6309: $81
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	ld   a, [bc]                                     ; $630c: $0a
	add  b                                           ; $630d: $80
	inc  b                                           ; $630e: $04
	ld   bc, $0e00                                   ; $630f: $01 $00 $0e
	sub  l                                           ; $6312: $95
	nop                                              ; $6313: $00
	ld   a, [bc]                                     ; $6314: $0a
	inc  b                                           ; $6315: $04
	nop                                              ; $6316: $00
	inc  b                                           ; $6317: $04
	nop                                              ; $6318: $00
	inc  b                                           ; $6319: $04
	nop                                              ; $631a: $00
	inc  b                                           ; $631b: $04
	nop                                              ; $631c: $00
	inc  b                                           ; $631d: $04
	nop                                              ; $631e: $00
	inc  b                                           ; $631f: $04
	rst  $38                                         ; $6320: $ff
	nop                                              ; $6321: $00
	rst  $38                                         ; $6322: $ff
	nop                                              ; $6323: $00
	rst  $38                                         ; $6324: $ff
	nop                                              ; $6325: $00
	rst  $38                                         ; $6326: $ff
	nop                                              ; $6327: $00
	rst  $38                                         ; $6328: $ff
	nop                                              ; $6329: $00
	rst  $38                                         ; $632a: $ff
	nop                                              ; $632b: $00
	rst  $38                                         ; $632c: $ff
	nop                                              ; $632d: $00
	or   [hl]                                        ; $632e: $b6
	nop                                              ; $632f: $00
	inc  c                                           ; $6330: $0c
	jr   c, jr_093_634b                              ; $6331: $38 $18

	or   b                                           ; $6333: $b0
	dec  sp                                          ; $6334: $3b
	db   $e3                                         ; $6335: $e3
	inc  a                                           ; $6336: $3c
	rst  $20                                         ; $6337: $e7
	jr   c, @+$01                                    ; $6338: $38 $ff

	ld   h, b                                        ; $633a: $60
	rst  $38                                         ; $633b: $ff
	ld   b, c                                        ; $633c: $41
	rst  $38                                         ; $633d: $ff
	add  d                                           ; $633e: $82
	rst  $38                                         ; $633f: $ff
	rrca                                             ; $6340: $0f
	nop                                              ; $6341: $00
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	nop                                              ; $6344: $00
	rst  $38                                         ; $6345: $ff
	nop                                              ; $6346: $00
	rst  $38                                         ; $6347: $ff
	nop                                              ; $6348: $00
	rst  $38                                         ; $6349: $ff
	nop                                              ; $634a: $00

jr_093_634b:
	rst  $38                                         ; $634b: $ff
	nop                                              ; $634c: $00
	rst  $38                                         ; $634d: $ff
	ld   [bc], a                                     ; $634e: $02
	rst  $38                                         ; $634f: $ff
	rst  $38                                         ; $6350: $ff
	nop                                              ; $6351: $00
	rst  $38                                         ; $6352: $ff
	ldh  [$1f], a                                    ; $6353: $e0 $1f
	db   $fc                                         ; $6355: $fc
	inc  bc                                          ; $6356: $03
	rst  $38                                         ; $6357: $ff
	nop                                              ; $6358: $00
	rst  $38                                         ; $6359: $ff
	nop                                              ; $635a: $00
	rst  $38                                         ; $635b: $ff
	nop                                              ; $635c: $00
	rst  $38                                         ; $635d: $ff
	nop                                              ; $635e: $00
	rst  $38                                         ; $635f: $ff
	jp   nz, $c27e                                   ; $6360: $c2 $7e $c2

	ld   a, d                                        ; $6363: $7a
	ldh  [c], a                                      ; $6364: $e2
	ld   [hl-], a                                    ; $6365: $32
	ldh  [c], a                                      ; $6366: $e2
	ld   [hl-], a                                    ; $6367: $32
	ldh  [c], a                                      ; $6368: $e2
	or   [hl]                                        ; $6369: $b6
	ld   h, d                                        ; $636a: $62
	or   $22                                         ; $636b: $f6 $22
	or   $12                                         ; $636d: $f6 $12
	or   $04                                         ; $636f: $f6 $04
	rst  $28                                         ; $6371: $ef
	inc  b                                           ; $6372: $04
	adc  a                                           ; $6373: $8f
	ld   [$095b], sp                                 ; $6374: $08 $5b $09
	reti                                             ; $6377: $d9


	adc  c                                           ; $6378: $89
	cp   e                                           ; $6379: $bb
	inc  de                                          ; $637a: $13
	cp   e                                           ; $637b: $bb
	inc  de                                          ; $637c: $13
	rst  $38                                         ; $637d: $ff
	ld   [hl], $fe                                   ; $637e: $36 $fe
	ld   [bc], a                                     ; $6380: $02
	rst  $38                                         ; $6381: $ff
	ld   h, $ff                                      ; $6382: $26 $ff
	ld   h, $f7                                      ; $6384: $26 $f7
	ld   h, [hl]                                     ; $6386: $66
	ld   [hl], a                                     ; $6387: $77
	ld   h, [hl]                                     ; $6388: $66
	rst  $20                                         ; $6389: $e7
	ld   h, [hl]                                     ; $638a: $66
	rst  $30                                         ; $638b: $f7
	and  [hl]                                        ; $638c: $a6
	cp   a                                           ; $638d: $bf
	and  a                                           ; $638e: $a7
	cp   l                                           ; $638f: $bd
	ld   bc, $80ff                                   ; $6390: $01 $ff $80
	push af                                          ; $6393: $f5
	add  d                                           ; $6394: $82
	jp   nc, $e3c2                                   ; $6395: $d2 $c2 $e3

	pop  bc                                          ; $6398: $c1
	db   $fd                                         ; $6399: $fd
	ld   l, c                                        ; $639a: $69
	rst  $38                                         ; $639b: $ff
	ld   h, h                                        ; $639c: $64
	rst  $38                                         ; $639d: $ff
	halt                                             ; $639e: $76
	rst  JumpTable                                         ; $639f: $df
	ld   d, d                                        ; $63a0: $52
	cp   $b2                                         ; $63a1: $fe $b2
	cp   $f2                                         ; $63a3: $fe $f2
	cp   $72                                         ; $63a5: $fe $72
	cp   $32                                         ; $63a7: $fe $32
	cp   $92                                         ; $63a9: $fe $92
	cp   $f2                                         ; $63ab: $fe $f2
	cp   $72                                         ; $63ad: $fe $72
	cp   $36                                         ; $63af: $fe $36
	cp   $be                                         ; $63b1: $fe $be
	ld   [$eaba], a                                  ; $63b3: $ea $ba $ea
	and  a                                           ; $63b6: $a7
	rst  $38                                         ; $63b7: $ff
	or   l                                           ; $63b8: $b5
	db   $e4                                         ; $63b9: $e4
	and  a                                           ; $63ba: $a7
	rst  $28                                         ; $63bb: $ef
	db   $ed                                         ; $63bc: $ed
	ld   sp, hl                                      ; $63bd: $f9
	pop  af                                          ; $63be: $f1
	di                                               ; $63bf: $f3
	and  a                                           ; $63c0: $a7
	cp   l                                           ; $63c1: $bd
	or   l                                           ; $63c2: $b5
	sbc  h                                           ; $63c3: $9c
	sub  d                                           ; $63c4: $92
	sbc  [hl]                                        ; $63c5: $9e
	jp   z, $a58e                                    ; $63c6: $ca $8e $a5

	rst  $20                                         ; $63c9: $e7
	ld   h, a                                        ; $63ca: $67
	add  e                                           ; $63cb: $83
	db   $e3                                         ; $63cc: $e3
	pop  bc                                          ; $63cd: $c1
	ld   b, b                                        ; $63ce: $40
	add  b                                           ; $63cf: $80
	dec  sp                                          ; $63d0: $3b
	rst  $28                                         ; $63d1: $ef
	or   l                                           ; $63d2: $b5
	rst  $28                                         ; $63d3: $ef
	db   $db                                         ; $63d4: $db
	ld   a, a                                        ; $63d5: $7f
	ld   a, [hl]                                     ; $63d6: $7e
	ld   [hl], c                                     ; $63d7: $71
	ld   h, a                                        ; $63d8: $67
	rra                                              ; $63d9: $1f
	jp   nc, $c83b                                   ; $63da: $d2 $3b $c8

	add  a                                           ; $63dd: $87
	ret  nz                                          ; $63de: $c0

	nop                                              ; $63df: $00
	ld   [hl-], a                                    ; $63e0: $32
	cp   $92                                         ; $63e1: $fe $92
	cp   $72                                         ; $63e3: $fe $72
	cp   $f2                                         ; $63e5: $fe $f2
	sbc  [hl]                                        ; $63e7: $9e
	ldh  a, [c]                                      ; $63e8: $f2
	ld   a, [$9ab2]                                  ; $63e9: $fa $b2 $9a
	ld   [hl], d                                     ; $63ec: $72
	sbc  d                                           ; $63ed: $9a
	ld   [hl-], a                                    ; $63ee: $32
	ld   d, d                                        ; $63ef: $52
	ldh  a, [$f0]                                    ; $63f0: $f0 $f0
	or   b                                           ; $63f2: $b0
	ld   hl, sp+$30                                  ; $63f3: $f8 $30
	ld   hl, sp+$78                                  ; $63f5: $f8 $78
	ld   hl, sp+$78                                  ; $63f7: $f8 $78
	db   $fc                                         ; $63f9: $fc
	ld   e, h                                        ; $63fa: $5c
	db   $fc                                         ; $63fb: $fc
	ld   e, h                                        ; $63fc: $5c
	cp   $5e                                         ; $63fd: $fe $5e

Call_093_63ff:
	cp   $00                                         ; $63ff: $fe $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	ld   [$1c00], sp                                 ; $6408: $08 $00 $1c
	db   $10                                         ; $640b: $10
	inc  b                                           ; $640c: $04
	ld   [$0003], sp                                 ; $640d: $08 $03 $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	nop                                              ; $641e: $00
	ret  nz                                          ; $641f: $c0

	ld   [hl-], a                                    ; $6420: $32
	ld   [de], a                                     ; $6421: $12
	ld   [hl-], a                                    ; $6422: $32
	ld   d, $32                                      ; $6423: $16 $32
	ld   d, $32                                      ; $6425: $16 $32
	ld   d, $72                                      ; $6427: $16 $72
	ld   e, $62                                      ; $6429: $1e $62
	ld   a, $62                                      ; $642b: $3e $62
	ld   a, $e2                                      ; $642d: $3e $e2
	ld   a, $9f                                      ; $642f: $3e $9f
	rst  $38                                         ; $6431: $ff
	sub  a                                           ; $6432: $97
	rst  $38                                         ; $6433: $ff
	and  a                                           ; $6434: $a7
	rst  $38                                         ; $6435: $ff
	and  a                                           ; $6436: $a7
	rst  $38                                         ; $6437: $ff
	and  a                                           ; $6438: $a7
	rst  $38                                         ; $6439: $ff
	rst  $28                                         ; $643a: $ef
	rst  $38                                         ; $643b: $ff
	di                                               ; $643c: $f3
	di                                               ; $643d: $f3
	ret  nz                                          ; $643e: $c0

	ret  nz                                          ; $643f: $c0

	inc  bc                                          ; $6440: $03
	nop                                              ; $6441: $00
	add  b                                           ; $6442: $80
	add  b                                           ; $6443: $80
	ret  nz                                          ; $6444: $c0

	ret  nz                                          ; $6445: $c0

	ldh  [$f0], a                                    ; $6446: $e0 $f0
	db   $fc                                         ; $6448: $fc
	ld   hl, sp-$3b                                  ; $6449: $f8 $c5
	add  $01                                         ; $644b: $c6 $01
	ld   bc, $0101                                   ; $644d: $01 $01 $01
	add  b                                           ; $6450: $80
	nop                                              ; $6451: $00
	ld   bc, $0100                                   ; $6452: $01 $00 $01
	nop                                              ; $6455: $00
	ld   [bc], a                                     ; $6456: $02
	ld   bc, $0305                                   ; $6457: $01 $05 $03
	rra                                              ; $645a: $1f
	ld   b, $7f                                      ; $645b: $06 $7f
	sbc  b                                           ; $645d: $98
	rst  $38                                         ; $645e: $ff
	ld   h, b                                        ; $645f: $60
	ldh  [c], a                                      ; $6460: $e2
	ld   a, $a2                                      ; $6461: $3e $a2
	ld   a, [hl]                                     ; $6463: $7e
	ld   h, [hl]                                     ; $6464: $66
	cp   $e6                                         ; $6465: $fe $e6
	cp   [hl]                                        ; $6467: $be
	and  $3e                                         ; $6468: $e6 $3e
	add  $7e                                         ; $646a: $c6 $7e
	add  $7e                                         ; $646c: $c6 $7e
	adc  $7e                                         ; $646e: $ce $7e
	add  b                                           ; $6470: $80
	add  b                                           ; $6471: $80
	add  b                                           ; $6472: $80
	add  b                                           ; $6473: $80
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	ld   a, a                                        ; $6476: $7f
	ld   a, a                                        ; $6477: $7f
	add  b                                           ; $6478: $80
	add  b                                           ; $6479: $80
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	ld   bc, $0101                                   ; $6480: $01 $01 $01
	ld   bc, $0101                                   ; $6483: $01 $01 $01
	pop  bc                                          ; $6486: $c1
	pop  bc                                          ; $6487: $c1
	ccf                                              ; $6488: $3f
	ccf                                              ; $6489: $3f
	ld   bc, $0101                                   ; $648a: $01 $01 $01
	ld   bc, $0101                                   ; $648d: $01 $01 $01
	rst  $38                                         ; $6490: $ff
	nop                                              ; $6491: $00
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	ldh  a, [rIF]                                    ; $6494: $f0 $0f
	ldh  a, [rIF]                                    ; $6496: $f0 $0f
	ld   sp, hl                                      ; $6498: $f9
	add  a                                           ; $6499: $87
	ld   a, a                                        ; $649a: $7f
	ld   a, a                                        ; $649b: $7f
	ld   b, $03                                      ; $649c: $06 $03
	rrca                                             ; $649e: $0f
	rrca                                             ; $649f: $0f
	adc  $fe                                         ; $64a0: $ce $fe
	adc  $fe                                         ; $64a2: $ce $fe
	adc  [hl]                                        ; $64a4: $8e
	cp   $9e                                         ; $64a5: $fe $9e
	cp   $1e                                         ; $64a7: $fe $1e
	cp   $3e                                         ; $64a9: $fe $3e
	ld   [$d2fe], a                                  ; $64ab: $ea $fe $d2
	cp   $02                                         ; $64ae: $fe $02

jr_093_64b0:
	ld   [hl], $fe                                   ; $64b0: $36 $fe
	cp   [hl]                                        ; $64b2: $be
	ld   [$eaba], a                                  ; $64b3: $ea $ba $ea
	or   a                                           ; $64b6: $b7
	rst  $28                                         ; $64b7: $ef
	and  l                                           ; $64b8: $a5
	db   $fc                                         ; $64b9: $fc
	or   a                                           ; $64ba: $b7
	rst  $20                                         ; $64bb: $e7
	jp   hl                                          ; $64bc: $e9


	db   $ed                                         ; $64bd: $ed
	pop  af                                          ; $64be: $f1
	ei                                               ; $64bf: $fb
	ld   [hl-], a                                    ; $64c0: $32
	cp   $92                                         ; $64c1: $fe $92
	cp   $72                                         ; $64c3: $fe $72
	cp   $f2                                         ; $64c5: $fe $f2
	sbc  [hl]                                        ; $64c7: $9e
	ldh  a, [c]                                      ; $64c8: $f2
	jp   c, $faf2                                    ; $64c9: $da $f2 $fa

	ld   [hl], d                                     ; $64cc: $72
	sbc  d                                           ; $64cd: $9a
	ld   [hl-], a                                    ; $64ce: $32
	ld   d, d                                        ; $64cf: $52
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	ld   [$1c00], sp                                 ; $64d8: $08 $00 $1c
	db   $10                                         ; $64db: $10
	inc  b                                           ; $64dc: $04
	ld   [$0003], sp                                 ; $64dd: $08 $03 $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	jr   nz, jr_093_64b0                             ; $64ee: $20 $c0

	ld   bc, $8000                                   ; $64f0: $01 $00 $80
	add  b                                           ; $64f3: $80
	ret  nz                                          ; $64f4: $c0

	ret  nz                                          ; $64f5: $c0

	ldh  [$f0], a                                    ; $64f6: $e0 $f0
	db   $fc                                         ; $64f8: $fc
	ld   hl, sp-$3b                                  ; $64f9: $f8 $c5
	add  $01                                         ; $64fb: $c6 $01
	ld   bc, $0101                                   ; $64fd: $01 $01 $01
	ret  nz                                          ; $6500: $c0

	nop                                              ; $6501: $00
	ld   bc, $0100                                   ; $6502: $01 $00 $01
	nop                                              ; $6505: $00
	ld   [bc], a                                     ; $6506: $02
	ld   bc, $0305                                   ; $6507: $01 $05 $03
	rra                                              ; $650a: $1f
	ld   b, $7f                                      ; $650b: $06 $7f
	sbc  b                                           ; $650d: $98
	rst  $38                                         ; $650e: $ff
	ld   h, b                                        ; $650f: $60
	ld   [hl], $fe                                   ; $6510: $36 $fe
	cp   [hl]                                        ; $6512: $be
	ld   [$faaa], a                                  ; $6513: $ea $aa $fa
	or   a                                           ; $6516: $b7
	xor  $b5                                         ; $6517: $ee $b5
	push hl                                          ; $6519: $e5
	or   a                                           ; $651a: $b7
	rst  $38                                         ; $651b: $ff
	push hl                                          ; $651c: $e5
	jp   hl                                          ; $651d: $e9


	pop  af                                          ; $651e: $f1
	di                                               ; $651f: $f3
	and  a                                           ; $6520: $a7
	cp   l                                           ; $6521: $bd
	or   l                                           ; $6522: $b5
	sbc  h                                           ; $6523: $9c
	sub  d                                           ; $6524: $92
	sbc  [hl]                                        ; $6525: $9e
	jp   z, $a58e                                    ; $6526: $ca $8e $a5

	rst  ToBoot                                         ; $6529: $c7
	ld   b, a                                        ; $652a: $47
	and  e                                           ; $652b: $a3
	db   $e3                                         ; $652c: $e3
	pop  bc                                          ; $652d: $c1
	ld   b, b                                        ; $652e: $40
	add  b                                           ; $652f: $80
	dec  sp                                          ; $6530: $3b
	rst  $28                                         ; $6531: $ef
	or   l                                           ; $6532: $b5
	rst  $28                                         ; $6533: $ef
	rst  JumpTable                                         ; $6534: $df
	ld   [hl], a                                     ; $6535: $77
	ld   a, [hl]                                     ; $6536: $7e
	add  hl, sp                                      ; $6537: $39
	ld   [hl], a                                     ; $6538: $77
	ld   c, a                                        ; $6539: $4f
	jp   nc, $c83b                                   ; $653a: $d2 $3b $c8

	add  a                                           ; $653d: $87
	ret  nz                                          ; $653e: $c0

	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	ld   [$1c00], sp                                 ; $6548: $08 $00 $1c
	db   $10                                         ; $654b: $10
	inc  b                                           ; $654c: $04
	ld   [$0102], sp                                 ; $654d: $08 $02 $01
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	ld   b, b                                        ; $655e: $40
	add  b                                           ; $655f: $80
	ld   [hl], $fe                                   ; $6560: $36 $fe
	cp   [hl]                                        ; $6562: $be
	ld   [$efbf], a                                  ; $6563: $ea $bf $ef
	cp   c                                           ; $6566: $b9
	ld   sp, hl                                      ; $6567: $f9
	or   l                                           ; $6568: $b5
	db   $e3                                         ; $6569: $e3
	xor  l                                           ; $656a: $ad
	and  $e9                                         ; $656b: $e6 $e9
	db   $f4                                         ; $656d: $f4
	pop  af                                          ; $656e: $f1
	ldh  a, [$a7]                                    ; $656f: $f0 $a7
	cp   l                                           ; $6571: $bd
	or   l                                           ; $6572: $b5
	sbc  h                                           ; $6573: $9c
	sub  d                                           ; $6574: $92
	sbc  $ca                                         ; $6575: $de $ca
	adc  [hl]                                        ; $6577: $8e
	push hl                                          ; $6578: $e5
	add  a                                           ; $6579: $87
	ld   h, a                                        ; $657a: $67
	ld   b, e                                        ; $657b: $43
	and  e                                           ; $657c: $a3
	pop  bc                                          ; $657d: $c1
	add  b                                           ; $657e: $80
	ret  nz                                          ; $657f: $c0

	dec  sp                                          ; $6580: $3b
	rst  $38                                         ; $6581: $ff
	cp   l                                           ; $6582: $bd
	rst  $30                                         ; $6583: $f7
	db   $d3                                         ; $6584: $d3
	rst  $38                                         ; $6585: $ff
	ld   a, [hl]                                     ; $6586: $7e
	inc  sp                                          ; $6587: $33
	pop  bc                                          ; $6588: $c1
	dec  [hl]                                        ; $6589: $35
	jp   $8227                                       ; $658a: $c3 $27 $82


	add  a                                           ; $658d: $87
	inc  bc                                          ; $658e: $03
	rrca                                             ; $658f: $0f
	ld   [hl-], a                                    ; $6590: $32
	cp   $92                                         ; $6591: $fe $92
	cp   $72                                         ; $6593: $fe $72
	cp   $f2                                         ; $6595: $fe $f2
	sbc  [hl]                                        ; $6597: $9e
	ldh  a, [c]                                      ; $6598: $f2
	ld   a, d                                        ; $6599: $7a
	ld   [hl], d                                     ; $659a: $72
	ld   e, d                                        ; $659b: $5a
	ld   [hl], d                                     ; $659c: $72
	ld   a, [de]                                     ; $659d: $1a
	or   d                                           ; $659e: $b2
	ld   d, d                                        ; $659f: $52
	ldh  a, [c]                                      ; $65a0: $f2
	pop  af                                          ; $65a1: $f1
	or   b                                           ; $65a2: $b0
	ld   hl, sp+$30                                  ; $65a3: $f8 $30
	ld   hl, sp+$78                                  ; $65a5: $f8 $78
	ld   hl, sp+$78                                  ; $65a7: $f8 $78
	db   $fc                                         ; $65a9: $fc
	ld   e, h                                        ; $65aa: $5c
	db   $fc                                         ; $65ab: $fc
	ld   e, h                                        ; $65ac: $5c
	cp   $5e                                         ; $65ad: $fe $5e
	cp   $40                                         ; $65af: $fe $40
	add  b                                           ; $65b1: $80
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	ld   [$1c00], sp                                 ; $65b8: $08 $00 $1c
	db   $10                                         ; $65bb: $10
	inc  b                                           ; $65bc: $04
	ld   [$0102], sp                                 ; $65bd: $08 $02 $01
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	ld   b, b                                        ; $65ce: $40
	add  b                                           ; $65cf: $80
	ld   bc, $8302                                   ; $65d0: $01 $02 $83
	add  b                                           ; $65d3: $80
	ret  nz                                          ; $65d4: $c0

	pop  bc                                          ; $65d5: $c1
	ldh  [$f0], a                                    ; $65d6: $e0 $f0
	db   $fc                                         ; $65d8: $fc
	ld   hl, sp-$3b                                  ; $65d9: $f8 $c5
	add  $01                                         ; $65db: $c6 $01
	ld   bc, $0101                                   ; $65dd: $01 $01 $01
	ld   h, b                                        ; $65e0: $60
	nop                                              ; $65e1: $00
	ld   bc, $0120                                   ; $65e2: $01 $20 $01
	jr   nz, jr_093_6609                             ; $65e5: $20 $22

	pop  bc                                          ; $65e7: $c1
	dec  b                                           ; $65e8: $05
	inc  bc                                          ; $65e9: $03
	rra                                              ; $65ea: $1f
	ld   b, $7f                                      ; $65eb: $06 $7f
	sbc  b                                           ; $65ed: $98
	rst  $38                                         ; $65ee: $ff
	ld   h, b                                        ; $65ef: $60
	ld   [hl], $fe                                   ; $65f0: $36 $fe
	cp   [hl]                                        ; $65f2: $be
	ld   [$eaba], a                                  ; $65f3: $ea $ba $ea
	cp   e                                           ; $65f6: $bb
	db   $eb                                         ; $65f7: $eb
	cp   a                                           ; $65f8: $bf
	cp   $a7                                         ; $65f9: $fe $a7
	rst  $28                                         ; $65fb: $ef
	db   $ed                                         ; $65fc: $ed
	ld   sp, hl                                      ; $65fd: $f9
	pop  af                                          ; $65fe: $f1
	di                                               ; $65ff: $f3
	and  a                                           ; $6600: $a7
	cp   l                                           ; $6601: $bd
	or   l                                           ; $6602: $b5
	sbc  l                                           ; $6603: $9d
	jp   nc, $cade                                   ; $6604: $d2 $de $ca

	adc  [hl]                                        ; $6607: $8e
	push hl                                          ; $6608: $e5

jr_093_6609:
	ld   b, a                                        ; $6609: $47
	ld   h, a                                        ; $660a: $67
	add  e                                           ; $660b: $83
	db   $e3                                         ; $660c: $e3
	pop  bc                                          ; $660d: $c1
	ld   b, b                                        ; $660e: $40
	add  b                                           ; $660f: $80

jr_093_6610:
	dec  sp                                          ; $6610: $3b
	rst  $28                                         ; $6611: $ef
	or   l                                           ; $6612: $b5
	rst  $28                                         ; $6613: $ef
	db   $db                                         ; $6614: $db
	rst  $38                                         ; $6615: $ff
	ld   a, [hl]                                     ; $6616: $7e
	scf                                              ; $6617: $37
	ld   h, a                                        ; $6618: $67
	rra                                              ; $6619: $1f
	jp   nc, $c83b                                   ; $661a: $d2 $3b $c8

	add  a                                           ; $661d: $87
	ret  nz                                          ; $661e: $c0

	nop                                              ; $661f: $00
	ldh  a, [$f0]                                    ; $6620: $f0 $f0
	or   b                                           ; $6622: $b0
	ld   hl, sp+$32                                  ; $6623: $f8 $32
	ld   hl, sp+$7d                                  ; $6625: $f8 $7d
	ld   hl, sp+$78                                  ; $6627: $f8 $78
	db   $fc                                         ; $6629: $fc
	ld   e, h                                        ; $662a: $5c
	db   $fc                                         ; $662b: $fc
	ld   e, h                                        ; $662c: $5c
	cp   $5e                                         ; $662d: $fe $5e
	cp   $00                                         ; $662f: $fe $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	add  b                                           ; $6634: $80
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	ld   [$1c00], sp                                 ; $6638: $08 $00 $1c
	db   $10                                         ; $663b: $10
	inc  b                                           ; $663c: $04
	ld   [$0003], sp                                 ; $663d: $08 $03 $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	ld   a, [bc]                                     ; $6642: $0a
	nop                                              ; $6643: $00
	dec  d                                           ; $6644: $15
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	jr   nz, jr_093_6610                             ; $664e: $20 $c0

	ld   [hl-], a                                    ; $6650: $32
	ld   [de], a                                     ; $6651: $12
	or   d                                           ; $6652: $b2
	ld   d, $32                                      ; $6653: $16 $32
	ld   d, $32                                      ; $6655: $16 $32
	ld   d, $72                                      ; $6657: $16 $72
	ld   e, $62                                      ; $6659: $1e $62
	ld   a, $62                                      ; $665b: $3e $62
	ld   a, $e2                                      ; $665d: $3e $e2
	ld   a, $36                                      ; $665f: $3e $36
	cp   $be                                         ; $6661: $fe $be
	ld   [$eaba], a                                  ; $6663: $ea $ba $ea
	cp   e                                           ; $6666: $bb
	db   $eb                                         ; $6667: $eb
	cp   a                                           ; $6668: $bf
	cp   $a7                                         ; $6669: $fe $a7
	rst  $28                                         ; $666b: $ef
	jp   hl                                          ; $666c: $e9


	db   $fc                                         ; $666d: $fc
	di                                               ; $666e: $f3
	pop  af                                          ; $666f: $f1
	and  a                                           ; $6670: $a7
	cp   l                                           ; $6671: $bd
	or   l                                           ; $6672: $b5
	sbc  l                                           ; $6673: $9d
	jp   nc, $cade                                   ; $6674: $d2 $de $ca

	adc  [hl]                                        ; $6677: $8e
	push hl                                          ; $6678: $e5
	ld   b, a                                        ; $6679: $47
	daa                                              ; $667a: $27
	jp   $c1a3                                       ; $667b: $c3 $a3 $c1


	ld   b, b                                        ; $667e: $40
	add  b                                           ; $667f: $80
	dec  sp                                          ; $6680: $3b
	rst  $28                                         ; $6681: $ef
	or   l                                           ; $6682: $b5
	rst  $28                                         ; $6683: $ef
	db   $db                                         ; $6684: $db
	rst  $38                                         ; $6685: $ff
	ld   a, [hl]                                     ; $6686: $7e
	scf                                              ; $6687: $37
	ld   h, a                                        ; $6688: $67
	rra                                              ; $6689: $1f
	db   $d3                                         ; $668a: $d3
	add  hl, sp                                      ; $668b: $39
	ret  z                                           ; $668c: $c8

	add  a                                           ; $668d: $87
	ret  nz                                          ; $668e: $c0

	nop                                              ; $668f: $00
	ld   [hl-], a                                    ; $6690: $32
	cp   $92                                         ; $6691: $fe $92
	cp   $72                                         ; $6693: $fe $72
	cp   $f2                                         ; $6695: $fe $f2
	sbc  [hl]                                        ; $6697: $9e
	ldh  a, [c]                                      ; $6698: $f2
	ld   a, [$da32]                                  ; $6699: $fa $32 $da
	ld   [hl], d                                     ; $669c: $72
	sbc  d                                           ; $669d: $9a
	ld   [hl-], a                                    ; $669e: $32
	ld   d, d                                        ; $669f: $52
	ld   [hl], $fe                                   ; $66a0: $36 $fe
	cp   [hl]                                        ; $66a2: $be
	ld   [$eeba], a                                  ; $66a3: $ea $ba $ee
	cp   a                                           ; $66a6: $bf
	and  $b5                                         ; $66a7: $e6 $b5
	push hl                                          ; $66a9: $e5
	or   a                                           ; $66aa: $b7
	rst  $28                                         ; $66ab: $ef
	ldh  [$e4], a                                    ; $66ac: $e0 $e4
	ldh  a, [$f0]                                    ; $66ae: $f0 $f0
	and  a                                           ; $66b0: $a7
	cp   l                                           ; $66b1: $bd
	or   l                                           ; $66b2: $b5
	sbc  h                                           ; $66b3: $9c
	sub  d                                           ; $66b4: $92
	sbc  [hl]                                        ; $66b5: $9e
	jp   z, $a58e                                    ; $66b6: $ca $8e $a5

	rst  ToBoot                                         ; $66b9: $c7
	rst  ToBoot                                         ; $66ba: $c7
	db   $e3                                         ; $66bb: $e3
	ld   h, e                                        ; $66bc: $63
	pop  bc                                          ; $66bd: $c1
	ret  nz                                          ; $66be: $c0

	ret  nz                                          ; $66bf: $c0

	dec  sp                                          ; $66c0: $3b
	rst  $28                                         ; $66c1: $ef
	or   l                                           ; $66c2: $b5
	rst  $28                                         ; $66c3: $ef
	rst  JumpTable                                         ; $66c4: $df
	ld   a, e                                        ; $66c5: $7b
	ld   a, [hl]                                     ; $66c6: $7e
	add  hl, sp                                      ; $66c7: $39
	ld   h, a                                        ; $66c8: $67
	ld   a, a                                        ; $66c9: $7f
	jp   nc, $c637                                   ; $66ca: $d2 $37 $c6

	add  [hl]                                        ; $66cd: $86
	ret  nz                                          ; $66ce: $c0

	nop                                              ; $66cf: $00
	ld   [hl-], a                                    ; $66d0: $32
	cp   $92                                         ; $66d1: $fe $92
	cp   $72                                         ; $66d3: $fe $72
	cp   $f2                                         ; $66d5: $fe $f2
	sbc  [hl]                                        ; $66d7: $9e
	ldh  a, [c]                                      ; $66d8: $f2
	ld   a, [$5a72]                                  ; $66d9: $fa $72 $5a
	ld   [hl], d                                     ; $66dc: $72
	ld   a, [de]                                     ; $66dd: $1a

jr_093_66de:
	or   d                                           ; $66de: $b2
	ld   d, d                                        ; $66df: $52
	ldh  a, [$f2]                                    ; $66e0: $f0 $f2
	or   b                                           ; $66e2: $b0
	ld   sp, hl                                      ; $66e3: $f9
	jr   nc, jr_093_66de                             ; $66e4: $30 $f8

	ld   a, b                                        ; $66e6: $78
	ld   hl, sp+$78                                  ; $66e7: $f8 $78
	db   $fc                                         ; $66e9: $fc
	ld   e, h                                        ; $66ea: $5c
	db   $fc                                         ; $66eb: $fc
	ld   e, h                                        ; $66ec: $5c
	cp   $5e                                         ; $66ed: $fe $5e
	cp   $00                                         ; $66ef: $fe $00
	nop                                              ; $66f1: $00
	ld   b, b                                        ; $66f2: $40
	add  b                                           ; $66f3: $80
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	ld   [$1c00], sp                                 ; $66f8: $08 $00 $1c
	db   $10                                         ; $66fb: $10
	inc  b                                           ; $66fc: $04
	ld   [rRAMG], sp                                 ; $66fd: $08 $00 $00
	ld   [$0007], sp                                 ; $6700: $08 $07 $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	inc  b                                           ; $6710: $04
	inc  bc                                          ; $6711: $03
	add  c                                           ; $6712: $81
	add  b                                           ; $6713: $80
	ret  nz                                          ; $6714: $c0

	ret  nz                                          ; $6715: $c0

	ldh  [$f0], a                                    ; $6716: $e0 $f0
	db   $fc                                         ; $6718: $fc
	ld   hl, sp-$3b                                  ; $6719: $f8 $c5
	add  $01                                         ; $671b: $c6 $01
	ld   bc, $0101                                   ; $671d: $01 $01 $01
	add  b                                           ; $6720: $80
	nop                                              ; $6721: $00
	add  c                                           ; $6722: $81
	nop                                              ; $6723: $00
	ld   bc, $0200                                   ; $6724: $01 $00 $02
	ld   bc, $0305                                   ; $6727: $01 $05 $03
	rra                                              ; $672a: $1f
	ld   b, $7f                                      ; $672b: $06 $7f
	sbc  b                                           ; $672d: $98
	rst  $38                                         ; $672e: $ff
	ld   h, b                                        ; $672f: $60
	ld   [hl], $fe                                   ; $6730: $36 $fe
	cp   [hl]                                        ; $6732: $be
	ld   [$fcbf], a                                  ; $6733: $ea $bf $fc
	cp   e                                           ; $6736: $bb
	db   $eb                                         ; $6737: $eb
	or   l                                           ; $6738: $b5
	db   $e3                                         ; $6739: $e3
	xor  l                                           ; $673a: $ad
	and  $e9                                         ; $673b: $e6 $e9
	db   $f4                                         ; $673d: $f4
	pop  af                                          ; $673e: $f1
	ldh  a, [$a7]                                    ; $673f: $f0 $a7
	cp   l                                           ; $6741: $bd
	or   l                                           ; $6742: $b5
	sbc  h                                           ; $6743: $9c
	sub  d                                           ; $6744: $92
	cp   [hl]                                        ; $6745: $be
	cp   e                                           ; $6746: $bb
	adc  $a5                                         ; $6747: $ce $a5
	rst  ToBoot                                         ; $6749: $c7
	ld   h, a                                        ; $674a: $67
	ld   b, e                                        ; $674b: $43
	add  e                                           ; $674c: $83
	pop  bc                                          ; $674d: $c1
	add  b                                           ; $674e: $80
	ret  nz                                          ; $674f: $c0

	dec  sp                                          ; $6750: $3b
	rst  $28                                         ; $6751: $ef
	cp   l                                           ; $6752: $bd
	rst  $38                                         ; $6753: $ff
	ld   d, e                                        ; $6754: $53
	ld   a, a                                        ; $6755: $7f
	ld   a, [hl]                                     ; $6756: $7e
	di                                               ; $6757: $f3
	pop  hl                                          ; $6758: $e1
	dec  [hl]                                        ; $6759: $35
	add  e                                           ; $675a: $83
	daa                                              ; $675b: $27
	adc  d                                           ; $675c: $8a
	add  a                                           ; $675d: $87
	inc  bc                                          ; $675e: $03
	rrca                                             ; $675f: $0f
	ld   [hl-], a                                    ; $6760: $32
	cp   $92                                         ; $6761: $fe $92
	cp   $72                                         ; $6763: $fe $72
	cp   $f2                                         ; $6765: $fe $f2
	sbc  [hl]                                        ; $6767: $9e
	ldh  a, [c]                                      ; $6768: $f2
	ld   a, d                                        ; $6769: $7a
	ld   [hl], d                                     ; $676a: $72
	ld   e, d                                        ; $676b: $5a
	ldh  a, [c]                                      ; $676c: $f2
	ld   a, [de]                                     ; $676d: $1a
	or   d                                           ; $676e: $b2
	ld   d, d                                        ; $676f: $52
	ld   b, b                                        ; $6770: $40
	add  b                                           ; $6771: $80
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	ld   [$1c00], sp                                 ; $6778: $08 $00 $1c
	db   $10                                         ; $677b: $10
	inc  b                                           ; $677c: $04
	ld   [$0100], sp                                 ; $677d: $08 $00 $01

Jump_093_6780:
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	ld   [hl], b                                     ; $678d: $70
	ld   [hl], b                                     ; $678e: $70
	adc  b                                           ; $678f: $88
	ld   bc, $8206                                   ; $6790: $01 $06 $82
	add  c                                           ; $6793: $81
	ret  nz                                          ; $6794: $c0

	ret  nz                                          ; $6795: $c0

	ldh  [$f0], a                                    ; $6796: $e0 $f0
	db   $fc                                         ; $6798: $fc
	ld   hl, sp-$3b                                  ; $6799: $f8 $c5
	add  $01                                         ; $679b: $c6 $01
	ld   bc, $0101                                   ; $679d: $01 $01 $01
	add  b                                           ; $67a0: $80
	ld   [$f009], sp                                 ; $67a1: $08 $09 $f0
	ld   bc, $0200                                   ; $67a4: $01 $00 $02
	ld   bc, $0305                                   ; $67a7: $01 $05 $03
	rra                                              ; $67aa: $1f
	ld   b, $7f                                      ; $67ab: $06 $7f
	sbc  b                                           ; $67ad: $98
	rst  $38                                         ; $67ae: $ff
	ld   h, b                                        ; $67af: $60
	ld   [$1138], sp                                 ; $67b0: $08 $38 $11
	or   b                                           ; $67b3: $b0
	scf                                              ; $67b4: $37
	db   $e3                                         ; $67b5: $e3
	inc  a                                           ; $67b6: $3c
	rst  $20                                         ; $67b7: $e7
	jr   c, @+$01                                    ; $67b8: $38 $ff

	ld   h, b                                        ; $67ba: $60
	rst  $38                                         ; $67bb: $ff
	ld   b, c                                        ; $67bc: $41
	rst  $38                                         ; $67bd: $ff
	add  d                                           ; $67be: $82
	rst  $38                                         ; $67bf: $ff
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	rst  $38                                         ; $67c2: $ff
	rst  $38                                         ; $67c3: $ff
	nop                                              ; $67c4: $00
	rst  $38                                         ; $67c5: $ff
	nop                                              ; $67c6: $00
	rst  $38                                         ; $67c7: $ff
	nop                                              ; $67c8: $00
	rst  $38                                         ; $67c9: $ff
	nop                                              ; $67ca: $00
	rst  $38                                         ; $67cb: $ff
	nop                                              ; $67cc: $00
	rst  $38                                         ; $67cd: $ff
	ld   [bc], a                                     ; $67ce: $02
	rst  $38                                         ; $67cf: $ff
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	ldh  a, [$e0]                                    ; $67d2: $f0 $e0
	ld   e, $fc                                      ; $67d4: $1e $fc
	inc  bc                                          ; $67d6: $03
	rst  $38                                         ; $67d7: $ff
	nop                                              ; $67d8: $00
	rst  $38                                         ; $67d9: $ff
	nop                                              ; $67da: $00
	rst  $38                                         ; $67db: $ff
	nop                                              ; $67dc: $00
	rst  $38                                         ; $67dd: $ff
	nop                                              ; $67de: $00
	rst  $38                                         ; $67df: $ff
	ld   b, d                                        ; $67e0: $42
	ld   a, [hl]                                     ; $67e1: $7e
	ld   b, d                                        ; $67e2: $42
	ld   a, d                                        ; $67e3: $7a
	ld   h, d                                        ; $67e4: $62
	ld   [hl-], a                                    ; $67e5: $32
	ldh  [c], a                                      ; $67e6: $e2
	ld   [hl-], a                                    ; $67e7: $32
	ldh  [c], a                                      ; $67e8: $e2
	or   [hl]                                        ; $67e9: $b6
	ld   h, d                                        ; $67ea: $62
	or   $22                                         ; $67eb: $f6 $22
	or   $12                                         ; $67ed: $f6 $12
	or   $03                                         ; $67ef: $f6 $03
	nop                                              ; $67f1: $00
	add  b                                           ; $67f2: $80
	add  b                                           ; $67f3: $80
	ret  nz                                          ; $67f4: $c0

	ret  nz                                          ; $67f5: $c0

	ldh  [$f0], a                                    ; $67f6: $e0 $f0
	db   $fc                                         ; $67f8: $fc
	ld   hl, sp-$3b                                  ; $67f9: $f8 $c5
	add  $03                                         ; $67fb: $c6 $03
	inc  bc                                          ; $67fd: $03
	rlca                                             ; $67fe: $07
	ld   b, $80                                      ; $67ff: $06 $80
	nop                                              ; $6801: $00
	ld   bc, $0100                                   ; $6802: $01 $00 $01
	nop                                              ; $6805: $00
	ld   [bc], a                                     ; $6806: $02
	ld   bc, $0305                                   ; $6807: $01 $05 $03
	rra                                              ; $680a: $1f
	ld   b, $7f                                      ; $680b: $06 $7f
	sbc  b                                           ; $680d: $98
	rst  $38                                         ; $680e: $ff
	ld   h, c                                        ; $680f: $61
	ldh  [c], a                                      ; $6810: $e2
	ld   a, $a2                                      ; $6811: $3e $a2
	ld   a, [hl]                                     ; $6813: $7e
	ld   h, [hl]                                     ; $6814: $66
	cp   $e6                                         ; $6815: $fe $e6
	cp   [hl]                                        ; $6817: $be
	and  $3e                                         ; $6818: $e6 $3e
	add  $7e                                         ; $681a: $c6 $7e
	add  $7e                                         ; $681c: $c6 $7e
	adc  $fe                                         ; $681e: $ce $fe
	add  b                                           ; $6820: $80
	add  b                                           ; $6821: $80
	add  b                                           ; $6822: $80
	add  b                                           ; $6823: $80
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	inc  bc                                          ; $6826: $03
	inc  bc                                          ; $6827: $03
	inc  b                                           ; $6828: $04
	rlca                                             ; $6829: $07
	jr   @+$21                                       ; $682a: $18 $1f

	pop  af                                          ; $682c: $f1
	rst  $38                                         ; $682d: $ff
	inc  hl                                          ; $682e: $23
	rst  $38                                         ; $682f: $ff

jr_093_6830:
	dec  e                                           ; $6830: $1d
	dec  e                                           ; $6831: $1d
	ld   l, b                                        ; $6832: $68
	ld   a, b                                        ; $6833: $78
	adc  h                                           ; $6834: $8c
	db   $fc                                         ; $6835: $fc
	jr   jr_093_6830                                 ; $6836: $18 $f8

	ld   a, h                                        ; $6838: $7c
	ld   hl, sp-$01                                  ; $6839: $f8 $ff
	db   $fc                                         ; $683b: $fc
	rst  $38                                         ; $683c: $ff
	rst  $38                                         ; $683d: $ff
	db   $fc                                         ; $683e: $fc
	add  sp, -$02                                    ; $683f: $e8 $fe
	cp   $00                                         ; $6841: $fe $00
	nop                                              ; $6843: $00
	inc  bc                                          ; $6844: $03
	nop                                              ; $6845: $00
	rra                                              ; $6846: $1f
	nop                                              ; $6847: $00
	rlca                                             ; $6848: $07
	ld   bc, $01cf                                   ; $6849: $01 $cf $01
	rst  $38                                         ; $684c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $684d: $cf
	ld   [hl], e                                     ; $684e: $73
	inc  sp                                          ; $684f: $33
	ld   c, [hl]                                     ; $6850: $4e
	ld   a, [hl]                                     ; $6851: $7e
	adc  $fe                                         ; $6852: $ce $fe
	adc  [hl]                                        ; $6854: $8e
	cp   $9e                                         ; $6855: $fe $9e
	cp   $1e                                         ; $6857: $fe $1e
	cp   $2a                                         ; $6859: $fe $2a
	ld   [$d2d2], a                                  ; $685b: $ea $d2 $d2
	ld   [bc], a                                     ; $685e: $02
	ld   [bc], a                                     ; $685f: $02
	ld   bc, $8000                                   ; $6860: $01 $00 $80
	add  b                                           ; $6863: $80
	ret  nz                                          ; $6864: $c0

	ret  nz                                          ; $6865: $c0

	ldh  [$f0], a                                    ; $6866: $e0 $f0
	db   $fc                                         ; $6868: $fc
	ld   hl, sp-$3b                                  ; $6869: $f8 $c5
	add  $03                                         ; $686b: $c6 $03
	inc  bc                                          ; $686d: $03
	rlca                                             ; $686e: $07
	ld   b, $c0                                      ; $686f: $06 $c0
	nop                                              ; $6871: $00
	ld   bc, $0100                                   ; $6872: $01 $00 $01
	nop                                              ; $6875: $00
	ld   [bc], a                                     ; $6876: $02
	ld   bc, $0305                                   ; $6877: $01 $05 $03
	rra                                              ; $687a: $1f
	ld   b, $7f                                      ; $687b: $06 $7f
	sbc  b                                           ; $687d: $98
	rst  $38                                         ; $687e: $ff
	ld   h, c                                        ; $687f: $61
	ld   bc, $8302                                   ; $6880: $01 $02 $83
	add  b                                           ; $6883: $80
	ret  nz                                          ; $6884: $c0

	pop  bc                                          ; $6885: $c1
	ldh  [$f0], a                                    ; $6886: $e0 $f0
	db   $fc                                         ; $6888: $fc
	ld   hl, sp-$3b                                  ; $6889: $f8 $c5
	add  $03                                         ; $688b: $c6 $03
	inc  bc                                          ; $688d: $03
	rlca                                             ; $688e: $07
	ld   b, $60                                      ; $688f: $06 $60
	nop                                              ; $6891: $00
	ld   bc, $0120                                   ; $6892: $01 $20 $01
	jr   nz, @+$24                                   ; $6895: $20 $22

	pop  bc                                          ; $6897: $c1
	dec  b                                           ; $6898: $05
	inc  bc                                          ; $6899: $03
	rra                                              ; $689a: $1f
	ld   b, $7f                                      ; $689b: $06 $7f
	sbc  b                                           ; $689d: $98
	rst  $38                                         ; $689e: $ff
	ld   h, c                                        ; $689f: $61
	inc  b                                           ; $68a0: $04
	inc  bc                                          ; $68a1: $03
	add  c                                           ; $68a2: $81
	add  b                                           ; $68a3: $80
	ret  nz                                          ; $68a4: $c0

	ret  nz                                          ; $68a5: $c0

	ldh  [$f0], a                                    ; $68a6: $e0 $f0
	db   $fc                                         ; $68a8: $fc
	ld   hl, sp-$3b                                  ; $68a9: $f8 $c5
	add  $03                                         ; $68ab: $c6 $03
	inc  bc                                          ; $68ad: $03
	rlca                                             ; $68ae: $07
	ld   b, $80                                      ; $68af: $06 $80
	nop                                              ; $68b1: $00
	add  c                                           ; $68b2: $81
	nop                                              ; $68b3: $00
	ld   bc, $0200                                   ; $68b4: $01 $00 $02
	ld   bc, $0305                                   ; $68b7: $01 $05 $03
	rra                                              ; $68ba: $1f
	ld   b, $7f                                      ; $68bb: $06 $7f
	sbc  b                                           ; $68bd: $98
	rst  $38                                         ; $68be: $ff
	ld   h, c                                        ; $68bf: $61
	cp   $00                                         ; $68c0: $fe $00
	ld   a, b                                        ; $68c2: $78
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	ld   bc, $0301                                   ; $68c8: $01 $01 $03
	inc  bc                                          ; $68cb: $03
	ld   b, $03                                      ; $68cc: $06 $03
	rrca                                             ; $68ce: $0f
	rrca                                             ; $68cf: $0f
	ld   c, [hl]                                     ; $68d0: $4e
	ld   a, [hl]                                     ; $68d1: $7e
	ld   c, [hl]                                     ; $68d2: $4e
	ld   a, [hl]                                     ; $68d3: $7e
	adc  [hl]                                        ; $68d4: $8e
	cp   $9e                                         ; $68d5: $fe $9e
	cp   $1e                                         ; $68d7: $fe $1e
	cp   $3e                                         ; $68d9: $fe $3e
	ld   [$d2fe], a                                  ; $68db: $ea $fe $d2
	cp   $02                                         ; $68de: $fe $02
	nop                                              ; $68e0: $00
	ccf                                              ; $68e1: $3f
	nop                                              ; $68e2: $00
	cp   a                                           ; $68e3: $bf
	nop                                              ; $68e4: $00
	rst  $38                                         ; $68e5: $ff
	nop                                              ; $68e6: $00
	rst  $38                                         ; $68e7: $ff
	db   $10                                         ; $68e8: $10
	rst  $38                                         ; $68e9: $ff
	jr   nz, @+$01                                   ; $68ea: $20 $ff

	ld   b, c                                        ; $68ec: $41
	rst  $38                                         ; $68ed: $ff
	add  d                                           ; $68ee: $82
	rst  $38                                         ; $68ef: $ff
	nop                                              ; $68f0: $00
	rst  $38                                         ; $68f1: $ff
	nop                                              ; $68f2: $00
	rst  $38                                         ; $68f3: $ff
	nop                                              ; $68f4: $00
	rst  $38                                         ; $68f5: $ff
	nop                                              ; $68f6: $00
	rst  $38                                         ; $68f7: $ff
	nop                                              ; $68f8: $00
	rst  $38                                         ; $68f9: $ff
	nop                                              ; $68fa: $00
	rst  $38                                         ; $68fb: $ff
	nop                                              ; $68fc: $00
	rst  $38                                         ; $68fd: $ff
	ld   [bc], a                                     ; $68fe: $02
	rst  $38                                         ; $68ff: $ff
	nop                                              ; $6900: $00
	rst  $38                                         ; $6901: $ff
	nop                                              ; $6902: $00
	rst  $38                                         ; $6903: $ff
	nop                                              ; $6904: $00
	rst  $38                                         ; $6905: $ff
	ld   [bc], a                                     ; $6906: $02
	rst  $38                                         ; $6907: $ff
	nop                                              ; $6908: $00
	rst  $38                                         ; $6909: $ff
	nop                                              ; $690a: $00
	rst  $38                                         ; $690b: $ff
	nop                                              ; $690c: $00
	rst  $38                                         ; $690d: $ff
	nop                                              ; $690e: $00
	rst  $38                                         ; $690f: $ff
	ld   [bc], a                                     ; $6910: $02
	cp   $02                                         ; $6911: $fe $02
	ld   a, [$f242]                                  ; $6913: $fa $42 $f2
	ld   [hl+], a                                    ; $6916: $22
	ldh  a, [c]                                      ; $6917: $f2
	and  d                                           ; $6918: $a2
	or   $52                                         ; $6919: $f6 $52
	or   $32                                         ; $691b: $f6 $32
	or   $12                                         ; $691d: $f6 $12
	or   $80                                         ; $691f: $f6 $80
	add  b                                           ; $6921: $80
	add  b                                           ; $6922: $80
	add  b                                           ; $6923: $80
	rra                                              ; $6924: $1f
	rra                                              ; $6925: $1f
	ld   [hl], b                                     ; $6926: $70
	ld   h, b                                        ; $6927: $60
	ret  nz                                          ; $6928: $c0

	add  b                                           ; $6929: $80
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	ld   bc, $0701                                   ; $6930: $01 $01 $07
	rlca                                             ; $6933: $07
	rst  $38                                         ; $6934: $ff
	ld   sp, hl                                      ; $6935: $f9
	rst  $38                                         ; $6936: $ff
	ld   bc, $013f                  ; $6937: $01 $3f $01
	rra                                              ; $693a: $1f
	ld   bc, $0206                                   ; $693b: $01 $06 $02
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	ld   b, c                                        ; $6940: $41
	ld   e, a                                        ; $6941: $5f
	add  [hl]                                        ; $6942: $86
	or   [hl]                                        ; $6943: $b6
	adc  h                                           ; $6944: $8c
	xor  b                                           ; $6945: $a8
	sbc  h                                           ; $6946: $9c
	sub  b                                           ; $6947: $90
	add  hl, sp                                      ; $6948: $39
	ld   h, c                                        ; $6949: $61
	ld   a, $67                                      ; $694a: $3e $67
	ld   a, b                                        ; $694c: $78
	rst  JumpTable                                         ; $694d: $df
	ld   [hl], b                                     ; $694e: $70
	rst  $38                                         ; $694f: $ff
	sbc  a                                           ; $6950: $9f
	add  b                                           ; $6951: $80
	ccf                                              ; $6952: $3f
	nop                                              ; $6953: $00
	ccf                                              ; $6954: $3f
	rrca                                             ; $6955: $0f
	ld   [hl], b                                     ; $6956: $70
	ld   a, a                                        ; $6957: $7f
	add  b                                           ; $6958: $80
	rst  $38                                         ; $6959: $ff

Jump_093_695a:
	db   $10                                         ; $695a: $10
	rst  $38                                         ; $695b: $ff
	jr   nz, @+$01                                   ; $695c: $20 $ff

	ld   b, h                                        ; $695e: $44
	rst  $38                                         ; $695f: $ff
	cp   $07                                         ; $6960: $fe $07
	rst  $38                                         ; $6962: $ff
	ld   bc, $80ff                                   ; $6963: $01 $ff $80
	ld   a, a                                        ; $6966: $7f
	ldh  a, [rIF]                                    ; $6967: $f0 $0f
	db   $fc                                         ; $6969: $fc
	inc  bc                                          ; $696a: $03
	rst  $38                                         ; $696b: $ff
	nop                                              ; $696c: $00
	rst  $38                                         ; $696d: $ff
	nop                                              ; $696e: $00
	rst  $38                                         ; $696f: $ff
	ld   [bc], a                                     ; $6970: $02
	cp   $a2                                         ; $6971: $fe $a2
	cp   $f2                                         ; $6973: $fe $f2
	ld   a, [hl]                                     ; $6975: $7e
	ldh  a, [c]                                      ; $6976: $f2
	ld   a, $fa                                      ; $6977: $3e $fa
	ld   a, [de]                                     ; $6979: $1a
	ld   a, [$fa0e]                                  ; $697a: $fa $0e $fa
	adc  [hl]                                        ; $697d: $8e
	ld   a, [hl]                                     ; $697e: $7e
	add  $40                                         ; $697f: $c6 $40
	rst  $38                                         ; $6981: $ff
	add  c                                           ; $6982: $81
	rst  $28                                         ; $6983: $ef
	inc  bc                                          ; $6984: $03
	rst  JumpTable                                         ; $6985: $df
	rla                                              ; $6986: $17
	sub  a                                           ; $6987: $97
	and  a                                           ; $6988: $a7
	xor  l                                           ; $6989: $ad
	daa                                              ; $698a: $27
	ld   l, l                                        ; $698b: $6d
	ld   c, [hl]                                     ; $698c: $4e
	ld   a, e                                        ; $698d: $7b
	adc  $fb                                         ; $698e: $ce $fb
	call z, $9dff                                    ; $6990: $cc $ff $9d
	rst  $38                                         ; $6993: $ff
	sbc  l                                           ; $6994: $9d
	cp   a                                           ; $6995: $bf
	dec  a                                           ; $6996: $3d
	ld   a, l                                        ; $6997: $7d
	dec  a                                           ; $6998: $3d
	ld   [hl], l                                     ; $6999: $75
	ld   [hl], l                                     ; $699a: $75
	rst  $10                                         ; $699b: $d7
	push af                                          ; $699c: $f5
	and  a                                           ; $699d: $a7
	push hl                                          ; $699e: $e5
	and  a                                           ; $699f: $a7
	ld   d, b                                        ; $69a0: $50
	rst  $38                                         ; $69a1: $ff
	ld   d, h                                        ; $69a2: $54
	rst  $38                                         ; $69a3: $ff
	ld   c, h                                        ; $69a4: $4c
	rst  $38                                         ; $69a5: $ff
	xor  $fe                                         ; $69a6: $ee $fe
	xor  $ae                                         ; $69a8: $ee $ae
	rst  $28                                         ; $69aa: $ef
	xor  l                                           ; $69ab: $ad
	rst  $20                                         ; $69ac: $e7
	cp   l                                           ; $69ad: $bd
	ld   [hl], a                                     ; $69ae: $77
	ld   e, l                                        ; $69af: $5d
	ld   a, $e6                                      ; $69b0: $3e $e6
	ld   e, $f6                                      ; $69b2: $1e $f6
	ld   e, $fe                                      ; $69b4: $1e $fe
	ld   c, $fe                                      ; $69b6: $0e $fe
	ld   c, $de                                      ; $69b8: $0e $de
	ld   b, $1e                                      ; $69ba: $06 $1e
	ld   h, $6e                                      ; $69bc: $26 $6e
	and  d                                           ; $69be: $a2
	cp   [hl]                                        ; $69bf: $be
	rst  JumpTable                                         ; $69c0: $df
	rst  $30                                         ; $69c1: $f7
	rst  JumpTable                                         ; $69c2: $df
	ei                                               ; $69c3: $fb
	cp   l                                           ; $69c4: $bd
	pop  af                                          ; $69c5: $f1
	cp   a                                           ; $69c6: $bf
	rst  $20                                         ; $69c7: $e7
	cp   d                                           ; $69c8: $ba
	db   $ec                                         ; $69c9: $ec
	ld   sp, hl                                      ; $69ca: $f9
	reti                                             ; $69cb: $d9


	cp   $c7                                         ; $69cc: $fe $c7
	ret  nc                                          ; $69ce: $d0

	ld   h, b                                        ; $69cf: $60
	db   $e3                                         ; $69d0: $e3
	and  e                                           ; $69d1: $a3
	db   $e3                                         ; $69d2: $e3
	ld   h, e                                        ; $69d3: $63
	ld   [hl], e                                     ; $69d4: $73
	inc  sp                                          ; $69d5: $33
	pop  af                                          ; $69d6: $f1
	ret                                              ; $69d7: $c9


	ld   h, c                                        ; $69d8: $61
	pop  hl                                          ; $69d9: $e1
	or   c                                           ; $69da: $b1
	ret  nz                                          ; $69db: $c0

	ld   b, b                                        ; $69dc: $40
	add  b                                           ; $69dd: $80
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	ld   [hl], e                                     ; $69e0: $73
	ld   e, [hl]                                     ; $69e1: $5e
	dec  sp                                          ; $69e2: $3b
	cpl                                              ; $69e3: $2f
	ccf                                              ; $69e4: $3f
	ld   e, $73                                      ; $69e5: $1e $73
	inc  hl                                          ; $69e7: $23
	rst  $28                                         ; $69e8: $ef
	rrca                                             ; $69e9: $0f
	reti                                             ; $69ea: $d9


	sbc  e                                           ; $69eb: $9b
	adc  [hl]                                        ; $69ec: $8e
	add  a                                           ; $69ed: $87
	inc  b                                           ; $69ee: $04
	inc  bc                                          ; $69ef: $03
	sub  d                                           ; $69f0: $92
	cp   $d2                                         ; $69f1: $fe $d2
	cp   $ca                                         ; $69f3: $fe $ca
	ld   a, [hl]                                     ; $69f5: $7e
	ld   [$f63e], a                                  ; $69f6: $ea $3e $f6
	sbc  $ba                                         ; $69f9: $de $ba
	ld   l, [hl]                                     ; $69fb: $6e
	ld   a, $36                                      ; $69fc: $3e $36
	cp   $c6                                         ; $69fe: $fe $c6
	ldh  a, [$60]                                    ; $6a00: $f0 $60
	ldh  a, [$60]                                    ; $6a02: $f0 $60
	ldh  a, [hScriptOpcodeParams]                                    ; $6a04: $f0 $a0
	ldh  [$b0], a                                    ; $6a06: $e0 $b0
	ldh  a, [$d0]                                    ; $6a08: $f0 $d0
	ld   a, b                                        ; $6a0a: $78
	ldh  a, [$30]                                    ; $6a0b: $f0 $30
	ld   hl, sp+$34                                  ; $6a0d: $f8 $34
	ld   hl, sp+$00                                  ; $6a0f: $f8 $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	ld   bc, $0103                                   ; $6a19: $01 $03 $01
	ld   bc, $0e00                                   ; $6a1c: $01 $00 $0e
	inc  c                                           ; $6a1f: $0c
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	add  b                                           ; $6a26: $80
	nop                                              ; $6a27: $00
	add  b                                           ; $6a28: $80
	nop                                              ; $6a29: $00
	add  b                                           ; $6a2a: $80
	nop                                              ; $6a2b: $00
	add  b                                           ; $6a2c: $80
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	halt                                             ; $6a30: $76
	ld   c, $1e                                      ; $6a31: $0e $1e
	ld   l, $6e                                      ; $6a33: $2e $6e
	ld   e, $6e                                      ; $6a35: $1e $6e
	ld   e, $7e                                      ; $6a37: $1e $7e
	ld   d, $de                                      ; $6a39: $16 $de
	ld   [hl], $fe                                   ; $6a3b: $36 $fe
	ld   l, $b6                                      ; $6a3d: $2e $b6
	ld   a, [hl]                                     ; $6a3f: $7e
	jr   c, @-$02                                    ; $6a40: $38 $fc

	ld   a, [hl+]                                    ; $6a42: $2a
	db   $fc                                         ; $6a43: $fc
	ld   h, l                                        ; $6a44: $65
	cp   $67                                         ; $6a45: $fe $67
	rst  $38                                         ; $6a47: $ff
	ld   h, a                                        ; $6a48: $67
	rst  $38                                         ; $6a49: $ff
	ld   [hl], e                                     ; $6a4a: $73
	rst  $38                                         ; $6a4b: $ff
	rst  $38                                         ; $6a4c: $ff
	rst  $38                                         ; $6a4d: $ff
	sbc  h                                           ; $6a4e: $9c
	adc  b                                           ; $6a4f: $88
	rrca                                             ; $6a50: $0f
	ld   [$0801], sp                                 ; $6a51: $08 $01 $08
	inc  c                                           ; $6a54: $0c
	nop                                              ; $6a55: $00
	add  l                                           ; $6a56: $85
	dec  b                                           ; $6a57: $05
	rst  ToBoot                                         ; $6a58: $c7
	add  d                                           ; $6a59: $82
	ldh  [$c0], a                                    ; $6a5a: $e0 $c0
	ldh  a, [$e0]                                    ; $6a5c: $f0 $e0
	ld   [hl], $39                                   ; $6a5e: $36 $39
	add  c                                           ; $6a60: $81
	ret  nz                                          ; $6a61: $c0

	pop  bc                                          ; $6a62: $c1
	add  b                                           ; $6a63: $80
	inc  bc                                          ; $6a64: $03
	add  c                                           ; $6a65: $81
	rlca                                             ; $6a66: $07
	inc  bc                                          ; $6a67: $03
	rlca                                             ; $6a68: $07
	dec  c                                           ; $6a69: $0d
	rrca                                             ; $6a6a: $0f
	add  hl, de                                      ; $6a6b: $19
	ccf                                              ; $6a6c: $3f
	ld   h, c                                        ; $6a6d: $61
	rst  $38                                         ; $6a6e: $ff
	adc  a                                           ; $6a6f: $8f
	or   $7e                                         ; $6a70: $f6 $7e
	sub  $fe                                         ; $6a72: $d6 $fe
	sub  $fe                                         ; $6a74: $d6 $fe
	sbc  $fe                                         ; $6a76: $de $fe
	sbc  $fe                                         ; $6a78: $de $fe
	cp   $fe                                         ; $6a7a: $fe $fe
	jp   z, $8afe                                    ; $6a7c: $ca $fe $8a

	cp   $71                                         ; $6a7f: $fe $71
	ld   sp, $c6cf                                   ; $6a81: $31 $cf $c6
	rst  $38                                         ; $6a84: $ff
	ld   a, e                                        ; $6a85: $7b
	rst  $38                                         ; $6a86: $ff
	ldh  [$1f], a                                    ; $6a87: $e0 $1f
	ld   de, $080f                                   ; $6a89: $11 $0f $08
	rst  $38                                         ; $6a8c: $ff
	ld   hl, sp+$0f                                  ; $6a8d: $f8 $0f
	inc  b                                           ; $6a8f: $04
	sbc  a                                           ; $6a90: $9f
	rra                                              ; $6a91: $1f

jr_093_6a92:
	xor  $47                                         ; $6a92: $ee $47
	jp   $c081                                       ; $6a94: $c3 $81 $c0


	nop                                              ; $6a97: $00
	ret  nz                                          ; $6a98: $c0

	nop                                              ; $6a99: $00
	ldh  [$80], a                                    ; $6a9a: $e0 $80
	ldh  a, [rLCDC]                                  ; $6a9c: $f0 $40
	db   $fc                                         ; $6a9e: $fc
	jr   nz, jr_093_6a92                             ; $6a9f: $20 $f1

	rst  $38                                         ; $6aa1: $ff
	ld   bc, $03ff                                   ; $6aa2: $01 $ff $03
	rst  $38                                         ; $6aa5: $ff
	rst  $38                                         ; $6aa6: $ff
	db   $fd                                         ; $6aa7: $fd
	ld   b, a                                        ; $6aa8: $47
	ld   b, c                                        ; $6aa9: $41
	cpl                                              ; $6aaa: $2f
	ld   [hl+], a                                    ; $6aab: $22
	inc  e                                           ; $6aac: $1c
	db   $10                                         ; $6aad: $10
	db   $10                                         ; $6aae: $10
	db   $10                                         ; $6aaf: $10
	ld   a, [de]                                     ; $6ab0: $1a
	cp   $3a                                         ; $6ab1: $fe $3a
	xor  $7a                                         ; $6ab3: $ee $7a
	adc  $fe                                         ; $6ab5: $ce $fe
	sbc  [hl]                                        ; $6ab7: $9e
	cp   [hl]                                        ; $6ab8: $be
	ld   a, [de]                                     ; $6ab9: $1a
	ld   a, d                                        ; $6aba: $7a
	ld   [hl+], a                                    ; $6abb: $22
	ld   a, [hl]                                     ; $6abc: $7e
	ld   c, [hl]                                     ; $6abd: $4e
	cp   $3e                                         ; $6abe: $fe $3e
	ld   [hl], $fe                                   ; $6ac0: $36 $fe
	cp   [hl]                                        ; $6ac2: $be
	ld   [$eaba], a                                  ; $6ac3: $ea $ba $ea
	and  a                                           ; $6ac6: $a7
	cp   $b7                                         ; $6ac7: $fe $b7
	rst  $20                                         ; $6ac9: $e7
	and  a                                           ; $6aca: $a7
	rst  $28                                         ; $6acb: $ef
	db   $ed                                         ; $6acc: $ed
	ld   sp, hl                                      ; $6acd: $f9
	pop  af                                          ; $6ace: $f1
	di                                               ; $6acf: $f3
	and  a                                           ; $6ad0: $a7
	cp   l                                           ; $6ad1: $bd
	or   l                                           ; $6ad2: $b5
	sbc  h                                           ; $6ad3: $9c
	sub  d                                           ; $6ad4: $92
	sbc  [hl]                                        ; $6ad5: $9e
	xor  d                                           ; $6ad6: $aa
	xor  $e5                                         ; $6ad7: $ee $e5
	add  a                                           ; $6ad9: $87
	ld   b, a                                        ; $6ada: $47
	add  e                                           ; $6adb: $83
	db   $e3                                         ; $6adc: $e3
	pop  bc                                          ; $6add: $c1
	ld   b, b                                        ; $6ade: $40
	add  b                                           ; $6adf: $80
	dec  sp                                          ; $6ae0: $3b
	rst  $28                                         ; $6ae1: $ef
	or   l                                           ; $6ae2: $b5
	rst  $28                                         ; $6ae3: $ef
	db   $db                                         ; $6ae4: $db
	ld   a, a                                        ; $6ae5: $7f
	ld   a, [hl]                                     ; $6ae6: $7e
	ld   [hl], a                                     ; $6ae7: $77
	ld   h, a                                        ; $6ae8: $67
	rra                                              ; $6ae9: $1f
	jp   nc, $c83b                                   ; $6aea: $d2 $3b $c8

	add  a                                           ; $6aed: $87
	ret  nz                                          ; $6aee: $c0

	nop                                              ; $6aef: $00
	ld   [hl-], a                                    ; $6af0: $32
	cp   $92                                         ; $6af1: $fe $92
	cp   $72                                         ; $6af3: $fe $72
	cp   $f2                                         ; $6af5: $fe $f2
	sbc  [hl]                                        ; $6af7: $9e
	ldh  a, [c]                                      ; $6af8: $f2
	ld   a, [$9ab2]                                  ; $6af9: $fa $b2 $9a
	ld   [hl], d                                     ; $6afc: $72
	sbc  d                                           ; $6afd: $9a
	ld   [hl-], a                                    ; $6afe: $32
	ld   d, d                                        ; $6aff: $52
	ld   bc, $8000                                   ; $6b00: $01 $00 $80
	add  b                                           ; $6b03: $80
	ret  nz                                          ; $6b04: $c0

	ret  nz                                          ; $6b05: $c0

	ldh  [$f0], a                                    ; $6b06: $e0 $f0
	db   $fc                                         ; $6b08: $fc
	ld   hl, sp-$3b                                  ; $6b09: $f8 $c5
	add  $03                                         ; $6b0b: $c6 $03
	inc  bc                                          ; $6b0d: $03
	inc  a                                           ; $6b0e: $3c
	inc  a                                           ; $6b0f: $3c
	ret  nz                                          ; $6b10: $c0

	nop                                              ; $6b11: $00
	ld   bc, $0100                                   ; $6b12: $01 $00 $01
	nop                                              ; $6b15: $00
	ld   [bc], a                                     ; $6b16: $02
	ld   bc, $0305                                   ; $6b17: $01 $05 $03
	ld   a, a                                        ; $6b1a: $7f
	halt                                             ; $6b1b: $76
	sbc  a                                           ; $6b1c: $9f
	sbc  b                                           ; $6b1d: $98
	ld   l, a                                        ; $6b1e: $6f
	ld   l, b                                        ; $6b1f: $68
	add  e                                           ; $6b20: $83
	add  e                                           ; $6b21: $83
	cp   h                                           ; $6b22: $bc
	cp   h                                           ; $6b23: $bc
	jp   $3cc3                                       ; $6b24: $c3 $c3 $3c


	inc  a                                           ; $6b27: $3c
	rst  ToBoot                                         ; $6b28: $c7
	rst  ToBoot                                         ; $6b29: $c7
	ld   a, b                                        ; $6b2a: $78
	ld   a, b                                        ; $6b2b: $78
	add  b                                           ; $6b2c: $80
	add  b                                           ; $6b2d: $80
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	jp   $3cc3                                       ; $6b30: $c3 $c3 $3c


	inc  a                                           ; $6b33: $3c
	rst  ToBoot                                         ; $6b34: $c7
	rst  ToBoot                                         ; $6b35: $c7
	ld   a, b                                        ; $6b36: $78
	ld   a, b                                        ; $6b37: $78
	add  b                                           ; $6b38: $80
	add  b                                           ; $6b39: $80
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	sub  a                                           ; $6b40: $97
	sub  h                                           ; $6b41: $94
	db   $eb                                         ; $6b42: $eb
	db   $eb                                         ; $6b43: $eb
	ld   a, [bc]                                     ; $6b44: $0a
	dec  bc                                          ; $6b45: $0b
	dec  b                                           ; $6b46: $05
	dec  b                                           ; $6b47: $05
	dec  b                                           ; $6b48: $05
	dec  b                                           ; $6b49: $05
	ld   [bc], a                                     ; $6b4a: $02
	ld   [bc], a                                     ; $6b4b: $02
	ld   [bc], a                                     ; $6b4c: $02
	ld   [bc], a                                     ; $6b4d: $02
	ld   bc, $ce01                                   ; $6b4e: $01 $01 $ce
	cp   $ce                                         ; $6b51: $fe $ce
	cp   $8e                                         ; $6b53: $fe $8e
	cp   $9e                                         ; $6b55: $fe $9e
	cp   $1e                                         ; $6b57: $fe $1e
	cp   $be                                         ; $6b59: $fe $be
	ld   [$d2fe], a                                  ; $6b5b: $ea $fe $d2
	ld   a, [hl]                                     ; $6b5e: $7e
	ld   b, d                                        ; $6b5f: $42
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	ld   e, b                                        ; $6bb0: $58
	rst  $38                                         ; $6bb1: $ff
	ld   c, b                                        ; $6bb2: $48
	ld   a, a                                        ; $6bb3: $7f
	ld   h, d                                        ; $6bb4: $62
	ld   a, a                                        ; $6bb5: $7f
	ld   [hl+], a                                    ; $6bb6: $22
	ld   a, a                                        ; $6bb7: $7f
	or   c                                           ; $6bb8: $b1
	cp   $76                                         ; $6bb9: $fe $76
	db   $fc                                         ; $6bbb: $fc
	ld   [hl], $7c                                   ; $6bbc: $36 $7c
	ld   a, $3c                                      ; $6bbe: $3e $3c
	ld   e, $3c                                      ; $6bc0: $1e $3c
	ld   d, $1c                                      ; $6bc2: $16 $1c
	ld   e, $1c                                      ; $6bc4: $1e $1c
	ld   c, $0c                                      ; $6bc6: $0e $0c
	ld   b, $0c                                      ; $6bc8: $06 $0c
	ld   b, $04                                      ; $6bca: $06 $04
	ld   b, $04                                      ; $6bcc: $06 $04
	rlca                                             ; $6bce: $07
	rlca                                             ; $6bcf: $07
	nop                                              ; $6bd0: $00
	add  sp, -$70                                    ; $6bd1: $e8 $90
	or   $d4                                         ; $6bd3: $f6 $d4
	rst  $38                                         ; $6bd5: $ff
	db   $fd                                         ; $6bd6: $fd
	rst  $38                                         ; $6bd7: $ff
	cp   l                                           ; $6bd8: $bd
	ld   a, a                                        ; $6bd9: $7f
	ld   [hl], $1f                                   ; $6bda: $36 $1f
	ld   bc, $0002                                   ; $6bdc: $01 $02 $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	ldh  [$80], a                                    ; $6bee: $e0 $80
	nop                                              ; $6bf0: $00
	and  e                                           ; $6bf1: $a3
	ld   bc, $814b                                   ; $6bf2: $01 $4b $81
	rst  JumpTable                                         ; $6bf5: $df
	adc  e                                           ; $6bf6: $8b
	rst  $38                                         ; $6bf7: $ff
	push de                                          ; $6bf8: $d5
	rst  $38                                         ; $6bf9: $ff
	ld   sp, hl                                      ; $6bfa: $f9
	db   $fc                                         ; $6bfb: $fc
	ldh  a, [$e0]                                    ; $6bfc: $f0 $e0
	ld   h, b                                        ; $6bfe: $60
	ld   b, b                                        ; $6bff: $40
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	ld   bc, $9700                                   ; $6c0e: $01 $00 $97
	rst  $38                                         ; $6c11: $ff
	or   a                                           ; $6c12: $b7
	rst  $38                                         ; $6c13: $ff
	db   $fd                                         ; $6c14: $fd
	rst  $38                                         ; $6c15: $ff
	sub  [hl]                                        ; $6c16: $96
	ld   sp, hl                                      ; $6c17: $f9
	ld   a, a                                        ; $6c18: $7f
	add  c                                           ; $6c19: $81
	rra                                              ; $6c1a: $1f
	nop                                              ; $6c1b: $00
	rrca                                             ; $6c1c: $0f
	ld   bc, $0007                                   ; $6c1d: $01 $07 $00
	rlca                                             ; $6c20: $07
	ld   bc, $0107                                   ; $6c21: $01 $07 $01
	rlca                                             ; $6c24: $07
	ld   bc, $0007                                   ; $6c25: $01 $07 $00
	rlca                                             ; $6c28: $07
	nop                                              ; $6c29: $00
	rrca                                             ; $6c2a: $0f
	nop                                              ; $6c2b: $00
	cpl                                              ; $6c2c: $2f
	rra                                              ; $6c2d: $1f
	ld   a, a                                        ; $6c2e: $7f
	ld   hl, sp+$07                                  ; $6c2f: $f8 $07
	inc  b                                           ; $6c31: $04
	ld   b, $05                                      ; $6c32: $06 $05
	ld   b, $05                                      ; $6c34: $06 $05
	ld   c, $0b                                      ; $6c36: $0e $0b
	ld   e, $17                                      ; $6c38: $1e $17
	rra                                              ; $6c3a: $1f
	ld   d, $1f                                      ; $6c3b: $16 $1f
	dec  d                                           ; $6c3d: $15
	rrca                                             ; $6c3e: $0f
	dec  bc                                          ; $6c3f: $0b
	rlca                                             ; $6c40: $07
	dec  b                                           ; $6c41: $05
	inc  bc                                          ; $6c42: $03
	ld   [bc], a                                     ; $6c43: $02
	ld   bc, $0001                                   ; $6c44: $01 $01 $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	cp   $78                                         ; $6c50: $fe $78
	rst  $38                                         ; $6c52: $ff
	ld   a, $fb                                      ; $6c53: $3e $fb
	db   $db                                         ; $6c55: $db
	rra                                              ; $6c56: $1f
	inc  c                                           ; $6c57: $0c
	inc  c                                           ; $6c58: $0c
	nop                                              ; $6c59: $00
	inc  e                                           ; $6c5a: $1c
	inc  e                                           ; $6c5b: $1c
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	add  b                                           ; $6c60: $80
	ld   a, a                                        ; $6c61: $7f
	add  b                                           ; $6c62: $80
	rst  $38                                         ; $6c63: $ff
	add  b                                           ; $6c64: $80
	rst  $38                                         ; $6c65: $ff
	ret  nz                                          ; $6c66: $c0

	cp   a                                           ; $6c67: $bf
	ld   b, b                                        ; $6c68: $40
	ld   a, a                                        ; $6c69: $7f
	ld   h, b                                        ; $6c6a: $60
	ld   e, a                                        ; $6c6b: $5f
	jr   nz, @+$41                                   ; $6c6c: $20 $3f

	db   $10                                         ; $6c6e: $10
	rra                                              ; $6c6f: $1f
	dec  b                                           ; $6c70: $05
	inc  bc                                          ; $6c71: $03
	rlca                                             ; $6c72: $07
	ld   b, $8f                                      ; $6c73: $06 $8f
	ld   bc, $0088                                   ; $6c75: $01 $88 $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	ld   [$1000], sp                                 ; $6c7e: $08 $00 $10
	ld   [$0818], sp                                 ; $6c81: $08 $18 $08
	ld   [$081c], sp                                 ; $6c84: $08 $1c $08
	inc  e                                           ; $6c87: $1c
	nop                                              ; $6c88: $00
	jr   jr_093_6c8b                                 ; $6c89: $18 $00

jr_093_6c8b:
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	rst  $38                                         ; $6c90: $ff
	db   $fc                                         ; $6c91: $fc
	and  e                                           ; $6c92: $a3
	rst  $28                                         ; $6c93: $ef
	db   $e3                                         ; $6c94: $e3
	ld   [hl], b                                     ; $6c95: $70
	ld   h, e                                        ; $6c96: $63
	nop                                              ; $6c97: $00
	rrca                                             ; $6c98: $0f
	jr   c, jr_093_6c9c                              ; $6c99: $38 $01

	nop                                              ; $6c9b: $00

jr_093_6c9c:
	inc  bc                                          ; $6c9c: $03
	nop                                              ; $6c9d: $00
	inc  bc                                          ; $6c9e: $03
	nop                                              ; $6c9f: $00
	rlca                                             ; $6ca0: $07
	nop                                              ; $6ca1: $00
	rlca                                             ; $6ca2: $07
	nop                                              ; $6ca3: $00
	rlca                                             ; $6ca4: $07
	nop                                              ; $6ca5: $00
	rlca                                             ; $6ca6: $07
	nop                                              ; $6ca7: $00
	rlca                                             ; $6ca8: $07
	nop                                              ; $6ca9: $00
	rlca                                             ; $6caa: $07
	ld   bc, $010f                                   ; $6cab: $01 $0f $01
	rrca                                             ; $6cae: $0f
	inc  bc                                          ; $6caf: $03
	cp   $78                                         ; $6cb0: $fe $78
	rst  $38                                         ; $6cb2: $ff
	ld   c, $3f                                      ; $6cb3: $0e $3f
	inc  bc                                          ; $6cb5: $03
	rst  $38                                         ; $6cb6: $ff
	db   $fc                                         ; $6cb7: $fc
	ld   a, [hl]                                     ; $6cb8: $7e
	ld   [hl], $1c                                   ; $6cb9: $36 $1c
	inc  e                                           ; $6cbb: $1c
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	dec  b                                           ; $6cc0: $05
	inc  bc                                          ; $6cc1: $03
	rlca                                             ; $6cc2: $07
	ld   b, $8f                                      ; $6cc3: $06 $8f
	nop                                              ; $6cc5: $00
	adc  c                                           ; $6cc6: $89
	ld   bc, $0000                                   ; $6cc7: $01 $00 $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	ld   [$ff00], sp                                 ; $6cce: $08 $00 $ff
	add  b                                           ; $6cd1: $80
	rst  $38                                         ; $6cd2: $ff
	nop                                              ; $6cd3: $00
	rst  $38                                         ; $6cd4: $ff
	rst  $38                                         ; $6cd5: $ff
	rst  $38                                         ; $6cd6: $ff
	ld   e, h                                        ; $6cd7: $5c
	dec  sp                                          ; $6cd8: $3b
	inc  a                                           ; $6cd9: $3c
	ld   bc, $0300                                   ; $6cda: $01 $00 $03
	nop                                              ; $6cdd: $00
	inc  bc                                          ; $6cde: $03
	nop                                              ; $6cdf: $00
	cp   $78                                         ; $6ce0: $fe $78
	rst  $38                                         ; $6ce2: $ff
	ld   c, $3f                                      ; $6ce3: $0e $3f
	inc  bc                                          ; $6ce5: $03
	ccf                                              ; $6ce6: $3f
	nop                                              ; $6ce7: $00
	cp   $7e                                         ; $6ce8: $fe $7e
	ld   a, h                                        ; $6cea: $7c
	inc  a                                           ; $6ceb: $3c
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	rst  $38                                         ; $6cf0: $ff
	add  b                                           ; $6cf1: $80
	rst  $38                                         ; $6cf2: $ff
	nop                                              ; $6cf3: $00
	rst  $30                                         ; $6cf4: $f7
	rrca                                             ; $6cf5: $0f
	rst  $38                                         ; $6cf6: $ff
	db   $fc                                         ; $6cf7: $fc
	ld   a, e                                        ; $6cf8: $7b
	inc  a                                           ; $6cf9: $3c
	ld   bc, $0300                                   ; $6cfa: $01 $00 $03
	nop                                              ; $6cfd: $00
	inc  bc                                          ; $6cfe: $03
	nop                                              ; $6cff: $00
	ld   [$0c04], sp                                 ; $6d00: $08 $04 $0c
	inc  b                                           ; $6d03: $04
	inc  b                                           ; $6d04: $04
	ld   c, $04                                      ; $6d05: $0e $04
	ld   c, $00                                      ; $6d07: $0e $00
	inc  c                                           ; $6d09: $0c
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	rlca                                             ; $6d0c: $07
	inc  sp                                          ; $6d0d: $33
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	rrca                                             ; $6d10: $0f
	inc  b                                           ; $6d11: $04
	ld   b, $00                                      ; $6d12: $06 $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	ret  nz                                          ; $6d2c: $c0

	add  b                                           ; $6d2d: $80
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	ld   [$0c04], sp                                 ; $6d40: $08 $04 $0c
	inc  b                                           ; $6d43: $04
	inc  b                                           ; $6d44: $04
	ld   c, $04                                      ; $6d45: $0e $04
	ld   c, $00                                      ; $6d47: $0e $00
	inc  c                                           ; $6d49: $0c
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	ld   a, [hl+]                                    ; $6d4c: $2a
	scf                                              ; $6d4d: $37
	ld   hl, $1610                                   ; $6d4e: $21 $10 $16
	rrca                                             ; $6d51: $0f
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	rlca                                             ; $6d54: $07
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	add  b                                           ; $6d6c: $80
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	add  b                                           ; $6d6f: $80
	ld   e, $3c                                      ; $6d70: $1e $3c
	ld   d, $1c                                      ; $6d72: $16 $1c
	ld   e, $1c                                      ; $6d74: $1e $1c
	ld   c, $0c                                      ; $6d76: $0e $0c
	ld   b, $0c                                      ; $6d78: $06 $0c
	ld   b, $04                                      ; $6d7a: $06 $04
	ld   b, $04                                      ; $6d7c: $06 $04
	rlca                                             ; $6d7e: $07
	inc  b                                           ; $6d7f: $04
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	ldh  [rP1], a                                    ; $6d8e: $e0 $00
	rlca                                             ; $6d90: $07
	ld   bc, $0107                                   ; $6d91: $01 $07 $01
	rlca                                             ; $6d94: $07
	ld   bc, $0007                                   ; $6d95: $01 $07 $00
	rlca                                             ; $6d98: $07
	nop                                              ; $6d99: $00
	rrca                                             ; $6d9a: $0f
	nop                                              ; $6d9b: $00
	ccf                                              ; $6d9c: $3f
	nop                                              ; $6d9d: $00
	ld   a, a                                        ; $6d9e: $7f
	rst  $38                                         ; $6d9f: $ff
	rlca                                             ; $6da0: $07
	rlca                                             ; $6da1: $07
	rlca                                             ; $6da2: $07
	inc  b                                           ; $6da3: $04
	ld   b, $05                                      ; $6da4: $06 $05
	ld   c, $0b                                      ; $6da6: $0e $0b
	ld   e, $17                                      ; $6da8: $1e $17
	rra                                              ; $6daa: $1f
	ld   d, $1f                                      ; $6dab: $16 $1f
	dec  d                                           ; $6dad: $15
	rrca                                             ; $6dae: $0f
	dec  bc                                          ; $6daf: $0b
	cp   $fc                                         ; $6db0: $fe $fc
	rst  $38                                         ; $6db2: $ff
	ccf                                              ; $6db3: $3f
	rst  $30                                         ; $6db4: $f7
	rst  $10                                         ; $6db5: $d7
	rra                                              ; $6db6: $1f
	inc  c                                           ; $6db7: $0c
	inc  a                                           ; $6db8: $3c
	inc  e                                           ; $6db9: $1c
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	dec  b                                           ; $6dc0: $05
	inc  bc                                          ; $6dc1: $03
	rlca                                             ; $6dc2: $07
	nop                                              ; $6dc3: $00
	adc  a                                           ; $6dc4: $8f
	ld   bc, $0088                                   ; $6dc5: $01 $88 $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	ld   [$fb00], sp                                 ; $6dce: $08 $00 $fb
	db   $fc                                         ; $6dd1: $fc
	sub  e                                           ; $6dd2: $93
	cp   a                                           ; $6dd3: $bf
	db   $e3                                         ; $6dd4: $e3
	ld   [hl], b                                     ; $6dd5: $70
	ld   c, a                                        ; $6dd6: $4f
	jr   c, @+$05                                    ; $6dd7: $38 $03

	nop                                              ; $6dd9: $00
	ld   bc, $0300                                   ; $6dda: $01 $00 $03
	nop                                              ; $6ddd: $00
	inc  bc                                          ; $6dde: $03
	nop                                              ; $6ddf: $00
	cp   $fc                                         ; $6de0: $fe $fc
	rst  $38                                         ; $6de2: $ff
	inc  bc                                          ; $6de3: $03
	ld   a, a                                        ; $6de4: $7f
	ccf                                              ; $6de5: $3f
	rst  JumpTable                                         ; $6de6: $df
	adc  $3c                                         ; $6de7: $ce $3c
	inc  e                                           ; $6de9: $1c
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	dec  b                                           ; $6df0: $05
	inc  bc                                          ; $6df1: $03
	rlca                                             ; $6df2: $07
	nop                                              ; $6df3: $00
	adc  a                                           ; $6df4: $8f
	nop                                              ; $6df5: $00
	adc  c                                           ; $6df6: $89
	ld   bc, $0000                                   ; $6df7: $01 $00 $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	ld   [$bf00], sp                                 ; $6dfe: $08 $00 $bf
	ret  nz                                          ; $6e01: $c0

	rst  $38                                         ; $6e02: $ff
	ld   a, h                                        ; $6e03: $7c
	rst  $38                                         ; $6e04: $ff
	ei                                               ; $6e05: $fb
	ld   e, a                                        ; $6e06: $5f
	jr   c, @+$05                                    ; $6e07: $38 $03

	nop                                              ; $6e09: $00
	ld   bc, $0300                                   ; $6e0a: $01 $00 $03
	nop                                              ; $6e0d: $00
	inc  bc                                          ; $6e0e: $03
	nop                                              ; $6e0f: $00
	cp   $fc                                         ; $6e10: $fe $fc
	rst  $38                                         ; $6e12: $ff
	inc  bc                                          ; $6e13: $03
	ccf                                              ; $6e14: $3f
	nop                                              ; $6e15: $00
	cp   $7e                                         ; $6e16: $fe $7e
	ld   a, h                                        ; $6e18: $7c
	inc  a                                           ; $6e19: $3c
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	dec  b                                           ; $6e20: $05
	inc  bc                                          ; $6e21: $03
	rlca                                             ; $6e22: $07
	nop                                              ; $6e23: $00
	adc  a                                           ; $6e24: $8f
	ld   bc, $0008                                   ; $6e25: $01 $08 $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	ld   [$bf00], sp                                 ; $6e2e: $08 $00 $bf
	ret  nz                                          ; $6e31: $c0

	rst  $30                                         ; $6e32: $f7
	rrca                                             ; $6e33: $0f
	rst  $38                                         ; $6e34: $ff
	db   $fc                                         ; $6e35: $fc
	ld   a, e                                        ; $6e36: $7b
	inc  a                                           ; $6e37: $3c
	ld   bc, $0100                                   ; $6e38: $01 $00 $01
	nop                                              ; $6e3b: $00
	inc  bc                                          ; $6e3c: $03
	nop                                              ; $6e3d: $00
	inc  bc                                          ; $6e3e: $03
	nop                                              ; $6e3f: $00
	ld   [$0c04], sp                                 ; $6e40: $08 $04 $0c
	inc  b                                           ; $6e43: $04
	inc  b                                           ; $6e44: $04
	ld   c, $04                                      ; $6e45: $0e $04
	ld   c, $00                                      ; $6e47: $0e $00
	inc  c                                           ; $6e49: $0c
	ld   b, b                                        ; $6e4a: $40
	nop                                              ; $6e4b: $00
	ld   d, l                                        ; $6e4c: $55
	ld   h, e                                        ; $6e4d: $63
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	ld   b, b                                        ; $6e5b: $40
	ret  nz                                          ; $6e5c: $c0

	add  b                                           ; $6e5d: $80
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	ld   [$0c04], sp                                 ; $6e60: $08 $04 $0c
	inc  b                                           ; $6e63: $04
	inc  b                                           ; $6e64: $04
	ld   c, $04                                      ; $6e65: $0e $04
	ld   c, $00                                      ; $6e67: $0e $00
	inc  c                                           ; $6e69: $0c
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	inc  [hl]                                        ; $6e6c: $34
	ld   h, e                                        ; $6e6d: $63
	db   $10                                         ; $6e6e: $10
	jr   nc, jr_093_6e80                             ; $6e6f: $30 $0f

	rra                                              ; $6e71: $1f
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	ld   b, $00                                      ; $6e74: $06 $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00

jr_093_6e80:
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	add  b                                           ; $6e8c: $80
	ret  nz                                          ; $6e8d: $c0

	ret  nz                                          ; $6e8e: $c0

	add  b                                           ; $6e8f: $80
	ld   e, $3c                                      ; $6e90: $1e $3c
	ld   d, $1c                                      ; $6e92: $16 $1c
	ld   e, $1c                                      ; $6e94: $1e $1c
	ld   c, $0c                                      ; $6e96: $0e $0c
	ld   b, $0c                                      ; $6e98: $06 $0c
	ld   b, $04                                      ; $6e9a: $06 $04
	rlca                                             ; $6e9c: $07
	rlca                                             ; $6e9d: $07
	rlca                                             ; $6e9e: $07
	inc  b                                           ; $6e9f: $04
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
	and  b                                           ; $6eae: $a0
	ret  nz                                          ; $6eaf: $c0

	rlca                                             ; $6eb0: $07
	ld   bc, $0107                                   ; $6eb1: $01 $07 $01
	rlca                                             ; $6eb4: $07
	ld   bc, $0007                                   ; $6eb5: $01 $07 $00
	rlca                                             ; $6eb8: $07
	nop                                              ; $6eb9: $00
	rrca                                             ; $6eba: $0f
	rlca                                             ; $6ebb: $07
	cpl                                              ; $6ebc: $2f
	inc  e                                           ; $6ebd: $1c
	ld   a, a                                        ; $6ebe: $7f
	ldh  a, [$fe]                                    ; $6ebf: $f0 $fe
	jr   c, @+$01                                    ; $6ec1: $38 $ff

	ld   a, $fb                                      ; $6ec3: $3e $fb
	db   $db                                         ; $6ec5: $db
	rra                                              ; $6ec6: $1f
	inc  c                                           ; $6ec7: $0c
	inc  c                                           ; $6ec8: $0c
	nop                                              ; $6ec9: $00
	inc  e                                           ; $6eca: $1c
	inc  e                                           ; $6ecb: $1c
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	rlca                                             ; $6ed0: $07
	ld   bc, $0706                                   ; $6ed1: $01 $06 $07
	adc  a                                           ; $6ed4: $8f
	ld   bc, $0088                                   ; $6ed5: $01 $88 $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	ld   [$fe00], sp                                 ; $6ede: $08 $00 $fe
	jr   c, @+$01                                    ; $6ee1: $38 $ff

	ld   c, $3f                                      ; $6ee3: $0e $3f
	inc  bc                                          ; $6ee5: $03
	rst  $38                                         ; $6ee6: $ff
	db   $fc                                         ; $6ee7: $fc
	ld   a, [hl]                                     ; $6ee8: $7e
	ld   [hl], $1c                                   ; $6ee9: $36 $1c
	inc  e                                           ; $6eeb: $1c
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	rlca                                             ; $6ef0: $07
	ld   bc, $0607                                   ; $6ef1: $01 $07 $06
	adc  a                                           ; $6ef4: $8f
	nop                                              ; $6ef5: $00
	adc  c                                           ; $6ef6: $89
	ld   bc, $0000                                   ; $6ef7: $01 $00 $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	ld   [$fe00], sp                                 ; $6efe: $08 $00 $fe
	jr   c, @+$01                                    ; $6f01: $38 $ff

	ld   c, $3f                                      ; $6f03: $0e $3f
	inc  bc                                          ; $6f05: $03
	rra                                              ; $6f06: $1f
	nop                                              ; $6f07: $00
	cp   $7e                                         ; $6f08: $fe $7e
	ld   a, h                                        ; $6f0a: $7c
	inc  a                                           ; $6f0b: $3c
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	ld   [$0c04], sp                                 ; $6f10: $08 $04 $0c
	inc  b                                           ; $6f13: $04
	inc  b                                           ; $6f14: $04
	ld   c, $04                                      ; $6f15: $0e $04
	ld   c, $00                                      ; $6f17: $0e $00
	inc  c                                           ; $6f19: $0c
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	dec  bc                                          ; $6f1c: $0b
	inc  sp                                          ; $6f1d: $33
	nop                                              ; $6f1e: $00
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
	add  b                                           ; $6f2c: $80
	ret  nz                                          ; $6f2d: $c0

	ret  nz                                          ; $6f2e: $c0

	nop                                              ; $6f2f: $00
	ld   [$0c04], sp                                 ; $6f30: $08 $04 $0c
	inc  b                                           ; $6f33: $04
	inc  b                                           ; $6f34: $04
	ld   c, $04                                      ; $6f35: $0e $04
	ld   c, $00                                      ; $6f37: $0e $00
	inc  c                                           ; $6f39: $0c
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	ld   a, [hl+]                                    ; $6f3c: $2a
	rla                                              ; $6f3d: $17
	dec  l                                           ; $6f3e: $2d
	db   $10                                         ; $6f3f: $10
	add  hl, bc                                      ; $6f40: $09
	db   $10                                         ; $6f41: $10
	rlca                                             ; $6f42: $07
	rrca                                             ; $6f43: $0f
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
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
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	add  b                                           ; $6f5e: $80
	add  b                                           ; $6f5f: $80
	add  b                                           ; $6f60: $80
	add  b                                           ; $6f61: $80
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
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
	nop                                              ; $6f7d: $00
	cp   $fc                                         ; $6f7e: $fe $fc
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
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
	ld   bc, $0701                                   ; $6f8e: $01 $01 $07
	ld   bc, $0107                                   ; $6f91: $01 $07 $01
	rlca                                             ; $6f94: $07
	ld   bc, $0007                                   ; $6f95: $01 $07 $00
	rlca                                             ; $6f98: $07
	nop                                              ; $6f99: $00
	rrca                                             ; $6f9a: $0f
	nop                                              ; $6f9b: $00
	rst  $38                                         ; $6f9c: $ff
	ld   a, a                                        ; $6f9d: $7f
	ld   e, a                                        ; $6f9e: $5f
	ldh  [rTAC], a                                   ; $6f9f: $e0 $07
	rlca                                             ; $6fa1: $07
	ld   b, $05                                      ; $6fa2: $06 $05
	ld   b, $05                                      ; $6fa4: $06 $05
	ld   c, $0b                                      ; $6fa6: $0e $0b
	ld   e, $17                                      ; $6fa8: $1e $17
	rra                                              ; $6faa: $1f
	ld   d, $1f                                      ; $6fab: $16 $1f
	dec  d                                           ; $6fad: $15
	rrca                                             ; $6fae: $0f
	dec  bc                                          ; $6faf: $0b
	cp   $0e                                         ; $6fb0: $fe $0e
	rst  $38                                         ; $6fb2: $ff
	add  hl, sp                                      ; $6fb3: $39
	rst  $30                                         ; $6fb4: $f7
	ld   d, [hl]                                     ; $6fb5: $56
	ld   e, a                                        ; $6fb6: $5f
	ld   e, l                                        ; $6fb7: $5d
	inc  e                                           ; $6fb8: $1c
	inc  c                                           ; $6fb9: $0c
	inc  e                                           ; $6fba: $1c
	jr   @+$56                                       ; $6fbb: $18 $54

	nop                                              ; $6fbd: $00
	xor  b                                           ; $6fbe: $a8
	nop                                              ; $6fbf: $00
	rlca                                             ; $6fc0: $07
	inc  bc                                          ; $6fc1: $03
	rlca                                             ; $6fc2: $07
	inc  b                                           ; $6fc3: $04
	adc  a                                           ; $6fc4: $8f
	ld   bc, $0088                                   ; $6fc5: $01 $88 $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	ld   [$bf00], sp                                 ; $6fce: $08 $00 $bf
	ld   a, h                                        ; $6fd1: $7c
	db   $e3                                         ; $6fd2: $e3
	xor  $b3                                         ; $6fd3: $ee $b3
	ld   [hl], d                                     ; $6fd5: $72
	ld   [hl], e                                     ; $6fd6: $73
	jr   nc, jr_093_6fe8                             ; $6fd7: $30 $0f

	jr   c, jr_093_6fdc                              ; $6fd9: $38 $01

	nop                                              ; $6fdb: $00

jr_093_6fdc:
	ld   d, a                                        ; $6fdc: $57
	nop                                              ; $6fdd: $00
	xor  e                                           ; $6fde: $ab
	nop                                              ; $6fdf: $00
	cp   $0e                                         ; $6fe0: $fe $0e
	rra                                              ; $6fe2: $1f
	ld   bc, $3c7f                                   ; $6fe3: $01 $7f $3c
	ld   a, a                                        ; $6fe6: $7f
	ld   a, [hl]                                     ; $6fe7: $7e

jr_093_6fe8:
	ld   e, h                                        ; $6fe8: $5c
	ld   c, h                                        ; $6fe9: $4c
	inc  e                                           ; $6fea: $1c
	jr   jr_093_7041                                 ; $6feb: $18 $54

	nop                                              ; $6fed: $00
	xor  b                                           ; $6fee: $a8
	nop                                              ; $6fef: $00
	rlca                                             ; $6ff0: $07
	inc  bc                                          ; $6ff1: $03
	rlca                                             ; $6ff2: $07
	inc  b                                           ; $6ff3: $04
	adc  a                                           ; $6ff4: $8f
	nop                                              ; $6ff5: $00
	adc  c                                           ; $6ff6: $89
	ld   bc, $0000                                   ; $6ff7: $01 $00 $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	ld   [$ff00], sp                                 ; $6ffe: $08 $00 $ff
	nop                                              ; $7001: $00
	rst  $38                                         ; $7002: $ff
	ld   a, h                                        ; $7003: $7c
	cp   a                                           ; $7004: $bf
	cp   $73                                         ; $7005: $fe $73
	ld   [hl-], a                                    ; $7007: $32
	rrca                                             ; $7008: $0f
	jr   c, jr_093_700c                              ; $7009: $38 $01

	nop                                              ; $700b: $00

jr_093_700c:
	ld   d, a                                        ; $700c: $57
	nop                                              ; $700d: $00
	xor  e                                           ; $700e: $ab
	nop                                              ; $700f: $00
	cp   $0e                                         ; $7010: $fe $0e
	rrca                                             ; $7012: $0f
	ld   bc, $0003                                   ; $7013: $01 $03 $00
	rlca                                             ; $7016: $07
	nop                                              ; $7017: $00
	cp   $7e                                         ; $7018: $fe $7e
	ld   a, h                                        ; $701a: $7c
	inc  a                                           ; $701b: $3c
	ld   d, h                                        ; $701c: $54
	nop                                              ; $701d: $00
	jr   z, jr_093_7020                              ; $701e: $28 $00

jr_093_7020:
	rst  $38                                         ; $7020: $ff
	nop                                              ; $7021: $00
	rst  $38                                         ; $7022: $ff
	nop                                              ; $7023: $00
	rst  $30                                         ; $7024: $f7
	rrca                                             ; $7025: $0f
	rst  $38                                         ; $7026: $ff
	db   $fc                                         ; $7027: $fc
	ld   a, e                                        ; $7028: $7b
	inc  a                                           ; $7029: $3c
	ld   bc, $5700                                   ; $702a: $01 $00 $57
	nop                                              ; $702d: $00
	xor  e                                           ; $702e: $ab
	nop                                              ; $702f: $00
	ld   [$0c04], sp                                 ; $7030: $08 $04 $0c
	inc  b                                           ; $7033: $04
	inc  b                                           ; $7034: $04
	ld   c, $04                                      ; $7035: $0e $04
	ld   c, $00                                      ; $7037: $0e $00
	inc  c                                           ; $7039: $0c
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	jr   @+$29                                       ; $703c: $18 $27

	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00

jr_093_7041:
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	add  b                                           ; $704c: $80
	add  b                                           ; $704d: $80
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	ld   [$0c04], sp                                 ; $7050: $08 $04 $0c
	inc  b                                           ; $7053: $04
	inc  b                                           ; $7054: $04
	ld   c, $04                                      ; $7055: $0e $04
	ld   c, $00                                      ; $7057: $0e $00
	inc  c                                           ; $7059: $0c
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	ld   l, $17                                      ; $705c: $2e $17
	ld   de, $0c20                                   ; $705e: $11 $20 $0c
	rra                                              ; $7061: $1f
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	ld   b, $00                                      ; $7064: $06 $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	ld   e, $3c                                      ; $7070: $1e $3c
	ld   d, $1c                                      ; $7072: $16 $1c
	ld   e, $1c                                      ; $7074: $1e $1c
	ld   c, $0c                                      ; $7076: $0e $0c
	ld   b, $0c                                      ; $7078: $06 $0c
	ld   b, $04                                      ; $707a: $06 $04
	ld   b, $04                                      ; $707c: $06 $04
	ld   b, $04                                      ; $707e: $06 $04
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	rla                                              ; $708e: $17
	rrca                                             ; $708f: $0f
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	rlca                                             ; $709e: $07
	rlca                                             ; $709f: $07
	rlca                                             ; $70a0: $07
	ld   bc, $0107                                   ; $70a1: $01 $07 $01
	rlca                                             ; $70a4: $07
	ld   bc, $0007                                   ; $70a5: $01 $07 $00
	rlca                                             ; $70a8: $07
	nop                                              ; $70a9: $00
	rrca                                             ; $70aa: $0f
	nop                                              ; $70ab: $00
	ccf                                              ; $70ac: $3f
	nop                                              ; $70ad: $00
	ld   [hl], a                                     ; $70ae: $77
	adc  a                                           ; $70af: $8f
	cp   $f8                                         ; $70b0: $fe $f8
	rst  $38                                         ; $70b2: $ff
	ld   a, $fb                                      ; $70b3: $3e $fb
	db   $db                                         ; $70b5: $db
	rra                                              ; $70b6: $1f
	inc  c                                           ; $70b7: $0c
	inc  c                                           ; $70b8: $0c
	nop                                              ; $70b9: $00
	inc  e                                           ; $70ba: $1c
	inc  e                                           ; $70bb: $1c
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	ld   b, $01                                      ; $70c0: $06 $01
	rlca                                             ; $70c2: $07
	nop                                              ; $70c3: $00
	adc  a                                           ; $70c4: $8f
	ld   bc, $0088                                   ; $70c5: $01 $88 $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	ld   [$fe00], sp                                 ; $70ce: $08 $00 $fe
	ld   hl, sp-$01                                  ; $70d1: $f8 $ff
	nop                                              ; $70d3: $00
	rrca                                             ; $70d4: $0f
	nop                                              ; $70d5: $00
	rst  $38                                         ; $70d6: $ff
	db   $fc                                         ; $70d7: $fc
	cp   $36                                         ; $70d8: $fe $36
	inc  e                                           ; $70da: $1c
	inc  e                                           ; $70db: $1c
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	ld   b, $01                                      ; $70e0: $06 $01
	rlca                                             ; $70e2: $07
	nop                                              ; $70e3: $00
	adc  a                                           ; $70e4: $8f
	nop                                              ; $70e5: $00
	adc  c                                           ; $70e6: $89
	ld   bc, $0000                                   ; $70e7: $01 $00 $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	ld   [$ff00], sp                                 ; $70ee: $08 $00 $ff
	ld   hl, sp-$01                                  ; $70f1: $f8 $ff
	nop                                              ; $70f3: $00
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	rst  $38                                         ; $70f6: $ff
	ld   e, h                                        ; $70f7: $5c
	dec  sp                                          ; $70f8: $3b
	inc  a                                           ; $70f9: $3c
	ld   bc, $0300                                   ; $70fa: $01 $00 $03
	nop                                              ; $70fd: $00
	inc  bc                                          ; $70fe: $03
	nop                                              ; $70ff: $00
	cp   $f8                                         ; $7100: $fe $f8
	rst  $38                                         ; $7102: $ff
	nop                                              ; $7103: $00
	inc  bc                                          ; $7104: $03
	nop                                              ; $7105: $00
	rlca                                             ; $7106: $07
	nop                                              ; $7107: $00
	cp   $7e                                         ; $7108: $fe $7e
	ld   a, h                                        ; $710a: $7c
	inc  a                                           ; $710b: $3c
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	rst  $38                                         ; $7110: $ff
	ld   hl, sp-$01                                  ; $7111: $f8 $ff
	nop                                              ; $7113: $00
	rst  $30                                         ; $7114: $f7
	rrca                                             ; $7115: $0f
	rst  $38                                         ; $7116: $ff
	db   $fc                                         ; $7117: $fc
	ld   a, e                                        ; $7118: $7b
	inc  a                                           ; $7119: $3c
	ld   bc, $0300                                   ; $711a: $01 $00 $03
	nop                                              ; $711d: $00
	inc  bc                                          ; $711e: $03
	nop                                              ; $711f: $00
	ld   [$0c04], sp                                 ; $7120: $08 $04 $0c
	inc  b                                           ; $7123: $04
	inc  b                                           ; $7124: $04
	ld   c, $04                                      ; $7125: $0e $04
	ld   c, $00                                      ; $7127: $0e $00
	inc  c                                           ; $7129: $0c
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	cpl                                              ; $712c: $2f
	ld   e, a                                        ; $712d: $5f
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	ld   [$0c04], sp                                 ; $7130: $08 $04 $0c
	inc  b                                           ; $7133: $04
	inc  b                                           ; $7134: $04
	ld   c, $04                                      ; $7135: $0e $04
	ld   c, $00                                      ; $7137: $0e $00
	inc  c                                           ; $7139: $0c
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	ld   e, $2f                                      ; $713c: $1e $2f
	ld   hl, $1000                                   ; $713e: $21 $00 $10
	rrca                                             ; $7141: $0f
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	rlca                                             ; $7144: $07
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	add  b                                           ; $715c: $80
	nop                                              ; $715d: $00
	add  b                                           ; $715e: $80
	ld   b, b                                        ; $715f: $40
	add  b                                           ; $7160: $80
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	ld   e, $3c                                      ; $7170: $1e $3c
	ld   d, $1c                                      ; $7172: $16 $1c
	ld   e, $1c                                      ; $7174: $1e $1c
	ld   c, $0c                                      ; $7176: $0e $0c
	ld   b, $0c                                      ; $7178: $06 $0c
	ld   b, $04                                      ; $717a: $06 $04
	ld   b, $04                                      ; $717c: $06 $04
	rlca                                             ; $717e: $07
	dec  b                                           ; $717f: $05
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	ei                                               ; $718e: $fb
	pop  hl                                          ; $718f: $e1
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	adc  l                                           ; $719e: $8d
	adc  [hl]                                        ; $719f: $8e
	rlca                                             ; $71a0: $07
	ld   bc, $0107                                   ; $71a1: $01 $07 $01
	rlca                                             ; $71a4: $07
	ld   bc, $0007                                   ; $71a5: $01 $07 $00
	rlca                                             ; $71a8: $07
	nop                                              ; $71a9: $00
	rrca                                             ; $71aa: $0f
	nop                                              ; $71ab: $00
	ld   l, $1f                                      ; $71ac: $2e $1f
	rst  $38                                         ; $71ae: $ff
	ld   [hl], b                                     ; $71af: $70
	rst  $38                                         ; $71b0: $ff
	ld   e, $ff                                      ; $71b1: $1e $ff
	ld   a, $fb                                      ; $71b3: $3e $fb
	db   $db                                         ; $71b5: $db
	rra                                              ; $71b6: $1f
	inc  c                                           ; $71b7: $0c
	inc  c                                           ; $71b8: $0c
	nop                                              ; $71b9: $00
	inc  e                                           ; $71ba: $1c
	inc  e                                           ; $71bb: $1c
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	adc  e                                           ; $71c0: $8b
	rlca                                             ; $71c1: $07
	rlca                                             ; $71c2: $07
	nop                                              ; $71c3: $00
	adc  a                                           ; $71c4: $8f
	ld   bc, $0088                                   ; $71c5: $01 $88 $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	ld   [$ff00], sp                                 ; $71ce: $08 $00 $ff
	ld   e, $0f                                      ; $71d1: $1e $0f
	nop                                              ; $71d3: $00
	ld   a, a                                        ; $71d4: $7f
	ld   a, $ff                                      ; $71d5: $3e $ff
	rst  JumpTable                                         ; $71d7: $df
	adc  $04                                         ; $71d8: $ce $04
	inc  e                                           ; $71da: $1c
	inc  e                                           ; $71db: $1c
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	adc  e                                           ; $71e0: $8b
	rlca                                             ; $71e1: $07
	rlca                                             ; $71e2: $07
	nop                                              ; $71e3: $00
	adc  a                                           ; $71e4: $8f
	nop                                              ; $71e5: $00
	adc  c                                           ; $71e6: $89
	ld   bc, $0000                                   ; $71e7: $01 $00 $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	ld   [$ff00], sp                                 ; $71ee: $08 $00 $ff
	ret  nz                                          ; $71f1: $c0

	db   $db                                         ; $71f2: $db
	inc  a                                           ; $71f3: $3c
	rst  $20                                         ; $71f4: $e7
	rst  $38                                         ; $71f5: $ff
	ei                                               ; $71f6: $fb
	ld   d, b                                        ; $71f7: $50
	ld   a, a                                        ; $71f8: $7f
	jr   c, jr_093_71fc                              ; $71f9: $38 $01

	nop                                              ; $71fb: $00

jr_093_71fc:
	inc  bc                                          ; $71fc: $03
	nop                                              ; $71fd: $00
	inc  bc                                          ; $71fe: $03
	nop                                              ; $71ff: $00
	rst  $38                                         ; $7200: $ff
	ld   e, $1f                                      ; $7201: $1e $1f
	nop                                              ; $7203: $00
	inc  bc                                          ; $7204: $03
	nop                                              ; $7205: $00
	rlca                                             ; $7206: $07
	nop                                              ; $7207: $00
	cp   $7e                                         ; $7208: $fe $7e
	ld   a, h                                        ; $720a: $7c
	inc  a                                           ; $720b: $3c
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	rst  $38                                         ; $7210: $ff
	ret  nz                                          ; $7211: $c0

	rst  $38                                         ; $7212: $ff
	nop                                              ; $7213: $00
	rst  $30                                         ; $7214: $f7
	rrca                                             ; $7215: $0f
	rst  $38                                         ; $7216: $ff
	db   $fc                                         ; $7217: $fc
	ld   a, e                                        ; $7218: $7b
	inc  a                                           ; $7219: $3c
	ld   bc, $0300                                   ; $721a: $01 $00 $03
	nop                                              ; $721d: $00
	inc  bc                                          ; $721e: $03
	nop                                              ; $721f: $00
	ld   [$0c04], sp                                 ; $7220: $08 $04 $0c
	inc  b                                           ; $7223: $04
	inc  b                                           ; $7224: $04
	ld   c, $04                                      ; $7225: $0e $04
	ld   c, $00                                      ; $7227: $0e $00
	inc  c                                           ; $7229: $0c
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	ld   a, [bc]                                     ; $722c: $0a
	ld   sp, $0000                                   ; $722d: $31 $00 $00
	ld   c, $00                                      ; $7230: $0e $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	ret  nz                                          ; $724c: $c0

	ret  nz                                          ; $724d: $c0

	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	ld   [$0c04], sp                                 ; $7250: $08 $04 $0c
	inc  b                                           ; $7253: $04
	inc  b                                           ; $7254: $04
	ld   c, $04                                      ; $7255: $0e $04
	ld   c, $00                                      ; $7257: $0e $00
	inc  c                                           ; $7259: $0c
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	cpl                                              ; $725c: $2f
	inc  sp                                          ; $725d: $33
	jr   nc, jr_093_7270                             ; $725e: $30 $10

	ld   e, $07                                      ; $7260: $1e $07
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	ld   b, $00                                      ; $7264: $06 $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00

jr_093_7270:
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	add  b                                           ; $727c: $80
	ret  nz                                          ; $727d: $c0

	ld   b, b                                        ; $727e: $40
	add  b                                           ; $727f: $80
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	ld   hl, sp-$08                                  ; $728a: $f8 $f8
	sub  [hl]                                        ; $728c: $96
	ld   c, $0d                                      ; $728d: $0e $0d
	inc  bc                                          ; $728f: $03
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	ld   bc, $0503                                   ; $729a: $01 $03 $05
	ld   b, $8f                                      ; $729d: $06 $8f
	nop                                              ; $729f: $00
	rlca                                             ; $72a0: $07
	ld   bc, $0107                                   ; $72a1: $01 $07 $01
	rlca                                             ; $72a4: $07
	ld   bc, $0007                                   ; $72a5: $01 $07 $00
	ld   a, a                                        ; $72a8: $7f
	db   $fc                                         ; $72a9: $fc
	ret  z                                           ; $72aa: $c8

	add  a                                           ; $72ab: $87
	rlca                                             ; $72ac: $07
	nop                                              ; $72ad: $00
	ld   a, a                                        ; $72ae: $7f
	db   $fc                                         ; $72af: $fc
	ld   b, $05                                      ; $72b0: $06 $05
	ld   b, $05                                      ; $72b2: $06 $05
	ld   b, $05                                      ; $72b4: $06 $05
	ld   c, $0b                                      ; $72b6: $0e $0b
	ld   e, $17                                      ; $72b8: $1e $17
	rra                                              ; $72ba: $1f
	ld   d, $1f                                      ; $72bb: $16 $1f
	dec  d                                           ; $72bd: $15
	rrca                                             ; $72be: $0f
	dec  bc                                          ; $72bf: $0b
	rst  $38                                         ; $72c0: $ff
	ld   a, [hl]                                     ; $72c1: $7e
	rst  $28                                         ; $72c2: $ef
	jp   $89cb                                       ; $72c3: $c3 $cb $89


	inc  c                                           ; $72c6: $0c
	inc  c                                           ; $72c7: $0c
	inc  c                                           ; $72c8: $0c
	ld   [rRAMG], sp                                 ; $72c9: $08 $00 $00
	inc  a                                           ; $72cc: $3c
	inc  e                                           ; $72cd: $1c
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	add  d                                           ; $72d0: $82
	ld   bc, $0181                                   ; $72d1: $01 $81 $01
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	ld   [$cf00], sp                                 ; $72de: $08 $00 $cf
	add  [hl]                                        ; $72e1: $86
	sub  a                                           ; $72e2: $97
	inc  de                                          ; $72e3: $13
	ld   sp, $3130                                   ; $72e4: $31 $30 $31
	db   $10                                         ; $72e7: $10
	inc  bc                                          ; $72e8: $03
	nop                                              ; $72e9: $00
	rrca                                             ; $72ea: $0f
	jr   c, jr_093_72f0                              ; $72eb: $38 $03

	nop                                              ; $72ed: $00
	rlca                                             ; $72ee: $07
	nop                                              ; $72ef: $00

jr_093_72f0:
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	ld   bc, $0503                                   ; $72fa: $01 $03 $05
	ld   b, $8e                                      ; $72fd: $06 $8e
	nop                                              ; $72ff: $00
	rlca                                             ; $7300: $07
	ld   bc, $0107                                   ; $7301: $01 $07 $01
	rlca                                             ; $7304: $07
	ld   bc, $0007                                   ; $7305: $01 $07 $00
	ld   a, a                                        ; $7308: $7f
	db   $fc                                         ; $7309: $fc
	ret  z                                           ; $730a: $c8

	add  a                                           ; $730b: $87
	rlca                                             ; $730c: $07
	nop                                              ; $730d: $00
	ld   a, a                                        ; $730e: $7f
	nop                                              ; $730f: $00
	rra                                              ; $7310: $1f
	nop                                              ; $7311: $00
	ld   a, a                                        ; $7312: $7f
	ld   a, [hl]                                     ; $7313: $7e
	rst  $28                                         ; $7314: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7315: $cf
	call $0c8d                                       ; $7316: $cd $8d $0c
	ld   [$1c3c], sp                                 ; $7319: $08 $3c $1c
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	add  c                                           ; $7320: $81
	nop                                              ; $7321: $00
	add  d                                           ; $7322: $82
	ld   bc, $0103                                   ; $7323: $01 $03 $01
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	ld   [$7f00], sp                                 ; $732e: $08 $00 $7f
	db   $fc                                         ; $7331: $fc
	rst  $38                                         ; $7332: $ff
	or   [hl]                                        ; $7333: $b6
	scf                                              ; $7334: $37
	inc  sp                                          ; $7335: $33
	inc  sp                                          ; $7336: $33
	db   $10                                         ; $7337: $10
	rra                                              ; $7338: $1f
	jr   c, jr_093_733e                              ; $7339: $38 $03

	nop                                              ; $733b: $00
	rlca                                             ; $733c: $07
	nop                                              ; $733d: $00

jr_093_733e:
	rlca                                             ; $733e: $07
	nop                                              ; $733f: $00
	rlca                                             ; $7340: $07
	ld   bc, $0107                                   ; $7341: $01 $07 $01
	rlca                                             ; $7344: $07
	ld   bc, $0007                                   ; $7345: $01 $07 $00
	ld   a, a                                        ; $7348: $7f
	db   $fc                                         ; $7349: $fc
	ret  z                                           ; $734a: $c8

	add  a                                           ; $734b: $87
	rlca                                             ; $734c: $07
	nop                                              ; $734d: $00
	inc  bc                                          ; $734e: $03
	nop                                              ; $734f: $00
	rlca                                             ; $7350: $07
	nop                                              ; $7351: $00
	inc  bc                                          ; $7352: $03
	nop                                              ; $7353: $00
	rlca                                             ; $7354: $07
	nop                                              ; $7355: $00
	ccf                                              ; $7356: $3f
	nop                                              ; $7357: $00
	rst  $38                                         ; $7358: $ff
	ld   a, [hl]                                     ; $7359: $7e
	ld   a, h                                        ; $735a: $7c
	inc  a                                           ; $735b: $3c
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	add  b                                           ; $7360: $80
	nop                                              ; $7361: $00
	ld   bc, $8300                                   ; $7362: $01 $00 $83
	nop                                              ; $7365: $00
	add  e                                           ; $7366: $83
	ld   bc, $0000                                   ; $7367: $01 $00 $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	ld   [$0800], sp                                 ; $736e: $08 $00 $08
	nop                                              ; $7371: $00
	jr   jr_093_737c                                 ; $7372: $18 $08

	ld   [$081c], sp                                 ; $7374: $08 $1c $08
	inc  e                                           ; $7377: $1c
	nop                                              ; $7378: $00
	jr   jr_093_737b                                 ; $7379: $18 $00

jr_093_737b:
	nop                                              ; $737b: $00

jr_093_737c:
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	inc  bc                                          ; $7380: $03
	nop                                              ; $7381: $00
	add  a                                           ; $7382: $87
	nop                                              ; $7383: $00
	rst  $30                                         ; $7384: $f7
	rrca                                             ; $7385: $0f
	rst  $38                                         ; $7386: $ff
	db   $fc                                         ; $7387: $fc
	ei                                               ; $7388: $fb
	inc  a                                           ; $7389: $3c
	inc  bc                                          ; $738a: $03
	nop                                              ; $738b: $00
	rlca                                             ; $738c: $07
	nop                                              ; $738d: $00
	rlca                                             ; $738e: $07
	nop                                              ; $738f: $00
	ld   [$0c04], sp                                 ; $7390: $08 $04 $0c
	inc  b                                           ; $7393: $04
	inc  b                                           ; $7394: $04
	ld   c, $04                                      ; $7395: $0e $04
	ld   c, $00                                      ; $7397: $0e $00
	inc  c                                           ; $7399: $0c
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	ld   c, $3f                                      ; $739c: $0e $3f
	inc  e                                           ; $739e: $1c
	jr   nc, jr_093_73c9                             ; $739f: $30 $28

	db   $10                                         ; $73a1: $10
	ld   d, $0f                                      ; $73a2: $16 $0f
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	rlca                                             ; $73a6: $07
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	ld   b, b                                        ; $73bc: $40
	add  b                                           ; $73bd: $80
	add  b                                           ; $73be: $80
	ld   b, b                                        ; $73bf: $40
	add  b                                           ; $73c0: $80
	ld   b, b                                        ; $73c1: $40
	nop                                              ; $73c2: $00
	add  b                                           ; $73c3: $80
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00

jr_093_73c9:
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	ld   [$0c04], sp                                 ; $73d0: $08 $04 $0c
	inc  b                                           ; $73d3: $04
	inc  b                                           ; $73d4: $04
	ld   c, $04                                      ; $73d5: $0e $04
	ld   c, $00                                      ; $73d7: $0e $00
	inc  c                                           ; $73d9: $0c
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	jr   nz, jr_093_741d                             ; $73dc: $20 $3f

	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	ld   b, b                                        ; $73ec: $40
	ret  nz                                          ; $73ed: $c0

	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	ld   a, e                                        ; $73f0: $7b
	cp   $df                                         ; $73f1: $fe $df
	db   $fc                                         ; $73f3: $fc
	adc  $f8                                         ; $73f4: $ce $f8
	call z, $98f8                                    ; $73f6: $cc $f8 $98
	ldh  a, [$78]                                    ; $73f9: $f0 $78
	ldh  a, [$b0]                                    ; $73fb: $f0 $b0
	ldh  [$f0], a                                    ; $73fd: $e0 $f0
	ldh  [$87], a                                    ; $73ff: $e0 $87
	rlca                                             ; $7401: $07
	inc  bc                                          ; $7402: $03
	ld   [bc], a                                     ; $7403: $02
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	rst  ToBoot                                         ; $7410: $c7
	add  b                                           ; $7411: $80
	inc  bc                                          ; $7412: $03
	nop                                              ; $7413: $00
	ld   bc, $0100                                   ; $7414: $01 $00 $01
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00

jr_093_741d:
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	add  [hl]                                        ; $7420: $86
	cp   $c2                                         ; $7421: $fe $c2
	ld   a, [hl]                                     ; $7423: $7e
	ld   a, [$de3e]                                  ; $7424: $fa $3e $de
	ld   a, $f6                                      ; $7427: $3e $f6
	ld   e, $fa                                      ; $7429: $1e $fa
	ld   e, $fe                                      ; $742b: $1e $fe
	ld   e, $ea                                      ; $742d: $1e $ea
	ld   e, $a0                                      ; $742f: $1e $a0
	ldh  [$61], a                                    ; $7431: $e0 $61
	ldh  [$e7], a                                    ; $7433: $e0 $e7
	db   $e3                                         ; $7435: $e3
	rst  $28                                         ; $7436: $ef
	db   $ec                                         ; $7437: $ec
	xor  h                                           ; $7438: $ac
	ldh  [$e0], a                                    ; $7439: $e0 $e0
	ldh  [$e0], a                                    ; $743b: $e0 $e0
	ldh  [$f3], a                                    ; $743d: $e0 $f3

jr_093_743f:
	pop  hl                                          ; $743f: $e1
	jr   jr_093_7469                                 ; $7440: $18 $27

	add  b                                           ; $7442: $80
	nop                                              ; $7443: $00
	and  b                                           ; $7444: $a0
	ret  nz                                          ; $7445: $c0

	ld   h, b                                        ; $7446: $60
	ldh  a, [$58]                                    ; $7447: $f0 $58
	jr   nc, jr_093_7473                             ; $7449: $30 $28

	db   $10                                         ; $744b: $10
	ld   a, b                                        ; $744c: $78
	jr   nz, jr_093_743f                             ; $744d: $20 $f0

	ret  nz                                          ; $744f: $c0

	add  b                                           ; $7450: $80
	nop                                              ; $7451: $00
	rrca                                             ; $7452: $0f
	nop                                              ; $7453: $00
	ld   e, [hl]                                     ; $7454: $5e
	ccf                                              ; $7455: $3f

jr_093_7456:
	xor  $71                                         ; $7456: $ee $71
	ret  nc                                          ; $7458: $d0

	ldh  [$e0], a                                    ; $7459: $e0 $e0
	nop                                              ; $745b: $00
	ld   l, b                                        ; $745c: $68
	ld   [hl], b                                     ; $745d: $70
	ld   a, a                                        ; $745e: $7f
	ld   e, $fa                                      ; $745f: $1e $fa
	ld   c, $fa                                      ; $7461: $0e $fa
	ld   c, $fe                                      ; $7463: $0e $fe
	ld   c, $fa                                      ; $7465: $0e $fa
	adc  $fe                                         ; $7467: $ce $fe

jr_093_7469:
	ld   c, $7a                                      ; $7469: $0e $7a
	ld   c, $76                                      ; $746b: $0e $76
	ld   e, $7e                                      ; $746d: $1e $7e
	ld   e, $f6                                      ; $746f: $1e $f6
	and  [hl]                                        ; $7471: $a6
	pop  af                                          ; $7472: $f1

jr_093_7473:
	jr   nz, jr_093_7456                             ; $7473: $20 $e1

	ld   b, c                                        ; $7475: $41
	pop  hl                                          ; $7476: $e1
	ld   b, c                                        ; $7477: $41
	pop  hl                                          ; $7478: $e1
	ld   b, c                                        ; $7479: $41
	pop  hl                                          ; $747a: $e1
	ret  nz                                          ; $747b: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $747c: $f0 $a0
	ld   a, b                                        ; $747e: $78
	ld   d, b                                        ; $747f: $50
	ldh  [$60], a                                    ; $7480: $e0 $60
	rst  $38                                         ; $7482: $ff

jr_093_7483:
	rst  $30                                         ; $7483: $f7
	cp   a                                           ; $7484: $bf
	dec  c                                           ; $7485: $0d
	inc  c                                           ; $7486: $0c
	ld   [$0818], sp                                 ; $7487: $08 $18 $08
	cp   [hl]                                        ; $748a: $be
	sub  b                                           ; $748b: $90
	ld   hl, sp+$70                                  ; $748c: $f8 $70
	ccf                                              ; $748e: $3f
	jr   jr_093_74b0                                 ; $748f: $18 $1f

	add  hl, de                                      ; $7491: $19
	db   $fc                                         ; $7492: $fc
	inc  a                                           ; $7493: $3c
	and  $c2                                         ; $7494: $e6 $c2
	ldh  [c], a                                      ; $7496: $e2
	ld   b, d                                        ; $7497: $42
	ld   h, d                                        ; $7498: $62
	ld   b, d                                        ; $7499: $42
	ld   [hl], h                                     ; $749a: $74
	ld   h, h                                        ; $749b: $64
	ld   hl, sp+$38                                  ; $749c: $f8 $38
	ldh  a, [$e0]                                    ; $749e: $f0 $e0
	ld   a, $1a                                      ; $74a0: $3e $1a
	ld   a, $1e                                      ; $74a2: $3e $1e
	ld   a, $0a                                      ; $74a4: $3e $0a
	ld   a, $0a                                      ; $74a6: $3e $0a
	ld   a, $0e                                      ; $74a8: $3e $0e
	ld   a, $1e                                      ; $74aa: $3e $1e
	ld   a, [hl]                                     ; $74ac: $7e
	ld   a, $fe                                      ; $74ad: $3e $fe
	ld   l, d                                        ; $74af: $6a

jr_093_74b0:
	ld   a, b                                        ; $74b0: $78
	ld   d, b                                        ; $74b1: $50
	jr   c, jr_093_74e4                              ; $74b2: $38 $30

	jr   jr_093_74c6                                 ; $74b4: $18 $10

	inc  c                                           ; $74b6: $0c
	ld   [$090d], sp                                 ; $74b7: $08 $0d $09
	dec  c                                           ; $74ba: $0d
	add  hl, bc                                      ; $74bb: $09
	ld   b, $04                                      ; $74bc: $06 $04
	ld   b, $04                                      ; $74be: $06 $04
	rra                                              ; $74c0: $1f
	rlca                                             ; $74c1: $07
	rlca                                             ; $74c2: $07
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00

jr_093_74c6:
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	add  b                                           ; $74c8: $80
	add  b                                           ; $74c9: $80
	sbc  a                                           ; $74ca: $9f
	ccf                                              ; $74cb: $3f
	inc  bc                                          ; $74cc: $03
	nop                                              ; $74cd: $00
	rrca                                             ; $74ce: $0f
	dec  b                                           ; $74cf: $05
	ld   sp, hl                                      ; $74d0: $f9
	db   $10                                         ; $74d1: $10
	ld   [rRAMG], sp                                 ; $74d2: $08 $00 $00
	nop                                              ; $74d5: $00
	inc  bc                                          ; $74d6: $03
	ld   [bc], a                                     ; $74d7: $02
	dec  bc                                          ; $74d8: $0b
	add  hl, bc                                      ; $74d9: $09
	pop  af                                          ; $74da: $f1
	ld   sp, hl                                      ; $74db: $f9
	db   $e3                                         ; $74dc: $e3
	ld   [bc], a                                     ; $74dd: $02
	add  e                                           ; $74de: $83
	add  b                                           ; $74df: $80
	cp   $0e                                         ; $74e0: $fe $0e
	cp   $1e                                         ; $74e2: $fe $1e

jr_093_74e4:
	ld   a, [$f21a]                                  ; $74e4: $fa $1a $f2
	ld   [de], a                                     ; $74e7: $12
	ldh  a, [c]                                      ; $74e8: $f2
	ld   [hl-], a                                    ; $74e9: $32
	ldh  [c], a                                      ; $74ea: $e2
	ld   [hl+], a                                    ; $74eb: $22
	ldh  [c], a                                      ; $74ec: $e2
	ld   [hl+], a                                    ; $74ed: $22
	jp   nz, $0342                                   ; $74ee: $c2 $42 $03

	ld   [bc], a                                     ; $74f1: $02
	inc  bc                                          ; $74f2: $03
	inc  bc                                          ; $74f3: $03
	dec  c                                           ; $74f4: $0d
	dec  c                                           ; $74f5: $0d
	db   $10                                         ; $74f6: $10
	db   $10                                         ; $74f7: $10
	ld   h, $26                                      ; $74f8: $26 $26
	inc  hl                                          ; $74fa: $23
	inc  hl                                          ; $74fb: $23
	ld   b, c                                        ; $74fc: $41
	ld   b, c                                        ; $74fd: $41
	ld   b, b                                        ; $74fe: $40
	ld   b, b                                        ; $74ff: $40
	rlca                                             ; $7500: $07
	jr   jr_093_7483                                 ; $7501: $18 $80

	nop                                              ; $7503: $00
	ret  nz                                          ; $7504: $c0

	add  b                                           ; $7505: $80
	ldh  [$c0], a                                    ; $7506: $e0 $c0
	ldh  a, [$e0]                                    ; $7508: $f0 $e0
	ld   hl, sp-$50                                  ; $750a: $f8 $b0
	cp   a                                           ; $750c: $bf
	sbc  a                                           ; $750d: $9f
	ld   e, b                                        ; $750e: $58
	ld   c, b                                        ; $750f: $48
	inc  bc                                          ; $7510: $03
	ret  nz                                          ; $7511: $c0

	rst  ToBoot                                         ; $7512: $c7
	ld   bc, $0307                                   ; $7513: $01 $07 $03
	rrca                                             ; $7516: $0f
	ld   [bc], a                                     ; $7517: $02
	rrca                                             ; $7518: $0f
	rlca                                             ; $7519: $07
	inc  e                                           ; $751a: $1c
	inc  c                                           ; $751b: $0c
	ld   sp, hl                                      ; $751c: $f9
	ld   sp, hl                                      ; $751d: $f9
	pop  hl                                          ; $751e: $e1
	ld   hl, $e2e2                                   ; $751f: $21 $e2 $e2
	ld   a, [$c6da]                                  ; $7522: $fa $da $c6
	ld   b, [hl]                                     ; $7525: $46
	adc  $4e                                         ; $7526: $ce $4e
	ld   a, [$8afa]                                  ; $7528: $fa $fa $8a
	adc  d                                           ; $752b: $8a
	ld   a, [bc]                                     ; $752c: $0a
	ld   a, [bc]                                     ; $752d: $0a
	ld   a, [de]                                     ; $752e: $1a
	ld   a, [de]                                     ; $752f: $1a
	rst  ToBoot                                         ; $7530: $c7
	rst  ToBoot                                         ; $7531: $c7
	rst  $38                                         ; $7532: $ff
	ld   a, c                                        ; $7533: $79
	rst  $38                                         ; $7534: $ff
	ld   b, c                                        ; $7535: $41
	rst  $38                                         ; $7536: $ff
	adc  a                                           ; $7537: $8f
	ldh  a, [$3f]                                    ; $7538: $f0 $3f
	ret  nz                                          ; $753a: $c0

	ld   a, a                                        ; $753b: $7f
	add  e                                           ; $753c: $83
	rst  $38                                         ; $753d: $ff
	add  a                                           ; $753e: $87
	rst  $38                                         ; $753f: $ff
	and  h                                           ; $7540: $a4
	and  h                                           ; $7541: $a4
	ldh  a, [$f0]                                    ; $7542: $f0 $f0
	ld   sp, $fff1                                   ; $7544: $31 $f1 $ff
	rst  $38                                         ; $7547: $ff
	dec  hl                                          ; $7548: $2b
	rst  $38                                         ; $7549: $ff
	ld   [$f3ff], a                                  ; $754a: $ea $ff $f3
	rst  $38                                         ; $754d: $ff
	scf                                              ; $754e: $37
	rst  $38                                         ; $754f: $ff
	ld   b, c                                        ; $7550: $41
	ld   b, c                                        ; $7551: $41
	add  c                                           ; $7552: $81
	add  c                                           ; $7553: $81
	ld   bc, $ff01                                   ; $7554: $01 $01 $ff
	rst  $38                                         ; $7557: $ff
	ld   [$05ff], sp                                 ; $7558: $08 $ff $05
	rst  $38                                         ; $755b: $ff
	add  e                                           ; $755c: $83
	rst  $38                                         ; $755d: $ff
	jp   $3eff                                       ; $755e: $c3 $ff $3e


	ld   [hl], $fe                                   ; $7561: $36 $fe
	and  $fe                                         ; $7563: $e6 $fe
	jp   nz, $c2fe                                   ; $7565: $c2 $fe $c2

	cp   $82                                         ; $7568: $fe $82
	cp   $82                                         ; $756a: $fe $82
	cp   $02                                         ; $756c: $fe $02
	cp   $02                                         ; $756e: $fe $02
	and  b                                           ; $7570: $a0
	ldh  [$62], a                                    ; $7571: $e0 $62
	db   $e3                                         ; $7573: $e3
	rst  $20                                         ; $7574: $e7
	push hl                                          ; $7575: $e5
	rst  $28                                         ; $7576: $ef
	add  sp, -$54                                    ; $7577: $e8 $ac
	ldh  [$e1], a                                    ; $7579: $e0 $e1
	pop  hl                                          ; $757b: $e1
	ldh  [c], a                                      ; $757c: $e2
	ldh  [c], a                                      ; $757d: $e2
	or   $e4                                         ; $757e: $f6 $e4
	jr   jr_093_75a9                                 ; $7580: $18 $27

	ret  nz                                          ; $7582: $c0

	nop                                              ; $7583: $00
	and  b                                           ; $7584: $a0
	ret  nz                                          ; $7585: $c0

	ldh  [rSVBK], a                                  ; $7586: $e0 $70
	ld   a, b                                        ; $7588: $78
	db   $10                                         ; $7589: $10
	ld   hl, sp-$40                                  ; $758a: $f8 $c0
	jr   c, @+$22                                    ; $758c: $38 $20

	ret  nz                                          ; $758e: $c0

	ld   b, b                                        ; $758f: $40
	ld   b, b                                        ; $7590: $40
	add  b                                           ; $7591: $80
	ld   d, $0f                                      ; $7592: $16 $0f
	ld   a, d                                        ; $7594: $7a
	dec  e                                           ; $7595: $1d

jr_093_7596:
	xor  a                                           ; $7596: $af
	ld   [hl], b                                     ; $7597: $70
	ret  nc                                          ; $7598: $d0

	ldh  [$fc], a                                    ; $7599: $e0 $fc
	inc  e                                           ; $759b: $1c
	ld   h, d                                        ; $759c: $62
	ld   h, d                                        ; $759d: $62
	dec  de                                          ; $759e: $1b
	ld   de, $0efa                                   ; $759f: $11 $fa $0e
	ld   a, [$fe0e]                                  ; $75a2: $fa $0e $fe
	adc  [hl]                                        ; $75a5: $8e
	ld   a, [$fece]                                  ; $75a6: $fa $ce $fe

jr_093_75a9:
	ld   c, $7a                                      ; $75a9: $0e $7a
	ld   c, $76                                      ; $75ab: $0e $76
	ld   e, $7e                                      ; $75ad: $1e $7e
	ld   e, $f6                                      ; $75af: $1e $f6
	and  h                                           ; $75b1: $a4
	pop  af                                          ; $75b2: $f1
	jr   nz, jr_093_7596                             ; $75b3: $20 $e1

	ld   b, c                                        ; $75b5: $41
	pop  hl                                          ; $75b6: $e1
	ld   b, c                                        ; $75b7: $41
	pop  hl                                          ; $75b8: $e1
	ld   b, c                                        ; $75b9: $41
	pop  hl                                          ; $75ba: $e1
	ret  nz                                          ; $75bb: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $75bc: $f0 $a0
	ld   a, b                                        ; $75be: $78
	ld   d, b                                        ; $75bf: $50
	ret  nz                                          ; $75c0: $c0

	ld   b, b                                        ; $75c1: $40
	rst  $38                                         ; $75c2: $ff
	rst  $30                                         ; $75c3: $f7
	cp   a                                           ; $75c4: $bf
	dec  c                                           ; $75c5: $0d
	inc  c                                           ; $75c6: $0c
	ld   [$0818], sp                                 ; $75c7: $08 $18 $08
	cp   [hl]                                        ; $75ca: $be
	sub  b                                           ; $75cb: $90
	ld   hl, sp+$70                                  ; $75cc: $f8 $70
	ccf                                              ; $75ce: $3f
	jr   jr_093_75ec                                 ; $75cf: $18 $1b

	ld   de, $3cfc                                   ; $75d1: $11 $fc $3c
	and  $c2                                         ; $75d4: $e6 $c2
	ldh  [c], a                                      ; $75d6: $e2
	ld   b, d                                        ; $75d7: $42
	ld   h, d                                        ; $75d8: $62
	ld   b, d                                        ; $75d9: $42
	ld   [hl], h                                     ; $75da: $74
	ld   h, h                                        ; $75db: $64
	ld   hl, sp+$38                                  ; $75dc: $f8 $38
	ldh  a, [$e0]                                    ; $75de: $f0 $e0
	ld   sp, hl                                      ; $75e0: $f9
	db   $10                                         ; $75e1: $10

jr_093_75e2:
	ld   [$0200], sp                                 ; $75e2: $08 $00 $02
	ld   [bc], a                                     ; $75e5: $02
	dec  bc                                          ; $75e6: $0b
	dec  e                                           ; $75e7: $1d
	or   l                                           ; $75e8: $b5
	ld   h, l                                        ; $75e9: $65
	ld   sp, hl                                      ; $75ea: $f9
	ld   sp, hl                                      ; $75eb: $f9

jr_093_75ec:
	db   $e3                                         ; $75ec: $e3
	nop                                              ; $75ed: $00
	add  e                                           ; $75ee: $83
	add  b                                           ; $75ef: $80
	and  b                                           ; $75f0: $a0
	ldh  [$61], a                                    ; $75f1: $e0 $61
	ldh  [$e7], a                                    ; $75f3: $e0 $e7
	db   $e3                                         ; $75f5: $e3
	xor  $ed                                         ; $75f6: $ee $ed
	xor  h                                           ; $75f8: $ac
	ldh  [$e0], a                                    ; $75f9: $e0 $e0
	ldh  [$e0], a                                    ; $75fb: $e0 $e0
	ldh  [$f3], a                                    ; $75fd: $e0 $f3
	pop  hl                                          ; $75ff: $e1
	jr   @+$29                                       ; $7600: $18 $27

	add  b                                           ; $7602: $80
	nop                                              ; $7603: $00
	ldh  [rP1], a                                    ; $7604: $e0 $00
	ldh  a, [$c0]                                    ; $7606: $f0 $c0
	ld   e, b                                        ; $7608: $58
	ldh  [$38], a                                    ; $7609: $e0 $38
	ld   [hl], b                                     ; $760b: $70
	ld   hl, sp-$10                                  ; $760c: $f8 $f0
	ldh  a, [$50]                                    ; $760e: $f0 $50
	ld   b, b                                        ; $7610: $40
	add  b                                           ; $7611: $80
	rrca                                             ; $7612: $0f
	nop                                              ; $7613: $00
	ld   a, [hl]                                     ; $7614: $7e
	rlca                                             ; $7615: $07
	xor  $19                                         ; $7616: $ee $19
	ldh  a, [$30]                                    ; $7618: $f0 $30
	ldh  [$f0], a                                    ; $761a: $e0 $f0
	ld   a, b                                        ; $761c: $78
	ld   hl, sp+$7f                                  ; $761d: $f8 $7f
	ld   d, $e0                                      ; $761f: $16 $e0
	ld   b, b                                        ; $7621: $40
	rst  $38                                         ; $7622: $ff
	rst  $30                                         ; $7623: $f7
	cp   a                                           ; $7624: $bf
	dec  c                                           ; $7625: $0d
	inc  c                                           ; $7626: $0c
	ld   [$0818], sp                                 ; $7627: $08 $18 $08
	cp   [hl]                                        ; $762a: $be
	sub  b                                           ; $762b: $90
	ld   hl, sp+$70                                  ; $762c: $f8 $70
	ccf                                              ; $762e: $3f
	jr   jr_093_7650                                 ; $762f: $18 $1f

	ld   de, $3cfc                                   ; $7631: $11 $fc $3c
	and  $c2                                         ; $7634: $e6 $c2
	ldh  [c], a                                      ; $7636: $e2
	ld   b, d                                        ; $7637: $42
	ld   h, d                                        ; $7638: $62
	ld   b, d                                        ; $7639: $42
	ld   [hl], h                                     ; $763a: $74
	ld   h, h                                        ; $763b: $64
	ld   hl, sp+$38                                  ; $763c: $f8 $38
	ldh  a, [$e0]                                    ; $763e: $f0 $e0
	rra                                              ; $7640: $1f
	rlca                                             ; $7641: $07
	rlca                                             ; $7642: $07
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	add  b                                           ; $7648: $80
	add  b                                           ; $7649: $80
	sbc  b                                           ; $764a: $98
	dec  sp                                          ; $764b: $3b
	inc  bc                                          ; $764c: $03
	nop                                              ; $764d: $00
	rrca                                             ; $764e: $0f
	dec  b                                           ; $764f: $05

jr_093_7650:
	ld   sp, hl                                      ; $7650: $f9
	db   $10                                         ; $7651: $10
	ld   [rRAMG], sp                                 ; $7652: $08 $00 $00
	nop                                              ; $7655: $00
	rlca                                             ; $7656: $07
	inc  b                                           ; $7657: $04
	inc  bc                                          ; $7658: $03
	ld   [bc], a                                     ; $7659: $02
	ld   sp, hl                                      ; $765a: $f9
	pop  hl                                          ; $765b: $e1
	ld   sp, hl                                      ; $765c: $f9
	jr   jr_093_75e2                                 ; $765d: $18 $83

	add  b                                           ; $765f: $80
	and  b                                           ; $7660: $a0
	ldh  [$63], a                                    ; $7661: $e0 $63
	db   $e3                                         ; $7663: $e3
	and  $e5                                         ; $7664: $e6 $e5
	rst  $28                                         ; $7666: $ef
	add  sp, -$54                                    ; $7667: $e8 $ac
	ldh  [$e3], a                                    ; $7669: $e0 $e3
	db   $e3                                         ; $766b: $e3
	and  $e6                                         ; $766c: $e6 $e6
	or   $e4                                         ; $766e: $f6 $e4
	jr   jr_093_7699                                 ; $7670: $18 $27

	nop                                              ; $7672: $00
	nop                                              ; $7673: $00

jr_093_7674:
	add  b                                           ; $7674: $80
	ret  nz                                          ; $7675: $c0

jr_093_7676:
	jp   nz, Jump_093_7b60                           ; $7676: $c2 $60 $7b

	jr   nc, jr_093_7674                             ; $7679: $30 $f9

	ret  nz                                          ; $767b: $c0

	jr   c, jr_093_769e                              ; $767c: $38 $20

	ret  nz                                          ; $767e: $c0

	ld   b, b                                        ; $767f: $40
	ld   b, [hl]                                     ; $7680: $46
	add  [hl]                                        ; $7681: $86
	ld   [$5e1f], sp                                 ; $7682: $08 $1f $5e
	ld   sp, $70ef                                   ; $7685: $31 $ef $70
	ret  nc                                          ; $7688: $d0

	ldh  [$fe], a                                    ; $7689: $e0 $fe
	ld   e, $63                                      ; $768b: $1e $63
	ld   h, e                                        ; $768d: $63
	dec  de                                          ; $768e: $1b
	ld   de, $a0f2                                   ; $768f: $11 $f2 $a0
	pop  af                                          ; $7692: $f1
	jr   nz, jr_093_7676                             ; $7693: $20 $e1

	ld   b, c                                        ; $7695: $41
	pop  hl                                          ; $7696: $e1
	ld   b, c                                        ; $7697: $41
	pop  hl                                          ; $7698: $e1

jr_093_7699:
	ld   b, c                                        ; $7699: $41
	pop  hl                                          ; $769a: $e1
	ret  nz                                          ; $769b: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $769c: $f0 $a0

jr_093_769e:
	ld   a, b                                        ; $769e: $78
	ld   d, b                                        ; $769f: $50
	ret  nz                                          ; $76a0: $c0

	ld   b, b                                        ; $76a1: $40
	rst  $38                                         ; $76a2: $ff
	rst  $30                                         ; $76a3: $f7
	cp   a                                           ; $76a4: $bf
	dec  c                                           ; $76a5: $0d
	inc  c                                           ; $76a6: $0c
	ld   [$0818], sp                                 ; $76a7: $08 $18 $08
	cp   [hl]                                        ; $76aa: $be
	sub  b                                           ; $76ab: $90
	ld   hl, sp+$70                                  ; $76ac: $f8 $70
	ccf                                              ; $76ae: $3f
	jr   jr_093_76cb                                 ; $76af: $18 $1a

	db   $10                                         ; $76b1: $10
	db   $fc                                         ; $76b2: $fc
	inc  a                                           ; $76b3: $3c
	and  $c2                                         ; $76b4: $e6 $c2
	ldh  [c], a                                      ; $76b6: $e2
	ld   b, d                                        ; $76b7: $42
	ld   h, d                                        ; $76b8: $62
	ld   b, d                                        ; $76b9: $42
	ld   [hl], h                                     ; $76ba: $74
	ld   h, h                                        ; $76bb: $64
	ld   hl, sp+$38                                  ; $76bc: $f8 $38
	ldh  a, [$e0]                                    ; $76be: $f0 $e0
	ld   a, b                                        ; $76c0: $78
	ld   d, b                                        ; $76c1: $50
	jr   c, jr_093_76f4                              ; $76c2: $38 $30

	jr   jr_093_76d6                                 ; $76c4: $18 $10

	inc  c                                           ; $76c6: $0c
	ld   [$080c], sp                                 ; $76c7: $08 $0c $08
	inc  c                                           ; $76ca: $0c

jr_093_76cb:
	ld   [$0406], sp                                 ; $76cb: $08 $06 $04
	ld   b, $04                                      ; $76ce: $06 $04
	rra                                              ; $76d0: $1f
	rlca                                             ; $76d1: $07
	rlca                                             ; $76d2: $07
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00

jr_093_76d6:
	ret  nz                                          ; $76d6: $c0

	ld   b, b                                        ; $76d7: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76d8: $cf
	add  a                                           ; $76d9: $87
	sub  b                                           ; $76da: $90
	jr   c, jr_093_76e0                              ; $76db: $38 $03

	inc  bc                                          ; $76dd: $03
	inc  bc                                          ; $76de: $03
	inc  c                                           ; $76df: $0c

jr_093_76e0:
	ld   sp, hl                                      ; $76e0: $f9
	db   $10                                         ; $76e1: $10
	ld   [$0200], sp                                 ; $76e2: $08 $00 $02
	ld   [bc], a                                     ; $76e5: $02
	di                                               ; $76e6: $f3
	ld   sp, $c9c9                                   ; $76e7: $31 $c9 $c9
	ld   [hl], b                                     ; $76ea: $70
	dec  sp                                          ; $76eb: $3b
	add  c                                           ; $76ec: $81
	add  d                                           ; $76ed: $82
	inc  bc                                          ; $76ee: $03
	ret  nz                                          ; $76ef: $c0

	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	add  b                                           ; $76f2: $80
	nop                                              ; $76f3: $00

jr_093_76f4:
	ret  nz                                          ; $76f4: $c0

	add  b                                           ; $76f5: $80
	ldh  [$c0], a                                    ; $76f6: $e0 $c0
	ldh  a, [$e0]                                    ; $76f8: $f0 $e0
	ld   hl, sp-$50                                  ; $76fa: $f8 $b0
	cp   a                                           ; $76fc: $bf
	sbc  a                                           ; $76fd: $9f
	ld   e, b                                        ; $76fe: $58
	ld   c, b                                        ; $76ff: $48
	jp   $0700                                       ; $7700: $c3 $00 $07


	ld   bc, $0307                                   ; $7703: $01 $07 $03
	rrca                                             ; $7706: $0f
	ld   [bc], a                                     ; $7707: $02
	rrca                                             ; $7708: $0f
	rlca                                             ; $7709: $07
	inc  e                                           ; $770a: $1c
	inc  c                                           ; $770b: $0c
	ld   sp, hl                                      ; $770c: $f9
	ld   sp, hl                                      ; $770d: $f9
	pop  hl                                          ; $770e: $e1
	ld   hl, $e0a0                                   ; $770f: $21 $a0 $e0
	ld   h, b                                        ; $7712: $60
	ldh  [$e0], a                                    ; $7713: $e0 $e0
	ldh  [$e4], a                                    ; $7715: $e0 $e4
	db   $e3                                         ; $7717: $e3

jr_093_7718:
	and  a                                           ; $7718: $a7
	rst  $28                                         ; $7719: $ef
	ldh  [$e0], a                                    ; $771a: $e0 $e0
	ldh  [$e1], a                                    ; $771c: $e0 $e1
	rst  $30                                         ; $771e: $f7
	rst  $20                                         ; $771f: $e7
	jr   jr_093_7749                                 ; $7720: $18 $27

	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	jr   nc, jr_093_7718                             ; $7726: $30 $f0

	ret  c                                           ; $7728: $d8

	ldh  [$78], a                                    ; $7729: $e0 $78
	nop                                              ; $772b: $00
	ld   hl, sp-$20                                  ; $772c: $f8 $e0
	ldh  a, [$c0]                                    ; $772e: $f0 $c0
	ld   b, b                                        ; $7730: $40
	add  b                                           ; $7731: $80
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	inc  bc                                          ; $7734: $03
	nop                                              ; $7735: $00

jr_093_7736:
	nop                                              ; $7736: $00
	rst  $38                                         ; $7737: $ff
	cp   a                                           ; $7738: $bf
	ld   a, a                                        ; $7739: $7f
	ldh  [rP1], a                                    ; $773a: $e0 $00
	ld   a, b                                        ; $773c: $78
	ld   a, h                                        ; $773d: $7c
	ld   a, a                                        ; $773e: $7f
	rra                                              ; $773f: $1f
	ld   a, [$fa0e]                                  ; $7740: $fa $0e $fa

jr_093_7743:
	ld   c, $fe                                      ; $7743: $0e $fe
	ld   c, $fa                                      ; $7745: $0e $fa
	ld   c, $7e                                      ; $7747: $0e $7e

jr_093_7749:
	adc  [hl]                                        ; $7749: $8e
	ld   a, [$760e]                                  ; $774a: $fa $0e $76
	ld   e, $7e                                      ; $774d: $1e $7e
	ld   e, $f6                                      ; $774f: $1e $f6
	and  b                                           ; $7751: $a0
	pop  af                                          ; $7752: $f1
	jr   nz, jr_093_7736                             ; $7753: $20 $e1

	ld   b, c                                        ; $7755: $41
	pop  hl                                          ; $7756: $e1
	ld   b, c                                        ; $7757: $41
	pop  hl                                          ; $7758: $e1
	ld   b, c                                        ; $7759: $41
	pop  hl                                          ; $775a: $e1
	ret  nz                                          ; $775b: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $775c: $f0 $a0
	ld   a, b                                        ; $775e: $78
	ld   d, b                                        ; $775f: $50
	ld   b, b                                        ; $7760: $40
	ret  nz                                          ; $7761: $c0

	rst  $38                                         ; $7762: $ff
	rst  $30                                         ; $7763: $f7
	cp   a                                           ; $7764: $bf
	dec  c                                           ; $7765: $0d
	inc  c                                           ; $7766: $0c
	ld   [$0818], sp                                 ; $7767: $08 $18 $08
	cp   [hl]                                        ; $776a: $be
	sub  b                                           ; $776b: $90
	ld   hl, sp+$70                                  ; $776c: $f8 $70
	ccf                                              ; $776e: $3f

jr_093_776f:
	jr   jr_093_7784                                 ; $776f: $18 $13

	jr   jr_093_776f                                 ; $7771: $18 $fc

	inc  a                                           ; $7773: $3c
	and  $c2                                         ; $7774: $e6 $c2
	ldh  [c], a                                      ; $7776: $e2
	ld   b, d                                        ; $7777: $42
	ld   h, d                                        ; $7778: $62
	ld   b, d                                        ; $7779: $42
	ld   [hl], h                                     ; $777a: $74
	ld   h, h                                        ; $777b: $64
	ld   hl, sp+$38                                  ; $777c: $f8 $38
	ldh  a, [$e0]                                    ; $777e: $f0 $e0
	ld   a, b                                        ; $7780: $78
	ld   d, b                                        ; $7781: $50
	jr   c, jr_093_77b4                              ; $7782: $38 $30

jr_093_7784:
	jr   jr_093_7796                                 ; $7784: $18 $10

	inc  c                                           ; $7786: $0c
	ld   [$080d], sp                                 ; $7787: $08 $0d $08
	dec  c                                           ; $778a: $0d
	add  hl, bc                                      ; $778b: $09
	rlca                                             ; $778c: $07
	dec  b                                           ; $778d: $05
	ld   b, $04                                      ; $778e: $06 $04
	rra                                              ; $7790: $1f
	rlca                                             ; $7791: $07
	rlca                                             ; $7792: $07
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00

jr_093_7796:
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	add  b                                           ; $7798: $80
	add  b                                           ; $7799: $80
	sbc  b                                           ; $779a: $98
	dec  sp                                          ; $779b: $3b
	inc  bc                                          ; $779c: $03
	nop                                              ; $779d: $00
	rrca                                             ; $779e: $0f
	dec  b                                           ; $779f: $05
	ld   sp, hl                                      ; $77a0: $f9
	db   $10                                         ; $77a1: $10
	ld   [rRAMG], sp                                 ; $77a2: $08 $00 $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	ld   [bc], a                                     ; $77a7: $02
	nop                                              ; $77a8: $00
	inc  bc                                          ; $77a9: $03
	ld   sp, hl                                      ; $77aa: $f9
	pop  hl                                          ; $77ab: $e1
	ld   sp, hl                                      ; $77ac: $f9
	add  hl, de                                      ; $77ad: $19
	add  e                                           ; $77ae: $83
	add  d                                           ; $77af: $82
	inc  bc                                          ; $77b0: $03
	ld   [bc], a                                     ; $77b1: $02
	inc  bc                                          ; $77b2: $03
	inc  bc                                          ; $77b3: $03

jr_093_77b4:
	ld   bc, $0101                                   ; $77b4: $01 $01 $01
	ld   bc, $0101                                   ; $77b7: $01 $01 $01
	ld   bc, $0301                                   ; $77ba: $01 $01 $03
	inc  bc                                          ; $77bd: $03
	rra                                              ; $77be: $1f
	dec  e                                           ; $77bf: $1d
	rlca                                             ; $77c0: $07
	jr   jr_093_7743                                 ; $77c1: $18 $80

	nop                                              ; $77c3: $00
	ret  nz                                          ; $77c4: $c0

	add  b                                           ; $77c5: $80
	ldh  [$c0], a                                    ; $77c6: $e0 $c0
	ldh  a, [$60]                                    ; $77c8: $f0 $60
	ld   hl, sp+$30                                  ; $77ca: $f8 $30
	cp   a                                           ; $77cc: $bf
	rra                                              ; $77cd: $1f
	adc  a                                           ; $77ce: $8f
	nop                                              ; $77cf: $00
	inc  bc                                          ; $77d0: $03
	ret  nz                                          ; $77d1: $c0

	rst  ToBoot                                         ; $77d2: $c7
	ld   bc, $0307                                   ; $77d3: $01 $07 $03
	rrca                                             ; $77d6: $0f
	ld   [bc], a                                     ; $77d7: $02
	rrca                                             ; $77d8: $0f
	ld   b, $1f                                      ; $77d9: $06 $1f
	inc  c                                           ; $77db: $0c
	rst  $38                                         ; $77dc: $ff
	ld   hl, sp-$01                                  ; $77dd: $f8 $ff
	nop                                              ; $77df: $00
	jp   nz, $c2c2                                   ; $77e0: $c2 $c2 $c2

	jp   nz, Jump_093_42c2                           ; $77e3: $c2 $c2 $42

	jp   nz, $c242                                   ; $77e6: $c2 $42 $c2

	ld   b, d                                        ; $77e9: $42
	jp   nz, $e242                                   ; $77ea: $c2 $42 $e2

	ld   h, d                                        ; $77ed: $62
	ld   a, [$f95a]                                  ; $77ee: $fa $5a $f9
	pop  hl                                          ; $77f1: $e1
	pop  bc                                          ; $77f2: $c1
	nop                                              ; $77f3: $00
	ld   bc, $0100                                   ; $77f4: $01 $00 $01
	nop                                              ; $77f7: $00
	ld   bc, $0f00                                   ; $77f8: $01 $00 $0f
	nop                                              ; $77fb: $00
	ccf                                              ; $77fc: $3f
	nop                                              ; $77fd: $00
	rst  $38                                         ; $77fe: $ff
	nop                                              ; $77ff: $00
	add  e                                           ; $7800: $83
	nop                                              ; $7801: $00
	add  b                                           ; $7802: $80
	nop                                              ; $7803: $00
	ret  nz                                          ; $7804: $c0

	nop                                              ; $7805: $00
	ret  nz                                          ; $7806: $c0

	nop                                              ; $7807: $00
	ret  nz                                          ; $7808: $c0

	nop                                              ; $7809: $00
	ret  nz                                          ; $780a: $c0

	nop                                              ; $780b: $00
	ldh  [rP1], a                                    ; $780c: $e0 $00
	ldh  [rP1], a                                    ; $780e: $e0 $00
	rst  $38                                         ; $7810: $ff
	nop                                              ; $7811: $00
	ld   a, a                                        ; $7812: $7f
	nop                                              ; $7813: $00
	dec  sp                                          ; $7814: $3b
	nop                                              ; $7815: $00

jr_093_7816:
	dec  sp                                          ; $7816: $3b
	nop                                              ; $7817: $00
	inc  sp                                          ; $7818: $33
	nop                                              ; $7819: $00
	daa                                              ; $781a: $27
	nop                                              ; $781b: $00
	rlca                                             ; $781c: $07
	nop                                              ; $781d: $00
	rrca                                             ; $781e: $0f
	nop                                              ; $781f: $00
	cp   $46                                         ; $7820: $fe $46
	cp   $02                                         ; $7822: $fe $02
	cp   $02                                         ; $7824: $fe $02
	cp   $02                                         ; $7826: $fe $02
	ldh  [c], a                                      ; $7828: $e2
	ld   [bc], a                                     ; $7829: $02
	jp   nz, wIsDoubleSpeed                                   ; $782a: $c2 $02 $c2

	ld   [bc], a                                     ; $782d: $02
	ldh  [c], a                                      ; $782e: $e2
	ld   [bc], a                                     ; $782f: $02
	or   $a6                                         ; $7830: $f6 $a6
	pop  af                                          ; $7832: $f1
	jr   nz, jr_093_7816                             ; $7833: $20 $e1

	ld   b, c                                        ; $7835: $41
	db   $e3                                         ; $7836: $e3
	ld   b, c                                        ; $7837: $41
	rst  $20                                         ; $7838: $e7
	ld   b, c                                        ; $7839: $41
	pop  hl                                          ; $783a: $e1
	ret  nz                                          ; $783b: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $783c: $f0 $a0
	ld   a, b                                        ; $783e: $78
	ld   d, b                                        ; $783f: $50
	ldh  [$60], a                                    ; $7840: $e0 $60
	rst  $38                                         ; $7842: $ff
	rst  $30                                         ; $7843: $f7
	sbc  a                                           ; $7844: $9f
	dec  c                                           ; $7845: $0d
	db   $fc                                         ; $7846: $fc
	ld   [$08f8], sp                                 ; $7847: $08 $f8 $08
	cp   [hl]                                        ; $784a: $be
	sub  b                                           ; $784b: $90
	ld   hl, sp+$70                                  ; $784c: $f8 $70
	ccf                                              ; $784e: $3f
	jr   jr_093_7870                                 ; $784f: $18 $1f

	add  hl, de                                      ; $7851: $19
	db   $fc                                         ; $7852: $fc
	inc  a                                           ; $7853: $3c
	and  $c2                                         ; $7854: $e6 $c2
	rst  $38                                         ; $7856: $ff
	ld   b, d                                        ; $7857: $42
	ld   a, a                                        ; $7858: $7f
	ld   b, d                                        ; $7859: $42
	halt                                             ; $785a: $76
	ld   h, h                                        ; $785b: $64
	ld   hl, sp+$38                                  ; $785c: $f8 $38
	ldh  a, [$e0]                                    ; $785e: $f0 $e0
	ld   a, $1a                                      ; $7860: $3e $1a
	ld   a, $1e                                      ; $7862: $3e $1e
	ld   a, $0a                                      ; $7864: $3e $0a
	ld   a, $0a                                      ; $7866: $3e $0a
	cp   [hl]                                        ; $7868: $be
	ld   c, $3e                                      ; $7869: $0e $3e
	ld   e, $7e                                      ; $786b: $1e $7e
	ld   a, $fe                                      ; $786d: $3e $fe
	ld   l, d                                        ; $786f: $6a

jr_093_7870:
	and  b                                           ; $7870: $a0
	ldh  [$60], a                                    ; $7871: $e0 $60
	ldh  [$e0], a                                    ; $7873: $e0 $e0
	ldh  [$e3], a                                    ; $7875: $e0 $e3
	ldh  [$af], a                                    ; $7877: $e0 $af
	rst  $28                                         ; $7879: $ef
	ldh  [$e0], a                                    ; $787a: $e0 $e0
	ldh  [$e0], a                                    ; $787c: $e0 $e0
	di                                               ; $787e: $f3
	pop  hl                                          ; $787f: $e1
	jr   jr_093_78a9                                 ; $7880: $18 $27

	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	add  hl, de                                      ; $7884: $19
	db   $10                                         ; $7885: $10
	ld   l, b                                        ; $7886: $68
	ldh  a, [$30]                                    ; $7887: $f0 $30
	ret  nz                                          ; $7889: $c0

	ld   h, b                                        ; $788a: $60
	nop                                              ; $788b: $00
	ldh  a, [rAUD4LEN]                               ; $788c: $f0 $20
	ldh  a, [$c0]                                    ; $788e: $f0 $c0
	add  b                                           ; $7890: $80
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	add  b                                           ; $7894: $80
	ret  nz                                          ; $7895: $c0

	cp   d                                           ; $7896: $ba
	ld   a, h                                        ; $7897: $7c
	ld   a, c                                        ; $7898: $79
	rlca                                             ; $7899: $07
	pop  hl                                          ; $789a: $e1
	nop                                              ; $789b: $00
	ld   l, b                                        ; $789c: $68
	ld   [hl], b                                     ; $789d: $70
	ld   a, a                                        ; $789e: $7f
	ld   e, $fa                                      ; $789f: $1e $fa
	ld   c, $fa                                      ; $78a1: $0e $fa
	ld   c, $fe                                      ; $78a3: $0e $fe
	ld   c, $fa                                      ; $78a5: $0e $fa
	ld   c, $fe                                      ; $78a7: $0e $fe

jr_093_78a9:
	adc  $fa                                         ; $78a9: $ce $fa
	ld   c, $76                                      ; $78ab: $0e $76
	ld   e, $7e                                      ; $78ad: $1e $7e
	ld   e, $1f                                      ; $78af: $1e $1f
	rlca                                             ; $78b1: $07
	rlca                                             ; $78b2: $07
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	sbc  a                                           ; $78b8: $9f
	add  a                                           ; $78b9: $87
	sub  b                                           ; $78ba: $90
	jr   c, jr_093_78c0                              ; $78bb: $38 $03

	ld   bc, $0207                                   ; $78bd: $01 $07 $02

jr_093_78c0:
	ld   sp, hl                                      ; $78c0: $f9
	db   $10                                         ; $78c1: $10
	dec  bc                                          ; $78c2: $0b
	ld   [bc], a                                     ; $78c3: $02
	ld   bc, $0501                                   ; $78c4: $01 $01 $05
	inc  b                                           ; $78c7: $04
	ld   sp, hl                                      ; $78c8: $f9
	ld   hl, sp+$01                                  ; $78c9: $f8 $01
	nop                                              ; $78cb: $00
	db   $e3                                         ; $78cc: $e3
	add  b                                           ; $78cd: $80
	inc  bc                                          ; $78ce: $03
	ret  nz                                          ; $78cf: $c0

	ld   [bc], a                                     ; $78d0: $02
	inc  c                                           ; $78d1: $0c
	add  b                                           ; $78d2: $80
	nop                                              ; $78d3: $00
	ret  nz                                          ; $78d4: $c0

	add  b                                           ; $78d5: $80
	ldh  [$c0], a                                    ; $78d6: $e0 $c0
	ldh  a, [$e0]                                    ; $78d8: $f0 $e0
	ld   hl, sp-$50                                  ; $78da: $f8 $b0
	cp   a                                           ; $78dc: $bf
	sbc  a                                           ; $78dd: $9f
	ld   e, b                                        ; $78de: $58
	ld   c, b                                        ; $78df: $48
	inc  bc                                          ; $78e0: $03
	nop                                              ; $78e1: $00
	rlca                                             ; $78e2: $07
	ld   bc, $0307                                   ; $78e3: $01 $07 $03
	rrca                                             ; $78e6: $0f
	ld   [bc], a                                     ; $78e7: $02
	rrca                                             ; $78e8: $0f
	rlca                                             ; $78e9: $07
	inc  e                                           ; $78ea: $1c
	inc  c                                           ; $78eb: $0c
	ld   sp, hl                                      ; $78ec: $f9
	ld   sp, hl                                      ; $78ed: $f9
	pop  hl                                          ; $78ee: $e1
	ld   hl, $5078                                   ; $78ef: $21 $78 $50
	jr   c, jr_093_7924                              ; $78f2: $38 $30

	jr   jr_093_7906                                 ; $78f4: $18 $10

	dec  c                                           ; $78f6: $0d
	add  hl, bc                                      ; $78f7: $09
	dec  c                                           ; $78f8: $0d
	add  hl, bc                                      ; $78f9: $09
	dec  c                                           ; $78fa: $0d
	ld   [$0406], sp                                 ; $78fb: $08 $06 $04
	ld   b, $04                                      ; $78fe: $06 $04
	rra                                              ; $7900: $1f
	rlca                                             ; $7901: $07
	rlca                                             ; $7902: $07
	nop                                              ; $7903: $00
	add  b                                           ; $7904: $80
	add  b                                           ; $7905: $80

jr_093_7906:
	and  b                                           ; $7906: $a0
	jr   nz, jr_093_7987                             ; $7907: $20 $7e

	ccf                                              ; $7909: $3f
	jr   nz, jr_093_7924                             ; $790a: $20 $18

	rra                                              ; $790c: $1f
	rlca                                             ; $790d: $07
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	ld   sp, hl                                      ; $7910: $f9
	db   $10                                         ; $7911: $10
	dec  bc                                          ; $7912: $0b
	ld   [bc], a                                     ; $7913: $02
	ld   bc, $2901                                   ; $7914: $01 $01 $29
	inc  e                                           ; $7917: $1c
	dec  l                                           ; $7918: $2d
	call nz, $0809                                   ; $7919: $c4 $09 $08
	di                                               ; $791c: $f3
	ldh  a, [$03]                                    ; $791d: $f0 $03
	nop                                              ; $791f: $00
	rlca                                             ; $7920: $07
	inc  bc                                          ; $7921: $03
	add  d                                           ; $7922: $82
	inc  c                                           ; $7923: $0c

jr_093_7924:
	ret  nz                                          ; $7924: $c0

	add  b                                           ; $7925: $80
	ldh  [$c0], a                                    ; $7926: $e0 $c0
	ldh  a, [$e0]                                    ; $7928: $f0 $e0
	ld   hl, sp-$50                                  ; $792a: $f8 $b0
	cp   a                                           ; $792c: $bf
	sbc  a                                           ; $792d: $9f
	ld   e, b                                        ; $792e: $58
	ld   c, b                                        ; $792f: $48
	inc  bc                                          ; $7930: $03
	ret  nz                                          ; $7931: $c0

	rlca                                             ; $7932: $07
	ld   bc, $0307                                   ; $7933: $01 $07 $03
	rrca                                             ; $7936: $0f
	ld   [bc], a                                     ; $7937: $02
	rrca                                             ; $7938: $0f
	rlca                                             ; $7939: $07
	inc  e                                           ; $793a: $1c
	inc  c                                           ; $793b: $0c
	ld   sp, hl                                      ; $793c: $f9
	ld   sp, hl                                      ; $793d: $f9
	pop  hl                                          ; $793e: $e1
	ld   hl, $7ff8                                   ; $793f: $21 $f8 $7f
	ldh  [rIE], a                                    ; $7942: $e0 $ff
	add  e                                           ; $7944: $83
	rst  $38                                         ; $7945: $ff
	adc  h                                           ; $7946: $8c
	db   $fc                                         ; $7947: $fc
	cp   h                                           ; $7948: $bc
	db   $fc                                         ; $7949: $fc
	db   $fd                                         ; $794a: $fd
	db   $fd                                         ; $794b: $fd
	ld   a, [hl]                                     ; $794c: $7e
	cp   $78                                         ; $794d: $fe $78
	ld   hl, sp+$04                                  ; $794f: $f8 $04
	db   $e4                                         ; $7951: $e4
	ld   a, a                                        ; $7952: $7f
	rst  $38                                         ; $7953: $ff
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	ld   a, a                                        ; $7956: $7f
	ld   a, a                                        ; $7957: $7f
	ld   a, a                                        ; $7958: $7f
	ld   a, a                                        ; $7959: $7f
	rst  $38                                         ; $795a: $ff
	rst  $38                                         ; $795b: $ff
	ld   a, a                                        ; $795c: $7f
	ld   a, a                                        ; $795d: $7f
	rst  $38                                         ; $795e: $ff
	rst  $38                                         ; $795f: $ff
	add  b                                           ; $7960: $80
	rst  $38                                         ; $7961: $ff
	ldh  [rIE], a                                    ; $7962: $e0 $ff
	db   $fc                                         ; $7964: $fc
	rst  $38                                         ; $7965: $ff
	rst  $38                                         ; $7966: $ff
	rst  $38                                         ; $7967: $ff
	rst  $38                                         ; $7968: $ff
	rst  $38                                         ; $7969: $ff
	rst  $38                                         ; $796a: $ff
	rst  $38                                         ; $796b: $ff
	rst  $38                                         ; $796c: $ff
	rst  $38                                         ; $796d: $ff
	rst  $38                                         ; $796e: $ff
	rst  $38                                         ; $796f: $ff
	ld   a, [hl]                                     ; $7970: $7e
	cp   $1e                                         ; $7971: $fe $1e
	cp   $0e                                         ; $7973: $fe $0e
	cp   $8e                                         ; $7975: $fe $8e
	cp   $ee                                         ; $7977: $fe $ee
	cp   $f6                                         ; $7979: $fe $f6
	cp   $f6                                         ; $797b: $fe $f6
	cp   $f6                                         ; $797d: $fe $f6
	cp   $f8                                         ; $797f: $fe $f8
	ld   a, b                                        ; $7981: $78
	rst  $30                                         ; $7982: $f7
	rst  $30                                         ; $7983: $f7
	rst  $38                                         ; $7984: $ff
	rst  $38                                         ; $7985: $ff
	ei                                               ; $7986: $fb

jr_093_7987:
	db   $fc                                         ; $7987: $fc
	xor  h                                           ; $7988: $ac
	ldh  [$e0], a                                    ; $7989: $e0 $e0
	ldh  [$e0], a                                    ; $798b: $e0 $e0
	ldh  [$f3], a                                    ; $798d: $e0 $f3

jr_093_798f:
	pop  hl                                          ; $798f: $e1
	rst  $38                                         ; $7990: $ff
	rst  $38                                         ; $7991: $ff
	rst  $38                                         ; $7992: $ff
	rst  $38                                         ; $7993: $ff
	ld   hl, $60c3                                   ; $7994: $21 $c3 $60
	ldh  a, [$58]                                    ; $7997: $f0 $58
	jr   nc, jr_093_79c3                             ; $7999: $30 $28

	db   $10                                         ; $799b: $10
	ld   a, b                                        ; $799c: $78
	jr   nz, jr_093_798f                             ; $799d: $20 $f0

	ret  nz                                          ; $799f: $c0

	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	rst  $38                                         ; $79a2: $ff
	rst  $38                                         ; $79a3: $ff
	rst  $38                                         ; $79a4: $ff
	rst  $38                                         ; $79a5: $ff
	sbc  $7f                                         ; $79a6: $de $7f
	ret  nc                                          ; $79a8: $d0

	ldh  [$e0], a                                    ; $79a9: $e0 $e0
	nop                                              ; $79ab: $00
	ld   l, b                                        ; $79ac: $68
	ld   [hl], b                                     ; $79ad: $70
	ld   a, a                                        ; $79ae: $7f
	ld   e, $fe                                      ; $79af: $1e $fe
	cp   $fe                                         ; $79b1: $fe $fe
	cp   $be                                         ; $79b3: $fe $be
	sbc  $fa                                         ; $79b5: $de $fa
	sbc  $fe                                         ; $79b7: $de $fe
	ld   c, $7a                                      ; $79b9: $0e $7a
	ld   c, $76                                      ; $79bb: $0e $76
	ld   e, $7e                                      ; $79bd: $1e $7e
	ld   e, $f8                                      ; $79bf: $1e $f8
	ld   a, b                                        ; $79c1: $78
	rst  $30                                         ; $79c2: $f7

jr_093_79c3:
	rst  $30                                         ; $79c3: $f7
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	ei                                               ; $79c6: $fb
	db   $fc                                         ; $79c7: $fc
	xor  h                                           ; $79c8: $ac
	ldh  [$e1], a                                    ; $79c9: $e0 $e1
	pop  hl                                          ; $79cb: $e1
	ldh  [c], a                                      ; $79cc: $e2
	ldh  [c], a                                      ; $79cd: $e2
	or   $e4                                         ; $79ce: $f6 $e4
	rst  $38                                         ; $79d0: $ff
	rst  $38                                         ; $79d1: $ff
	rst  $38                                         ; $79d2: $ff
	rst  $38                                         ; $79d3: $ff
	ld   hl, $e0c3                                   ; $79d4: $21 $c3 $e0
	ld   [hl], b                                     ; $79d7: $70
	ld   a, b                                        ; $79d8: $78
	db   $10                                         ; $79d9: $10
	ld   hl, sp-$40                                  ; $79da: $f8 $c0
	jr   c, @+$22                                    ; $79dc: $38 $20

	ret  nz                                          ; $79de: $c0

	ld   b, b                                        ; $79df: $40
	rst  $38                                         ; $79e0: $ff
	rst  $38                                         ; $79e1: $ff
	rst  $38                                         ; $79e2: $ff
	rst  $38                                         ; $79e3: $ff
	rst  $38                                         ; $79e4: $ff
	rst  $38                                         ; $79e5: $ff
	sbc  [hl]                                        ; $79e6: $9e
	ld   a, a                                        ; $79e7: $7f
	ret  nc                                          ; $79e8: $d0

	ldh  [$fc], a                                    ; $79e9: $e0 $fc
	inc  e                                           ; $79eb: $1c
	ld   h, d                                        ; $79ec: $62
	ld   h, d                                        ; $79ed: $62
	dec  de                                          ; $79ee: $1b
	ld   de, $fefe                                   ; $79ef: $11 $fe $fe
	cp   $fe                                         ; $79f2: $fe $fe
	cp   [hl]                                        ; $79f4: $be
	sbc  $fa                                         ; $79f5: $de $fa
	sbc  $fe                                         ; $79f7: $de $fe
	ld   c, $7a                                      ; $79f9: $0e $7a
	ld   c, $76                                      ; $79fb: $0e $76
	ld   e, $7e                                      ; $79fd: $1e $7e
	ld   e, $f8                                      ; $79ff: $1e $f8
	ld   a, b                                        ; $7a01: $78
	rst  $30                                         ; $7a02: $f7
	rst  $30                                         ; $7a03: $f7
	rst  $38                                         ; $7a04: $ff
	rst  $38                                         ; $7a05: $ff
	ld   a, [$acfd]                                  ; $7a06: $fa $fd $ac
	ldh  [$e0], a                                    ; $7a09: $e0 $e0
	ldh  [$e0], a                                    ; $7a0b: $e0 $e0
	ldh  [$f3], a                                    ; $7a0d: $e0 $f3
	pop  hl                                          ; $7a0f: $e1
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	rst  $38                                         ; $7a12: $ff
	rst  $38                                         ; $7a13: $ff
	ld   h, c                                        ; $7a14: $61
	add  e                                           ; $7a15: $83
	ldh  a, [$c0]                                    ; $7a16: $f0 $c0
	ld   e, b                                        ; $7a18: $58
	ldh  [$38], a                                    ; $7a19: $e0 $38
	ld   [hl], b                                     ; $7a1b: $70
	ld   hl, sp-$10                                  ; $7a1c: $f8 $f0
	ldh  a, [$50]                                    ; $7a1e: $f0 $50
	rst  $38                                         ; $7a20: $ff
	rst  $38                                         ; $7a21: $ff
	rst  $38                                         ; $7a22: $ff
	rst  $38                                         ; $7a23: $ff
	rst  $38                                         ; $7a24: $ff
	rst  $38                                         ; $7a25: $ff
	sbc  $3f                                         ; $7a26: $de $3f
	ldh  a, [$30]                                    ; $7a28: $f0 $30
	ldh  [$f0], a                                    ; $7a2a: $e0 $f0
	ld   a, b                                        ; $7a2c: $78
	ld   hl, sp+$7f                                  ; $7a2d: $f8 $7f
	ld   d, $f8                                      ; $7a2f: $16 $f8
	ld   a, b                                        ; $7a31: $78
	rst  $30                                         ; $7a32: $f7
	rst  $30                                         ; $7a33: $f7
	rst  $38                                         ; $7a34: $ff
	rst  $38                                         ; $7a35: $ff
	ei                                               ; $7a36: $fb
	db   $fc                                         ; $7a37: $fc
	xor  h                                           ; $7a38: $ac
	ldh  [$e3], a                                    ; $7a39: $e0 $e3
	db   $e3                                         ; $7a3b: $e3
	and  $e6                                         ; $7a3c: $e6 $e6
	or   $e4                                         ; $7a3e: $f6 $e4
	rst  $38                                         ; $7a40: $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff

jr_093_7a44:
	ld   bc, $c2c3                                   ; $7a44: $01 $c3 $c2
	ld   h, b                                        ; $7a47: $60
	ld   a, e                                        ; $7a48: $7b
	jr   nc, jr_093_7a44                             ; $7a49: $30 $f9

	ret  nz                                          ; $7a4b: $c0

	jr   c, jr_093_7a6e                              ; $7a4c: $38 $20

	ret  nz                                          ; $7a4e: $c0

	ld   b, b                                        ; $7a4f: $40
	rst  $38                                         ; $7a50: $ff
	rst  $38                                         ; $7a51: $ff
	rst  $38                                         ; $7a52: $ff
	rst  $38                                         ; $7a53: $ff
	rst  $38                                         ; $7a54: $ff
	rst  $38                                         ; $7a55: $ff
	sbc  $7f                                         ; $7a56: $de $7f
	ret  nc                                          ; $7a58: $d0

	ldh  [$fe], a                                    ; $7a59: $e0 $fe
	ld   e, $63                                      ; $7a5b: $1e $63
	ld   h, e                                        ; $7a5d: $63
	dec  de                                          ; $7a5e: $1b
	ld   de, $78f8                                   ; $7a5f: $11 $f8 $78
	rst  $30                                         ; $7a62: $f7
	rst  $30                                         ; $7a63: $f7
	rst  $38                                         ; $7a64: $ff
	rst  $38                                         ; $7a65: $ff
	ld   hl, sp-$01                                  ; $7a66: $f8 $ff
	and  a                                           ; $7a68: $a7
	rst  $28                                         ; $7a69: $ef
	ldh  [$e0], a                                    ; $7a6a: $e0 $e0
	ldh  [$e1], a                                    ; $7a6c: $e0 $e1

jr_093_7a6e:
	rst  $30                                         ; $7a6e: $f7
	rst  $20                                         ; $7a6f: $e7
	rst  $38                                         ; $7a70: $ff
	rst  $38                                         ; $7a71: $ff
	rst  $38                                         ; $7a72: $ff

jr_093_7a73:
	rst  $38                                         ; $7a73: $ff
	ld   bc, $3083                                   ; $7a74: $01 $83 $30
	ldh  a, [$d8]                                    ; $7a77: $f0 $d8
	ldh  [$78], a                                    ; $7a79: $e0 $78
	nop                                              ; $7a7b: $00
	ld   hl, sp-$20                                  ; $7a7c: $f8 $e0
	ldh  a, [$c0]                                    ; $7a7e: $f0 $c0
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	rst  $38                                         ; $7a82: $ff
	rst  $38                                         ; $7a83: $ff
	rst  $38                                         ; $7a84: $ff
	rst  $38                                         ; $7a85: $ff
	ld   e, $ff                                      ; $7a86: $1e $ff
	cp   a                                           ; $7a88: $bf
	ld   a, a                                        ; $7a89: $7f
	ldh  [rP1], a                                    ; $7a8a: $e0 $00
	ld   a, b                                        ; $7a8c: $78
	ld   a, h                                        ; $7a8d: $7c
	ld   a, a                                        ; $7a8e: $7f
	rra                                              ; $7a8f: $1f
	cp   $fe                                         ; $7a90: $fe $fe
	cp   $fe                                         ; $7a92: $fe $fe
	cp   [hl]                                        ; $7a94: $be
	sbc  $fa                                         ; $7a95: $de $fa
	ld   e, $7e                                      ; $7a97: $1e $7e
	adc  [hl]                                        ; $7a99: $8e
	ld   a, [$760e]                                  ; $7a9a: $fa $0e $76
	ld   e, $7e                                      ; $7a9d: $1e $7e
	ld   e, $f8                                      ; $7a9f: $1e $f8
	ld   a, b                                        ; $7aa1: $78
	rst  $30                                         ; $7aa2: $f7
	rst  $30                                         ; $7aa3: $f7
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	ei                                               ; $7aa6: $fb
	db   $fc                                         ; $7aa7: $fc
	xor  a                                           ; $7aa8: $af
	rst  $28                                         ; $7aa9: $ef
	ldh  [$e0], a                                    ; $7aaa: $e0 $e0
	ldh  [$e0], a                                    ; $7aac: $e0 $e0
	di                                               ; $7aae: $f3
	pop  hl                                          ; $7aaf: $e1
	rst  $38                                         ; $7ab0: $ff
	rst  $38                                         ; $7ab1: $ff
	rst  $38                                         ; $7ab2: $ff
	rst  $38                                         ; $7ab3: $ff
	ld   a, c                                        ; $7ab4: $79
	sub  e                                           ; $7ab5: $93
	ld   l, b                                        ; $7ab6: $68
	ldh  a, [$30]                                    ; $7ab7: $f0 $30
	ret  nz                                          ; $7ab9: $c0

	ld   h, b                                        ; $7aba: $60
	nop                                              ; $7abb: $00
	ldh  a, [rAUD4LEN]                               ; $7abc: $f0 $20
	ldh  a, [$c0]                                    ; $7abe: $f0 $c0
	rst  $38                                         ; $7ac0: $ff
	rst  $38                                         ; $7ac1: $ff
	rst  $38                                         ; $7ac2: $ff
	rst  $38                                         ; $7ac3: $ff
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff
	sbc  [hl]                                        ; $7ac6: $9e
	ld   a, a                                        ; $7ac7: $7f
	ld   a, c                                        ; $7ac8: $79
	rlca                                             ; $7ac9: $07
	pop  hl                                          ; $7aca: $e1
	nop                                              ; $7acb: $00
	ld   l, b                                        ; $7acc: $68
	ld   [hl], b                                     ; $7acd: $70
	ld   a, a                                        ; $7ace: $7f
	ld   e, $fe                                      ; $7acf: $1e $fe
	cp   $fe                                         ; $7ad1: $fe $fe
	cp   $be                                         ; $7ad3: $fe $be
	sbc  $fa                                         ; $7ad5: $de $fa
	ld   e, $fe                                      ; $7ad7: $1e $fe
	adc  $fa                                         ; $7ad9: $ce $fa
	ld   c, $76                                      ; $7adb: $0e $76
	ld   e, $7e                                      ; $7add: $1e $7e
	ld   e, $03                                      ; $7adf: $1e $03
	ld   [bc], a                                     ; $7ae1: $02
	rlca                                             ; $7ae2: $07
	rlca                                             ; $7ae3: $07
	rrca                                             ; $7ae4: $0f
	dec  c                                           ; $7ae5: $0d
	rrca                                             ; $7ae6: $0f
	dec  bc                                          ; $7ae7: $0b
	rrca                                             ; $7ae8: $0f
	add  hl, bc                                      ; $7ae9: $09
	rrca                                             ; $7aea: $0f
	inc  c                                           ; $7aeb: $0c
	rrca                                             ; $7aec: $0f
	rrca                                             ; $7aed: $0f
	ccf                                              ; $7aee: $3f
	ccf                                              ; $7aef: $3f
	rlca                                             ; $7af0: $07
	jr   jr_093_7a73                                 ; $7af1: $18 $80

	nop                                              ; $7af3: $00
	ret  nz                                          ; $7af4: $c0

	add  b                                           ; $7af5: $80
	ldh  [$c0], a                                    ; $7af6: $e0 $c0
	ldh  a, [$e0]                                    ; $7af8: $f0 $e0
	ld   hl, sp-$10                                  ; $7afa: $f8 $f0
	ccf                                              ; $7afc: $3f
	ccf                                              ; $7afd: $3f
	rst  ToBoot                                         ; $7afe: $c7
	call nz, $c003                                   ; $7aff: $c4 $03 $c0
	rst  ToBoot                                         ; $7b02: $c7
	ld   bc, $0307                                   ; $7b03: $01 $07 $03
	rrca                                             ; $7b06: $0f
	ld   [bc], a                                     ; $7b07: $02
	rrca                                             ; $7b08: $0f
	ld   b, $1f                                      ; $7b09: $06 $1f
	rrca                                             ; $7b0b: $0f
	db   $fc                                         ; $7b0c: $fc
	db   $fc                                         ; $7b0d: $fc
	jp   $c243                                       ; $7b0e: $c3 $43 $c2


	jp   nz, $f2f2                                   ; $7b11: $c2 $f2 $f2

	ld   a, [$fa5a]                                  ; $7b14: $fa $5a $fa
	ld   l, d                                        ; $7b17: $6a
	ld   a, [$faca]                                  ; $7b18: $fa $ca $fa
	ld   a, [de]                                     ; $7b1b: $1a
	ld   a, [$fe7a]                                  ; $7b1c: $fa $7a $fe
	cp   $7f                                         ; $7b1f: $fe $7f
	ld   a, b                                        ; $7b21: $78
	rst  $38                                         ; $7b22: $ff
	ret  c                                           ; $7b23: $d8

	rst  $38                                         ; $7b24: $ff
	sbc  b                                           ; $7b25: $98
	rst  $38                                         ; $7b26: $ff
	adc  b                                           ; $7b27: $88
	rst  $38                                         ; $7b28: $ff
	call nz, Call_093_63ff                           ; $7b29: $c4 $ff $63
	rst  $38                                         ; $7b2c: $ff
	ld   [$40ff], sp                                 ; $7b2d: $08 $ff $40
	ld   a, [$ff3b]                                  ; $7b30: $fa $3b $ff
	rrca                                             ; $7b33: $0f
	ccf                                              ; $7b34: $3f
	pop  bc                                          ; $7b35: $c1
	add  e                                           ; $7b36: $83
	ld   a, l                                        ; $7b37: $7d
	inc  bc                                          ; $7b38: $03
	call Call_093_4d83                               ; $7b39: $cd $83 $4d
	ei                                               ; $7b3c: $fb
	push af                                          ; $7b3d: $f5
	rst  $38                                         ; $7b3e: $ff
	ld   a, a                                        ; $7b3f: $7f
	cp   a                                           ; $7b40: $bf
	cp   a                                           ; $7b41: $bf
	rst  $38                                         ; $7b42: $ff
	ldh  [$f9], a                                    ; $7b43: $e0 $f9
	ld   b, $83                                      ; $7b45: $06 $83
	ld   a, h                                        ; $7b47: $7c
	add  c                                           ; $7b48: $81
	ld   h, [hl]                                     ; $7b49: $66
	add  e                                           ; $7b4a: $83
	ld   l, h                                        ; $7b4b: $6c
	cp   a                                           ; $7b4c: $bf
	ld   b, e                                        ; $7b4d: $43
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	cp   $0e                                         ; $7b50: $fe $0e
	cp   $0e                                         ; $7b52: $fe $0e
	cp   $0e                                         ; $7b54: $fe $0e
	cp   $0e                                         ; $7b56: $fe $0e
	cp   $16                                         ; $7b58: $fe $16
	cp   $72                                         ; $7b5a: $fe $72
	cp   $e2                                         ; $7b5c: $fe $e2
	cp   $c2                                         ; $7b5e: $fe $c2

Jump_093_7b60:
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	add  b                                           ; $7b62: $80
	nop                                              ; $7b63: $00
	ret  nz                                          ; $7b64: $c0

	add  b                                           ; $7b65: $80
	ldh  [$c0], a                                    ; $7b66: $e0 $c0
	ldh  a, [$e0]                                    ; $7b68: $f0 $e0
	ld   hl, sp-$10                                  ; $7b6a: $f8 $f0
	ccf                                              ; $7b6c: $3f
	ccf                                              ; $7b6d: $3f
	rst  ToBoot                                         ; $7b6e: $c7
	call nz, $00c3                                   ; $7b6f: $c4 $c3 $00
	rlca                                             ; $7b72: $07
	ld   bc, $0307                                   ; $7b73: $01 $07 $03
	rrca                                             ; $7b76: $0f
	ld   [bc], a                                     ; $7b77: $02
	rrca                                             ; $7b78: $0f
	ld   b, $1f                                      ; $7b79: $06 $1f
	rrca                                             ; $7b7b: $0f
	db   $fc                                         ; $7b7c: $fc
	db   $fc                                         ; $7b7d: $fc
	jp   $0243                                       ; $7b7e: $c3 $43 $02


	inc  c                                           ; $7b81: $0c
	add  b                                           ; $7b82: $80
	nop                                              ; $7b83: $00
	ret  nz                                          ; $7b84: $c0

	add  b                                           ; $7b85: $80
	ldh  [$c0], a                                    ; $7b86: $e0 $c0
	ldh  a, [$e0]                                    ; $7b88: $f0 $e0
	ld   hl, sp-$10                                  ; $7b8a: $f8 $f0
	ccf                                              ; $7b8c: $3f
	ccf                                              ; $7b8d: $3f
	rst  ToBoot                                         ; $7b8e: $c7
	call nz, $0003                                   ; $7b8f: $c4 $03 $00
	rlca                                             ; $7b92: $07
	ld   bc, $0307                                   ; $7b93: $01 $07 $03
	rrca                                             ; $7b96: $0f
	ld   [bc], a                                     ; $7b97: $02
	rrca                                             ; $7b98: $0f
	ld   b, $1f                                      ; $7b99: $06 $1f

jr_093_7b9b:
	rrca                                             ; $7b9b: $0f
	db   $fc                                         ; $7b9c: $fc
	db   $fc                                         ; $7b9d: $fc
	jp   $0743                                       ; $7b9e: $c3 $43 $07


	inc  bc                                          ; $7ba1: $03
	add  d                                           ; $7ba2: $82
	inc  c                                           ; $7ba3: $0c
	ret  nz                                          ; $7ba4: $c0

	add  b                                           ; $7ba5: $80
	ldh  [$c0], a                                    ; $7ba6: $e0 $c0
	ldh  a, [$e0]                                    ; $7ba8: $f0 $e0
	ld   hl, sp-$10                                  ; $7baa: $f8 $f0
	ccf                                              ; $7bac: $3f
	ccf                                              ; $7bad: $3f
	rst  ToBoot                                         ; $7bae: $c7
	call nz, $c003                                   ; $7baf: $c4 $03 $c0
	rlca                                             ; $7bb2: $07
	ld   bc, $0307                                   ; $7bb3: $01 $07 $03
	rrca                                             ; $7bb6: $0f
	ld   [bc], a                                     ; $7bb7: $02
	rrca                                             ; $7bb8: $0f
	ld   b, $1f                                      ; $7bb9: $06 $1f
	rrca                                             ; $7bbb: $0f
	db   $fc                                         ; $7bbc: $fc
	db   $fc                                         ; $7bbd: $fc
	jp   $0043                                       ; $7bbe: $c3 $43 $00


	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	di                                               ; $7bf0: $f3
	nop                                              ; $7bf1: $00

jr_093_7bf2:
	sbc  d                                           ; $7bf2: $9a
	nop                                              ; $7bf3: $00
	ld   c, $3f                                      ; $7bf4: $0e $3f
	nop                                              ; $7bf6: $00
	ret  nz                                          ; $7bf7: $c0

	ccf                                              ; $7bf8: $3f
	jr   nc, jr_093_7c7a                             ; $7bf9: $30 $7f

	ret  z                                           ; $7bfb: $c8

	ccf                                              ; $7bfc: $3f
	scf                                              ; $7bfd: $37
	ccf                                              ; $7bfe: $3f
	cpl                                              ; $7bff: $2f
	jr   c, jr_093_7b9b                              ; $7c00: $38 $99

	ld   h, l                                        ; $7c02: $65
	ld   h, a                                        ; $7c03: $67
	add  c                                           ; $7c04: $81
	ld   a, e                                        ; $7c05: $7b
	nop                                              ; $7c06: $00
	rst  $38                                         ; $7c07: $ff
	add  c                                           ; $7c08: $81
	scf                                              ; $7c09: $37
	ld   [bc], a                                     ; $7c0a: $02
	ld   a, a                                        ; $7c0b: $7f
	rrca                                             ; $7c0c: $0f
	cpl                                              ; $7c0d: $2f
	add  e                                           ; $7c0e: $83
	rrca                                             ; $7c0f: $0f
	nop                                              ; $7c10: $00
	ccf                                              ; $7c11: $3f
	add  e                                           ; $7c12: $83
	rra                                              ; $7c13: $1f

jr_093_7c14:
	ld   [bc], a                                     ; $7c14: $02
	ld   a, $00                                      ; $7c15: $3e $00
	ld   [bc], a                                     ; $7c17: $02
	add  c                                           ; $7c18: $81
	ld   bc, $050f                                   ; $7c19: $01 $0f $05
	inc  bc                                          ; $7c1c: $03
	ld   [bc], a                                     ; $7c1d: $02
	inc  bc                                          ; $7c1e: $03
	ld   [bc], a                                     ; $7c1f: $02
	inc  bc                                          ; $7c20: $03
	ei                                               ; $7c21: $fb
	nop                                              ; $7c22: $00
	inc  bc                                          ; $7c23: $03
	di                                               ; $7c24: $f3
	rst  $38                                         ; $7c25: $ff
	rst  $28                                         ; $7c26: $ef
	rst  $38                                         ; $7c27: $ff
	sbc  a                                           ; $7c28: $9f
	rst  $38                                         ; $7c29: $ff
	ld   a, a                                        ; $7c2a: $7f
	adc  c                                           ; $7c2b: $89
	rst  $38                                         ; $7c2c: $ff
	add  l                                           ; $7c2d: $85
	nop                                              ; $7c2e: $00
	ld   [$0038], sp                                 ; $7c2f: $08 $38 $00
	ld   b, [hl]                                     ; $7c32: $46
	jr   c, jr_093_7bf2                              ; $7c33: $38 $bd

	ld   a, [hl]                                     ; $7c35: $7e
	ld   e, c                                        ; $7c36: $59
	ld   a, a                                        ; $7c37: $7f
	inc  a                                           ; $7c38: $3c
	add  b                                           ; $7c39: $80
	rst  $38                                         ; $7c3a: $ff
	ld   [$1fe7], sp                                 ; $7c3b: $08 $e7 $1f
	ld   sp, hl                                      ; $7c3e: $f9
	pop  hl                                          ; $7c3f: $e1
	ld   hl, sp+$7f                                  ; $7c40: $f8 $7f
	rst  ToBoot                                         ; $7c42: $c7
	rst  $38                                         ; $7c43: $ff
	ccf                                              ; $7c44: $3f
	add  b                                           ; $7c45: $80
	cp   $80                                         ; $7c46: $fe $80
	db   $fd                                         ; $7c48: $fd
	nop                                              ; $7c49: $00
	rst  $38                                         ; $7c4a: $ff
	adc  c                                           ; $7c4b: $89
	nop                                              ; $7c4c: $00
	dec  bc                                          ; $7c4d: $0b
	add  b                                           ; $7c4e: $80
	nop                                              ; $7c4f: $00
	ld   b, b                                        ; $7c50: $40
	add  b                                           ; $7c51: $80
	jr   nz, jr_093_7c14                             ; $7c52: $20 $c0

	db   $10                                         ; $7c54: $10
	ldh  [$88], a                                    ; $7c55: $e0 $88
	ldh  a, [$d7]                                    ; $7c57: $f0 $d7
	nop                                              ; $7c59: $00
	add  d                                           ; $7c5a: $82
	rst  $38                                         ; $7c5b: $ff
	add  b                                           ; $7c5c: $80
	ccf                                              ; $7c5d: $3f
	add  b                                           ; $7c5e: $80
	rst  ToBoot                                         ; $7c5f: $c7
	nop                                              ; $7c60: $00
	rst  $38                                         ; $7c61: $ff
	adc  l                                           ; $7c62: $8d
	nop                                              ; $7c63: $00
	dec  bc                                          ; $7c64: $0b
	inc  bc                                          ; $7c65: $03
	nop                                              ; $7c66: $00
	inc  b                                           ; $7c67: $04
	inc  bc                                          ; $7c68: $03
	dec  bc                                          ; $7c69: $0b
	rlca                                             ; $7c6a: $07
	rst  $10                                         ; $7c6b: $d7
	rrca                                             ; $7c6c: $0f
	rst  $28                                         ; $7c6d: $ef
	jp   nz, $fcfe                                   ; $7c6e: $c2 $fe $fc

	add  b                                           ; $7c71: $80
	rst  $38                                         ; $7c72: $ff
	add  b                                           ; $7c73: $80
	ret  nz                                          ; $7c74: $c0

	nop                                              ; $7c75: $00
	rst  $38                                         ; $7c76: $ff
	add  a                                           ; $7c77: $87
	nop                                              ; $7c78: $00
	dec  hl                                          ; $7c79: $2b

jr_093_7c7a:
	ld   c, $00                                      ; $7c7a: $0e $00
	ld   sp, $ce0e                                   ; $7c7c: $31 $0e $ce
	ld   a, $22                                      ; $7c7f: $3e $22
	rst  $38                                         ; $7c81: $ff
	add  e                                           ; $7c82: $83
	rst  $38                                         ; $7c83: $ff
	rra                                              ; $7c84: $1f
	pop  af                                          ; $7c85: $f1
	ld   [hl], b                                     ; $7c86: $70
	adc  a                                           ; $7c87: $8f
	adc  l                                           ; $7c88: $8d
	ccf                                              ; $7c89: $3f
	inc  sp                                          ; $7c8a: $33
	ld   a, a                                        ; $7c8b: $7f
	ld   [hl], c                                     ; $7c8c: $71
	inc  sp                                          ; $7c8d: $33
	ld   [hl-], a                                    ; $7c8e: $32
	rrca                                             ; $7c8f: $0f
	rst  $30                                         ; $7c90: $f7
	ret  nz                                          ; $7c91: $c0

	add  $f8                                         ; $7c92: $c6 $f8
	ld   sp, hl                                      ; $7c94: $f9
	db   $fc                                         ; $7c95: $fc
	db   $fd                                         ; $7c96: $fd
	rst  $38                                         ; $7c97: $ff
	ldh  a, [c]                                      ; $7c98: $f2
	di                                               ; $7c99: $f3
	ldh  [$e5], a                                    ; $7c9a: $e0 $e5
	rst  $20                                         ; $7c9c: $e7

jr_093_7c9d:
	xor  d                                           ; $7c9d: $aa
	xor  c                                           ; $7c9e: $a9
	ld   h, l                                        ; $7c9f: $65
	ld   l, [hl]                                     ; $7ca0: $6e
	ld   [$afa0], a                                  ; $7ca1: $ea $a0 $af
	ld   l, a                                        ; $7ca4: $6f
	ld   h, a                                        ; $7ca5: $67
	add  b                                           ; $7ca6: $80
	and  $82                                         ; $7ca7: $e6 $82
	sub  $01                                         ; $7ca9: $d6 $01
	and  [hl]                                        ; $7cab: $a6
	xor  [hl]                                        ; $7cac: $ae
	add  b                                           ; $7cad: $80
	xor  h                                           ; $7cae: $ac
	rla                                              ; $7caf: $17
	add  b                                           ; $7cb0: $80
	nop                                              ; $7cb1: $00
	or   b                                           ; $7cb2: $b0
	rrca                                             ; $7cb3: $0f
	ld   c, a                                        ; $7cb4: $4f
	ccf                                              ; $7cb5: $3f
	ld   a, $fe                                      ; $7cb6: $3e $fe
	adc  a                                           ; $7cb8: $8f
	adc  $c6                                         ; $7cb9: $ce $c6
	and  a                                           ; $7cbb: $a7
	rst  $20                                         ; $7cbc: $e7
	ld   d, a                                        ; $7cbd: $57
	rla                                              ; $7cbe: $17
	inc  h                                           ; $7cbf: $24
	ld   [hl], h                                     ; $7cc0: $74
	ld   d, h                                        ; $7cc1: $54
	call nz, $1131                                   ; $7cc2: $c4 $31 $11
	inc  de                                          ; $7cc5: $13
	ld   b, $0a                                      ; $7cc6: $06 $0a
	add  e                                           ; $7cc8: $83
	dec  bc                                          ; $7cc9: $0b
	ld   a, [bc]                                     ; $7cca: $0a
	ld   a, [bc]                                     ; $7ccb: $0a
	ld   c, $07                                      ; $7ccc: $0e $07
	jr   nz, jr_093_7d13                             ; $7cce: $20 $43

	ld   c, a                                        ; $7cd0: $4f
	ret  nz                                          ; $7cd1: $c0

	db   $d3                                         ; $7cd2: $d3
	ret  nc                                          ; $7cd3: $d0

	ldh  a, [$e0]                                    ; $7cd4: $f0 $e0
	add  b                                           ; $7cd6: $80
	jr   nz, jr_093_7ce1                             ; $7cd7: $20 $08

	ret  nz                                          ; $7cd9: $c0

	nop                                              ; $7cda: $00
	jr   c, jr_093_7c9d                              ; $7cdb: $38 $c0

	adc  $e0                                         ; $7cdd: $ce $e0
	rst  $20                                         ; $7cdf: $e7
	ld   b, b                                        ; $7ce0: $40

jr_093_7ce1:
	ld   b, c                                        ; $7ce1: $41
	add  b                                           ; $7ce2: $80
	nop                                              ; $7ce3: $00
	add  b                                           ; $7ce4: $80
	rst  ToBoot                                         ; $7ce5: $c7
	add  hl, bc                                      ; $7ce6: $09
	db   $e3                                         ; $7ce7: $e3
	inc  hl                                          ; $7ce8: $23
	add  hl, sp                                      ; $7ce9: $39
	reti                                             ; $7cea: $d9


	inc  e                                           ; $7ceb: $1c
	inc  l                                           ; $7cec: $2c
	adc  a                                           ; $7ced: $8f
	sub  a                                           ; $7cee: $97
	rlca                                             ; $7cef: $07
	adc  a                                           ; $7cf0: $8f
	add  c                                           ; $7cf1: $81
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	ret  nz                                          ; $7cf4: $c0

	add  e                                           ; $7cf5: $83
	add  b                                           ; $7cf6: $80
	ld   [$8000], sp                                 ; $7cf7: $08 $00 $80
	and  b                                           ; $7cfa: $a0
	ret  nz                                          ; $7cfb: $c0

	ld   b, b                                        ; $7cfc: $40
	ret  nz                                          ; $7cfd: $c0

	jp   Jump_093_5cc0                               ; $7cfe: $c3 $c0 $5c


	add  b                                           ; $7d01: $80
	jp   $1f06                                       ; $7d02: $c3 $06 $1f


	rst  JumpTable                                         ; $7d05: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d06: $cf
	rst  $38                                         ; $7d07: $ff
	rst  $30                                         ; $7d08: $f7
	rst  $38                                         ; $7d09: $ff
	ld   hl, sp-$80                                  ; $7d0a: $f8 $80
	cp   $80                                         ; $7d0c: $fe $80
	rst  $38                                         ; $7d0e: $ff
	add  c                                           ; $7d0f: $81
	nop                                              ; $7d10: $00
	dec  b                                           ; $7d11: $05
	rst  $38                                         ; $7d12: $ff

jr_093_7d13:
	add  b                                           ; $7d13: $80
	rst  $38                                         ; $7d14: $ff
	add  a                                           ; $7d15: $87
	rst  $38                                         ; $7d16: $ff
	ld   sp, hl                                      ; $7d17: $f9
	add  b                                           ; $7d18: $80
	rra                                              ; $7d19: $1f
	ld   de, $ecef                                   ; $7d1a: $11 $ef $ec
	add  a                                           ; $7d1d: $87
	adc  c                                           ; $7d1e: $89
	ld   a, a                                        ; $7d1f: $7f
	ldh  a, [$1f]                                    ; $7d20: $f0 $1f
	ld   a, l                                        ; $7d22: $7d
	rrca                                             ; $7d23: $0f
	inc  e                                           ; $7d24: $1c
	rlca                                             ; $7d25: $07
	dec  c                                           ; $7d26: $0d
	inc  bc                                          ; $7d27: $03
	rlca                                             ; $7d28: $07
	nop                                              ; $7d29: $00
	ld   [bc], a                                     ; $7d2a: $02
	nop                                              ; $7d2b: $00
	ld   bc, $0081                                   ; $7d2c: $01 $81 $00
	inc  c                                           ; $7d2f: $0c
	add  b                                           ; $7d30: $80
	nop                                              ; $7d31: $00
	ld   [hl], b                                     ; $7d32: $70
	add  b                                           ; $7d33: $80
	adc  b                                           ; $7d34: $88
	ldh  a, [$38]                                    ; $7d35: $f0 $38
	ldh  [$f0], a                                    ; $7d37: $e0 $f0
	ret  nz                                          ; $7d39: $c0

	nop                                              ; $7d3a: $00
	ret  nz                                          ; $7d3b: $c0

	ldh  [$85], a                                    ; $7d3c: $e0 $85
	add  b                                           ; $7d3e: $80
	nop                                              ; $7d3f: $00
	ret  nz                                          ; $7d40: $c0

	add  c                                           ; $7d41: $81
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	add  b                                           ; $7d44: $80
	add  c                                           ; $7d45: $81
	nop                                              ; $7d46: $00
	inc  b                                           ; $7d47: $04
	add  b                                           ; $7d48: $80
	nop                                              ; $7d49: $00
	ret  nz                                          ; $7d4a: $c0

	add  b                                           ; $7d4b: $80
	ldh  [$81], a                                    ; $7d4c: $e0 $81
	ret  nz                                          ; $7d4e: $c0

	nop                                              ; $7d4f: $00
	ldh  a, [$81]                                    ; $7d50: $f0 $81
	ldh  [rP1], a                                    ; $7d52: $e0 $00
	ld   hl, sp-$77                                  ; $7d54: $f8 $89
	ldh  a, [rP1]                                    ; $7d56: $f0 $00
	add  sp, -$7f                                    ; $7d58: $e8 $81
	ldh  [$08], a                                    ; $7d5a: $e0 $08
	ret  nc                                          ; $7d5c: $d0

	ret  nz                                          ; $7d5d: $c0

	and  b                                           ; $7d5e: $a0
	add  b                                           ; $7d5f: $80
	ld   b, b                                        ; $7d60: $40
	nop                                              ; $7d61: $00
	add  b                                           ; $7d62: $80
	nop                                              ; $7d63: $00
	ld   [hl], d                                     ; $7d64: $72
	add  c                                           ; $7d65: $81
	ld   h, l                                        ; $7d66: $65
	ld   [bc], a                                     ; $7d67: $02
	ld   [hl], h                                     ; $7d68: $74
	ld   c, l                                        ; $7d69: $4d
	ret                                              ; $7d6a: $c9


	add  b                                           ; $7d6b: $80
	adc  d                                           ; $7d6c: $8a
	inc  bc                                          ; $7d6d: $03
	ld   c, d                                        ; $7d6e: $4a
	ld   b, e                                        ; $7d6f: $43
	ld   d, l                                        ; $7d70: $55
	ld   [hl], h                                     ; $7d71: $74
	add  b                                           ; $7d72: $80
	or   l                                           ; $7d73: $b5
	ld   b, $b2                                      ; $7d74: $06 $b2
	and  e                                           ; $7d76: $a3
	dec  h                                           ; $7d77: $25
	inc  h                                           ; $7d78: $24
	and  b                                           ; $7d79: $a0
	and  a                                           ; $7d7a: $a7
	and  b                                           ; $7d7b: $a0
	add  b                                           ; $7d7c: $80
	or   b                                           ; $7d7d: $b0
	dec  bc                                          ; $7d7e: $0b
	sub  b                                           ; $7d7f: $90
	db   $10                                         ; $7d80: $10
	ret  nc                                          ; $7d81: $d0

	db   $10                                         ; $7d82: $10
	adc  b                                           ; $7d83: $88
	nop                                              ; $7d84: $00
	ld   d, b                                        ; $7d85: $50
	add  b                                           ; $7d86: $80
	call nc, Call_093_4543                           ; $7d87: $d4 $43 $45
	ld   c, c                                        ; $7d8a: $49
	add  b                                           ; $7d8b: $80
	ld   d, c                                        ; $7d8c: $51
	ld   bc, $d4d2                                   ; $7d8d: $01 $d2 $d4
	add  d                                           ; $7d90: $82
	and  h                                           ; $7d91: $a4
	ld   bc, $5056                                   ; $7d92: $01 $56 $50
	add  b                                           ; $7d95: $80
	xor  c                                           ; $7d96: $a9
	inc  b                                           ; $7d97: $04
	adc  l                                           ; $7d98: $8d
	adc  c                                           ; $7d99: $89
	ld   h, d                                        ; $7d9a: $62
	ld   [bc], a                                     ; $7d9b: $02
	sbc  a                                           ; $7d9c: $9f
	adc  c                                           ; $7d9d: $89
	nop                                              ; $7d9e: $00
	inc  b                                           ; $7d9f: $04
	sub  [hl]                                        ; $7da0: $96
	ld   l, b                                        ; $7da1: $68
	ld   h, $20                                      ; $7da2: $26 $20
	xor  b                                           ; $7da4: $a8
	add  c                                           ; $7da5: $81
	and  b                                           ; $7da6: $a0
	nop                                              ; $7da7: $00
	sub  b                                           ; $7da8: $90
	add  c                                           ; $7da9: $81
	ret  nz                                          ; $7daa: $c0

	nop                                              ; $7dab: $00
	ldh  [$81], a                                    ; $7dac: $e0 $81
	add  b                                           ; $7dae: $80
	ld   [bc], a                                     ; $7daf: $02
	ld   b, b                                        ; $7db0: $40
	nop                                              ; $7db1: $00
	add  b                                           ; $7db2: $80
	adc  e                                           ; $7db3: $8b
	nop                                              ; $7db4: $00
	dec  b                                           ; $7db5: $05
	cp   $e0                                         ; $7db6: $fe $e0
	rst  JumpTable                                         ; $7db8: $df
	cp   $3f                                         ; $7db9: $fe $3f
	rst  $38                                         ; $7dbb: $ff
	add  [hl]                                        ; $7dbc: $86
	ld   a, a                                        ; $7dbd: $7f
	inc  b                                           ; $7dbe: $04
	ld   a, c                                        ; $7dbf: $79
	ld   a, a                                        ; $7dc0: $7f
	scf                                              ; $7dc1: $37
	cp   a                                           ; $7dc2: $bf
	xor  a                                           ; $7dc3: $af
	add  c                                           ; $7dc4: $81
	or   a                                           ; $7dc5: $b7
	nop                                              ; $7dc6: $00
	sub  [hl]                                        ; $7dc7: $96
	add  [hl]                                        ; $7dc8: $86
	xor  a                                           ; $7dc9: $af
	add  hl, bc                                      ; $7dca: $09
	and  a                                           ; $7dcb: $a7
	ld   e, b                                        ; $7dcc: $58
	nop                                              ; $7dcd: $00
	add  b                                           ; $7dce: $80
	nop                                              ; $7dcf: $00
	ret  nz                                          ; $7dd0: $c0

	add  b                                           ; $7dd1: $80
	ldh  [$c0], a                                    ; $7dd2: $e0 $c0
	ldh  a, [$81]                                    ; $7dd4: $f0 $81
	ldh  [rP1], a                                    ; $7dd6: $e0 $00
	ld   hl, sp-$75                                  ; $7dd8: $f8 $8b
	ldh  a, [rSC]                                    ; $7dda: $f0 $02
	db   $f4                                         ; $7ddc: $f4
	ld   hl, sp+$78                                  ; $7ddd: $f8 $78
	add  c                                           ; $7ddf: $81
	ld   hl, sp+$00                                  ; $7de0: $f8 $00
	ld   [hl], h                                     ; $7de2: $74
	adc  l                                           ; $7de3: $8d
	nop                                              ; $7de4: $00
	inc  b                                           ; $7de5: $04
	ld   bc, $0300                                   ; $7de6: $01 $00 $03
	ld   bc, $8107                                   ; $7de9: $01 $07 $81
	inc  bc                                          ; $7dec: $03
	nop                                              ; $7ded: $00
	ld   bc, $0381                                   ; $7dee: $01 $81 $03
	inc  b                                           ; $7df1: $04
	ld   b, $01                                      ; $7df2: $06 $01
	inc  bc                                          ; $7df4: $03
	nop                                              ; $7df5: $00
	ld   bc, $008f                                   ; $7df6: $01 $8f $00
	dec  c                                           ; $7df9: $0d
	ld   bc, $0700                                   ; $7dfa: $01 $00 $07
	ld   bc, $070b                                   ; $7dfd: $01 $0b $07
	dec  de                                          ; $7e00: $1b
	rrca                                             ; $7e01: $0f
	ccf                                              ; $7e02: $3f
	rra                                              ; $7e03: $1f
	ld   a, a                                        ; $7e04: $7f
	ccf                                              ; $7e05: $3f
	cp   $7e                                         ; $7e06: $fe $7e
	add  b                                           ; $7e08: $80
	cp   $00                                         ; $7e09: $fe $00
	db   $fc                                         ; $7e0b: $fc
	add  e                                           ; $7e0c: $83
	cp   $22                                         ; $7e0d: $fe $22
	ld   a, [$e7ff]                                  ; $7e0f: $fa $ff $e7
	rst  $38                                         ; $7e12: $ff
	rst  JumpTable                                         ; $7e13: $df
	ldh  [$5f], a                                    ; $7e14: $e0 $5f
	rst  $38                                         ; $7e16: $ff
	cp   a                                           ; $7e17: $bf
	ld   a, a                                        ; $7e18: $7f
	rst  JumpTable                                         ; $7e19: $df
	ccf                                              ; $7e1a: $3f
	ld   l, a                                        ; $7e1b: $6f
	rra                                              ; $7e1c: $1f
	scf                                              ; $7e1d: $37
	rrca                                             ; $7e1e: $0f
	dec  de                                          ; $7e1f: $1b
	rlca                                             ; $7e20: $07
	dec  c                                           ; $7e21: $0d
	inc  bc                                          ; $7e22: $03
	ld   b, $01                                      ; $7e23: $06 $01
	inc  bc                                          ; $7e25: $03
	nop                                              ; $7e26: $00
	ld   h, c                                        ; $7e27: $61
	ccf                                              ; $7e28: $3f
	ld   h, a                                        ; $7e29: $67
	rra                                              ; $7e2a: $1f
	add  hl, sp                                      ; $7e2b: $39
	rlca                                             ; $7e2c: $07
	ld   e, $03                                      ; $7e2d: $1e $03
	rlca                                             ; $7e2f: $07
	nop                                              ; $7e30: $00
	inc  bc                                          ; $7e31: $03
	and  e                                           ; $7e32: $a3
	nop                                              ; $7e33: $00
	inc  d                                           ; $7e34: $14
	ei                                               ; $7e35: $fb
	db   $e4                                         ; $7e36: $e4
	ld   h, b                                        ; $7e37: $60
	ld   sp, hl                                      ; $7e38: $f9
	adc  c                                           ; $7e39: $89
	rst  $38                                         ; $7e3a: $ff
	ld   [hl], a                                     ; $7e3b: $77
	cp   $88                                         ; $7e3c: $fe $88
	cp   $f6                                         ; $7e3e: $fe $f6
	ccf                                              ; $7e40: $3f
	ld   sp, hl                                      ; $7e41: $f9
	rrca                                             ; $7e42: $0f
	ccf                                              ; $7e43: $3f
	rlca                                             ; $7e44: $07
	inc  d                                           ; $7e45: $14
	inc  h                                           ; $7e46: $24
	and  h                                           ; $7e47: $a4
	inc  h                                           ; $7e48: $24
	ld   h, $80                                      ; $7e49: $26 $80
	ld   a, [hl+]                                    ; $7e4b: $2a
	ld   bc, $7928                                   ; $7e4c: $01 $28 $79
	add  b                                           ; $7e4f: $80
	sub  h                                           ; $7e50: $94
	dec  b                                           ; $7e51: $05
	sub  l                                           ; $7e52: $95
	dec  a                                           ; $7e53: $3d
	jp   z, Jump_093_695a                            ; $7e54: $ca $5a $69

	ld   h, l                                        ; $7e57: $65
	add  b                                           ; $7e58: $80
	or   l                                           ; $7e59: $b5
	add  b                                           ; $7e5a: $80
	inc  b                                           ; $7e5b: $04
	inc  bc                                          ; $7e5c: $03
	push hl                                          ; $7e5d: $e5
	jp   hl                                          ; $7e5e: $e9


jr_093_7e5f:
	ld   [$80f2], a                                  ; $7e5f: $ea $f2 $80
	push de                                          ; $7e62: $d5
	rlca                                             ; $7e63: $07
	ld   d, e                                        ; $7e64: $53
	ld   b, e                                        ; $7e65: $43
	ld   h, [hl]                                     ; $7e66: $66
	ld   h, a                                        ; $7e67: $67
	ld   l, h                                        ; $7e68: $6c
	sub  l                                           ; $7e69: $95
	inc  bc                                          ; $7e6a: $03
	rlca                                             ; $7e6b: $07
	add  c                                           ; $7e6c: $81
	ld   bc, $0300                                   ; $7e6d: $01 $00 $03
	add  a                                           ; $7e70: $87
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	inc  bc                                          ; $7e73: $03
	add  a                                           ; $7e74: $87
	ld   bc, $0000                                   ; $7e75: $01 $00 $00
	add  c                                           ; $7e78: $81
	ld   bc, $0302                                   ; $7e79: $01 $02 $03
	nop                                              ; $7e7c: $00
	ld   bc, $00ff                                   ; $7e7d: $01 $ff $00
	cp   h                                           ; $7e80: $bc
	nop                                              ; $7e81: $00
	ld   [bc], a                                     ; $7e82: $02
	ld   [bc], a                                     ; $7e83: $02
	nop                                              ; $7e84: $00
	ld   b, $81                                      ; $7e85: $06 $81
	ld   bc, $1816                                   ; $7e87: $01 $16 $18
	ld   a, [de]                                     ; $7e8a: $1a
	dec  a                                           ; $7e8b: $3d
	inc  [hl]                                        ; $7e8c: $34
	ld   [hl], d                                     ; $7e8d: $72
	ld   h, c                                        ; $7e8e: $61
	db   $ed                                         ; $7e8f: $ed
	db   $e3                                         ; $7e90: $e3
	di                                               ; $7e91: $f3
	adc  [hl]                                        ; $7e92: $8e
	ld   l, a                                        ; $7e93: $6f
	ld   bc, $0203                                   ; $7e94: $01 $03 $02
	rlca                                             ; $7e97: $07
	inc  b                                           ; $7e98: $04
	ld   c, [hl]                                     ; $7e99: $4e
	ld   c, b                                        ; $7e9a: $48
	ld   c, h                                        ; $7e9b: $4c
	ld   b, e                                        ; $7e9c: $43
	jp   $dec6                                       ; $7e9d: $c3 $c6 $de


	add  b                                           ; $7ea0: $80
	call nz, $cd03                                   ; $7ea1: $c4 $03 $cd
	sbc  l                                           ; $7ea4: $9d
	jr   c, jr_093_7e5f                              ; $7ea5: $38 $b8

	add  b                                           ; $7ea7: $80
	ld   h, e                                        ; $7ea8: $63
	inc  bc                                          ; $7ea9: $03
	rlca                                             ; $7eaa: $07
	ld   b, $1e                                      ; $7eab: $06 $1e
	dec  e                                           ; $7ead: $1d
	add  b                                           ; $7eae: $80
	dec  a                                           ; $7eaf: $3d
	ld   [$7b7d], sp                                 ; $7eb0: $08 $7d $7b
	ld   sp, hl                                      ; $7eb3: $f9
	push af                                          ; $7eb4: $f5
	di                                               ; $7eb5: $f3
	ld   a, [hl-]                                    ; $7eb6: $3a
	ld   bc, $0181                                   ; $7eb7: $01 $81 $01
	add  d                                           ; $7eba: $82
	inc  bc                                          ; $7ebb: $03
	nop                                              ; $7ebc: $00
	jp   $0383                                       ; $7ebd: $c3 $83 $03


	inc  b                                           ; $7ec0: $04
	add  c                                           ; $7ec1: $81
	ld   bc, $eff0                                   ; $7ec2: $01 $f0 $ef
	rst  $20                                         ; $7ec5: $e7
	add  c                                           ; $7ec6: $81
	rst  $30                                         ; $7ec7: $f7
	ld   bc, $ebfb                                   ; $7ec8: $01 $fb $eb
	add  b                                           ; $7ecb: $80
	ld   [$ed82], a                                  ; $7ecc: $ea $82 $ed
	add  b                                           ; $7ecf: $80
	db   $eb                                         ; $7ed0: $eb
	ld   bc, $011e                                   ; $7ed1: $01 $1e $01
	add  h                                           ; $7ed4: $84
	nop                                              ; $7ed5: $00
	add  hl, bc                                      ; $7ed6: $09
	add  b                                           ; $7ed7: $80
	nop                                              ; $7ed8: $00
	ld   b, b                                        ; $7ed9: $40
	nop                                              ; $7eda: $00
	ld   sp, $3ec0                                   ; $7edb: $31 $c0 $3e
	nop                                              ; $7ede: $00
	db   $eb                                         ; $7edf: $eb
	db   $db                                         ; $7ee0: $db
	add  b                                           ; $7ee1: $80
	jp   c, $1a80                                    ; $7ee2: $da $80 $1a

	ld   bc, $3d7d                                   ; $7ee5: $01 $7d $3d
	add  b                                           ; $7ee8: $80
	dec  l                                           ; $7ee9: $2d
	ld   bc, $5ada                                   ; $7eea: $01 $da $5a
	add  b                                           ; $7eed: $80
	sub  $80                                         ; $7eee: $d6 $80
	or   h                                           ; $7ef0: $b4
	nop                                              ; $7ef1: $00
	db   $fd                                         ; $7ef2: $fd
	add  c                                           ; $7ef3: $81
	ld   bc, $0701                                   ; $7ef4: $01 $01 $07
	inc  bc                                          ; $7ef7: $03
	add  [hl]                                        ; $7ef8: $86
	ld   [bc], a                                     ; $7ef9: $02
	dec  b                                           ; $7efa: $05
	add  l                                           ; $7efb: $85
	ld   b, c                                        ; $7efc: $41
	ld   d, [hl]                                     ; $7efd: $56
	ld   h, d                                        ; $7efe: $62
	ld   d, d                                        ; $7eff: $52
	ld   c, d                                        ; $7f00: $4a
	add  d                                           ; $7f01: $82
	ld   c, e                                        ; $7f02: $4b
	ld   bc, $657d                                   ; $7f03: $01 $7d $65
	add  b                                           ; $7f06: $80
	and  l                                           ; $7f07: $a5
	inc  c                                           ; $7f08: $0c
	cp   [hl]                                        ; $7f09: $be
	or   d                                           ; $7f0a: $b2
	rra                                              ; $7f0b: $1f
	dec  de                                          ; $7f0c: $1b
	rst  $38                                         ; $7f0d: $ff
	nop                                              ; $7f0e: $00
	add  b                                           ; $7f0f: $80
	nop                                              ; $7f10: $00
	ret  nz                                          ; $7f11: $c0

	nop                                              ; $7f12: $00
	ld   h, b                                        ; $7f13: $60
	add  b                                           ; $7f14: $80
	or   b                                           ; $7f15: $b0
	add  c                                           ; $7f16: $81
	ret  nz                                          ; $7f17: $c0

	nop                                              ; $7f18: $00
	ret  c                                           ; $7f19: $d8

	add  b                                           ; $7f1a: $80
	ld   h, b                                        ; $7f1b: $60
	inc  bc                                          ; $7f1c: $03
	ldh  [$e6], a                                    ; $7f1d: $e0 $e6
	or   $e7                                         ; $7f1f: $f6 $e7
	add  c                                           ; $7f21: $81
	rst  $28                                         ; $7f22: $ef
	ld   [bc], a                                     ; $7f23: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f24: $cf
	rst  JumpTable                                         ; $7f25: $df
	ld   e, a                                        ; $7f26: $5f
	add  c                                           ; $7f27: $81
	ld   c, a                                        ; $7f28: $4f
	nop                                              ; $7f29: $00
	cp   a                                           ; $7f2a: $bf
	add  c                                           ; $7f2b: $81
	or   a                                           ; $7f2c: $b7
	ld   bc, $00f8                                   ; $7f2d: $01 $f8 $00
	add  b                                           ; $7f30: $80
	add  b                                           ; $7f31: $80
	add  b                                           ; $7f32: $80
	ret  nz                                          ; $7f33: $c0

	add  b                                           ; $7f34: $80
	ldh  [$82], a                                    ; $7f35: $e0 $82
	ldh  a, [$82]                                    ; $7f37: $f0 $82
	ld   hl, sp+$01                                  ; $7f39: $f8 $01
	ld   b, a                                        ; $7f3b: $47
	cp   e                                           ; $7f3c: $bb
	add  b                                           ; $7f3d: $80
	db   $db                                         ; $7f3e: $db
	inc  bc                                          ; $7f3f: $03
	ld   e, a                                        ; $7f40: $5f
	ld   e, l                                        ; $7f41: $5d
	ld   e, a                                        ; $7f42: $5f
	ld   e, [hl]                                     ; $7f43: $5e
	add  b                                           ; $7f44: $80
	sbc  a                                           ; $7f45: $9f
	add  b                                           ; $7f46: $80
	xor  e                                           ; $7f47: $ab
	add  b                                           ; $7f48: $80
	call nc, Call_093_5a80                           ; $7f49: $d4 $80 $5a
	nop                                              ; $7f4c: $00
	inc  bc                                          ; $7f4d: $03
	add  l                                           ; $7f4e: $85
	db   $fc                                         ; $7f4f: $fc
	ld   [$78f8], sp                                 ; $7f50: $08 $f8 $78
	ldh  a, [$b0]                                    ; $7f53: $f0 $b0
	ldh  [$c0], a                                    ; $7f55: $e0 $c0
	ld   b, c                                        ; $7f57: $41
	ld   b, b                                        ; $7f58: $40
	dec  e                                           ; $7f59: $1d
	add  b                                           ; $7f5a: $80
	ld   b, b                                        ; $7f5b: $40
	ld   bc, $ba98                                   ; $7f5c: $01 $98 $ba
	add  b                                           ; $7f5f: $80
	sub  h                                           ; $7f60: $94
	inc  bc                                          ; $7f61: $03
	adc  h                                           ; $7f62: $8c
	jp   hl                                          ; $7f63: $e9


	ld   l, $ec                                      ; $7f64: $2e $ec
	add  c                                           ; $7f66: $81
	ld   e, a                                        ; $7f67: $5f
	inc  bc                                          ; $7f68: $03
	rst  JumpTable                                         ; $7f69: $df
	cp   a                                           ; $7f6a: $bf
	ld   b, d                                        ; $7f6b: $42
	inc  b                                           ; $7f6c: $04
	add  b                                           ; $7f6d: $80
	ld   b, $80                                      ; $7f6e: $06 $80
	inc  b                                           ; $7f70: $04
	add  d                                           ; $7f71: $82
	nop                                              ; $7f72: $00
	dec  bc                                          ; $7f73: $0b
	ret  nz                                          ; $7f74: $c0

	nop                                              ; $7f75: $00
	ccf                                              ; $7f76: $3f
	ret  nz                                          ; $7f77: $c0

	adc  $f1                                         ; $7f78: $ce $f1
	db   $fd                                         ; $7f7a: $fd
	adc  d                                           ; $7f7b: $8a
	ld   a, d                                        ; $7f7c: $7a
	ld   [bc], a                                     ; $7f7d: $02
	ld   a, [bc]                                     ; $7f7e: $0a
	ld   [bc], a                                     ; $7f7f: $02
	add  d                                           ; $7f80: $82
	inc  bc                                          ; $7f81: $03
	ld   a, [bc]                                     ; $7f82: $0a
	jr   c, jr_093_7f85                              ; $7f83: $38 $00

jr_093_7f85:
	srl  e                                           ; $7f85: $cb $3b
	dec  hl                                          ; $7f87: $2b
	ei                                               ; $7f88: $fb
	db   $e3                                         ; $7f89: $e3
	cp   a                                           ; $7f8a: $bf
	cp   [hl]                                        ; $7f8b: $be
	ld   a, a                                        ; $7f8c: $7f
	ld   a, l                                        ; $7f8d: $7d
	add  l                                           ; $7f8e: $85
	ld   a, a                                        ; $7f8f: $7f
	dec  b                                           ; $7f90: $05
	ld   a, [hl]                                     ; $7f91: $7e
	cp   a                                           ; $7f92: $bf
	cp   h                                           ; $7f93: $bc
	cp   [hl]                                        ; $7f94: $be
	and  h                                           ; $7f95: $a4
	rst  $20                                         ; $7f96: $e7
	add  b                                           ; $7f97: $80
	rst  $28                                         ; $7f98: $ef
	add  b                                           ; $7f99: $80
	sbc  $80                                         ; $7f9a: $de $80
	cp   $0e                                         ; $7f9c: $fe $0e
	cp   a                                           ; $7f9e: $bf
	rst  $38                                         ; $7f9f: $ff
	ld   e, a                                        ; $7fa0: $5f
	rst  $38                                         ; $7fa1: $ff
	rst  $28                                         ; $7fa2: $ef
	rst  $38                                         ; $7fa3: $ff
	ld   [hl], a                                     ; $7fa4: $77
	ld   a, a                                        ; $7fa5: $7f
	ld   a, h                                        ; $7fa6: $7c
	cp   e                                           ; $7fa7: $bb
	inc  hl                                          ; $7fa8: $23
	dec  sp                                          ; $7fa9: $3b
	dec  de                                          ; $7faa: $1b
	ld   a, e                                        ; $7fab: $7b
	cp   d                                           ; $7fac: $ba
	add  c                                           ; $7fad: $81
	ei                                               ; $7fae: $fb
	rlca                                             ; $7faf: $07
	di                                               ; $7fb0: $f3
	ei                                               ; $7fb1: $fb
	ld   sp, hl                                      ; $7fb2: $f9
	ei                                               ; $7fb3: $fb
	di                                               ; $7fb4: $f3
	rst  $30                                         ; $7fb5: $f7
	ld   [$8000], sp                                 ; $7fb6: $08 $00 $80
	ld   bc, $0084                                   ; $7fb9: $01 $84 $00
	rlca                                             ; $7fbc: $07
	add  b                                           ; $7fbd: $80
	nop                                              ; $7fbe: $00
	ld   h, b                                        ; $7fbf: $60
	jr   nz, jr_093_7ffa                             ; $7fc0: $20 $38

	ld   c, b                                        ; $7fc2: $48
	or   b                                           ; $7fc3: $b0
	add  b                                           ; $7fc4: $80
	add  b                                           ; $7fc5: $80
	ld   b, b                                        ; $7fc6: $40
	nop                                              ; $7fc7: $00
	add  b                                           ; $7fc8: $80
	add  e                                           ; $7fc9: $83
	nop                                              ; $7fca: $00
	ld   [de], a                                     ; $7fcb: $12
	ld   bc, $0600                                   ; $7fcc: $01 $00 $06
	inc  b                                           ; $7fcf: $04
	inc  e                                           ; $7fd0: $1c
	ld   [de], a                                     ; $7fd1: $12
	di                                               ; $7fd2: $f3
	ld   d, d                                        ; $7fd3: $52
	ld   d, e                                        ; $7fd4: $53
	inc  e                                           ; $7fd5: $1c
	inc  c                                           ; $7fd6: $0c
	rrca                                             ; $7fd7: $0f
	ld   b, a                                        ; $7fd8: $47
	rst  ToBoot                                         ; $7fd9: $c7
	inc  bc                                          ; $7fda: $03
	add  e                                           ; $7fdb: $83
	ld   b, b                                        ; $7fdc: $40
	nop                                              ; $7fdd: $00
	add  b                                           ; $7fde: $80
	add  c                                           ; $7fdf: $81
	nop                                              ; $7fe0: $00
	dec  b                                           ; $7fe1: $05
	ld   e, a                                        ; $7fe2: $5f
	ld   c, d                                        ; $7fe3: $4a
	jp   z, $3938                                    ; $7fe4: $ca $38 $39

	ld   sp, hl                                      ; $7fe7: $f9
	add  b                                           ; $7fe8: $80
	ei                                               ; $7fe9: $fb
	add  b                                           ; $7fea: $80
	db   $eb                                         ; $7feb: $eb
	add  d                                           ; $7fec: $82
	ld   [$7a80], sp                                 ; $7fed: $08 $80 $7a
	nop                                              ; $7ff0: $00
	rlca                                             ; $7ff1: $07
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00

jr_093_7ffa:
	ld   sp, hl                                      ; $7ffa: $f9
	nop                                              ; $7ffb: $00
	rst  $38                                         ; $7ffc: $ff
	rst  $38                                         ; $7ffd: $ff
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
