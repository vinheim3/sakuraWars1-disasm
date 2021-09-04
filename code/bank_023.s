; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

SpriteGroup4Pointers::
	ret  nz                                          ; $4000: $c0

	ld   b, c                                        ; $4001: $41
	call nz, $c841                                   ; $4002: $c4 $41 $c8
	ld   b, c                                        ; $4005: $41
	call z, $ec41                                    ; $4006: $cc $41 $ec
	ld   b, c                                        ; $4009: $41
	inc  c                                           ; $400a: $0c
	ld   b, d                                        ; $400b: $42
	inc  l                                           ; $400c: $2c
	ld   b, d                                        ; $400d: $42
	ld   c, h                                        ; $400e: $4c
	ld   b, d                                        ; $400f: $42
	ld   l, h                                        ; $4010: $6c
	ld   b, d                                        ; $4011: $42
	adc  h                                           ; $4012: $8c
	ld   b, d                                        ; $4013: $42
	xor  h                                           ; $4014: $ac
	ld   b, d                                        ; $4015: $42
	call z, $e442                                    ; $4016: $cc $42 $e4
	ld   b, d                                        ; $4019: $42
	db   $fc                                         ; $401a: $fc
	ld   b, d                                        ; $401b: $42
	jr   @+$45                                       ; $401c: $18 $43

	ld   b, h                                        ; $401e: $44
	ld   b, e                                        ; $401f: $43
	ld   [hl], h                                     ; $4020: $74
	ld   b, e                                        ; $4021: $43
	and  b                                           ; $4022: $a0
	ld   b, e                                        ; $4023: $43
	ret  nc                                          ; $4024: $d0

	ld   b, e                                        ; $4025: $43
	nop                                              ; $4026: $00
	ld   b, h                                        ; $4027: $44
	inc  l                                           ; $4028: $2c
	ld   b, h                                        ; $4029: $44
	ld   c, h                                        ; $402a: $4c
	ld   b, h                                        ; $402b: $44
	ld   [hl], h                                     ; $402c: $74
	ld   b, h                                        ; $402d: $44
	sbc  h                                           ; $402e: $9c
	ld   b, h                                        ; $402f: $44
	cp   h                                           ; $4030: $bc
	ld   b, h                                        ; $4031: $44
	call nc, $f044                                   ; $4032: $d4 $44 $f0
	ld   b, h                                        ; $4035: $44
	ld   [$2045], sp                                 ; $4036: $08 $45 $20
	ld   b, l                                        ; $4039: $45
	jr   c, @+$47                                    ; $403a: $38 $45

	ld   b, b                                        ; $403c: $40
	ld   b, l                                        ; $403d: $45
	ld   c, b                                        ; $403e: $48
	ld   b, l                                        ; $403f: $45
	ld   d, b                                        ; $4040: $50
	ld   b, l                                        ; $4041: $45
	ld   e, b                                        ; $4042: $58
	ld   b, l                                        ; $4043: $45
	ld   h, b                                        ; $4044: $60
	ld   b, l                                        ; $4045: $45
	ld   l, b                                        ; $4046: $68
	ld   b, l                                        ; $4047: $45
	ld   [hl], b                                     ; $4048: $70
	ld   b, l                                        ; $4049: $45
	ld   a, b                                        ; $404a: $78
	ld   b, l                                        ; $404b: $45
	add  b                                           ; $404c: $80
	ld   b, l                                        ; $404d: $45
	adc  b                                           ; $404e: $88
	ld   b, l                                        ; $404f: $45
	sub  b                                           ; $4050: $90
	ld   b, l                                        ; $4051: $45
	sub  h                                           ; $4052: $94
	ld   b, l                                        ; $4053: $45
	sbc  h                                           ; $4054: $9c
	ld   b, l                                        ; $4055: $45
	and  h                                           ; $4056: $a4
	ld   b, l                                        ; $4057: $45
	xor  h                                           ; $4058: $ac
	ld   b, l                                        ; $4059: $45
	or   b                                           ; $405a: $b0
	ld   b, l                                        ; $405b: $45
	cp   b                                           ; $405c: $b8
	ld   b, l                                        ; $405d: $45
	ret  nc                                          ; $405e: $d0

	ld   b, l                                        ; $405f: $45
	add  sp, $45                                     ; $4060: $e8 $45
	nop                                              ; $4062: $00
	ld   b, [hl]                                     ; $4063: $46
	inc  e                                           ; $4064: $1c
	ld   b, [hl]                                     ; $4065: $46
	inc  [hl]                                        ; $4066: $34
	ld   b, [hl]                                     ; $4067: $46
	ld   c, h                                        ; $4068: $4c
	ld   b, [hl]                                     ; $4069: $46
	add  h                                           ; $406a: $84
	ld   b, [hl]                                     ; $406b: $46
	cp   h                                           ; $406c: $bc
	ld   b, [hl]                                     ; $406d: $46
	db   $f4                                         ; $406e: $f4
	ld   b, [hl]                                     ; $406f: $46
	inc  h                                           ; $4070: $24
	ld   b, a                                        ; $4071: $47
	inc  a                                           ; $4072: $3c
	ld   b, a                                        ; $4073: $47
	ld   d, h                                        ; $4074: $54
	ld   b, a                                        ; $4075: $47
	ld   l, h                                        ; $4076: $6c
	ld   b, a                                        ; $4077: $47
	add  h                                           ; $4078: $84
	ld   b, a                                        ; $4079: $47
	xor  b                                           ; $407a: $a8
	ld   b, a                                        ; $407b: $47
	ret  z                                           ; $407c: $c8

	ld   b, a                                        ; $407d: $47
	add  sp, $47                                     ; $407e: $e8 $47
	ld   [$2848], sp                                 ; $4080: $08 $48 $28
	ld   c, b                                        ; $4083: $48
	ld   c, b                                        ; $4084: $48
	ld   c, b                                        ; $4085: $48
	ld   l, b                                        ; $4086: $68
	ld   c, b                                        ; $4087: $48
	adc  b                                           ; $4088: $88
	ld   c, b                                        ; $4089: $48
	or   b                                           ; $408a: $b0
	ld   c, b                                        ; $408b: $48
	ret  c                                           ; $408c: $d8

	ld   c, b                                        ; $408d: $48
	db   $ec                                         ; $408e: $ec
	ld   c, b                                        ; $408f: $48
	nop                                              ; $4090: $00
	ld   c, c                                        ; $4091: $49
	db   $10                                         ; $4092: $10
	ld   c, c                                        ; $4093: $49
	inc  h                                           ; $4094: $24
	ld   c, c                                        ; $4095: $49
	inc  a                                           ; $4096: $3c
	ld   c, c                                        ; $4097: $49
	ld   d, h                                        ; $4098: $54
	ld   c, c                                        ; $4099: $49
	ld   l, b                                        ; $409a: $68
	ld   c, c                                        ; $409b: $49
	ld   a, h                                        ; $409c: $7c
	ld   c, c                                        ; $409d: $49
	sub  b                                           ; $409e: $90
	ld   c, c                                        ; $409f: $49
	and  b                                           ; $40a0: $a0
	ld   c, c                                        ; $40a1: $49
	cp   b                                           ; $40a2: $b8
	ld   c, c                                        ; $40a3: $49
	ret  nc                                          ; $40a4: $d0

	ld   c, c                                        ; $40a5: $49
	ldh  [rOBP1], a                                  ; $40a6: $e0 $49
	ldh  a, [rOBP1]                                  ; $40a8: $f0 $49
	ld   hl, sp+$49                                  ; $40aa: $f8 $49
	ld   [$184a], sp                                 ; $40ac: $08 $4a $18
	ld   c, d                                        ; $40af: $4a
	jr   z, jr_023_40fc                              ; $40b0: $28 $4a

	jr   c, jr_023_40fe                              ; $40b2: $38 $4a

	ld   c, b                                        ; $40b4: $48
	ld   c, d                                        ; $40b5: $4a
	ld   e, b                                        ; $40b6: $58
	ld   c, d                                        ; $40b7: $4a
	ld   h, h                                        ; $40b8: $64
	ld   c, d                                        ; $40b9: $4a
	ld   [hl], b                                     ; $40ba: $70
	ld   c, d                                        ; $40bb: $4a
	ld   a, h                                        ; $40bc: $7c
	ld   c, d                                        ; $40bd: $4a
	adc  b                                           ; $40be: $88
	ld   c, d                                        ; $40bf: $4a
	sbc  b                                           ; $40c0: $98
	ld   c, d                                        ; $40c1: $4a
	and  h                                           ; $40c2: $a4
	ld   c, d                                        ; $40c3: $4a
	or   b                                           ; $40c4: $b0
	ld   c, d                                        ; $40c5: $4a
	cp   h                                           ; $40c6: $bc
	ld   c, d                                        ; $40c7: $4a
	ret  z                                           ; $40c8: $c8

	ld   c, d                                        ; $40c9: $4a
	call nc, $e04a                                   ; $40ca: $d4 $4a $e0
	ld   c, d                                        ; $40cd: $4a
	ldh  a, [rWY]                                    ; $40ce: $f0 $4a
	db   $fc                                         ; $40d0: $fc
	ld   c, d                                        ; $40d1: $4a
	ld   [$144b], sp                                 ; $40d2: $08 $4b $14
	ld   c, e                                        ; $40d5: $4b
	jr   nz, jr_023_4123                             ; $40d6: $20 $4b

	inc  l                                           ; $40d8: $2c
	ld   c, e                                        ; $40d9: $4b
	jr   c, jr_023_4127                              ; $40da: $38 $4b

	ld   b, h                                        ; $40dc: $44
	ld   c, e                                        ; $40dd: $4b
	ld   d, b                                        ; $40de: $50
	ld   c, e                                        ; $40df: $4b
	ld   l, b                                        ; $40e0: $68
	ld   c, e                                        ; $40e1: $4b
	add  b                                           ; $40e2: $80
	ld   c, e                                        ; $40e3: $4b
	sbc  b                                           ; $40e4: $98
	ld   c, e                                        ; $40e5: $4b
	or   b                                           ; $40e6: $b0
	ld   c, e                                        ; $40e7: $4b
	ret  z                                           ; $40e8: $c8

	ld   c, e                                        ; $40e9: $4b
	ldh  [rWX], a                                    ; $40ea: $e0 $4b
	ld   hl, sp+$4b                                  ; $40ec: $f8 $4b
	db   $10                                         ; $40ee: $10
	ld   c, h                                        ; $40ef: $4c
	jr   nc, jr_023_413e                             ; $40f0: $30 $4c

	ld   d, b                                        ; $40f2: $50
	ld   c, h                                        ; $40f3: $4c
	ld   l, h                                        ; $40f4: $6c
	ld   c, h                                        ; $40f5: $4c
	adc  b                                           ; $40f6: $88
	ld   c, h                                        ; $40f7: $4c
	and  b                                           ; $40f8: $a0
	ld   c, h                                        ; $40f9: $4c
	cp   h                                           ; $40fa: $bc
	ld   c, h                                        ; $40fb: $4c

jr_023_40fc:
	ret  c                                           ; $40fc: $d8

	ld   c, h                                        ; $40fd: $4c

jr_023_40fe:
	nop                                              ; $40fe: $00
	ld   c, l                                        ; $40ff: $4d
	jr   z, jr_023_414f                              ; $4100: $28 $4d

	ld   b, b                                        ; $4102: $40
	ld   c, l                                        ; $4103: $4d
	ld   e, h                                        ; $4104: $5c
	ld   c, l                                        ; $4105: $4d
	ld   a, b                                        ; $4106: $78
	ld   c, l                                        ; $4107: $4d
	sub  h                                           ; $4108: $94
	ld   c, l                                        ; $4109: $4d
	or   b                                           ; $410a: $b0
	ld   c, l                                        ; $410b: $4d
	ret  nc                                          ; $410c: $d0

	ld   c, l                                        ; $410d: $4d
	ldh  a, [rKEY1]                                  ; $410e: $f0 $4d
	db   $10                                         ; $4110: $10
	ld   c, [hl]                                     ; $4111: $4e
	jr   nc, jr_023_4162                             ; $4112: $30 $4e

	ld   d, h                                        ; $4114: $54
	ld   c, [hl]                                     ; $4115: $4e
	ld   a, b                                        ; $4116: $78
	ld   c, [hl]                                     ; $4117: $4e
	sbc  h                                           ; $4118: $9c
	ld   c, [hl]                                     ; $4119: $4e
	ret  nz                                          ; $411a: $c0

	ld   c, [hl]                                     ; $411b: $4e
	db   $e4                                         ; $411c: $e4
	ld   c, [hl]                                     ; $411d: $4e
	ld   [$2c4f], sp                                 ; $411e: $08 $4f $2c
	ld   c, a                                        ; $4121: $4f
	ld   d, b                                        ; $4122: $50

jr_023_4123:
	ld   c, a                                        ; $4123: $4f
	ld   [hl], h                                     ; $4124: $74
	ld   c, a                                        ; $4125: $4f
	sbc  b                                           ; $4126: $98

jr_023_4127:
	ld   c, a                                        ; $4127: $4f
	cp   h                                           ; $4128: $bc
	ld   c, a                                        ; $4129: $4f
	ldh  [rVBK], a                                   ; $412a: $e0 $4f
	inc  b                                           ; $412c: $04
	ld   d, b                                        ; $412d: $50
	jr   z, jr_023_4180                              ; $412e: $28 $50

	ld   c, h                                        ; $4130: $4c
	ld   d, b                                        ; $4131: $50
	ld   [hl], b                                     ; $4132: $70
	ld   d, b                                        ; $4133: $50
	sub  h                                           ; $4134: $94
	ld   d, b                                        ; $4135: $50
	cp   b                                           ; $4136: $b8
	ld   d, b                                        ; $4137: $50
	call c, TimerOverflowInterrupt                   ; $4138: $dc $50 $00
	ld   d, c                                        ; $413b: $51
	inc  h                                           ; $413c: $24
	ld   d, c                                        ; $413d: $51

jr_023_413e:
	ld   b, h                                        ; $413e: $44
	ld   d, c                                        ; $413f: $51
	ld   h, h                                        ; $4140: $64
	ld   d, c                                        ; $4141: $51
	add  h                                           ; $4142: $84
	ld   d, c                                        ; $4143: $51
	and  b                                           ; $4144: $a0
	ld   d, c                                        ; $4145: $51
	cp   h                                           ; $4146: $bc
	ld   d, c                                        ; $4147: $51
	db   $e4                                         ; $4148: $e4
	ld   d, c                                        ; $4149: $51
	inc  c                                           ; $414a: $0c
	ld   d, d                                        ; $414b: $52
	inc  [hl]                                        ; $414c: $34
	ld   d, d                                        ; $414d: $52
	ld   h, b                                        ; $414e: $60

jr_023_414f:
	ld   d, d                                        ; $414f: $52
	adc  b                                           ; $4150: $88
	ld   d, d                                        ; $4151: $52
	or   h                                           ; $4152: $b4
	ld   d, d                                        ; $4153: $52
	call c, $0052                                    ; $4154: $dc $52 $00
	ld   d, e                                        ; $4157: $53
	jr   nz, jr_023_41ad                             ; $4158: $20 $53

	ld   d, b                                        ; $415a: $50
	ld   d, e                                        ; $415b: $53
	add  h                                           ; $415c: $84
	ld   d, e                                        ; $415d: $53
	or   h                                           ; $415e: $b4
	ld   d, e                                        ; $415f: $53
	db   $e4                                         ; $4160: $e4
	ld   d, e                                        ; $4161: $53

jr_023_4162:
	inc  d                                           ; $4162: $14
	ld   d, h                                        ; $4163: $54
	ld   b, h                                        ; $4164: $44
	ld   d, h                                        ; $4165: $54
	ld   [hl], h                                     ; $4166: $74
	ld   d, h                                        ; $4167: $54
	sbc  h                                           ; $4168: $9c
	ld   d, h                                        ; $4169: $54
	call nz, $e854                                   ; $416a: $c4 $54 $e8
	ld   d, h                                        ; $416d: $54
	db   $10                                         ; $416e: $10
	ld   d, l                                        ; $416f: $55
	inc  a                                           ; $4170: $3c
	ld   d, l                                        ; $4171: $55
	ld   l, b                                        ; $4172: $68
	ld   d, l                                        ; $4173: $55
	sub  b                                           ; $4174: $90
	ld   d, l                                        ; $4175: $55
	cp   h                                           ; $4176: $bc
	ld   d, l                                        ; $4177: $55
	db   $e4                                         ; $4178: $e4
	ld   d, l                                        ; $4179: $55
	db   $10                                         ; $417a: $10
	ld   d, [hl]                                     ; $417b: $56
	jr   c, jr_023_41d4                              ; $417c: $38 $56

	ld   h, b                                        ; $417e: $60
	ld   d, [hl]                                     ; $417f: $56

jr_023_4180:
	adc  b                                           ; $4180: $88
	ld   d, [hl]                                     ; $4181: $56
	or   h                                           ; $4182: $b4
	ld   d, [hl]                                     ; $4183: $56
	call c, $0456                                    ; $4184: $dc $56 $04
	ld   d, a                                        ; $4187: $57
	inc  l                                           ; $4188: $2c
	ld   d, a                                        ; $4189: $57
	ld   d, h                                        ; $418a: $54
	ld   d, a                                        ; $418b: $57
	ld   a, h                                        ; $418c: $7c
	ld   d, a                                        ; $418d: $57
	and  h                                           ; $418e: $a4
	ld   d, a                                        ; $418f: $57
	call z, $f057                                    ; $4190: $cc $57 $f0
	ld   d, a                                        ; $4193: $57
	db   $10                                         ; $4194: $10
	ld   e, b                                        ; $4195: $58
	jr   nc, jr_023_41f0                             ; $4196: $30 $58

	ld   d, b                                        ; $4198: $50
	ld   e, b                                        ; $4199: $58
	ld   [hl], b                                     ; $419a: $70
	ld   e, b                                        ; $419b: $58
	sub  b                                           ; $419c: $90
	ld   e, b                                        ; $419d: $58
	or   b                                           ; $419e: $b0
	ld   e, b                                        ; $419f: $58
	ret  nc                                          ; $41a0: $d0

	ld   e, b                                        ; $41a1: $58
	add  sp, $58                                     ; $41a2: $e8 $58
	inc  b                                           ; $41a4: $04
	ld   e, c                                        ; $41a5: $59
	jr   nz, @+$5b                                   ; $41a6: $20 $59

	ld   b, b                                        ; $41a8: $40
	ld   e, c                                        ; $41a9: $59
	ld   h, b                                        ; $41aa: $60
	ld   e, c                                        ; $41ab: $59
	ld   a, h                                        ; $41ac: $7c

jr_023_41ad:
	ld   e, c                                        ; $41ad: $59
	sbc  b                                           ; $41ae: $98
	ld   e, c                                        ; $41af: $59
	or   h                                           ; $41b0: $b4
	ld   e, c                                        ; $41b1: $59
	ret  nc                                          ; $41b2: $d0

	ld   e, c                                        ; $41b3: $59
	db   $ec                                         ; $41b4: $ec
	ld   e, c                                        ; $41b5: $59
	ld   [$285a], sp                                 ; $41b6: $08 $5a $28
	ld   e, d                                        ; $41b9: $5a
	ld   c, h                                        ; $41ba: $4c
	ld   e, d                                        ; $41bb: $5a
	ld   l, h                                        ; $41bc: $6c
	ld   e, d                                        ; $41bd: $5a
	adc  h                                           ; $41be: $8c
	ld   e, d                                        ; $41bf: $5a
	db   $10                                         ; $41c0: $10
	ld   [$1e02], sp                                 ; $41c1: $08 $02 $1e
	db   $10                                         ; $41c4: $10
	ld   [$1e04], sp                                 ; $41c5: $08 $04 $1e
	db   $10                                         ; $41c8: $10
	ld   [$1e06], sp                                 ; $41c9: $08 $06 $1e
	jr   nz, jr_023_41de                             ; $41cc: $20 $10

	ld   [hl+], a                                    ; $41ce: $22
	inc  bc                                          ; $41cf: $03
	jr   nz, @+$0a                                   ; $41d0: $20 $08

	jr   nz, jr_023_41d7                             ; $41d2: $20 $03

jr_023_41d4:
	db   $10                                         ; $41d4: $10
	db   $10                                         ; $41d5: $10
	ld   [bc], a                                     ; $41d6: $02

jr_023_41d7:
	inc  bc                                          ; $41d7: $03
	db   $10                                         ; $41d8: $10
	ld   [$0300], sp                                 ; $41d9: $08 $00 $03
	jr   nz, jr_023_41ee                             ; $41dc: $20 $10

jr_023_41de:
	ld   [hl-], a                                    ; $41de: $32
	ld   bc, $0820                                   ; $41df: $01 $20 $08
	jr   nc, jr_023_41e5                             ; $41e2: $30 $01

	db   $10                                         ; $41e4: $10

jr_023_41e5:
	db   $10                                         ; $41e5: $10
	ld   [de], a                                     ; $41e6: $12
	ld   bc, $0810                                   ; $41e7: $01 $10 $08
	db   $10                                         ; $41ea: $10
	ld   de, $1020                                   ; $41eb: $11 $20 $10

jr_023_41ee:
	ld   h, $03                                      ; $41ee: $26 $03

jr_023_41f0:
	jr   nz, @+$0a                                   ; $41f0: $20 $08

	inc  h                                           ; $41f2: $24
	inc  bc                                          ; $41f3: $03
	db   $10                                         ; $41f4: $10
	db   $10                                         ; $41f5: $10
	ld   b, $03                                      ; $41f6: $06 $03
	db   $10                                         ; $41f8: $10
	ld   [$0304], sp                                 ; $41f9: $08 $04 $03
	jr   nz, @+$12                                   ; $41fc: $20 $10

	ld   [hl], $01                                   ; $41fe: $36 $01
	jr   nz, @+$0a                                   ; $4200: $20 $08

	inc  [hl]                                        ; $4202: $34
	ld   bc, $1010                                   ; $4203: $01 $10 $10
	ld   d, $01                                      ; $4206: $16 $01
	db   $10                                         ; $4208: $10
	ld   [$1114], sp                                 ; $4209: $08 $14 $11
	db   $10                                         ; $420c: $10
	ld   de, $030a                                   ; $420d: $11 $0a $03
	db   $10                                         ; $4210: $10
	add  hl, bc                                      ; $4211: $09
	ld   [$1003], sp                                 ; $4212: $08 $03 $10
	ld   de, $011a                                   ; $4215: $11 $1a $01
	db   $10                                         ; $4218: $10
	add  hl, bc                                      ; $4219: $09
	jr   @+$03                                       ; $421a: $18 $01

	jr   nz, jr_023_422e                             ; $421c: $20 $10

	ld   a, [hl+]                                    ; $421e: $2a
	inc  bc                                          ; $421f: $03
	jr   nz, jr_023_422a                             ; $4220: $20 $08

	jr   z, jr_023_4227                              ; $4222: $28 $03

	jr   nz, jr_023_4236                             ; $4224: $20 $10

	ld   a, [hl-]                                    ; $4226: $3a

jr_023_4227:
	ld   bc, $0820                                   ; $4227: $01 $20 $08

jr_023_422a:
	jr   c, @+$13                                    ; $422a: $38 $11

	jr   nz, jr_023_423e                             ; $422c: $20 $10

jr_023_422e:
	ld   l, $03                                      ; $422e: $2e $03
	jr   nz, @+$0a                                   ; $4230: $20 $08

	inc  l                                           ; $4232: $2c
	inc  bc                                          ; $4233: $03
	db   $10                                         ; $4234: $10
	db   $10                                         ; $4235: $10

jr_023_4236:
	ld   c, $03                                      ; $4236: $0e $03
	db   $10                                         ; $4238: $10
	ld   [$030c], sp                                 ; $4239: $08 $0c $03
	jr   nz, jr_023_424e                             ; $423c: $20 $10

jr_023_423e:
	ld   a, $01                                      ; $423e: $3e $01
	jr   nz, @+$0a                                   ; $4240: $20 $08

	inc  a                                           ; $4242: $3c
	ld   bc, $1010                                   ; $4243: $01 $10 $10
	ld   e, $01                                      ; $4246: $1e $01
	db   $10                                         ; $4248: $10
	ld   [$111c], sp                                 ; $4249: $08 $1c $11
	jr   nz, jr_023_425e                             ; $424c: $20 $10

jr_023_424e:
	ld   h, d                                        ; $424e: $62
	inc  bc                                          ; $424f: $03
	jr   nz, @+$0a                                   ; $4250: $20 $08

	ld   h, b                                        ; $4252: $60
	inc  bc                                          ; $4253: $03
	db   $10                                         ; $4254: $10
	db   $10                                         ; $4255: $10
	ld   b, d                                        ; $4256: $42
	inc  bc                                          ; $4257: $03
	db   $10                                         ; $4258: $10
	ld   [$0340], sp                                 ; $4259: $08 $40 $03
	jr   nz, jr_023_426e                             ; $425c: $20 $10

jr_023_425e:
	ld   [hl], d                                     ; $425e: $72
	ld   bc, $0820                                   ; $425f: $01 $20 $08
	ld   [hl], b                                     ; $4262: $70
	ld   bc, $1010                                   ; $4263: $01 $10 $10
	ld   d, d                                        ; $4266: $52
	ld   bc, $0810                                   ; $4267: $01 $10 $08
	ld   d, b                                        ; $426a: $50
	ld   de, $1010                                   ; $426b: $11 $10 $10

jr_023_426e:
	ld   b, [hl]                                     ; $426e: $46
	inc  bc                                          ; $426f: $03
	db   $10                                         ; $4270: $10
	ld   [$0344], sp                                 ; $4271: $08 $44 $03
	jr   nz, jr_023_4286                             ; $4274: $20 $10

	ld   l, $03                                      ; $4276: $2e $03
	jr   nz, jr_023_4282                             ; $4278: $20 $08

	inc  l                                           ; $427a: $2c
	inc  bc                                          ; $427b: $03
	db   $10                                         ; $427c: $10
	db   $10                                         ; $427d: $10
	ld   d, [hl]                                     ; $427e: $56
	ld   bc, $0810                                   ; $427f: $01 $10 $08

jr_023_4282:
	ld   d, h                                        ; $4282: $54
	ld   bc, $1020                                   ; $4283: $01 $20 $10

jr_023_4286:
	ld   a, $01                                      ; $4286: $3e $01
	jr   nz, jr_023_4292                             ; $4288: $20 $08

	inc  a                                           ; $428a: $3c
	ld   de, $1020                                   ; $428b: $11 $20 $10
	ld   h, [hl]                                     ; $428e: $66
	inc  bc                                          ; $428f: $03
	jr   nz, @+$0a                                   ; $4290: $20 $08

jr_023_4292:
	ld   h, h                                        ; $4292: $64
	inc  bc                                          ; $4293: $03
	db   $10                                         ; $4294: $10
	db   $10                                         ; $4295: $10
	ld   b, [hl]                                     ; $4296: $46
	inc  bc                                          ; $4297: $03
	db   $10                                         ; $4298: $10
	ld   [$0344], sp                                 ; $4299: $08 $44 $03
	jr   nz, jr_023_42ae                             ; $429c: $20 $10

	halt                                             ; $429e: $76
	ld   bc, $0820                                   ; $429f: $01 $20 $08
	ld   [hl], h                                     ; $42a2: $74
	ld   bc, $1010                                   ; $42a3: $01 $10 $10
	ld   d, [hl]                                     ; $42a6: $56
	ld   bc, $0810                                   ; $42a7: $01 $10 $08
	ld   d, h                                        ; $42aa: $54
	ld   de, $1020                                   ; $42ab: $11 $20 $10

jr_023_42ae:
	ld   c, [hl]                                     ; $42ae: $4e
	inc  bc                                          ; $42af: $03
	jr   nz, @+$0a                                   ; $42b0: $20 $08

	ld   c, h                                        ; $42b2: $4c
	inc  bc                                          ; $42b3: $03
	db   $10                                         ; $42b4: $10
	db   $10                                         ; $42b5: $10
	ld   c, d                                        ; $42b6: $4a
	inc  bc                                          ; $42b7: $03
	db   $10                                         ; $42b8: $10
	ld   [$0348], sp                                 ; $42b9: $08 $48 $03
	jr   nz, jr_023_42ce                             ; $42bc: $20 $10

	ld   e, [hl]                                     ; $42be: $5e
	ld   bc, $0820                                   ; $42bf: $01 $20 $08
	ld   e, h                                        ; $42c2: $5c
	ld   bc, $1010                                   ; $42c3: $01 $10 $10
	ld   e, d                                        ; $42c6: $5a
	ld   bc, $0810                                   ; $42c7: $01 $10 $08
	ld   e, b                                        ; $42ca: $58
	ld   de, $0420                                   ; $42cb: $11 $20 $04

jr_023_42ce:
	ld   l, h                                        ; $42ce: $6c
	ld   [bc], a                                     ; $42cf: $02
	jr   nz, jr_023_42e6                             ; $42d0: $20 $14

	ld   a, b                                        ; $42d2: $78
	ld   [bc], a                                     ; $42d3: $02
	jr   nz, jr_023_42e2                             ; $42d4: $20 $0c

	ld   l, [hl]                                     ; $42d6: $6e
	ld   [bc], a                                     ; $42d7: $02
	jr   jr_023_42e1                                 ; $42d8: $18 $07

	ld   a, [hl]                                     ; $42da: $7e
	dec  b                                           ; $42db: $05
	db   $10                                         ; $42dc: $10
	rrca                                             ; $42dd: $0f
	ld   l, d                                        ; $42de: $6a
	nop                                              ; $42df: $00
	db   $10                                         ; $42e0: $10

jr_023_42e1:
	rlca                                             ; $42e1: $07

jr_023_42e2:
	ld   l, b                                        ; $42e2: $68
	db   $10                                         ; $42e3: $10
	jr   nz, jr_023_42f0                             ; $42e4: $20 $0a

jr_023_42e6:
	add  [hl]                                        ; $42e6: $86
	ld   [bc], a                                     ; $42e7: $02
	jr   nz, jr_023_42ec                             ; $42e8: $20 $02

	add  h                                           ; $42ea: $84
	ld   [bc], a                                     ; $42eb: $02

jr_023_42ec:
	jr   jr_023_42f2                                 ; $42ec: $18 $04

	ld   a, [hl]                                     ; $42ee: $7e
	dec  b                                           ; $42ef: $05

jr_023_42f0:
	jr   nz, jr_023_4304                             ; $42f0: $20 $12

jr_023_42f2:
	adc  b                                           ; $42f2: $88
	ld   [bc], a                                     ; $42f3: $02
	db   $10                                         ; $42f4: $10
	dec  bc                                          ; $42f5: $0b
	add  d                                           ; $42f6: $82
	nop                                              ; $42f7: $00
	db   $10                                         ; $42f8: $10
	inc  bc                                          ; $42f9: $03
	add  b                                           ; $42fa: $80
	db   $10                                         ; $42fb: $10
	jr   nz, jr_023_4308                             ; $42fc: $20 $0a

	adc  [hl]                                        ; $42fe: $8e
	ld   [bc], a                                     ; $42ff: $02
	jr   nz, jr_023_4304                             ; $4300: $20 $02

	adc  h                                           ; $4302: $8c
	ld   [bc], a                                     ; $4303: $02

jr_023_4304:
	jr   @+$05                                       ; $4304: $18 $03

	ld   a, [hl]                                     ; $4306: $7e
	dec  b                                           ; $4307: $05

jr_023_4308:
	jr   nz, jr_023_4304                             ; $4308: $20 $fa

	adc  d                                           ; $430a: $8a
	ld   [bc], a                                     ; $430b: $02
	db   $10                                         ; $430c: $10
	ld   a, [bc]                                     ; $430d: $0a
	add  d                                           ; $430e: $82
	nop                                              ; $430f: $00
	db   $10                                         ; $4310: $10
	ld   [bc], a                                     ; $4311: $02
	add  b                                           ; $4312: $80
	nop                                              ; $4313: $00
	jr   nz, jr_023_4328                             ; $4314: $20 $12

	sub  b                                           ; $4316: $90
	ld   [de], a                                     ; $4317: $12
	jr   nz, @+$01                                   ; $4318: $20 $ff

	sbc  h                                           ; $431a: $9c
	ld   [bc], a                                     ; $431b: $02
	jr   nz, @+$11                                   ; $431c: $20 $0f

	and  b                                           ; $431e: $a0
	ld   [bc], a                                     ; $431f: $02
	jr   nz, @+$09                                   ; $4320: $20 $07

	sbc  [hl]                                        ; $4322: $9e
	ld   [bc], a                                     ; $4323: $02
	jr   jr_023_4326                                 ; $4324: $18 $00

jr_023_4326:
	ld   a, [hl]                                     ; $4326: $7e
	dec  b                                           ; $4327: $05

jr_023_4328:
	jr   z, @-$07                                    ; $4328: $28 $f7

	ld   a, h                                        ; $432a: $7c
	ld   [bc], a                                     ; $432b: $02
	jr   z, @-$0f                                    ; $432c: $28 $ef

	ld   a, h                                        ; $432e: $7c
	ld   [bc], a                                     ; $432f: $02
	db   $10                                         ; $4330: $10
	add  hl, bc                                      ; $4331: $09
	sbc  d                                           ; $4332: $9a
	nop                                              ; $4333: $00
	db   $10                                         ; $4334: $10
	ld   bc, $0098                                   ; $4335: $01 $98 $00
	db   $10                                         ; $4338: $10
	ld   sp, hl                                      ; $4339: $f9
	sub  [hl]                                        ; $433a: $96
	ld   [bc], a                                     ; $433b: $02
	db   $10                                         ; $433c: $10
	pop  af                                          ; $433d: $f1
	sub  h                                           ; $433e: $94
	ld   [bc], a                                     ; $433f: $02
	db   $10                                         ; $4340: $10
	jp   hl                                          ; $4341: $e9


	sub  d                                           ; $4342: $92
	ld   [de], a                                     ; $4343: $12
	jr   nz, @+$01                                   ; $4344: $20 $ff

	or   [hl]                                        ; $4346: $b6
	ld   [bc], a                                     ; $4347: $02
	jr   nz, @+$11                                   ; $4348: $20 $0f

	and  b                                           ; $434a: $a0
	ld   [bc], a                                     ; $434b: $02
	jr   nz, @+$09                                   ; $434c: $20 $07

	cp   b                                           ; $434e: $b8
	ld   [bc], a                                     ; $434f: $02
	jr   jr_023_4352                                 ; $4350: $18 $00

jr_023_4352:
	ld   a, [hl]                                     ; $4352: $7e
	dec  b                                           ; $4353: $05
	jr   z, @-$07                                    ; $4354: $28 $f7

	ld   a, h                                        ; $4356: $7c
	ld   [bc], a                                     ; $4357: $02
	jr   z, @-$0f                                    ; $4358: $28 $ef

	ld   a, h                                        ; $435a: $7c
	ld   [bc], a                                     ; $435b: $02
	ld   b, $04                                      ; $435c: $06 $04
	sbc  d                                           ; $435e: $9a
	inc  c                                           ; $435f: $0c
	db   $10                                         ; $4360: $10
	ld   sp, hl                                      ; $4361: $f9
	and  [hl]                                        ; $4362: $a6
	nop                                              ; $4363: $00
	db   $10                                         ; $4364: $10
	pop  af                                          ; $4365: $f1
	and  h                                           ; $4366: $a4
	ld   [bc], a                                     ; $4367: $02
	db   $10                                         ; $4368: $10
	jp   hl                                          ; $4369: $e9


	and  d                                           ; $436a: $a2
	ld   [bc], a                                     ; $436b: $02
	db   $10                                         ; $436c: $10
	add  hl, bc                                      ; $436d: $09
	or   h                                           ; $436e: $b4
	nop                                              ; $436f: $00
	db   $10                                         ; $4370: $10
	ld   bc, $10b2                                   ; $4371: $01 $b2 $10
	jr   nz, @+$01                                   ; $4374: $20 $ff

	sbc  h                                           ; $4376: $9c
	ld   [bc], a                                     ; $4377: $02
	jr   nz, @+$09                                   ; $4378: $20 $07

	sbc  [hl]                                        ; $437a: $9e
	ld   [bc], a                                     ; $437b: $02
	jr   nz, jr_023_438d                             ; $437c: $20 $0f

	and  b                                           ; $437e: $a0
	ld   [bc], a                                     ; $437f: $02
	jr   jr_023_4382                                 ; $4380: $18 $00

jr_023_4382:
	ld   a, [hl]                                     ; $4382: $7e
	dec  b                                           ; $4383: $05
	jr   z, @-$07                                    ; $4384: $28 $f7

	ld   a, h                                        ; $4386: $7c
	ld   [bc], a                                     ; $4387: $02
	jr   z, @-$0f                                    ; $4388: $28 $ef

	ld   a, h                                        ; $438a: $7c
	ld   [bc], a                                     ; $438b: $02
	db   $10                                         ; $438c: $10

jr_023_438d:
	add  hl, bc                                      ; $438d: $09
	sbc  d                                           ; $438e: $9a
	nop                                              ; $438f: $00
	db   $10                                         ; $4390: $10
	ld   bc, $0098                                   ; $4391: $01 $98 $00
	db   $10                                         ; $4394: $10
	ld   sp, hl                                      ; $4395: $f9
	and  [hl]                                        ; $4396: $a6
	nop                                              ; $4397: $00
	db   $10                                         ; $4398: $10
	pop  af                                          ; $4399: $f1
	and  h                                           ; $439a: $a4
	ld   [bc], a                                     ; $439b: $02
	db   $10                                         ; $439c: $10
	jp   hl                                          ; $439d: $e9


	and  d                                           ; $439e: $a2
	ld   [de], a                                     ; $439f: $12
	jr   nz, @+$01                                   ; $43a0: $20 $ff

	sbc  h                                           ; $43a2: $9c
	ld   [bc], a                                     ; $43a3: $02
	jr   nz, @+$09                                   ; $43a4: $20 $07

	sbc  [hl]                                        ; $43a6: $9e
	ld   [bc], a                                     ; $43a7: $02
	jr   nz, jr_023_43b9                             ; $43a8: $20 $0f

	and  b                                           ; $43aa: $a0
	ld   [bc], a                                     ; $43ab: $02
	jr   jr_023_43ae                                 ; $43ac: $18 $00

jr_023_43ae:
	ld   a, [hl]                                     ; $43ae: $7e
	dec  b                                           ; $43af: $05
	jr   z, @-$07                                    ; $43b0: $28 $f7

	ld   a, h                                        ; $43b2: $7c
	ld   [bc], a                                     ; $43b3: $02
	jr   z, @-$0f                                    ; $43b4: $28 $ef

	ld   a, h                                        ; $43b6: $7c
	ld   [bc], a                                     ; $43b7: $02
	inc  b                                           ; $43b8: $04

jr_023_43b9:
	dec  bc                                          ; $43b9: $0b
	ld   a, d                                        ; $43ba: $7a
	dec  b                                           ; $43bb: $05
	db   $10                                         ; $43bc: $10
	add  hl, bc                                      ; $43bd: $09
	sbc  d                                           ; $43be: $9a
	nop                                              ; $43bf: $00
	db   $10                                         ; $43c0: $10
	ld   bc, $0098                                   ; $43c1: $01 $98 $00
	db   $10                                         ; $43c4: $10
	ld   sp, hl                                      ; $43c5: $f9
	and  [hl]                                        ; $43c6: $a6
	nop                                              ; $43c7: $00
	db   $10                                         ; $43c8: $10
	pop  af                                          ; $43c9: $f1
	and  h                                           ; $43ca: $a4
	ld   [bc], a                                     ; $43cb: $02
	db   $10                                         ; $43cc: $10
	jp   hl                                          ; $43cd: $e9


	and  d                                           ; $43ce: $a2
	ld   [de], a                                     ; $43cf: $12
	jr   nz, @+$01                                   ; $43d0: $20 $ff

	sbc  h                                           ; $43d2: $9c
	ld   [bc], a                                     ; $43d3: $02
	jr   nz, @+$09                                   ; $43d4: $20 $07

	sbc  [hl]                                        ; $43d6: $9e
	ld   [bc], a                                     ; $43d7: $02
	jr   nz, jr_023_43e9                             ; $43d8: $20 $0f

	and  b                                           ; $43da: $a0
	ld   [bc], a                                     ; $43db: $02
	jr   jr_023_43de                                 ; $43dc: $18 $00

jr_023_43de:
	ld   a, [hl]                                     ; $43de: $7e
	dec  b                                           ; $43df: $05
	jr   z, @-$07                                    ; $43e0: $28 $f7

	ld   a, h                                        ; $43e2: $7c
	ld   [bc], a                                     ; $43e3: $02
	jr   z, @-$0f                                    ; $43e4: $28 $ef

	ld   a, h                                        ; $43e6: $7c
	ld   [bc], a                                     ; $43e7: $02
	rlca                                             ; $43e8: $07

jr_023_43e9:
	dec  bc                                          ; $43e9: $0b
	ld   a, d                                        ; $43ea: $7a
	dec  b                                           ; $43eb: $05
	db   $10                                         ; $43ec: $10
	add  hl, bc                                      ; $43ed: $09
	sbc  d                                           ; $43ee: $9a
	nop                                              ; $43ef: $00
	db   $10                                         ; $43f0: $10
	ld   bc, $0098                                   ; $43f1: $01 $98 $00
	db   $10                                         ; $43f4: $10
	ld   sp, hl                                      ; $43f5: $f9
	and  [hl]                                        ; $43f6: $a6
	nop                                              ; $43f7: $00
	db   $10                                         ; $43f8: $10
	pop  af                                          ; $43f9: $f1
	and  h                                           ; $43fa: $a4
	ld   [bc], a                                     ; $43fb: $02
	db   $10                                         ; $43fc: $10
	jp   hl                                          ; $43fd: $e9


	and  d                                           ; $43fe: $a2
	ld   [de], a                                     ; $43ff: $12
	jr   nz, @+$09                                   ; $4400: $20 $07

	or   b                                           ; $4402: $b0

jr_023_4403:
	ld   [bc], a                                     ; $4403: $02
	jr   nz, @+$01                                   ; $4404: $20 $ff

	xor  [hl]                                        ; $4406: $ae
	ld   [bc], a                                     ; $4407: $02
	jr   jr_023_4403                                 ; $4408: $18 $f9

	xor  h                                           ; $440a: $ac
	inc  b                                           ; $440b: $04
	jr   jr_023_440e                                 ; $440c: $18 $00

jr_023_440e:
	ld   a, [hl]                                     ; $440e: $7e
	dec  b                                           ; $440f: $05
	jr   z, @-$07                                    ; $4410: $28 $f7

	ld   a, h                                        ; $4412: $7c
	ld   [bc], a                                     ; $4413: $02
	jr   z, @-$0f                                    ; $4414: $28 $ef

	ld   a, h                                        ; $4416: $7c
	ld   [bc], a                                     ; $4417: $02
	db   $10                                         ; $4418: $10
	jp   hl                                          ; $4419: $e9


	xor  b                                           ; $441a: $a8

jr_023_441b:
	inc  b                                           ; $441b: $04
	jr   nz, @+$11                                   ; $441c: $20 $0f

	and  b                                           ; $441e: $a0
	ld   [bc], a                                     ; $441f: $02
	db   $10                                         ; $4420: $10
	add  hl, bc                                      ; $4421: $09
	sbc  d                                           ; $4422: $9a
	nop                                              ; $4423: $00
	db   $10                                         ; $4424: $10
	ld   bc, $0098                                   ; $4425: $01 $98 $00
	jr   jr_023_441b                                 ; $4428: $18 $f1

	xor  d                                           ; $442a: $aa
	inc  d                                           ; $442b: $14
	jr   nz, jr_023_442e                             ; $442c: $20 $00

jr_023_442e:
	jp   nz, $2000                                   ; $442e: $c2 $00 $20

	ld   [$02c4], sp                                 ; $4431: $08 $c4 $02
	jr   jr_023_4437                                 ; $4434: $18 $01

	ld   a, [hl]                                     ; $4436: $7e

jr_023_4437:
	dec  b                                           ; $4437: $05
	jr   nz, jr_023_444a                             ; $4438: $20 $10

	add  $02                                         ; $443a: $c6 $02
	db   $10                                         ; $443c: $10
	db   $10                                         ; $443d: $10
	ret  nz                                          ; $443e: $c0

	nop                                              ; $443f: $00
	db   $10                                         ; $4440: $10
	ld   [$00be], sp                                 ; $4441: $08 $be $00
	stop                                             ; $4444: $10 $00
	cp   h                                           ; $4446: $bc
	nop                                              ; $4447: $00
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00

jr_023_444a:
	cp   d                                           ; $444a: $ba
	db   $10                                         ; $444b: $10
	jr   nz, jr_023_4450                             ; $444c: $20 $02

	ret  nc                                          ; $444e: $d0

	ld   [bc], a                                     ; $444f: $02

jr_023_4450:
	jr   jr_023_4454                                 ; $4450: $18 $02

	ld   a, [hl]                                     ; $4452: $7e
	dec  b                                           ; $4453: $05

jr_023_4454:
	db   $10                                         ; $4454: $10
	ld   a, [bc]                                     ; $4455: $0a
	add  d                                           ; $4456: $82
	nop                                              ; $4457: $00
	db   $10                                         ; $4458: $10
	ld   [bc], a                                     ; $4459: $02
	add  b                                           ; $445a: $80
	nop                                              ; $445b: $00

jr_023_445c:
	jr   nz, jr_023_4470                             ; $445c: $20 $12

	call nc, $2002                                   ; $445e: $d4 $02 $20
	ld   a, [bc]                                     ; $4461: $0a
	jp   nc, $2002                                   ; $4462: $d2 $02 $20

	ld   a, [$04ce]                                  ; $4465: $fa $ce $04
	jr   nz, jr_023_445c                             ; $4468: $20 $f2

	call z, $1004                                    ; $446a: $cc $04 $10
	ld   a, [$04ca]                                  ; $446d: $fa $ca $04

jr_023_4470:
	db   $10                                         ; $4470: $10
	ldh  a, [c]                                      ; $4471: $f2
	ret  z                                           ; $4472: $c8

	inc  d                                           ; $4473: $14

jr_023_4474:
	jr   nz, jr_023_4478                             ; $4474: $20 $02

	ret  nc                                          ; $4476: $d0

	ld   [bc], a                                     ; $4477: $02

jr_023_4478:
	jr   jr_023_447c                                 ; $4478: $18 $02

	ld   a, [hl]                                     ; $447a: $7e
	dec  b                                           ; $447b: $05

jr_023_447c:
	jr   nz, jr_023_4478                             ; $447c: $20 $fa

	adc  $04                                         ; $447e: $ce $04
	jr   nz, jr_023_4474                             ; $4480: $20 $f2

	jp   c, $1004                                    ; $4482: $da $04 $10

	ld   a, [$04d8]                                  ; $4485: $fa $d8 $04
	db   $10                                         ; $4488: $10
	ldh  a, [c]                                      ; $4489: $f2
	sub  $04                                         ; $448a: $d6 $04
	db   $10                                         ; $448c: $10
	ld   a, [bc]                                     ; $448d: $0a
	add  d                                           ; $448e: $82
	nop                                              ; $448f: $00
	db   $10                                         ; $4490: $10
	ld   [bc], a                                     ; $4491: $02
	add  b                                           ; $4492: $80
	nop                                              ; $4493: $00
	jr   nz, jr_023_44a8                             ; $4494: $20 $12

	call nc, $2002                                   ; $4496: $d4 $02 $20
	ld   a, [bc]                                     ; $4499: $0a
	jp   nc, $2012                                   ; $449a: $d2 $12 $20

	ld   [bc], a                                     ; $449d: $02
	ret  nc                                          ; $449e: $d0

	ld   [bc], a                                     ; $449f: $02

jr_023_44a0:
	jr   jr_023_44a4                                 ; $44a0: $18 $02

	ld   a, [hl]                                     ; $44a2: $7e
	dec  b                                           ; $44a3: $05

jr_023_44a4:
	jr   nz, jr_023_44a0                             ; $44a4: $20 $fa

	sbc  $02                                         ; $44a6: $de $02

jr_023_44a8:
	jr   nz, @-$0c                                   ; $44a8: $20 $f2

	call c, $1002                                    ; $44aa: $dc $02 $10
	ld   a, [bc]                                     ; $44ad: $0a
	add  d                                           ; $44ae: $82
	nop                                              ; $44af: $00
	db   $10                                         ; $44b0: $10
	ld   [bc], a                                     ; $44b1: $02
	add  b                                           ; $44b2: $80
	nop                                              ; $44b3: $00
	jr   nz, jr_023_44c8                             ; $44b4: $20 $12

	call nc, $2002                                   ; $44b6: $d4 $02 $20
	ld   a, [bc]                                     ; $44b9: $0a
	jp   nc, $2012                                   ; $44ba: $d2 $12 $20

	ld   [bc], a                                     ; $44bd: $02
	db   $ec                                         ; $44be: $ec
	ld   [bc], a                                     ; $44bf: $02
	jr   nz, jr_023_44cc                             ; $44c0: $20 $0a

	xor  $02                                         ; $44c2: $ee $02
	jr   jr_023_44c9                                 ; $44c4: $18 $03

	ld   a, [hl]                                     ; $44c6: $7e
	dec  b                                           ; $44c7: $05

jr_023_44c8:
	db   $10                                         ; $44c8: $10

jr_023_44c9:
	ld   a, [bc]                                     ; $44c9: $0a
	add  d                                           ; $44ca: $82
	nop                                              ; $44cb: $00

jr_023_44cc:
	db   $10                                         ; $44cc: $10
	ld   [bc], a                                     ; $44cd: $02
	add  b                                           ; $44ce: $80
	nop                                              ; $44cf: $00
	jr   nz, jr_023_44e4                             ; $44d0: $20 $12

	db   $fc                                         ; $44d2: $fc
	ld   [de], a                                     ; $44d3: $12
	jr   nz, jr_023_44e0                             ; $44d4: $20 $0a

	add  d                                           ; $44d6: $82
	ld   a, [bc]                                     ; $44d7: $0a
	jr   nz, jr_023_44dc                             ; $44d8: $20 $02

	add  b                                           ; $44da: $80
	ld   a, [bc]                                     ; $44db: $0a

jr_023_44dc:
	jr   @+$05                                       ; $44dc: $18 $03

	ld   a, [hl]                                     ; $44de: $7e
	dec  b                                           ; $44df: $05

jr_023_44e0:
	jr   nz, jr_023_44f4                             ; $44e0: $20 $12

	add  h                                           ; $44e2: $84
	ld   a, [bc]                                     ; $44e3: $0a

jr_023_44e4:
	db   $10                                         ; $44e4: $10
	ld   a, [bc]                                     ; $44e5: $0a
	add  d                                           ; $44e6: $82
	nop                                              ; $44e7: $00

jr_023_44e8:
	db   $10                                         ; $44e8: $10
	ld   [bc], a                                     ; $44e9: $02
	add  b                                           ; $44ea: $80
	nop                                              ; $44eb: $00
	jr   nz, jr_023_44e8                             ; $44ec: $20 $fa

	cp   $10                                         ; $44ee: $fe $10
	jr   nz, jr_023_44fb                             ; $44f0: $20 $09

	adc  b                                           ; $44f2: $88
	ld   a, [bc]                                     ; $44f3: $0a

jr_023_44f4:
	jr   nz, jr_023_44f7                             ; $44f4: $20 $01

	add  [hl]                                        ; $44f6: $86

jr_023_44f7:
	ld   a, [bc]                                     ; $44f7: $0a
	jr   @+$05                                       ; $44f8: $18 $03

	ld   a, [hl]                                     ; $44fa: $7e

jr_023_44fb:
	dec  b                                           ; $44fb: $05
	jr   nz, jr_023_450f                             ; $44fc: $20 $11

	adc  d                                           ; $44fe: $8a
	ld   a, [bc]                                     ; $44ff: $0a
	db   $10                                         ; $4500: $10
	ld   a, [bc]                                     ; $4501: $0a
	add  d                                           ; $4502: $82
	nop                                              ; $4503: $00
	db   $10                                         ; $4504: $10
	ld   [bc], a                                     ; $4505: $02
	add  b                                           ; $4506: $80
	db   $10                                         ; $4507: $10
	jr   nz, jr_023_4514                             ; $4508: $20 $0a

	adc  [hl]                                        ; $450a: $8e
	ld   a, [bc]                                     ; $450b: $0a
	jr   nz, jr_023_4510                             ; $450c: $20 $02

	adc  h                                           ; $450e: $8c

jr_023_450f:
	ld   a, [bc]                                     ; $450f: $0a

jr_023_4510:
	jr   jr_023_4515                                 ; $4510: $18 $03

	ld   a, [hl]                                     ; $4512: $7e
	dec  b                                           ; $4513: $05

jr_023_4514:
	db   $10                                         ; $4514: $10

jr_023_4515:
	ld   a, [bc]                                     ; $4515: $0a
	add  d                                           ; $4516: $82
	nop                                              ; $4517: $00
	db   $10                                         ; $4518: $10
	ld   [bc], a                                     ; $4519: $02
	add  b                                           ; $451a: $80
	nop                                              ; $451b: $00
	jr   nz, jr_023_4530                             ; $451c: $20 $12

	add  h                                           ; $451e: $84
	ld   a, [de]                                     ; $451f: $1a
	jr   nz, jr_023_452c                             ; $4520: $20 $0a

	sub  [hl]                                        ; $4522: $96
	ld   a, [bc]                                     ; $4523: $0a
	jr   nz, jr_023_4528                             ; $4524: $20 $02

	sub  h                                           ; $4526: $94
	ld   a, [bc]                                     ; $4527: $0a

jr_023_4528:
	jr   jr_023_452e                                 ; $4528: $18 $04

	ld   a, [hl]                                     ; $452a: $7e
	dec  b                                           ; $452b: $05

jr_023_452c:
	jr   nz, jr_023_4540                             ; $452c: $20 $12

jr_023_452e:
	sbc  b                                           ; $452e: $98
	ld   a, [bc]                                     ; $452f: $0a

jr_023_4530:
	db   $10                                         ; $4530: $10
	ld   a, [bc]                                     ; $4531: $0a
	sub  d                                           ; $4532: $92
	ld   [$0210], sp                                 ; $4533: $08 $10 $02
	sub  b                                           ; $4536: $90
	jr   @+$23                                       ; $4537: $18 $21

	ld   [$0aaa], sp                                 ; $4539: $08 $aa $0a
	ld   b, $08                                      ; $453c: $06 $08
	sbc  d                                           ; $453e: $9a
	inc  e                                           ; $453f: $1c

jr_023_4540:
	ld   hl, $aa11                                   ; $4540: $21 $11 $aa
	ld   a, [bc]                                     ; $4543: $0a
	ld   bc, $9c11                                   ; $4544: $01 $11 $9c
	inc  e                                           ; $4547: $1c
	ld   hl, $aa1c                                   ; $4548: $21 $1c $aa
	ld   a, [bc]                                     ; $454b: $0a
	rst  $38                                         ; $454c: $ff
	inc  e                                           ; $454d: $1c
	sbc  d                                           ; $454e: $9a
	inc  e                                           ; $454f: $1c
	ld   hl, $aa27                                   ; $4550: $21 $27 $aa
	ld   a, [bc]                                     ; $4553: $0a
	nop                                              ; $4554: $00
	daa                                              ; $4555: $27
	sbc  h                                           ; $4556: $9c
	inc  e                                           ; $4557: $1c
	ld   hl, $aa2e                                   ; $4558: $21 $2e $aa
	ld   a, [bc]                                     ; $455b: $0a
	ld   [bc], a                                     ; $455c: $02
	ld   l, $9a                                      ; $455d: $2e $9a
	inc  e                                           ; $455f: $1c
	ld   hl, $aa43                                   ; $4560: $21 $43 $aa
	ld   a, [bc]                                     ; $4563: $0a
	di                                               ; $4564: $f3
	ld   b, e                                        ; $4565: $43
	sbc  d                                           ; $4566: $9a
	inc  e                                           ; $4567: $1c
	ld   hl, $aa4a                                   ; $4568: $21 $4a $aa
	ld   a, [bc]                                     ; $456b: $0a
	or   $4a                                         ; $456c: $f6 $4a
	sbc  h                                           ; $456e: $9c
	inc  e                                           ; $456f: $1c
	ld   hl, $aa5c                                   ; $4570: $21 $5c $aa
	ld   a, [bc]                                     ; $4573: $0a
	rst  $30                                         ; $4574: $f7
	ld   e, h                                        ; $4575: $5c
	sbc  h                                           ; $4576: $9c
	inc  e                                           ; $4577: $1c
	ld   hl, $aa3c                                   ; $4578: $21 $3c $aa
	ld   a, [bc]                                     ; $457b: $0a
	ld   a, [bc]                                     ; $457c: $0a
	inc  a                                           ; $457d: $3c
	sbc  h                                           ; $457e: $9c
	inc  e                                           ; $457f: $1c
	ld   hl, $aa3c                                   ; $4580: $21 $3c $aa
	ld   a, [bc]                                     ; $4583: $0a
	inc  d                                           ; $4584: $14
	inc  a                                           ; $4585: $3c
	sbc  h                                           ; $4586: $9c
	inc  e                                           ; $4587: $1c
	add  hl, de                                      ; $4588: $19
	inc  a                                           ; $4589: $3c
	sbc  h                                           ; $458a: $9c
	inc  c                                           ; $458b: $0c
	ld   hl, $aa3c                                   ; $458c: $21 $3c $aa
	ld   a, [de]                                     ; $458f: $1a
	add  hl, de                                      ; $4590: $19
	dec  a                                           ; $4591: $3d
	sbc  [hl]                                        ; $4592: $9e
	inc  e                                           ; $4593: $1c
	add  hl, de                                      ; $4594: $19
	ld   b, l                                        ; $4595: $45
	and  d                                           ; $4596: $a2
	inc  c                                           ; $4597: $0c
	add  hl, de                                      ; $4598: $19
	dec  a                                           ; $4599: $3d
	and  b                                           ; $459a: $a0
	inc  e                                           ; $459b: $1c
	ld   hl, $aa3c                                   ; $459c: $21 $3c $aa
	ld   a, [bc]                                     ; $459f: $0a
	ld   c, $3c                                      ; $45a0: $0e $3c
	and  h                                           ; $45a2: $a4
	inc  e                                           ; $45a3: $1c
	ld   hl, $aa3c                                   ; $45a4: $21 $3c $aa
	ld   a, [bc]                                     ; $45a7: $0a
	inc  d                                           ; $45a8: $14
	inc  a                                           ; $45a9: $3c
	and  [hl]                                        ; $45aa: $a6
	inc  e                                           ; $45ab: $1c
	add  hl, de                                      ; $45ac: $19
	inc  a                                           ; $45ad: $3c
	xor  b                                           ; $45ae: $a8
	inc  e                                           ; $45af: $1c
	jr   jr_023_45ba                                 ; $45b0: $18 $08

	xor  h                                           ; $45b2: $ac
	ld   [$0810], sp                                 ; $45b3: $08 $10 $08
	xor  h                                           ; $45b6: $ac
	jr   @+$22                                       ; $45b7: $18 $20

	db   $10                                         ; $45b9: $10

jr_023_45ba:
	ld   [hl+], a                                    ; $45ba: $22
	ld   bc, $0820                                   ; $45bb: $01 $20 $08
	jr   nz, jr_023_45c1                             ; $45be: $20 $01

	db   $10                                         ; $45c0: $10

jr_023_45c1:
	db   $10                                         ; $45c1: $10
	ld   [bc], a                                     ; $45c2: $02
	nop                                              ; $45c3: $00
	db   $10                                         ; $45c4: $10
	ld   [rRAMG], sp                                 ; $45c5: $08 $00 $00
	db   $10                                         ; $45c8: $10
	db   $10                                         ; $45c9: $10
	ld   [de], a                                     ; $45ca: $12
	ld   [bc], a                                     ; $45cb: $02
	db   $10                                         ; $45cc: $10
	ld   [$1210], sp                                 ; $45cd: $08 $10 $12
	jr   nz, jr_023_45e2                             ; $45d0: $20 $10

	ld   h, $01                                      ; $45d2: $26 $01
	jr   nz, @+$0a                                   ; $45d4: $20 $08

	inc  h                                           ; $45d6: $24
	ld   bc, $1010                                   ; $45d7: $01 $10 $10
	ld   b, $00                                      ; $45da: $06 $00
	db   $10                                         ; $45dc: $10
	ld   [$0004], sp                                 ; $45dd: $08 $04 $00
	db   $10                                         ; $45e0: $10
	db   $10                                         ; $45e1: $10

jr_023_45e2:
	ld   d, $02                                      ; $45e2: $16 $02
	db   $10                                         ; $45e4: $10
	ld   [$1214], sp                                 ; $45e5: $08 $14 $12
	jr   nz, jr_023_45fa                             ; $45e8: $20 $10

	ld   [hl+], a                                    ; $45ea: $22
	ld   bc, $0820                                   ; $45eb: $01 $20 $08
	jr   nz, jr_023_45f1                             ; $45ee: $20 $01

	db   $10                                         ; $45f0: $10

jr_023_45f1:
	db   $10                                         ; $45f1: $10
	ld   a, [bc]                                     ; $45f2: $0a
	nop                                              ; $45f3: $00
	db   $10                                         ; $45f4: $10
	ld   [$0008], sp                                 ; $45f5: $08 $08 $00
	db   $10                                         ; $45f8: $10
	db   $10                                         ; $45f9: $10

jr_023_45fa:
	ld   a, [de]                                     ; $45fa: $1a
	ld   [bc], a                                     ; $45fb: $02
	db   $10                                         ; $45fc: $10
	ld   [$1218], sp                                 ; $45fd: $08 $18 $12
	db   $10                                         ; $4600: $10
	db   $10                                         ; $4601: $10
	ld   c, $00                                      ; $4602: $0e $00
	db   $10                                         ; $4604: $10
	ld   [$000c], sp                                 ; $4605: $08 $0c $00
	db   $10                                         ; $4608: $10
	db   $10                                         ; $4609: $10
	ld   e, $02                                      ; $460a: $1e $02
	db   $10                                         ; $460c: $10
	ld   [$021c], sp                                 ; $460d: $08 $1c $02
	jr   jr_023_4612                                 ; $4610: $18 $00

jr_023_4612:
	inc  l                                           ; $4612: $2c
	ld   bc, $1020                                   ; $4613: $01 $20 $10
	ld   a, [hl+]                                    ; $4616: $2a
	ld   bc, $0820                                   ; $4617: $01 $20 $08
	jr   z, jr_023_462d                              ; $461a: $28 $11

	jr   nz, jr_023_462e                             ; $461c: $20 $10

	ld   b, d                                        ; $461e: $42
	inc  bc                                          ; $461f: $03
	jr   nz, jr_023_462a                             ; $4620: $20 $08

	ld   b, b                                        ; $4622: $40
	inc  bc                                          ; $4623: $03
	jr   nz, jr_023_4636                             ; $4624: $20 $10

	ld   d, d                                        ; $4626: $52
	inc  b                                           ; $4627: $04
	jr   nz, @+$0a                                   ; $4628: $20 $08

jr_023_462a:
	ld   d, b                                        ; $462a: $50
	inc  b                                           ; $462b: $04
	db   $10                                         ; $462c: $10

jr_023_462d:
	db   $10                                         ; $462d: $10

jr_023_462e:
	ld   [hl-], a                                    ; $462e: $32
	ld   [bc], a                                     ; $462f: $02
	db   $10                                         ; $4630: $10
	ld   [$1230], sp                                 ; $4631: $08 $30 $12
	jr   nz, jr_023_4646                             ; $4634: $20 $10

jr_023_4636:
	ld   b, [hl]                                     ; $4636: $46
	inc  bc                                          ; $4637: $03
	jr   nz, @+$0a                                   ; $4638: $20 $08

	ld   b, h                                        ; $463a: $44
	inc  bc                                          ; $463b: $03
	db   $10                                         ; $463c: $10
	db   $10                                         ; $463d: $10
	ld   [hl-], a                                    ; $463e: $32
	ld   [bc], a                                     ; $463f: $02
	db   $10                                         ; $4640: $10
	ld   [$0230], sp                                 ; $4641: $08 $30 $02
	jr   nz, jr_023_4656                             ; $4644: $20 $10

jr_023_4646:
	ld   d, [hl]                                     ; $4646: $56
	inc  b                                           ; $4647: $04
	jr   nz, jr_023_4652                             ; $4648: $20 $08

	ld   d, h                                        ; $464a: $54
	inc  d                                           ; $464b: $14
	jr   @+$1a                                       ; $464c: $18 $18

	ld   a, [hl]                                     ; $464e: $7e
	dec  b                                           ; $464f: $05
	jr   @+$12                                       ; $4650: $18 $10

jr_023_4652:
	ld   a, h                                        ; $4652: $7c
	dec  b                                           ; $4653: $05
	jr   @+$0a                                       ; $4654: $18 $08

jr_023_4656:
	ld   a, d                                        ; $4656: $7a
	dec  b                                           ; $4657: $05
	jr   jr_023_465a                                 ; $4658: $18 $00

jr_023_465a:
	ld   a, b                                        ; $465a: $78
	dec  b                                           ; $465b: $05
	ld   [$7618], sp                                 ; $465c: $08 $18 $76
	dec  b                                           ; $465f: $05
	ld   [$7410], sp                                 ; $4660: $08 $10 $74
	dec  b                                           ; $4663: $05
	ld   [$7208], sp                                 ; $4664: $08 $08 $72
	dec  b                                           ; $4667: $05
	ld   [$7000], sp                                 ; $4668: $08 $00 $70
	dec  b                                           ; $466b: $05
	jr   nz, jr_023_467e                             ; $466c: $20 $10

	ld   b, [hl]                                     ; $466e: $46
	inc  bc                                          ; $466f: $03
	jr   nz, jr_023_467a                             ; $4670: $20 $08

	ld   b, h                                        ; $4672: $44
	inc  bc                                          ; $4673: $03
	jr   nz, jr_023_4686                             ; $4674: $20 $10

	ld   d, [hl]                                     ; $4676: $56
	inc  b                                           ; $4677: $04
	jr   nz, @+$0a                                   ; $4678: $20 $08

jr_023_467a:
	ld   d, h                                        ; $467a: $54
	inc  b                                           ; $467b: $04
	db   $10                                         ; $467c: $10
	db   $10                                         ; $467d: $10

jr_023_467e:
	ld   [hl-], a                                    ; $467e: $32
	ld   [bc], a                                     ; $467f: $02
	db   $10                                         ; $4680: $10
	ld   [$1230], sp                                 ; $4681: $08 $30 $12
	jr   @+$1a                                       ; $4684: $18 $18

jr_023_4686:
	adc  [hl]                                        ; $4686: $8e
	dec  b                                           ; $4687: $05
	jr   @+$12                                       ; $4688: $18 $10

	adc  h                                           ; $468a: $8c
	dec  b                                           ; $468b: $05
	jr   @+$0a                                       ; $468c: $18 $08

	adc  d                                           ; $468e: $8a
	dec  b                                           ; $468f: $05
	jr   jr_023_4692                                 ; $4690: $18 $00

jr_023_4692:
	adc  b                                           ; $4692: $88
	dec  b                                           ; $4693: $05
	ld   [$8618], sp                                 ; $4694: $08 $18 $86
	dec  b                                           ; $4697: $05
	ld   [$8410], sp                                 ; $4698: $08 $10 $84
	dec  b                                           ; $469b: $05
	ld   [$8208], sp                                 ; $469c: $08 $08 $82
	dec  b                                           ; $469f: $05
	ld   [$8000], sp                                 ; $46a0: $08 $00 $80
	dec  b                                           ; $46a3: $05
	jr   nz, jr_023_46b6                             ; $46a4: $20 $10

	ld   b, [hl]                                     ; $46a6: $46
	inc  bc                                          ; $46a7: $03
	jr   nz, @+$0a                                   ; $46a8: $20 $08

	ld   b, h                                        ; $46aa: $44
	inc  bc                                          ; $46ab: $03
	db   $10                                         ; $46ac: $10
	db   $10                                         ; $46ad: $10
	ld   [hl-], a                                    ; $46ae: $32
	ld   [bc], a                                     ; $46af: $02
	db   $10                                         ; $46b0: $10

jr_023_46b1:
	ld   [$0230], sp                                 ; $46b1: $08 $30 $02
	jr   nz, jr_023_46c6                             ; $46b4: $20 $10

jr_023_46b6:
	ld   d, [hl]                                     ; $46b6: $56
	inc  b                                           ; $46b7: $04
	jr   nz, jr_023_46c2                             ; $46b8: $20 $08

	ld   d, h                                        ; $46ba: $54
	inc  d                                           ; $46bb: $14
	jr   @+$1a                                       ; $46bc: $18 $18

	sbc  [hl]                                        ; $46be: $9e
	dec  b                                           ; $46bf: $05
	jr   @+$12                                       ; $46c0: $18 $10

jr_023_46c2:
	sbc  h                                           ; $46c2: $9c
	dec  b                                           ; $46c3: $05
	jr   @+$0a                                       ; $46c4: $18 $08

jr_023_46c6:
	sbc  d                                           ; $46c6: $9a
	dec  b                                           ; $46c7: $05
	jr   jr_023_46ca                                 ; $46c8: $18 $00

jr_023_46ca:
	sbc  b                                           ; $46ca: $98
	dec  b                                           ; $46cb: $05
	ld   [$9618], sp                                 ; $46cc: $08 $18 $96
	dec  b                                           ; $46cf: $05
	ld   [$9410], sp                                 ; $46d0: $08 $10 $94
	dec  b                                           ; $46d3: $05
	ld   [$9208], sp                                 ; $46d4: $08 $08 $92
	dec  b                                           ; $46d7: $05
	ld   [$9000], sp                                 ; $46d8: $08 $00 $90
	dec  b                                           ; $46db: $05
	jr   nz, jr_023_46ee                             ; $46dc: $20 $10

	ld   b, [hl]                                     ; $46de: $46
	inc  bc                                          ; $46df: $03
	jr   nz, @+$0a                                   ; $46e0: $20 $08

	ld   b, h                                        ; $46e2: $44
	inc  bc                                          ; $46e3: $03
	db   $10                                         ; $46e4: $10
	db   $10                                         ; $46e5: $10
	ld   [hl-], a                                    ; $46e6: $32
	ld   [bc], a                                     ; $46e7: $02
	db   $10                                         ; $46e8: $10
	ld   [$0230], sp                                 ; $46e9: $08 $30 $02
	jr   nz, jr_023_46fe                             ; $46ec: $20 $10

jr_023_46ee:
	ld   d, [hl]                                     ; $46ee: $56
	inc  b                                           ; $46ef: $04
	jr   nz, @+$0a                                   ; $46f0: $20 $08

	ld   d, h                                        ; $46f2: $54
	inc  d                                           ; $46f3: $14
	db   $10                                         ; $46f4: $10
	db   $10                                         ; $46f5: $10
	ld   [hl], $02                                   ; $46f6: $36 $02
	db   $10                                         ; $46f8: $10
	ld   [$0234], sp                                 ; $46f9: $08 $34 $02
	jr   nz, @+$12                                   ; $46fc: $20 $10

jr_023_46fe:
	ld   e, [hl]                                     ; $46fe: $5e
	dec  b                                           ; $46ff: $05
	jr   nz, jr_023_471a                             ; $4700: $20 $18

	ld   l, [hl]                                     ; $4702: $6e
	dec  b                                           ; $4703: $05
	jr   nz, @+$0a                                   ; $4704: $20 $08

	and  [hl]                                        ; $4706: $a6
	dec  b                                           ; $4707: $05
	jr   nz, jr_023_470a                             ; $4708: $20 $00

jr_023_470a:
	and  h                                           ; $470a: $a4
	dec  b                                           ; $470b: $05
	db   $10                                         ; $470c: $10
	jr   jr_023_46b1                                 ; $470d: $18 $a2

	dec  b                                           ; $470f: $05
	stop                                             ; $4710: $10 $00
	and  b                                           ; $4712: $a0
	dec  b                                           ; $4713: $05
	jr   nz, jr_023_4726                             ; $4714: $20 $10

	ld   b, [hl]                                     ; $4716: $46
	inc  bc                                          ; $4717: $03
	jr   nz, jr_023_4722                             ; $4718: $20 $08

jr_023_471a:
	ld   b, h                                        ; $471a: $44
	inc  bc                                          ; $471b: $03
	jr   nz, jr_023_472e                             ; $471c: $20 $10

	ld   d, [hl]                                     ; $471e: $56
	inc  b                                           ; $471f: $04
	jr   nz, jr_023_472a                             ; $4720: $20 $08

jr_023_4722:
	ld   d, h                                        ; $4722: $54
	inc  d                                           ; $4723: $14
	jr   nz, jr_023_4736                             ; $4724: $20 $10

jr_023_4726:
	ld   b, [hl]                                     ; $4726: $46
	inc  bc                                          ; $4727: $03
	jr   nz, jr_023_4732                             ; $4728: $20 $08

jr_023_472a:
	ld   b, h                                        ; $472a: $44
	inc  bc                                          ; $472b: $03
	jr   nz, jr_023_473e                             ; $472c: $20 $10

jr_023_472e:
	ld   d, [hl]                                     ; $472e: $56
	inc  b                                           ; $472f: $04
	jr   nz, @+$0a                                   ; $4730: $20 $08

jr_023_4732:
	ld   d, h                                        ; $4732: $54
	inc  b                                           ; $4733: $04
	db   $10                                         ; $4734: $10
	db   $10                                         ; $4735: $10

jr_023_4736:
	ld   [hl], $02                                   ; $4736: $36 $02
	db   $10                                         ; $4738: $10
	ld   [$1234], sp                                 ; $4739: $08 $34 $12
	jr   nz, jr_023_474e                             ; $473c: $20 $10

jr_023_473e:
	ld   b, d                                        ; $473e: $42
	inc  bc                                          ; $473f: $03
	jr   nz, @+$0a                                   ; $4740: $20 $08

	ld   b, b                                        ; $4742: $40
	inc  bc                                          ; $4743: $03
	db   $10                                         ; $4744: $10
	db   $10                                         ; $4745: $10
	ld   a, [hl-]                                    ; $4746: $3a
	ld   [bc], a                                     ; $4747: $02
	db   $10                                         ; $4748: $10
	ld   [$0238], sp                                 ; $4749: $08 $38 $02
	jr   nz, jr_023_475e                             ; $474c: $20 $10

jr_023_474e:
	ld   d, d                                        ; $474e: $52
	inc  b                                           ; $474f: $04
	jr   nz, jr_023_475a                             ; $4750: $20 $08

	ld   d, b                                        ; $4752: $50
	inc  d                                           ; $4753: $14
	jr   nz, @+$12                                   ; $4754: $20 $10

	ld   b, d                                        ; $4756: $42
	inc  bc                                          ; $4757: $03
	jr   nz, jr_023_4762                             ; $4758: $20 $08

jr_023_475a:
	ld   b, b                                        ; $475a: $40
	inc  bc                                          ; $475b: $03
	jr   nz, jr_023_476e                             ; $475c: $20 $10

jr_023_475e:
	ld   d, d                                        ; $475e: $52
	inc  b                                           ; $475f: $04
	jr   nz, jr_023_476a                             ; $4760: $20 $08

jr_023_4762:
	ld   d, b                                        ; $4762: $50
	inc  b                                           ; $4763: $04
	db   $10                                         ; $4764: $10
	ld   [$223a], sp                                 ; $4765: $08 $3a $22
	db   $10                                         ; $4768: $10
	db   $10                                         ; $4769: $10

jr_023_476a:
	jr   c, jr_023_479e                              ; $476a: $38 $32

	jr   nz, jr_023_477e                             ; $476c: $20 $10

jr_023_476e:
	ld   c, d                                        ; $476e: $4a
	inc  bc                                          ; $476f: $03
	jr   nz, @+$0a                                   ; $4770: $20 $08

	ld   c, b                                        ; $4772: $48
	inc  bc                                          ; $4773: $03
	db   $10                                         ; $4774: $10
	db   $10                                         ; $4775: $10
	ld   a, $02                                      ; $4776: $3e $02
	db   $10                                         ; $4778: $10
	ld   [$023c], sp                                 ; $4779: $08 $3c $02
	jr   @+$12                                       ; $477c: $18 $10

jr_023_477e:
	ld   e, d                                        ; $477e: $5a
	inc  b                                           ; $477f: $04
	jr   jr_023_478a                                 ; $4780: $18 $08

	ld   e, b                                        ; $4782: $58
	inc  d                                           ; $4783: $14
	jr   nz, @+$0b                                   ; $4784: $20 $09

	inc  h                                           ; $4786: $24
	ld   bc, $1120                                   ; $4787: $01 $20 $11

jr_023_478a:
	ld   h, $01                                      ; $478a: $26 $01
	db   $10                                         ; $478c: $10
	ld   [$0020], sp                                 ; $478d: $08 $20 $00
	jr   nz, jr_023_4796                             ; $4790: $20 $04

	sbc  h                                           ; $4792: $9c
	ld   a, [bc]                                     ; $4793: $0a
	jr   nz, jr_023_47aa                             ; $4794: $20 $14

jr_023_4796:
	ld   [hl], $02                                   ; $4796: $36 $02
	jr   nz, jr_023_47a6                             ; $4798: $20 $0c

	inc  [hl]                                        ; $479a: $34
	ld   [bc], a                                     ; $479b: $02
	db   $10                                         ; $479c: $10
	db   $10                                         ; $479d: $10

jr_023_479e:
	ld   [hl+], a                                    ; $479e: $22
	nop                                              ; $479f: $00
	db   $10                                         ; $47a0: $10
	ld   de, $0232                                   ; $47a1: $11 $32 $02
	db   $10                                         ; $47a4: $10
	add  hl, bc                                      ; $47a5: $09

jr_023_47a6:
	jr   nc, jr_023_47ba                             ; $47a6: $30 $12

	db   $10                                         ; $47a8: $10
	db   $10                                         ; $47a9: $10

jr_023_47aa:
	ld   a, [hl+]                                    ; $47aa: $2a
	nop                                              ; $47ab: $00
	db   $10                                         ; $47ac: $10
	ld   [$0028], sp                                 ; $47ad: $08 $28 $00
	jr   nz, jr_023_47c2                             ; $47b0: $20 $10

	ld   l, $01                                      ; $47b2: $2e $01
	jr   nz, jr_023_47be                             ; $47b4: $20 $08

	inc  l                                           ; $47b6: $2c
	ld   bc, $1120                                   ; $47b7: $01 $20 $11

jr_023_47ba:
	ld   a, $02                                      ; $47ba: $3e $02
	jr   nz, @+$0b                                   ; $47bc: $20 $09

jr_023_47be:
	inc  a                                           ; $47be: $3c
	ld   [bc], a                                     ; $47bf: $02
	db   $10                                         ; $47c0: $10
	db   $10                                         ; $47c1: $10

jr_023_47c2:
	ld   a, [hl-]                                    ; $47c2: $3a
	ld   [bc], a                                     ; $47c3: $02
	db   $10                                         ; $47c4: $10
	ld   [$1238], sp                                 ; $47c5: $08 $38 $12
	jr   nz, jr_023_47da                             ; $47c8: $20 $10

	ld   b, [hl]                                     ; $47ca: $46
	ld   bc, $0820                                   ; $47cb: $01 $20 $08
	ld   b, h                                        ; $47ce: $44
	ld   bc, $1010                                   ; $47cf: $01 $10 $10
	ld   b, d                                        ; $47d2: $42
	nop                                              ; $47d3: $00
	db   $10                                         ; $47d4: $10
	ld   [$0040], sp                                 ; $47d5: $08 $40 $00
	jr   nz, jr_023_47ea                             ; $47d8: $20 $10

jr_023_47da:
	ld   d, [hl]                                     ; $47da: $56
	ld   [bc], a                                     ; $47db: $02
	jr   nz, @+$0a                                   ; $47dc: $20 $08

	ld   d, h                                        ; $47de: $54
	ld   [bc], a                                     ; $47df: $02
	db   $10                                         ; $47e0: $10
	db   $10                                         ; $47e1: $10
	ld   d, d                                        ; $47e2: $52
	ld   [bc], a                                     ; $47e3: $02
	db   $10                                         ; $47e4: $10
	ld   [$1250], sp                                 ; $47e5: $08 $50 $12
	jr   nz, jr_023_47fa                             ; $47e8: $20 $10

jr_023_47ea:
	ld   c, [hl]                                     ; $47ea: $4e
	ld   bc, $0820                                   ; $47eb: $01 $20 $08
	ld   c, h                                        ; $47ee: $4c
	ld   bc, $1010                                   ; $47ef: $01 $10 $10
	ld   c, d                                        ; $47f2: $4a
	nop                                              ; $47f3: $00
	db   $10                                         ; $47f4: $10
	ld   [$0048], sp                                 ; $47f5: $08 $48 $00
	jr   nz, jr_023_480a                             ; $47f8: $20 $10

jr_023_47fa:
	ld   e, [hl]                                     ; $47fa: $5e
	ld   [bc], a                                     ; $47fb: $02
	jr   nz, @+$0a                                   ; $47fc: $20 $08

	ld   e, h                                        ; $47fe: $5c
	ld   [bc], a                                     ; $47ff: $02
	db   $10                                         ; $4800: $10
	db   $10                                         ; $4801: $10
	ld   e, d                                        ; $4802: $5a
	ld   [bc], a                                     ; $4803: $02
	db   $10                                         ; $4804: $10
	ld   [$1258], sp                                 ; $4805: $08 $58 $12
	jr   nz, jr_023_481a                             ; $4808: $20 $10

jr_023_480a:
	ld   b, [hl]                                     ; $480a: $46
	ld   bc, $0820                                   ; $480b: $01 $20 $08
	ld   b, h                                        ; $480e: $44
	ld   bc, $1020                                   ; $480f: $01 $20 $10
	ld   d, [hl]                                     ; $4812: $56
	ld   [bc], a                                     ; $4813: $02
	jr   nz, @+$0a                                   ; $4814: $20 $08

	ld   d, h                                        ; $4816: $54
	ld   [bc], a                                     ; $4817: $02
	db   $10                                         ; $4818: $10
	db   $10                                         ; $4819: $10

jr_023_481a:
	ld   a, [de]                                     ; $481a: $1a
	nop                                              ; $481b: $00
	db   $10                                         ; $481c: $10
	ld   [$0018], sp                                 ; $481d: $08 $18 $00
	db   $10                                         ; $4820: $10
	db   $10                                         ; $4821: $10
	ld   e, $02                                      ; $4822: $1e $02
	db   $10                                         ; $4824: $10
	ld   [$121c], sp                                 ; $4825: $08 $1c $12
	jr   nz, jr_023_483a                             ; $4828: $20 $10

	ld   h, [hl]                                     ; $482a: $66
	ld   bc, $0820                                   ; $482b: $01 $20 $08
	ld   h, h                                        ; $482e: $64
	ld   bc, $1010                                   ; $482f: $01 $10 $10
	ld   h, d                                        ; $4832: $62
	nop                                              ; $4833: $00
	db   $10                                         ; $4834: $10
	ld   [$0060], sp                                 ; $4835: $08 $60 $00
	jr   nz, jr_023_484a                             ; $4838: $20 $10

jr_023_483a:
	halt                                             ; $483a: $76
	ld   [bc], a                                     ; $483b: $02
	jr   nz, @+$0a                                   ; $483c: $20 $08

	ld   [hl], h                                     ; $483e: $74
	ld   [bc], a                                     ; $483f: $02
	db   $10                                         ; $4840: $10
	db   $10                                         ; $4841: $10
	ld   [hl], d                                     ; $4842: $72
	ld   [bc], a                                     ; $4843: $02
	db   $10                                         ; $4844: $10
	ld   [$1270], sp                                 ; $4845: $08 $70 $12
	jr   nz, jr_023_485a                             ; $4848: $20 $10

jr_023_484a:
	ld   l, [hl]                                     ; $484a: $6e
	ld   bc, $0820                                   ; $484b: $01 $20 $08
	ld   l, h                                        ; $484e: $6c
	ld   bc, $1010                                   ; $484f: $01 $10 $10
	ld   l, d                                        ; $4852: $6a
	nop                                              ; $4853: $00
	db   $10                                         ; $4854: $10
	ld   [$0068], sp                                 ; $4855: $08 $68 $00
	jr   nz, @+$12                                   ; $4858: $20 $10

jr_023_485a:
	ld   a, [hl]                                     ; $485a: $7e
	ld   [bc], a                                     ; $485b: $02
	jr   nz, @+$0a                                   ; $485c: $20 $08

	ld   a, h                                        ; $485e: $7c
	ld   [bc], a                                     ; $485f: $02
	db   $10                                         ; $4860: $10
	db   $10                                         ; $4861: $10
	ld   a, d                                        ; $4862: $7a
	ld   [bc], a                                     ; $4863: $02
	db   $10                                         ; $4864: $10
	ld   [$1278], sp                                 ; $4865: $08 $78 $12
	ld   hl, $8610                                   ; $4868: $21 $10 $86
	ld   bc, $0821                                   ; $486b: $01 $21 $08
	add  h                                           ; $486e: $84
	ld   bc, $1011                                   ; $486f: $01 $11 $10
	add  d                                           ; $4872: $82
	nop                                              ; $4873: $00
	ld   de, $8008                                   ; $4874: $11 $08 $80
	nop                                              ; $4877: $00
	ld   hl, $9610                                   ; $4878: $21 $10 $96
	ld   [bc], a                                     ; $487b: $02
	ld   hl, $9408                                   ; $487c: $21 $08 $94
	ld   [bc], a                                     ; $487f: $02
	ld   de, $9210                                   ; $4880: $11 $10 $92
	ld   [bc], a                                     ; $4883: $02
	ld   de, $9008                                   ; $4884: $11 $08 $90
	ld   [de], a                                     ; $4887: $12
	dec  e                                           ; $4888: $1d
	db   $10                                         ; $4889: $10
	adc  [hl]                                        ; $488a: $8e
	ld   bc, $081d                                   ; $488b: $01 $1d $08
	adc  h                                           ; $488e: $8c
	ld   bc, $100d                                   ; $488f: $01 $0d $10
	adc  d                                           ; $4892: $8a
	nop                                              ; $4893: $00
	dec  c                                           ; $4894: $0d
	ld   [$0088], sp                                 ; $4895: $08 $88 $00
	dec  e                                           ; $4898: $1d
	db   $10                                         ; $4899: $10
	sbc  [hl]                                        ; $489a: $9e
	ld   [bc], a                                     ; $489b: $02
	dec  e                                           ; $489c: $1d
	ld   [$029c], sp                                 ; $489d: $08 $9c $02
	dec  c                                           ; $48a0: $0d
	db   $10                                         ; $48a1: $10
	sbc  d                                           ; $48a2: $9a
	ld   [bc], a                                     ; $48a3: $02
	dec  c                                           ; $48a4: $0d
	ld   [$0298], sp                                 ; $48a5: $08 $98 $02
	cpl                                              ; $48a8: $2f
	ld   [$0112], sp                                 ; $48a9: $08 $12 $01
	cpl                                              ; $48ac: $2f
	db   $10                                         ; $48ad: $10
	ld   [de], a                                     ; $48ae: $12
	ld   de, $101f                                   ; $48af: $11 $1f $10
	adc  [hl]                                        ; $48b2: $8e
	ld   bc, $081f                                   ; $48b3: $01 $1f $08
	adc  h                                           ; $48b6: $8c
	ld   bc, $100f                                   ; $48b7: $01 $0f $10
	adc  d                                           ; $48ba: $8a
	nop                                              ; $48bb: $00
	rrca                                             ; $48bc: $0f
	ld   [$0088], sp                                 ; $48bd: $08 $88 $00
	rra                                              ; $48c0: $1f
	db   $10                                         ; $48c1: $10
	sbc  [hl]                                        ; $48c2: $9e
	ld   [bc], a                                     ; $48c3: $02
	rra                                              ; $48c4: $1f
	ld   [$029c], sp                                 ; $48c5: $08 $9c $02
	rrca                                             ; $48c8: $0f
	db   $10                                         ; $48c9: $10
	sbc  d                                           ; $48ca: $9a
	ld   [bc], a                                     ; $48cb: $02
	rrca                                             ; $48cc: $0f
	ld   [$0298], sp                                 ; $48cd: $08 $98 $02
	cpl                                              ; $48d0: $2f
	ld   [$0112], sp                                 ; $48d1: $08 $12 $01
	cpl                                              ; $48d4: $2f
	db   $10                                         ; $48d5: $10
	ld   [de], a                                     ; $48d6: $12
	ld   de, $1020                                   ; $48d7: $11 $20 $10
	and  [hl]                                        ; $48da: $a6
	inc  bc                                          ; $48db: $03
	jr   jr_023_48ee                                 ; $48dc: $18 $10

	sbc  [hl]                                        ; $48de: $9e
	ld   a, [bc]                                     ; $48df: $0a
	jr   nz, @+$0a                                   ; $48e0: $20 $08

	and  h                                           ; $48e2: $a4
	inc  bc                                          ; $48e3: $03
	db   $10                                         ; $48e4: $10
	db   $10                                         ; $48e5: $10
	and  d                                           ; $48e6: $a2
	inc  b                                           ; $48e7: $04
	db   $10                                         ; $48e8: $10
	ld   [$14a0], sp                                 ; $48e9: $08 $a0 $14
	ld   [hl+], a                                    ; $48ec: $22
	inc  h                                           ; $48ed: $24

jr_023_48ee:
	xor  [hl]                                        ; $48ee: $ae
	inc  bc                                          ; $48ef: $03
	ld   [hl+], a                                    ; $48f0: $22
	inc  e                                           ; $48f1: $1c
	xor  h                                           ; $48f2: $ac
	inc  bc                                          ; $48f3: $03
	ld   a, [de]                                     ; $48f4: $1a
	inc  hl                                          ; $48f5: $23
	sbc  [hl]                                        ; $48f6: $9e
	ld   a, [bc]                                     ; $48f7: $0a
	ld   [de], a                                     ; $48f8: $12
	inc  h                                           ; $48f9: $24
	xor  d                                           ; $48fa: $aa
	inc  b                                           ; $48fb: $04
	ld   [de], a                                     ; $48fc: $12
	inc  e                                           ; $48fd: $1c
	xor  b                                           ; $48fe: $a8
	inc  d                                           ; $48ff: $14
	ld   [hl+], a                                    ; $4900: $22
	dec  h                                           ; $4901: $25
	or   [hl]                                        ; $4902: $b6
	inc  bc                                          ; $4903: $03
	ld   [hl+], a                                    ; $4904: $22
	dec  e                                           ; $4905: $1d
	or   h                                           ; $4906: $b4
	inc  bc                                          ; $4907: $03
	ld   [de], a                                     ; $4908: $12
	dec  h                                           ; $4909: $25
	or   d                                           ; $490a: $b2
	inc  b                                           ; $490b: $04
	ld   [de], a                                     ; $490c: $12
	dec  e                                           ; $490d: $1d
	or   b                                           ; $490e: $b0
	inc  d                                           ; $490f: $14
	ld   [hl+], a                                    ; $4910: $22
	dec  h                                           ; $4911: $25
	jp   nz, $2203                                   ; $4912: $c2 $03 $22

	dec  e                                           ; $4915: $1d
	ret  nz                                          ; $4916: $c0

	inc  bc                                          ; $4917: $03
	ld   a, [de]                                     ; $4918: $1a
	inc  hl                                          ; $4919: $23
	sbc  [hl]                                        ; $491a: $9e
	ld   a, [bc]                                     ; $491b: $0a
	ld   [de], a                                     ; $491c: $12
	dec  h                                           ; $491d: $25
	cp   [hl]                                        ; $491e: $be
	inc  b                                           ; $491f: $04
	ld   [de], a                                     ; $4920: $12
	dec  e                                           ; $4921: $1d
	cp   h                                           ; $4922: $bc
	inc  d                                           ; $4923: $14
	ld   [hl+], a                                    ; $4924: $22
	dec  h                                           ; $4925: $25
	jp   nz, $2203                                   ; $4926: $c2 $03 $22

	dec  e                                           ; $4929: $1d
	ret  nz                                          ; $492a: $c0

	inc  bc                                          ; $492b: $03
	ld   a, [de]                                     ; $492c: $1a
	inc  hl                                          ; $492d: $23
	sbc  [hl]                                        ; $492e: $9e
	ld   a, [bc]                                     ; $492f: $0a
	ld   [$1427], sp                                 ; $4930: $08 $27 $14
	ld   [bc], a                                     ; $4933: $02
	ld   [de], a                                     ; $4934: $12
	dec  h                                           ; $4935: $25
	cp   [hl]                                        ; $4936: $be
	inc  b                                           ; $4937: $04
	ld   [de], a                                     ; $4938: $12
	dec  e                                           ; $4939: $1d
	cp   h                                           ; $493a: $bc
	inc  d                                           ; $493b: $14
	ld   [hl+], a                                    ; $493c: $22
	dec  h                                           ; $493d: $25
	jp   nz, $2203                                   ; $493e: $c2 $03 $22

	dec  e                                           ; $4941: $1d
	ret  nz                                          ; $4942: $c0

	inc  bc                                          ; $4943: $03
	ld   a, [de]                                     ; $4944: $1a
	inc  hl                                          ; $4945: $23
	sbc  [hl]                                        ; $4946: $9e
	ld   a, [bc]                                     ; $4947: $0a
	ld   [de], a                                     ; $4948: $12
	dec  h                                           ; $4949: $25
	cp   [hl]                                        ; $494a: $be
	inc  b                                           ; $494b: $04
	ld   [de], a                                     ; $494c: $12
	dec  e                                           ; $494d: $1d
	cp   h                                           ; $494e: $bc
	inc  b                                           ; $494f: $04
	rlca                                             ; $4950: $07
	add  hl, hl                                      ; $4951: $29
	ld   d, $12                                      ; $4952: $16 $12
	daa                                              ; $4954: $27
	inc  h                                           ; $4955: $24
	sbc  $03                                         ; $4956: $de $03
	daa                                              ; $4958: $27
	inc  e                                           ; $4959: $1c
	call c, $1f03                                    ; $495a: $dc $03 $1f

jr_023_495d:
	inc  hl                                          ; $495d: $23
	sbc  [hl]                                        ; $495e: $9e
	ld   a, [bc]                                     ; $495f: $0a
	rla                                              ; $4960: $17
	inc  h                                           ; $4961: $24
	jp   c, $1704                                    ; $4962: $da $04 $17

	inc  e                                           ; $4965: $1c
	ret  c                                           ; $4966: $d8

	inc  d                                           ; $4967: $14
	jr   nz, @+$12                                   ; $4968: $20 $10

	add  h                                           ; $496a: $84
	dec  bc                                          ; $496b: $0b
	jr   jr_023_497e                                 ; $496c: $18 $10

	sbc  [hl]                                        ; $496e: $9e
	ld   a, [bc]                                     ; $496f: $0a
	jr   nz, @+$0a                                   ; $4970: $20 $08

	add  d                                           ; $4972: $82
	dec  bc                                          ; $4973: $0b
	db   $10                                         ; $4974: $10
	db   $10                                         ; $4975: $10
	add  b                                           ; $4976: $80
	inc  c                                           ; $4977: $0c
	db   $10                                         ; $4978: $10
	ld   [$14a0], sp                                 ; $4979: $08 $a0 $14
	jr   nz, @+$12                                   ; $497c: $20 $10

jr_023_497e:
	adc  b                                           ; $497e: $88
	dec  bc                                          ; $497f: $0b
	jr   jr_023_4992                                 ; $4980: $18 $10

	sbc  [hl]                                        ; $4982: $9e
	ld   a, [bc]                                     ; $4983: $0a
	db   $10                                         ; $4984: $10
	db   $10                                         ; $4985: $10
	add  [hl]                                        ; $4986: $86
	inc  c                                           ; $4987: $0c
	jr   nz, jr_023_4992                             ; $4988: $20 $08

	add  d                                           ; $498a: $82
	dec  bc                                          ; $498b: $0b
	db   $10                                         ; $498c: $10
	ld   [$14a0], sp                                 ; $498d: $08 $a0 $14
	jr   nz, jr_023_49a3                             ; $4990: $20 $11

jr_023_4992:
	adc  [hl]                                        ; $4992: $8e
	dec  bc                                          ; $4993: $0b
	jr   nz, jr_023_499f                             ; $4994: $20 $09

	adc  h                                           ; $4996: $8c
	dec  bc                                          ; $4997: $0b
	db   $10                                         ; $4998: $10
	ld   [$04b8], sp                                 ; $4999: $08 $b8 $04
	db   $10                                         ; $499c: $10
	db   $10                                         ; $499d: $10
	adc  d                                           ; $499e: $8a

jr_023_499f:
	inc  e                                           ; $499f: $1c
	jr   nz, @+$12                                   ; $49a0: $20 $10

	sub  d                                           ; $49a2: $92

jr_023_49a3:
	dec  bc                                          ; $49a3: $0b
	jr   jr_023_49b6                                 ; $49a4: $18 $10

	sbc  [hl]                                        ; $49a6: $9e
	ld   a, [bc]                                     ; $49a7: $0a
	jr   nz, @+$1a                                   ; $49a8: $20 $18

	sub  h                                           ; $49aa: $94
	dec  bc                                          ; $49ab: $0b
	jr   nz, jr_023_49b6                             ; $49ac: $20 $08

	sub  b                                           ; $49ae: $90
	dec  bc                                          ; $49af: $0b
	db   $10                                         ; $49b0: $10
	ld   [$04b8], sp                                 ; $49b1: $08 $b8 $04
	db   $10                                         ; $49b4: $10
	db   $10                                         ; $49b5: $10

jr_023_49b6:
	adc  d                                           ; $49b6: $8a
	inc  e                                           ; $49b7: $1c
	jr   nz, @+$12                                   ; $49b8: $20 $10

	sbc  b                                           ; $49ba: $98
	dec  bc                                          ; $49bb: $0b
	jr   jr_023_49ce                                 ; $49bc: $18 $10

	sbc  [hl]                                        ; $49be: $9e
	ld   a, [bc]                                     ; $49bf: $0a
	db   $10                                         ; $49c0: $10
	jr   jr_023_495d                                 ; $49c1: $18 $9a

	ld   [$1010], sp                                 ; $49c3: $08 $10 $10
	sub  [hl]                                        ; $49c6: $96
	inc  c                                           ; $49c7: $0c
	db   $10                                         ; $49c8: $10
	ld   [$04b8], sp                                 ; $49c9: $08 $b8 $04
	jr   nz, jr_023_49d6                             ; $49cc: $20 $08

jr_023_49ce:
	sub  b                                           ; $49ce: $90
	dec  de                                          ; $49cf: $1b
	db   $10                                         ; $49d0: $10
	ld   [$04b8], sp                                 ; $49d1: $08 $b8 $04
	db   $10                                         ; $49d4: $10
	db   $10                                         ; $49d5: $10

jr_023_49d6:
	adc  d                                           ; $49d6: $8a
	inc  c                                           ; $49d7: $0c
	jr   nz, jr_023_49eb                             ; $49d8: $20 $11

	add  $03                                         ; $49da: $c6 $03
	jr   nz, jr_023_49e7                             ; $49dc: $20 $09

	call nz, $2013                                   ; $49de: $c4 $13 $20
	ld   de, $03d2                                   ; $49e1: $11 $d2 $03
	jr   nz, @+$0b                                   ; $49e4: $20 $09

	ret  nc                                          ; $49e6: $d0

jr_023_49e7:
	inc  bc                                          ; $49e7: $03
	db   $10                                         ; $49e8: $10
	db   $10                                         ; $49e9: $10
	cp   d                                           ; $49ea: $ba

jr_023_49eb:
	inc  b                                           ; $49eb: $04
	db   $10                                         ; $49ec: $10
	ld   [$14b8], sp                                 ; $49ed: $08 $b8 $14
	jr   nz, jr_023_4a01                             ; $49f0: $20 $0f

	ld   [bc], a                                     ; $49f2: $02
	dec  b                                           ; $49f3: $05
	jr   nz, jr_023_49fd                             ; $49f4: $20 $07

	nop                                              ; $49f6: $00
	dec  d                                           ; $49f7: $15
	cpl                                              ; $49f8: $2f
	ld   [$0512], sp                                 ; $49f9: $08 $12 $05
	cpl                                              ; $49fc: $2f

jr_023_49fd:
	dec  bc                                          ; $49fd: $0b
	ld   [de], a                                     ; $49fe: $12
	dec  b                                           ; $49ff: $05
	dec  e                                           ; $4a00: $1d

jr_023_4a01:
	db   $10                                         ; $4a01: $10
	ld   b, $05                                      ; $4a02: $06 $05
	dec  e                                           ; $4a04: $1d
	ld   [$1504], sp                                 ; $4a05: $08 $04 $15
	cpl                                              ; $4a08: $2f
	ld   [$0512], sp                                 ; $4a09: $08 $12 $05
	cpl                                              ; $4a0c: $2f
	dec  bc                                          ; $4a0d: $0b
	ld   [de], a                                     ; $4a0e: $12
	dec  b                                           ; $4a0f: $05
	dec  de                                          ; $4a10: $1b
	db   $10                                         ; $4a11: $10
	ld   b, $05                                      ; $4a12: $06 $05
	dec  de                                          ; $4a14: $1b
	ld   [$1504], sp                                 ; $4a15: $08 $04 $15
	cpl                                              ; $4a18: $2f
	ld   [$0512], sp                                 ; $4a19: $08 $12 $05
	cpl                                              ; $4a1c: $2f
	dec  bc                                          ; $4a1d: $0b
	ld   [de], a                                     ; $4a1e: $12
	dec  b                                           ; $4a1f: $05
	add  hl, de                                      ; $4a20: $19
	db   $10                                         ; $4a21: $10
	ld   b, $05                                      ; $4a22: $06 $05
	add  hl, de                                      ; $4a24: $19
	ld   [$1504], sp                                 ; $4a25: $08 $04 $15
	cpl                                              ; $4a28: $2f
	add  hl, bc                                      ; $4a29: $09
	ld   [de], a                                     ; $4a2a: $12
	dec  b                                           ; $4a2b: $05
	cpl                                              ; $4a2c: $2f
	ld   a, [bc]                                     ; $4a2d: $0a
	ld   [de], a                                     ; $4a2e: $12
	dec  b                                           ; $4a2f: $05
	rla                                              ; $4a30: $17
	db   $10                                         ; $4a31: $10
	ld   b, $05                                      ; $4a32: $06 $05
	rla                                              ; $4a34: $17
	ld   [$1504], sp                                 ; $4a35: $08 $04 $15
	cpl                                              ; $4a38: $2f
	add  hl, bc                                      ; $4a39: $09
	ld   [de], a                                     ; $4a3a: $12
	dec  b                                           ; $4a3b: $05
	cpl                                              ; $4a3c: $2f
	ld   a, [bc]                                     ; $4a3d: $0a
	ld   [de], a                                     ; $4a3e: $12
	dec  b                                           ; $4a3f: $05
	dec  d                                           ; $4a40: $15
	db   $10                                         ; $4a41: $10
	ld   b, $05                                      ; $4a42: $06 $05
	dec  d                                           ; $4a44: $15
	ld   [$1504], sp                                 ; $4a45: $08 $04 $15
	cpl                                              ; $4a48: $2f
	add  hl, bc                                      ; $4a49: $09
	ld   [de], a                                     ; $4a4a: $12
	dec  b                                           ; $4a4b: $05
	cpl                                              ; $4a4c: $2f
	ld   a, [bc]                                     ; $4a4d: $0a
	ld   [de], a                                     ; $4a4e: $12
	dec  b                                           ; $4a4f: $05
	inc  de                                          ; $4a50: $13
	db   $10                                         ; $4a51: $10
	ld   b, $05                                      ; $4a52: $06 $05
	inc  de                                          ; $4a54: $13
	ld   [$1504], sp                                 ; $4a55: $08 $04 $15
	cpl                                              ; $4a58: $2f
	ld   a, [bc]                                     ; $4a59: $0a
	db   $10                                         ; $4a5a: $10
	dec  b                                           ; $4a5b: $05
	ld   de, $0610                                   ; $4a5c: $11 $10 $06
	dec  b                                           ; $4a5f: $05
	ld   de, $0408                                   ; $4a60: $11 $08 $04
	dec  d                                           ; $4a63: $15
	cpl                                              ; $4a64: $2f
	ld   a, [bc]                                     ; $4a65: $0a
	db   $10                                         ; $4a66: $10
	dec  b                                           ; $4a67: $05
	rrca                                             ; $4a68: $0f
	db   $10                                         ; $4a69: $10
	ld   b, $05                                      ; $4a6a: $06 $05
	rrca                                             ; $4a6c: $0f
	ld   [$1504], sp                                 ; $4a6d: $08 $04 $15
	cpl                                              ; $4a70: $2f
	ld   a, [bc]                                     ; $4a71: $0a
	db   $10                                         ; $4a72: $10
	dec  b                                           ; $4a73: $05
	dec  c                                           ; $4a74: $0d
	db   $10                                         ; $4a75: $10
	ld   b, $05                                      ; $4a76: $06 $05
	dec  c                                           ; $4a78: $0d
	ld   [$1504], sp                                 ; $4a79: $08 $04 $15
	cpl                                              ; $4a7c: $2f
	rlca                                             ; $4a7d: $07
	db   $10                                         ; $4a7e: $10
	dec  b                                           ; $4a7f: $05
	db   $10                                         ; $4a80: $10
	dec  c                                           ; $4a81: $0d
	ld   b, $05                                      ; $4a82: $06 $05
	db   $10                                         ; $4a84: $10
	dec  b                                           ; $4a85: $05
	inc  b                                           ; $4a86: $04
	dec  d                                           ; $4a87: $15
	cpl                                              ; $4a88: $2f
	dec  b                                           ; $4a89: $05
	db   $10                                         ; $4a8a: $10
	dec  b                                           ; $4a8b: $05
	cpl                                              ; $4a8c: $2f
	inc  bc                                          ; $4a8d: $03
	db   $10                                         ; $4a8e: $10
	dec  b                                           ; $4a8f: $05
	inc  de                                          ; $4a90: $13
	ld   a, [bc]                                     ; $4a91: $0a
	ld   b, $05                                      ; $4a92: $06 $05
	inc  de                                          ; $4a94: $13
	ld   [bc], a                                     ; $4a95: $02
	inc  b                                           ; $4a96: $04
	dec  d                                           ; $4a97: $15
	cpl                                              ; $4a98: $2f
	ld   bc, $0510                                   ; $4a99: $01 $10 $05
	db   $10                                         ; $4a9c: $10
	rlca                                             ; $4a9d: $07
	ld   b, $05                                      ; $4a9e: $06 $05
	db   $10                                         ; $4aa0: $10
	rst  $38                                         ; $4aa1: $ff
	inc  b                                           ; $4aa2: $04
	dec  d                                           ; $4aa3: $15
	cpl                                              ; $4aa4: $2f
	cp   $10                                         ; $4aa5: $fe $10
	dec  b                                           ; $4aa7: $05
	dec  c                                           ; $4aa8: $0d
	inc  b                                           ; $4aa9: $04
	ld   b, $05                                      ; $4aaa: $06 $05
	dec  c                                           ; $4aac: $0d
	db   $fc                                         ; $4aad: $fc
	inc  b                                           ; $4aae: $04
	dec  d                                           ; $4aaf: $15
	cpl                                              ; $4ab0: $2f
	ld   bc, $0510                                   ; $4ab1: $01 $10 $05
	ld   a, [bc]                                     ; $4ab4: $0a
	rlca                                             ; $4ab5: $07
	ld   b, $05                                      ; $4ab6: $06 $05
	ld   a, [bc]                                     ; $4ab8: $0a
	rst  $38                                         ; $4ab9: $ff
	inc  b                                           ; $4aba: $04
	dec  d                                           ; $4abb: $15
	cpl                                              ; $4abc: $2f
	inc  b                                           ; $4abd: $04
	db   $10                                         ; $4abe: $10
	dec  b                                           ; $4abf: $05
	rlca                                             ; $4ac0: $07
	ld   a, [bc]                                     ; $4ac1: $0a
	ld   b, $05                                      ; $4ac2: $06 $05
	rlca                                             ; $4ac4: $07
	ld   [bc], a                                     ; $4ac5: $02
	inc  b                                           ; $4ac6: $04
	dec  d                                           ; $4ac7: $15
	cpl                                              ; $4ac8: $2f
	rlca                                             ; $4ac9: $07
	db   $10                                         ; $4aca: $10
	dec  b                                           ; $4acb: $05
	ld   a, [bc]                                     ; $4acc: $0a
	dec  c                                           ; $4acd: $0d
	ld   b, $05                                      ; $4ace: $06 $05
	ld   a, [bc]                                     ; $4ad0: $0a
	dec  b                                           ; $4ad1: $05
	inc  b                                           ; $4ad2: $04
	dec  d                                           ; $4ad3: $15
	cpl                                              ; $4ad4: $2f
	dec  c                                           ; $4ad5: $0d
	db   $10                                         ; $4ad6: $10
	dec  b                                           ; $4ad7: $05
	db   $10                                         ; $4ad8: $10
	inc  de                                          ; $4ad9: $13
	ld   b, $05                                      ; $4ada: $06 $05
	db   $10                                         ; $4adc: $10
	dec  bc                                          ; $4add: $0b
	inc  b                                           ; $4ade: $04
	dec  d                                           ; $4adf: $15
	cpl                                              ; $4ae0: $2f
	ld   de, $0510                                   ; $4ae1: $11 $10 $05
	cpl                                              ; $4ae4: $2f
	rrca                                             ; $4ae5: $0f
	db   $10                                         ; $4ae6: $10
	dec  b                                           ; $4ae7: $05
	inc  de                                          ; $4ae8: $13
	ld   d, $06                                      ; $4ae9: $16 $06
	dec  b                                           ; $4aeb: $05
	inc  de                                          ; $4aec: $13
	ld   c, $04                                      ; $4aed: $0e $04
	dec  d                                           ; $4aef: $15
	cpl                                              ; $4af0: $2f
	inc  de                                          ; $4af1: $13
	db   $10                                         ; $4af2: $10
	dec  b                                           ; $4af3: $05
	db   $10                                         ; $4af4: $10
	add  hl, de                                      ; $4af5: $19
	ld   b, $05                                      ; $4af6: $06 $05
	db   $10                                         ; $4af8: $10
	ld   de, $1504                                   ; $4af9: $11 $04 $15
	cpl                                              ; $4afc: $2f
	ld   d, $10                                      ; $4afd: $16 $10
	dec  b                                           ; $4aff: $05
	dec  c                                           ; $4b00: $0d
	inc  e                                           ; $4b01: $1c
	ld   b, $05                                      ; $4b02: $06 $05
	dec  c                                           ; $4b04: $0d
	inc  d                                           ; $4b05: $14
	inc  b                                           ; $4b06: $04
	dec  d                                           ; $4b07: $15
	cpl                                              ; $4b08: $2f
	inc  de                                          ; $4b09: $13
	db   $10                                         ; $4b0a: $10
	dec  b                                           ; $4b0b: $05
	ld   a, [bc]                                     ; $4b0c: $0a
	add  hl, de                                      ; $4b0d: $19
	ld   b, $05                                      ; $4b0e: $06 $05
	ld   a, [bc]                                     ; $4b10: $0a
	ld   de, $1504                                   ; $4b11: $11 $04 $15
	cpl                                              ; $4b14: $2f
	db   $10                                         ; $4b15: $10
	db   $10                                         ; $4b16: $10
	dec  b                                           ; $4b17: $05
	rlca                                             ; $4b18: $07
	ld   d, $06                                      ; $4b19: $16 $06
	dec  b                                           ; $4b1b: $05
	rlca                                             ; $4b1c: $07
	ld   c, $04                                      ; $4b1d: $0e $04
	dec  d                                           ; $4b1f: $15
	cpl                                              ; $4b20: $2f
	dec  c                                           ; $4b21: $0d
	db   $10                                         ; $4b22: $10
	dec  b                                           ; $4b23: $05
	ld   a, [bc]                                     ; $4b24: $0a
	inc  de                                          ; $4b25: $13
	ld   b, $05                                      ; $4b26: $06 $05
	ld   a, [bc]                                     ; $4b28: $0a
	dec  bc                                          ; $4b29: $0b
	inc  b                                           ; $4b2a: $04
	dec  d                                           ; $4b2b: $15
	cpl                                              ; $4b2c: $2f
	ld   a, [bc]                                     ; $4b2d: $0a
	db   $10                                         ; $4b2e: $10
	dec  b                                           ; $4b2f: $05
	dec  c                                           ; $4b30: $0d
	db   $10                                         ; $4b31: $10
	ld   a, [bc]                                     ; $4b32: $0a
	dec  b                                           ; $4b33: $05
	dec  c                                           ; $4b34: $0d
	ld   [$1508], sp                                 ; $4b35: $08 $08 $15
	cpl                                              ; $4b38: $2f
	ld   a, [bc]                                     ; $4b39: $0a
	db   $10                                         ; $4b3a: $10
	dec  b                                           ; $4b3b: $05
	dec  c                                           ; $4b3c: $0d
	db   $10                                         ; $4b3d: $10
	ld   c, $05                                      ; $4b3e: $0e $05
	dec  c                                           ; $4b40: $0d
	ld   [$150c], sp                                 ; $4b41: $08 $0c $15
	cpl                                              ; $4b44: $2f
	ld   a, [bc]                                     ; $4b45: $0a
	db   $10                                         ; $4b46: $10
	dec  b                                           ; $4b47: $05
	dec  c                                           ; $4b48: $0d
	inc  bc                                          ; $4b49: $03
	ld   a, [bc]                                     ; $4b4a: $0a
	dec  h                                           ; $4b4b: $25
	dec  c                                           ; $4b4c: $0d
	dec  bc                                          ; $4b4d: $0b
	ld   [$0035], sp                                 ; $4b4e: $08 $35 $00
	ld   [$0032], sp                                 ; $4b51: $08 $32 $00
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	jr   nc, jr_023_4b58                             ; $4b56: $30 $00

jr_023_4b58:
	db   $10                                         ; $4b58: $10
	ld   [$0506], sp                                 ; $4b59: $08 $06 $05
	stop                                             ; $4b5c: $10 $00
	inc  b                                           ; $4b5e: $04
	dec  b                                           ; $4b5f: $05
	nop                                              ; $4b60: $00
	ld   [$0402], sp                                 ; $4b61: $08 $02 $04
	nop                                              ; $4b64: $00
	nop                                              ; $4b65: $00
	nop                                              ; $4b66: $00
	inc  d                                           ; $4b67: $14
	nop                                              ; $4b68: $00
	ld   [$0036], sp                                 ; $4b69: $08 $36 $00
	nop                                              ; $4b6c: $00
	nop                                              ; $4b6d: $00
	inc  [hl]                                        ; $4b6e: $34
	nop                                              ; $4b6f: $00
	db   $10                                         ; $4b70: $10
	ld   [$0506], sp                                 ; $4b71: $08 $06 $05
	stop                                             ; $4b74: $10 $00
	inc  b                                           ; $4b76: $04
	dec  b                                           ; $4b77: $05
	nop                                              ; $4b78: $00
	ld   [$040a], sp                                 ; $4b79: $08 $0a $04
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	ld   [$0014], sp                                 ; $4b7e: $08 $14 $00
	ld   [$003a], sp                                 ; $4b81: $08 $3a $00
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	jr   c, jr_023_4b88                              ; $4b86: $38 $00

jr_023_4b88:
	db   $10                                         ; $4b88: $10
	ld   [$0506], sp                                 ; $4b89: $08 $06 $05
	stop                                             ; $4b8c: $10 $00
	inc  b                                           ; $4b8e: $04
	dec  b                                           ; $4b8f: $05
	nop                                              ; $4b90: $00
	ld   [$040e], sp                                 ; $4b91: $08 $0e $04
	nop                                              ; $4b94: $00
	nop                                              ; $4b95: $00
	inc  c                                           ; $4b96: $0c
	inc  d                                           ; $4b97: $14
	nop                                              ; $4b98: $00
	ld   [$003e], sp                                 ; $4b99: $08 $3e $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	inc  a                                           ; $4b9e: $3c
	nop                                              ; $4b9f: $00
	db   $10                                         ; $4ba0: $10
	ld   [$0506], sp                                 ; $4ba1: $08 $06 $05
	stop                                             ; $4ba4: $10 $00
	inc  b                                           ; $4ba6: $04
	dec  b                                           ; $4ba7: $05
	nop                                              ; $4ba8: $00
	ld   [$0412], sp                                 ; $4ba9: $08 $12 $04
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	db   $10                                         ; $4bae: $10
	inc  d                                           ; $4baf: $14
	nop                                              ; $4bb0: $00
	ld   [$0042], sp                                 ; $4bb1: $08 $42 $00
	nop                                              ; $4bb4: $00
	nop                                              ; $4bb5: $00
	ld   b, b                                        ; $4bb6: $40
	nop                                              ; $4bb7: $00
	db   $10                                         ; $4bb8: $10
	ld   [$0506], sp                                 ; $4bb9: $08 $06 $05
	stop                                             ; $4bbc: $10 $00
	inc  b                                           ; $4bbe: $04
	dec  b                                           ; $4bbf: $05
	nop                                              ; $4bc0: $00
	ld   [$0416], sp                                 ; $4bc1: $08 $16 $04
	nop                                              ; $4bc4: $00
	nop                                              ; $4bc5: $00
	inc  d                                           ; $4bc6: $14
	inc  d                                           ; $4bc7: $14
	nop                                              ; $4bc8: $00
	ld   [$0046], sp                                 ; $4bc9: $08 $46 $00
	nop                                              ; $4bcc: $00
	nop                                              ; $4bcd: $00
	ld   b, h                                        ; $4bce: $44
	nop                                              ; $4bcf: $00
	db   $10                                         ; $4bd0: $10
	ld   [$051e], sp                                 ; $4bd1: $08 $1e $05
	stop                                             ; $4bd4: $10 $00
	inc  e                                           ; $4bd6: $1c
	dec  b                                           ; $4bd7: $05
	nop                                              ; $4bd8: $00
	ld   [$041a], sp                                 ; $4bd9: $08 $1a $04
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	jr   jr_023_4bf4                                 ; $4bde: $18 $14

	nop                                              ; $4be0: $00
	ld   [$004a], sp                                 ; $4be1: $08 $4a $00
	nop                                              ; $4be4: $00
	nop                                              ; $4be5: $00
	ld   c, b                                        ; $4be6: $48
	nop                                              ; $4be7: $00
	db   $10                                         ; $4be8: $10
	ld   [$0526], sp                                 ; $4be9: $08 $26 $05
	stop                                             ; $4bec: $10 $00
	inc  h                                           ; $4bee: $24
	dec  b                                           ; $4bef: $05
	nop                                              ; $4bf0: $00
	ld   [$0422], sp                                 ; $4bf1: $08 $22 $04

jr_023_4bf4:
	nop                                              ; $4bf4: $00
	nop                                              ; $4bf5: $00
	jr   nz, jr_023_4c0c                             ; $4bf6: $20 $14

	nop                                              ; $4bf8: $00
	ld   [$004e], sp                                 ; $4bf9: $08 $4e $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	ld   c, h                                        ; $4bfe: $4c
	nop                                              ; $4bff: $00
	db   $10                                         ; $4c00: $10
	ld   [$052e], sp                                 ; $4c01: $08 $2e $05
	stop                                             ; $4c04: $10 $00
	inc  l                                           ; $4c06: $2c
	dec  b                                           ; $4c07: $05
	nop                                              ; $4c08: $00
	ld   [$042a], sp                                 ; $4c09: $08 $2a $04

jr_023_4c0c:
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	jr   z, jr_023_4c24                              ; $4c0e: $28 $14

	db   $10                                         ; $4c10: $10
	ld   [$015e], sp                                 ; $4c11: $08 $5e $01
	stop                                             ; $4c14: $10 $00
	ld   e, h                                        ; $4c16: $5c
	ld   bc, $0810                                   ; $4c17: $01 $10 $08
	ld   e, d                                        ; $4c1a: $5a
	ld   [bc], a                                     ; $4c1b: $02
	stop                                             ; $4c1c: $10 $00
	ld   e, b                                        ; $4c1e: $58
	ld   [bc], a                                     ; $4c1f: $02
	nop                                              ; $4c20: $00
	ld   [$0056], sp                                 ; $4c21: $08 $56 $00

jr_023_4c24:
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	ld   d, h                                        ; $4c26: $54
	nop                                              ; $4c27: $00
	ld   [$52f8], sp                                 ; $4c28: $08 $f8 $52
	nop                                              ; $4c2b: $00
	nop                                              ; $4c2c: $00
	ldh  a, [$50]                                    ; $4c2d: $f0 $50
	db   $10                                         ; $4c2f: $10
	stop                                             ; $4c30: $10 $00
	ld   l, d                                        ; $4c32: $6a
	ld   bc, $0810                                   ; $4c33: $01 $10 $08
	ld   l, h                                        ; $4c36: $6c
	ld   bc, $0910                                   ; $4c37: $01 $10 $09
	ld   l, b                                        ; $4c3a: $68
	ld   [bc], a                                     ; $4c3b: $02
	db   $10                                         ; $4c3c: $10
	ld   bc, $0266                                   ; $4c3d: $01 $66 $02
	nop                                              ; $4c40: $00
	di                                               ; $4c41: $f3
	ld   h, b                                        ; $4c42: $60
	ld   bc, $f906                                   ; $4c43: $01 $06 $f9
	ld   h, d                                        ; $4c46: $62
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	ld   bc, $0064                                   ; $4c49: $01 $64 $00
	nop                                              ; $4c4c: $00
	add  hl, bc                                      ; $4c4d: $09
	ld   d, [hl]                                     ; $4c4e: $56
	db   $10                                         ; $4c4f: $10
	db   $10                                         ; $4c50: $10
	ld   [$015e], sp                                 ; $4c51: $08 $5e $01
	stop                                             ; $4c54: $10 $00
	ld   [hl], h                                     ; $4c56: $74
	ld   bc, $0810                                   ; $4c57: $01 $10 $08
	ld   e, d                                        ; $4c5a: $5a
	ld   [bc], a                                     ; $4c5b: $02
	nop                                              ; $4c5c: $00
	ld   [$0056], sp                                 ; $4c5d: $08 $56 $00
	stop                                             ; $4c60: $10 $00
	ld   [hl], d                                     ; $4c62: $72
	ld   [bc], a                                     ; $4c63: $02
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	ld   [hl], b                                     ; $4c66: $70
	nop                                              ; $4c67: $00
	ld   [$6ef8], sp                                 ; $4c68: $08 $f8 $6e
	db   $10                                         ; $4c6b: $10
	db   $10                                         ; $4c6c: $10
	ld   [$015e], sp                                 ; $4c6d: $08 $5e $01
	stop                                             ; $4c70: $10 $00
	ld   e, h                                        ; $4c72: $5c
	ld   bc, $0810                                   ; $4c73: $01 $10 $08
	ld   e, d                                        ; $4c76: $5a
	ld   [bc], a                                     ; $4c77: $02
	stop                                             ; $4c78: $10 $00
	ld   e, b                                        ; $4c7a: $58
	ld   [bc], a                                     ; $4c7b: $02
	nop                                              ; $4c7c: $00
	ld   [$0056], sp                                 ; $4c7d: $08 $56 $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	ld   a, b                                        ; $4c82: $78
	nop                                              ; $4c83: $00
	ld   [$76f8], sp                                 ; $4c84: $08 $f8 $76
	db   $10                                         ; $4c87: $10
	db   $10                                         ; $4c88: $10
	ld   [$0182], sp                                 ; $4c89: $08 $82 $01
	stop                                             ; $4c8c: $10 $00
	add  b                                           ; $4c8e: $80
	ld   bc, $0800                                   ; $4c8f: $01 $00 $08
	ld   d, [hl]                                     ; $4c92: $56
	nop                                              ; $4c93: $00
	db   $10                                         ; $4c94: $10
	ld   [$027e], sp                                 ; $4c95: $08 $7e $02
	stop                                             ; $4c98: $10 $00
	ld   a, h                                        ; $4c9a: $7c
	ld   [bc], a                                     ; $4c9b: $02
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	ld   a, d                                        ; $4c9e: $7a

jr_023_4c9f:
	db   $10                                         ; $4c9f: $10
	db   $10                                         ; $4ca0: $10
	ld   [$0084], sp                                 ; $4ca1: $08 $84 $00
	stop                                             ; $4ca4: $10 $00
	add  b                                           ; $4ca6: $80
	ld   bc, $0810                                   ; $4ca7: $01 $10 $08
	add  d                                           ; $4caa: $82
	ld   bc, $0810                                   ; $4cab: $01 $10 $08
	ld   a, [hl]                                     ; $4cae: $7e
	ld   [bc], a                                     ; $4caf: $02
	stop                                             ; $4cb0: $10 $00
	ld   a, h                                        ; $4cb2: $7c
	ld   [bc], a                                     ; $4cb3: $02
	nop                                              ; $4cb4: $00
	ld   [$0056], sp                                 ; $4cb5: $08 $56 $00
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	ld   a, d                                        ; $4cba: $7a
	db   $10                                         ; $4cbb: $10
	db   $10                                         ; $4cbc: $10
	ld   [$0182], sp                                 ; $4cbd: $08 $82 $01
	stop                                             ; $4cc0: $10 $00
	add  b                                           ; $4cc2: $80
	ld   bc, $1010                                   ; $4cc3: $01 $10 $10
	adc  b                                           ; $4cc6: $88
	nop                                              ; $4cc7: $00
	db   $10                                         ; $4cc8: $10
	ld   [$0286], sp                                 ; $4cc9: $08 $86 $02
	nop                                              ; $4ccc: $00
	ld   [$0056], sp                                 ; $4ccd: $08 $56 $00
	stop                                             ; $4cd0: $10 $00
	ld   a, h                                        ; $4cd2: $7c
	ld   [bc], a                                     ; $4cd3: $02
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	ld   a, d                                        ; $4cd6: $7a
	db   $10                                         ; $4cd7: $10
	di                                               ; $4cd8: $f3
	ld   a, [bc]                                     ; $4cd9: $0a
	or   b                                           ; $4cda: $b0
	ld   [$0af3], sp                                 ; $4cdb: $08 $f3 $0a
	xor  [hl]                                        ; $4cde: $ae
	add  hl, bc                                      ; $4cdf: $09
	db   $10                                         ; $4ce0: $10
	ld   [$0182], sp                                 ; $4ce1: $08 $82 $01
	db   $10                                         ; $4ce4: $10
	jr   @-$70                                       ; $4ce5: $18 $8e

	nop                                              ; $4ce7: $00
	stop                                             ; $4ce8: $10 $00
	add  b                                           ; $4cea: $80
	ld   bc, $1010                                   ; $4ceb: $01 $10 $10
	adc  h                                           ; $4cee: $8c
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	ld   [$008a], sp                                 ; $4cf1: $08 $8a $00
	db   $10                                         ; $4cf4: $10
	ld   [$027e], sp                                 ; $4cf5: $08 $7e $02
	stop                                             ; $4cf8: $10 $00
	ld   a, h                                        ; $4cfa: $7c
	ld   [bc], a                                     ; $4cfb: $02
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	ld   a, d                                        ; $4cfe: $7a
	db   $10                                         ; $4cff: $10
	or   $0a                                         ; $4d00: $f6 $0a
	or   b                                           ; $4d02: $b0
	ld   [$0af6], sp                                 ; $4d03: $08 $f6 $0a
	xor  [hl]                                        ; $4d06: $ae
	add  hl, bc                                      ; $4d07: $09
	db   $10                                         ; $4d08: $10
	jr   jr_023_4c9f                                 ; $4d09: $18 $94

	nop                                              ; $4d0b: $00
	db   $10                                         ; $4d0c: $10
	ld   [$0182], sp                                 ; $4d0d: $08 $82 $01
	stop                                             ; $4d10: $10 $00
	add  b                                           ; $4d12: $80
	ld   bc, $1010                                   ; $4d13: $01 $10 $10
	sub  d                                           ; $4d16: $92
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	ld   [$0090], sp                                 ; $4d19: $08 $90 $00
	db   $10                                         ; $4d1c: $10
	ld   [$027e], sp                                 ; $4d1d: $08 $7e $02
	stop                                             ; $4d20: $10 $00
	ld   a, h                                        ; $4d22: $7c
	ld   [bc], a                                     ; $4d23: $02
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	ld   a, d                                        ; $4d26: $7a
	db   $10                                         ; $4d27: $10
	db   $10                                         ; $4d28: $10
	ld   [$01a0], sp                                 ; $4d29: $08 $a0 $01
	stop                                             ; $4d2c: $10 $00
	sbc  [hl]                                        ; $4d2e: $9e
	ld   bc, $0810                                   ; $4d2f: $01 $10 $08
	sbc  h                                           ; $4d32: $9c
	ld   [bc], a                                     ; $4d33: $02
	stop                                             ; $4d34: $10 $00
	sbc  d                                           ; $4d36: $9a
	ld   [bc], a                                     ; $4d37: $02
	nop                                              ; $4d38: $00
	ld   [$0098], sp                                 ; $4d39: $08 $98 $00
	nop                                              ; $4d3c: $00
	nop                                              ; $4d3d: $00
	sub  [hl]                                        ; $4d3e: $96
	db   $10                                         ; $4d3f: $10
	db   $10                                         ; $4d40: $10
	ld   [$01a0], sp                                 ; $4d41: $08 $a0 $01
	stop                                             ; $4d44: $10 $00
	sbc  [hl]                                        ; $4d46: $9e
	ld   bc, $f800                                   ; $4d47: $01 $00 $f8
	and  d                                           ; $4d4a: $a2
	nop                                              ; $4d4b: $00
	db   $10                                         ; $4d4c: $10
	ld   [$029c], sp                                 ; $4d4d: $08 $9c $02
	stop                                             ; $4d50: $10 $00
	sbc  d                                           ; $4d52: $9a
	ld   [bc], a                                     ; $4d53: $02
	nop                                              ; $4d54: $00
	ld   [$0098], sp                                 ; $4d55: $08 $98 $00
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	sub  [hl]                                        ; $4d5a: $96
	db   $10                                         ; $4d5b: $10
	db   $10                                         ; $4d5c: $10
	ld   [$01a0], sp                                 ; $4d5d: $08 $a0 $01
	stop                                             ; $4d60: $10 $00
	sbc  [hl]                                        ; $4d62: $9e
	ld   bc, $f800                                   ; $4d63: $01 $00 $f8
	and  h                                           ; $4d66: $a4
	nop                                              ; $4d67: $00
	db   $10                                         ; $4d68: $10
	ld   [$029c], sp                                 ; $4d69: $08 $9c $02
	stop                                             ; $4d6c: $10 $00
	sbc  d                                           ; $4d6e: $9a
	ld   [bc], a                                     ; $4d6f: $02
	nop                                              ; $4d70: $00
	ld   [$0098], sp                                 ; $4d71: $08 $98 $00
	nop                                              ; $4d74: $00
	nop                                              ; $4d75: $00
	sub  [hl]                                        ; $4d76: $96
	db   $10                                         ; $4d77: $10
	db   $10                                         ; $4d78: $10
	ld   [$015e], sp                                 ; $4d79: $08 $5e $01
	stop                                             ; $4d7c: $10 $00
	xor  h                                           ; $4d7e: $ac
	ld   bc, $0810                                   ; $4d7f: $01 $10 $08
	ld   e, d                                        ; $4d82: $5a
	ld   [bc], a                                     ; $4d83: $02
	nop                                              ; $4d84: $00
	ld   [$0056], sp                                 ; $4d85: $08 $56 $00
	stop                                             ; $4d88: $10 $00
	xor  d                                           ; $4d8a: $aa
	ld   [bc], a                                     ; $4d8b: $02
	nop                                              ; $4d8c: $00
	nop                                              ; $4d8d: $00
	xor  b                                           ; $4d8e: $a8
	nop                                              ; $4d8f: $00
	ld   [$a6f8], sp                                 ; $4d90: $08 $f8 $a6
	db   $10                                         ; $4d93: $10
	db   $10                                         ; $4d94: $10
	ld   [$015e], sp                                 ; $4d95: $08 $5e $01
	stop                                             ; $4d98: $10 $00
	or   h                                           ; $4d9a: $b4
	ld   bc, $0810                                   ; $4d9b: $01 $10 $08
	ld   e, d                                        ; $4d9e: $5a
	ld   [bc], a                                     ; $4d9f: $02
	nop                                              ; $4da0: $00
	ld   [$0056], sp                                 ; $4da1: $08 $56 $00
	stop                                             ; $4da4: $10 $00
	or   d                                           ; $4da6: $b2
	ld   [bc], a                                     ; $4da7: $02
	nop                                              ; $4da8: $00
	nop                                              ; $4da9: $00
	or   b                                           ; $4daa: $b0
	nop                                              ; $4dab: $00
	ld   [$aef8], sp                                 ; $4dac: $08 $f8 $ae
	db   $10                                         ; $4daf: $10
	db   $10                                         ; $4db0: $10
	ld   [$015e], sp                                 ; $4db1: $08 $5e $01
	stop                                             ; $4db4: $10 $00
	or   h                                           ; $4db6: $b4
	ld   bc, $f8f8                                   ; $4db7: $01 $f8 $f8
	or   [hl]                                        ; $4dba: $b6
	inc  bc                                          ; $4dbb: $03
	db   $10                                         ; $4dbc: $10
	ld   [$025a], sp                                 ; $4dbd: $08 $5a $02
	nop                                              ; $4dc0: $00
	ld   [$0056], sp                                 ; $4dc1: $08 $56 $00
	stop                                             ; $4dc4: $10 $00
	or   d                                           ; $4dc6: $b2
	ld   [bc], a                                     ; $4dc7: $02
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00
	or   b                                           ; $4dca: $b0
	nop                                              ; $4dcb: $00
	ld   [$aef8], sp                                 ; $4dcc: $08 $f8 $ae
	db   $10                                         ; $4dcf: $10
	db   $10                                         ; $4dd0: $10
	ld   [$015e], sp                                 ; $4dd1: $08 $5e $01
	stop                                             ; $4dd4: $10 $00
	or   h                                           ; $4dd6: $b4
	ld   bc, $f8f8                                   ; $4dd7: $01 $f8 $f8
	cp   b                                           ; $4dda: $b8
	inc  bc                                          ; $4ddb: $03
	db   $10                                         ; $4ddc: $10
	ld   [$025a], sp                                 ; $4ddd: $08 $5a $02
	nop                                              ; $4de0: $00
	ld   [$0056], sp                                 ; $4de1: $08 $56 $00
	stop                                             ; $4de4: $10 $00
	or   d                                           ; $4de6: $b2
	ld   [bc], a                                     ; $4de7: $02
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	or   b                                           ; $4dea: $b0
	nop                                              ; $4deb: $00
	ld   [$aef8], sp                                 ; $4dec: $08 $f8 $ae
	db   $10                                         ; $4def: $10
	db   $10                                         ; $4df0: $10
	ld   [$015e], sp                                 ; $4df1: $08 $5e $01
	stop                                             ; $4df4: $10 $00
	or   h                                           ; $4df6: $b4
	ld   bc, $f8f8                                   ; $4df7: $01 $f8 $f8
	cp   d                                           ; $4dfa: $ba
	inc  bc                                          ; $4dfb: $03
	db   $10                                         ; $4dfc: $10
	ld   [$025a], sp                                 ; $4dfd: $08 $5a $02
	nop                                              ; $4e00: $00
	ld   [$0056], sp                                 ; $4e01: $08 $56 $00
	stop                                             ; $4e04: $10 $00
	or   d                                           ; $4e06: $b2
	ld   [bc], a                                     ; $4e07: $02
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	or   b                                           ; $4e0a: $b0
	nop                                              ; $4e0b: $00
	ld   [$aef8], sp                                 ; $4e0c: $08 $f8 $ae
	db   $10                                         ; $4e0f: $10
	db   $10                                         ; $4e10: $10
	ld   [$015e], sp                                 ; $4e11: $08 $5e $01
	stop                                             ; $4e14: $10 $00
	or   h                                           ; $4e16: $b4
	ld   bc, $f8f8                                   ; $4e17: $01 $f8 $f8
	cp   h                                           ; $4e1a: $bc
	inc  bc                                          ; $4e1b: $03
	db   $10                                         ; $4e1c: $10
	ld   [$025a], sp                                 ; $4e1d: $08 $5a $02
	nop                                              ; $4e20: $00
	ld   [$0056], sp                                 ; $4e21: $08 $56 $00
	stop                                             ; $4e24: $10 $00
	or   d                                           ; $4e26: $b2
	ld   [bc], a                                     ; $4e27: $02
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	or   b                                           ; $4e2a: $b0
	nop                                              ; $4e2b: $00
	ld   [$aef8], sp                                 ; $4e2c: $08 $f8 $ae
	db   $10                                         ; $4e2f: $10
	ldh  [$08], a                                    ; $4e30: $e0 $08
	or   h                                           ; $4e32: $b4
	dec  bc                                          ; $4e33: $0b
	ldh  [rIE], a                                    ; $4e34: $e0 $ff
	or   d                                           ; $4e36: $b2
	dec  bc                                          ; $4e37: $0b
	rra                                              ; $4e38: $1f
	ld   [$08ac], sp                                 ; $4e39: $08 $ac $08
	db   $10                                         ; $4e3c: $10
	ld   [$03c8], sp                                 ; $4e3d: $08 $c8 $03
	stop                                             ; $4e40: $10 $00
	add  $03                                         ; $4e42: $c6 $03
	nop                                              ; $4e44: $00
	ld   [$03c4], sp                                 ; $4e45: $08 $c4 $03
	nop                                              ; $4e48: $00
	nop                                              ; $4e49: $00
	jp   nz, $f003                                   ; $4e4a: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $4e4d: $08 $c0 $03
	ldh  a, [rP1]                                    ; $4e50: $f0 $00
	cp   [hl]                                        ; $4e52: $be
	inc  de                                          ; $4e53: $13
	ldh  [rTAC], a                                   ; $4e54: $e0 $07
	or   h                                           ; $4e56: $b4
	dec  bc                                          ; $4e57: $0b
	ldh  [$fe], a                                    ; $4e58: $e0 $fe
	or   d                                           ; $4e5a: $b2
	dec  bc                                          ; $4e5b: $0b
	rra                                              ; $4e5c: $1f
	rlca                                             ; $4e5d: $07
	xor  h                                           ; $4e5e: $ac
	ld   [$0810], sp                                 ; $4e5f: $08 $10 $08
	call nc, $1003                                   ; $4e62: $d4 $03 $10
	nop                                              ; $4e65: $00
	jp   nc, $0003                                   ; $4e66: $d2 $03 $00

	ld   [$03d0], sp                                 ; $4e69: $08 $d0 $03
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	adc  $03                                         ; $4e6e: $ce $03
	ldh  a, [$08]                                    ; $4e70: $f0 $08
	call z, $f003                                    ; $4e72: $cc $03 $f0
	nop                                              ; $4e75: $00
	jp   z, $e013                                    ; $4e76: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4e79: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4e7c: $e0 $ff
	or   d                                           ; $4e7e: $b2
	dec  bc                                          ; $4e7f: $0b
	rra                                              ; $4e80: $1f
	ld   [$08ac], sp                                 ; $4e81: $08 $ac $08
	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	sub  $03                                         ; $4e86: $d6 $03
	db   $10                                         ; $4e88: $10
	ld   [$03c8], sp                                 ; $4e89: $08 $c8 $03
	stop                                             ; $4e8c: $10 $00
	add  $03                                         ; $4e8e: $c6 $03
	nop                                              ; $4e90: $00
	ld   [$03c4], sp                                 ; $4e91: $08 $c4 $03
	ldh  a, [$08]                                    ; $4e94: $f0 $08
	ret  nz                                          ; $4e96: $c0

	inc  bc                                          ; $4e97: $03
	ldh  a, [rP1]                                    ; $4e98: $f0 $00
	cp   [hl]                                        ; $4e9a: $be
	inc  de                                          ; $4e9b: $13
	ldh  [rTAC], a                                   ; $4e9c: $e0 $07
	or   h                                           ; $4e9e: $b4
	dec  bc                                          ; $4e9f: $0b
	ldh  [$fe], a                                    ; $4ea0: $e0 $fe
	or   d                                           ; $4ea2: $b2
	dec  bc                                          ; $4ea3: $0b
	rra                                              ; $4ea4: $1f
	rlca                                             ; $4ea5: $07
	xor  h                                           ; $4ea6: $ac
	ld   [$0810], sp                                 ; $4ea7: $08 $10 $08
	call c, $1003                                    ; $4eaa: $dc $03 $10
	nop                                              ; $4ead: $00
	jp   c, $0003                                    ; $4eae: $da $03 $00

	nop                                              ; $4eb1: $00
	ret  c                                           ; $4eb2: $d8

	inc  bc                                          ; $4eb3: $03
	nop                                              ; $4eb4: $00
	ld   [$03d0], sp                                 ; $4eb5: $08 $d0 $03
	ldh  a, [$08]                                    ; $4eb8: $f0 $08
	call z, $f003                                    ; $4eba: $cc $03 $f0
	nop                                              ; $4ebd: $00
	jp   z, $e013                                    ; $4ebe: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4ec1: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4ec4: $e0 $ff
	or   d                                           ; $4ec6: $b2
	dec  bc                                          ; $4ec7: $0b
	rra                                              ; $4ec8: $1f
	ld   [$08ac], sp                                 ; $4ec9: $08 $ac $08
	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	sub  $03                                         ; $4ece: $d6 $03
	db   $10                                         ; $4ed0: $10
	ld   [$03de], sp                                 ; $4ed1: $08 $de $03
	stop                                             ; $4ed4: $10 $00
	add  $03                                         ; $4ed6: $c6 $03
	nop                                              ; $4ed8: $00
	ld   [$03c4], sp                                 ; $4ed9: $08 $c4 $03
	ldh  a, [$08]                                    ; $4edc: $f0 $08
	ret  nz                                          ; $4ede: $c0

	inc  bc                                          ; $4edf: $03
	ldh  a, [rP1]                                    ; $4ee0: $f0 $00
	cp   [hl]                                        ; $4ee2: $be
	inc  de                                          ; $4ee3: $13
	ldh  [rTAC], a                                   ; $4ee4: $e0 $07
	or   h                                           ; $4ee6: $b4
	dec  bc                                          ; $4ee7: $0b
	ldh  [$fe], a                                    ; $4ee8: $e0 $fe
	or   d                                           ; $4eea: $b2
	dec  bc                                          ; $4eeb: $0b
	rra                                              ; $4eec: $1f
	rlca                                             ; $4eed: $07
	xor  h                                           ; $4eee: $ac
	ld   [$0810], sp                                 ; $4eef: $08 $10 $08
	call c, $1003                                    ; $4ef2: $dc $03 $10
	nop                                              ; $4ef5: $00
	jp   c, $0003                                    ; $4ef6: $da $03 $00

	nop                                              ; $4ef9: $00
	add  b                                           ; $4efa: $80
	dec  bc                                          ; $4efb: $0b
	nop                                              ; $4efc: $00
	ld   [$03d0], sp                                 ; $4efd: $08 $d0 $03
	ldh  a, [$08]                                    ; $4f00: $f0 $08
	call z, $f003                                    ; $4f02: $cc $03 $f0
	nop                                              ; $4f05: $00
	jp   z, $e013                                    ; $4f06: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4f09: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4f0c: $e0 $ff
	or   d                                           ; $4f0e: $b2
	dec  bc                                          ; $4f0f: $0b
	rra                                              ; $4f10: $1f
	ld   [$08ac], sp                                 ; $4f11: $08 $ac $08
	nop                                              ; $4f14: $00
	nop                                              ; $4f15: $00
	jp   nz, $1003                                   ; $4f16: $c2 $03 $10

	ld   [$03de], sp                                 ; $4f19: $08 $de $03
	stop                                             ; $4f1c: $10 $00
	add  $03                                         ; $4f1e: $c6 $03
	nop                                              ; $4f20: $00
	ld   [$03c4], sp                                 ; $4f21: $08 $c4 $03
	ldh  a, [$08]                                    ; $4f24: $f0 $08
	ret  nz                                          ; $4f26: $c0

	inc  bc                                          ; $4f27: $03
	ldh  a, [rP1]                                    ; $4f28: $f0 $00
	cp   [hl]                                        ; $4f2a: $be
	inc  de                                          ; $4f2b: $13
	ldh  [rTAC], a                                   ; $4f2c: $e0 $07
	or   h                                           ; $4f2e: $b4
	dec  bc                                          ; $4f2f: $0b
	ldh  [$fe], a                                    ; $4f30: $e0 $fe
	or   d                                           ; $4f32: $b2
	dec  bc                                          ; $4f33: $0b
	rra                                              ; $4f34: $1f
	rlca                                             ; $4f35: $07
	xor  h                                           ; $4f36: $ac
	ld   [$0800], sp                                 ; $4f37: $08 $00 $08
	add  h                                           ; $4f3a: $84
	dec  bc                                          ; $4f3b: $0b
	nop                                              ; $4f3c: $00
	nop                                              ; $4f3d: $00
	add  d                                           ; $4f3e: $82
	dec  bc                                          ; $4f3f: $0b
	stop                                             ; $4f40: $10 $00
	jp   nc, $1003                                   ; $4f42: $d2 $03 $10

	ld   [$03dc], sp                                 ; $4f45: $08 $dc $03
	ldh  a, [$08]                                    ; $4f48: $f0 $08
	call z, $f003                                    ; $4f4a: $cc $03 $f0
	nop                                              ; $4f4d: $00
	jp   z, $e013                                    ; $4f4e: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4f51: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4f54: $e0 $ff
	or   d                                           ; $4f56: $b2
	dec  bc                                          ; $4f57: $0b
	rra                                              ; $4f58: $1f
	ld   [$08ac], sp                                 ; $4f59: $08 $ac $08
	nop                                              ; $4f5c: $00
	ld   [$0b86], sp                                 ; $4f5d: $08 $86 $0b
	db   $10                                         ; $4f60: $10
	ld   [$03de], sp                                 ; $4f61: $08 $de $03
	stop                                             ; $4f64: $10 $00
	add  $03                                         ; $4f66: $c6 $03
	nop                                              ; $4f68: $00
	nop                                              ; $4f69: $00
	jp   nz, $f003                                   ; $4f6a: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $4f6d: $08 $c0 $03
	ldh  a, [rP1]                                    ; $4f70: $f0 $00
	cp   [hl]                                        ; $4f72: $be
	inc  de                                          ; $4f73: $13
	ldh  [rTAC], a                                   ; $4f74: $e0 $07
	or   h                                           ; $4f76: $b4
	dec  bc                                          ; $4f77: $0b
	ldh  [$fe], a                                    ; $4f78: $e0 $fe
	or   d                                           ; $4f7a: $b2
	dec  bc                                          ; $4f7b: $0b
	rra                                              ; $4f7c: $1f
	rlca                                             ; $4f7d: $07
	xor  h                                           ; $4f7e: $ac
	ld   [rRAMG], sp                                 ; $4f7f: $08 $00 $00
	adc  b                                           ; $4f82: $88
	dec  bc                                          ; $4f83: $0b
	nop                                              ; $4f84: $00
	ld   [$0b84], sp                                 ; $4f85: $08 $84 $0b
	stop                                             ; $4f88: $10 $00
	jp   nc, $1003                                   ; $4f8a: $d2 $03 $10

	ld   [$03dc], sp                                 ; $4f8d: $08 $dc $03
	ldh  a, [$08]                                    ; $4f90: $f0 $08
	call z, $f003                                    ; $4f92: $cc $03 $f0
	nop                                              ; $4f95: $00
	jp   z, $e013                                    ; $4f96: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4f99: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4f9c: $e0 $ff
	or   d                                           ; $4f9e: $b2
	dec  bc                                          ; $4f9f: $0b
	rra                                              ; $4fa0: $1f
	ld   [$08ac], sp                                 ; $4fa1: $08 $ac $08
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	adc  d                                           ; $4fa6: $8a
	dec  bc                                          ; $4fa7: $0b
	nop                                              ; $4fa8: $00
	ld   [$0b86], sp                                 ; $4fa9: $08 $86 $0b
	db   $10                                         ; $4fac: $10
	ld   [$03de], sp                                 ; $4fad: $08 $de $03
	stop                                             ; $4fb0: $10 $00
	add  $03                                         ; $4fb2: $c6 $03
	ldh  a, [$08]                                    ; $4fb4: $f0 $08
	ret  nz                                          ; $4fb6: $c0

	inc  bc                                          ; $4fb7: $03
	ldh  a, [rP1]                                    ; $4fb8: $f0 $00
	cp   [hl]                                        ; $4fba: $be
	inc  de                                          ; $4fbb: $13
	ldh  [rTAC], a                                   ; $4fbc: $e0 $07
	or   h                                           ; $4fbe: $b4
	dec  bc                                          ; $4fbf: $0b
	ldh  [$fe], a                                    ; $4fc0: $e0 $fe
	or   d                                           ; $4fc2: $b2
	dec  bc                                          ; $4fc3: $0b
	rra                                              ; $4fc4: $1f
	rlca                                             ; $4fc5: $07
	xor  h                                           ; $4fc6: $ac
	ld   [$0800], sp                                 ; $4fc7: $08 $00 $08
	adc  [hl]                                        ; $4fca: $8e
	dec  bc                                          ; $4fcb: $0b
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	adc  h                                           ; $4fce: $8c
	dec  bc                                          ; $4fcf: $0b
	stop                                             ; $4fd0: $10 $00
	jp   nc, $1003                                   ; $4fd2: $d2 $03 $10

	ld   [$03dc], sp                                 ; $4fd5: $08 $dc $03
	ldh  a, [$08]                                    ; $4fd8: $f0 $08
	call z, $f003                                    ; $4fda: $cc $03 $f0
	nop                                              ; $4fdd: $00
	jp   z, $e013                                    ; $4fde: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $4fe1: $08 $b4 $0b
	ldh  [rIE], a                                    ; $4fe4: $e0 $ff
	or   d                                           ; $4fe6: $b2
	dec  bc                                          ; $4fe7: $0b
	rra                                              ; $4fe8: $1f
	ld   [$08ac], sp                                 ; $4fe9: $08 $ac $08
	nop                                              ; $4fec: $00
	ld   [$0b92], sp                                 ; $4fed: $08 $92 $0b
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	sub  b                                           ; $4ff2: $90
	dec  bc                                          ; $4ff3: $0b
	db   $10                                         ; $4ff4: $10
	ld   [$03de], sp                                 ; $4ff5: $08 $de $03
	stop                                             ; $4ff8: $10 $00
	add  $03                                         ; $4ffa: $c6 $03
	ldh  a, [$08]                                    ; $4ffc: $f0 $08
	ret  nz                                          ; $4ffe: $c0

	inc  bc                                          ; $4fff: $03
	ldh  a, [rP1]                                    ; $5000: $f0 $00
	cp   [hl]                                        ; $5002: $be
	inc  de                                          ; $5003: $13
	ldh  [rTAC], a                                   ; $5004: $e0 $07
	or   h                                           ; $5006: $b4
	dec  bc                                          ; $5007: $0b
	ldh  [$fe], a                                    ; $5008: $e0 $fe
	or   d                                           ; $500a: $b2
	dec  bc                                          ; $500b: $0b
	rra                                              ; $500c: $1f
	rlca                                             ; $500d: $07
	xor  h                                           ; $500e: $ac
	ld   [$0800], sp                                 ; $500f: $08 $00 $08
	sub  [hl]                                        ; $5012: $96
	dec  bc                                          ; $5013: $0b
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	sub  h                                           ; $5016: $94
	dec  bc                                          ; $5017: $0b
	db   $10                                         ; $5018: $10
	ld   [$03d4], sp                                 ; $5019: $08 $d4 $03
	stop                                             ; $501c: $10 $00
	jp   nc, $f003                                   ; $501e: $d2 $03 $f0

	ld   [$03cc], sp                                 ; $5021: $08 $cc $03
	ldh  a, [rP1]                                    ; $5024: $f0 $00
	jp   z, $e013                                    ; $5026: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $5029: $08 $b4 $0b
	ldh  [rIE], a                                    ; $502c: $e0 $ff
	or   d                                           ; $502e: $b2
	dec  bc                                          ; $502f: $0b
	rra                                              ; $5030: $1f
	ld   [$08ac], sp                                 ; $5031: $08 $ac $08
	nop                                              ; $5034: $00
	ld   [$0b98], sp                                 ; $5035: $08 $98 $0b
	db   $10                                         ; $5038: $10
	ld   [$03c8], sp                                 ; $5039: $08 $c8 $03
	stop                                             ; $503c: $10 $00
	add  $03                                         ; $503e: $c6 $03
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	jp   nz, $f003                                   ; $5042: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $5045: $08 $c0 $03
	ldh  a, [rP1]                                    ; $5048: $f0 $00
	cp   [hl]                                        ; $504a: $be
	inc  de                                          ; $504b: $13
	ldh  [rTAC], a                                   ; $504c: $e0 $07
	or   h                                           ; $504e: $b4
	dec  bc                                          ; $504f: $0b
	ldh  [$fe], a                                    ; $5050: $e0 $fe
	or   d                                           ; $5052: $b2
	dec  bc                                          ; $5053: $0b
	rra                                              ; $5054: $1f
	rlca                                             ; $5055: $07
	xor  h                                           ; $5056: $ac
	ld   [$0800], sp                                 ; $5057: $08 $00 $08
	sbc  h                                           ; $505a: $9c
	dec  bc                                          ; $505b: $0b
	nop                                              ; $505c: $00
	nop                                              ; $505d: $00
	sbc  d                                           ; $505e: $9a
	dec  bc                                          ; $505f: $0b
	db   $10                                         ; $5060: $10
	ld   [$03d4], sp                                 ; $5061: $08 $d4 $03
	stop                                             ; $5064: $10 $00
	jp   nc, $f003                                   ; $5066: $d2 $03 $f0

	ld   [$03cc], sp                                 ; $5069: $08 $cc $03
	ldh  a, [rP1]                                    ; $506c: $f0 $00
	jp   z, $e013                                    ; $506e: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $5071: $08 $b4 $0b
	ldh  [rIE], a                                    ; $5074: $e0 $ff
	or   d                                           ; $5076: $b2
	dec  bc                                          ; $5077: $0b
	rra                                              ; $5078: $1f
	ld   [$08ac], sp                                 ; $5079: $08 $ac $08
	nop                                              ; $507c: $00
	ld   [$0b9e], sp                                 ; $507d: $08 $9e $0b
	db   $10                                         ; $5080: $10
	ld   [$03c8], sp                                 ; $5081: $08 $c8 $03
	stop                                             ; $5084: $10 $00
	add  $03                                         ; $5086: $c6 $03
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	jp   nz, $f003                                   ; $508a: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $508d: $08 $c0 $03
	ldh  a, [rP1]                                    ; $5090: $f0 $00
	cp   [hl]                                        ; $5092: $be
	inc  de                                          ; $5093: $13
	ldh  [rTAC], a                                   ; $5094: $e0 $07
	or   h                                           ; $5096: $b4
	dec  bc                                          ; $5097: $0b
	ldh  [$fe], a                                    ; $5098: $e0 $fe
	or   d                                           ; $509a: $b2
	dec  bc                                          ; $509b: $0b
	rra                                              ; $509c: $1f
	rlca                                             ; $509d: $07
	xor  h                                           ; $509e: $ac
	ld   [$0800], sp                                 ; $509f: $08 $00 $08
	and  d                                           ; $50a2: $a2
	dec  bc                                          ; $50a3: $0b
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	and  b                                           ; $50a6: $a0
	dec  bc                                          ; $50a7: $0b
	db   $10                                         ; $50a8: $10
	ld   [$03d4], sp                                 ; $50a9: $08 $d4 $03
	stop                                             ; $50ac: $10 $00
	jp   nc, $f003                                   ; $50ae: $d2 $03 $f0

	ld   [$03cc], sp                                 ; $50b1: $08 $cc $03
	ldh  a, [rP1]                                    ; $50b4: $f0 $00
	jp   z, $e013                                    ; $50b6: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $50b9: $08 $b4 $0b
	ldh  [rIE], a                                    ; $50bc: $e0 $ff
	or   d                                           ; $50be: $b2
	dec  bc                                          ; $50bf: $0b
	rra                                              ; $50c0: $1f
	ld   [$08ac], sp                                 ; $50c1: $08 $ac $08
	nop                                              ; $50c4: $00
	ld   [$0ba4], sp                                 ; $50c5: $08 $a4 $0b
	db   $10                                         ; $50c8: $10
	ld   [$03c8], sp                                 ; $50c9: $08 $c8 $03
	stop                                             ; $50cc: $10 $00
	add  $03                                         ; $50ce: $c6 $03
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	jp   nz, $f003                                   ; $50d2: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $50d5: $08 $c0 $03
	ldh  a, [rP1]                                    ; $50d8: $f0 $00
	cp   [hl]                                        ; $50da: $be
	inc  de                                          ; $50db: $13
	ldh  [rTAC], a                                   ; $50dc: $e0 $07
	or   h                                           ; $50de: $b4
	dec  bc                                          ; $50df: $0b
	ldh  [$fe], a                                    ; $50e0: $e0 $fe
	or   d                                           ; $50e2: $b2
	dec  bc                                          ; $50e3: $0b
	rra                                              ; $50e4: $1f
	rlca                                             ; $50e5: $07
	xor  h                                           ; $50e6: $ac
	ld   [$0800], sp                                 ; $50e7: $08 $00 $08
	xor  b                                           ; $50ea: $a8
	dec  bc                                          ; $50eb: $0b
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	and  [hl]                                        ; $50ee: $a6
	dec  bc                                          ; $50ef: $0b
	db   $10                                         ; $50f0: $10
	ld   [$03d4], sp                                 ; $50f1: $08 $d4 $03
	stop                                             ; $50f4: $10 $00
	jp   nc, $f003                                   ; $50f6: $d2 $03 $f0

	ld   [$03cc], sp                                 ; $50f9: $08 $cc $03
	ldh  a, [rP1]                                    ; $50fc: $f0 $00
	jp   z, $e013                                    ; $50fe: $ca $13 $e0

	ld   [$0bb4], sp                                 ; $5101: $08 $b4 $0b
	ldh  [rIE], a                                    ; $5104: $e0 $ff
	or   d                                           ; $5106: $b2
	dec  bc                                          ; $5107: $0b
	rra                                              ; $5108: $1f
	ld   [$08ac], sp                                 ; $5109: $08 $ac $08
	nop                                              ; $510c: $00
	ld   [$0baa], sp                                 ; $510d: $08 $aa $0b
	db   $10                                         ; $5110: $10
	ld   [$03c8], sp                                 ; $5111: $08 $c8 $03
	stop                                             ; $5114: $10 $00
	add  $03                                         ; $5116: $c6 $03
	nop                                              ; $5118: $00
	nop                                              ; $5119: $00
	jp   nz, $f003                                   ; $511a: $c2 $03 $f0

	ld   [$03c0], sp                                 ; $511d: $08 $c0 $03
	ldh  a, [rP1]                                    ; $5120: $f0 $00
	cp   [hl]                                        ; $5122: $be
	inc  de                                          ; $5123: $13
	cpl                                              ; $5124: $2f
	rra                                              ; $5125: $1f
	jr   nz, jr_023_512c                             ; $5126: $20 $04

	cpl                                              ; $5128: $2f
	add  hl, bc                                      ; $5129: $09
	jr   nz, @+$06                                   ; $512a: $20 $04

jr_023_512c:
	jr   z, jr_023_5146                              ; $512c: $28 $18

	ld   [$2804], sp                                 ; $512e: $08 $04 $28
	db   $10                                         ; $5131: $10
	ld   b, $04                                      ; $5132: $06 $04
	rra                                              ; $5134: $1f
	jr   nz, @+$06                                   ; $5135: $20 $04

	inc  b                                           ; $5137: $04
	rra                                              ; $5138: $1f
	ld   [$2404], sp                                 ; $5139: $08 $04 $24
	jr   jr_023_5156                                 ; $513c: $18 $18

	ld   [bc], a                                     ; $513e: $02
	inc  b                                           ; $513f: $04
	jr   jr_023_5152                                 ; $5140: $18 $10

	nop                                              ; $5142: $00
	inc  d                                           ; $5143: $14
	cpl                                              ; $5144: $2f
	rra                                              ; $5145: $1f

jr_023_5146:
	jr   nz, jr_023_514c                             ; $5146: $20 $04

	cpl                                              ; $5148: $2f
	add  hl, bc                                      ; $5149: $09
	jr   nz, jr_023_5150                             ; $514a: $20 $04

jr_023_514c:
	ld   e, $08                                      ; $514c: $1e $08
	inc  b                                           ; $514e: $04
	inc  h                                           ; $514f: $24

jr_023_5150:
	jr   jr_023_5172                                 ; $5150: $18 $20

jr_023_5152:
	ld   a, [bc]                                     ; $5152: $0a
	inc  b                                           ; $5153: $04
	jr   z, jr_023_516e                              ; $5154: $28 $18

jr_023_5156:
	inc  d                                           ; $5156: $14
	inc  b                                           ; $5157: $04
	jr   z, jr_023_516a                              ; $5158: $28 $10

	ld   [de], a                                     ; $515a: $12
	inc  b                                           ; $515b: $04
	jr   jr_023_5176                                 ; $515c: $18 $18

	db   $10                                         ; $515e: $10
	inc  b                                           ; $515f: $04
	jr   jr_023_5172                                 ; $5160: $18 $10

	ld   c, $14                                      ; $5162: $0e $14
	jr   jr_023_5186                                 ; $5164: $18 $20

	inc  c                                           ; $5166: $0c
	inc  b                                           ; $5167: $04
	cpl                                              ; $5168: $2f
	rra                                              ; $5169: $1f

jr_023_516a:
	jr   nz, jr_023_5170                             ; $516a: $20 $04

	cpl                                              ; $516c: $2f
	add  hl, bc                                      ; $516d: $09

jr_023_516e:
	jr   nz, jr_023_5174                             ; $516e: $20 $04

jr_023_5170:
	ld   e, $08                                      ; $5170: $1e $08

jr_023_5172:
	inc  b                                           ; $5172: $04
	inc  h                                           ; $5173: $24

jr_023_5174:
	jr   z, jr_023_518e                              ; $5174: $28 $18

jr_023_5176:
	inc  d                                           ; $5176: $14
	inc  b                                           ; $5177: $04
	jr   z, jr_023_518a                              ; $5178: $28 $10

	ld   [de], a                                     ; $517a: $12
	inc  b                                           ; $517b: $04
	jr   jr_023_5196                                 ; $517c: $18 $18

	db   $10                                         ; $517e: $10
	inc  b                                           ; $517f: $04
	jr   jr_023_5192                                 ; $5180: $18 $10

	ld   c, $14                                      ; $5182: $0e $14
	dec  c                                           ; $5184: $0d
	add  hl, de                                      ; $5185: $19

jr_023_5186:
	ld   a, [de]                                     ; $5186: $1a
	dec  b                                           ; $5187: $05
	jr   z, jr_023_51aa                              ; $5188: $28 $20

jr_023_518a:
	inc  e                                           ; $518a: $1c
	inc  h                                           ; $518b: $24
	jr   z, jr_023_5196                              ; $518c: $28 $08

jr_023_518e:
	inc  e                                           ; $518e: $1c
	inc  b                                           ; $518f: $04
	jr   z, jr_023_51aa                              ; $5190: $28 $18

jr_023_5192:
	ld   e, $24                                      ; $5192: $1e $24
	jr   z, jr_023_51a6                              ; $5194: $28 $10

jr_023_5196:
	ld   e, $04                                      ; $5196: $1e $04
	jr   jr_023_51b2                                 ; $5198: $18 $18

	jr   jr_023_51a0                                 ; $519a: $18 $04

	jr   jr_023_51ae                                 ; $519c: $18 $10

	ld   d, $14                                      ; $519e: $16 $14

jr_023_51a0:
	db   $10                                         ; $51a0: $10
	add  hl, de                                      ; $51a1: $19
	ld   a, [de]                                     ; $51a2: $1a
	dec  b                                           ; $51a3: $05
	jr   z, jr_023_51c6                              ; $51a4: $28 $20

jr_023_51a6:
	inc  e                                           ; $51a6: $1c
	inc  h                                           ; $51a7: $24
	jr   z, jr_023_51b2                              ; $51a8: $28 $08

jr_023_51aa:
	inc  e                                           ; $51aa: $1c
	inc  b                                           ; $51ab: $04
	jr   z, jr_023_51c6                              ; $51ac: $28 $18

jr_023_51ae:
	ld   e, $24                                      ; $51ae: $1e $24
	jr   z, jr_023_51c2                              ; $51b0: $28 $10

jr_023_51b2:
	ld   e, $04                                      ; $51b2: $1e $04
	jr   jr_023_51ce                                 ; $51b4: $18 $18

	jr   jr_023_51bc                                 ; $51b6: $18 $04

	jr   jr_023_51ca                                 ; $51b8: $18 $10

	ld   d, $14                                      ; $51ba: $16 $14

jr_023_51bc:
	jr   z, jr_023_51d6                              ; $51bc: $28 $18

	jr   z, @+$05                                    ; $51be: $28 $03

	jr   z, jr_023_51d2                              ; $51c0: $28 $10

jr_023_51c2:
	ld   h, $03                                      ; $51c2: $26 $03
	jr   @+$1a                                       ; $51c4: $18 $18

jr_023_51c6:
	inc  h                                           ; $51c6: $24
	nop                                              ; $51c7: $00
	jr   jr_023_51da                                 ; $51c8: $18 $10

jr_023_51ca:
	ld   [hl+], a                                    ; $51ca: $22
	nop                                              ; $51cb: $00
	jr   nz, jr_023_51e6                             ; $51cc: $20 $18

jr_023_51ce:
	ld   a, [hl+]                                    ; $51ce: $2a
	ld   hl, $1020                                   ; $51cf: $21 $20 $10

jr_023_51d2:
	ld   a, [hl+]                                    ; $51d2: $2a
	ld   bc, $1f2f                                   ; $51d3: $01 $2f $1f

jr_023_51d6:
	jr   nz, jr_023_51dc                             ; $51d6: $20 $04

	cpl                                              ; $51d8: $2f
	add  hl, bc                                      ; $51d9: $09

jr_023_51da:
	jr   nz, jr_023_51e0                             ; $51da: $20 $04

jr_023_51dc:
	rra                                              ; $51dc: $1f
	jr   nz, @+$06                                   ; $51dd: $20 $04

	inc  b                                           ; $51df: $04

jr_023_51e0:
	rra                                              ; $51e0: $1f
	ld   [$3404], sp                                 ; $51e1: $08 $04 $34
	jr   nz, jr_023_51fe                             ; $51e4: $20 $18

jr_023_51e6:
	ld   [hl-], a                                    ; $51e6: $32
	inc  bc                                          ; $51e7: $03
	jr   nz, jr_023_51fa                             ; $51e8: $20 $10

	jr   nc, jr_023_51ef                             ; $51ea: $30 $03

	db   $10                                         ; $51ec: $10
	jr   @+$30                                       ; $51ed: $18 $2e

jr_023_51ef:
	nop                                              ; $51ef: $00
	db   $10                                         ; $51f0: $10
	db   $10                                         ; $51f1: $10
	inc  l                                           ; $51f2: $2c
	nop                                              ; $51f3: $00
	jr   jr_023_520e                                 ; $51f4: $18 $18

	inc  [hl]                                        ; $51f6: $34
	ld   hl, $1018                                   ; $51f7: $21 $18 $10

jr_023_51fa:
	inc  [hl]                                        ; $51fa: $34
	ld   bc, $1f2f                                   ; $51fb: $01 $2f $1f

jr_023_51fe:
	jr   nz, jr_023_5204                             ; $51fe: $20 $04

	cpl                                              ; $5200: $2f
	add  hl, bc                                      ; $5201: $09

jr_023_5202:
	jr   nz, jr_023_5208                             ; $5202: $20 $04

jr_023_5204:
	rla                                              ; $5204: $17
	jr   nz, @+$06                                   ; $5205: $20 $04

	inc  b                                           ; $5207: $04

jr_023_5208:
	rla                                              ; $5208: $17
	ld   [$3404], sp                                 ; $5209: $08 $04 $34
	jr   nz, @-$06                                   ; $520c: $20 $f8

jr_023_520e:
	halt                                             ; $520e: $76
	inc  bc                                          ; $520f: $03
	jr   nz, jr_023_5202                             ; $5210: $20 $f0

	ld   [hl], h                                     ; $5212: $74
	inc  bc                                          ; $5213: $03
	db   $10                                         ; $5214: $10
	ld   hl, sp+$72                                  ; $5215: $f8 $72
	nop                                              ; $5217: $00
	db   $10                                         ; $5218: $10
	ldh  a, [rSVBK]                                  ; $5219: $f0 $70
	nop                                              ; $521b: $00
	jr   @-$06                                       ; $521c: $18 $f8

	ld   a, d                                        ; $521e: $7a
	ld   bc, $f018                                   ; $521f: $01 $18 $f0
	ld   a, b                                        ; $5222: $78
	ld   bc, $1020                                   ; $5223: $01 $20 $10
	inc  a                                           ; $5226: $3c
	inc  b                                           ; $5227: $04
	jr   nz, @+$0a                                   ; $5228: $20 $08

	ld   a, [hl-]                                    ; $522a: $3a
	inc  b                                           ; $522b: $04
	db   $10                                         ; $522c: $10
	db   $10                                         ; $522d: $10
	jr   c, jr_023_5234                              ; $522e: $38 $04

	db   $10                                         ; $5230: $10
	ld   [$1436], sp                                 ; $5231: $08 $36 $14

jr_023_5234:
	db   $10                                         ; $5234: $10
	dec  b                                           ; $5235: $05
	or   [hl]                                        ; $5236: $b6
	inc  c                                           ; $5237: $0c
	db   $10                                         ; $5238: $10
	db   $fd                                         ; $5239: $fd
	or   h                                           ; $523a: $b4
	inc  c                                           ; $523b: $0c
	jr   nz, @-$09                                   ; $523c: $20 $f5

	ld   a, [hl]                                     ; $523e: $7e
	inc  bc                                          ; $523f: $03
	jr   nz, @-$11                                   ; $5240: $20 $ed

	ld   a, h                                        ; $5242: $7c

jr_023_5243:
	inc  bc                                          ; $5243: $03
	db   $10                                         ; $5244: $10
	push af                                          ; $5245: $f5
	ld   l, [hl]                                     ; $5246: $6e
	nop                                              ; $5247: $00
	db   $10                                         ; $5248: $10
	db   $ed                                         ; $5249: $ed
	ld   l, h                                        ; $524a: $6c
	nop                                              ; $524b: $00

jr_023_524c:
	jr   jr_023_5243                                 ; $524c: $18 $f5

	add  d                                           ; $524e: $82
	ld   bc, $ed18                                   ; $524f: $01 $18 $ed
	add  b                                           ; $5252: $80
	ld   bc, $f519                                   ; $5253: $01 $19 $f5
	ld   b, [hl]                                     ; $5256: $46
	inc  b                                           ; $5257: $04
	jr   nz, jr_023_525f                             ; $5258: $20 $05

	ld   b, h                                        ; $525a: $44

jr_023_525b:
	inc  b                                           ; $525b: $04
	jr   nz, jr_023_525b                             ; $525c: $20 $fd

	ld   b, d                                        ; $525e: $42

jr_023_525f:
	inc  d                                           ; $525f: $14

jr_023_5260:
	jr   nz, @-$10                                   ; $5260: $20 $ee

	halt                                             ; $5262: $76
	inc  bc                                          ; $5263: $03
	jr   nz, jr_023_524c                             ; $5264: $20 $e6

	ld   [hl], h                                     ; $5266: $74
	inc  bc                                          ; $5267: $03
	db   $10                                         ; $5268: $10
	xor  $72                                         ; $5269: $ee $72
	nop                                              ; $526b: $00
	db   $10                                         ; $526c: $10
	and  $70                                         ; $526d: $e6 $70
	nop                                              ; $526f: $00
	jr   jr_023_5260                                 ; $5270: $18 $ee

	ld   a, d                                        ; $5272: $7a
	ld   bc, $e618                                   ; $5273: $01 $18 $e6
	ld   a, b                                        ; $5276: $78
	ld   bc, $0320                                   ; $5277: $01 $20 $03
	ld   c, d                                        ; $527a: $4a
	inc  b                                           ; $527b: $04
	jr   nz, @-$03                                   ; $527c: $20 $fb

	ld   c, b                                        ; $527e: $48
	inc  b                                           ; $527f: $04
	db   $10                                         ; $5280: $10
	inc  bc                                          ; $5281: $03

jr_023_5282:
	ld   b, b                                        ; $5282: $40
	inc  b                                           ; $5283: $04
	db   $10                                         ; $5284: $10

jr_023_5285:
	ei                                               ; $5285: $fb

jr_023_5286:
	ld   a, $14                                      ; $5286: $3e $14
	add  hl, de                                      ; $5288: $19

jr_023_5289:
	add  sp, $46                                     ; $5289: $e8 $46
	inc  b                                           ; $528b: $04
	jr   nz, jr_023_5286                             ; $528c: $20 $f8

	ld   c, [hl]                                     ; $528e: $4e
	inc  b                                           ; $528f: $04
	jr   nz, jr_023_5282                             ; $5290: $20 $f0

	ld   c, h                                        ; $5292: $4c
	inc  b                                           ; $5293: $04
	db   $10                                         ; $5294: $10
	ld   hl, sp-$46                                  ; $5295: $f8 $ba
	inc  c                                           ; $5297: $0c
	db   $10                                         ; $5298: $10

jr_023_5299:
	ldh  a, [$b8]                                    ; $5299: $f0 $b8
	inc  c                                           ; $529b: $0c
	jr   nz, jr_023_5289                             ; $529c: $20 $eb

	adc  d                                           ; $529e: $8a
	inc  bc                                          ; $529f: $03
	jr   nz, jr_023_5285                             ; $52a0: $20 $e3

	adc  b                                           ; $52a2: $88
	inc  bc                                          ; $52a3: $03
	db   $10                                         ; $52a4: $10
	db   $eb                                         ; $52a5: $eb
	add  [hl]                                        ; $52a6: $86
	nop                                              ; $52a7: $00
	db   $10                                         ; $52a8: $10
	db   $e3                                         ; $52a9: $e3
	add  h                                           ; $52aa: $84
	nop                                              ; $52ab: $00
	jr   jr_023_5299                                 ; $52ac: $18 $eb

	adc  [hl]                                        ; $52ae: $8e
	ld   bc, $e318                                   ; $52af: $01 $18 $e3
	adc  h                                           ; $52b2: $8c
	ld   de, $e720                                   ; $52b3: $11 $20 $e7
	halt                                             ; $52b6: $76
	inc  bc                                          ; $52b7: $03
	jr   nz, jr_023_5299                             ; $52b8: $20 $df

	ld   [hl], h                                     ; $52ba: $74
	inc  bc                                          ; $52bb: $03
	db   $10                                         ; $52bc: $10
	rst  $20                                         ; $52bd: $e7
	ld   [hl], d                                     ; $52be: $72
	nop                                              ; $52bf: $00
	db   $10                                         ; $52c0: $10

jr_023_52c1:
	rst  JumpTable                                         ; $52c1: $df
	ld   [hl], b                                     ; $52c2: $70
	nop                                              ; $52c3: $00
	jr   @-$17                                       ; $52c4: $18 $e7

	ld   a, d                                        ; $52c6: $7a
	ld   bc, $df18                                   ; $52c7: $01 $18 $df
	ld   a, b                                        ; $52ca: $78
	ld   bc, $f720                                   ; $52cb: $01 $20 $f7
	inc  a                                           ; $52ce: $3c
	inc  b                                           ; $52cf: $04
	jr   nz, jr_023_52c1                             ; $52d0: $20 $ef

	ld   a, [hl-]                                    ; $52d2: $3a

jr_023_52d3:
	inc  b                                           ; $52d3: $04
	db   $10                                         ; $52d4: $10
	rst  $30                                         ; $52d5: $f7
	jr   c, jr_023_52dc                              ; $52d6: $38 $04

	db   $10                                         ; $52d8: $10
	rst  $28                                         ; $52d9: $ef
	ld   [hl], $14                                   ; $52da: $36 $14

jr_023_52dc:
	db   $10                                         ; $52dc: $10
	db   $ed                                         ; $52dd: $ed
	or   [hl]                                        ; $52de: $b6
	inc  c                                           ; $52df: $0c
	db   $10                                         ; $52e0: $10
	push hl                                          ; $52e1: $e5
	or   h                                           ; $52e2: $b4
	inc  c                                           ; $52e3: $0c
	add  hl, de                                      ; $52e4: $19
	db   $dd                                         ; $52e5: $dd
	ld   b, [hl]                                     ; $52e6: $46
	inc  b                                           ; $52e7: $04
	jr   nz, @-$11                                   ; $52e8: $20 $ed

	ld   b, h                                        ; $52ea: $44
	inc  b                                           ; $52eb: $04
	jr   nz, jr_023_52d3                             ; $52ec: $20 $e5

	ld   b, d                                        ; $52ee: $42
	inc  b                                           ; $52ef: $04
	dec  h                                           ; $52f0: $25
	db   $eb                                         ; $52f1: $eb
	sub  d                                           ; $52f2: $92
	ld   b, b                                        ; $52f3: $40
	dec  h                                           ; $52f4: $25
	db   $e3                                         ; $52f5: $e3
	sub  b                                           ; $52f6: $90
	ld   b, b                                        ; $52f7: $40
	dec  c                                           ; $52f8: $0d
	db   $eb                                         ; $52f9: $eb
	sub  d                                           ; $52fa: $92
	nop                                              ; $52fb: $00
	dec  c                                           ; $52fc: $0d
	db   $e3                                         ; $52fd: $e3
	sub  b                                           ; $52fe: $90
	db   $10                                         ; $52ff: $10
	jr   nz, @-$13                                   ; $5300: $20 $eb

	ld   c, d                                        ; $5302: $4a

jr_023_5303:
	inc  b                                           ; $5303: $04
	jr   nz, @-$1b                                   ; $5304: $20 $e3

	ld   c, b                                        ; $5306: $48

jr_023_5307:
	inc  b                                           ; $5307: $04
	db   $10                                         ; $5308: $10

jr_023_5309:
	db   $eb                                         ; $5309: $eb
	ld   b, b                                        ; $530a: $40
	inc  b                                           ; $530b: $04
	db   $10                                         ; $530c: $10
	db   $e3                                         ; $530d: $e3
	ld   a, $04                                      ; $530e: $3e $04
	jr   z, jr_023_5307                              ; $5310: $28 $f5

	sub  d                                           ; $5312: $92
	ld   b, b                                        ; $5313: $40
	jr   z, jr_023_5303                              ; $5314: $28 $ed

	sub  b                                           ; $5316: $90
	ld   b, b                                        ; $5317: $40
	db   $10                                         ; $5318: $10
	push af                                          ; $5319: $f5
	sub  d                                           ; $531a: $92
	nop                                              ; $531b: $00
	db   $10                                         ; $531c: $10
	db   $ed                                         ; $531d: $ed
	sub  b                                           ; $531e: $90
	db   $10                                         ; $531f: $10
	jr   nz, jr_023_5309                             ; $5320: $20 $e7

	ld   e, b                                        ; $5322: $58
	inc  b                                           ; $5323: $04
	jr   nz, @-$1f                                   ; $5324: $20 $df

	ld   d, [hl]                                     ; $5326: $56
	inc  b                                           ; $5327: $04
	dec  de                                          ; $5328: $1b
	reti                                             ; $5329: $d9


	ld   b, [hl]                                     ; $532a: $46
	inc  b                                           ; $532b: $04

jr_023_532c:
	db   $10                                         ; $532c: $10
	and  $52                                         ; $532d: $e6 $52
	inc  b                                           ; $532f: $04

jr_023_5330:
	db   $10                                         ; $5330: $10
	sbc  $50                                         ; $5331: $de $50
	inc  b                                           ; $5333: $04
	rla                                              ; $5334: $17
	jp   hl                                          ; $5335: $e9


	sub  h                                           ; $5336: $94
	inc  b                                           ; $5337: $04
	jr   nz, jr_023_5330                             ; $5338: $20 $f6

	sbc  h                                           ; $533a: $9c
	inc  bc                                          ; $533b: $03

jr_023_533c:
	jr   nz, jr_023_532c                             ; $533c: $20 $ee

	sbc  d                                           ; $533e: $9a
	inc  bc                                          ; $533f: $03

jr_023_5340:
	db   $10                                         ; $5340: $10
	or   $98                                         ; $5341: $f6 $98
	nop                                              ; $5343: $00
	db   $10                                         ; $5344: $10
	xor  $96                                         ; $5345: $ee $96
	nop                                              ; $5347: $00
	jr   jr_023_5340                                 ; $5348: $18 $f6

	and  b                                           ; $534a: $a0
	ld   bc, $ee18                                   ; $534b: $01 $18 $ee
	sbc  [hl]                                        ; $534e: $9e
	ld   de, $ec10                                   ; $534f: $11 $10 $ec
	db   $e4                                         ; $5352: $e4
	inc  c                                           ; $5353: $0c
	jr   nz, jr_023_533c                             ; $5354: $20 $e6

	ld   h, h                                        ; $5356: $64
	inc  b                                           ; $5357: $04
	db   $10                                         ; $5358: $10
	db   $e4                                         ; $5359: $e4
	ld   d, h                                        ; $535a: $54
	inc  b                                           ; $535b: $04
	jr   nz, jr_023_533c                             ; $535c: $20 $de

	ld   e, d                                        ; $535e: $5a
	inc  b                                           ; $535f: $04

jr_023_5360:
	db   $10                                         ; $5360: $10
	call c, $0450                                    ; $5361: $dc $50 $04

jr_023_5364:
	rla                                              ; $5364: $17
	reti                                             ; $5365: $d9


	ld   b, [hl]                                     ; $5366: $46
	inc  b                                           ; $5367: $04
	rla                                              ; $5368: $17
	jp   hl                                          ; $5369: $e9


	sub  h                                           ; $536a: $94
	inc  b                                           ; $536b: $04
	jr   nz, jr_023_5364                             ; $536c: $20 $f6

	sbc  h                                           ; $536e: $9c
	inc  bc                                          ; $536f: $03
	jr   nz, jr_023_5360                             ; $5370: $20 $ee

	sbc  d                                           ; $5372: $9a
	inc  bc                                          ; $5373: $03

jr_023_5374:
	db   $10                                         ; $5374: $10
	or   $98                                         ; $5375: $f6 $98
	nop                                              ; $5377: $00
	db   $10                                         ; $5378: $10
	xor  $96                                         ; $5379: $ee $96
	nop                                              ; $537b: $00

jr_023_537c:
	jr   jr_023_5374                                 ; $537c: $18 $f6

	and  b                                           ; $537e: $a0
	ld   bc, $ee18                                   ; $537f: $01 $18 $ee
	sbc  [hl]                                        ; $5382: $9e
	ld   de, $e917                                   ; $5383: $11 $17 $e9
	sub  h                                           ; $5386: $94
	inc  b                                           ; $5387: $04
	jr   nz, @-$08                                   ; $5388: $20 $f6

	sbc  h                                           ; $538a: $9c
	inc  bc                                          ; $538b: $03
	jr   nz, jr_023_537c                             ; $538c: $20 $ee

	sbc  d                                           ; $538e: $9a
	inc  bc                                          ; $538f: $03

jr_023_5390:
	db   $10                                         ; $5390: $10
	or   $98                                         ; $5391: $f6 $98
	nop                                              ; $5393: $00
	db   $10                                         ; $5394: $10
	xor  $96                                         ; $5395: $ee $96
	nop                                              ; $5397: $00
	jr   jr_023_5390                                 ; $5398: $18 $f6

	and  b                                           ; $539a: $a0
	ld   bc, $ee18                                   ; $539b: $01 $18 $ee
	sbc  [hl]                                        ; $539e: $9e
	ld   bc, $e720                                   ; $539f: $01 $20 $e7
	ld   e, b                                        ; $53a2: $58
	inc  b                                           ; $53a3: $04
	jr   nz, @-$1f                                   ; $53a4: $20 $df

	ld   d, [hl]                                     ; $53a6: $56
	inc  b                                           ; $53a7: $04
	db   $10                                         ; $53a8: $10
	and  $52                                         ; $53a9: $e6 $52
	inc  b                                           ; $53ab: $04
	db   $10                                         ; $53ac: $10
	sbc  $50                                         ; $53ad: $de $50
	inc  b                                           ; $53af: $04

jr_023_53b0:
	dec  de                                          ; $53b0: $1b
	reti                                             ; $53b1: $d9


	ld   b, [hl]                                     ; $53b2: $46
	inc  d                                           ; $53b3: $14
	db   $10                                         ; $53b4: $10
	and  $54                                         ; $53b5: $e6 $54
	inc  b                                           ; $53b7: $04
	jr   nz, @-$17                                   ; $53b8: $20 $e7

	ld   h, b                                        ; $53ba: $60
	inc  b                                           ; $53bb: $04

jr_023_53bc:
	rla                                              ; $53bc: $17
	jp   hl                                          ; $53bd: $e9


	sub  h                                           ; $53be: $94
	inc  b                                           ; $53bf: $04
	jr   nz, jr_023_53b0                             ; $53c0: $20 $ee

	sbc  d                                           ; $53c2: $9a
	inc  bc                                          ; $53c3: $03

jr_023_53c4:
	jr   nz, jr_023_53bc                             ; $53c4: $20 $f6

	sbc  h                                           ; $53c6: $9c
	inc  bc                                          ; $53c7: $03

jr_023_53c8:
	db   $10                                         ; $53c8: $10
	or   $98                                         ; $53c9: $f6 $98
	nop                                              ; $53cb: $00
	db   $10                                         ; $53cc: $10
	xor  $96                                         ; $53cd: $ee $96
	nop                                              ; $53cf: $00

jr_023_53d0:
	jr   jr_023_53c8                                 ; $53d0: $18 $f6

	and  b                                           ; $53d2: $a0
	ld   bc, $ee18                                   ; $53d3: $01 $18 $ee
	sbc  [hl]                                        ; $53d6: $9e
	ld   bc, $df20                                   ; $53d7: $01 $20 $df
	ld   e, [hl]                                     ; $53da: $5e
	inc  b                                           ; $53db: $04
	db   $10                                         ; $53dc: $10
	sbc  $50                                         ; $53dd: $de $50
	inc  b                                           ; $53df: $04
	rla                                              ; $53e0: $17
	jp   c, $1446                                    ; $53e1: $da $46 $14

	jr   nz, jr_023_53c4                             ; $53e4: $20 $de

	ld   h, d                                        ; $53e6: $62
	inc  b                                           ; $53e7: $04
	jr   nz, jr_023_53d0                             ; $53e8: $20 $e6

	ld   e, h                                        ; $53ea: $5c
	inc  b                                           ; $53eb: $04
	db   $10                                         ; $53ec: $10
	call c, $0450                                    ; $53ed: $dc $50 $04

jr_023_53f0:
	dec  de                                          ; $53f0: $1b
	ret  c                                           ; $53f1: $d8

	ld   b, [hl]                                     ; $53f2: $46
	inc  b                                           ; $53f3: $04

jr_023_53f4:
	db   $10                                         ; $53f4: $10
	db   $e4                                         ; $53f5: $e4
	ld   d, d                                        ; $53f6: $52
	inc  b                                           ; $53f7: $04
	rla                                              ; $53f8: $17
	jp   hl                                          ; $53f9: $e9


	sub  h                                           ; $53fa: $94
	inc  b                                           ; $53fb: $04
	jr   nz, jr_023_53f4                             ; $53fc: $20 $f6

	sbc  h                                           ; $53fe: $9c
	inc  bc                                          ; $53ff: $03

jr_023_5400:
	jr   nz, jr_023_53f0                             ; $5400: $20 $ee

	sbc  d                                           ; $5402: $9a
	inc  bc                                          ; $5403: $03

jr_023_5404:
	db   $10                                         ; $5404: $10
	or   $98                                         ; $5405: $f6 $98
	nop                                              ; $5407: $00
	db   $10                                         ; $5408: $10
	xor  $96                                         ; $5409: $ee $96
	nop                                              ; $540b: $00
	jr   jr_023_5404                                 ; $540c: $18 $f6

	and  b                                           ; $540e: $a0
	ld   bc, $ee18                                   ; $540f: $01 $18 $ee
	sbc  [hl]                                        ; $5412: $9e
	ld   de, $de20                                   ; $5413: $11 $20 $de
	ld   e, d                                        ; $5416: $5a
	inc  b                                           ; $5417: $04
	jr   nz, jr_023_5400                             ; $5418: $20 $e6

	ld   h, h                                        ; $541a: $64
	inc  b                                           ; $541b: $04
	db   $10                                         ; $541c: $10
	db   $e4                                         ; $541d: $e4
	ld   d, h                                        ; $541e: $54
	inc  b                                           ; $541f: $04

jr_023_5420:
	db   $10                                         ; $5420: $10
	call c, $0450                                    ; $5421: $dc $50 $04

jr_023_5424:
	rla                                              ; $5424: $17
	reti                                             ; $5425: $d9


	ld   b, [hl]                                     ; $5426: $46
	inc  b                                           ; $5427: $04
	jr   @-$17                                       ; $5428: $18 $e7

	sub  h                                           ; $542a: $94
	inc  b                                           ; $542b: $04

jr_023_542c:
	jr   nz, jr_023_5424                             ; $542c: $20 $f6

	sbc  h                                           ; $542e: $9c
	inc  bc                                          ; $542f: $03

jr_023_5430:
	jr   nz, jr_023_5420                             ; $5430: $20 $ee

	and  d                                           ; $5432: $a2
	inc  bc                                          ; $5433: $03
	db   $10                                         ; $5434: $10
	or   $98                                         ; $5435: $f6 $98
	nop                                              ; $5437: $00
	db   $10                                         ; $5438: $10
	xor  $96                                         ; $5439: $ee $96
	nop                                              ; $543b: $00
	jr   jr_023_542c                                 ; $543c: $18 $ee

	and  h                                           ; $543e: $a4
	ld   bc, $f618                                   ; $543f: $01 $18 $f6
	and  b                                           ; $5442: $a0
	ld   de, $de20                                   ; $5443: $11 $20 $de
	ld   h, d                                        ; $5446: $62
	inc  b                                           ; $5447: $04
	jr   nz, jr_023_5430                             ; $5448: $20 $e6

	ld   e, h                                        ; $544a: $5c
	inc  b                                           ; $544b: $04
	db   $10                                         ; $544c: $10
	db   $e4                                         ; $544d: $e4
	ld   d, d                                        ; $544e: $52
	inc  b                                           ; $544f: $04

jr_023_5450:
	db   $10                                         ; $5450: $10
	call c, $0450                                    ; $5451: $dc $50 $04

jr_023_5454:
	dec  de                                          ; $5454: $1b
	ret  c                                           ; $5455: $d8

	ld   b, [hl]                                     ; $5456: $46
	inc  b                                           ; $5457: $04
	jr   @-$17                                       ; $5458: $18 $e7

	sub  h                                           ; $545a: $94
	inc  b                                           ; $545b: $04
	jr   nz, jr_023_5454                             ; $545c: $20 $f6

	sbc  h                                           ; $545e: $9c
	inc  bc                                          ; $545f: $03
	jr   nz, jr_023_5450                             ; $5460: $20 $ee

	and  d                                           ; $5462: $a2
	inc  bc                                          ; $5463: $03

jr_023_5464:
	db   $10                                         ; $5464: $10
	or   $98                                         ; $5465: $f6 $98
	nop                                              ; $5467: $00
	db   $10                                         ; $5468: $10
	xor  $96                                         ; $5469: $ee $96
	nop                                              ; $546b: $00

jr_023_546c:
	jr   jr_023_5464                                 ; $546c: $18 $f6

	and  b                                           ; $546e: $a0
	ld   bc, $ee18                                   ; $546f: $01 $18 $ee
	and  h                                           ; $5472: $a4
	ld   de, $e917                                   ; $5473: $11 $17 $e9
	sub  h                                           ; $5476: $94
	inc  b                                           ; $5477: $04
	jr   nz, @-$08                                   ; $5478: $20 $f6

	sbc  h                                           ; $547a: $9c
	inc  bc                                          ; $547b: $03
	jr   nz, jr_023_546c                             ; $547c: $20 $ee

	sbc  d                                           ; $547e: $9a
	inc  bc                                          ; $547f: $03

jr_023_5480:
	db   $10                                         ; $5480: $10
	or   $98                                         ; $5481: $f6 $98
	nop                                              ; $5483: $00
	db   $10                                         ; $5484: $10
	xor  $96                                         ; $5485: $ee $96
	nop                                              ; $5487: $00
	jr   jr_023_5480                                 ; $5488: $18 $f6

	and  b                                           ; $548a: $a0
	ld   bc, $ee18                                   ; $548b: $01 $18 $ee
	sbc  [hl]                                        ; $548e: $9e
	ld   bc, $e220                                   ; $548f: $01 $20 $e2
	ld   l, d                                        ; $5492: $6a

jr_023_5493:
	inc  b                                           ; $5493: $04

jr_023_5494:
	jr   nz, @-$24                                   ; $5494: $20 $da

	ld   l, b                                        ; $5496: $68

jr_023_5497:
	inc  b                                           ; $5497: $04

jr_023_5498:
	jr   nz, jr_023_546c                             ; $5498: $20 $d2

	ld   h, [hl]                                     ; $549a: $66
	inc  d                                           ; $549b: $14
	rla                                              ; $549c: $17
	jp   hl                                          ; $549d: $e9


	sub  h                                           ; $549e: $94
	inc  b                                           ; $549f: $04
	jr   nz, jr_023_5498                             ; $54a0: $20 $f6

	sbc  h                                           ; $54a2: $9c
	inc  bc                                          ; $54a3: $03
	jr   nz, jr_023_5494                             ; $54a4: $20 $ee

	sbc  d                                           ; $54a6: $9a
	inc  bc                                          ; $54a7: $03

jr_023_54a8:
	db   $10                                         ; $54a8: $10
	or   $98                                         ; $54a9: $f6 $98
	nop                                              ; $54ab: $00
	db   $10                                         ; $54ac: $10
	xor  $96                                         ; $54ad: $ee $96
	nop                                              ; $54af: $00
	jr   jr_023_54a8                                 ; $54b0: $18 $f6

	and  b                                           ; $54b2: $a0
	ld   bc, $ee18                                   ; $54b3: $01 $18 $ee

jr_023_54b6:
	sbc  [hl]                                        ; $54b6: $9e
	ld   bc, $e120                                   ; $54b7: $01 $20 $e1

jr_023_54ba:
	ld   l, d                                        ; $54ba: $6a
	inc  b                                           ; $54bb: $04

jr_023_54bc:
	jr   nz, jr_023_5497                             ; $54bc: $20 $d9

	ld   l, b                                        ; $54be: $68
	inc  b                                           ; $54bf: $04
	jr   nz, jr_023_5493                             ; $54c0: $20 $d1

	ld   h, [hl]                                     ; $54c2: $66
	inc  d                                           ; $54c3: $14
	jr   nz, jr_023_54bc                             ; $54c4: $20 $f6

	sbc  h                                           ; $54c6: $9c
	inc  bc                                          ; $54c7: $03
	jr   nz, @-$10                                   ; $54c8: $20 $ee

	xor  d                                           ; $54ca: $aa
	inc  bc                                          ; $54cb: $03

jr_023_54cc:
	db   $10                                         ; $54cc: $10
	or   $a8                                         ; $54cd: $f6 $a8
	nop                                              ; $54cf: $00
	db   $10                                         ; $54d0: $10
	xor  $a6                                         ; $54d1: $ee $a6
	nop                                              ; $54d3: $00
	jr   jr_023_54cc                                 ; $54d4: $18 $f6

	xor  [hl]                                        ; $54d6: $ae
	ld   bc, $ee18                                   ; $54d7: $01 $18 $ee
	xor  h                                           ; $54da: $ac
	ld   bc, $e020                                   ; $54db: $01 $20 $e0
	ld   l, d                                        ; $54de: $6a
	inc  b                                           ; $54df: $04
	jr   nz, jr_023_54ba                             ; $54e0: $20 $d8

	ld   l, b                                        ; $54e2: $68
	inc  b                                           ; $54e3: $04
	jr   nz, jr_023_54b6                             ; $54e4: $20 $d0

	ld   h, [hl]                                     ; $54e6: $66
	inc  d                                           ; $54e7: $14
	jr   nz, @-$03                                   ; $54e8: $20 $fb

	jp   nc, $2003                                   ; $54ea: $d2 $03 $20

	di                                               ; $54ed: $f3
	ret  nc                                          ; $54ee: $d0

	inc  bc                                          ; $54ef: $03
	db   $10                                         ; $54f0: $10

jr_023_54f1:
	ei                                               ; $54f1: $fb
	adc  $00                                         ; $54f2: $ce $00
	db   $10                                         ; $54f4: $10
	di                                               ; $54f5: $f3
	call z, $1800                                    ; $54f6: $cc $00 $18
	ei                                               ; $54f9: $fb
	sub  $01                                         ; $54fa: $d6 $01
	jr   jr_023_54f1                                 ; $54fc: $18 $f3

	call nc, $2001                                   ; $54fe: $d4 $01 $20
	db   $10                                         ; $5501: $10
	ld   c, d                                        ; $5502: $4a
	inc  b                                           ; $5503: $04
	jr   nz, @+$0a                                   ; $5504: $20 $08

	ld   c, b                                        ; $5506: $48
	inc  b                                           ; $5507: $04
	db   $10                                         ; $5508: $10

jr_023_5509:
	db   $10                                         ; $5509: $10
	ld   b, b                                        ; $550a: $40
	inc  b                                           ; $550b: $04
	db   $10                                         ; $550c: $10
	ld   [$143e], sp                                 ; $550d: $08 $3e $14
	add  hl, de                                      ; $5510: $19
	db   $f4                                         ; $5511: $f4
	ld   b, [hl]                                     ; $5512: $46
	inc  b                                           ; $5513: $04
	jr   nz, jr_023_5509                             ; $5514: $20 $f3

	jp   c, $2003                                    ; $5516: $da $03 $20

	db   $ec                                         ; $5519: $ec
	ret  c                                           ; $551a: $d8

	inc  bc                                          ; $551b: $03
	ld   de, $72f4                                   ; $551c: $11 $f4 $72
	nop                                              ; $551f: $00
	ld   de, $70ec                                   ; $5520: $11 $ec $70
	nop                                              ; $5523: $00
	db   $10                                         ; $5524: $10
	inc  b                                           ; $5525: $04
	cp   d                                           ; $5526: $ba
	inc  c                                           ; $5527: $0c
	db   $10                                         ; $5528: $10
	db   $fc                                         ; $5529: $fc
	cp   b                                           ; $552a: $b8
	inc  c                                           ; $552b: $0c
	jr   @-$0a                                       ; $552c: $18 $f4

	sbc  $01                                         ; $552e: $de $01
	jr   @-$12                                       ; $5530: $18 $ec

	call c, $2001                                    ; $5532: $dc $01 $20
	inc  b                                           ; $5535: $04

jr_023_5536:
	ld   c, [hl]                                     ; $5536: $4e
	inc  b                                           ; $5537: $04
	jr   nz, jr_023_5536                             ; $5538: $20 $fc

	ld   c, h                                        ; $553a: $4c
	inc  d                                           ; $553b: $14
	add  hl, de                                      ; $553c: $19

jr_023_553d:
	db   $f4                                         ; $553d: $f4
	ld   b, [hl]                                     ; $553e: $46
	inc  b                                           ; $553f: $04
	db   $10                                         ; $5540: $10
	inc  b                                           ; $5541: $04
	cp   d                                           ; $5542: $ba
	inc  c                                           ; $5543: $0c
	db   $10                                         ; $5544: $10
	db   $fc                                         ; $5545: $fc
	cp   b                                           ; $5546: $b8
	inc  c                                           ; $5547: $0c
	jr   nz, jr_023_553d                             ; $5548: $20 $f3

	xor  $03                                         ; $554a: $ee $03
	jr   nz, @-$13                                   ; $554c: $20 $eb

	db   $ec                                         ; $554e: $ec
	inc  bc                                          ; $554f: $03
	db   $10                                         ; $5550: $10
	di                                               ; $5551: $f3
	ld   [hl], d                                     ; $5552: $72
	nop                                              ; $5553: $00
	db   $10                                         ; $5554: $10
	db   $eb                                         ; $5555: $eb
	ld   [hl], b                                     ; $5556: $70
	nop                                              ; $5557: $00
	jr   @-$0b                                       ; $5558: $18 $f3

	db   $fc                                         ; $555a: $fc
	ld   bc, $eb17                                   ; $555b: $01 $17 $eb
	call c, $2001                                    ; $555e: $dc $01 $20
	inc  b                                           ; $5561: $04

jr_023_5562:
	ld   c, [hl]                                     ; $5562: $4e
	inc  b                                           ; $5563: $04
	jr   nz, jr_023_5562                             ; $5564: $20 $fc

	ld   c, h                                        ; $5566: $4c
	inc  d                                           ; $5567: $14
	jr   nz, @-$0b                                   ; $5568: $20 $f3

	xor  $03                                         ; $556a: $ee $03
	jr   nz, @-$13                                   ; $556c: $20 $eb

	db   $ec                                         ; $556e: $ec
	inc  bc                                          ; $556f: $03
	db   $10                                         ; $5570: $10
	di                                               ; $5571: $f3
	ld   [hl], d                                     ; $5572: $72
	nop                                              ; $5573: $00
	db   $10                                         ; $5574: $10
	db   $eb                                         ; $5575: $eb
	ld   [hl], b                                     ; $5576: $70
	nop                                              ; $5577: $00
	jr   @-$0b                                       ; $5578: $18 $f3

	db   $fc                                         ; $557a: $fc
	ld   bc, $eb17                                   ; $557b: $01 $17 $eb
	call c, $2001                                    ; $557e: $dc $01 $20
	ld   b, $3c                                      ; $5581: $06 $3c
	inc  b                                           ; $5583: $04

jr_023_5584:
	jr   nz, jr_023_5584                             ; $5584: $20 $fe

	ld   a, [hl-]                                    ; $5586: $3a
	inc  b                                           ; $5587: $04
	db   $10                                         ; $5588: $10
	ld   b, $38                                      ; $5589: $06 $38
	inc  b                                           ; $558b: $04

jr_023_558c:
	db   $10                                         ; $558c: $10
	cp   $36                                         ; $558d: $fe $36
	inc  d                                           ; $558f: $14

jr_023_5590:
	db   $10                                         ; $5590: $10
	rlca                                             ; $5591: $07
	cp   d                                           ; $5592: $ba
	inc  c                                           ; $5593: $0c
	db   $10                                         ; $5594: $10
	rst  $38                                         ; $5595: $ff
	cp   b                                           ; $5596: $b8
	inc  c                                           ; $5597: $0c
	jr   nz, jr_023_5590                             ; $5598: $20 $f6

	or   d                                           ; $559a: $b2
	dec  bc                                          ; $559b: $0b

jr_023_559c:
	jr   nz, jr_023_558c                             ; $559c: $20 $ee

	or   b                                           ; $559e: $b0
	dec  bc                                          ; $559f: $0b
	ld   a, [de]                                     ; $55a0: $1a
	cp   $46                                         ; $55a1: $fe $46
	inc  h                                           ; $55a3: $24
	ld   de, $72f6                                   ; $55a4: $11 $f6 $72
	nop                                              ; $55a7: $00
	ld   de, $70ee                                   ; $55a8: $11 $ee $70
	nop                                              ; $55ab: $00
	jr   jr_023_559c                                 ; $55ac: $18 $ee

	call c, $1801                                    ; $55ae: $dc $01 $18
	or   $fe                                         ; $55b1: $f6 $fe
	ld   bc, $0620                                   ; $55b3: $01 $20 $06

jr_023_55b6:
	or   d                                           ; $55b6: $b2
	inc  b                                           ; $55b7: $04

jr_023_55b8:
	jr   nz, jr_023_55b8                             ; $55b8: $20 $fe

	or   b                                           ; $55ba: $b0
	inc  d                                           ; $55bb: $14
	jr   nz, jr_023_55b6                             ; $55bc: $20 $f8

	xor  $03                                         ; $55be: $ee $03
	jr   nz, @-$0e                                   ; $55c0: $20 $f0

	db   $ec                                         ; $55c2: $ec
	inc  bc                                          ; $55c3: $03
	db   $10                                         ; $55c4: $10
	ld   hl, sp+$72                                  ; $55c5: $f8 $72
	nop                                              ; $55c7: $00
	db   $10                                         ; $55c8: $10
	ldh  a, [rSVBK]                                  ; $55c9: $f0 $70
	nop                                              ; $55cb: $00
	rla                                              ; $55cc: $17
	ldh  a, [$dc]                                    ; $55cd: $f0 $dc
	ld   bc, $f818                                   ; $55cf: $01 $18 $f8
	db   $fc                                         ; $55d2: $fc
	ld   bc, $0720                                   ; $55d3: $01 $20 $07
	ld   c, d                                        ; $55d6: $4a
	inc  b                                           ; $55d7: $04
	jr   nz, @+$01                                   ; $55d8: $20 $ff

	ld   c, b                                        ; $55da: $48

jr_023_55db:
	inc  b                                           ; $55db: $04
	db   $10                                         ; $55dc: $10
	rlca                                             ; $55dd: $07
	ld   b, b                                        ; $55de: $40

jr_023_55df:
	inc  b                                           ; $55df: $04
	db   $10                                         ; $55e0: $10
	rst  $38                                         ; $55e1: $ff
	ld   a, $14                                      ; $55e2: $3e $14
	add  hl, de                                      ; $55e4: $19
	db   $ed                                         ; $55e5: $ed
	ld   b, [hl]                                     ; $55e6: $46
	inc  b                                           ; $55e7: $04
	db   $10                                         ; $55e8: $10
	db   $fd                                         ; $55e9: $fd
	cp   d                                           ; $55ea: $ba
	inc  c                                           ; $55eb: $0c
	db   $10                                         ; $55ec: $10
	push af                                          ; $55ed: $f5
	cp   b                                           ; $55ee: $b8

jr_023_55ef:
	inc  c                                           ; $55ef: $0c
	jr   nz, jr_023_55df                             ; $55f0: $20 $ed

	cp   [hl]                                        ; $55f2: $be
	dec  bc                                          ; $55f3: $0b
	jr   nz, jr_023_55db                             ; $55f4: $20 $e5

	cp   h                                           ; $55f6: $bc
	dec  bc                                          ; $55f7: $0b
	ld   de, $ceed                                   ; $55f8: $11 $ed $ce
	nop                                              ; $55fb: $00
	ld   de, $cce5                                   ; $55fc: $11 $e5 $cc

jr_023_55ff:
	nop                                              ; $55ff: $00
	jr   jr_023_55ef                                 ; $5600: $18 $ed

	add  b                                           ; $5602: $80

jr_023_5603:
	add  hl, bc                                      ; $5603: $09
	add  hl, de                                      ; $5604: $19
	push hl                                          ; $5605: $e5
	call nc, $2001                                   ; $5606: $d4 $01 $20
	db   $fd                                         ; $5609: $fd
	ld   c, [hl]                                     ; $560a: $4e

jr_023_560b:
	inc  b                                           ; $560b: $04
	jr   nz, jr_023_5603                             ; $560c: $20 $f5

	ld   c, h                                        ; $560e: $4c
	inc  d                                           ; $560f: $14
	jr   nz, jr_023_55ff                             ; $5610: $20 $ed

	jp   nc, $2003                                   ; $5612: $d2 $03 $20

	push hl                                          ; $5615: $e5
	ret  nc                                          ; $5616: $d0

	inc  bc                                          ; $5617: $03
	db   $10                                         ; $5618: $10
	db   $ed                                         ; $5619: $ed
	adc  $00                                         ; $561a: $ce $00
	db   $10                                         ; $561c: $10
	push hl                                          ; $561d: $e5
	call z, $1800                                    ; $561e: $cc $00 $18
	db   $ed                                         ; $5621: $ed
	sub  $01                                         ; $5622: $d6 $01
	jr   jr_023_560b                                 ; $5624: $18 $e5

	call nc, $2001                                   ; $5626: $d4 $01 $20
	rst  $38                                         ; $5629: $ff
	inc  a                                           ; $562a: $3c
	inc  b                                           ; $562b: $04
	jr   nz, @-$07                                   ; $562c: $20 $f7

	ld   a, [hl-]                                    ; $562e: $3a
	inc  b                                           ; $562f: $04
	db   $10                                         ; $5630: $10
	rst  $38                                         ; $5631: $ff
	jr   c, jr_023_5638                              ; $5632: $38 $04

jr_023_5634:
	db   $10                                         ; $5634: $10
	rst  $30                                         ; $5635: $f7
	ld   [hl], $14                                   ; $5636: $36 $14

jr_023_5638:
	db   $10                                         ; $5638: $10
	dec  b                                           ; $5639: $05
	cp   d                                           ; $563a: $ba
	inc  c                                           ; $563b: $0c
	db   $10                                         ; $563c: $10
	db   $fd                                         ; $563d: $fd
	cp   b                                           ; $563e: $b8
	inc  c                                           ; $563f: $0c

jr_023_5640:
	jr   nz, jr_023_5638                             ; $5640: $20 $f6

	add  h                                           ; $5642: $84
	dec  bc                                          ; $5643: $0b

jr_023_5644:
	jr   nz, jr_023_5634                             ; $5644: $20 $ee

	add  d                                           ; $5646: $82
	dec  bc                                          ; $5647: $0b
	ld   de, $72f2                                   ; $5648: $11 $f2 $72
	nop                                              ; $564b: $00
	ld   de, $70ea                                   ; $564c: $11 $ea $70
	nop                                              ; $564f: $00
	jr   jr_023_5644                                 ; $5650: $18 $f2

	adc  b                                           ; $5652: $88
	add  hl, bc                                      ; $5653: $09
	jr   jr_023_5640                                 ; $5654: $18 $ea

	add  [hl]                                        ; $5656: $86
	add  hl, bc                                      ; $5657: $09
	jr   nz, jr_023_565e                             ; $5658: $20 $04

jr_023_565a:
	or   d                                           ; $565a: $b2
	inc  b                                           ; $565b: $04
	jr   nz, jr_023_565a                             ; $565c: $20 $fc

jr_023_565e:
	or   b                                           ; $565e: $b0
	inc  d                                           ; $565f: $14
	db   $10                                         ; $5660: $10
	dec  b                                           ; $5661: $05
	cp   d                                           ; $5662: $ba
	inc  c                                           ; $5663: $0c
	db   $10                                         ; $5664: $10
	db   $fd                                         ; $5665: $fd
	cp   b                                           ; $5666: $b8
	inc  c                                           ; $5667: $0c
	jr   nz, @-$0b                                   ; $5668: $20 $f3

	adc  h                                           ; $566a: $8c
	dec  bc                                          ; $566b: $0b
	jr   nz, @-$13                                   ; $566c: $20 $eb

	adc  d                                           ; $566e: $8a
	dec  bc                                          ; $566f: $0b
	db   $10                                         ; $5670: $10
	di                                               ; $5671: $f3
	sub  h                                           ; $5672: $94
	ld   [$eb10], sp                                 ; $5673: $08 $10 $eb
	sub  d                                           ; $5676: $92
	ld   [$eb19], sp                                 ; $5677: $08 $19 $eb
	adc  [hl]                                        ; $567a: $8e
	add  hl, bc                                      ; $567b: $09
	add  hl, de                                      ; $567c: $19
	di                                               ; $567d: $f3
	sub  b                                           ; $567e: $90
	add  hl, bc                                      ; $567f: $09
	jr   nz, jr_023_5686                             ; $5680: $20 $04

jr_023_5682:
	or   d                                           ; $5682: $b2
	inc  b                                           ; $5683: $04
	jr   nz, jr_023_5682                             ; $5684: $20 $fc

jr_023_5686:
	or   b                                           ; $5686: $b0
	inc  d                                           ; $5687: $14
	ld   a, [de]                                     ; $5688: $1a
	inc  b                                           ; $5689: $04
	ld   b, [hl]                                     ; $568a: $46
	inc  h                                           ; $568b: $24
	db   $10                                         ; $568c: $10
	ld   a, [bc]                                     ; $568d: $0a

jr_023_568e:
	or   [hl]                                        ; $568e: $b6
	inc  c                                           ; $568f: $0c
	db   $10                                         ; $5690: $10
	ld   [bc], a                                     ; $5691: $02

jr_023_5692:
	or   h                                           ; $5692: $b4
	inc  c                                           ; $5693: $0c
	jr   nz, jr_023_5692                             ; $5694: $20 $fc

	or   d                                           ; $5696: $b2
	dec  bc                                          ; $5697: $0b
	jr   nz, jr_023_568e                             ; $5698: $20 $f4

jr_023_569a:
	or   b                                           ; $569a: $b0
	dec  bc                                          ; $569b: $0b
	ld   de, $72fc                                   ; $569c: $11 $fc $72
	nop                                              ; $569f: $00
	ld   de, $70f4                                   ; $56a0: $11 $f4 $70
	nop                                              ; $56a3: $00
	jr   jr_023_569a                                 ; $56a4: $18 $f4

	call c, $1801                                    ; $56a6: $dc $01 $18
	db   $fc                                         ; $56a9: $fc
	cp   $01                                         ; $56aa: $fe $01
	jr   nz, jr_023_56b8                             ; $56ac: $20 $0a

	or   [hl]                                        ; $56ae: $b6
	inc  b                                           ; $56af: $04
	jr   nz, jr_023_56b4                             ; $56b0: $20 $02

	or   h                                           ; $56b2: $b4
	inc  d                                           ; $56b3: $14

jr_023_56b4:
	db   $10                                         ; $56b4: $10
	ld   [de], a                                     ; $56b5: $12
	cp   d                                           ; $56b6: $ba
	inc  c                                           ; $56b7: $0c

jr_023_56b8:
	db   $10                                         ; $56b8: $10
	ld   a, [bc]                                     ; $56b9: $0a
	cp   b                                           ; $56ba: $b8
	inc  c                                           ; $56bb: $0c
	jr   nz, @+$05                                   ; $56bc: $20 $03

	sbc  b                                           ; $56be: $98
	dec  bc                                          ; $56bf: $0b
	jr   nz, @-$03                                   ; $56c0: $20 $fb

	sub  [hl]                                        ; $56c2: $96
	dec  bc                                          ; $56c3: $0b
	ld   de, $ce03                                   ; $56c4: $11 $03 $ce
	nop                                              ; $56c7: $00
	ld   de, $ccfb                                   ; $56c8: $11 $fb $cc
	nop                                              ; $56cb: $00
	jr   jr_023_56d1                                 ; $56cc: $18 $03

	sbc  d                                           ; $56ce: $9a
	add  hl, bc                                      ; $56cf: $09
	add  hl, de                                      ; $56d0: $19

jr_023_56d1:
	ei                                               ; $56d1: $fb
	call nc, $2001                                   ; $56d2: $d4 $01 $20
	ld   [de], a                                     ; $56d5: $12
	cp   d                                           ; $56d6: $ba
	inc  b                                           ; $56d7: $04
	jr   nz, jr_023_56e4                             ; $56d8: $20 $0a

	cp   b                                           ; $56da: $b8
	inc  d                                           ; $56db: $14
	jr   nz, @+$04                                   ; $56dc: $20 $02

	jp   nc, $2003                                   ; $56de: $d2 $03 $20

	ld   a, [$03d0]                                  ; $56e1: $fa $d0 $03

jr_023_56e4:
	db   $10                                         ; $56e4: $10
	ld   [bc], a                                     ; $56e5: $02
	adc  $00                                         ; $56e6: $ce $00
	db   $10                                         ; $56e8: $10
	ld   a, [$00cc]                                  ; $56e9: $fa $cc $00

jr_023_56ec:
	jr   jr_023_56f0                                 ; $56ec: $18 $02

	sub  $01                                         ; $56ee: $d6 $01

jr_023_56f0:
	jr   jr_023_56ec                                 ; $56f0: $18 $fa

	call nc, $2001                                   ; $56f2: $d4 $01 $20
	ld   [de], a                                     ; $56f5: $12
	inc  a                                           ; $56f6: $3c
	inc  b                                           ; $56f7: $04
	jr   nz, jr_023_5704                             ; $56f8: $20 $0a

	ld   a, [hl-]                                    ; $56fa: $3a
	inc  b                                           ; $56fb: $04
	db   $10                                         ; $56fc: $10
	ld   [de], a                                     ; $56fd: $12
	jr   c, jr_023_5704                              ; $56fe: $38 $04

	db   $10                                         ; $5700: $10
	ld   a, [bc]                                     ; $5701: $0a
	ld   [hl], $14                                   ; $5702: $36 $14

jr_023_5704:
	db   $10                                         ; $5704: $10
	rlca                                             ; $5705: $07

jr_023_5706:
	or   [hl]                                        ; $5706: $b6
	inc  c                                           ; $5707: $0c
	db   $10                                         ; $5708: $10
	rst  $38                                         ; $5709: $ff
	or   h                                           ; $570a: $b4
	inc  c                                           ; $570b: $0c
	jr   nz, jr_023_5706                             ; $570c: $20 $f8

	jp   c, $2003                                    ; $570e: $da $03 $20

	ldh  a, [$d8]                                    ; $5711: $f0 $d8
	inc  bc                                          ; $5713: $03
	ld   de, $72f8                                   ; $5714: $11 $f8 $72
	nop                                              ; $5717: $00
	ld   de, $70f0                                   ; $5718: $11 $f0 $70
	nop                                              ; $571b: $00
	jr   nz, @+$01                                   ; $571c: $20 $ff

	ld   b, d                                        ; $571e: $42
	inc  b                                           ; $571f: $04
	jr   @-$06                                       ; $5720: $18 $f8

	sbc  $01                                         ; $5722: $de $01
	jr   @-$0e                                       ; $5724: $18 $f0

	call c, $2001                                    ; $5726: $dc $01 $20
	rlca                                             ; $5729: $07
	ld   b, h                                        ; $572a: $44
	inc  d                                           ; $572b: $14
	jr   nz, @-$07                                   ; $572c: $20 $f7

	xor  $03                                         ; $572e: $ee $03
	jr   nz, @-$0f                                   ; $5730: $20 $ef

	db   $ec                                         ; $5732: $ec
	inc  bc                                          ; $5733: $03
	db   $10                                         ; $5734: $10
	rst  $30                                         ; $5735: $f7
	ld   [hl], d                                     ; $5736: $72
	nop                                              ; $5737: $00
	db   $10                                         ; $5738: $10
	rst  $28                                         ; $5739: $ef
	ld   [hl], b                                     ; $573a: $70
	nop                                              ; $573b: $00
	rla                                              ; $573c: $17
	rst  $28                                         ; $573d: $ef
	call c, $1801                                    ; $573e: $dc $01 $18
	rst  $30                                         ; $5741: $f7
	db   $fc                                         ; $5742: $fc
	ld   bc, $0820                                   ; $5743: $01 $20 $08
	ld   c, d                                        ; $5746: $4a
	inc  b                                           ; $5747: $04
	jr   nz, jr_023_574a                             ; $5748: $20 $00

jr_023_574a:
	ld   c, b                                        ; $574a: $48

jr_023_574b:
	inc  b                                           ; $574b: $04
	db   $10                                         ; $574c: $10
	ld   [$0440], sp                                 ; $574d: $08 $40 $04
	stop                                             ; $5750: $10 $00
	ld   a, $14                                      ; $5752: $3e $14
	db   $10                                         ; $5754: $10
	inc  b                                           ; $5755: $04
	and  $0c                                         ; $5756: $e6 $0c
	jr   nz, @-$09                                   ; $5758: $20 $f5

	halt                                             ; $575a: $76
	inc  bc                                          ; $575b: $03
	jr   nz, jr_023_574b                             ; $575c: $20 $ed

	ld   [hl], h                                     ; $575e: $74

jr_023_575f:
	inc  bc                                          ; $575f: $03
	db   $10                                         ; $5760: $10
	push af                                          ; $5761: $f5
	ld   [hl], d                                     ; $5762: $72
	nop                                              ; $5763: $00
	db   $10                                         ; $5764: $10
	db   $ed                                         ; $5765: $ed
	ld   [hl], b                                     ; $5766: $70
	nop                                              ; $5767: $00
	jr   jr_023_575f                                 ; $5768: $18 $f5

	ld   a, d                                        ; $576a: $7a
	ld   bc, $ed18                                   ; $576b: $01 $18 $ed
	ld   a, b                                        ; $576e: $78
	ld   bc, $0b20                                   ; $576f: $01 $20 $0b
	cp   [hl]                                        ; $5772: $be

jr_023_5773:
	inc  b                                           ; $5773: $04
	jr   nz, jr_023_5779                             ; $5774: $20 $03

	cp   h                                           ; $5776: $bc

jr_023_5777:
	inc  b                                           ; $5777: $04
	db   $10                                         ; $5778: $10

jr_023_5779:
	inc  c                                           ; $5779: $0c
	jr   c, jr_023_5790                              ; $577a: $38 $14

	db   $10                                         ; $577c: $10
	inc  b                                           ; $577d: $04
	and  $0c                                         ; $577e: $e6 $0c
	jr   nz, jr_023_5777                             ; $5780: $20 $f5

	sbc  [hl]                                        ; $5782: $9e
	dec  bc                                          ; $5783: $0b
	jr   nz, jr_023_5773                             ; $5784: $20 $ed

	sbc  h                                           ; $5786: $9c
	dec  bc                                          ; $5787: $0b
	db   $10                                         ; $5788: $10
	push af                                          ; $5789: $f5
	ld   [hl], d                                     ; $578a: $72

jr_023_578b:
	nop                                              ; $578b: $00
	db   $10                                         ; $578c: $10
	db   $ed                                         ; $578d: $ed
	ld   [hl], b                                     ; $578e: $70
	nop                                              ; $578f: $00

jr_023_5790:
	jr   @-$11                                       ; $5790: $18 $ed

	and  b                                           ; $5792: $a0
	add  hl, bc                                      ; $5793: $09
	jr   jr_023_578b                                 ; $5794: $18 $f5

	and  d                                           ; $5796: $a2

jr_023_5797:
	add  hl, bc                                      ; $5797: $09
	jr   nz, @+$0d                                   ; $5798: $20 $0b

	jp   nz, $2004                                   ; $579a: $c2 $04 $20

	inc  bc                                          ; $579d: $03
	ret  nz                                          ; $579e: $c0

	inc  b                                           ; $579f: $04
	db   $10                                         ; $57a0: $10
	inc  c                                           ; $57a1: $0c
	jr   c, jr_023_57b8                              ; $57a2: $38 $14

	jr   nz, @-$09                                   ; $57a4: $20 $f5

	and  [hl]                                        ; $57a6: $a6
	dec  bc                                          ; $57a7: $0b
	jr   nz, jr_023_5797                             ; $57a8: $20 $ed

	and  h                                           ; $57aa: $a4
	dec  bc                                          ; $57ab: $0b
	db   $10                                         ; $57ac: $10
	push af                                          ; $57ad: $f5
	xor  [hl]                                        ; $57ae: $ae

jr_023_57af:
	ld   [$ed10], sp                                 ; $57af: $08 $10 $ed
	xor  h                                           ; $57b2: $ac
	ld   [$ed18], sp                                 ; $57b3: $08 $18 $ed
	xor  b                                           ; $57b6: $a8
	add  hl, bc                                      ; $57b7: $09

jr_023_57b8:
	jr   jr_023_57af                                 ; $57b8: $18 $f5

	xor  d                                           ; $57ba: $aa
	add  hl, bc                                      ; $57bb: $09
	jr   nz, jr_023_57c1                             ; $57bc: $20 $03

	ret  z                                           ; $57be: $c8

	inc  b                                           ; $57bf: $04
	db   $10                                         ; $57c0: $10

jr_023_57c1:
	inc  bc                                          ; $57c1: $03
	call nz, $1004                                   ; $57c2: $c4 $04 $10
	dec  bc                                          ; $57c5: $0b
	add  $04                                         ; $57c6: $c6 $04
	jr   nz, @+$0d                                   ; $57c8: $20 $0b

	jp   z, $2014                                    ; $57ca: $ca $14 $20

	ld   [$022c], sp                                 ; $57cd: $08 $2c $02
	jr   nz, jr_023_57da                             ; $57d0: $20 $08

	inc  h                                           ; $57d2: $24
	nop                                              ; $57d3: $00
	jr   nz, @+$1a                                   ; $57d4: $20 $18

	ld   a, $00                                      ; $57d6: $3e $00
	jr   nz, jr_023_57ea                             ; $57d8: $20 $10

jr_023_57da:
	ld   b, b                                        ; $57da: $40
	ld   [bc], a                                     ; $57db: $02
	db   $10                                         ; $57dc: $10
	db   $10                                         ; $57dd: $10
	ld   d, $01                                      ; $57de: $16 $01
	db   $10                                         ; $57e0: $10
	ld   [$0114], sp                                 ; $57e1: $08 $14 $01
	jr   nz, jr_023_57f6                             ; $57e4: $20 $10

	inc  a                                           ; $57e6: $3c
	nop                                              ; $57e7: $00
	db   $10                                         ; $57e8: $10
	db   $10                                         ; $57e9: $10

jr_023_57ea:
	ld   b, $00                                      ; $57ea: $06 $00
	db   $10                                         ; $57ec: $10
	ld   [$1004], sp                                 ; $57ed: $08 $04 $10
	jr   nz, jr_023_57fa                             ; $57f0: $20 $08

	inc  l                                           ; $57f2: $2c
	ld   [bc], a                                     ; $57f3: $02
	jr   nz, jr_023_57fe                             ; $57f4: $20 $08

jr_023_57f6:
	inc  h                                           ; $57f6: $24
	nop                                              ; $57f7: $00
	jr   nz, @+$12                                   ; $57f8: $20 $10

jr_023_57fa:
	ld   b, h                                        ; $57fa: $44
	ld   [bc], a                                     ; $57fb: $02
	db   $10                                         ; $57fc: $10
	db   $10                                         ; $57fd: $10

jr_023_57fe:
	ld   d, $01                                      ; $57fe: $16 $01
	db   $10                                         ; $5800: $10
	ld   [$0114], sp                                 ; $5801: $08 $14 $01
	db   $10                                         ; $5804: $10
	db   $10                                         ; $5805: $10
	ld   b, $00                                      ; $5806: $06 $00
	db   $10                                         ; $5808: $10
	ld   [$0004], sp                                 ; $5809: $08 $04 $00
	jr   nz, jr_023_581e                             ; $580c: $20 $10

	ld   b, d                                        ; $580e: $42
	db   $10                                         ; $580f: $10
	jr   nz, jr_023_5822                             ; $5810: $20 $10

	ld   l, $02                                      ; $5812: $2e $02
	jr   nz, jr_023_581e                             ; $5814: $20 $08

	inc  l                                           ; $5816: $2c
	ld   [bc], a                                     ; $5817: $02
	db   $10                                         ; $5818: $10
	db   $10                                         ; $5819: $10
	ld   [de], a                                     ; $581a: $12
	ld   bc, $0810                                   ; $581b: $01 $10 $08

jr_023_581e:
	db   $10                                         ; $581e: $10
	ld   bc, $1020                                   ; $581f: $01 $20 $10

jr_023_5822:
	ld   [hl+], a                                    ; $5822: $22
	nop                                              ; $5823: $00
	jr   nz, @+$0a                                   ; $5824: $20 $08

	jr   nz, jr_023_5828                             ; $5826: $20 $00

jr_023_5828:
	db   $10                                         ; $5828: $10
	db   $10                                         ; $5829: $10
	ld   [bc], a                                     ; $582a: $02
	nop                                              ; $582b: $00
	db   $10                                         ; $582c: $10
	ld   [$1000], sp                                 ; $582d: $08 $00 $10
	jr   nz, jr_023_5842                             ; $5830: $20 $10

	ld   l, $02                                      ; $5832: $2e $02
	jr   nz, @+$0a                                   ; $5834: $20 $08

	inc  l                                           ; $5836: $2c
	ld   [bc], a                                     ; $5837: $02
	db   $10                                         ; $5838: $10
	db   $10                                         ; $5839: $10
	ld   d, $01                                      ; $583a: $16 $01
	db   $10                                         ; $583c: $10
	ld   [$0114], sp                                 ; $583d: $08 $14 $01
	jr   nz, jr_023_5852                             ; $5840: $20 $10

jr_023_5842:
	ld   h, $00                                      ; $5842: $26 $00
	jr   nz, @+$0a                                   ; $5844: $20 $08

	inc  h                                           ; $5846: $24
	nop                                              ; $5847: $00
	db   $10                                         ; $5848: $10
	db   $10                                         ; $5849: $10
	ld   b, $00                                      ; $584a: $06 $00
	db   $10                                         ; $584c: $10
	ld   [$1004], sp                                 ; $584d: $08 $04 $10
	db   $10                                         ; $5850: $10
	db   $10                                         ; $5851: $10

jr_023_5852:
	ld   a, [de]                                     ; $5852: $1a
	ld   bc, $0810                                   ; $5853: $01 $10 $08
	jr   @+$03                                       ; $5856: $18 $01

	jr   nz, jr_023_586a                             ; $5858: $20 $10

	ld   l, $02                                      ; $585a: $2e $02
	jr   nz, @+$0a                                   ; $585c: $20 $08

	inc  l                                           ; $585e: $2c
	ld   [bc], a                                     ; $585f: $02
	db   $10                                         ; $5860: $10
	db   $10                                         ; $5861: $10
	ld   a, [bc]                                     ; $5862: $0a
	nop                                              ; $5863: $00
	db   $10                                         ; $5864: $10
	ld   [$0008], sp                                 ; $5865: $08 $08 $00
	jr   nz, jr_023_587a                             ; $5868: $20 $10

jr_023_586a:
	ld   a, [hl+]                                    ; $586a: $2a
	nop                                              ; $586b: $00
	jr   nz, jr_023_5876                             ; $586c: $20 $08

	jr   z, jr_023_5880                              ; $586e: $28 $10

	jr   nz, jr_023_5882                             ; $5870: $20 $10

	ld   a, [hl-]                                    ; $5872: $3a
	ld   [bc], a                                     ; $5873: $02
	jr   nz, @+$0a                                   ; $5874: $20 $08

jr_023_5876:
	jr   c, jr_023_587a                              ; $5876: $38 $02

	db   $10                                         ; $5878: $10
	db   $10                                         ; $5879: $10

jr_023_587a:
	ld   e, $01                                      ; $587a: $1e $01
	db   $10                                         ; $587c: $10
	ld   [$011c], sp                                 ; $587d: $08 $1c $01

jr_023_5880:
	db   $10                                         ; $5880: $10
	db   $10                                         ; $5881: $10

jr_023_5882:
	ld   c, $00                                      ; $5882: $0e $00
	db   $10                                         ; $5884: $10
	ld   [$000c], sp                                 ; $5885: $08 $0c $00
	jr   nz, jr_023_589a                             ; $5888: $20 $10

	ld   [hl], $00                                   ; $588a: $36 $00
	jr   nz, @+$0a                                   ; $588c: $20 $08

	inc  [hl]                                        ; $588e: $34
	db   $10                                         ; $588f: $10
	db   $10                                         ; $5890: $10
	db   $10                                         ; $5891: $10
	ld   e, $01                                      ; $5892: $1e $01
	db   $10                                         ; $5894: $10
	ld   [$011c], sp                                 ; $5895: $08 $1c $01
	jr   nz, jr_023_58aa                             ; $5898: $20 $10

jr_023_589a:
	ld   a, [hl-]                                    ; $589a: $3a
	ld   [bc], a                                     ; $589b: $02
	jr   nz, @+$0a                                   ; $589c: $20 $08

	jr   c, jr_023_58a2                              ; $589e: $38 $02

	db   $10                                         ; $58a0: $10
	db   $10                                         ; $58a1: $10

jr_023_58a2:
	ld   c, $00                                      ; $58a2: $0e $00
	db   $10                                         ; $58a4: $10
	ld   [$000c], sp                                 ; $58a5: $08 $0c $00
	jr   nz, jr_023_58ba                             ; $58a8: $20 $10

jr_023_58aa:
	ld   [hl-], a                                    ; $58aa: $32
	nop                                              ; $58ab: $00
	jr   nz, jr_023_58b6                             ; $58ac: $20 $08

	jr   nc, jr_023_58c0                             ; $58ae: $30 $10

	jr   nz, @+$1a                                   ; $58b0: $20 $18

	ld   e, [hl]                                     ; $58b2: $5e
	inc  bc                                          ; $58b3: $03
	jr   nz, jr_023_58c6                             ; $58b4: $20 $10

jr_023_58b6:
	ld   e, h                                        ; $58b6: $5c
	inc  bc                                          ; $58b7: $03
	jr   nz, @+$0a                                   ; $58b8: $20 $08

jr_023_58ba:
	ld   e, d                                        ; $58ba: $5a
	inc  bc                                          ; $58bb: $03
	jr   nz, jr_023_58be                             ; $58bc: $20 $00

jr_023_58be:
	ld   e, b                                        ; $58be: $58
	inc  bc                                          ; $58bf: $03

jr_023_58c0:
	db   $10                                         ; $58c0: $10
	jr   jr_023_5919                                 ; $58c1: $18 $56

	nop                                              ; $58c3: $00
	db   $10                                         ; $58c4: $10
	db   $10                                         ; $58c5: $10

jr_023_58c6:
	ld   d, h                                        ; $58c6: $54
	nop                                              ; $58c7: $00
	db   $10                                         ; $58c8: $10
	ld   [$0052], sp                                 ; $58c9: $08 $52 $00
	nop                                              ; $58cc: $00
	jr   @+$52                                       ; $58cd: $18 $50

	db   $10                                         ; $58cf: $10
	ld   [$600f], sp                                 ; $58d0: $08 $0f $60
	nop                                              ; $58d3: $00
	jr   nz, @+$12                                   ; $58d4: $20 $10

	ld   l, d                                        ; $58d6: $6a
	inc  bc                                          ; $58d7: $03
	jr   nz, jr_023_58e2                             ; $58d8: $20 $08

	ld   l, b                                        ; $58da: $68
	inc  bc                                          ; $58db: $03
	jr   nz, jr_023_58de                             ; $58dc: $20 $00

jr_023_58de:
	ld   h, [hl]                                     ; $58de: $66
	inc  bc                                          ; $58df: $03
	db   $10                                         ; $58e0: $10
	db   $10                                         ; $58e1: $10

jr_023_58e2:
	ld   h, h                                        ; $58e2: $64
	nop                                              ; $58e3: $00
	db   $10                                         ; $58e4: $10
	ld   [$1062], sp                                 ; $58e5: $08 $62 $10
	jr   @+$05                                       ; $58e8: $18 $03

	ld   a, b                                        ; $58ea: $78
	inc  b                                           ; $58eb: $04
	jr   nz, @+$0d                                   ; $58ec: $20 $0b

	halt                                             ; $58ee: $76
	inc  bc                                          ; $58ef: $03
	jr   nz, @+$05                                   ; $58f0: $20 $03

	ld   [hl], h                                     ; $58f2: $74
	inc  bc                                          ; $58f3: $03
	jr   nz, @-$03                                   ; $58f4: $20 $fb

	ld   [hl], d                                     ; $58f6: $72
	nop                                              ; $58f7: $00
	jr   nz, @-$0b                                   ; $58f8: $20 $f3

	ld   [hl], b                                     ; $58fa: $70
	nop                                              ; $58fb: $00
	db   $10                                         ; $58fc: $10
	dec  bc                                          ; $58fd: $0b
	ld   l, [hl]                                     ; $58fe: $6e
	nop                                              ; $58ff: $00
	db   $10                                         ; $5900: $10
	inc  bc                                          ; $5901: $03
	ld   l, h                                        ; $5902: $6c
	db   $10                                         ; $5903: $10
	jr   nz, jr_023_5926                             ; $5904: $20 $20

	add  [hl]                                        ; $5906: $86
	nop                                              ; $5907: $00
	jr   nz, jr_023_5922                             ; $5908: $20 $18

	add  h                                           ; $590a: $84
	inc  bc                                          ; $590b: $03
	jr   nz, @+$12                                   ; $590c: $20 $10

	add  d                                           ; $590e: $82
	inc  bc                                          ; $590f: $03
	jr   nz, jr_023_591a                             ; $5910: $20 $08

	add  b                                           ; $5912: $80
	inc  bc                                          ; $5913: $03
	db   $10                                         ; $5914: $10
	jr   jr_023_5995                                 ; $5915: $18 $7e

	nop                                              ; $5917: $00
	db   $10                                         ; $5918: $10

jr_023_5919:
	db   $10                                         ; $5919: $10

jr_023_591a:
	ld   a, h                                        ; $591a: $7c
	nop                                              ; $591b: $00
	db   $10                                         ; $591c: $10
	ld   [$107a], sp                                 ; $591d: $08 $7a $10
	jr   nz, @+$1a                                   ; $5920: $20 $18

jr_023_5922:
	ld   e, [hl]                                     ; $5922: $5e
	inc  bc                                          ; $5923: $03
	jr   nz, jr_023_5936                             ; $5924: $20 $10

jr_023_5926:
	ld   e, h                                        ; $5926: $5c
	inc  bc                                          ; $5927: $03
	jr   nz, @+$0a                                   ; $5928: $20 $08

	ld   e, d                                        ; $592a: $5a
	inc  bc                                          ; $592b: $03
	jr   nz, jr_023_592e                             ; $592c: $20 $00

jr_023_592e:
	ld   e, b                                        ; $592e: $58
	inc  bc                                          ; $592f: $03
	db   $10                                         ; $5930: $10
	jr   @+$58                                       ; $5931: $18 $56

	nop                                              ; $5933: $00

jr_023_5934:
	db   $10                                         ; $5934: $10
	db   $10                                         ; $5935: $10

jr_023_5936:
	ld   d, h                                        ; $5936: $54
	nop                                              ; $5937: $00
	db   $10                                         ; $5938: $10
	ld   [$0052], sp                                 ; $5939: $08 $52 $00
	nop                                              ; $593c: $00
	jr   jr_023_598f                                 ; $593d: $18 $50

	db   $10                                         ; $593f: $10
	jr   jr_023_5934                                 ; $5940: $18 $f2

	adc  h                                           ; $5942: $8c
	nop                                              ; $5943: $00
	jr   jr_023_5946                                 ; $5944: $18 $00

jr_023_5946:
	sub  [hl]                                        ; $5946: $96
	inc  b                                           ; $5947: $04
	jr   nz, jr_023_5952                             ; $5948: $20 $08

jr_023_594a:
	sub  h                                           ; $594a: $94
	inc  bc                                          ; $594b: $03
	jr   nz, jr_023_594e                             ; $594c: $20 $00

jr_023_594e:
	sub  d                                           ; $594e: $92
	inc  bc                                          ; $594f: $03
	jr   nz, jr_023_594a                             ; $5950: $20 $f8

jr_023_5952:
	sub  b                                           ; $5952: $90
	inc  bc                                          ; $5953: $03
	jr   nz, jr_023_5946                             ; $5954: $20 $f0

	adc  [hl]                                        ; $5956: $8e
	nop                                              ; $5957: $00
	db   $10                                         ; $5958: $10
	ld   [bc], a                                     ; $5959: $02
	adc  d                                           ; $595a: $8a
	nop                                              ; $595b: $00
	db   $10                                         ; $595c: $10
	ld   a, [$1088]                                  ; $595d: $fa $88 $10
	jr   jr_023_5962                                 ; $5960: $18 $00

jr_023_5962:
	sub  [hl]                                        ; $5962: $96
	inc  b                                           ; $5963: $04
	jr   nz, jr_023_596e                             ; $5964: $20 $08

jr_023_5966:
	sub  h                                           ; $5966: $94
	inc  bc                                          ; $5967: $03
	jr   nz, jr_023_596a                             ; $5968: $20 $00

jr_023_596a:
	sub  d                                           ; $596a: $92
	inc  bc                                          ; $596b: $03
	jr   nz, jr_023_5966                             ; $596c: $20 $f8

jr_023_596e:
	sub  b                                           ; $596e: $90
	inc  bc                                          ; $596f: $03
	jr   nz, jr_023_5962                             ; $5970: $20 $f0

	adc  [hl]                                        ; $5972: $8e
	nop                                              ; $5973: $00
	db   $10                                         ; $5974: $10
	inc  b                                           ; $5975: $04
	sbc  d                                           ; $5976: $9a
	nop                                              ; $5977: $00
	db   $10                                         ; $5978: $10

jr_023_5979:
	db   $fc                                         ; $5979: $fc
	sbc  b                                           ; $597a: $98
	db   $10                                         ; $597b: $10
	jr   jr_023_5979                                 ; $597c: $18 $fb

	xor  b                                           ; $597e: $a8
	inc  b                                           ; $597f: $04
	jr   nz, @+$05                                   ; $5980: $20 $03

	and  [hl]                                        ; $5982: $a6
	inc  bc                                          ; $5983: $03
	jr   nz, @-$03                                   ; $5984: $20 $fb

	and  h                                           ; $5986: $a4
	inc  bc                                          ; $5987: $03
	jr   nz, @-$0b                                   ; $5988: $20 $f3

	and  d                                           ; $598a: $a2
	inc  bc                                          ; $598b: $03
	db   $10                                         ; $598c: $10
	inc  bc                                          ; $598d: $03
	and  b                                           ; $598e: $a0

jr_023_598f:
	nop                                              ; $598f: $00
	db   $10                                         ; $5990: $10
	ei                                               ; $5991: $fb
	sbc  [hl]                                        ; $5992: $9e
	nop                                              ; $5993: $00
	db   $10                                         ; $5994: $10

jr_023_5995:
	di                                               ; $5995: $f3
	sbc  h                                           ; $5996: $9c
	db   $10                                         ; $5997: $10
	jr   jr_023_59a2                                 ; $5998: $18 $08

	or   [hl]                                        ; $599a: $b6
	inc  b                                           ; $599b: $04
	jr   nz, jr_023_59ae                             ; $599c: $20 $10

	or   h                                           ; $599e: $b4
	inc  bc                                          ; $599f: $03
	jr   nz, jr_023_59aa                             ; $59a0: $20 $08

jr_023_59a2:
	or   d                                           ; $59a2: $b2
	inc  bc                                          ; $59a3: $03
	jr   nz, jr_023_59a6                             ; $59a4: $20 $00

jr_023_59a6:
	or   b                                           ; $59a6: $b0
	inc  bc                                          ; $59a7: $03
	jr   nz, jr_023_59a2                             ; $59a8: $20 $f8

jr_023_59aa:
	xor  [hl]                                        ; $59aa: $ae
	nop                                              ; $59ab: $00
	db   $10                                         ; $59ac: $10
	inc  c                                           ; $59ad: $0c

jr_023_59ae:
	xor  h                                           ; $59ae: $ac
	nop                                              ; $59af: $00
	db   $10                                         ; $59b0: $10
	inc  b                                           ; $59b1: $04

jr_023_59b2:
	xor  d                                           ; $59b2: $aa
	db   $10                                         ; $59b3: $10
	jr   nz, jr_023_59b6                             ; $59b4: $20 $00

jr_023_59b6:
	ld   b, [hl]                                     ; $59b6: $46
	inc  bc                                          ; $59b7: $03
	stop                                             ; $59b8: $10 $00

jr_023_59ba:
	ld   l, [hl]                                     ; $59ba: $6e
	nop                                              ; $59bb: $00
	db   $10                                         ; $59bc: $10
	ld   hl, sp+$6c                                  ; $59bd: $f8 $6c
	nop                                              ; $59bf: $00
	jr   nz, jr_023_59ba                             ; $59c0: $20 $f8

	cp   [hl]                                        ; $59c2: $be
	inc  bc                                          ; $59c3: $03
	jr   nz, jr_023_59b6                             ; $59c4: $20 $f0

	cp   h                                           ; $59c6: $bc
	inc  bc                                          ; $59c7: $03
	jr   nz, jr_023_59b2                             ; $59c8: $20 $e8

	cp   d                                           ; $59ca: $ba
	nop                                              ; $59cb: $00
	jr   nz, jr_023_59ae                             ; $59cc: $20 $e0

	cp   b                                           ; $59ce: $b8
	db   $10                                         ; $59cf: $10
	jr   nz, jr_023_59ea                             ; $59d0: $20 $18

	ld   c, $02                                      ; $59d2: $0e $02
	db   $10                                         ; $59d4: $10
	jr   @+$0c                                       ; $59d5: $18 $0a

	nop                                              ; $59d7: $00
	jr   nz, jr_023_5a02                             ; $59d8: $20 $28

	ld   [rROMB0], sp                                 ; $59da: $08 $00 $20
	jr   nz, @+$08                                   ; $59dd: $20 $06

	nop                                              ; $59df: $00
	jr   nz, @+$1a                                   ; $59e0: $20 $18

	inc  b                                           ; $59e2: $04
	ld   bc, $1020                                   ; $59e3: $01 $20 $10
	ld   [bc], a                                     ; $59e6: $02
	ld   bc, $0820                                   ; $59e7: $01 $20 $08

jr_023_59ea:
	nop                                              ; $59ea: $00
	ld   de, $1820                                   ; $59eb: $11 $20 $18
	ld   c, $02                                      ; $59ee: $0e $02
	db   $10                                         ; $59f0: $10
	jr   jr_023_59ff                                 ; $59f1: $18 $0c

	nop                                              ; $59f3: $00
	jr   nz, jr_023_5a1e                             ; $59f4: $20 $28

	ld   [rROMB0], sp                                 ; $59f6: $08 $00 $20
	jr   nz, @+$08                                   ; $59f9: $20 $06

	nop                                              ; $59fb: $00
	jr   nz, @+$1a                                   ; $59fc: $20 $18

	inc  b                                           ; $59fe: $04

jr_023_59ff:
	ld   bc, $1020                                   ; $59ff: $01 $20 $10

jr_023_5a02:
	ld   [bc], a                                     ; $5a02: $02
	ld   bc, $0820                                   ; $5a03: $01 $20 $08
	nop                                              ; $5a06: $00
	ld   de, $1020                                   ; $5a07: $11 $20 $10
	and  [hl]                                        ; $5a0a: $a6
	dec  b                                           ; $5a0b: $05
	jr   nz, @+$0a                                   ; $5a0c: $20 $08

	and  h                                           ; $5a0e: $a4
	dec  b                                           ; $5a0f: $05
	db   $10                                         ; $5a10: $10
	db   $10                                         ; $5a11: $10
	and  d                                           ; $5a12: $a2
	dec  b                                           ; $5a13: $05
	db   $10                                         ; $5a14: $10
	ld   [$05a0], sp                                 ; $5a15: $08 $a0 $05
	jr   nz, @+$12                                   ; $5a18: $20 $10

	add  [hl]                                        ; $5a1a: $86
	inc  b                                           ; $5a1b: $04
	jr   nz, @+$0a                                   ; $5a1c: $20 $08

jr_023_5a1e:
	add  h                                           ; $5a1e: $84
	inc  b                                           ; $5a1f: $04
	db   $10                                         ; $5a20: $10
	db   $10                                         ; $5a21: $10
	add  d                                           ; $5a22: $82
	inc  b                                           ; $5a23: $04
	db   $10                                         ; $5a24: $10
	ld   [$1480], sp                                 ; $5a25: $08 $80 $14
	dec  d                                           ; $5a28: $15
	jr   @-$4e                                       ; $5a29: $18 $b0

	dec  b                                           ; $5a2b: $05
	jr   nz, jr_023_5a3e                             ; $5a2c: $20 $10

	xor  [hl]                                        ; $5a2e: $ae
	dec  b                                           ; $5a2f: $05
	jr   nz, @+$0a                                   ; $5a30: $20 $08

	xor  h                                           ; $5a32: $ac
	dec  b                                           ; $5a33: $05
	db   $10                                         ; $5a34: $10
	db   $10                                         ; $5a35: $10
	xor  d                                           ; $5a36: $aa
	dec  b                                           ; $5a37: $05
	db   $10                                         ; $5a38: $10
	ld   [$05a8], sp                                 ; $5a39: $08 $a8 $05
	jr   nz, jr_023_5a4e                             ; $5a3c: $20 $10

jr_023_5a3e:
	adc  [hl]                                        ; $5a3e: $8e
	inc  b                                           ; $5a3f: $04
	jr   nz, @+$0a                                   ; $5a40: $20 $08

	adc  h                                           ; $5a42: $8c
	inc  b                                           ; $5a43: $04
	db   $10                                         ; $5a44: $10
	db   $10                                         ; $5a45: $10
	adc  d                                           ; $5a46: $8a
	inc  b                                           ; $5a47: $04
	db   $10                                         ; $5a48: $10
	ld   [$1488], sp                                 ; $5a49: $08 $88 $14
	jr   nz, jr_023_5a5e                             ; $5a4c: $20 $10

jr_023_5a4e:
	sub  [hl]                                        ; $5a4e: $96
	dec  b                                           ; $5a4f: $05
	jr   nz, @+$0a                                   ; $5a50: $20 $08

	sub  h                                           ; $5a52: $94
	dec  b                                           ; $5a53: $05
	db   $10                                         ; $5a54: $10
	db   $10                                         ; $5a55: $10
	sub  d                                           ; $5a56: $92
	dec  b                                           ; $5a57: $05
	db   $10                                         ; $5a58: $10
	ld   [$0590], sp                                 ; $5a59: $08 $90 $05
	jr   nz, jr_023_5a6e                             ; $5a5c: $20 $10

jr_023_5a5e:
	halt                                             ; $5a5e: $76
	inc  b                                           ; $5a5f: $04
	jr   nz, @+$0a                                   ; $5a60: $20 $08

	ld   [hl], h                                     ; $5a62: $74
	inc  b                                           ; $5a63: $04
	db   $10                                         ; $5a64: $10
	db   $10                                         ; $5a65: $10
	ld   [hl], d                                     ; $5a66: $72
	inc  b                                           ; $5a67: $04
	db   $10                                         ; $5a68: $10
	ld   [$1470], sp                                 ; $5a69: $08 $70 $14
	jr   nz, jr_023_5a7e                             ; $5a6c: $20 $10

jr_023_5a6e:
	sbc  [hl]                                        ; $5a6e: $9e
	dec  b                                           ; $5a6f: $05
	jr   nz, @+$0a                                   ; $5a70: $20 $08

	sbc  h                                           ; $5a72: $9c
	dec  b                                           ; $5a73: $05
	db   $10                                         ; $5a74: $10
	db   $10                                         ; $5a75: $10
	sbc  d                                           ; $5a76: $9a
	dec  b                                           ; $5a77: $05
	db   $10                                         ; $5a78: $10
	ld   [$0598], sp                                 ; $5a79: $08 $98 $05
	jr   nz, @+$12                                   ; $5a7c: $20 $10

jr_023_5a7e:
	ld   a, [hl]                                     ; $5a7e: $7e
	inc  b                                           ; $5a7f: $04
	jr   nz, @+$0a                                   ; $5a80: $20 $08

	ld   a, h                                        ; $5a82: $7c
	inc  b                                           ; $5a83: $04
	db   $10                                         ; $5a84: $10
	db   $10                                         ; $5a85: $10
	ld   a, d                                        ; $5a86: $7a
	inc  b                                           ; $5a87: $04
	db   $10                                         ; $5a88: $10
	ld   [$1478], sp                                 ; $5a89: $08 $78 $14
	db   $10                                         ; $5a8c: $10
	ld   [$1094], sp                                 ; $5a8d: $08 $94 $10


SpriteGroupDPointers::
	and  h                                           ; $5a90: $a4
	ld   e, e                                        ; $5a91: $5b
	ret  z                                           ; $5a92: $c8

	ld   e, e                                        ; $5a93: $5b
	db   $ec                                         ; $5a94: $ec
	ld   e, e                                        ; $5a95: $5b
	db   $10                                         ; $5a96: $10
	ld   e, h                                        ; $5a97: $5c
	inc  [hl]                                        ; $5a98: $34
	ld   e, h                                        ; $5a99: $5c
	ld   e, h                                        ; $5a9a: $5c
	ld   e, h                                        ; $5a9b: $5c
	adc  h                                           ; $5a9c: $8c
	ld   e, h                                        ; $5a9d: $5c
	cp   h                                           ; $5a9e: $bc
	ld   e, h                                        ; $5a9f: $5c
	db   $ec                                         ; $5aa0: $ec
	ld   e, h                                        ; $5aa1: $5c
	inc  e                                           ; $5aa2: $1c
	ld   e, l                                        ; $5aa3: $5d
	ld   e, h                                        ; $5aa4: $5c
	ld   e, l                                        ; $5aa5: $5d
	sbc  h                                           ; $5aa6: $9c
	ld   e, l                                        ; $5aa7: $5d
	ldh  [$5d], a                                    ; $5aa8: $e0 $5d
	ld   c, h                                        ; $5aaa: $4c
	ld   e, [hl]                                     ; $5aab: $5e
	sbc  b                                           ; $5aac: $98
	ld   e, [hl]                                     ; $5aad: $5e
	add  sp, $5e                                     ; $5aae: $e8 $5e
	jr   c, jr_023_5b11                              ; $5ab0: $38 $5f

	add  b                                           ; $5ab2: $80
	ld   e, a                                        ; $5ab3: $5f
	call z, $0c5f                                    ; $5ab4: $cc $5f $0c
	ld   h, b                                        ; $5ab7: $60
	ld   c, h                                        ; $5ab8: $4c
	ld   h, b                                        ; $5ab9: $60
	ld   [hl], b                                     ; $5aba: $70
	ld   h, b                                        ; $5abb: $60
	and  b                                           ; $5abc: $a0
	ld   h, b                                        ; $5abd: $60
	call z, $f460                                    ; $5abe: $cc $60 $f4
	ld   h, b                                        ; $5ac1: $60
	jr   z, jr_023_5b25                              ; $5ac2: $28 $61

	ld   e, h                                        ; $5ac4: $5c
	ld   h, c                                        ; $5ac5: $61
	adc  h                                           ; $5ac6: $8c
	ld   h, c                                        ; $5ac7: $61
	call nz, $fc61                                   ; $5ac8: $c4 $61 $fc
	ld   h, c                                        ; $5acb: $61
	inc  l                                           ; $5acc: $2c
	ld   h, d                                        ; $5acd: $62
	ld   e, b                                        ; $5ace: $58
	ld   h, d                                        ; $5acf: $62
	add  b                                           ; $5ad0: $80
	ld   h, d                                        ; $5ad1: $62
	xor  b                                           ; $5ad2: $a8
	ld   h, d                                        ; $5ad3: $62
	db   $e4                                         ; $5ad4: $e4
	ld   h, d                                        ; $5ad5: $62
	jr   @+$65                                       ; $5ad6: $18 $63

	ld   c, b                                        ; $5ad8: $48
	ld   h, e                                        ; $5ad9: $63
	ld   [hl], h                                     ; $5ada: $74
	ld   h, e                                        ; $5adb: $63
	sbc  h                                           ; $5adc: $9c
	ld   h, e                                        ; $5add: $63
	call nz, $f463                                   ; $5ade: $c4 $63 $f4
	ld   h, e                                        ; $5ae1: $63
	inc  e                                           ; $5ae2: $1c
	ld   h, h                                        ; $5ae3: $64
	ld   c, h                                        ; $5ae4: $4c
	ld   h, h                                        ; $5ae5: $64
	ld   a, b                                        ; $5ae6: $78
	ld   h, h                                        ; $5ae7: $64
	or   b                                           ; $5ae8: $b0
	ld   h, h                                        ; $5ae9: $64
	add  sp, $64                                     ; $5aea: $e8 $64
	inc  e                                           ; $5aec: $1c
	ld   h, l                                        ; $5aed: $65
	ld   d, b                                        ; $5aee: $50
	ld   h, l                                        ; $5aef: $65
	add  h                                           ; $5af0: $84
	ld   h, l                                        ; $5af1: $65
	call nz, $0065                                   ; $5af2: $c4 $65 $00
	ld   h, [hl]                                     ; $5af5: $66
	ld   b, b                                        ; $5af6: $40
	ld   h, [hl]                                     ; $5af7: $66
	add  b                                           ; $5af8: $80
	ld   h, [hl]                                     ; $5af9: $66
	ret  nz                                          ; $5afa: $c0

	ld   h, [hl]                                     ; $5afb: $66
	db   $10                                         ; $5afc: $10
	ld   h, a                                        ; $5afd: $67
	ld   [hl], b                                     ; $5afe: $70
	ld   h, a                                        ; $5aff: $67
	ret  nc                                          ; $5b00: $d0

	ld   h, a                                        ; $5b01: $67
	jr   nc, jr_023_5b6c                             ; $5b02: $30 $68

	adc  b                                           ; $5b04: $88
	ld   l, b                                        ; $5b05: $68
	ret  z                                           ; $5b06: $c8

	ld   l, b                                        ; $5b07: $68
	ld   [$4869], sp                                 ; $5b08: $08 $69 $48
	ld   l, c                                        ; $5b0b: $69
	ld   [hl], b                                     ; $5b0c: $70
	ld   l, c                                        ; $5b0d: $69
	sbc  b                                           ; $5b0e: $98
	ld   l, c                                        ; $5b0f: $69
	ret  nz                                          ; $5b10: $c0

jr_023_5b11:
	ld   l, c                                        ; $5b11: $69
	ldh  a, [rBCPD]                                  ; $5b12: $f0 $69
	inc  e                                           ; $5b14: $1c
	ld   l, d                                        ; $5b15: $6a
	ld   c, b                                        ; $5b16: $48
	ld   l, d                                        ; $5b17: $6a
	ld   [hl], h                                     ; $5b18: $74
	ld   l, d                                        ; $5b19: $6a
	and  b                                           ; $5b1a: $a0
	ld   l, d                                        ; $5b1b: $6a
	ret  c                                           ; $5b1c: $d8

	ld   l, d                                        ; $5b1d: $6a
	inc  c                                           ; $5b1e: $0c
	ld   l, e                                        ; $5b1f: $6b
	ld   b, h                                        ; $5b20: $44
	ld   l, e                                        ; $5b21: $6b
	ld   a, h                                        ; $5b22: $7c
	ld   l, e                                        ; $5b23: $6b
	xor  h                                           ; $5b24: $ac

jr_023_5b25:
	ld   l, e                                        ; $5b25: $6b
	inc  b                                           ; $5b26: $04
	ld   l, h                                        ; $5b27: $6c
	ld   d, h                                        ; $5b28: $54
	ld   l, h                                        ; $5b29: $6c
	sbc  b                                           ; $5b2a: $98
	ld   l, h                                        ; $5b2b: $6c
	call c, $fc6c                                    ; $5b2c: $dc $6c $fc
	ld   l, h                                        ; $5b2f: $6c
	jr   @+$6f                                       ; $5b30: $18 $6d

	inc  [hl]                                        ; $5b32: $34
	ld   l, l                                        ; $5b33: $6d
	ld   h, b                                        ; $5b34: $60
	ld   l, l                                        ; $5b35: $6d
	sbc  b                                           ; $5b36: $98
	ld   l, l                                        ; $5b37: $6d
	ret  c                                           ; $5b38: $d8

	ld   l, l                                        ; $5b39: $6d
	ld   [$386e], sp                                 ; $5b3a: $08 $6e $38
	ld   l, [hl]                                     ; $5b3d: $6e
	ld   l, h                                        ; $5b3e: $6c
	ld   l, [hl]                                     ; $5b3f: $6e
	sbc  b                                           ; $5b40: $98
	ld   l, [hl]                                     ; $5b41: $6e
	ret  nz                                          ; $5b42: $c0

	ld   l, [hl]                                     ; $5b43: $6e
	ldh  a, [$6e]                                    ; $5b44: $f0 $6e
	jr   z, @+$71                                    ; $5b46: $28 $6f

	ld   h, b                                        ; $5b48: $60
	ld   l, a                                        ; $5b49: $6f
	xor  b                                           ; $5b4a: $a8
	ld   l, a                                        ; $5b4b: $6f
	inc  b                                           ; $5b4c: $04
	ld   [hl], b                                     ; $5b4d: $70
	ld   e, h                                        ; $5b4e: $5c
	ld   [hl], b                                     ; $5b4f: $70
	or   b                                           ; $5b50: $b0
	ld   [hl], b                                     ; $5b51: $70
	inc  b                                           ; $5b52: $04
	ld   [hl], c                                     ; $5b53: $71
	ld   c, h                                        ; $5b54: $4c
	ld   [hl], c                                     ; $5b55: $71
	sub  h                                           ; $5b56: $94
	ld   [hl], c                                     ; $5b57: $71
	ret  c                                           ; $5b58: $d8

	ld   [hl], c                                     ; $5b59: $71
	ld   [$4072], sp                                 ; $5b5a: $08 $72 $40
	ld   [hl], d                                     ; $5b5d: $72
	ld   [hl], b                                     ; $5b5e: $70
	ld   [hl], d                                     ; $5b5f: $72
	xor  b                                           ; $5b60: $a8
	ld   [hl], d                                     ; $5b61: $72
	ret  c                                           ; $5b62: $d8

	ld   [hl], d                                     ; $5b63: $72
	inc  d                                           ; $5b64: $14
	ld   [hl], e                                     ; $5b65: $73
	ld   d, b                                        ; $5b66: $50
	ld   [hl], e                                     ; $5b67: $73
	adc  h                                           ; $5b68: $8c
	ld   [hl], e                                     ; $5b69: $73
	or   h                                           ; $5b6a: $b4
	ld   [hl], e                                     ; $5b6b: $73

jr_023_5b6c:
	add  sp, $73                                     ; $5b6c: $e8 $73
	inc  e                                           ; $5b6e: $1c
	ld   [hl], h                                     ; $5b6f: $74
	ld   d, b                                        ; $5b70: $50
	ld   [hl], h                                     ; $5b71: $74
	sbc  h                                           ; $5b72: $9c
	ld   [hl], h                                     ; $5b73: $74
	ldh  a, [$74]                                    ; $5b74: $f0 $74
	ld   b, h                                        ; $5b76: $44
	ld   [hl], l                                     ; $5b77: $75
	and  b                                           ; $5b78: $a0
	ld   [hl], l                                     ; $5b79: $75
	db   $f4                                         ; $5b7a: $f4
	ld   [hl], l                                     ; $5b7b: $75
	inc  [hl]                                        ; $5b7c: $34
	halt                                             ; $5b7d: $76
	ld   [hl], h                                     ; $5b7e: $74
	halt                                             ; $5b7f: $76
	sbc  h                                           ; $5b80: $9c
	halt                                             ; $5b81: $76
	ret  nz                                          ; $5b82: $c0

	halt                                             ; $5b83: $76
	db   $e4                                         ; $5b84: $e4
	halt                                             ; $5b85: $76
	inc  c                                           ; $5b86: $0c
	ld   [hl], a                                     ; $5b87: $77
	inc  a                                           ; $5b88: $3c
	ld   [hl], a                                     ; $5b89: $77
	ld   a, h                                        ; $5b8a: $7c
	ld   [hl], a                                     ; $5b8b: $77
	call nz, $1477                                   ; $5b8c: $c4 $77 $14
	ld   a, b                                        ; $5b8f: $78
	ld   l, h                                        ; $5b90: $6c
	ld   a, b                                        ; $5b91: $78
	ret  z                                           ; $5b92: $c8

	ld   a, b                                        ; $5b93: $78
	inc  h                                           ; $5b94: $24
	ld   a, c                                        ; $5b95: $79
	adc  b                                           ; $5b96: $88
	ld   a, c                                        ; $5b97: $79
	db   $e4                                         ; $5b98: $e4
	ld   a, c                                        ; $5b99: $79
	ld   d, b                                        ; $5b9a: $50
	ld   a, d                                        ; $5b9b: $7a
	or   h                                           ; $5b9c: $b4
	ld   a, d                                        ; $5b9d: $7a
	ld   [$5c7b], sp                                 ; $5b9e: $08 $7b $5c
	ld   a, e                                        ; $5ba1: $7b
	or   b                                           ; $5ba2: $b0
	ld   a, e                                        ; $5ba3: $7b
	jr   nz, @+$1a                                   ; $5ba4: $20 $18

	db   $10                                         ; $5ba6: $10
	ld   bc, $1020                                   ; $5ba7: $01 $20 $10
	ld   c, $01                                      ; $5baa: $0e $01
	jr   nz, jr_023_5bb6                             ; $5bac: $20 $08

	inc  c                                           ; $5bae: $0c
	ld   bc, $1810                                   ; $5baf: $01 $10 $18
	ld   a, [bc]                                     ; $5bb2: $0a
	ld   bc, $1010                                   ; $5bb3: $01 $10 $10

jr_023_5bb6:
	ld   [$1001], sp                                 ; $5bb6: $08 $01 $10
	ld   [$0106], sp                                 ; $5bb9: $08 $06 $01
	nop                                              ; $5bbc: $00
	jr   jr_023_5bc3                                 ; $5bbd: $18 $04

	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	db   $10                                         ; $5bc1: $10
	ld   [bc], a                                     ; $5bc2: $02

jr_023_5bc3:
	nop                                              ; $5bc3: $00
	nop                                              ; $5bc4: $00
	ld   [$1000], sp                                 ; $5bc5: $08 $00 $10
	jr   @+$1a                                       ; $5bc8: $18 $18

	ld   [hl+], a                                    ; $5bca: $22
	ld   bc, $1018                                   ; $5bcb: $01 $18 $10
	jr   nz, @+$03                                   ; $5bce: $20 $01

	jr   jr_023_5bda                                 ; $5bd0: $18 $08

	ld   e, $01                                      ; $5bd2: $1e $01
	ld   [$1c18], sp                                 ; $5bd4: $08 $18 $1c
	ld   bc, $1008                                   ; $5bd7: $01 $08 $10

jr_023_5bda:
	ld   a, [de]                                     ; $5bda: $1a
	ld   bc, $0808                                   ; $5bdb: $01 $08 $08
	jr   jr_023_5be1                                 ; $5bde: $18 $01

	nop                                              ; $5be0: $00

jr_023_5be1:
	jr   @+$18                                       ; $5be1: $18 $16

	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	db   $10                                         ; $5be5: $10
	inc  d                                           ; $5be6: $14
	nop                                              ; $5be7: $00
	nop                                              ; $5be8: $00
	ld   [$1012], sp                                 ; $5be9: $08 $12 $10
	jr   jr_023_5c06                                 ; $5bec: $18 $18

	inc  [hl]                                        ; $5bee: $34
	ld   bc, $1018                                   ; $5bef: $01 $18 $10
	ld   [hl-], a                                    ; $5bf2: $32
	ld   bc, $0818                                   ; $5bf3: $01 $18 $08
	jr   nc, @+$03                                   ; $5bf6: $30 $01

	ld   [$2e18], sp                                 ; $5bf8: $08 $18 $2e
	ld   bc, $1008                                   ; $5bfb: $01 $08 $10
	inc  l                                           ; $5bfe: $2c
	ld   bc, $0808                                   ; $5bff: $01 $08 $08
	ld   a, [hl+]                                    ; $5c02: $2a
	ld   bc, $1800                                   ; $5c03: $01 $00 $18

jr_023_5c06:
	jr   z, jr_023_5c08                              ; $5c06: $28 $00

jr_023_5c08:
	nop                                              ; $5c08: $00
	db   $10                                         ; $5c09: $10
	ld   h, $00                                      ; $5c0a: $26 $00
	nop                                              ; $5c0c: $00
	ld   [$1024], sp                                 ; $5c0d: $08 $24 $10
	jr   jr_023_5c2a                                 ; $5c10: $18 $18

	ld   b, [hl]                                     ; $5c12: $46
	ld   bc, $1018                                   ; $5c13: $01 $18 $10
	ld   b, h                                        ; $5c16: $44
	ld   bc, $0818                                   ; $5c17: $01 $18 $08
	ld   b, d                                        ; $5c1a: $42
	ld   bc, $1808                                   ; $5c1b: $01 $08 $18
	ld   b, b                                        ; $5c1e: $40
	ld   bc, $1008                                   ; $5c1f: $01 $08 $10
	ld   a, $01                                      ; $5c22: $3e $01
	ld   [$3c08], sp                                 ; $5c24: $08 $08 $3c
	ld   bc, $1900                                   ; $5c27: $01 $00 $19

jr_023_5c2a:
	ld   a, [hl-]                                    ; $5c2a: $3a
	nop                                              ; $5c2b: $00
	nop                                              ; $5c2c: $00
	ld   de, $0038                                   ; $5c2d: $11 $38 $00
	nop                                              ; $5c30: $00
	add  hl, bc                                      ; $5c31: $09
	ld   [hl], $10                                   ; $5c32: $36 $10
	ld   [$7e00], sp                                 ; $5c34: $08 $00 $7e
	ld   bc, $1820                                   ; $5c37: $01 $20 $18
	ld   e, b                                        ; $5c3a: $58
	ld   bc, $1020                                   ; $5c3b: $01 $20 $10
	ld   d, [hl]                                     ; $5c3e: $56
	ld   bc, $0818                                   ; $5c3f: $01 $18 $08
	ld   d, h                                        ; $5c42: $54
	ld   bc, $1810                                   ; $5c43: $01 $10 $18
	ld   d, d                                        ; $5c46: $52
	ld   bc, $1010                                   ; $5c47: $01 $10 $10
	ld   d, b                                        ; $5c4a: $50
	ld   bc, $0808                                   ; $5c4b: $01 $08 $08
	ld   c, [hl]                                     ; $5c4e: $4e
	ld   bc, $1800                                   ; $5c4f: $01 $00 $18
	ld   c, h                                        ; $5c52: $4c
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	db   $10                                         ; $5c55: $10
	ld   c, d                                        ; $5c56: $4a
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	ld   [$1048], sp                                 ; $5c59: $08 $48 $10
	dec  b                                           ; $5c5c: $05
	ld   bc, $0386                                   ; $5c5d: $01 $86 $03
	dec  b                                           ; $5c60: $05
	ld   sp, hl                                      ; $5c61: $f9
	add  h                                           ; $5c62: $84
	inc  bc                                          ; $5c63: $03
	jr   nz, jr_023_5c7e                             ; $5c64: $20 $18

	ld   e, b                                        ; $5c66: $58
	ld   bc, $1020                                   ; $5c67: $01 $20 $10
	ld   d, [hl]                                     ; $5c6a: $56
	ld   bc, $0818                                   ; $5c6b: $01 $18 $08
	ld   d, h                                        ; $5c6e: $54
	ld   bc, $0008                                   ; $5c6f: $01 $08 $00
	ld   a, [hl]                                     ; $5c72: $7e
	ld   bc, $1810                                   ; $5c73: $01 $10 $18
	ld   d, d                                        ; $5c76: $52
	ld   bc, $1010                                   ; $5c77: $01 $10 $10
	ld   d, b                                        ; $5c7a: $50
	ld   bc, $0808                                   ; $5c7b: $01 $08 $08

jr_023_5c7e:
	ld   c, [hl]                                     ; $5c7e: $4e
	ld   bc, $1801                                   ; $5c7f: $01 $01 $18
	ld   c, h                                        ; $5c82: $4c
	nop                                              ; $5c83: $00
	ld   bc, $4a10                                   ; $5c84: $01 $10 $4a
	nop                                              ; $5c87: $00
	ld   bc, $4808                                   ; $5c88: $01 $08 $48
	db   $10                                         ; $5c8b: $10
	dec  b                                           ; $5c8c: $05
	ld   bc, $038a                                   ; $5c8d: $01 $8a $03
	dec  b                                           ; $5c90: $05
	ld   sp, hl                                      ; $5c91: $f9
	adc  b                                           ; $5c92: $88
	inc  bc                                          ; $5c93: $03
	ld   [$7e00], sp                                 ; $5c94: $08 $00 $7e
	ld   bc, $1810                                   ; $5c97: $01 $10 $18
	ld   d, d                                        ; $5c9a: $52
	ld   bc, $1010                                   ; $5c9b: $01 $10 $10
	ld   d, b                                        ; $5c9e: $50
	ld   bc, $1820                                   ; $5c9f: $01 $20 $18
	ld   e, b                                        ; $5ca2: $58
	ld   bc, $1020                                   ; $5ca3: $01 $20 $10
	ld   d, [hl]                                     ; $5ca6: $56
	ld   bc, $0818                                   ; $5ca7: $01 $18 $08
	ld   d, h                                        ; $5caa: $54
	ld   bc, $0808                                   ; $5cab: $01 $08 $08
	ld   c, [hl]                                     ; $5cae: $4e
	ld   bc, $1800                                   ; $5caf: $01 $00 $18
	db   $f4                                         ; $5cb2: $f4
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	db   $10                                         ; $5cb5: $10
	ldh  a, [c]                                      ; $5cb6: $f2
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	ld   [$10f0], sp                                 ; $5cb9: $08 $f0 $10
	dec  b                                           ; $5cbc: $05
	ld   bc, $038e                                   ; $5cbd: $01 $8e $03
	dec  b                                           ; $5cc0: $05
	ld   sp, hl                                      ; $5cc1: $f9
	adc  h                                           ; $5cc2: $8c
	inc  bc                                          ; $5cc3: $03
	ld   [$7e00], sp                                 ; $5cc4: $08 $00 $7e
	ld   bc, $1810                                   ; $5cc7: $01 $10 $18
	ld   d, d                                        ; $5cca: $52
	ld   bc, $1010                                   ; $5ccb: $01 $10 $10
	ld   d, b                                        ; $5cce: $50
	ld   bc, $1820                                   ; $5ccf: $01 $20 $18
	ld   e, b                                        ; $5cd2: $58
	ld   bc, $1020                                   ; $5cd3: $01 $20 $10
	ld   d, [hl]                                     ; $5cd6: $56
	ld   bc, $0818                                   ; $5cd7: $01 $18 $08
	ld   d, h                                        ; $5cda: $54
	ld   bc, $0808                                   ; $5cdb: $01 $08 $08
	ld   c, [hl]                                     ; $5cde: $4e
	ld   bc, $1800                                   ; $5cdf: $01 $00 $18
	ld   a, [rRAMG]                                  ; $5ce2: $fa $00 $00
	db   $10                                         ; $5ce5: $10
	ld   hl, sp+$00                                  ; $5ce6: $f8 $00
	nop                                              ; $5ce8: $00
	ld   [$10f6], sp                                 ; $5ce9: $08 $f6 $10
	dec  b                                           ; $5cec: $05
	pop  af                                          ; $5ced: $f1
	ld   [$0503], a                                  ; $5cee: $ea $03 $05
	ld   sp, hl                                      ; $5cf1: $f9
	db   $e4                                         ; $5cf2: $e4
	inc  bc                                          ; $5cf3: $03
	ld   [$7e00], sp                                 ; $5cf4: $08 $00 $7e
	ld   bc, $1810                                   ; $5cf7: $01 $10 $18
	ld   d, d                                        ; $5cfa: $52
	ld   bc, $1010                                   ; $5cfb: $01 $10 $10
	ld   d, b                                        ; $5cfe: $50
	ld   bc, $1820                                   ; $5cff: $01 $20 $18
	ld   e, b                                        ; $5d02: $58
	ld   bc, $1020                                   ; $5d03: $01 $20 $10
	ld   d, [hl]                                     ; $5d06: $56
	ld   bc, $0818                                   ; $5d07: $01 $18 $08
	ld   d, h                                        ; $5d0a: $54
	ld   bc, $0808                                   ; $5d0b: $01 $08 $08
	ld   c, [hl]                                     ; $5d0e: $4e
	ld   bc, $1800                                   ; $5d0f: $01 $00 $18
	ld   a, [rRAMG]                                  ; $5d12: $fa $00 $00
	db   $10                                         ; $5d15: $10
	ld   hl, sp+$00                                  ; $5d16: $f8 $00
	nop                                              ; $5d18: $00
	ld   [$10f6], sp                                 ; $5d19: $08 $f6 $10
	jr   nz, jr_023_5d36                             ; $5d1c: $20 $18

	ld   e, b                                        ; $5d1e: $58
	ld   bc, $1020                                   ; $5d1f: $01 $20 $10
	ld   d, [hl]                                     ; $5d22: $56
	ld   bc, $0818                                   ; $5d23: $01 $18 $08
	ld   d, h                                        ; $5d26: $54
	ld   bc, $1810                                   ; $5d27: $01 $10 $18
	ld   d, d                                        ; $5d2a: $52
	ld   bc, $1010                                   ; $5d2b: $01 $10 $10
	ld   d, b                                        ; $5d2e: $50
	ld   bc, $0008                                   ; $5d2f: $01 $08 $00
	ld   a, [hl]                                     ; $5d32: $7e
	ld   bc, $f80c                                   ; $5d33: $01 $0c $f8

jr_023_5d36:
	sbc  d                                           ; $5d36: $9a
	ld   [bc], a                                     ; $5d37: $02
	inc  c                                           ; $5d38: $0c
	ldh  a, [$98]                                    ; $5d39: $f0 $98
	ld   [bc], a                                     ; $5d3b: $02
	db   $fc                                         ; $5d3c: $fc
	ld   hl, sp-$6a                                  ; $5d3d: $f8 $96
	ld   [bc], a                                     ; $5d3f: $02
	db   $fc                                         ; $5d40: $fc
	ldh  a, [$94]                                    ; $5d41: $f0 $94
	ld   [bc], a                                     ; $5d43: $02
	inc  b                                           ; $5d44: $04
	add  sp, -$6e                                    ; $5d45: $e8 $92
	ld   [bc], a                                     ; $5d47: $02
	inc  b                                           ; $5d48: $04
	ldh  [$90], a                                    ; $5d49: $e0 $90
	ld   [bc], a                                     ; $5d4b: $02
	ld   [$4e08], sp                                 ; $5d4c: $08 $08 $4e
	ld   bc, $0800                                   ; $5d4f: $01 $00 $08
	or   $00                                         ; $5d52: $f6 $00
	nop                                              ; $5d54: $00
	jr   @-$04                                       ; $5d55: $18 $fa

	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	db   $10                                         ; $5d59: $10
	ld   hl, sp+$10                                  ; $5d5a: $f8 $10
	ld   [$6008], sp                                 ; $5d5c: $08 $08 $60
	ld   bc, $1820                                   ; $5d5f: $01 $20 $18
	ld   l, d                                        ; $5d62: $6a
	ld   bc, $1018                                   ; $5d63: $01 $18 $10
	ld   l, b                                        ; $5d66: $68
	ld   bc, $1810                                   ; $5d67: $01 $10 $18
	ld   h, h                                        ; $5d6a: $64
	ld   bc, $1008                                   ; $5d6b: $01 $08 $10
	ld   h, d                                        ; $5d6e: $62
	ld   bc, $0818                                   ; $5d6f: $01 $18 $08
	ld   h, [hl]                                     ; $5d72: $66
	ld   bc, $f80b                                   ; $5d73: $01 $0b $f8
	xor  b                                           ; $5d76: $a8
	ld   [bc], a                                     ; $5d77: $02
	dec  bc                                          ; $5d78: $0b
	ldh  a, [$a6]                                    ; $5d79: $f0 $a6
	ld   [bc], a                                     ; $5d7b: $02
	ei                                               ; $5d7c: $fb
	ld   hl, sp-$5c                                  ; $5d7d: $f8 $a4
	ld   [bc], a                                     ; $5d7f: $02
	ei                                               ; $5d80: $fb
	ldh  a, [hScriptOpcodeParams+2]                                    ; $5d81: $f0 $a2
	ld   [bc], a                                     ; $5d83: $02
	inc  bc                                          ; $5d84: $03
	add  sp, -$60                                    ; $5d85: $e8 $a0
	ld   [bc], a                                     ; $5d87: $02
	inc  bc                                          ; $5d88: $03
	ldh  [$9e], a                                    ; $5d89: $e0 $9e
	ld   [bc], a                                     ; $5d8b: $02
	inc  bc                                          ; $5d8c: $03
	ret  c                                           ; $5d8d: $d8

	sbc  h                                           ; $5d8e: $9c
	ld   [bc], a                                     ; $5d8f: $02
	nop                                              ; $5d90: $00
	ld   [$005a], sp                                 ; $5d91: $08 $5a $00
	nop                                              ; $5d94: $00
	jr   @+$60                                       ; $5d95: $18 $5e

	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	db   $10                                         ; $5d99: $10
	ld   e, h                                        ; $5d9a: $5c
	db   $10                                         ; $5d9b: $10
	ld   [$6008], sp                                 ; $5d9c: $08 $08 $60
	ld   bc, $1820                                   ; $5d9f: $01 $20 $18
	ld   l, d                                        ; $5da2: $6a
	ld   bc, $1018                                   ; $5da3: $01 $18 $10
	ld   l, b                                        ; $5da6: $68
	ld   bc, $1810                                   ; $5da7: $01 $10 $18
	ld   h, h                                        ; $5daa: $64
	ld   bc, $1008                                   ; $5dab: $01 $08 $10
	ld   h, d                                        ; $5dae: $62
	ld   bc, $0818                                   ; $5daf: $01 $18 $08
	ld   h, [hl]                                     ; $5db2: $66
	ld   bc, $0800                                   ; $5db3: $01 $00 $08
	ld   e, d                                        ; $5db6: $5a
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	jr   @+$60                                       ; $5db9: $18 $5e

	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	db   $10                                         ; $5dbd: $10

jr_023_5dbe:
	ld   e, h                                        ; $5dbe: $5c
	nop                                              ; $5dbf: $00
	jr   @-$06                                       ; $5dc0: $18 $f8

	call nz, $0b03                                   ; $5dc2: $c4 $03 $0b
	ld   hl, sp-$18                                  ; $5dc5: $f8 $e8
	ld   [bc], a                                     ; $5dc7: $02
	ei                                               ; $5dc8: $fb
	ld   hl, sp-$1a                                  ; $5dc9: $f8 $e6
	ld   [bc], a                                     ; $5dcb: $02
	jr   jr_023_5dbe                                 ; $5dcc: $18 $f0

	jp   nz, $0303                                   ; $5dce: $c2 $03 $03

	add  sp, -$50                                    ; $5dd1: $e8 $b0
	ld   [bc], a                                     ; $5dd3: $02
	inc  bc                                          ; $5dd4: $03
	ldh  [$ae], a                                    ; $5dd5: $e0 $ae
	ld   [bc], a                                     ; $5dd7: $02
	inc  bc                                          ; $5dd8: $03
	ret  c                                           ; $5dd9: $d8

	xor  h                                           ; $5dda: $ac
	ld   [bc], a                                     ; $5ddb: $02
	inc  bc                                          ; $5ddc: $03
	ret  nc                                          ; $5ddd: $d0

	xor  d                                           ; $5dde: $aa
	ld   [de], a                                     ; $5ddf: $12
	ld   [$7208], sp                                 ; $5de0: $08 $08 $72
	ld   bc, $0008                                   ; $5de3: $01 $08 $00
	add  b                                           ; $5de6: $80
	ld   bc, $1820                                   ; $5de7: $01 $20 $18
	ld   a, h                                        ; $5dea: $7c
	ld   bc, $1018                                   ; $5deb: $01 $18 $10
	ld   a, d                                        ; $5dee: $7a
	ld   bc, $1810                                   ; $5def: $01 $10 $18
	halt                                             ; $5df2: $76
	ld   bc, $1008                                   ; $5df3: $01 $08 $10
	ld   [hl], h                                     ; $5df6: $74
	ld   bc, $0818                                   ; $5df7: $01 $18 $08
	ld   a, b                                        ; $5dfa: $78
	ld   bc, $0800                                   ; $5dfb: $01 $00 $08
	ld   l, h                                        ; $5dfe: $6c
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	jr   jr_023_5e73                                 ; $5e01: $18 $70

	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	db   $10                                         ; $5e05: $10
	ld   l, [hl]                                     ; $5e06: $6e
	nop                                              ; $5e07: $00
	ld   [$7208], sp                                 ; $5e08: $08 $08 $72
	ld   bc, $0008                                   ; $5e0b: $01 $08 $00
	add  b                                           ; $5e0e: $80
	ld   bc, $1820                                   ; $5e0f: $01 $20 $18
	ld   a, h                                        ; $5e12: $7c
	ld   bc, $1018                                   ; $5e13: $01 $18 $10
	ld   a, d                                        ; $5e16: $7a
	ld   bc, $1810                                   ; $5e17: $01 $10 $18
	halt                                             ; $5e1a: $76
	ld   bc, $1008                                   ; $5e1b: $01 $08 $10
	ld   [hl], h                                     ; $5e1e: $74
	ld   bc, $0818                                   ; $5e1f: $01 $18 $08

jr_023_5e22:
	ld   a, b                                        ; $5e22: $78
	ld   bc, $0800                                   ; $5e23: $01 $00 $08

jr_023_5e26:
	ld   l, h                                        ; $5e26: $6c
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	jr   @+$72                                       ; $5e29: $18 $70

	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	db   $10                                         ; $5e2d: $10
	ld   l, [hl]                                     ; $5e2e: $6e
	nop                                              ; $5e2f: $00
	jr   @-$06                                       ; $5e30: $18 $f8

	ret  nc                                          ; $5e32: $d0

	inc  bc                                          ; $5e33: $03
	jr   jr_023_5e26                                 ; $5e34: $18 $f0

	adc  $03                                         ; $5e36: $ce $03
	jr   jr_023_5e22                                 ; $5e38: $18 $e8

jr_023_5e3a:
	call z, $0303                                    ; $5e3a: $cc $03 $03
	db   $e4                                         ; $5e3d: $e4
	or   b                                           ; $5e3e: $b0
	ld   [bc], a                                     ; $5e3f: $02
	inc  bc                                          ; $5e40: $03
	call c, $02ae                                    ; $5e41: $dc $ae $02
	inc  bc                                          ; $5e44: $03
	call nc, $02ac                                   ; $5e45: $d4 $ac $02
	inc  bc                                          ; $5e48: $03
	call z, $12aa                                    ; $5e49: $cc $aa $12
	inc  bc                                          ; $5e4c: $03
	ldh  [$b8], a                                    ; $5e4d: $e0 $b8
	ld   [bc], a                                     ; $5e4f: $02
	inc  bc                                          ; $5e50: $03
	ret  c                                           ; $5e51: $d8

	or   [hl]                                        ; $5e52: $b6
	ld   [bc], a                                     ; $5e53: $02
	inc  bc                                          ; $5e54: $03
	ret  nc                                          ; $5e55: $d0

	or   h                                           ; $5e56: $b4
	ld   [bc], a                                     ; $5e57: $02
	inc  bc                                          ; $5e58: $03
	ret  z                                           ; $5e59: $c8

jr_023_5e5a:
	or   d                                           ; $5e5a: $b2
	ld   [bc], a                                     ; $5e5b: $02
	jr   jr_023_5e3a                                 ; $5e5c: $18 $dc

jr_023_5e5e:
	call nz, $1803                                   ; $5e5e: $c4 $03 $18
	call nc, $03c2                                   ; $5e61: $d4 $c2 $03
	jr   jr_023_5e5e                                 ; $5e64: $18 $f8

	sub  $03                                         ; $5e66: $d6 $03
	jr   jr_023_5e5a                                 ; $5e68: $18 $f0

	call nc, $1803                                   ; $5e6a: $d4 $03 $18
	add  sp, -$2e                                    ; $5e6d: $e8 $d2
	inc  bc                                          ; $5e6f: $03
	ld   [$7e00], sp                                 ; $5e70: $08 $00 $7e

jr_023_5e73:
	ld   bc, $1820                                   ; $5e73: $01 $20 $18
	ld   e, b                                        ; $5e76: $58
	ld   bc, $1020                                   ; $5e77: $01 $20 $10
	ld   d, [hl]                                     ; $5e7a: $56
	ld   bc, $0818                                   ; $5e7b: $01 $18 $08

jr_023_5e7e:
	ld   d, h                                        ; $5e7e: $54
	ld   bc, $1810                                   ; $5e7f: $01 $10 $18

jr_023_5e82:
	ld   d, d                                        ; $5e82: $52
	ld   bc, $1010                                   ; $5e83: $01 $10 $10

jr_023_5e86:
	ld   d, b                                        ; $5e86: $50
	ld   bc, $0808                                   ; $5e87: $01 $08 $08
	ld   c, [hl]                                     ; $5e8a: $4e
	ld   bc, $1800                                   ; $5e8b: $01 $00 $18
	ld   c, h                                        ; $5e8e: $4c
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	db   $10                                         ; $5e91: $10
	ld   c, d                                        ; $5e92: $4a
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	ld   [$1048], sp                                 ; $5e95: $08 $48 $10
	inc  bc                                          ; $5e98: $03
	call c, $02b8                                    ; $5e99: $dc $b8 $02
	inc  bc                                          ; $5e9c: $03
	call nc, $02b6                                   ; $5e9d: $d4 $b6 $02
	inc  bc                                          ; $5ea0: $03
	call z, $02b4                                    ; $5ea1: $cc $b4 $02
	inc  bc                                          ; $5ea4: $03
	call nz, $02b2                                   ; $5ea5: $c4 $b2 $02
	jr   jr_023_5e86                                 ; $5ea8: $18 $dc

jr_023_5eaa:
	ret  nc                                          ; $5eaa: $d0

	inc  bc                                          ; $5eab: $03
	jr   jr_023_5e82                                 ; $5eac: $18 $d4

	adc  $03                                         ; $5eae: $ce $03
	jr   jr_023_5e7e                                 ; $5eb0: $18 $cc

	call z, $1803                                    ; $5eb2: $cc $03 $18
	ld   hl, sp-$24                                  ; $5eb5: $f8 $dc
	inc  bc                                          ; $5eb7: $03
	jr   jr_023_5eaa                                 ; $5eb8: $18 $f0

	jp   c, $1803                                    ; $5eba: $da $03 $18

	add  sp, -$28                                    ; $5ebd: $e8 $d8
	inc  bc                                          ; $5ebf: $03
	ld   [$7e00], sp                                 ; $5ec0: $08 $00 $7e
	ld   bc, $1820                                   ; $5ec3: $01 $20 $18
	ld   e, b                                        ; $5ec6: $58
	ld   bc, $1020                                   ; $5ec7: $01 $20 $10
	ld   d, [hl]                                     ; $5eca: $56
	ld   bc, $0818                                   ; $5ecb: $01 $18 $08
	ld   d, h                                        ; $5ece: $54
	ld   bc, $1810                                   ; $5ecf: $01 $10 $18

jr_023_5ed2:
	ld   d, d                                        ; $5ed2: $52
	ld   bc, $1010                                   ; $5ed3: $01 $10 $10

jr_023_5ed6:
	ld   d, b                                        ; $5ed6: $50
	ld   bc, $0808                                   ; $5ed7: $01 $08 $08
	ld   c, [hl]                                     ; $5eda: $4e
	ld   bc, $1800                                   ; $5edb: $01 $00 $18
	ld   c, h                                        ; $5ede: $4c
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	db   $10                                         ; $5ee1: $10
	ld   c, d                                        ; $5ee2: $4a
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	ld   [$1048], sp                                 ; $5ee5: $08 $48 $10
	inc  bc                                          ; $5ee8: $03
	ret  c                                           ; $5ee9: $d8

	cp   b                                           ; $5eea: $b8
	ld   [bc], a                                     ; $5eeb: $02
	inc  bc                                          ; $5eec: $03
	ret  nc                                          ; $5eed: $d0

	or   [hl]                                        ; $5eee: $b6
	ld   [bc], a                                     ; $5eef: $02
	inc  bc                                          ; $5ef0: $03
	ret  z                                           ; $5ef1: $c8

	or   h                                           ; $5ef2: $b4
	ld   [bc], a                                     ; $5ef3: $02
	inc  bc                                          ; $5ef4: $03
	ret  nz                                          ; $5ef5: $c0

jr_023_5ef6:
	or   d                                           ; $5ef6: $b2
	ld   [bc], a                                     ; $5ef7: $02
	jr   jr_023_5ed6                                 ; $5ef8: $18 $dc

jr_023_5efa:
	sub  $03                                         ; $5efa: $d6 $03
	jr   jr_023_5ed2                                 ; $5efc: $18 $d4

jr_023_5efe:
	call nc, $1803                                   ; $5efe: $d4 $03 $18
	call z, $03d2                                    ; $5f01: $cc $d2 $03
	jr   jr_023_5efe                                 ; $5f04: $18 $f8

	ldh  [c], a                                      ; $5f06: $e2
	inc  bc                                          ; $5f07: $03
	jr   jr_023_5efa                                 ; $5f08: $18 $f0

	ldh  [$03], a                                    ; $5f0a: $e0 $03
	jr   jr_023_5ef6                                 ; $5f0c: $18 $e8

	sbc  $03                                         ; $5f0e: $de $03
	ld   [$7e00], sp                                 ; $5f10: $08 $00 $7e
	ld   bc, $1820                                   ; $5f13: $01 $20 $18

jr_023_5f16:
	ld   e, b                                        ; $5f16: $58
	ld   bc, $1020                                   ; $5f17: $01 $20 $10

jr_023_5f1a:
	ld   d, [hl]                                     ; $5f1a: $56
	ld   bc, $0818                                   ; $5f1b: $01 $18 $08
	ld   d, h                                        ; $5f1e: $54
	ld   bc, $1810                                   ; $5f1f: $01 $10 $18

jr_023_5f22:
	ld   d, d                                        ; $5f22: $52
	ld   bc, $1010                                   ; $5f23: $01 $10 $10
	ld   d, b                                        ; $5f26: $50
	ld   bc, $0808                                   ; $5f27: $01 $08 $08
	ld   c, [hl]                                     ; $5f2a: $4e
	ld   bc, $1800                                   ; $5f2b: $01 $00 $18
	ld   c, h                                        ; $5f2e: $4c
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	db   $10                                         ; $5f31: $10
	ld   c, d                                        ; $5f32: $4a
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	ld   [$1048], sp                                 ; $5f35: $08 $48 $10
	inc  bc                                          ; $5f38: $03
	call z, $02be                                    ; $5f39: $cc $be $02
	inc  bc                                          ; $5f3c: $03
	call nz, $02bc                                   ; $5f3d: $c4 $bc $02
	inc  bc                                          ; $5f40: $03
	cp   h                                           ; $5f41: $bc
	cp   d                                           ; $5f42: $ba
	ld   [bc], a                                     ; $5f43: $02
	jr   jr_023_5f22                                 ; $5f44: $18 $dc

	call c, $1803                                    ; $5f46: $dc $03 $18
	call nc, $03da                                   ; $5f49: $d4 $da $03
	jr   jr_023_5f1a                                 ; $5f4c: $18 $cc

jr_023_5f4e:
	ret  c                                           ; $5f4e: $d8

	inc  bc                                          ; $5f4f: $03
	jr   jr_023_5f16                                 ; $5f50: $18 $c4

	call nz, $1803                                   ; $5f52: $c4 $03 $18
	cp   h                                           ; $5f55: $bc
	jp   nz, $0803                                   ; $5f56: $c2 $03 $08

	nop                                              ; $5f59: $00
	ld   a, [hl]                                     ; $5f5a: $7e
	ld   bc, $1820                                   ; $5f5b: $01 $20 $18
	ld   e, b                                        ; $5f5e: $58
	ld   bc, $1020                                   ; $5f5f: $01 $20 $10

jr_023_5f62:
	ld   d, [hl]                                     ; $5f62: $56
	ld   bc, $0818                                   ; $5f63: $01 $18 $08

jr_023_5f66:
	ld   d, h                                        ; $5f66: $54
	ld   bc, $1810                                   ; $5f67: $01 $10 $18

jr_023_5f6a:
	ld   d, d                                        ; $5f6a: $52
	ld   bc, $1010                                   ; $5f6b: $01 $10 $10
	ld   d, b                                        ; $5f6e: $50
	ld   bc, $0808                                   ; $5f6f: $01 $08 $08
	ld   c, [hl]                                     ; $5f72: $4e
	ld   bc, $1800                                   ; $5f73: $01 $00 $18
	ld   c, h                                        ; $5f76: $4c
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	db   $10                                         ; $5f79: $10
	ld   c, d                                        ; $5f7a: $4a
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	ld   [$1048], sp                                 ; $5f7d: $08 $48 $10
	inc  bc                                          ; $5f80: $03
	ret  z                                           ; $5f81: $c8

	cp   [hl]                                        ; $5f82: $be
	ld   [bc], a                                     ; $5f83: $02
	inc  bc                                          ; $5f84: $03
	ret  nz                                          ; $5f85: $c0

jr_023_5f86:
	cp   h                                           ; $5f86: $bc
	ld   [bc], a                                     ; $5f87: $02
	inc  bc                                          ; $5f88: $03
	cp   b                                           ; $5f89: $b8
	cp   d                                           ; $5f8a: $ba
	ld   [bc], a                                     ; $5f8b: $02
	jr   jr_023_5f6a                                 ; $5f8c: $18 $dc

	ldh  [c], a                                      ; $5f8e: $e2
	inc  bc                                          ; $5f8f: $03
	jr   jr_023_5f66                                 ; $5f90: $18 $d4

	ldh  [$03], a                                    ; $5f92: $e0 $03
	jr   jr_023_5f62                                 ; $5f94: $18 $cc

jr_023_5f96:
	sbc  $03                                         ; $5f96: $de $03
	jr   jr_023_5f4e                                 ; $5f98: $18 $b4

	add  $03                                         ; $5f9a: $c6 $03
	jr   jr_023_5f62                                 ; $5f9c: $18 $c4

	jp   z, $1803                                    ; $5f9e: $ca $03 $18

	cp   h                                           ; $5fa1: $bc
	ret  z                                           ; $5fa2: $c8

	inc  bc                                          ; $5fa3: $03
	ld   [$7e00], sp                                 ; $5fa4: $08 $00 $7e
	ld   bc, $1820                                   ; $5fa7: $01 $20 $18
	ld   e, b                                        ; $5faa: $58
	ld   bc, $1020                                   ; $5fab: $01 $20 $10
	ld   d, [hl]                                     ; $5fae: $56
	ld   bc, $0818                                   ; $5faf: $01 $18 $08
	ld   d, h                                        ; $5fb2: $54
	ld   bc, $1810                                   ; $5fb3: $01 $10 $18
	ld   d, d                                        ; $5fb6: $52
	ld   bc, $1010                                   ; $5fb7: $01 $10 $10
	ld   d, b                                        ; $5fba: $50
	ld   bc, $0808                                   ; $5fbb: $01 $08 $08
	ld   c, [hl]                                     ; $5fbe: $4e
	ld   bc, $1800                                   ; $5fbf: $01 $00 $18

jr_023_5fc2:
	ld   c, h                                        ; $5fc2: $4c
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	db   $10                                         ; $5fc5: $10
	ld   c, d                                        ; $5fc6: $4a
	nop                                              ; $5fc7: $00
	nop                                              ; $5fc8: $00
	ld   [$1048], sp                                 ; $5fc9: $08 $48 $10
	inc  bc                                          ; $5fcc: $03
	call nz, $02be                                   ; $5fcd: $c4 $be $02
	jr   jr_023_5f86                                 ; $5fd0: $18 $b4

jr_023_5fd2:
	call z, $1803                                    ; $5fd2: $cc $03 $18
	call nz, $03d0                                   ; $5fd5: $c4 $d0 $03
	jr   jr_023_5f96                                 ; $5fd8: $18 $bc

	adc  $03                                         ; $5fda: $ce $03
	inc  bc                                          ; $5fdc: $03
	cp   h                                           ; $5fdd: $bc
	cp   h                                           ; $5fde: $bc
	ld   [bc], a                                     ; $5fdf: $02
	inc  bc                                          ; $5fe0: $03
	or   h                                           ; $5fe1: $b4
	cp   d                                           ; $5fe2: $ba
	ld   [bc], a                                     ; $5fe3: $02
	ld   [$7e00], sp                                 ; $5fe4: $08 $00 $7e
	ld   bc, $1820                                   ; $5fe7: $01 $20 $18
	ld   e, b                                        ; $5fea: $58
	ld   bc, $1020                                   ; $5feb: $01 $20 $10
	ld   d, [hl]                                     ; $5fee: $56
	ld   bc, $0818                                   ; $5fef: $01 $18 $08
	ld   d, h                                        ; $5ff2: $54
	ld   bc, $1810                                   ; $5ff3: $01 $10 $18
	ld   d, d                                        ; $5ff6: $52
	ld   bc, $1010                                   ; $5ff7: $01 $10 $10
	ld   d, b                                        ; $5ffa: $50
	ld   bc, $0808                                   ; $5ffb: $01 $08 $08
	ld   c, [hl]                                     ; $5ffe: $4e
	ld   bc, $1800                                   ; $5fff: $01 $00 $18
	ld   c, h                                        ; $6002: $4c
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	db   $10                                         ; $6005: $10
	ld   c, d                                        ; $6006: $4a
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	ld   [$1048], sp                                 ; $6009: $08 $48 $10
	jr   jr_023_5fc2                                 ; $600c: $18 $b4

	jp   nc, $1803                                   ; $600e: $d2 $03 $18

	call nz, $03d6                                   ; $6011: $c4 $d6 $03
	jr   jr_023_5fd2                                 ; $6014: $18 $bc

	call nc, $0303                                   ; $6016: $d4 $03 $03
	ret  nz                                          ; $6019: $c0

	cp   [hl]                                        ; $601a: $be
	ld   [bc], a                                     ; $601b: $02
	inc  bc                                          ; $601c: $03
	cp   b                                           ; $601d: $b8
	cp   h                                           ; $601e: $bc
	ld   [bc], a                                     ; $601f: $02
	inc  bc                                          ; $6020: $03
	or   b                                           ; $6021: $b0
	cp   d                                           ; $6022: $ba
	ld   [bc], a                                     ; $6023: $02
	ld   [$7e00], sp                                 ; $6024: $08 $00 $7e
	ld   bc, $1820                                   ; $6027: $01 $20 $18
	ld   e, b                                        ; $602a: $58
	ld   bc, $1020                                   ; $602b: $01 $20 $10
	ld   d, [hl]                                     ; $602e: $56
	ld   bc, $0818                                   ; $602f: $01 $18 $08
	ld   d, h                                        ; $6032: $54
	ld   bc, $1810                                   ; $6033: $01 $10 $18
	ld   d, d                                        ; $6036: $52
	ld   bc, $1010                                   ; $6037: $01 $10 $10
	ld   d, b                                        ; $603a: $50
	ld   bc, $0808                                   ; $603b: $01 $08 $08
	ld   c, [hl]                                     ; $603e: $4e
	ld   bc, $1800                                   ; $603f: $01 $00 $18
	ld   c, h                                        ; $6042: $4c
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	db   $10                                         ; $6045: $10
	ld   c, d                                        ; $6046: $4a
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	ld   [$1048], sp                                 ; $6049: $08 $48 $10
	jr   nz, @+$12                                   ; $604c: $20 $10

	db   $10                                         ; $604e: $10
	ld   [bc], a                                     ; $604f: $02
	jr   nz, jr_023_605a                             ; $6050: $20 $08

	ld   c, $02                                      ; $6052: $0e $02
	jr   nz, jr_023_6056                             ; $6054: $20 $00

jr_023_6056:
	inc  c                                           ; $6056: $0c
	ld   [bc], a                                     ; $6057: $02
	db   $10                                         ; $6058: $10
	db   $10                                         ; $6059: $10

jr_023_605a:
	ld   a, [bc]                                     ; $605a: $0a
	nop                                              ; $605b: $00
	db   $10                                         ; $605c: $10
	ld   [$0208], sp                                 ; $605d: $08 $08 $02
	stop                                             ; $6060: $10 $00
	ld   b, $02                                      ; $6062: $06 $02
	nop                                              ; $6064: $00
	db   $10                                         ; $6065: $10
	inc  b                                           ; $6066: $04
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	ld   [$0002], sp                                 ; $6069: $08 $02 $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	db   $10                                         ; $606f: $10
	db   $10                                         ; $6070: $10
	ld   hl, sp-$0e                                  ; $6071: $f8 $f2
	inc  bc                                          ; $6073: $03
	db   $10                                         ; $6074: $10
	ldh  a, [$f0]                                    ; $6075: $f0 $f0
	inc  bc                                          ; $6077: $03
	db   $10                                         ; $6078: $10
	add  sp, -$12                                    ; $6079: $e8 $ee
	inc  bc                                          ; $607b: $03
	jr   nz, @+$12                                   ; $607c: $20 $10

	ld   [hl+], a                                    ; $607e: $22
	ld   [bc], a                                     ; $607f: $02
	jr   nz, jr_023_608a                             ; $6080: $20 $08

	jr   nz, jr_023_6086                             ; $6082: $20 $02

	jr   nz, jr_023_6086                             ; $6084: $20 $00

jr_023_6086:
	ld   e, $02                                      ; $6086: $1e $02
	db   $10                                         ; $6088: $10
	db   $10                                         ; $6089: $10

jr_023_608a:
	inc  e                                           ; $608a: $1c
	nop                                              ; $608b: $00
	db   $10                                         ; $608c: $10
	ld   [$021a], sp                                 ; $608d: $08 $1a $02
	stop                                             ; $6090: $10 $00
	jr   jr_023_6094                                 ; $6092: $18 $00

jr_023_6094:
	nop                                              ; $6094: $00
	db   $10                                         ; $6095: $10
	ld   d, $00                                      ; $6096: $16 $00
	nop                                              ; $6098: $00
	ld   [$0014], sp                                 ; $6099: $08 $14 $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	ld   [de], a                                     ; $609e: $12
	db   $10                                         ; $609f: $10
	db   $10                                         ; $60a0: $10
	db   $f4                                         ; $60a1: $f4
	or   $03                                         ; $60a2: $f6 $03
	db   $10                                         ; $60a4: $10
	db   $ec                                         ; $60a5: $ec
	db   $f4                                         ; $60a6: $f4
	inc  bc                                          ; $60a7: $03
	jr   nz, @+$12                                   ; $60a8: $20 $10

	inc  [hl]                                        ; $60aa: $34
	ld   [bc], a                                     ; $60ab: $02
	jr   nz, jr_023_60b6                             ; $60ac: $20 $08

	ld   [hl-], a                                    ; $60ae: $32
	ld   [bc], a                                     ; $60af: $02
	jr   nz, jr_023_60b2                             ; $60b0: $20 $00

jr_023_60b2:
	jr   nc, jr_023_60b6                             ; $60b2: $30 $02

	db   $10                                         ; $60b4: $10
	db   $10                                         ; $60b5: $10

jr_023_60b6:
	ld   l, $00                                      ; $60b6: $2e $00
	db   $10                                         ; $60b8: $10
	ld   [$022c], sp                                 ; $60b9: $08 $2c $02
	stop                                             ; $60bc: $10 $00
	ld   a, [hl+]                                    ; $60be: $2a
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	db   $10                                         ; $60c1: $10
	jr   z, jr_023_60c4                              ; $60c2: $28 $00

jr_023_60c4:
	nop                                              ; $60c4: $00
	ld   [$0026], sp                                 ; $60c5: $08 $26 $00
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	inc  h                                           ; $60ca: $24
	db   $10                                         ; $60cb: $10
	db   $10                                         ; $60cc: $10
	ldh  a, [$f8]                                    ; $60cd: $f0 $f8
	inc  bc                                          ; $60cf: $03
	jr   nz, @+$12                                   ; $60d0: $20 $10

	inc  [hl]                                        ; $60d2: $34
	ld   [bc], a                                     ; $60d3: $02
	jr   nz, jr_023_60de                             ; $60d4: $20 $08

	ld   [hl-], a                                    ; $60d6: $32
	ld   [bc], a                                     ; $60d7: $02
	jr   nz, jr_023_60da                             ; $60d8: $20 $00

jr_023_60da:
	jr   nc, jr_023_60de                             ; $60da: $30 $02

	db   $10                                         ; $60dc: $10
	db   $10                                         ; $60dd: $10

jr_023_60de:
	ld   l, $00                                      ; $60de: $2e $00
	db   $10                                         ; $60e0: $10
	ld   [$022c], sp                                 ; $60e1: $08 $2c $02
	stop                                             ; $60e4: $10 $00
	ld   a, [hl+]                                    ; $60e6: $2a
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	db   $10                                         ; $60e9: $10
	jr   z, jr_023_60ec                              ; $60ea: $28 $00

jr_023_60ec:
	nop                                              ; $60ec: $00
	ld   [$0026], sp                                 ; $60ed: $08 $26 $00
	nop                                              ; $60f0: $00
	nop                                              ; $60f1: $00
	inc  h                                           ; $60f2: $24
	db   $10                                         ; $60f3: $10
	cp   $1b                                         ; $60f4: $fe $1b
	ldh  a, [c]                                      ; $60f6: $f2
	inc  bc                                          ; $60f7: $03
	cp   $13                                         ; $60f8: $fe $13
	ldh  a, [$03]                                    ; $60fa: $f0 $03
	cp   $0b                                         ; $60fc: $fe $0b
	xor  $03                                         ; $60fe: $ee $03
	db   $10                                         ; $6100: $10
	ldh  a, [$f8]                                    ; $6101: $f0 $f8
	inc  bc                                          ; $6103: $03
	jr   nz, @+$12                                   ; $6104: $20 $10

	inc  [hl]                                        ; $6106: $34
	ld   [bc], a                                     ; $6107: $02
	jr   nz, jr_023_6112                             ; $6108: $20 $08

	ld   [hl-], a                                    ; $610a: $32
	ld   [bc], a                                     ; $610b: $02
	jr   nz, jr_023_610e                             ; $610c: $20 $00

jr_023_610e:
	jr   nc, jr_023_6112                             ; $610e: $30 $02

	db   $10                                         ; $6110: $10
	db   $10                                         ; $6111: $10

jr_023_6112:
	ld   l, $00                                      ; $6112: $2e $00
	db   $10                                         ; $6114: $10
	ld   [$022c], sp                                 ; $6115: $08 $2c $02
	stop                                             ; $6118: $10 $00
	ld   a, [hl+]                                    ; $611a: $2a
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	db   $10                                         ; $611d: $10
	jr   z, jr_023_6120                              ; $611e: $28 $00

jr_023_6120:
	nop                                              ; $6120: $00
	ld   [$0026], sp                                 ; $6121: $08 $26 $00
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	inc  h                                           ; $6126: $24
	db   $10                                         ; $6127: $10
	db   $10                                         ; $6128: $10
	ldh  a, [$fa]                                    ; $6129: $f0 $fa
	inc  bc                                          ; $612b: $03
	cp   $1b                                         ; $612c: $fe $1b
	ldh  a, [c]                                      ; $612e: $f2
	inc  bc                                          ; $612f: $03
	cp   $13                                         ; $6130: $fe $13
	ldh  a, [$03]                                    ; $6132: $f0 $03
	cp   $0b                                         ; $6134: $fe $0b
	xor  $03                                         ; $6136: $ee $03
	jr   nz, @+$12                                   ; $6138: $20 $10

	inc  [hl]                                        ; $613a: $34
	ld   [bc], a                                     ; $613b: $02
	jr   nz, jr_023_6146                             ; $613c: $20 $08

	ld   [hl-], a                                    ; $613e: $32
	ld   [bc], a                                     ; $613f: $02
	jr   nz, jr_023_6142                             ; $6140: $20 $00

jr_023_6142:
	jr   nc, jr_023_6146                             ; $6142: $30 $02

	db   $10                                         ; $6144: $10
	db   $10                                         ; $6145: $10

jr_023_6146:
	ld   l, $00                                      ; $6146: $2e $00
	db   $10                                         ; $6148: $10
	ld   [$022c], sp                                 ; $6149: $08 $2c $02
	stop                                             ; $614c: $10 $00
	ld   a, [hl+]                                    ; $614e: $2a
	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	db   $10                                         ; $6151: $10
	jr   z, jr_023_6154                              ; $6152: $28 $00

jr_023_6154:
	nop                                              ; $6154: $00
	ld   [$0026], sp                                 ; $6155: $08 $26 $00
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	inc  h                                           ; $615a: $24
	db   $10                                         ; $615b: $10
	db   $10                                         ; $615c: $10
	ldh  a, [$fa]                                    ; $615d: $f0 $fa
	inc  bc                                          ; $615f: $03
	cp   $17                                         ; $6160: $fe $17
	or   $03                                         ; $6162: $f6 $03
	cp   $0f                                         ; $6164: $fe $0f
	db   $f4                                         ; $6166: $f4
	inc  bc                                          ; $6167: $03
	jr   nz, @+$12                                   ; $6168: $20 $10

	inc  [hl]                                        ; $616a: $34
	ld   [bc], a                                     ; $616b: $02
	jr   nz, jr_023_6176                             ; $616c: $20 $08

	ld   [hl-], a                                    ; $616e: $32
	ld   [bc], a                                     ; $616f: $02
	jr   nz, jr_023_6172                             ; $6170: $20 $00

jr_023_6172:
	jr   nc, jr_023_6176                             ; $6172: $30 $02

	db   $10                                         ; $6174: $10
	db   $10                                         ; $6175: $10

jr_023_6176:
	ld   l, $00                                      ; $6176: $2e $00
	db   $10                                         ; $6178: $10
	ld   [$022c], sp                                 ; $6179: $08 $2c $02
	stop                                             ; $617c: $10 $00
	ld   a, [hl+]                                    ; $617e: $2a
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	db   $10                                         ; $6181: $10
	jr   z, jr_023_6184                              ; $6182: $28 $00

jr_023_6184:
	nop                                              ; $6184: $00
	ld   [$0026], sp                                 ; $6185: $08 $26 $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	inc  h                                           ; $618a: $24
	db   $10                                         ; $618b: $10
	db   $10                                         ; $618c: $10
	ldh  a, [rP1]                                    ; $618d: $f0 $00
	dec  bc                                          ; $618f: $0b
	nop                                              ; $6190: $00
	ldh  a, [$fe]                                    ; $6191: $f0 $fe
	inc  bc                                          ; $6193: $03
	ldh  a, [$f0]                                    ; $6194: $f0 $f0
	db   $fc                                         ; $6196: $fc
	inc  bc                                          ; $6197: $03
	cp   $17                                         ; $6198: $fe $17
	or   $03                                         ; $619a: $f6 $03
	cp   $0f                                         ; $619c: $fe $0f
	db   $f4                                         ; $619e: $f4
	inc  bc                                          ; $619f: $03
	jr   nz, @+$12                                   ; $61a0: $20 $10

	inc  [hl]                                        ; $61a2: $34
	ld   [bc], a                                     ; $61a3: $02
	jr   nz, jr_023_61ae                             ; $61a4: $20 $08

	ld   [hl-], a                                    ; $61a6: $32
	ld   [bc], a                                     ; $61a7: $02
	jr   nz, jr_023_61aa                             ; $61a8: $20 $00

jr_023_61aa:
	jr   nc, jr_023_61ae                             ; $61aa: $30 $02

	db   $10                                         ; $61ac: $10
	db   $10                                         ; $61ad: $10

jr_023_61ae:
	ld   l, $00                                      ; $61ae: $2e $00
	db   $10                                         ; $61b0: $10
	ld   [$022c], sp                                 ; $61b1: $08 $2c $02
	stop                                             ; $61b4: $10 $00
	ld   a, [hl+]                                    ; $61b6: $2a
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	db   $10                                         ; $61b9: $10
	jr   z, jr_023_61bc                              ; $61ba: $28 $00

jr_023_61bc:
	nop                                              ; $61bc: $00
	ld   [$0026], sp                                 ; $61bd: $08 $26 $00
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	inc  h                                           ; $61c2: $24
	db   $10                                         ; $61c3: $10
	db   $10                                         ; $61c4: $10
	ldh  a, [rP1]                                    ; $61c5: $f0 $00
	dec  bc                                          ; $61c7: $0b
	nop                                              ; $61c8: $00
	ldh  a, [$fe]                                    ; $61c9: $f0 $fe
	inc  bc                                          ; $61cb: $03
	ldh  a, [$f0]                                    ; $61cc: $f0 $f0
	db   $fc                                         ; $61ce: $fc
	inc  bc                                          ; $61cf: $03
	cp   $17                                         ; $61d0: $fe $17
	or   $03                                         ; $61d2: $f6 $03
	cp   $0f                                         ; $61d4: $fe $0f
	db   $f4                                         ; $61d6: $f4
	inc  bc                                          ; $61d7: $03
	jr   nz, @+$12                                   ; $61d8: $20 $10

	ld   b, [hl]                                     ; $61da: $46
	ld   [bc], a                                     ; $61db: $02
	jr   nz, jr_023_61e6                             ; $61dc: $20 $08

	ld   b, h                                        ; $61de: $44
	ld   [bc], a                                     ; $61df: $02
	jr   nz, jr_023_61e2                             ; $61e0: $20 $00

jr_023_61e2:
	ld   b, d                                        ; $61e2: $42
	ld   [bc], a                                     ; $61e3: $02
	db   $10                                         ; $61e4: $10
	db   $10                                         ; $61e5: $10

jr_023_61e6:
	ld   b, b                                        ; $61e6: $40
	nop                                              ; $61e7: $00
	db   $10                                         ; $61e8: $10
	ld   [$023e], sp                                 ; $61e9: $08 $3e $02
	stop                                             ; $61ec: $10 $00
	inc  a                                           ; $61ee: $3c
	ld   [bc], a                                     ; $61ef: $02
	nop                                              ; $61f0: $00
	db   $10                                         ; $61f1: $10
	ld   a, [hl-]                                    ; $61f2: $3a
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	ld   [$0038], sp                                 ; $61f5: $08 $38 $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	ld   [hl], $10                                   ; $61fa: $36 $10
	ldh  [$f2], a                                    ; $61fc: $e0 $f2
	ld   [bc], a                                     ; $61fe: $02
	dec  bc                                          ; $61ff: $0b
	cp   $17                                         ; $6200: $fe $17
	or   $03                                         ; $6202: $f6 $03
	cp   $0f                                         ; $6204: $fe $0f
	db   $f4                                         ; $6206: $f4
	inc  bc                                          ; $6207: $03
	jr   nz, @+$12                                   ; $6208: $20 $10

	ld   b, [hl]                                     ; $620a: $46
	ld   [bc], a                                     ; $620b: $02
	jr   nz, jr_023_6216                             ; $620c: $20 $08

	ld   b, h                                        ; $620e: $44
	ld   [bc], a                                     ; $620f: $02
	jr   nz, jr_023_6212                             ; $6210: $20 $00

jr_023_6212:
	ld   b, d                                        ; $6212: $42
	ld   [bc], a                                     ; $6213: $02
	db   $10                                         ; $6214: $10
	db   $10                                         ; $6215: $10

jr_023_6216:
	ld   b, b                                        ; $6216: $40
	nop                                              ; $6217: $00
	db   $10                                         ; $6218: $10
	ld   [$023e], sp                                 ; $6219: $08 $3e $02
	stop                                             ; $621c: $10 $00
	inc  a                                           ; $621e: $3c
	ld   [bc], a                                     ; $621f: $02
	nop                                              ; $6220: $00
	db   $10                                         ; $6221: $10
	ld   a, [hl-]                                    ; $6222: $3a
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	ld   [$0038], sp                                 ; $6225: $08 $38 $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	ld   [hl], $10                                   ; $622a: $36 $10
	ldh  [$f2], a                                    ; $622c: $e0 $f2
	ld   [bc], a                                     ; $622e: $02
	dec  bc                                          ; $622f: $0b
	cp   $13                                         ; $6230: $fe $13
	ld   hl, sp+$03                                  ; $6232: $f8 $03
	jr   nz, @+$12                                   ; $6234: $20 $10

	ld   b, [hl]                                     ; $6236: $46
	ld   [bc], a                                     ; $6237: $02
	jr   nz, jr_023_6242                             ; $6238: $20 $08

	ld   b, h                                        ; $623a: $44
	ld   [bc], a                                     ; $623b: $02
	jr   nz, jr_023_623e                             ; $623c: $20 $00

jr_023_623e:
	ld   b, d                                        ; $623e: $42
	ld   [bc], a                                     ; $623f: $02
	db   $10                                         ; $6240: $10
	db   $10                                         ; $6241: $10

jr_023_6242:
	ld   b, b                                        ; $6242: $40
	nop                                              ; $6243: $00
	db   $10                                         ; $6244: $10
	ld   [$023e], sp                                 ; $6245: $08 $3e $02
	stop                                             ; $6248: $10 $00
	inc  a                                           ; $624a: $3c
	ld   [bc], a                                     ; $624b: $02
	nop                                              ; $624c: $00
	db   $10                                         ; $624d: $10
	ld   a, [hl-]                                    ; $624e: $3a
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	ld   [$0038], sp                                 ; $6251: $08 $38 $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	ld   [hl], $10                                   ; $6256: $36 $10
	cp   $13                                         ; $6258: $fe $13
	ld   hl, sp+$03                                  ; $625a: $f8 $03
	jr   nz, @+$12                                   ; $625c: $20 $10

	ld   b, [hl]                                     ; $625e: $46
	ld   [bc], a                                     ; $625f: $02
	jr   nz, jr_023_626a                             ; $6260: $20 $08

	ld   b, h                                        ; $6262: $44
	ld   [bc], a                                     ; $6263: $02
	jr   nz, jr_023_6266                             ; $6264: $20 $00

jr_023_6266:
	ld   b, d                                        ; $6266: $42
	ld   [bc], a                                     ; $6267: $02
	db   $10                                         ; $6268: $10
	db   $10                                         ; $6269: $10

jr_023_626a:
	ld   b, b                                        ; $626a: $40
	nop                                              ; $626b: $00
	db   $10                                         ; $626c: $10
	ld   [$023e], sp                                 ; $626d: $08 $3e $02
	stop                                             ; $6270: $10 $00
	inc  a                                           ; $6272: $3c
	ld   [bc], a                                     ; $6273: $02
	nop                                              ; $6274: $00
	db   $10                                         ; $6275: $10
	ld   a, [hl-]                                    ; $6276: $3a
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	ld   [$0038], sp                                 ; $6279: $08 $38 $00
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	ld   [hl], $10                                   ; $627e: $36 $10
	ld   a, [$fa13]                                  ; $6280: $fa $13 $fa
	inc  bc                                          ; $6283: $03
	jr   nz, @+$12                                   ; $6284: $20 $10

	ld   e, b                                        ; $6286: $58
	ld   [bc], a                                     ; $6287: $02
	jr   nz, jr_023_6292                             ; $6288: $20 $08

	ld   d, [hl]                                     ; $628a: $56
	ld   [bc], a                                     ; $628b: $02
	jr   nz, jr_023_628e                             ; $628c: $20 $00

jr_023_628e:
	ld   d, h                                        ; $628e: $54
	ld   [bc], a                                     ; $628f: $02
	db   $10                                         ; $6290: $10
	db   $10                                         ; $6291: $10

jr_023_6292:
	ld   d, d                                        ; $6292: $52
	nop                                              ; $6293: $00
	db   $10                                         ; $6294: $10
	ld   [$0250], sp                                 ; $6295: $08 $50 $02
	stop                                             ; $6298: $10 $00
	ld   c, [hl]                                     ; $629a: $4e
	ld   [bc], a                                     ; $629b: $02
	nop                                              ; $629c: $00
	db   $10                                         ; $629d: $10
	ld   c, h                                        ; $629e: $4c
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	ld   [$004a], sp                                 ; $62a1: $08 $4a $00
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	ld   c, b                                        ; $62a6: $48
	db   $10                                         ; $62a7: $10
	ld   hl, sp+$00                                  ; $62a8: $f8 $00
	ldh  a, [c]                                      ; $62aa: $f2
	inc  bc                                          ; $62ab: $03
	ld   hl, sp-$08                                  ; $62ac: $f8 $f8
	ldh  a, [$03]                                    ; $62ae: $f0 $03
	ld   hl, sp-$10                                  ; $62b0: $f8 $f0
	xor  $03                                         ; $62b2: $ee $03
	db   $fd                                         ; $62b4: $fd
	ld   [de], a                                     ; $62b5: $12
	nop                                              ; $62b6: $00
	dec  bc                                          ; $62b7: $0b
	db   $ed                                         ; $62b8: $ed
	ld   [de], a                                     ; $62b9: $12
	cp   $03                                         ; $62ba: $fe $03
	db   $dd                                         ; $62bc: $dd
	ld   [de], a                                     ; $62bd: $12
	db   $fc                                         ; $62be: $fc
	inc  bc                                          ; $62bf: $03
	jr   nz, @+$12                                   ; $62c0: $20 $10

	ld   e, b                                        ; $62c2: $58
	ld   [bc], a                                     ; $62c3: $02
	jr   nz, jr_023_62ce                             ; $62c4: $20 $08

	ld   d, [hl]                                     ; $62c6: $56
	ld   [bc], a                                     ; $62c7: $02
	jr   nz, jr_023_62ca                             ; $62c8: $20 $00

jr_023_62ca:
	ld   d, h                                        ; $62ca: $54
	ld   [bc], a                                     ; $62cb: $02
	db   $10                                         ; $62cc: $10
	db   $10                                         ; $62cd: $10

jr_023_62ce:
	ld   d, d                                        ; $62ce: $52
	nop                                              ; $62cf: $00
	db   $10                                         ; $62d0: $10
	ld   [$0250], sp                                 ; $62d1: $08 $50 $02
	stop                                             ; $62d4: $10 $00
	ld   c, [hl]                                     ; $62d6: $4e
	ld   [bc], a                                     ; $62d7: $02
	nop                                              ; $62d8: $00
	db   $10                                         ; $62d9: $10
	ld   c, h                                        ; $62da: $4c
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	ld   [$004a], sp                                 ; $62dd: $08 $4a $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	ld   c, b                                        ; $62e2: $48
	db   $10                                         ; $62e3: $10
	ld   hl, sp+$00                                  ; $62e4: $f8 $00
	ldh  a, [c]                                      ; $62e6: $f2
	inc  bc                                          ; $62e7: $03
	ld   hl, sp-$08                                  ; $62e8: $f8 $f8
	ldh  a, [$03]                                    ; $62ea: $f0 $03
	ld   hl, sp-$10                                  ; $62ec: $f8 $f0
	xor  $03                                         ; $62ee: $ee $03
	db   $db                                         ; $62f0: $db
	inc  d                                           ; $62f1: $14
	ld   [bc], a                                     ; $62f2: $02
	dec  bc                                          ; $62f3: $0b
	jr   nz, @+$12                                   ; $62f4: $20 $10

	ld   e, b                                        ; $62f6: $58
	ld   [bc], a                                     ; $62f7: $02
	jr   nz, jr_023_6302                             ; $62f8: $20 $08

	ld   d, [hl]                                     ; $62fa: $56
	ld   [bc], a                                     ; $62fb: $02
	jr   nz, jr_023_62fe                             ; $62fc: $20 $00

jr_023_62fe:
	ld   d, h                                        ; $62fe: $54
	ld   [bc], a                                     ; $62ff: $02
	db   $10                                         ; $6300: $10
	db   $10                                         ; $6301: $10

jr_023_6302:
	ld   d, d                                        ; $6302: $52
	nop                                              ; $6303: $00
	db   $10                                         ; $6304: $10
	ld   [$0250], sp                                 ; $6305: $08 $50 $02
	stop                                             ; $6308: $10 $00
	ld   c, [hl]                                     ; $630a: $4e
	ld   [bc], a                                     ; $630b: $02
	nop                                              ; $630c: $00
	db   $10                                         ; $630d: $10
	ld   c, h                                        ; $630e: $4c
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	ld   [$004a], sp                                 ; $6311: $08 $4a $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	ld   c, b                                        ; $6316: $48
	db   $10                                         ; $6317: $10
	ld   hl, sp-$04                                  ; $6318: $f8 $fc
	or   $03                                         ; $631a: $f6 $03
	ld   hl, sp-$0c                                  ; $631c: $f8 $f4
	db   $f4                                         ; $631e: $f4
	inc  bc                                          ; $631f: $03
	db   $db                                         ; $6320: $db
	inc  d                                           ; $6321: $14
	ld   [bc], a                                     ; $6322: $02
	dec  bc                                          ; $6323: $0b
	jr   nz, @+$12                                   ; $6324: $20 $10

	ld   e, b                                        ; $6326: $58
	ld   [bc], a                                     ; $6327: $02
	jr   nz, jr_023_6332                             ; $6328: $20 $08

	ld   d, [hl]                                     ; $632a: $56
	ld   [bc], a                                     ; $632b: $02
	jr   nz, jr_023_632e                             ; $632c: $20 $00

jr_023_632e:
	ld   d, h                                        ; $632e: $54
	ld   [bc], a                                     ; $632f: $02
	db   $10                                         ; $6330: $10
	db   $10                                         ; $6331: $10

jr_023_6332:
	ld   d, d                                        ; $6332: $52
	nop                                              ; $6333: $00
	db   $10                                         ; $6334: $10
	ld   [$0250], sp                                 ; $6335: $08 $50 $02
	stop                                             ; $6338: $10 $00
	ld   c, [hl]                                     ; $633a: $4e
	ld   [bc], a                                     ; $633b: $02
	nop                                              ; $633c: $00
	db   $10                                         ; $633d: $10
	ld   c, h                                        ; $633e: $4c
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	ld   [$004a], sp                                 ; $6341: $08 $4a $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	ld   c, b                                        ; $6346: $48
	db   $10                                         ; $6347: $10
	ld   hl, sp-$04                                  ; $6348: $f8 $fc
	or   $03                                         ; $634a: $f6 $03
	ld   hl, sp-$0c                                  ; $634c: $f8 $f4
	db   $f4                                         ; $634e: $f4
	inc  bc                                          ; $634f: $03
	jr   nz, @+$12                                   ; $6350: $20 $10

	ld   e, b                                        ; $6352: $58
	ld   [bc], a                                     ; $6353: $02
	jr   nz, jr_023_635e                             ; $6354: $20 $08

	ld   d, [hl]                                     ; $6356: $56
	ld   [bc], a                                     ; $6357: $02
	jr   nz, jr_023_635a                             ; $6358: $20 $00

jr_023_635a:
	ld   d, h                                        ; $635a: $54
	ld   [bc], a                                     ; $635b: $02
	db   $10                                         ; $635c: $10
	db   $10                                         ; $635d: $10

jr_023_635e:
	ld   d, d                                        ; $635e: $52
	nop                                              ; $635f: $00
	db   $10                                         ; $6360: $10
	ld   [$0250], sp                                 ; $6361: $08 $50 $02
	stop                                             ; $6364: $10 $00
	ld   c, [hl]                                     ; $6366: $4e
	ld   [bc], a                                     ; $6367: $02
	nop                                              ; $6368: $00
	db   $10                                         ; $6369: $10
	ld   c, h                                        ; $636a: $4c
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	ld   [$004a], sp                                 ; $636d: $08 $4a $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	ld   c, b                                        ; $6372: $48
	db   $10                                         ; $6373: $10
	ld   hl, sp-$08                                  ; $6374: $f8 $f8
	ld   hl, sp+$03                                  ; $6376: $f8 $03
	jr   nz, @+$12                                   ; $6378: $20 $10

	ld   e, b                                        ; $637a: $58
	ld   [bc], a                                     ; $637b: $02
	jr   nz, jr_023_6386                             ; $637c: $20 $08

	ld   d, [hl]                                     ; $637e: $56
	ld   [bc], a                                     ; $637f: $02
	jr   nz, jr_023_6382                             ; $6380: $20 $00

jr_023_6382:
	ld   d, h                                        ; $6382: $54
	ld   [bc], a                                     ; $6383: $02
	db   $10                                         ; $6384: $10
	db   $10                                         ; $6385: $10

jr_023_6386:
	ld   d, d                                        ; $6386: $52
	nop                                              ; $6387: $00
	db   $10                                         ; $6388: $10
	ld   [$0250], sp                                 ; $6389: $08 $50 $02
	stop                                             ; $638c: $10 $00
	ld   c, [hl]                                     ; $638e: $4e
	ld   [bc], a                                     ; $638f: $02
	nop                                              ; $6390: $00
	db   $10                                         ; $6391: $10
	ld   c, h                                        ; $6392: $4c
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	ld   [$004a], sp                                 ; $6395: $08 $4a $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	ld   c, b                                        ; $639a: $48
	db   $10                                         ; $639b: $10
	ldh  a, [$f8]                                    ; $639c: $f0 $f8
	ld   a, [$2003]                                  ; $639e: $fa $03 $20
	db   $10                                         ; $63a1: $10
	ld   e, b                                        ; $63a2: $58
	ld   [bc], a                                     ; $63a3: $02
	jr   nz, jr_023_63ae                             ; $63a4: $20 $08

	ld   d, [hl]                                     ; $63a6: $56
	ld   [bc], a                                     ; $63a7: $02
	jr   nz, jr_023_63aa                             ; $63a8: $20 $00

jr_023_63aa:
	ld   d, h                                        ; $63aa: $54
	ld   [bc], a                                     ; $63ab: $02
	db   $10                                         ; $63ac: $10
	db   $10                                         ; $63ad: $10

jr_023_63ae:
	ld   d, d                                        ; $63ae: $52
	nop                                              ; $63af: $00
	db   $10                                         ; $63b0: $10
	ld   [$0250], sp                                 ; $63b1: $08 $50 $02
	stop                                             ; $63b4: $10 $00
	ld   c, [hl]                                     ; $63b6: $4e
	ld   [bc], a                                     ; $63b7: $02
	nop                                              ; $63b8: $00
	db   $10                                         ; $63b9: $10
	ld   c, h                                        ; $63ba: $4c
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	ld   [$004a], sp                                 ; $63bd: $08 $4a $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	ld   c, b                                        ; $63c2: $48
	db   $10                                         ; $63c3: $10
	ld   bc, $00f8                                   ; $63c4: $01 $f8 $00
	dec  bc                                          ; $63c7: $0b
	pop  af                                          ; $63c8: $f1
	ld   hl, sp-$02                                  ; $63c9: $f8 $fe
	inc  bc                                          ; $63cb: $03
	pop  hl                                          ; $63cc: $e1
	ld   hl, sp-$04                                  ; $63cd: $f8 $fc
	inc  bc                                          ; $63cf: $03
	jr   nz, @+$12                                   ; $63d0: $20 $10

	ld   e, b                                        ; $63d2: $58
	ld   [bc], a                                     ; $63d3: $02
	jr   nz, jr_023_63de                             ; $63d4: $20 $08

	ld   d, [hl]                                     ; $63d6: $56
	ld   [bc], a                                     ; $63d7: $02
	jr   nz, jr_023_63da                             ; $63d8: $20 $00

jr_023_63da:
	ld   d, h                                        ; $63da: $54
	ld   [bc], a                                     ; $63db: $02
	db   $10                                         ; $63dc: $10
	db   $10                                         ; $63dd: $10

jr_023_63de:
	ld   d, d                                        ; $63de: $52
	nop                                              ; $63df: $00
	db   $10                                         ; $63e0: $10
	ld   [$0250], sp                                 ; $63e1: $08 $50 $02
	stop                                             ; $63e4: $10 $00
	ld   c, [hl]                                     ; $63e6: $4e
	ld   [bc], a                                     ; $63e7: $02
	nop                                              ; $63e8: $00
	db   $10                                         ; $63e9: $10
	ld   c, h                                        ; $63ea: $4c
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	ld   [$004a], sp                                 ; $63ed: $08 $4a $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	ld   c, b                                        ; $63f2: $48
	db   $10                                         ; $63f3: $10
	rst  $10                                         ; $63f4: $d7
	ld   a, [$0b02]                                  ; $63f5: $fa $02 $0b
	jr   nz, @+$12                                   ; $63f8: $20 $10

	ld   e, b                                        ; $63fa: $58
	ld   [bc], a                                     ; $63fb: $02
	jr   nz, jr_023_6406                             ; $63fc: $20 $08

	ld   d, [hl]                                     ; $63fe: $56
	ld   [bc], a                                     ; $63ff: $02
	jr   nz, jr_023_6402                             ; $6400: $20 $00

jr_023_6402:
	ld   d, h                                        ; $6402: $54
	ld   [bc], a                                     ; $6403: $02
	db   $10                                         ; $6404: $10
	db   $10                                         ; $6405: $10

jr_023_6406:
	ld   d, d                                        ; $6406: $52
	nop                                              ; $6407: $00
	db   $10                                         ; $6408: $10
	ld   [$0250], sp                                 ; $6409: $08 $50 $02
	stop                                             ; $640c: $10 $00
	ld   c, [hl]                                     ; $640e: $4e
	ld   [bc], a                                     ; $640f: $02
	nop                                              ; $6410: $00
	db   $10                                         ; $6411: $10
	ld   c, h                                        ; $6412: $4c
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	ld   [$004a], sp                                 ; $6415: $08 $4a $00
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	ld   c, b                                        ; $641a: $48
	db   $10                                         ; $641b: $10
	or   $ab                                         ; $641c: $f6 $ab
	ld   [$f60b], sp                                 ; $641e: $08 $0b $f6
	and  e                                           ; $6421: $a3
	ld   b, $0b                                      ; $6422: $06 $0b
	and  $ab                                         ; $6424: $e6 $ab
	inc  b                                           ; $6426: $04
	dec  bc                                          ; $6427: $0b
	jr   nz, @+$12                                   ; $6428: $20 $10

	ld   e, b                                        ; $642a: $58
	ld   [bc], a                                     ; $642b: $02
	jr   nz, jr_023_6436                             ; $642c: $20 $08

	ld   d, [hl]                                     ; $642e: $56
	ld   [bc], a                                     ; $642f: $02
	jr   nz, jr_023_6432                             ; $6430: $20 $00

jr_023_6432:
	ld   d, h                                        ; $6432: $54
	ld   [bc], a                                     ; $6433: $02
	db   $10                                         ; $6434: $10
	db   $10                                         ; $6435: $10

jr_023_6436:
	ld   d, d                                        ; $6436: $52
	nop                                              ; $6437: $00
	db   $10                                         ; $6438: $10
	ld   [$0250], sp                                 ; $6439: $08 $50 $02
	stop                                             ; $643c: $10 $00
	ld   c, [hl]                                     ; $643e: $4e
	ld   [bc], a                                     ; $643f: $02
	nop                                              ; $6440: $00
	db   $10                                         ; $6441: $10
	ld   c, h                                        ; $6442: $4c
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	ld   [$004a], sp                                 ; $6445: $08 $4a $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	ld   c, b                                        ; $644a: $48
	db   $10                                         ; $644b: $10
	ld   sp, hl                                      ; $644c: $f9
	and  a                                           ; $644d: $a7
	inc  c                                           ; $644e: $0c
	dec  bc                                          ; $644f: $0b
	ld   sp, hl                                      ; $6450: $f9
	sbc  a                                           ; $6451: $9f
	ld   a, [bc]                                     ; $6452: $0a
	dec  bc                                          ; $6453: $0b
	jr   nz, @+$12                                   ; $6454: $20 $10

	ld   e, b                                        ; $6456: $58
	ld   [bc], a                                     ; $6457: $02
	jr   nz, jr_023_6462                             ; $6458: $20 $08

	ld   d, [hl]                                     ; $645a: $56
	ld   [bc], a                                     ; $645b: $02
	jr   nz, jr_023_645e                             ; $645c: $20 $00

jr_023_645e:
	ld   d, h                                        ; $645e: $54
	ld   [bc], a                                     ; $645f: $02
	db   $10                                         ; $6460: $10
	db   $10                                         ; $6461: $10

jr_023_6462:
	ld   d, d                                        ; $6462: $52
	nop                                              ; $6463: $00
	db   $10                                         ; $6464: $10
	ld   [$0250], sp                                 ; $6465: $08 $50 $02
	stop                                             ; $6468: $10 $00
	ld   c, [hl]                                     ; $646a: $4e
	ld   [bc], a                                     ; $646b: $02
	nop                                              ; $646c: $00
	db   $10                                         ; $646d: $10
	ld   c, h                                        ; $646e: $4c
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	ld   [$004a], sp                                 ; $6471: $08 $4a $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	ld   c, b                                        ; $6476: $48
	stop                                             ; $6477: $10 $00
	db   $10                                         ; $6479: $10
	ld   e, [hl]                                     ; $647a: $5e
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	ld   [$005c], sp                                 ; $647d: $08 $5c $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	ld   e, d                                        ; $6482: $5a
	nop                                              ; $6483: $00
	xor  $d1                                         ; $6484: $ee $d1
	ld   [$ee0b], sp                                 ; $6486: $08 $0b $ee
	ret                                              ; $6489: $c9


	ld   b, $0b                                      ; $648a: $06 $0b
	sbc  $d1                                         ; $648c: $de $d1
	inc  b                                           ; $648e: $04
	dec  bc                                          ; $648f: $0b
	ld   sp, hl                                      ; $6490: $f9
	and  a                                           ; $6491: $a7
	db   $10                                         ; $6492: $10
	dec  bc                                          ; $6493: $0b
	ld   sp, hl                                      ; $6494: $f9
	sbc  a                                           ; $6495: $9f
	ld   c, $0b                                      ; $6496: $0e $0b
	jr   nz, @+$12                                   ; $6498: $20 $10

	ld   e, b                                        ; $649a: $58
	ld   [bc], a                                     ; $649b: $02
	jr   nz, jr_023_64a6                             ; $649c: $20 $08

	ld   d, [hl]                                     ; $649e: $56
	ld   [bc], a                                     ; $649f: $02
	jr   nz, jr_023_64a2                             ; $64a0: $20 $00

jr_023_64a2:
	ld   d, h                                        ; $64a2: $54
	ld   [bc], a                                     ; $64a3: $02
	db   $10                                         ; $64a4: $10
	db   $10                                         ; $64a5: $10

jr_023_64a6:
	ld   d, d                                        ; $64a6: $52
	nop                                              ; $64a7: $00
	db   $10                                         ; $64a8: $10
	ld   [$0250], sp                                 ; $64a9: $08 $50 $02
	stop                                             ; $64ac: $10 $00
	ld   c, [hl]                                     ; $64ae: $4e
	ld   [de], a                                     ; $64af: $12
	ld   sp, hl                                      ; $64b0: $f9
	and  a                                           ; $64b1: $a7
	xor  b                                           ; $64b2: $a8
	inc  bc                                          ; $64b3: $03
	ld   sp, hl                                      ; $64b4: $f9
	sbc  a                                           ; $64b5: $9f
	and  [hl]                                        ; $64b6: $a6
	inc  bc                                          ; $64b7: $03
	xor  $d1                                         ; $64b8: $ee $d1
	ld   [$ee0b], sp                                 ; $64ba: $08 $0b $ee
	ret                                              ; $64bd: $c9


	ld   b, $0b                                      ; $64be: $06 $0b
	sbc  $d1                                         ; $64c0: $de $d1
	inc  b                                           ; $64c2: $04
	dec  bc                                          ; $64c3: $0b
	jr   nz, @+$12                                   ; $64c4: $20 $10

	ld   e, b                                        ; $64c6: $58
	ld   [bc], a                                     ; $64c7: $02
	jr   nz, jr_023_64d2                             ; $64c8: $20 $08

	ld   d, [hl]                                     ; $64ca: $56
	ld   [bc], a                                     ; $64cb: $02
	jr   nz, jr_023_64ce                             ; $64cc: $20 $00

jr_023_64ce:
	ld   d, h                                        ; $64ce: $54
	ld   [bc], a                                     ; $64cf: $02
	db   $10                                         ; $64d0: $10
	db   $10                                         ; $64d1: $10

jr_023_64d2:
	ld   d, d                                        ; $64d2: $52
	nop                                              ; $64d3: $00
	db   $10                                         ; $64d4: $10
	ld   [$0250], sp                                 ; $64d5: $08 $50 $02
	stop                                             ; $64d8: $10 $00
	ld   c, [hl]                                     ; $64da: $4e
	ld   [bc], a                                     ; $64db: $02
	nop                                              ; $64dc: $00
	db   $10                                         ; $64dd: $10
	ld   e, [hl]                                     ; $64de: $5e
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	ld   [$005c], sp                                 ; $64e1: $08 $5c $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	ld   e, d                                        ; $64e6: $5a
	db   $10                                         ; $64e7: $10
	ei                                               ; $64e8: $fb
	and  l                                           ; $64e9: $a5
	xor  h                                           ; $64ea: $ac
	inc  bc                                          ; $64eb: $03
	ei                                               ; $64ec: $fb
	sbc  l                                           ; $64ed: $9d
	xor  d                                           ; $64ee: $aa
	inc  bc                                          ; $64ef: $03
	di                                               ; $64f0: $f3
	rst  ToBoot                                         ; $64f1: $c7
	inc  c                                           ; $64f2: $0c
	dec  bc                                          ; $64f3: $0b
	di                                               ; $64f4: $f3
	cp   a                                           ; $64f5: $bf
	ld   a, [bc]                                     ; $64f6: $0a
	dec  bc                                          ; $64f7: $0b
	jr   nz, @+$12                                   ; $64f8: $20 $10

	ld   [hl], b                                     ; $64fa: $70
	ld   [bc], a                                     ; $64fb: $02
	jr   nz, jr_023_6506                             ; $64fc: $20 $08

	ld   l, [hl]                                     ; $64fe: $6e
	ld   [bc], a                                     ; $64ff: $02
	jr   nz, jr_023_6502                             ; $6500: $20 $00

jr_023_6502:
	ld   l, h                                        ; $6502: $6c
	ld   [bc], a                                     ; $6503: $02
	db   $10                                         ; $6504: $10
	db   $10                                         ; $6505: $10

jr_023_6506:
	ld   l, d                                        ; $6506: $6a
	ld   [bc], a                                     ; $6507: $02
	db   $10                                         ; $6508: $10
	ld   [$0268], sp                                 ; $6509: $08 $68 $02
	stop                                             ; $650c: $10 $00
	ld   h, [hl]                                     ; $650e: $66
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	db   $10                                         ; $6511: $10
	ld   h, h                                        ; $6512: $64
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	ld   [$0062], sp                                 ; $6515: $08 $62 $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	ld   h, b                                        ; $651a: $60
	stop                                             ; $651b: $10 $00
	and  l                                           ; $651d: $a5
	or   b                                           ; $651e: $b0
	inc  bc                                          ; $651f: $03
	nop                                              ; $6520: $00
	sbc  l                                           ; $6521: $9d
	xor  [hl]                                        ; $6522: $ae
	inc  bc                                          ; $6523: $03
	jr   nz, @+$12                                   ; $6524: $20 $10

	ld   [hl], b                                     ; $6526: $70
	ld   [bc], a                                     ; $6527: $02
	jr   nz, jr_023_6532                             ; $6528: $20 $08

	ld   l, [hl]                                     ; $652a: $6e
	ld   [bc], a                                     ; $652b: $02
	jr   nz, jr_023_652e                             ; $652c: $20 $00

jr_023_652e:
	ld   l, h                                        ; $652e: $6c
	ld   [bc], a                                     ; $652f: $02
	db   $10                                         ; $6530: $10
	db   $10                                         ; $6531: $10

jr_023_6532:
	ld   l, d                                        ; $6532: $6a
	ld   [bc], a                                     ; $6533: $02
	db   $10                                         ; $6534: $10
	ld   [$0268], sp                                 ; $6535: $08 $68 $02
	stop                                             ; $6538: $10 $00
	ld   h, [hl]                                     ; $653a: $66
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	db   $10                                         ; $653d: $10
	ld   h, h                                        ; $653e: $64
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	ld   [$0062], sp                                 ; $6541: $08 $62 $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	ld   h, b                                        ; $6546: $60
	nop                                              ; $6547: $00
	di                                               ; $6548: $f3
	rst  ToBoot                                         ; $6549: $c7
	db   $10                                         ; $654a: $10
	dec  bc                                          ; $654b: $0b
	di                                               ; $654c: $f3
	cp   a                                           ; $654d: $bf
	ld   c, $1b                                      ; $654e: $0e $1b
	ld   b, $aa                                      ; $6550: $06 $aa
	or   h                                           ; $6552: $b4
	inc  bc                                          ; $6553: $03
	ld   b, $a2                                      ; $6554: $06 $a2
	or   d                                           ; $6556: $b2
	inc  bc                                          ; $6557: $03
	jr   nz, @+$12                                   ; $6558: $20 $10

	ld   [hl], b                                     ; $655a: $70
	ld   [bc], a                                     ; $655b: $02
	jr   nz, jr_023_6566                             ; $655c: $20 $08

	ld   l, [hl]                                     ; $655e: $6e
	ld   [bc], a                                     ; $655f: $02
	jr   nz, jr_023_6562                             ; $6560: $20 $00

jr_023_6562:
	ld   l, h                                        ; $6562: $6c
	ld   [bc], a                                     ; $6563: $02
	db   $10                                         ; $6564: $10
	db   $10                                         ; $6565: $10

jr_023_6566:
	ld   l, d                                        ; $6566: $6a
	ld   [bc], a                                     ; $6567: $02
	db   $10                                         ; $6568: $10
	ld   [$0268], sp                                 ; $6569: $08 $68 $02
	stop                                             ; $656c: $10 $00
	ld   h, [hl]                                     ; $656e: $66
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	db   $10                                         ; $6571: $10
	ld   h, h                                        ; $6572: $64
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	ld   [$0062], sp                                 ; $6575: $08 $62 $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	ld   h, b                                        ; $657a: $60
	nop                                              ; $657b: $00
	pop  af                                          ; $657c: $f1
	add  $a8                                         ; $657d: $c6 $a8
	inc  bc                                          ; $657f: $03
	pop  af                                          ; $6580: $f1
	cp   [hl]                                        ; $6581: $be
	and  [hl]                                        ; $6582: $a6
	inc  de                                          ; $6583: $13
	ldh  a, [$e7]                                    ; $6584: $f0 $e7
	ld   [$f00b], sp                                 ; $6586: $08 $0b $f0
	rst  JumpTable                                         ; $6589: $df
	ld   b, $0b                                      ; $658a: $06 $0b
	ldh  [$e7], a                                    ; $658c: $e0 $e7
	inc  b                                           ; $658e: $04
	dec  bc                                          ; $658f: $0b
	xor  $c4                                         ; $6590: $ee $c4
	xor  h                                           ; $6592: $ac
	inc  bc                                          ; $6593: $03
	xor  $bc                                         ; $6594: $ee $bc
	xor  d                                           ; $6596: $aa
	inc  bc                                          ; $6597: $03
	add  hl, bc                                      ; $6598: $09
	xor  a                                           ; $6599: $af
	xor  b                                           ; $659a: $a8
	inc  bc                                          ; $659b: $03
	add  hl, bc                                      ; $659c: $09
	and  a                                           ; $659d: $a7
	and  [hl]                                        ; $659e: $a6
	inc  bc                                          ; $659f: $03
	jr   nz, @+$12                                   ; $65a0: $20 $10

	ld   [hl], b                                     ; $65a2: $70
	ld   [bc], a                                     ; $65a3: $02
	jr   nz, jr_023_65ae                             ; $65a4: $20 $08

	ld   l, [hl]                                     ; $65a6: $6e
	ld   [bc], a                                     ; $65a7: $02
	jr   nz, jr_023_65aa                             ; $65a8: $20 $00

jr_023_65aa:
	ld   l, h                                        ; $65aa: $6c
	ld   [bc], a                                     ; $65ab: $02
	db   $10                                         ; $65ac: $10
	db   $10                                         ; $65ad: $10

jr_023_65ae:
	ld   l, d                                        ; $65ae: $6a
	ld   [bc], a                                     ; $65af: $02
	db   $10                                         ; $65b0: $10
	ld   [$0268], sp                                 ; $65b1: $08 $68 $02
	stop                                             ; $65b4: $10 $00
	ld   h, [hl]                                     ; $65b6: $66
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	db   $10                                         ; $65b9: $10
	ld   h, h                                        ; $65ba: $64
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	ld   [$0062], sp                                 ; $65bd: $08 $62 $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	ld   h, b                                        ; $65c2: $60
	db   $10                                         ; $65c3: $10
	db   $ec                                         ; $65c4: $ec
	jp   $03b0                                       ; $65c5: $c3 $b0 $03


	db   $ec                                         ; $65c8: $ec
	cp   e                                           ; $65c9: $bb
	xor  [hl]                                        ; $65ca: $ae
	inc  bc                                          ; $65cb: $03
	rst  $30                                         ; $65cc: $f7
	sbc  $0c                                         ; $65cd: $de $0c
	dec  bc                                          ; $65cf: $0b
	rst  $30                                         ; $65d0: $f7
	sub  $0a                                         ; $65d1: $d6 $0a
	dec  bc                                          ; $65d3: $0b
	inc  c                                           ; $65d4: $0c
	or   e                                           ; $65d5: $b3
	xor  h                                           ; $65d6: $ac
	inc  bc                                          ; $65d7: $03
	inc  c                                           ; $65d8: $0c
	xor  e                                           ; $65d9: $ab
	xor  d                                           ; $65da: $aa
	inc  bc                                          ; $65db: $03
	jr   nz, @+$12                                   ; $65dc: $20 $10

	add  d                                           ; $65de: $82
	ld   [bc], a                                     ; $65df: $02
	jr   nz, jr_023_65ea                             ; $65e0: $20 $08

	add  b                                           ; $65e2: $80
	ld   [bc], a                                     ; $65e3: $02
	jr   nz, jr_023_65e6                             ; $65e4: $20 $00

jr_023_65e6:
	ld   a, [hl]                                     ; $65e6: $7e
	ld   [bc], a                                     ; $65e7: $02
	db   $10                                         ; $65e8: $10
	db   $10                                         ; $65e9: $10

jr_023_65ea:
	ld   a, h                                        ; $65ea: $7c
	ld   [bc], a                                     ; $65eb: $02
	db   $10                                         ; $65ec: $10
	ld   [$027a], sp                                 ; $65ed: $08 $7a $02
	stop                                             ; $65f0: $10 $00
	ld   a, b                                        ; $65f2: $78
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	db   $10                                         ; $65f5: $10
	halt                                             ; $65f6: $76
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	ld   [$0074], sp                                 ; $65f9: $08 $74 $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	ld   [hl], d                                     ; $65fe: $72
	db   $10                                         ; $65ff: $10
	ld   c, $b8                                      ; $6600: $0e $b8
	cp   b                                           ; $6602: $b8
	ld   [bc], a                                     ; $6603: $02
	ld   c, $b0                                      ; $6604: $0e $b0
	or   [hl]                                        ; $6606: $b6
	ld   [bc], a                                     ; $6607: $02
	rst  $20                                         ; $6608: $e7
	or   h                                           ; $6609: $b4
	or   h                                           ; $660a: $b4
	inc  bc                                          ; $660b: $03
	rst  $20                                         ; $660c: $e7
	xor  h                                           ; $660d: $ac
	or   d                                           ; $660e: $b2
	inc  bc                                          ; $660f: $03
	or   $dc                                         ; $6610: $f6 $dc
	db   $10                                         ; $6612: $10
	dec  bc                                          ; $6613: $0b
	or   $d4                                         ; $6614: $f6 $d4
	ld   c, $0b                                      ; $6616: $0e $0b
	db   $10                                         ; $6618: $10
	ld   hl, sp-$6a                                  ; $6619: $f8 $96
	ld   [bc], a                                     ; $661b: $02
	jr   nz, @+$12                                   ; $661c: $20 $10

	sub  h                                           ; $661e: $94
	ld   [bc], a                                     ; $661f: $02
	jr   nz, jr_023_662a                             ; $6620: $20 $08

	sub  d                                           ; $6622: $92
	ld   [bc], a                                     ; $6623: $02
	jr   nz, jr_023_6626                             ; $6624: $20 $00

jr_023_6626:
	sub  b                                           ; $6626: $90
	ld   [bc], a                                     ; $6627: $02
	db   $10                                         ; $6628: $10
	db   $10                                         ; $6629: $10

jr_023_662a:
	adc  [hl]                                        ; $662a: $8e
	nop                                              ; $662b: $00
	db   $10                                         ; $662c: $10
	ld   [$028c], sp                                 ; $662d: $08 $8c $02
	stop                                             ; $6630: $10 $00
	adc  d                                           ; $6632: $8a
	ld   [bc], a                                     ; $6633: $02
	nop                                              ; $6634: $00
	db   $10                                         ; $6635: $10
	adc  b                                           ; $6636: $88
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	ld   [$0086], sp                                 ; $6639: $08 $86 $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	add  h                                           ; $663e: $84
	db   $10                                         ; $663f: $10
	dec  c                                           ; $6640: $0d
	cp   b                                           ; $6641: $b8
	cp   h                                           ; $6642: $bc
	ld   [bc], a                                     ; $6643: $02
	dec  c                                           ; $6644: $0d
	or   b                                           ; $6645: $b0
	cp   d                                           ; $6646: $ba
	ld   [bc], a                                     ; $6647: $02
	rst  $28                                         ; $6648: $ef
	call c, $03a8                                    ; $6649: $dc $a8 $03
	rst  $28                                         ; $664c: $ef
	call nc, $03a6                                   ; $664d: $d4 $a6 $03
	db   $e4                                         ; $6650: $e4
	xor  h                                           ; $6651: $ac
	cp   b                                           ; $6652: $b8
	ld   [bc], a                                     ; $6653: $02
	db   $e4                                         ; $6654: $e4
	and  h                                           ; $6655: $a4
	or   [hl]                                        ; $6656: $b6
	ld   [bc], a                                     ; $6657: $02
	db   $10                                         ; $6658: $10
	ld   hl, sp-$5c                                  ; $6659: $f8 $a4
	ld   [bc], a                                     ; $665b: $02
	jr   nz, @+$12                                   ; $665c: $20 $10

	and  d                                           ; $665e: $a2
	ld   [bc], a                                     ; $665f: $02
	jr   nz, jr_023_666a                             ; $6660: $20 $08

	and  b                                           ; $6662: $a0
	ld   [bc], a                                     ; $6663: $02
	jr   nz, jr_023_6666                             ; $6664: $20 $00

jr_023_6666:
	sbc  [hl]                                        ; $6666: $9e
	ld   [bc], a                                     ; $6667: $02
	db   $10                                         ; $6668: $10
	db   $10                                         ; $6669: $10

jr_023_666a:
	sbc  h                                           ; $666a: $9c
	nop                                              ; $666b: $00
	db   $10                                         ; $666c: $10
	ld   [$029a], sp                                 ; $666d: $08 $9a $02
	stop                                             ; $6670: $10 $00
	sbc  b                                           ; $6672: $98
	ld   [bc], a                                     ; $6673: $02
	nop                                              ; $6674: $00
	db   $10                                         ; $6675: $10
	adc  b                                           ; $6676: $88
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	ld   [$0086], sp                                 ; $6679: $08 $86 $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	add  h                                           ; $667e: $84
	db   $10                                         ; $667f: $10
	dec  c                                           ; $6680: $0d
	cp   b                                           ; $6681: $b8
	cp   h                                           ; $6682: $bc
	ld   [bc], a                                     ; $6683: $02
	dec  c                                           ; $6684: $0d
	or   b                                           ; $6685: $b0
	cp   d                                           ; $6686: $ba
	ld   [bc], a                                     ; $6687: $02
	rst  $28                                         ; $6688: $ef
	call c, $03a8                                    ; $6689: $dc $a8 $03
	rst  $28                                         ; $668c: $ef
	call nc, $03a6                                   ; $668d: $d4 $a6 $03
	db   $e4                                         ; $6690: $e4
	xor  h                                           ; $6691: $ac
	cp   b                                           ; $6692: $b8
	ld   [bc], a                                     ; $6693: $02
	db   $e4                                         ; $6694: $e4
	and  h                                           ; $6695: $a4
	or   [hl]                                        ; $6696: $b6
	ld   [bc], a                                     ; $6697: $02
	db   $10                                         ; $6698: $10
	ld   hl, sp-$5c                                  ; $6699: $f8 $a4
	ld   [bc], a                                     ; $669b: $02
	jr   nz, @+$12                                   ; $669c: $20 $10

	and  d                                           ; $669e: $a2
	ld   [bc], a                                     ; $669f: $02
	jr   nz, jr_023_66aa                             ; $66a0: $20 $08

	and  b                                           ; $66a2: $a0
	ld   [bc], a                                     ; $66a3: $02
	jr   nz, jr_023_66a6                             ; $66a4: $20 $00

jr_023_66a6:
	sbc  [hl]                                        ; $66a6: $9e
	ld   [bc], a                                     ; $66a7: $02
	db   $10                                         ; $66a8: $10
	db   $10                                         ; $66a9: $10

jr_023_66aa:
	sbc  h                                           ; $66aa: $9c
	nop                                              ; $66ab: $00
	db   $10                                         ; $66ac: $10
	ld   [$029a], sp                                 ; $66ad: $08 $9a $02
	stop                                             ; $66b0: $10 $00
	sbc  b                                           ; $66b2: $98
	ld   [bc], a                                     ; $66b3: $02
	nop                                              ; $66b4: $00
	db   $10                                         ; $66b5: $10
	adc  b                                           ; $66b6: $88
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	ld   [$0086], sp                                 ; $66b9: $08 $86 $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	add  h                                           ; $66be: $84
	db   $10                                         ; $66bf: $10
	db   $ed                                         ; $66c0: $ed
	call c, $03ac                                    ; $66c1: $dc $ac $03
	db   $ed                                         ; $66c4: $ed
	call nc, $03aa                                   ; $66c5: $d4 $aa $03
	db   $e3                                         ; $66c8: $e3
	xor  h                                           ; $66c9: $ac
	cp   h                                           ; $66ca: $bc
	ld   [bc], a                                     ; $66cb: $02
	db   $e3                                         ; $66cc: $e3
	and  h                                           ; $66cd: $a4
	cp   d                                           ; $66ce: $ba
	ld   [bc], a                                     ; $66cf: $02
	ld   d, $bd                                      ; $66d0: $16 $bd
	ret  z                                           ; $66d2: $c8

	ld   [bc], a                                     ; $66d3: $02
	ld   d, $b5                                      ; $66d4: $16 $b5
	add  $02                                         ; $66d6: $c6 $02
	ld   d, $ad                                      ; $66d8: $16 $ad
	call nz, $0602                                   ; $66da: $c4 $02 $06
	cp   l                                           ; $66dd: $bd
	jp   nz, $0602                                   ; $66de: $c2 $02 $06

	or   l                                           ; $66e1: $b5
	ret  nz                                          ; $66e2: $c0

	ld   [bc], a                                     ; $66e3: $02
	ld   b, $ad                                      ; $66e4: $06 $ad
	cp   [hl]                                        ; $66e6: $be
	ld   [bc], a                                     ; $66e7: $02
	db   $10                                         ; $66e8: $10
	ld   hl, sp-$5c                                  ; $66e9: $f8 $a4
	ld   [bc], a                                     ; $66eb: $02
	jr   nz, @+$12                                   ; $66ec: $20 $10

	and  d                                           ; $66ee: $a2
	ld   [bc], a                                     ; $66ef: $02
	jr   nz, jr_023_66fa                             ; $66f0: $20 $08

	and  b                                           ; $66f2: $a0
	ld   [bc], a                                     ; $66f3: $02
	jr   nz, jr_023_66f6                             ; $66f4: $20 $00

jr_023_66f6:
	sbc  [hl]                                        ; $66f6: $9e
	ld   [bc], a                                     ; $66f7: $02
	db   $10                                         ; $66f8: $10
	db   $10                                         ; $66f9: $10

jr_023_66fa:
	sbc  h                                           ; $66fa: $9c
	nop                                              ; $66fb: $00
	db   $10                                         ; $66fc: $10
	ld   [$029a], sp                                 ; $66fd: $08 $9a $02
	stop                                             ; $6700: $10 $00
	sbc  b                                           ; $6702: $98
	ld   [bc], a                                     ; $6703: $02
	nop                                              ; $6704: $00
	db   $10                                         ; $6705: $10
	adc  b                                           ; $6706: $88
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	ld   [$0086], sp                                 ; $6709: $08 $86 $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	add  h                                           ; $670e: $84
	db   $10                                         ; $670f: $10
	xor  $b1                                         ; $6710: $ee $b1
	ret  z                                           ; $6712: $c8

	ld   [bc], a                                     ; $6713: $02
	xor  $a9                                         ; $6714: $ee $a9
	add  $02                                         ; $6716: $c6 $02
	xor  $a1                                         ; $6718: $ee $a1
	call nz, $de02                                   ; $671a: $c4 $02 $de
	or   c                                           ; $671d: $b1
	jp   nz, $de02                                   ; $671e: $c2 $02 $de

	xor  c                                           ; $6721: $a9
	ret  nz                                          ; $6722: $c0

	ld   [bc], a                                     ; $6723: $02
	sbc  $a1                                         ; $6724: $de $a1
	cp   [hl]                                        ; $6726: $be
	ld   [bc], a                                     ; $6727: $02
	db   $eb                                         ; $6728: $eb
	jp   c, $03b0                                    ; $6729: $da $b0 $03

	db   $eb                                         ; $672c: $eb
	jp   nc, $03ae                                   ; $672d: $d2 $ae $03

	ld   d, $bd                                      ; $6730: $16 $bd
	call nc, $1602                                   ; $6732: $d4 $02 $16
	or   l                                           ; $6735: $b5
	jp   nc, $1602                                   ; $6736: $d2 $02 $16

	xor  l                                           ; $6739: $ad
	ret  nc                                          ; $673a: $d0

	ld   [bc], a                                     ; $673b: $02
	ld   b, $bd                                      ; $673c: $06 $bd
	adc  $02                                         ; $673e: $ce $02
	ld   b, $b5                                      ; $6740: $06 $b5
	call z, $0602                                    ; $6742: $cc $02 $06
	xor  l                                           ; $6745: $ad
	jp   z, $1002                                    ; $6746: $ca $02 $10

	ld   hl, sp-$5c                                  ; $6749: $f8 $a4
	ld   [bc], a                                     ; $674b: $02
	jr   nz, @+$12                                   ; $674c: $20 $10

	and  d                                           ; $674e: $a2
	ld   [bc], a                                     ; $674f: $02
	jr   nz, jr_023_675a                             ; $6750: $20 $08

	and  b                                           ; $6752: $a0
	ld   [bc], a                                     ; $6753: $02
	jr   nz, jr_023_6756                             ; $6754: $20 $00

jr_023_6756:
	sbc  [hl]                                        ; $6756: $9e
	ld   [bc], a                                     ; $6757: $02
	db   $10                                         ; $6758: $10
	db   $10                                         ; $6759: $10

jr_023_675a:
	sbc  h                                           ; $675a: $9c
	nop                                              ; $675b: $00
	db   $10                                         ; $675c: $10
	ld   [$029a], sp                                 ; $675d: $08 $9a $02
	stop                                             ; $6760: $10 $00
	sbc  b                                           ; $6762: $98
	ld   [bc], a                                     ; $6763: $02
	nop                                              ; $6764: $00
	db   $10                                         ; $6765: $10
	adc  b                                           ; $6766: $88
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	ld   [$0086], sp                                 ; $6769: $08 $86 $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	add  h                                           ; $676e: $84
	db   $10                                         ; $676f: $10
	xor  $b1                                         ; $6770: $ee $b1
	call nc, $ee02                                   ; $6772: $d4 $02 $ee
	xor  c                                           ; $6775: $a9
	jp   nc, $ee02                                   ; $6776: $d2 $02 $ee

	and  c                                           ; $6779: $a1
	ret  nc                                          ; $677a: $d0

	ld   [bc], a                                     ; $677b: $02
	sbc  $b1                                         ; $677c: $de $b1
	adc  $02                                         ; $677e: $ce $02
	sbc  $a9                                         ; $6780: $de $a9
	call z, $de02                                    ; $6782: $cc $02 $de
	and  c                                           ; $6785: $a1
	jp   z, $1602                                    ; $6786: $ca $02 $16

	cp   l                                           ; $6789: $bd
	ldh  [rSC], a                                    ; $678a: $e0 $02
	ld   d, $b5                                      ; $678c: $16 $b5
	sbc  $02                                         ; $678e: $de $02
	ld   d, $ad                                      ; $6790: $16 $ad
	call c, $0602                                    ; $6792: $dc $02 $06
	cp   l                                           ; $6795: $bd
	jp   c, $0602                                    ; $6796: $da $02 $06

	or   l                                           ; $6799: $b5
	ret  c                                           ; $679a: $d8

	ld   [bc], a                                     ; $679b: $02
	ld   b, $ad                                      ; $679c: $06 $ad
	sub  $02                                         ; $679e: $d6 $02
	db   $eb                                         ; $67a0: $eb
	jp   c, $02b8                                    ; $67a1: $da $b8 $02

	db   $eb                                         ; $67a4: $eb
	jp   nc, $02b6                                   ; $67a5: $d2 $b6 $02

	db   $10                                         ; $67a8: $10
	ld   hl, sp-$5c                                  ; $67a9: $f8 $a4
	ld   [bc], a                                     ; $67ab: $02
	jr   nz, @+$12                                   ; $67ac: $20 $10

	and  d                                           ; $67ae: $a2
	ld   [bc], a                                     ; $67af: $02
	jr   nz, jr_023_67ba                             ; $67b0: $20 $08

	and  b                                           ; $67b2: $a0
	ld   [bc], a                                     ; $67b3: $02
	jr   nz, jr_023_67b6                             ; $67b4: $20 $00

jr_023_67b6:
	sbc  [hl]                                        ; $67b6: $9e
	ld   [bc], a                                     ; $67b7: $02
	db   $10                                         ; $67b8: $10
	db   $10                                         ; $67b9: $10

jr_023_67ba:
	sbc  h                                           ; $67ba: $9c
	nop                                              ; $67bb: $00
	db   $10                                         ; $67bc: $10
	ld   [$029a], sp                                 ; $67bd: $08 $9a $02
	stop                                             ; $67c0: $10 $00
	sbc  b                                           ; $67c2: $98
	ld   [bc], a                                     ; $67c3: $02
	nop                                              ; $67c4: $00
	db   $10                                         ; $67c5: $10
	adc  b                                           ; $67c6: $88
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	ld   [$0086], sp                                 ; $67c9: $08 $86 $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	add  h                                           ; $67ce: $84
	db   $10                                         ; $67cf: $10
	xor  $b1                                         ; $67d0: $ee $b1
	ldh  [rSC], a                                    ; $67d2: $e0 $02
	xor  $a9                                         ; $67d4: $ee $a9
	sbc  $02                                         ; $67d6: $de $02
	xor  $a1                                         ; $67d8: $ee $a1
	call c, $de02                                    ; $67da: $dc $02 $de
	or   c                                           ; $67dd: $b1
	jp   c, $de02                                    ; $67de: $da $02 $de

	xor  c                                           ; $67e1: $a9
	ret  c                                           ; $67e2: $d8

	ld   [bc], a                                     ; $67e3: $02
	sbc  $a1                                         ; $67e4: $de $a1
	sub  $02                                         ; $67e6: $d6 $02
	db   $eb                                         ; $67e8: $eb
	jp   c, $02bc                                    ; $67e9: $da $bc $02

	db   $eb                                         ; $67ec: $eb
	jp   nc, $02ba                                   ; $67ed: $d2 $ba $02

	ld   d, $bd                                      ; $67f0: $16 $bd
	db   $ec                                         ; $67f2: $ec
	ld   [bc], a                                     ; $67f3: $02
	ld   d, $b5                                      ; $67f4: $16 $b5
	ld   [$1602], a                                  ; $67f6: $ea $02 $16
	xor  l                                           ; $67f9: $ad
	add  sp, $02                                     ; $67fa: $e8 $02
	ld   b, $bd                                      ; $67fc: $06 $bd
	and  $02                                         ; $67fe: $e6 $02
	ld   b, $b5                                      ; $6800: $06 $b5
	db   $e4                                         ; $6802: $e4
	ld   [bc], a                                     ; $6803: $02
	ld   b, $ad                                      ; $6804: $06 $ad
	ldh  [c], a                                      ; $6806: $e2
	ld   [bc], a                                     ; $6807: $02
	db   $10                                         ; $6808: $10
	ld   hl, sp-$5c                                  ; $6809: $f8 $a4
	ld   [bc], a                                     ; $680b: $02
	jr   nz, @+$12                                   ; $680c: $20 $10

	and  d                                           ; $680e: $a2
	ld   [bc], a                                     ; $680f: $02
	jr   nz, jr_023_681a                             ; $6810: $20 $08

	and  b                                           ; $6812: $a0
	ld   [bc], a                                     ; $6813: $02
	jr   nz, jr_023_6816                             ; $6814: $20 $00

jr_023_6816:
	sbc  [hl]                                        ; $6816: $9e
	ld   [bc], a                                     ; $6817: $02
	db   $10                                         ; $6818: $10
	db   $10                                         ; $6819: $10

jr_023_681a:
	sbc  h                                           ; $681a: $9c
	nop                                              ; $681b: $00
	db   $10                                         ; $681c: $10
	ld   [$029a], sp                                 ; $681d: $08 $9a $02
	stop                                             ; $6820: $10 $00
	sbc  b                                           ; $6822: $98
	ld   [bc], a                                     ; $6823: $02
	nop                                              ; $6824: $00
	db   $10                                         ; $6825: $10
	adc  b                                           ; $6826: $88
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	ld   [$0086], sp                                 ; $6829: $08 $86 $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	add  h                                           ; $682e: $84
	db   $10                                         ; $682f: $10
	xor  $b1                                         ; $6830: $ee $b1
	db   $ec                                         ; $6832: $ec
	ld   [bc], a                                     ; $6833: $02
	xor  $a9                                         ; $6834: $ee $a9
	ld   [$ee02], a                                  ; $6836: $ea $02 $ee
	and  c                                           ; $6839: $a1
	add  sp, $02                                     ; $683a: $e8 $02
	sbc  $b1                                         ; $683c: $de $b1
	and  $02                                         ; $683e: $e6 $02
	sbc  $a9                                         ; $6840: $de $a9
	db   $e4                                         ; $6842: $e4
	ld   [bc], a                                     ; $6843: $02
	sbc  $a1                                         ; $6844: $de $a1
	ldh  [c], a                                      ; $6846: $e2
	ld   [bc], a                                     ; $6847: $02
	push af                                          ; $6848: $f5
	db   $dd                                         ; $6849: $dd
	ret  z                                           ; $684a: $c8

	ld   [bc], a                                     ; $684b: $02
	push af                                          ; $684c: $f5
	push de                                          ; $684d: $d5
	add  $02                                         ; $684e: $c6 $02
	push af                                          ; $6850: $f5
	call $02c4                                       ; $6851: $cd $c4 $02
	push hl                                          ; $6854: $e5
	db   $dd                                         ; $6855: $dd
	jp   nz, $e502                                   ; $6856: $c2 $02 $e5

	push de                                          ; $6859: $d5
	ret  nz                                          ; $685a: $c0

	ld   [bc], a                                     ; $685b: $02
	push hl                                          ; $685c: $e5
	call $02be                                       ; $685d: $cd $be $02
	db   $10                                         ; $6860: $10
	ld   hl, sp-$5c                                  ; $6861: $f8 $a4
	ld   [bc], a                                     ; $6863: $02
	jr   nz, @+$12                                   ; $6864: $20 $10

	and  d                                           ; $6866: $a2
	ld   [bc], a                                     ; $6867: $02
	jr   nz, jr_023_6872                             ; $6868: $20 $08

	and  b                                           ; $686a: $a0
	ld   [bc], a                                     ; $686b: $02
	jr   nz, jr_023_686e                             ; $686c: $20 $00

jr_023_686e:
	sbc  [hl]                                        ; $686e: $9e
	ld   [bc], a                                     ; $686f: $02
	db   $10                                         ; $6870: $10
	db   $10                                         ; $6871: $10

jr_023_6872:
	sbc  h                                           ; $6872: $9c
	nop                                              ; $6873: $00
	db   $10                                         ; $6874: $10
	ld   [$029a], sp                                 ; $6875: $08 $9a $02
	stop                                             ; $6878: $10 $00
	sbc  b                                           ; $687a: $98
	ld   [bc], a                                     ; $687b: $02
	nop                                              ; $687c: $00
	db   $10                                         ; $687d: $10
	adc  b                                           ; $687e: $88
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	ld   [$0086], sp                                 ; $6881: $08 $86 $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	add  h                                           ; $6886: $84
	db   $10                                         ; $6887: $10
	push af                                          ; $6888: $f5
	db   $dd                                         ; $6889: $dd
	call nc, $f502                                   ; $688a: $d4 $02 $f5
	push de                                          ; $688d: $d5
	jp   nc, $f502                                   ; $688e: $d2 $02 $f5

	call $02d0                                       ; $6891: $cd $d0 $02
	push hl                                          ; $6894: $e5
	db   $dd                                         ; $6895: $dd
	adc  $02                                         ; $6896: $ce $02
	push hl                                          ; $6898: $e5
	push de                                          ; $6899: $d5
	call z, $e502                                    ; $689a: $cc $02 $e5
	call $02ca                                       ; $689d: $cd $ca $02
	db   $10                                         ; $68a0: $10
	ld   hl, sp-$5c                                  ; $68a1: $f8 $a4
	ld   [bc], a                                     ; $68a3: $02
	jr   nz, @+$12                                   ; $68a4: $20 $10

	and  d                                           ; $68a6: $a2
	ld   [bc], a                                     ; $68a7: $02
	jr   nz, jr_023_68b2                             ; $68a8: $20 $08

	and  b                                           ; $68aa: $a0
	ld   [bc], a                                     ; $68ab: $02
	jr   nz, jr_023_68ae                             ; $68ac: $20 $00

jr_023_68ae:
	sbc  [hl]                                        ; $68ae: $9e
	ld   [bc], a                                     ; $68af: $02
	db   $10                                         ; $68b0: $10
	db   $10                                         ; $68b1: $10

jr_023_68b2:
	sbc  h                                           ; $68b2: $9c
	nop                                              ; $68b3: $00
	db   $10                                         ; $68b4: $10
	ld   [$029a], sp                                 ; $68b5: $08 $9a $02
	stop                                             ; $68b8: $10 $00
	sbc  b                                           ; $68ba: $98
	ld   [bc], a                                     ; $68bb: $02
	nop                                              ; $68bc: $00
	db   $10                                         ; $68bd: $10
	adc  b                                           ; $68be: $88
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	ld   [$0086], sp                                 ; $68c1: $08 $86 $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	add  h                                           ; $68c6: $84
	db   $10                                         ; $68c7: $10
	push af                                          ; $68c8: $f5
	db   $dd                                         ; $68c9: $dd
	ldh  [rSC], a                                    ; $68ca: $e0 $02
	push af                                          ; $68cc: $f5
	push de                                          ; $68cd: $d5
	sbc  $02                                         ; $68ce: $de $02
	push af                                          ; $68d0: $f5
	call $02dc                                       ; $68d1: $cd $dc $02
	push hl                                          ; $68d4: $e5
	db   $dd                                         ; $68d5: $dd
	jp   c, $e502                                    ; $68d6: $da $02 $e5

	push de                                          ; $68d9: $d5
	ret  c                                           ; $68da: $d8

	ld   [bc], a                                     ; $68db: $02
	push hl                                          ; $68dc: $e5
	call $02d6                                       ; $68dd: $cd $d6 $02
	db   $10                                         ; $68e0: $10
	ld   hl, sp-$5c                                  ; $68e1: $f8 $a4
	ld   [bc], a                                     ; $68e3: $02
	jr   nz, @+$12                                   ; $68e4: $20 $10

	and  d                                           ; $68e6: $a2
	ld   [bc], a                                     ; $68e7: $02
	jr   nz, jr_023_68f2                             ; $68e8: $20 $08

	and  b                                           ; $68ea: $a0
	ld   [bc], a                                     ; $68eb: $02
	jr   nz, jr_023_68ee                             ; $68ec: $20 $00

jr_023_68ee:
	sbc  [hl]                                        ; $68ee: $9e
	ld   [bc], a                                     ; $68ef: $02
	db   $10                                         ; $68f0: $10
	db   $10                                         ; $68f1: $10

jr_023_68f2:
	sbc  h                                           ; $68f2: $9c
	nop                                              ; $68f3: $00
	db   $10                                         ; $68f4: $10
	ld   [$029a], sp                                 ; $68f5: $08 $9a $02
	stop                                             ; $68f8: $10 $00
	sbc  b                                           ; $68fa: $98
	ld   [bc], a                                     ; $68fb: $02
	nop                                              ; $68fc: $00
	db   $10                                         ; $68fd: $10
	adc  b                                           ; $68fe: $88
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	ld   [$0086], sp                                 ; $6901: $08 $86 $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	add  h                                           ; $6906: $84
	db   $10                                         ; $6907: $10
	push af                                          ; $6908: $f5
	db   $dd                                         ; $6909: $dd
	db   $ec                                         ; $690a: $ec
	ld   [bc], a                                     ; $690b: $02
	push af                                          ; $690c: $f5
	push de                                          ; $690d: $d5
	ld   [$f502], a                                  ; $690e: $ea $02 $f5
	call $02e8                                       ; $6911: $cd $e8 $02
	push hl                                          ; $6914: $e5
	db   $dd                                         ; $6915: $dd
	and  $02                                         ; $6916: $e6 $02
	push hl                                          ; $6918: $e5
	push de                                          ; $6919: $d5
	db   $e4                                         ; $691a: $e4
	ld   [bc], a                                     ; $691b: $02
	push hl                                          ; $691c: $e5
	call $02e2                                       ; $691d: $cd $e2 $02
	db   $10                                         ; $6920: $10
	ld   hl, sp-$5c                                  ; $6921: $f8 $a4
	ld   [bc], a                                     ; $6923: $02
	jr   nz, @+$12                                   ; $6924: $20 $10

	and  d                                           ; $6926: $a2
	ld   [bc], a                                     ; $6927: $02
	jr   nz, jr_023_6932                             ; $6928: $20 $08

	and  b                                           ; $692a: $a0
	ld   [bc], a                                     ; $692b: $02
	jr   nz, jr_023_692e                             ; $692c: $20 $00

jr_023_692e:
	sbc  [hl]                                        ; $692e: $9e
	ld   [bc], a                                     ; $692f: $02
	db   $10                                         ; $6930: $10
	db   $10                                         ; $6931: $10

jr_023_6932:
	sbc  h                                           ; $6932: $9c
	nop                                              ; $6933: $00
	db   $10                                         ; $6934: $10
	ld   [$029a], sp                                 ; $6935: $08 $9a $02
	stop                                             ; $6938: $10 $00
	sbc  b                                           ; $693a: $98
	ld   [bc], a                                     ; $693b: $02
	nop                                              ; $693c: $00
	db   $10                                         ; $693d: $10
	adc  b                                           ; $693e: $88
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	ld   [$0086], sp                                 ; $6941: $08 $86 $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	add  h                                           ; $6946: $84
	db   $10                                         ; $6947: $10
	db   $10                                         ; $6948: $10
	ld   hl, sp-$5c                                  ; $6949: $f8 $a4
	ld   [bc], a                                     ; $694b: $02
	jr   nz, @+$12                                   ; $694c: $20 $10

	and  d                                           ; $694e: $a2
	ld   [bc], a                                     ; $694f: $02
	jr   nz, jr_023_695a                             ; $6950: $20 $08

	and  b                                           ; $6952: $a0
	ld   [bc], a                                     ; $6953: $02
	jr   nz, jr_023_6956                             ; $6954: $20 $00

jr_023_6956:
	sbc  [hl]                                        ; $6956: $9e
	ld   [bc], a                                     ; $6957: $02
	db   $10                                         ; $6958: $10
	db   $10                                         ; $6959: $10

jr_023_695a:
	sbc  h                                           ; $695a: $9c
	nop                                              ; $695b: $00
	db   $10                                         ; $695c: $10
	ld   [$029a], sp                                 ; $695d: $08 $9a $02
	stop                                             ; $6960: $10 $00
	sbc  b                                           ; $6962: $98
	ld   [bc], a                                     ; $6963: $02
	nop                                              ; $6964: $00
	db   $10                                         ; $6965: $10
	adc  b                                           ; $6966: $88
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	ld   [$0086], sp                                 ; $6969: $08 $86 $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	add  h                                           ; $696e: $84
	db   $10                                         ; $696f: $10
	db   $10                                         ; $6970: $10
	ld   hl, sp-$5c                                  ; $6971: $f8 $a4
	ld   [bc], a                                     ; $6973: $02
	jr   nz, @+$12                                   ; $6974: $20 $10

	and  d                                           ; $6976: $a2
	ld   [bc], a                                     ; $6977: $02
	jr   nz, jr_023_6982                             ; $6978: $20 $08

	and  b                                           ; $697a: $a0
	ld   [bc], a                                     ; $697b: $02
	jr   nz, jr_023_697e                             ; $697c: $20 $00

jr_023_697e:
	sbc  [hl]                                        ; $697e: $9e
	ld   [bc], a                                     ; $697f: $02
	db   $10                                         ; $6980: $10
	db   $10                                         ; $6981: $10

jr_023_6982:
	sbc  h                                           ; $6982: $9c
	nop                                              ; $6983: $00
	db   $10                                         ; $6984: $10
	ld   [$029a], sp                                 ; $6985: $08 $9a $02
	stop                                             ; $6988: $10 $00
	sbc  b                                           ; $698a: $98
	ld   [bc], a                                     ; $698b: $02
	nop                                              ; $698c: $00
	db   $10                                         ; $698d: $10
	adc  b                                           ; $698e: $88
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	ld   [$0086], sp                                 ; $6991: $08 $86 $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	add  h                                           ; $6996: $84
	db   $10                                         ; $6997: $10
	db   $10                                         ; $6998: $10
	ld   hl, sp-$5c                                  ; $6999: $f8 $a4
	ld   [bc], a                                     ; $699b: $02
	jr   nz, @+$12                                   ; $699c: $20 $10

	and  d                                           ; $699e: $a2
	ld   [bc], a                                     ; $699f: $02
	jr   nz, jr_023_69aa                             ; $69a0: $20 $08

	and  b                                           ; $69a2: $a0
	ld   [bc], a                                     ; $69a3: $02
	jr   nz, jr_023_69a6                             ; $69a4: $20 $00

jr_023_69a6:
	sbc  [hl]                                        ; $69a6: $9e
	ld   [bc], a                                     ; $69a7: $02
	db   $10                                         ; $69a8: $10
	db   $10                                         ; $69a9: $10

jr_023_69aa:
	sbc  h                                           ; $69aa: $9c
	nop                                              ; $69ab: $00
	db   $10                                         ; $69ac: $10
	ld   [$029a], sp                                 ; $69ad: $08 $9a $02
	stop                                             ; $69b0: $10 $00
	sbc  b                                           ; $69b2: $98
	ld   [bc], a                                     ; $69b3: $02
	nop                                              ; $69b4: $00
	db   $10                                         ; $69b5: $10
	adc  b                                           ; $69b6: $88
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	ld   [$0086], sp                                 ; $69b9: $08 $86 $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	add  h                                           ; $69be: $84
	db   $10                                         ; $69bf: $10
	jr   nz, jr_023_69c2                             ; $69c0: $20 $00

jr_023_69c2:
	inc  d                                           ; $69c2: $14
	ld   bc, $0810                                   ; $69c3: $01 $10 $08
	ld   [de], a                                     ; $69c6: $12
	ld   bc, $1020                                   ; $69c7: $01 $20 $10
	ld   d, $01                                      ; $69ca: $16 $01
	jr   nz, @+$12                                   ; $69cc: $20 $10

	stop                                             ; $69ce: $10 $00
	jr   nz, jr_023_69da                             ; $69d0: $20 $08

	ld   c, $00                                      ; $69d2: $0e $00
	jr   nz, jr_023_69d6                             ; $69d4: $20 $00

jr_023_69d6:
	inc  c                                           ; $69d6: $0c
	nop                                              ; $69d7: $00
	db   $10                                         ; $69d8: $10
	db   $10                                         ; $69d9: $10

jr_023_69da:
	ld   a, [bc]                                     ; $69da: $0a
	nop                                              ; $69db: $00
	db   $10                                         ; $69dc: $10
	ld   [$0008], sp                                 ; $69dd: $08 $08 $00
	stop                                             ; $69e0: $10 $00
	ld   b, $00                                      ; $69e2: $06 $00
	nop                                              ; $69e4: $00
	db   $10                                         ; $69e5: $10
	inc  b                                           ; $69e6: $04
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	ld   [$0002], sp                                 ; $69e9: $08 $02 $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	db   $10                                         ; $69ef: $10
	jr   nz, jr_023_6a02                             ; $69f0: $20 $10

	inc  l                                           ; $69f2: $2c
	ld   bc, $0810                                   ; $69f3: $01 $10 $08
	ld   a, [hl+]                                    ; $69f6: $2a
	ld   bc, $1020                                   ; $69f7: $01 $20 $10
	jr   z, jr_023_69fc                              ; $69fa: $28 $00

jr_023_69fc:
	jr   nz, jr_023_6a06                             ; $69fc: $20 $08

	ld   h, $00                                      ; $69fe: $26 $00
	jr   nz, jr_023_6a02                             ; $6a00: $20 $00

jr_023_6a02:
	inc  h                                           ; $6a02: $24
	ld   [bc], a                                     ; $6a03: $02
	db   $10                                         ; $6a04: $10
	db   $10                                         ; $6a05: $10

jr_023_6a06:
	ld   [hl+], a                                    ; $6a06: $22
	nop                                              ; $6a07: $00
	db   $10                                         ; $6a08: $10
	ld   [$0020], sp                                 ; $6a09: $08 $20 $00
	stop                                             ; $6a0c: $10 $00
	ld   e, $00                                      ; $6a0e: $1e $00
	nop                                              ; $6a10: $00
	db   $10                                         ; $6a11: $10
	inc  e                                           ; $6a12: $1c
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	ld   [$001a], sp                                 ; $6a15: $08 $1a $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	jr   jr_023_6a2c                                 ; $6a1a: $18 $10

	jr   nz, jr_023_6a2e                             ; $6a1c: $20 $10

	ld   b, d                                        ; $6a1e: $42
	ld   bc, $0810                                   ; $6a1f: $01 $10 $08
	ld   b, b                                        ; $6a22: $40
	ld   bc, $1020                                   ; $6a23: $01 $20 $10
	ld   a, $00                                      ; $6a26: $3e $00
	jr   nz, jr_023_6a32                             ; $6a28: $20 $08

	inc  a                                           ; $6a2a: $3c
	nop                                              ; $6a2b: $00

jr_023_6a2c:
	jr   nz, jr_023_6a2e                             ; $6a2c: $20 $00

jr_023_6a2e:
	ld   a, [hl-]                                    ; $6a2e: $3a
	ld   [bc], a                                     ; $6a2f: $02
	db   $10                                         ; $6a30: $10
	db   $10                                         ; $6a31: $10

jr_023_6a32:
	jr   c, jr_023_6a34                              ; $6a32: $38 $00

jr_023_6a34:
	db   $10                                         ; $6a34: $10
	ld   [$0036], sp                                 ; $6a35: $08 $36 $00
	stop                                             ; $6a38: $10 $00
	inc  [hl]                                        ; $6a3a: $34
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	db   $10                                         ; $6a3d: $10
	ld   [hl-], a                                    ; $6a3e: $32
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	ld   [$0030], sp                                 ; $6a41: $08 $30 $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	ld   l, $10                                      ; $6a46: $2e $10
	stop                                             ; $6a48: $10 $00
	ld   e, b                                        ; $6a4a: $58
	ld   bc, $0810                                   ; $6a4b: $01 $10 $08
	ld   d, [hl]                                     ; $6a4e: $56
	ld   bc, $1020                                   ; $6a4f: $01 $20 $10
	ld   d, h                                        ; $6a52: $54
	nop                                              ; $6a53: $00
	jr   nz, jr_023_6a5e                             ; $6a54: $20 $08

	ld   d, d                                        ; $6a56: $52
	nop                                              ; $6a57: $00
	jr   nz, jr_023_6a5a                             ; $6a58: $20 $00

jr_023_6a5a:
	ld   d, b                                        ; $6a5a: $50
	nop                                              ; $6a5b: $00
	db   $10                                         ; $6a5c: $10
	db   $10                                         ; $6a5d: $10

jr_023_6a5e:
	ld   c, [hl]                                     ; $6a5e: $4e
	nop                                              ; $6a5f: $00
	db   $10                                         ; $6a60: $10
	ld   [$004c], sp                                 ; $6a61: $08 $4c $00
	stop                                             ; $6a64: $10 $00
	ld   c, d                                        ; $6a66: $4a
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	db   $10                                         ; $6a69: $10
	ld   c, b                                        ; $6a6a: $48
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	ld   [$0046], sp                                 ; $6a6d: $08 $46 $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	ld   b, h                                        ; $6a72: $44
	db   $10                                         ; $6a73: $10
	stop                                             ; $6a74: $10 $00
	ld   l, [hl]                                     ; $6a76: $6e
	ld   bc, $0810                                   ; $6a77: $01 $10 $08
	ld   l, h                                        ; $6a7a: $6c
	ld   bc, $1020                                   ; $6a7b: $01 $20 $10
	ld   l, d                                        ; $6a7e: $6a
	nop                                              ; $6a7f: $00
	jr   nz, jr_023_6a8a                             ; $6a80: $20 $08

	ld   l, b                                        ; $6a82: $68
	nop                                              ; $6a83: $00
	jr   nz, jr_023_6a86                             ; $6a84: $20 $00

jr_023_6a86:
	ld   h, [hl]                                     ; $6a86: $66
	ld   [bc], a                                     ; $6a87: $02
	db   $10                                         ; $6a88: $10
	db   $10                                         ; $6a89: $10

jr_023_6a8a:
	ld   h, h                                        ; $6a8a: $64
	nop                                              ; $6a8b: $00
	db   $10                                         ; $6a8c: $10
	ld   [$0062], sp                                 ; $6a8d: $08 $62 $00
	stop                                             ; $6a90: $10 $00
	ld   h, b                                        ; $6a92: $60
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	db   $10                                         ; $6a95: $10
	ld   e, [hl]                                     ; $6a96: $5e
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	ld   [$005c], sp                                 ; $6a99: $08 $5c $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	ld   e, d                                        ; $6a9e: $5a
	db   $10                                         ; $6a9f: $10
	rrca                                             ; $6aa0: $0f
	rst  $38                                         ; $6aa1: $ff
	or   d                                           ; $6aa2: $b2
	inc  bc                                          ; $6aa3: $03
	rrca                                             ; $6aa4: $0f
	rst  $30                                         ; $6aa5: $f7
	or   b                                           ; $6aa6: $b0
	inc  bc                                          ; $6aa7: $03
	db   $10                                         ; $6aa8: $10
	db   $10                                         ; $6aa9: $10
	add  [hl]                                        ; $6aaa: $86
	ld   bc, $0018                                   ; $6aab: $01 $18 $00
	add  h                                           ; $6aae: $84
	ld   bc, $0810                                   ; $6aaf: $01 $10 $08
	add  d                                           ; $6ab2: $82
	ld   bc, $1020                                   ; $6ab3: $01 $20 $10
	add  b                                           ; $6ab6: $80
	nop                                              ; $6ab7: $00
	jr   nz, jr_023_6ac2                             ; $6ab8: $20 $08

	ld   a, [hl]                                     ; $6aba: $7e
	nop                                              ; $6abb: $00
	jr   nz, jr_023_6abe                             ; $6abc: $20 $00

jr_023_6abe:
	ld   a, h                                        ; $6abe: $7c
	nop                                              ; $6abf: $00
	db   $10                                         ; $6ac0: $10
	db   $10                                         ; $6ac1: $10

jr_023_6ac2:
	ld   a, d                                        ; $6ac2: $7a
	nop                                              ; $6ac3: $00
	db   $10                                         ; $6ac4: $10
	ld   [$0078], sp                                 ; $6ac5: $08 $78 $00
	stop                                             ; $6ac8: $10 $00
	halt                                             ; $6aca: $76
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	db   $10                                         ; $6acd: $10
	ld   [hl], h                                     ; $6ace: $74
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	ld   [$0072], sp                                 ; $6ad1: $08 $72 $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	ld   [hl], b                                     ; $6ad6: $70
	db   $10                                         ; $6ad7: $10
	db   $10                                         ; $6ad8: $10
	ld   hl, sp-$4c                                  ; $6ad9: $f8 $b4
	inc  bc                                          ; $6adb: $03
	db   $10                                         ; $6adc: $10
	db   $10                                         ; $6add: $10
	add  [hl]                                        ; $6ade: $86
	ld   bc, $0018                                   ; $6adf: $01 $18 $00
	add  h                                           ; $6ae2: $84
	ld   bc, $0810                                   ; $6ae3: $01 $10 $08
	add  d                                           ; $6ae6: $82
	ld   bc, $1020                                   ; $6ae7: $01 $20 $10
	add  b                                           ; $6aea: $80
	nop                                              ; $6aeb: $00
	jr   nz, jr_023_6af6                             ; $6aec: $20 $08

	ld   a, [hl]                                     ; $6aee: $7e
	nop                                              ; $6aef: $00
	jr   nz, jr_023_6af2                             ; $6af0: $20 $00

jr_023_6af2:
	ld   a, h                                        ; $6af2: $7c
	nop                                              ; $6af3: $00
	db   $10                                         ; $6af4: $10
	db   $10                                         ; $6af5: $10

jr_023_6af6:
	ld   a, d                                        ; $6af6: $7a
	nop                                              ; $6af7: $00
	db   $10                                         ; $6af8: $10
	ld   [$0078], sp                                 ; $6af9: $08 $78 $00
	stop                                             ; $6afc: $10 $00
	halt                                             ; $6afe: $76
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	db   $10                                         ; $6b01: $10
	ld   [hl], h                                     ; $6b02: $74
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	ld   [$0072], sp                                 ; $6b05: $08 $72 $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	ld   [hl], b                                     ; $6b0a: $70
	db   $10                                         ; $6b0b: $10
	dec  c                                           ; $6b0c: $0d
	ld   bc, $03b8                                   ; $6b0d: $01 $b8 $03
	dec  c                                           ; $6b10: $0d
	ld   sp, hl                                      ; $6b11: $f9
	or   [hl]                                        ; $6b12: $b6
	inc  bc                                          ; $6b13: $03
	db   $10                                         ; $6b14: $10
	db   $10                                         ; $6b15: $10
	sbc  [hl]                                        ; $6b16: $9e
	ld   bc, $0010                                   ; $6b17: $01 $10 $00
	sbc  h                                           ; $6b1a: $9c
	ld   bc, $0810                                   ; $6b1b: $01 $10 $08
	sbc  d                                           ; $6b1e: $9a
	ld   bc, $1020                                   ; $6b1f: $01 $20 $10
	sbc  b                                           ; $6b22: $98
	nop                                              ; $6b23: $00
	jr   nz, jr_023_6b2e                             ; $6b24: $20 $08

	sub  [hl]                                        ; $6b26: $96
	nop                                              ; $6b27: $00
	jr   nz, jr_023_6b2a                             ; $6b28: $20 $00

jr_023_6b2a:
	sub  h                                           ; $6b2a: $94
	nop                                              ; $6b2b: $00
	db   $10                                         ; $6b2c: $10
	db   $10                                         ; $6b2d: $10

jr_023_6b2e:
	sub  d                                           ; $6b2e: $92
	nop                                              ; $6b2f: $00
	db   $10                                         ; $6b30: $10
	ld   [$0090], sp                                 ; $6b31: $08 $90 $00
	stop                                             ; $6b34: $10 $00
	adc  [hl]                                        ; $6b36: $8e
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	db   $10                                         ; $6b39: $10
	adc  h                                           ; $6b3a: $8c
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	ld   [$008a], sp                                 ; $6b3d: $08 $8a $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	adc  b                                           ; $6b42: $88
	db   $10                                         ; $6b43: $10
	inc  c                                           ; $6b44: $0c
	cp   $bc                                         ; $6b45: $fe $bc
	inc  bc                                          ; $6b47: $03
	inc  c                                           ; $6b48: $0c
	or   $ba                                         ; $6b49: $f6 $ba
	inc  bc                                          ; $6b4b: $03
	db   $10                                         ; $6b4c: $10
	db   $10                                         ; $6b4d: $10
	sbc  [hl]                                        ; $6b4e: $9e
	ld   bc, $0010                                   ; $6b4f: $01 $10 $00
	sbc  h                                           ; $6b52: $9c
	ld   bc, $0810                                   ; $6b53: $01 $10 $08
	sbc  d                                           ; $6b56: $9a
	ld   bc, $1020                                   ; $6b57: $01 $20 $10
	sbc  b                                           ; $6b5a: $98
	nop                                              ; $6b5b: $00
	jr   nz, jr_023_6b66                             ; $6b5c: $20 $08

	sub  [hl]                                        ; $6b5e: $96
	nop                                              ; $6b5f: $00
	jr   nz, jr_023_6b62                             ; $6b60: $20 $00

jr_023_6b62:
	sub  h                                           ; $6b62: $94
	nop                                              ; $6b63: $00
	db   $10                                         ; $6b64: $10
	db   $10                                         ; $6b65: $10

jr_023_6b66:
	sub  d                                           ; $6b66: $92
	nop                                              ; $6b67: $00
	db   $10                                         ; $6b68: $10
	ld   [$0090], sp                                 ; $6b69: $08 $90 $00
	stop                                             ; $6b6c: $10 $00
	adc  [hl]                                        ; $6b6e: $8e
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	db   $10                                         ; $6b71: $10
	adc  h                                           ; $6b72: $8c
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	ld   [$008a], sp                                 ; $6b75: $08 $8a $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	adc  b                                           ; $6b7a: $88
	db   $10                                         ; $6b7b: $10
	stop                                             ; $6b7c: $10 $00
	ret  nz                                          ; $6b7e: $c0

	inc  bc                                          ; $6b7f: $03
	db   $10                                         ; $6b80: $10
	ld   hl, sp-$42                                  ; $6b81: $f8 $be
	inc  bc                                          ; $6b83: $03
	jr   nz, jr_023_6b86                             ; $6b84: $20 $00

jr_023_6b86:
	jp   nz, $2003                                   ; $6b86: $c2 $03 $20

	ld   [$03c4], sp                                 ; $6b89: $08 $c4 $03
	jr   nz, @+$12                                   ; $6b8c: $20 $10

	xor  d                                           ; $6b8e: $aa
	nop                                              ; $6b8f: $00
	jr   nz, jr_023_6b9a                             ; $6b90: $20 $08

	xor  b                                           ; $6b92: $a8
	ld   bc, $0020                                   ; $6b93: $01 $20 $00
	and  [hl]                                        ; $6b96: $a6
	nop                                              ; $6b97: $00
	db   $10                                         ; $6b98: $10
	db   $10                                         ; $6b99: $10

jr_023_6b9a:
	and  h                                           ; $6b9a: $a4
	nop                                              ; $6b9b: $00
	db   $10                                         ; $6b9c: $10
	ld   [$00a2], sp                                 ; $6b9d: $08 $a2 $00
	stop                                             ; $6ba0: $10 $00
	and  b                                           ; $6ba2: $a0
	nop                                              ; $6ba3: $00
	jr   nz, @-$06                                   ; $6ba4: $20 $f8

	call z, $2003                                    ; $6ba6: $cc $03 $20
	ldh  a, [$ca]                                    ; $6ba9: $f0 $ca
	inc  de                                          ; $6bab: $13
	jr   nz, jr_023_6bb6                             ; $6bac: $20 $08

	ret  z                                           ; $6bae: $c8

	nop                                              ; $6baf: $00
	jr   nz, jr_023_6bb2                             ; $6bb0: $20 $00

jr_023_6bb2:
	add  $03                                         ; $6bb2: $c6 $03
	nop                                              ; $6bb4: $00
	db   $10                                         ; $6bb5: $10

jr_023_6bb6:
	jr   nc, @+$0a                                   ; $6bb6: $30 $08

	nop                                              ; $6bb8: $00
	ld   [$082e], sp                                 ; $6bb9: $08 $2e $08
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	inc  l                                           ; $6bbe: $2c
	ld   [$1020], sp                                 ; $6bbf: $08 $20 $10
	ld   a, [hl+]                                    ; $6bc2: $2a
	ld   [$0820], sp                                 ; $6bc3: $08 $20 $08
	jr   z, @+$0b                                    ; $6bc6: $28 $09

	jr   nz, jr_023_6bca                             ; $6bc8: $20 $00

jr_023_6bca:
	ld   h, $08                                      ; $6bca: $26 $08
	db   $10                                         ; $6bcc: $10

jr_023_6bcd:
	db   $10                                         ; $6bcd: $10
	inc  h                                           ; $6bce: $24
	ld   [$0810], sp                                 ; $6bcf: $08 $10 $08
	ld   [hl+], a                                    ; $6bd2: $22
	ld   [$0010], sp                                 ; $6bd3: $08 $10 $00
	jr   nz, jr_023_6be0                             ; $6bd6: $20 $08

	jr   nz, jr_023_6bcd                             ; $6bd8: $20 $f3

	ldh  [c], a                                      ; $6bda: $e2
	inc  bc                                          ; $6bdb: $03
	jr   nz, @-$13                                   ; $6bdc: $20 $eb

	ldh  [$03], a                                    ; $6bde: $e0 $03

jr_023_6be0:
	db   $10                                         ; $6be0: $10
	db   $eb                                         ; $6be1: $eb
	sbc  $03                                         ; $6be2: $de $03
	jr   nz, @-$1b                                   ; $6be4: $20 $e3

	call c, $1003                                    ; $6be6: $dc $03 $10
	db   $e3                                         ; $6be9: $e3
	jp   c, $1803                                    ; $6bea: $da $03 $18

	db   $db                                         ; $6bed: $db
	ret  c                                           ; $6bee: $d8

	inc  bc                                          ; $6bef: $03
	ld   [$d6db], sp                                 ; $6bf0: $08 $db $d6
	inc  bc                                          ; $6bf3: $03
	jr   @-$2b                                       ; $6bf4: $18 $d3

	call nc, $0803                                   ; $6bf6: $d4 $03 $08
	db   $d3                                         ; $6bf9: $d3
	jp   nc, $1003                                   ; $6bfa: $d2 $03 $10

	set  2, b                                        ; $6bfd: $cb $d0
	inc  bc                                          ; $6bff: $03
	db   $10                                         ; $6c00: $10
	jp   $10ce                                       ; $6c01: $c3 $ce $10


	jr   nz, jr_023_6c06                             ; $6c04: $20 $00

jr_023_6c06:
	add  $03                                         ; $6c06: $c6 $03
	jr   nz, jr_023_6c12                             ; $6c08: $20 $08

jr_023_6c0a:
	ret  z                                           ; $6c0a: $c8

	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	ld   [$083e], sp                                 ; $6c0d: $08 $3e $08
	jr   nz, @+$12                                   ; $6c10: $20 $10

jr_023_6c12:
	inc  a                                           ; $6c12: $3c
	ld   [$0820], sp                                 ; $6c13: $08 $20 $08
	ld   a, [hl-]                                    ; $6c16: $3a
	add  hl, bc                                      ; $6c17: $09
	jr   nz, jr_023_6c1a                             ; $6c18: $20 $00

jr_023_6c1a:
	jr   c, jr_023_6c24                              ; $6c1a: $38 $08

	db   $10                                         ; $6c1c: $10
	db   $10                                         ; $6c1d: $10

jr_023_6c1e:
	ld   [hl], $08                                   ; $6c1e: $36 $08
	db   $10                                         ; $6c20: $10
	ld   [$0834], sp                                 ; $6c21: $08 $34 $08

jr_023_6c24:
	stop                                             ; $6c24: $10 $00
	ld   [hl-], a                                    ; $6c26: $32
	ld   [$e820], sp                                 ; $6c27: $08 $20 $e8
	ld   hl, sp+$03                                  ; $6c2a: $f8 $03
	jr   nz, @-$1e                                   ; $6c2c: $20 $e0

	or   $03                                         ; $6c2e: $f6 $03
	jr   nz, jr_023_6c0a                             ; $6c30: $20 $d8

	db   $f4                                         ; $6c32: $f4
	inc  bc                                          ; $6c33: $03
	jr   nz, jr_023_6c06                             ; $6c34: $20 $d0

	ldh  a, [c]                                      ; $6c36: $f2
	inc  bc                                          ; $6c37: $03
	db   $10                                         ; $6c38: $10
	add  sp, -$10                                    ; $6c39: $e8 $f0
	inc  bc                                          ; $6c3b: $03
	db   $10                                         ; $6c3c: $10
	ldh  [$ee], a                                    ; $6c3d: $e0 $ee
	inc  bc                                          ; $6c3f: $03
	db   $10                                         ; $6c40: $10
	ret  c                                           ; $6c41: $d8

jr_023_6c42:
	db   $ec                                         ; $6c42: $ec
	inc  bc                                          ; $6c43: $03
	db   $10                                         ; $6c44: $10
	ret  nc                                          ; $6c45: $d0

	ld   [$0003], a                                  ; $6c46: $ea $03 $00
	ldh  [$e8], a                                    ; $6c49: $e0 $e8
	inc  bc                                          ; $6c4b: $03
	nop                                              ; $6c4c: $00
	ret  c                                           ; $6c4d: $d8

	and  $03                                         ; $6c4e: $e6 $03
	nop                                              ; $6c50: $00
	ret  nc                                          ; $6c51: $d0

	db   $e4                                         ; $6c52: $e4
	inc  de                                          ; $6c53: $13
	jr   nz, @-$32                                   ; $6c54: $20 $cc

	db   $10                                         ; $6c56: $10
	dec  bc                                          ; $6c57: $0b
	jr   nz, jr_023_6c1e                             ; $6c58: $20 $c4

	ld   c, $0b                                      ; $6c5a: $0e $0b
	jr   nz, jr_023_6c42                             ; $6c5c: $20 $e4

	ld   [$200b], sp                                 ; $6c5e: $08 $0b $20
	call c, $0b06                                    ; $6c61: $dc $06 $0b
	jr   nz, @-$2a                                   ; $6c64: $20 $d4

	inc  b                                           ; $6c66: $04
	dec  bc                                          ; $6c67: $0b
	db   $10                                         ; $6c68: $10
	db   $e4                                         ; $6c69: $e4
	ld   [bc], a                                     ; $6c6a: $02
	dec  bc                                          ; $6c6b: $0b
	db   $10                                         ; $6c6c: $10
	call c, $0b00                                    ; $6c6d: $dc $00 $0b
	db   $10                                         ; $6c70: $10
	call nc, $03fe                                   ; $6c71: $d4 $fe $03
	nop                                              ; $6c74: $00
	call c, $03fc                                    ; $6c75: $dc $fc $03
	nop                                              ; $6c78: $00
	call nc, $03fa                                   ; $6c79: $d4 $fa $03
	jr   nz, jr_023_6c7e                             ; $6c7c: $20 $00

jr_023_6c7e:
	xor  h                                           ; $6c7e: $ac
	nop                                              ; $6c7f: $00
	jr   nz, @+$12                                   ; $6c80: $20 $10

	xor  d                                           ; $6c82: $aa
	nop                                              ; $6c83: $00
	jr   nz, jr_023_6c8e                             ; $6c84: $20 $08

	xor  b                                           ; $6c86: $a8

jr_023_6c87:
	ld   bc, $0020                                   ; $6c87: $01 $20 $00
	and  [hl]                                        ; $6c8a: $a6
	nop                                              ; $6c8b: $00
	db   $10                                         ; $6c8c: $10
	db   $10                                         ; $6c8d: $10

jr_023_6c8e:
	and  h                                           ; $6c8e: $a4
	ld   [bc], a                                     ; $6c8f: $02
	db   $10                                         ; $6c90: $10
	ld   [$00a2], sp                                 ; $6c91: $08 $a2 $00
	stop                                             ; $6c94: $10 $00
	and  b                                           ; $6c96: $a0
	db   $10                                         ; $6c97: $10
	jr   nz, jr_023_6c9a                             ; $6c98: $20 $00

jr_023_6c9a:
	xor  h                                           ; $6c9a: $ac
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	db   $10                                         ; $6c9d: $10
	jr   nc, @+$0a                                   ; $6c9e: $30 $08

	nop                                              ; $6ca0: $00
	ld   [$082e], sp                                 ; $6ca1: $08 $2e $08
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	inc  l                                           ; $6ca6: $2c
	ld   [$1020], sp                                 ; $6ca7: $08 $20 $10
	ld   a, [hl+]                                    ; $6caa: $2a
	ld   [$0820], sp                                 ; $6cab: $08 $20 $08
	jr   z, @+$0b                                    ; $6cae: $28 $09

	jr   nz, jr_023_6cb2                             ; $6cb0: $20 $00

jr_023_6cb2:
	ld   h, $08                                      ; $6cb2: $26 $08
	db   $10                                         ; $6cb4: $10
	db   $10                                         ; $6cb5: $10
	inc  h                                           ; $6cb6: $24
	ld   [$0810], sp                                 ; $6cb7: $08 $10 $08
	ld   [hl+], a                                    ; $6cba: $22
	ld   [$0010], sp                                 ; $6cbb: $08 $10 $00
	jr   nz, jr_023_6cc8                             ; $6cbe: $20 $08

	db   $10                                         ; $6cc0: $10
	push bc                                          ; $6cc1: $c5
	ld   a, [de]                                     ; $6cc2: $1a
	ld   [$c520], sp                                 ; $6cc3: $08 $20 $c5
	ld   e, $0b                                      ; $6cc6: $1e $0b

jr_023_6cc8:
	jr   nz, jr_023_6c87                             ; $6cc8: $20 $bd

	inc  e                                           ; $6cca: $1c
	dec  bc                                          ; $6ccb: $0b
	dec  c                                           ; $6ccc: $0d
	jp   c, $0b18                                    ; $6ccd: $da $18 $0b

	dec  c                                           ; $6cd0: $0d
	jp   nc, $0b16                                   ; $6cd1: $d2 $16 $0b

	db   $fd                                         ; $6cd4: $fd
	jp   c, $0b14                                    ; $6cd5: $da $14 $0b

	db   $fd                                         ; $6cd8: $fd
	jp   nc, $1b12                                   ; $6cd9: $d2 $12 $1b

	jr   nz, jr_023_6cde                             ; $6cdc: $20 $00

jr_023_6cde:
	xor  h                                           ; $6cde: $ac
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	ld   [$083e], sp                                 ; $6ce1: $08 $3e $08
	jr   nz, @+$12                                   ; $6ce4: $20 $10

	inc  a                                           ; $6ce6: $3c
	ld   [$0820], sp                                 ; $6ce7: $08 $20 $08
	ld   a, [hl-]                                    ; $6cea: $3a
	add  hl, bc                                      ; $6ceb: $09
	jr   nz, jr_023_6cee                             ; $6cec: $20 $00

jr_023_6cee:
	jr   c, jr_023_6cf8                              ; $6cee: $38 $08

	db   $10                                         ; $6cf0: $10
	db   $10                                         ; $6cf1: $10
	ld   [hl], $08                                   ; $6cf2: $36 $08
	db   $10                                         ; $6cf4: $10
	ld   [$0834], sp                                 ; $6cf5: $08 $34 $08

jr_023_6cf8:
	stop                                             ; $6cf8: $10 $00
	ld   [hl-], a                                    ; $6cfa: $32
	jr   @+$22                                       ; $6cfb: $18 $20

	nop                                              ; $6cfd: $00
	xor  h                                           ; $6cfe: $ac
	nop                                              ; $6cff: $00
	jr   nz, @+$12                                   ; $6d00: $20 $10

	xor  d                                           ; $6d02: $aa
	nop                                              ; $6d03: $00
	jr   nz, jr_023_6d0e                             ; $6d04: $20 $08

	xor  b                                           ; $6d06: $a8
	ld   bc, $0020                                   ; $6d07: $01 $20 $00
	and  [hl]                                        ; $6d0a: $a6
	nop                                              ; $6d0b: $00
	db   $10                                         ; $6d0c: $10
	db   $10                                         ; $6d0d: $10

jr_023_6d0e:
	and  h                                           ; $6d0e: $a4
	ld   [bc], a                                     ; $6d0f: $02
	db   $10                                         ; $6d10: $10
	ld   [$00a2], sp                                 ; $6d11: $08 $a2 $00
	stop                                             ; $6d14: $10 $00
	and  b                                           ; $6d16: $a0
	db   $10                                         ; $6d17: $10
	jr   nz, jr_023_6d1a                             ; $6d18: $20 $00

jr_023_6d1a:
	xor  h                                           ; $6d1a: $ac
	nop                                              ; $6d1b: $00
	jr   nz, @+$12                                   ; $6d1c: $20 $10

	xor  d                                           ; $6d1e: $aa
	nop                                              ; $6d1f: $00
	jr   nz, jr_023_6d2a                             ; $6d20: $20 $08

	xor  b                                           ; $6d22: $a8
	ld   bc, $0020                                   ; $6d23: $01 $20 $00
	and  [hl]                                        ; $6d26: $a6
	nop                                              ; $6d27: $00
	db   $10                                         ; $6d28: $10
	db   $10                                         ; $6d29: $10

jr_023_6d2a:
	and  h                                           ; $6d2a: $a4
	ld   [bc], a                                     ; $6d2b: $02
	db   $10                                         ; $6d2c: $10
	ld   [$00a2], sp                                 ; $6d2d: $08 $a2 $00
	stop                                             ; $6d30: $10 $00
	and  b                                           ; $6d32: $a0
	db   $10                                         ; $6d33: $10
	jr   nz, jr_023_6d4e                             ; $6d34: $20 $18

	ld   d, b                                        ; $6d36: $50
	ld   [$1820], sp                                 ; $6d37: $08 $20 $18
	ld   a, [bc]                                     ; $6d3a: $0a
	ld   [bc], a                                     ; $6d3b: $02
	jr   z, jr_023_6d5e                              ; $6d3c: $28 $20

	ld   [de], a                                     ; $6d3e: $12
	ld   bc, $1830                                   ; $6d3f: $01 $30 $18
	stop                                             ; $6d42: $10 $00
	jr   nc, @+$12                                   ; $6d44: $30 $10

	ld   c, $01                                      ; $6d46: $0e $01
	jr   nc, @+$0a                                   ; $6d48: $30 $08

	inc  c                                           ; $6d4a: $0c
	ld   bc, $1020                                   ; $6d4b: $01 $20 $10

jr_023_6d4e:
	ld   [$2002], sp                                 ; $6d4e: $08 $02 $20
	ld   [$0106], sp                                 ; $6d51: $08 $06 $01
	db   $10                                         ; $6d54: $10
	jr   jr_023_6d5b                                 ; $6d55: $18 $04

	ld   bc, $1010                                   ; $6d57: $01 $10 $10
	ld   [bc], a                                     ; $6d5a: $02

jr_023_6d5b:
	ld   bc, $0810                                   ; $6d5b: $01 $10 $08

jr_023_6d5e:
	nop                                              ; $6d5e: $00
	ld   de, $1820                                   ; $6d5f: $11 $20 $18
	ld   d, d                                        ; $6d62: $52
	add  hl, bc                                      ; $6d63: $09
	jr   z, jr_023_6d6e                              ; $6d64: $28 $08

	ld   d, h                                        ; $6d66: $54
	add  hl, bc                                      ; $6d67: $09
	jr   nz, jr_023_6d8a                             ; $6d68: $20 $20

	ld   a, [hl+]                                    ; $6d6a: $2a
	ld   [bc], a                                     ; $6d6b: $02
	jr   jr_023_6d6e                                 ; $6d6c: $18 $00

jr_023_6d6e:
	jr   z, @+$05                                    ; $6d6e: $28 $03

	jr   nc, jr_023_6d92                             ; $6d70: $30 $20

	ld   h, $01                                      ; $6d72: $26 $01
	jr   nc, @+$1a                                   ; $6d74: $30 $18

	inc  h                                           ; $6d76: $24
	nop                                              ; $6d77: $00
	jr   nc, jr_023_6d8a                             ; $6d78: $30 $10

	ld   [hl+], a                                    ; $6d7a: $22
	ld   bc, $0830                                   ; $6d7b: $01 $30 $08
	jr   nz, @+$03                                   ; $6d7e: $20 $01

	jr   nz, jr_023_6d9a                             ; $6d80: $20 $18

	ld   e, $02                                      ; $6d82: $1e $02
	jr   nz, @+$12                                   ; $6d84: $20 $10

	inc  e                                           ; $6d86: $1c
	ld   [bc], a                                     ; $6d87: $02
	jr   nz, jr_023_6d92                             ; $6d88: $20 $08

jr_023_6d8a:
	ld   a, [de]                                     ; $6d8a: $1a
	ld   [bc], a                                     ; $6d8b: $02
	db   $10                                         ; $6d8c: $10
	jr   jr_023_6da7                                 ; $6d8d: $18 $18

	ld   bc, $1010                                   ; $6d8f: $01 $10 $10

jr_023_6d92:
	ld   d, $01                                      ; $6d92: $16 $01
	db   $10                                         ; $6d94: $10
	ld   [$1114], sp                                 ; $6d95: $08 $14 $11
	jr   nz, jr_023_6db2                             ; $6d98: $20 $18

jr_023_6d9a:
	ld   d, d                                        ; $6d9a: $52
	ld   [$0830], sp                                 ; $6d9b: $08 $30 $08
	ld   d, [hl]                                     ; $6d9e: $56
	add  hl, bc                                      ; $6d9f: $09
	jr   nc, jr_023_6dc2                             ; $6da0: $30 $20

	ld   b, [hl]                                     ; $6da2: $46
	ld   bc, $2020                                   ; $6da3: $01 $20 $20
	ld   b, h                                        ; $6da6: $44

jr_023_6da7:
	ld   [bc], a                                     ; $6da7: $02
	jr   nc, jr_023_6daa                             ; $6da8: $30 $00

jr_023_6daa:
	ld   b, d                                        ; $6daa: $42
	inc  bc                                          ; $6dab: $03
	jr   nz, jr_023_6dae                             ; $6dac: $20 $00

jr_023_6dae:
	ld   b, b                                        ; $6dae: $40
	inc  bc                                          ; $6daf: $03
	stop                                             ; $6db0: $10 $00

jr_023_6db2:
	ld   a, $03                                      ; $6db2: $3e $03
	jr   nc, jr_023_6dce                             ; $6db4: $30 $18

	inc  a                                           ; $6db6: $3c
	nop                                              ; $6db7: $00
	jr   nc, jr_023_6dca                             ; $6db8: $30 $10

	ld   a, [hl-]                                    ; $6dba: $3a
	ld   bc, $0830                                   ; $6dbb: $01 $30 $08
	jr   c, jr_023_6dc2                              ; $6dbe: $38 $02

	jr   nz, jr_023_6dda                             ; $6dc0: $20 $18

jr_023_6dc2:
	ld   [hl], $02                                   ; $6dc2: $36 $02
	jr   nz, @+$12                                   ; $6dc4: $20 $10

	inc  [hl]                                        ; $6dc6: $34
	ld   [bc], a                                     ; $6dc7: $02
	jr   nz, jr_023_6dd2                             ; $6dc8: $20 $08

jr_023_6dca:
	ld   [hl-], a                                    ; $6dca: $32
	ld   bc, $1810                                   ; $6dcb: $01 $10 $18

jr_023_6dce:
	jr   nc, jr_023_6dd1                             ; $6dce: $30 $01

	db   $10                                         ; $6dd0: $10

jr_023_6dd1:
	db   $10                                         ; $6dd1: $10

jr_023_6dd2:
	ld   l, $01                                      ; $6dd2: $2e $01
	db   $10                                         ; $6dd4: $10
	ld   [$112c], sp                                 ; $6dd5: $08 $2c $11
	jr   nc, jr_023_6dfa                             ; $6dd8: $30 $20

jr_023_6dda:
	ld   e, [hl]                                     ; $6dda: $5e
	ld   bc, $1830                                   ; $6ddb: $01 $30 $18
	ld   e, h                                        ; $6dde: $5c
	nop                                              ; $6ddf: $00
	jr   nc, jr_023_6df2                             ; $6de0: $30 $10

	ld   e, d                                        ; $6de2: $5a
	ld   bc, $0830                                   ; $6de3: $01 $30 $08
	ld   e, b                                        ; $6de6: $58
	inc  bc                                          ; $6de7: $03
	jr   nz, jr_023_6e0a                             ; $6de8: $20 $20

	ld   d, [hl]                                     ; $6dea: $56
	ld   [bc], a                                     ; $6deb: $02
	jr   nz, jr_023_6e06                             ; $6dec: $20 $18

	ld   d, h                                        ; $6dee: $54
	ld   [bc], a                                     ; $6def: $02
	jr   nz, jr_023_6e02                             ; $6df0: $20 $10

jr_023_6df2:
	ld   d, d                                        ; $6df2: $52
	ld   [bc], a                                     ; $6df3: $02
	jr   nz, @+$0a                                   ; $6df4: $20 $08

	ld   d, b                                        ; $6df6: $50
	ld   bc, $2010                                   ; $6df7: $01 $10 $20

jr_023_6dfa:
	ld   a, $02                                      ; $6dfa: $3e $02
	db   $10                                         ; $6dfc: $10
	jr   jr_023_6e4b                                 ; $6dfd: $18 $4c

	ld   bc, $1010                                   ; $6dff: $01 $10 $10

jr_023_6e02:
	ld   c, d                                        ; $6e02: $4a
	ld   bc, $0810                                   ; $6e03: $01 $10 $08

jr_023_6e06:
	ld   c, b                                        ; $6e06: $48
	ld   de, $2030                                   ; $6e07: $11 $30 $20

jr_023_6e0a:
	halt                                             ; $6e0a: $76
	ld   bc, $1830                                   ; $6e0b: $01 $30 $18
	ld   [hl], h                                     ; $6e0e: $74
	nop                                              ; $6e0f: $00
	jr   nc, jr_023_6e22                             ; $6e10: $30 $10

	ld   [hl], d                                     ; $6e12: $72
	ld   bc, $0830                                   ; $6e13: $01 $30 $08
	ld   [hl], b                                     ; $6e16: $70
	ld   bc, $2020                                   ; $6e17: $01 $20 $20
	ld   l, [hl]                                     ; $6e1a: $6e
	ld   [bc], a                                     ; $6e1b: $02
	jr   nz, jr_023_6e36                             ; $6e1c: $20 $18

	ld   l, h                                        ; $6e1e: $6c
	ld   [bc], a                                     ; $6e1f: $02
	jr   nz, jr_023_6e32                             ; $6e20: $20 $10

jr_023_6e22:
	ld   l, d                                        ; $6e22: $6a
	ld   [bc], a                                     ; $6e23: $02
	jr   nz, @+$0a                                   ; $6e24: $20 $08

	ld   l, b                                        ; $6e26: $68
	ld   bc, $2010                                   ; $6e27: $01 $10 $20
	ld   h, [hl]                                     ; $6e2a: $66
	ld   [bc], a                                     ; $6e2b: $02
	db   $10                                         ; $6e2c: $10
	jr   jr_023_6e93                                 ; $6e2d: $18 $64

	ld   bc, $1010                                   ; $6e2f: $01 $10 $10

jr_023_6e32:
	ld   h, d                                        ; $6e32: $62
	ld   bc, $0810                                   ; $6e33: $01 $10 $08

jr_023_6e36:
	ld   h, b                                        ; $6e36: $60
	ld   de, $1820                                   ; $6e37: $11 $20 $18
	ld   d, d                                        ; $6e3a: $52
	ld   [$2018], sp                                 ; $6e3b: $08 $18 $20
	adc  [hl]                                        ; $6e3e: $8e
	nop                                              ; $6e3f: $00
	jr   nz, jr_023_6e42                             ; $6e40: $20 $00

jr_023_6e42:
	adc  h                                           ; $6e42: $8c
	inc  bc                                          ; $6e43: $03
	stop                                             ; $6e44: $10 $00
	adc  d                                           ; $6e46: $8a
	inc  bc                                          ; $6e47: $03
	jr   nc, @+$1a                                   ; $6e48: $30 $18

	adc  b                                           ; $6e4a: $88

jr_023_6e4b:
	ld   bc, $1030                                   ; $6e4b: $01 $30 $10
	add  [hl]                                        ; $6e4e: $86
	ld   bc, $0830                                   ; $6e4f: $01 $30 $08
	add  h                                           ; $6e52: $84
	ld   [bc], a                                     ; $6e53: $02
	jr   nz, jr_023_6e6e                             ; $6e54: $20 $18

	add  d                                           ; $6e56: $82
	ld   [bc], a                                     ; $6e57: $02
	jr   nz, jr_023_6e6a                             ; $6e58: $20 $10

	add  b                                           ; $6e5a: $80
	ld   [bc], a                                     ; $6e5b: $02
	jr   nz, jr_023_6e66                             ; $6e5c: $20 $08

	ld   a, [hl]                                     ; $6e5e: $7e
	ld   [bc], a                                     ; $6e5f: $02
	db   $10                                         ; $6e60: $10
	jr   jr_023_6edf                                 ; $6e61: $18 $7c

	ld   bc, $1010                                   ; $6e63: $01 $10 $10

jr_023_6e66:
	ld   a, d                                        ; $6e66: $7a
	ld   bc, $0810                                   ; $6e67: $01 $10 $08

jr_023_6e6a:
	ld   a, b                                        ; $6e6a: $78
	inc  de                                          ; $6e6b: $13
	jr   nz, jr_023_6e76                             ; $6e6c: $20 $08

jr_023_6e6e:
	ld   e, b                                        ; $6e6e: $58
	ld   [$1030], sp                                 ; $6e6f: $08 $30 $10
	and  d                                           ; $6e72: $a2
	ld   bc, $0830                                   ; $6e73: $01 $30 $08

jr_023_6e76:
	and  b                                           ; $6e76: $a0
	ld   bc, $0030                                   ; $6e77: $01 $30 $00
	sbc  [hl]                                        ; $6e7a: $9e
	ld   bc, $f830                                   ; $6e7b: $01 $30 $f8
	sbc  h                                           ; $6e7e: $9c
	ld   bc, $0820                                   ; $6e7f: $01 $20 $08

jr_023_6e82:
	sbc  d                                           ; $6e82: $9a
	ld   [bc], a                                     ; $6e83: $02
	jr   nz, jr_023_6e86                             ; $6e84: $20 $00

jr_023_6e86:
	sbc  b                                           ; $6e86: $98
	ld   [bc], a                                     ; $6e87: $02
	jr   nz, jr_023_6e82                             ; $6e88: $20 $f8

	sub  [hl]                                        ; $6e8a: $96
	ld   [bc], a                                     ; $6e8b: $02
	db   $10                                         ; $6e8c: $10
	ld   [$0194], sp                                 ; $6e8d: $08 $94 $01
	stop                                             ; $6e90: $10 $00
	sub  d                                           ; $6e92: $92

jr_023_6e93:
	ld   bc, $f810                                   ; $6e93: $01 $10 $f8
	sub  b                                           ; $6e96: $90
	ld   de, $1030                                   ; $6e97: $11 $30 $10
	or   [hl]                                        ; $6e9a: $b6
	ld   bc, $0830                                   ; $6e9b: $01 $30 $08
	or   h                                           ; $6e9e: $b4
	ld   bc, $0030                                   ; $6e9f: $01 $30 $00
	or   d                                           ; $6ea2: $b2
	ld   bc, $f830                                   ; $6ea3: $01 $30 $f8
	or   b                                           ; $6ea6: $b0
	ld   bc, $0820                                   ; $6ea7: $01 $20 $08

jr_023_6eaa:
	xor  [hl]                                        ; $6eaa: $ae
	ld   bc, $0020                                   ; $6eab: $01 $20 $00

jr_023_6eae:
	xor  h                                           ; $6eae: $ac
	ld   [bc], a                                     ; $6eaf: $02
	jr   nz, jr_023_6eaa                             ; $6eb0: $20 $f8

	xor  d                                           ; $6eb2: $aa
	ld   [bc], a                                     ; $6eb3: $02
	db   $10                                         ; $6eb4: $10
	ld   [$01a8], sp                                 ; $6eb5: $08 $a8 $01
	stop                                             ; $6eb8: $10 $00
	and  [hl]                                        ; $6eba: $a6
	ld   bc, $f810                                   ; $6ebb: $01 $10 $f8
	and  h                                           ; $6ebe: $a4
	ld   de, $f028                                   ; $6ebf: $11 $28 $f0
	or   $02                                         ; $6ec2: $f6 $02
	jr   z, jr_023_6eae                              ; $6ec4: $28 $e8

	db   $f4                                         ; $6ec6: $f4
	ld   [bc], a                                     ; $6ec7: $02
	jr   nc, @+$12                                   ; $6ec8: $30 $10

	jp   z, $3001                                    ; $6eca: $ca $01 $30

	ld   [$01c8], sp                                 ; $6ecd: $08 $c8 $01
	jr   nc, jr_023_6ed2                             ; $6ed0: $30 $00

jr_023_6ed2:
	add  $01                                         ; $6ed2: $c6 $01
	jr   nc, @-$06                                   ; $6ed4: $30 $f8

	call nz, $2001                                   ; $6ed6: $c4 $01 $20
	ld   [$01c2], sp                                 ; $6ed9: $08 $c2 $01
	jr   nz, jr_023_6ede                             ; $6edc: $20 $00

jr_023_6ede:
	ret  nz                                          ; $6ede: $c0

jr_023_6edf:
	ld   [bc], a                                     ; $6edf: $02
	jr   nz, @-$06                                   ; $6ee0: $20 $f8

	cp   [hl]                                        ; $6ee2: $be
	ld   [bc], a                                     ; $6ee3: $02
	db   $10                                         ; $6ee4: $10
	ld   [$01bc], sp                                 ; $6ee5: $08 $bc $01
	stop                                             ; $6ee8: $10 $00
	cp   d                                           ; $6eea: $ba
	ld   bc, $f810                                   ; $6eeb: $01 $10 $f8
	cp   b                                           ; $6eee: $b8
	ld   de, $f128                                   ; $6eef: $11 $28 $f1
	ld   a, [$3003]                                  ; $6ef2: $fa $03 $30
	db   $10                                         ; $6ef5: $10
	sbc  $01                                         ; $6ef6: $de $01
	jr   nc, @+$0a                                   ; $6ef8: $30 $08

	call c, $3001                                    ; $6efa: $dc $01 $30
	nop                                              ; $6efd: $00
	jp   c, $3001                                    ; $6efe: $da $01 $30

	ld   hl, sp-$28                                  ; $6f01: $f8 $d8
	ld   bc, $0820                                   ; $6f03: $01 $20 $08
	sub  $01                                         ; $6f06: $d6 $01
	jr   nz, jr_023_6f0a                             ; $6f08: $20 $00

jr_023_6f0a:
	call nc, $2002                                   ; $6f0a: $d4 $02 $20
	ld   hl, sp-$2e                                  ; $6f0d: $f8 $d2

jr_023_6f0f:
	ld   [bc], a                                     ; $6f0f: $02
	db   $10                                         ; $6f10: $10
	ld   [$01d0], sp                                 ; $6f11: $08 $d0 $01
	stop                                             ; $6f14: $10 $00
	adc  $01                                         ; $6f16: $ce $01
	db   $10                                         ; $6f18: $10
	ld   hl, sp-$34                                  ; $6f19: $f8 $cc

jr_023_6f1b:
	ld   bc, $e028                                   ; $6f1b: $01 $28 $e0
	ld   [hl], h                                     ; $6f1e: $74
	dec  bc                                          ; $6f1f: $0b
	jr   @-$1e                                       ; $6f20: $18 $e0

	ld   [hl], d                                     ; $6f22: $72
	dec  bc                                          ; $6f23: $0b
	jr   z, jr_023_6f0f                              ; $6f24: $28 $e9

	ld   hl, sp+$13                                  ; $6f26: $f8 $13
	jr   z, jr_023_6f1b                              ; $6f28: $28 $f1

	ld   a, [$3003]                                  ; $6f2a: $fa $03 $30
	db   $10                                         ; $6f2d: $10
	ldh  a, [c]                                      ; $6f2e: $f2
	ld   bc, $0830                                   ; $6f2f: $01 $30 $08

jr_023_6f32:
	ldh  a, [rSB]                                    ; $6f32: $f0 $01
	jr   nc, jr_023_6f36                             ; $6f34: $30 $00

jr_023_6f36:
	xor  $01                                         ; $6f36: $ee $01
	jr   nc, jr_023_6f32                             ; $6f38: $30 $f8

	db   $ec                                         ; $6f3a: $ec
	ld   bc, $0820                                   ; $6f3b: $01 $20 $08

jr_023_6f3e:
	ld   [$2001], a                                  ; $6f3e: $ea $01 $20
	nop                                              ; $6f41: $00
	add  sp, $02                                     ; $6f42: $e8 $02
	jr   nz, jr_023_6f3e                             ; $6f44: $20 $f8

	and  $02                                         ; $6f46: $e6 $02
	db   $10                                         ; $6f48: $10
	ld   [$01e4], sp                                 ; $6f49: $08 $e4 $01
	stop                                             ; $6f4c: $10 $00
	ldh  [c], a                                      ; $6f4e: $e2
	ld   bc, $f810                                   ; $6f4f: $01 $10 $f8
	ldh  [rSB], a                                    ; $6f52: $e0 $01
	inc  l                                           ; $6f54: $2c
	ldh  [$78], a                                    ; $6f55: $e0 $78
	dec  bc                                          ; $6f57: $0b
	inc  e                                           ; $6f58: $1c
	ldh  [rPCM12], a                                 ; $6f59: $e0 $76
	dec  bc                                          ; $6f5b: $0b
	jr   z, @-$15                                    ; $6f5c: $28 $e9

	ld   hl, sp+$13                                  ; $6f5e: $f8 $13
	jr   z, @-$0d                                    ; $6f60: $28 $f1

	ld   a, [$3003]                                  ; $6f62: $fa $03 $30
	db   $10                                         ; $6f65: $10
	jp   z, $3001                                    ; $6f66: $ca $01 $30

	ld   [$01c8], sp                                 ; $6f69: $08 $c8 $01
	jr   nc, jr_023_6f6e                             ; $6f6c: $30 $00

jr_023_6f6e:
	add  $01                                         ; $6f6e: $c6 $01
	jr   nc, @-$06                                   ; $6f70: $30 $f8

jr_023_6f72:
	call nz, $2001                                   ; $6f72: $c4 $01 $20
	ld   [$01c2], sp                                 ; $6f75: $08 $c2 $01
	jr   nz, jr_023_6f7a                             ; $6f78: $20 $00

jr_023_6f7a:
	ret  nz                                          ; $6f7a: $c0

	ld   [bc], a                                     ; $6f7b: $02
	jr   nz, @-$06                                   ; $6f7c: $20 $f8

	cp   [hl]                                        ; $6f7e: $be
	ld   [bc], a                                     ; $6f7f: $02
	db   $10                                         ; $6f80: $10
	ld   [$01bc], sp                                 ; $6f81: $08 $bc $01
	stop                                             ; $6f84: $10 $00
	cp   d                                           ; $6f86: $ba
	ld   bc, $f810                                   ; $6f87: $01 $10 $f8
	cp   b                                           ; $6f8a: $b8
	ld   bc, $e030                                   ; $6f8b: $01 $30 $e0
	ld   a, [bc]                                     ; $6f8e: $0a

jr_023_6f8f:
	dec  bc                                          ; $6f8f: $0b
	jr   nc, @-$26                                   ; $6f90: $30 $d8

	ld   [$200b], sp                                 ; $6f92: $08 $0b $20
	ldh  [rTMA], a                                   ; $6f95: $e0 $06
	dec  bc                                          ; $6f97: $0b
	jr   nz, jr_023_6f72                             ; $6f98: $20 $d8

	inc  b                                           ; $6f9a: $04

jr_023_6f9b:
	dec  bc                                          ; $6f9b: $0b
	db   $10                                         ; $6f9c: $10
	ldh  [rSC], a                                    ; $6f9d: $e0 $02
	dec  bc                                          ; $6f9f: $0b
	db   $10                                         ; $6fa0: $10
	ret  c                                           ; $6fa1: $d8

	nop                                              ; $6fa2: $00
	dec  bc                                          ; $6fa3: $0b
	jr   z, jr_023_6f8f                              ; $6fa4: $28 $e9

	ld   hl, sp+$13                                  ; $6fa6: $f8 $13
	jr   z, jr_023_6f9b                              ; $6fa8: $28 $f1

	cp   $03                                         ; $6faa: $fe $03
	jr   nc, jr_023_6fbe                             ; $6fac: $30 $10

	sbc  $01                                         ; $6fae: $de $01
	jr   nc, @+$0a                                   ; $6fb0: $30 $08

	call c, $3001                                    ; $6fb2: $dc $01 $30
	nop                                              ; $6fb5: $00
	jp   c, $3001                                    ; $6fb6: $da $01 $30

	ld   hl, sp-$28                                  ; $6fb9: $f8 $d8
	ld   bc, $0820                                   ; $6fbb: $01 $20 $08

jr_023_6fbe:
	sub  $01                                         ; $6fbe: $d6 $01
	jr   nz, jr_023_6fc2                             ; $6fc0: $20 $00

jr_023_6fc2:
	call nc, $2002                                   ; $6fc2: $d4 $02 $20

jr_023_6fc5:
	ld   hl, sp-$2e                                  ; $6fc5: $f8 $d2
	ld   [bc], a                                     ; $6fc7: $02
	db   $10                                         ; $6fc8: $10
	ld   [$01d0], sp                                 ; $6fc9: $08 $d0 $01
	stop                                             ; $6fcc: $10 $00
	adc  $01                                         ; $6fce: $ce $01
	db   $10                                         ; $6fd0: $10
	ld   hl, sp-$34                                  ; $6fd1: $f8 $cc
	ld   bc, $df30                                   ; $6fd3: $01 $30 $df
	jr   nz, jr_023_6fe3                             ; $6fd6: $20 $0b

	jr   nc, @-$27                                   ; $6fd8: $30 $d7

	ld   e, $0b                                      ; $6fda: $1e $0b
	jr   nc, @-$2f                                   ; $6fdc: $30 $cf

	inc  e                                           ; $6fde: $1c
	dec  bc                                          ; $6fdf: $0b
	jr   nc, @-$37                                   ; $6fe0: $30 $c7

	ld   a, [de]                                     ; $6fe2: $1a

jr_023_6fe3:
	dec  bc                                          ; $6fe3: $0b
	jr   nz, jr_023_6fc5                             ; $6fe4: $20 $df

	jr   jr_023_6ff3                                 ; $6fe6: $18 $0b

	jr   nz, @-$27                                   ; $6fe8: $20 $d7

	ld   d, $0b                                      ; $6fea: $16 $0b
	jr   nz, @-$2f                                   ; $6fec: $20 $cf

	inc  d                                           ; $6fee: $14
	dec  bc                                          ; $6fef: $0b
	db   $10                                         ; $6ff0: $10
	rst  JumpTable                                         ; $6ff1: $df
	ld   [de], a                                     ; $6ff2: $12

jr_023_6ff3:
	dec  bc                                          ; $6ff3: $0b
	db   $10                                         ; $6ff4: $10
	rst  $10                                         ; $6ff5: $d7

jr_023_6ff6:
	db   $10                                         ; $6ff6: $10

jr_023_6ff7:
	dec  bc                                          ; $6ff7: $0b
	db   $10                                         ; $6ff8: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ff9: $cf
	ld   c, $0b                                      ; $6ffa: $0e $0b
	db   $10                                         ; $6ffc: $10
	rst  ToBoot                                         ; $6ffd: $c7
	inc  c                                           ; $6ffe: $0c
	dec  bc                                          ; $6fff: $0b
	jr   z, @-$15                                    ; $7000: $28 $e9

	db   $fc                                         ; $7002: $fc
	inc  de                                          ; $7003: $13
	jr   z, jr_023_6ff7                              ; $7004: $28 $f1

	or   $02                                         ; $7006: $f6 $02
	jr   nc, jr_023_701a                             ; $7008: $30 $10

jr_023_700a:
	ldh  a, [c]                                      ; $700a: $f2
	ld   bc, $0830                                   ; $700b: $01 $30 $08

jr_023_700e:
	ldh  a, [rSB]                                    ; $700e: $f0 $01
	jr   nc, jr_023_7012                             ; $7010: $30 $00

jr_023_7012:
	xor  $01                                         ; $7012: $ee $01
	jr   nc, jr_023_700e                             ; $7014: $30 $f8

jr_023_7016:
	db   $ec                                         ; $7016: $ec
	ld   bc, $0820                                   ; $7017: $01 $20 $08

jr_023_701a:
	ld   [$2001], a                                  ; $701a: $ea $01 $20
	nop                                              ; $701d: $00

jr_023_701e:
	add  sp, $02                                     ; $701e: $e8 $02
	jr   nz, jr_023_701a                             ; $7020: $20 $f8

	and  $02                                         ; $7022: $e6 $02
	db   $10                                         ; $7024: $10
	ld   [$01e4], sp                                 ; $7025: $08 $e4 $01
	stop                                             ; $7028: $10 $00
	ldh  [c], a                                      ; $702a: $e2
	ld   bc, $f810                                   ; $702b: $01 $10 $f8
	ldh  [rSB], a                                    ; $702e: $e0 $01
	jr   nz, jr_023_6ff6                             ; $7030: $20 $c4

	ld   b, [hl]                                     ; $7032: $46
	dec  bc                                          ; $7033: $0b
	jr   nc, jr_023_7012                             ; $7034: $30 $dc

	ld   [hl-], a                                    ; $7036: $32
	dec  bc                                          ; $7037: $0b
	jr   nc, jr_023_700e                             ; $7038: $30 $d4

	jr   nc, jr_023_7047                             ; $703a: $30 $0b

	jr   nc, jr_023_700a                             ; $703c: $30 $cc

	ld   l, $0b                                      ; $703e: $2e $0b
	jr   nz, jr_023_701e                             ; $7040: $20 $dc

	inc  l                                           ; $7042: $2c

jr_023_7043:
	dec  bc                                          ; $7043: $0b
	jr   nz, jr_023_701a                             ; $7044: $20 $d4

	ld   a, [hl+]                                    ; $7046: $2a

jr_023_7047:
	dec  bc                                          ; $7047: $0b
	jr   nz, jr_023_7016                             ; $7048: $20 $cc

	jr   z, @+$0d                                    ; $704a: $28 $0b

	db   $10                                         ; $704c: $10
	call c, $0b26                                    ; $704d: $dc $26 $0b
	db   $10                                         ; $7050: $10
	call nc, $0b24                                   ; $7051: $d4 $24 $0b
	db   $10                                         ; $7054: $10
	call z, $0b22                                    ; $7055: $cc $22 $0b
	jr   z, jr_023_7043                              ; $7058: $28 $e9

	db   $f4                                         ; $705a: $f4

jr_023_705b:
	ld   [de], a                                     ; $705b: $12
	jr   z, @-$0d                                    ; $705c: $28 $f1

	or   $02                                         ; $705e: $f6 $02
	jr   nc, @+$12                                   ; $7060: $30 $10

	jp   z, $3001                                    ; $7062: $ca $01 $30

	ld   [$01c8], sp                                 ; $7065: $08 $c8 $01
	jr   nc, jr_023_706a                             ; $7068: $30 $00

jr_023_706a:
	add  $01                                         ; $706a: $c6 $01
	jr   nc, @-$06                                   ; $706c: $30 $f8

	call nz, $2001                                   ; $706e: $c4 $01 $20
	ld   [$01c2], sp                                 ; $7071: $08 $c2 $01
	jr   nz, jr_023_7076                             ; $7074: $20 $00

jr_023_7076:
	ret  nz                                          ; $7076: $c0

	ld   [bc], a                                     ; $7077: $02
	jr   nz, @-$06                                   ; $7078: $20 $f8

	cp   [hl]                                        ; $707a: $be

jr_023_707b:
	ld   [bc], a                                     ; $707b: $02
	db   $10                                         ; $707c: $10
	ld   [$01bc], sp                                 ; $707d: $08 $bc $01
	stop                                             ; $7080: $10 $00
	cp   d                                           ; $7082: $ba
	ld   bc, $f810                                   ; $7083: $01 $10 $f8
	cp   b                                           ; $7086: $b8
	ld   bc, $c130                                   ; $7087: $01 $30 $c1
	ld   e, d                                        ; $708a: $5a
	dec  bc                                          ; $708b: $0b
	jr   nc, jr_023_7047                             ; $708c: $30 $b9

	ld   c, [hl]                                     ; $708e: $4e
	dec  bc                                          ; $708f: $0b
	jr   nz, jr_023_705b                             ; $7090: $20 $c9

	ld   c, h                                        ; $7092: $4c
	dec  bc                                          ; $7093: $0b
	jr   nz, @-$3d                                   ; $7094: $20 $c1

	ld   c, d                                        ; $7096: $4a

jr_023_7097:
	dec  bc                                          ; $7097: $0b
	jr   nz, @-$45                                   ; $7098: $20 $b9

	ld   c, b                                        ; $709a: $48
	dec  bc                                          ; $709b: $0b
	jr   z, @-$2d                                    ; $709c: $28 $d1

	jr   c, jr_023_70ab                              ; $709e: $38 $0b

	jr   z, jr_023_707b                              ; $70a0: $28 $d9

	ld   a, [hl-]                                    ; $70a2: $3a

jr_023_70a3:
	dec  bc                                          ; $70a3: $0b
	jr   @-$25                                       ; $70a4: $18 $d9

	ld   [hl], $0b                                   ; $70a6: $36 $0b
	jr   jr_023_707b                                 ; $70a8: $18 $d1

	inc  [hl]                                        ; $70aa: $34

jr_023_70ab:
	dec  bc                                          ; $70ab: $0b
	jr   z, jr_023_7097                              ; $70ac: $28 $e9

	db   $f4                                         ; $70ae: $f4
	ld   [de], a                                     ; $70af: $12
	jr   z, jr_023_70a3                              ; $70b0: $28 $f1

	or   $02                                         ; $70b2: $f6 $02
	jr   nc, jr_023_70c6                             ; $70b4: $30 $10

	sbc  $01                                         ; $70b6: $de $01
	jr   nc, @+$0a                                   ; $70b8: $30 $08

	call c, $3001                                    ; $70ba: $dc $01 $30
	nop                                              ; $70bd: $00
	jp   c, $3001                                    ; $70be: $da $01 $30

	ld   hl, sp-$28                                  ; $70c1: $f8 $d8
	ld   bc, $0820                                   ; $70c3: $01 $20 $08

jr_023_70c6:
	sub  $01                                         ; $70c6: $d6 $01
	jr   nz, jr_023_70ca                             ; $70c8: $20 $00

jr_023_70ca:
	call nc, $2002                                   ; $70ca: $d4 $02 $20
	ld   hl, sp-$2e                                  ; $70cd: $f8 $d2
	ld   [bc], a                                     ; $70cf: $02
	db   $10                                         ; $70d0: $10

jr_023_70d1:
	ld   [$01d0], sp                                 ; $70d1: $08 $d0 $01
	stop                                             ; $70d4: $10 $00
	adc  $01                                         ; $70d6: $ce $01
	db   $10                                         ; $70d8: $10
	ld   hl, sp-$34                                  ; $70d9: $f8 $cc
	ld   bc, $bf30                                   ; $70db: $01 $30 $bf
	ld   l, b                                        ; $70de: $68

jr_023_70df:
	dec  bc                                          ; $70df: $0b
	jr   nc, @-$47                                   ; $70e0: $30 $b7

	ld   h, [hl]                                     ; $70e2: $66

jr_023_70e3:
	dec  bc                                          ; $70e3: $0b
	jr   nc, @-$4f                                   ; $70e4: $30 $af

	ld   h, h                                        ; $70e6: $64

jr_023_70e7:
	dec  bc                                          ; $70e7: $0b
	jr   nz, @-$37                                   ; $70e8: $20 $c7

	ld   h, d                                        ; $70ea: $62

jr_023_70eb:
	dec  bc                                          ; $70eb: $0b
	jr   nz, @-$3f                                   ; $70ec: $20 $bf

	ld   h, b                                        ; $70ee: $60
	dec  bc                                          ; $70ef: $0b
	jr   nz, @-$47                                   ; $70f0: $20 $b7

	ld   e, [hl]                                     ; $70f2: $5e
	dec  bc                                          ; $70f3: $0b
	jr   nz, @-$4f                                   ; $70f4: $20 $af

	ld   e, h                                        ; $70f6: $5c

jr_023_70f7:
	dec  bc                                          ; $70f7: $0b
	jr   z, jr_023_70d1                              ; $70f8: $28 $d7

	ld   a, $0b                                      ; $70fa: $3e $0b
	jr   @-$27                                       ; $70fc: $18 $d7

	inc  a                                           ; $70fe: $3c
	dec  bc                                          ; $70ff: $0b
	jr   z, jr_023_70eb                              ; $7100: $28 $e9

	db   $f4                                         ; $7102: $f4
	ld   [de], a                                     ; $7103: $12
	jr   z, jr_023_70f7                              ; $7104: $28 $f1

	or   $02                                         ; $7106: $f6 $02
	jr   nc, jr_023_711a                             ; $7108: $30 $10

	ldh  a, [c]                                      ; $710a: $f2
	ld   bc, $0830                                   ; $710b: $01 $30 $08

jr_023_710e:
	ldh  a, [rSB]                                    ; $710e: $f0 $01
	jr   nc, jr_023_7112                             ; $7110: $30 $00

jr_023_7112:
	xor  $01                                         ; $7112: $ee $01
	jr   nc, jr_023_710e                             ; $7114: $30 $f8

	db   $ec                                         ; $7116: $ec
	ld   bc, $0820                                   ; $7117: $01 $20 $08

jr_023_711a:
	ld   [$2001], a                                  ; $711a: $ea $01 $20

jr_023_711d:
	nop                                              ; $711d: $00
	add  sp, $02                                     ; $711e: $e8 $02
	jr   nz, jr_023_711a                             ; $7120: $20 $f8

	and  $02                                         ; $7122: $e6 $02
	db   $10                                         ; $7124: $10
	ld   [$01e4], sp                                 ; $7125: $08 $e4 $01
	stop                                             ; $7128: $10 $00
	ldh  [c], a                                      ; $712a: $e2
	ld   bc, $f810                                   ; $712b: $01 $10 $f8
	ldh  [rSB], a                                    ; $712e: $e0 $01
	jr   nz, jr_023_70eb                             ; $7130: $20 $b9

	ld   [hl], b                                     ; $7132: $70

jr_023_7133:
	dec  bc                                          ; $7133: $0b
	jr   nz, jr_023_70e7                             ; $7134: $20 $b1

	ld   l, [hl]                                     ; $7136: $6e
	dec  bc                                          ; $7137: $0b
	jr   nz, jr_023_70e3                             ; $7138: $20 $a9

	ld   l, h                                        ; $713a: $6c
	dec  bc                                          ; $713b: $0b
	jr   nz, jr_023_70df                             ; $713c: $20 $a1

	ld   l, d                                        ; $713e: $6a

jr_023_713f:
	dec  bc                                          ; $713f: $0b
	inc  h                                           ; $7140: $24
	rst  $10                                         ; $7141: $d7
	ld   b, b                                        ; $7142: $40
	ld   l, e                                        ; $7143: $6b
	inc  l                                           ; $7144: $2c
	rst  $10                                         ; $7145: $d7
	ld   b, b                                        ; $7146: $40
	dec  bc                                          ; $7147: $0b
	jr   z, jr_023_7133                              ; $7148: $28 $e9

	db   $f4                                         ; $714a: $f4
	ld   [de], a                                     ; $714b: $12
	jr   z, jr_023_713f                              ; $714c: $28 $f1

	or   $02                                         ; $714e: $f6 $02
	jr   nc, @+$12                                   ; $7150: $30 $10

	jp   z, $3001                                    ; $7152: $ca $01 $30

	ld   [$01c8], sp                                 ; $7155: $08 $c8 $01
	jr   nc, jr_023_715a                             ; $7158: $30 $00

jr_023_715a:
	add  $01                                         ; $715a: $c6 $01
	jr   nc, @-$06                                   ; $715c: $30 $f8

jr_023_715e:
	call nz, $2001                                   ; $715e: $c4 $01 $20
	ld   [$01c2], sp                                 ; $7161: $08 $c2 $01
	jr   nz, jr_023_7166                             ; $7164: $20 $00

jr_023_7166:
	ret  nz                                          ; $7166: $c0

	ld   [bc], a                                     ; $7167: $02
	jr   nz, @-$06                                   ; $7168: $20 $f8

	cp   [hl]                                        ; $716a: $be
	ld   [bc], a                                     ; $716b: $02
	db   $10                                         ; $716c: $10
	ld   [$01bc], sp                                 ; $716d: $08 $bc $01
	stop                                             ; $7170: $10 $00
	cp   d                                           ; $7172: $ba
	ld   bc, $f810                                   ; $7173: $01 $10 $f8
	cp   b                                           ; $7176: $b8
	ld   bc, $ab20                                   ; $7177: $01 $20 $ab
	ld   [hl], b                                     ; $717a: $70

jr_023_717b:
	dec  bc                                          ; $717b: $0b
	jr   nz, @-$5b                                   ; $717c: $20 $a3

	ld   l, [hl]                                     ; $717e: $6e
	dec  bc                                          ; $717f: $0b
	jr   nz, jr_023_711d                             ; $7180: $20 $9b

	ld   l, h                                        ; $7182: $6c
	dec  bc                                          ; $7183: $0b
	jr   nz, @-$6b                                   ; $7184: $20 $93

	ld   l, d                                        ; $7186: $6a

jr_023_7187:
	dec  bc                                          ; $7187: $0b
	inc  h                                           ; $7188: $24
	rst  $10                                         ; $7189: $d7
	ld   b, d                                        ; $718a: $42
	ld   l, e                                        ; $718b: $6b
	inc  l                                           ; $718c: $2c
	rst  $10                                         ; $718d: $d7
	ld   b, d                                        ; $718e: $42
	dec  bc                                          ; $718f: $0b
	jr   z, jr_023_717b                              ; $7190: $28 $e9

	db   $f4                                         ; $7192: $f4
	ld   [de], a                                     ; $7193: $12
	jr   z, jr_023_7187                              ; $7194: $28 $f1

	or   $02                                         ; $7196: $f6 $02
	jr   nc, jr_023_71aa                             ; $7198: $30 $10

	sbc  $01                                         ; $719a: $de $01
	jr   nc, @+$0a                                   ; $719c: $30 $08

	call c, $3001                                    ; $719e: $dc $01 $30
	nop                                              ; $71a1: $00
	jp   c, $3001                                    ; $71a2: $da $01 $30

	ld   hl, sp-$28                                  ; $71a5: $f8 $d8
	ld   bc, $0820                                   ; $71a7: $01 $20 $08

jr_023_71aa:
	sub  $01                                         ; $71aa: $d6 $01
	jr   nz, jr_023_71ae                             ; $71ac: $20 $00

jr_023_71ae:
	call nc, $2002                                   ; $71ae: $d4 $02 $20
	ld   hl, sp-$2e                                  ; $71b1: $f8 $d2
	ld   [bc], a                                     ; $71b3: $02
	db   $10                                         ; $71b4: $10
	ld   [$01d0], sp                                 ; $71b5: $08 $d0 $01
	stop                                             ; $71b8: $10 $00
	adc  $01                                         ; $71ba: $ce $01
	db   $10                                         ; $71bc: $10
	ld   hl, sp-$34                                  ; $71bd: $f8 $cc

jr_023_71bf:
	ld   bc, $a020                                   ; $71bf: $01 $20 $a0
	ld   [hl], b                                     ; $71c2: $70
	dec  bc                                          ; $71c3: $0b
	jr   nz, jr_023_715e                             ; $71c4: $20 $98

	ld   l, [hl]                                     ; $71c6: $6e
	dec  bc                                          ; $71c7: $0b
	jr   nz, jr_023_715a                             ; $71c8: $20 $90

	ld   l, h                                        ; $71ca: $6c
	dec  bc                                          ; $71cb: $0b
	inc  h                                           ; $71cc: $24
	rst  $10                                         ; $71cd: $d7
	ld   b, h                                        ; $71ce: $44
	ld   l, e                                        ; $71cf: $6b
	inc  l                                           ; $71d0: $2c
	rst  $10                                         ; $71d1: $d7
	ld   b, h                                        ; $71d2: $44
	dec  bc                                          ; $71d3: $0b
	jr   z, jr_023_71bf                              ; $71d4: $28 $e9

	db   $f4                                         ; $71d6: $f4
	ld   [de], a                                     ; $71d7: $12
	rrca                                             ; $71d8: $0f
	db   $10                                         ; $71d9: $10
	ld   [hl], d                                     ; $71da: $72
	dec  bc                                          ; $71db: $0b
	jr   @+$2a                                       ; $71dc: $18 $28

	inc  d                                           ; $71de: $14
	nop                                              ; $71df: $00
	jr   jr_023_7202                                 ; $71e0: $18 $20

	ld   [de], a                                     ; $71e2: $12
	nop                                              ; $71e3: $00
	jr   nz, @+$1a                                   ; $71e4: $20 $18

	stop                                             ; $71e6: $10 $00
	jr   nz, @+$12                                   ; $71e8: $20 $10

	ld   c, $00                                      ; $71ea: $0e $00
	jr   nz, jr_023_71f6                             ; $71ec: $20 $08

	inc  c                                           ; $71ee: $0c
	nop                                              ; $71ef: $00
	db   $10                                         ; $71f0: $10
	jr   jr_023_71fd                                 ; $71f1: $18 $0a

	nop                                              ; $71f3: $00
	db   $10                                         ; $71f4: $10
	db   $10                                         ; $71f5: $10

jr_023_71f6:
	ld   [$1000], sp                                 ; $71f6: $08 $00 $10
	ld   [$0006], sp                                 ; $71f9: $08 $06 $00
	nop                                              ; $71fc: $00

jr_023_71fd:
	jr   jr_023_7203                                 ; $71fd: $18 $04

	ld   [bc], a                                     ; $71ff: $02
	nop                                              ; $7200: $00
	db   $10                                         ; $7201: $10

jr_023_7202:
	ld   [bc], a                                     ; $7202: $02

jr_023_7203:
	ld   [bc], a                                     ; $7203: $02
	nop                                              ; $7204: $00
	ld   [$1200], sp                                 ; $7205: $08 $00 $12
	ld   c, $07                                      ; $7208: $0e $07
	ld   [hl], h                                     ; $720a: $74
	dec  bc                                          ; $720b: $0b
	db   $10                                         ; $720c: $10
	jr   nz, jr_023_723d                             ; $720d: $20 $2e

	nop                                              ; $720f: $00
	db   $10                                         ; $7210: $10
	jr   @+$2e                                       ; $7211: $18 $2c

	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	jr   nz, @+$2c                                   ; $7215: $20 $2a

	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	jr   jr_023_7243                                 ; $7219: $18 $28

	nop                                              ; $721b: $00
	jr   nz, @+$12                                   ; $721c: $20 $10

	ld   h, $00                                      ; $721e: $26 $00
	jr   nz, jr_023_722a                             ; $7220: $20 $08

	inc  h                                           ; $7222: $24
	nop                                              ; $7223: $00
	jr   nz, jr_023_7226                             ; $7224: $20 $00

jr_023_7226:
	ld   [hl+], a                                    ; $7226: $22
	nop                                              ; $7227: $00
	db   $10                                         ; $7228: $10
	db   $10                                         ; $7229: $10

jr_023_722a:
	jr   nz, jr_023_722c                             ; $722a: $20 $00

jr_023_722c:
	db   $10                                         ; $722c: $10
	ld   [$001e], sp                                 ; $722d: $08 $1e $00
	stop                                             ; $7230: $10 $00
	inc  e                                           ; $7232: $1c
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	db   $10                                         ; $7235: $10
	ld   a, [de]                                     ; $7236: $1a
	ld   [bc], a                                     ; $7237: $02
	nop                                              ; $7238: $00
	ld   [$0218], sp                                 ; $7239: $08 $18 $02
	nop                                              ; $723c: $00

jr_023_723d:
	nop                                              ; $723d: $00
	ld   d, $12                                      ; $723e: $16 $12
	ld   c, $07                                      ; $7240: $0e $07
	ld   [hl], h                                     ; $7242: $74

jr_023_7243:
	dec  bc                                          ; $7243: $0b
	nop                                              ; $7244: $00
	jr   nz, @+$34                                   ; $7245: $20 $32

	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	jr   jr_023_727b                                 ; $7249: $18 $30

	nop                                              ; $724b: $00
	jr   nz, @+$12                                   ; $724c: $20 $10

	ld   h, $00                                      ; $724e: $26 $00
	jr   nz, jr_023_725a                             ; $7250: $20 $08

	inc  h                                           ; $7252: $24
	nop                                              ; $7253: $00
	jr   nz, jr_023_7256                             ; $7254: $20 $00

jr_023_7256:
	ld   [hl+], a                                    ; $7256: $22
	nop                                              ; $7257: $00
	db   $10                                         ; $7258: $10
	db   $10                                         ; $7259: $10

jr_023_725a:
	jr   nz, jr_023_725c                             ; $725a: $20 $00

jr_023_725c:
	db   $10                                         ; $725c: $10
	ld   [$001e], sp                                 ; $725d: $08 $1e $00
	stop                                             ; $7260: $10 $00
	inc  e                                           ; $7262: $1c
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	db   $10                                         ; $7265: $10
	ld   a, [de]                                     ; $7266: $1a
	ld   [bc], a                                     ; $7267: $02
	nop                                              ; $7268: $00
	ld   [$0218], sp                                 ; $7269: $08 $18 $02
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	ld   d, $12                                      ; $726e: $16 $12
	ld   [$4cf8], sp                                 ; $7270: $08 $f8 $4c
	nop                                              ; $7273: $00
	db   $10                                         ; $7274: $10
	ld   [$003c], sp                                 ; $7275: $08 $3c $00
	stop                                             ; $7278: $10 $00
	ld   a, [hl-]                                    ; $727a: $3a

jr_023_727b:
	nop                                              ; $727b: $00
	ld   [$48f0], sp                                 ; $727c: $08 $f0 $48
	nop                                              ; $727f: $00
	ld   [$46e8], sp                                 ; $7280: $08 $e8 $46
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	call nz, $0800                                   ; $7286: $c4 $00 $08
	ld   hl, sp+$4a                                  ; $7289: $f8 $4a
	nop                                              ; $728b: $00
	jr   nz, jr_023_729e                             ; $728c: $20 $10

	ld   b, h                                        ; $728e: $44
	nop                                              ; $728f: $00
	jr   nz, jr_023_729a                             ; $7290: $20 $08

	ld   b, d                                        ; $7292: $42
	nop                                              ; $7293: $00
	jr   nz, jr_023_7296                             ; $7294: $20 $00

jr_023_7296:
	ld   b, b                                        ; $7296: $40
	nop                                              ; $7297: $00
	db   $10                                         ; $7298: $10
	db   $10                                         ; $7299: $10

jr_023_729a:
	ld   a, $00                                      ; $729a: $3e $00
	nop                                              ; $729c: $00
	db   $10                                         ; $729d: $10

jr_023_729e:
	jr   c, @+$04                                    ; $729e: $38 $02

	nop                                              ; $72a0: $00
	ld   [$0236], sp                                 ; $72a1: $08 $36 $02
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	inc  [hl]                                        ; $72a6: $34
	ld   [de], a                                     ; $72a7: $12
	ld   [$64f8], sp                                 ; $72a8: $08 $f8 $64
	nop                                              ; $72ab: $00
	ld   [$62f0], sp                                 ; $72ac: $08 $f0 $62
	nop                                              ; $72af: $00
	ld   [$60e8], sp                                 ; $72b0: $08 $e8 $60
	nop                                              ; $72b3: $00
	jr   nz, @+$12                                   ; $72b4: $20 $10

	ld   e, [hl]                                     ; $72b6: $5e
	nop                                              ; $72b7: $00
	jr   nz, jr_023_72c2                             ; $72b8: $20 $08

	ld   e, h                                        ; $72ba: $5c
	nop                                              ; $72bb: $00
	jr   nz, jr_023_72be                             ; $72bc: $20 $00

jr_023_72be:
	ld   e, d                                        ; $72be: $5a
	nop                                              ; $72bf: $00
	db   $10                                         ; $72c0: $10
	db   $10                                         ; $72c1: $10

jr_023_72c2:
	ld   e, b                                        ; $72c2: $58
	nop                                              ; $72c3: $00
	db   $10                                         ; $72c4: $10
	ld   [$0056], sp                                 ; $72c5: $08 $56 $00
	stop                                             ; $72c8: $10 $00
	ld   d, h                                        ; $72ca: $54
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	db   $10                                         ; $72cd: $10
	ld   d, d                                        ; $72ce: $52
	ld   [bc], a                                     ; $72cf: $02
	nop                                              ; $72d0: $00
	ld   [$0250], sp                                 ; $72d1: $08 $50 $02
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00

jr_023_72d6:
	ld   c, [hl]                                     ; $72d6: $4e
	ld   [de], a                                     ; $72d7: $12
	db   $10                                         ; $72d8: $10
	ld   [$0b76], sp                                 ; $72d9: $08 $76 $0b
	jr   nz, jr_023_72d6                             ; $72dc: $20 $f8

	add  b                                           ; $72de: $80
	ld   h, b                                        ; $72df: $60
	jr   nz, jr_023_72e2                             ; $72e0: $20 $00

jr_023_72e2:
	ld   a, [hl]                                     ; $72e2: $7e
	ld   h, b                                        ; $72e3: $60
	db   $10                                         ; $72e4: $10
	ld   hl, sp+$78                                  ; $72e5: $f8 $78
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	ld   hl, sp-$80                                  ; $72e9: $f8 $80
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	ldh  a, [$7e]                                    ; $72ed: $f0 $7e
	nop                                              ; $72ef: $00
	jr   nz, @+$12                                   ; $72f0: $20 $10

	halt                                             ; $72f2: $76
	nop                                              ; $72f3: $00
	jr   nz, jr_023_72fe                             ; $72f4: $20 $08

	ld   [hl], h                                     ; $72f6: $74
	nop                                              ; $72f7: $00
	jr   nz, jr_023_72fa                             ; $72f8: $20 $00

jr_023_72fa:
	ld   [hl], d                                     ; $72fa: $72
	nop                                              ; $72fb: $00
	db   $10                                         ; $72fc: $10
	db   $10                                         ; $72fd: $10

jr_023_72fe:
	ld   [hl], b                                     ; $72fe: $70
	nop                                              ; $72ff: $00
	db   $10                                         ; $7300: $10
	ld   [$006e], sp                                 ; $7301: $08 $6e $00
	stop                                             ; $7304: $10 $00
	ld   l, h                                        ; $7306: $6c
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	db   $10                                         ; $7309: $10
	ld   l, d                                        ; $730a: $6a
	ld   [bc], a                                     ; $730b: $02
	nop                                              ; $730c: $00
	ld   [$0268], sp                                 ; $730d: $08 $68 $02
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00

jr_023_7312:
	ld   h, [hl]                                     ; $7312: $66
	ld   [de], a                                     ; $7313: $12
	db   $10                                         ; $7314: $10
	ld   [$0b76], sp                                 ; $7315: $08 $76 $0b
	jr   nz, jr_023_7312                             ; $7318: $20 $f8

	add  b                                           ; $731a: $80
	ld   h, b                                        ; $731b: $60
	jr   nz, jr_023_731e                             ; $731c: $20 $00

jr_023_731e:
	ld   a, [hl]                                     ; $731e: $7e
	ld   h, b                                        ; $731f: $60
	db   $10                                         ; $7320: $10
	ld   hl, sp+$78                                  ; $7321: $f8 $78
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	db   $10                                         ; $7325: $10
	ld   a, d                                        ; $7326: $7a
	ld   [bc], a                                     ; $7327: $02
	nop                                              ; $7328: $00
	ld   hl, sp-$80                                  ; $7329: $f8 $80
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	ldh  a, [$7e]                                    ; $732d: $f0 $7e
	nop                                              ; $732f: $00
	jr   nz, @+$12                                   ; $7330: $20 $10

	halt                                             ; $7332: $76
	nop                                              ; $7333: $00
	jr   nz, jr_023_733e                             ; $7334: $20 $08

	ld   [hl], h                                     ; $7336: $74
	nop                                              ; $7337: $00
	jr   nz, jr_023_733a                             ; $7338: $20 $00

jr_023_733a:
	ld   [hl], d                                     ; $733a: $72
	nop                                              ; $733b: $00
	db   $10                                         ; $733c: $10
	db   $10                                         ; $733d: $10

jr_023_733e:
	ld   [hl], b                                     ; $733e: $70
	nop                                              ; $733f: $00
	db   $10                                         ; $7340: $10
	ld   [$006e], sp                                 ; $7341: $08 $6e $00
	stop                                             ; $7344: $10 $00
	ld   l, h                                        ; $7346: $6c
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	ld   [$0268], sp                                 ; $7349: $08 $68 $02
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	ld   h, [hl]                                     ; $734e: $66
	ld   [de], a                                     ; $734f: $12
	db   $10                                         ; $7350: $10
	ld   [$0b76], sp                                 ; $7351: $08 $76 $0b
	jr   nz, jr_023_7356                             ; $7354: $20 $00

jr_023_7356:
	add  d                                           ; $7356: $82
	ld   h, b                                        ; $7357: $60
	jr   nz, @-$06                                   ; $7358: $20 $f8

	add  h                                           ; $735a: $84
	ld   h, b                                        ; $735b: $60
	db   $10                                         ; $735c: $10
	ld   hl, sp+$7c                                  ; $735d: $f8 $7c
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	ld   hl, sp-$7c                                  ; $7361: $f8 $84
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	ldh  a, [$82]                                    ; $7365: $f0 $82
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	db   $10                                         ; $7369: $10
	ld   a, d                                        ; $736a: $7a
	ld   [bc], a                                     ; $736b: $02
	jr   nz, jr_023_736e                             ; $736c: $20 $00

jr_023_736e:
	ld   [hl], d                                     ; $736e: $72
	nop                                              ; $736f: $00
	jr   nz, jr_023_7382                             ; $7370: $20 $10

	halt                                             ; $7372: $76
	nop                                              ; $7373: $00
	jr   nz, @+$0a                                   ; $7374: $20 $08

	ld   [hl], h                                     ; $7376: $74
	nop                                              ; $7377: $00
	db   $10                                         ; $7378: $10
	db   $10                                         ; $7379: $10
	ld   [hl], b                                     ; $737a: $70
	nop                                              ; $737b: $00
	db   $10                                         ; $737c: $10
	ld   [$006e], sp                                 ; $737d: $08 $6e $00
	stop                                             ; $7380: $10 $00

jr_023_7382:
	ld   l, h                                        ; $7382: $6c
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	ld   [$0268], sp                                 ; $7385: $08 $68 $02
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	ld   h, [hl]                                     ; $738a: $66
	ld   [de], a                                     ; $738b: $12
	ldh  a, [rIE]                                    ; $738c: $f0 $ff
	sbc  b                                           ; $738e: $98
	nop                                              ; $738f: $00
	jr   nz, @+$12                                   ; $7390: $20 $10

	sub  [hl]                                        ; $7392: $96
	nop                                              ; $7393: $00
	jr   nz, jr_023_739e                             ; $7394: $20 $08

	sub  h                                           ; $7396: $94
	nop                                              ; $7397: $00
	jr   nz, jr_023_739a                             ; $7398: $20 $00

jr_023_739a:
	sub  d                                           ; $739a: $92
	nop                                              ; $739b: $00
	db   $10                                         ; $739c: $10
	db   $10                                         ; $739d: $10

jr_023_739e:
	sub  b                                           ; $739e: $90
	nop                                              ; $739f: $00
	db   $10                                         ; $73a0: $10
	ld   [$008e], sp                                 ; $73a1: $08 $8e $00
	stop                                             ; $73a4: $10 $00
	adc  h                                           ; $73a6: $8c
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	db   $10                                         ; $73a9: $10
	adc  d                                           ; $73aa: $8a
	ld   [bc], a                                     ; $73ab: $02
	nop                                              ; $73ac: $00
	ld   [$0288], sp                                 ; $73ad: $08 $88 $02
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	add  [hl]                                        ; $73b2: $86
	ld   [de], a                                     ; $73b3: $12
	add  hl, de                                      ; $73b4: $19
	ld   [de], a                                     ; $73b5: $12
	call z, $1900                                    ; $73b6: $cc $00 $19
	ld   a, [bc]                                     ; $73b9: $0a
	jp   z, $1900                                    ; $73ba: $ca $00 $19

	ld   [bc], a                                     ; $73bd: $02
	ret  z                                           ; $73be: $c8

	nop                                              ; $73bf: $00
	add  hl, de                                      ; $73c0: $19
	ld   a, [$00c6]                                  ; $73c1: $fa $c6 $00
	jr   nz, @+$12                                   ; $73c4: $20 $10

	xor  d                                           ; $73c6: $aa
	nop                                              ; $73c7: $00
	jr   nz, jr_023_73d2                             ; $73c8: $20 $08

	xor  b                                           ; $73ca: $a8
	nop                                              ; $73cb: $00
	jr   nz, jr_023_73ce                             ; $73cc: $20 $00

jr_023_73ce:
	and  [hl]                                        ; $73ce: $a6
	nop                                              ; $73cf: $00
	db   $10                                         ; $73d0: $10
	db   $10                                         ; $73d1: $10

jr_023_73d2:
	and  h                                           ; $73d2: $a4
	nop                                              ; $73d3: $00
	db   $10                                         ; $73d4: $10
	ld   [$00a2], sp                                 ; $73d5: $08 $a2 $00
	stop                                             ; $73d8: $10 $00
	and  b                                           ; $73da: $a0
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	db   $10                                         ; $73dd: $10
	sbc  [hl]                                        ; $73de: $9e
	ld   [bc], a                                     ; $73df: $02
	nop                                              ; $73e0: $00
	ld   [$029c], sp                                 ; $73e1: $08 $9c $02
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	sbc  d                                           ; $73e6: $9a
	ld   [de], a                                     ; $73e7: $12
	add  hl, de                                      ; $73e8: $19
	ld   [de], a                                     ; $73e9: $12
	call nc, $1903                                   ; $73ea: $d4 $03 $19
	ld   a, [bc]                                     ; $73ed: $0a
	jp   nc, $1900                                   ; $73ee: $d2 $00 $19

	ld   [bc], a                                     ; $73f1: $02
	ret  nc                                          ; $73f2: $d0

	nop                                              ; $73f3: $00
	add  hl, de                                      ; $73f4: $19
	ld   a, [$00ce]                                  ; $73f5: $fa $ce $00
	jr   nz, @+$12                                   ; $73f8: $20 $10

	cp   h                                           ; $73fa: $bc
	nop                                              ; $73fb: $00
	jr   nz, jr_023_7406                             ; $73fc: $20 $08

	cp   d                                           ; $73fe: $ba
	nop                                              ; $73ff: $00
	jr   nz, jr_023_7402                             ; $7400: $20 $00

jr_023_7402:
	cp   b                                           ; $7402: $b8
	nop                                              ; $7403: $00
	db   $10                                         ; $7404: $10
	db   $10                                         ; $7405: $10

jr_023_7406:
	or   [hl]                                        ; $7406: $b6
	nop                                              ; $7407: $00
	db   $10                                         ; $7408: $10
	ld   [$00b4], sp                                 ; $7409: $08 $b4 $00
	stop                                             ; $740c: $10 $00
	or   d                                           ; $740e: $b2
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	db   $10                                         ; $7411: $10
	or   b                                           ; $7412: $b0
	ld   [bc], a                                     ; $7413: $02
	nop                                              ; $7414: $00
	ld   [$02ae], sp                                 ; $7415: $08 $ae $02
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	xor  h                                           ; $741a: $ac
	ld   [de], a                                     ; $741b: $12
	add  hl, de                                      ; $741c: $19
	inc  de                                          ; $741d: $13
	call c, $1903                                    ; $741e: $dc $03 $19
	dec  bc                                          ; $7421: $0b
	jp   c, $1903                                    ; $7422: $da $03 $19

	inc  bc                                          ; $7425: $03
	ret  c                                           ; $7426: $d8

	inc  bc                                          ; $7427: $03
	add  hl, de                                      ; $7428: $19
	ei                                               ; $7429: $fb
	sub  $03                                         ; $742a: $d6 $03
	jr   nz, jr_023_743e                             ; $742c: $20 $10

	jp   nz, $1000                                   ; $742e: $c2 $00 $10

	db   $10                                         ; $7431: $10
	ret  nz                                          ; $7432: $c0

	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	db   $10                                         ; $7435: $10
	cp   [hl]                                        ; $7436: $be
	ld   [bc], a                                     ; $7437: $02
	jr   nz, @+$0a                                   ; $7438: $20 $08

	cp   d                                           ; $743a: $ba
	nop                                              ; $743b: $00
	jr   nz, jr_023_743e                             ; $743c: $20 $00

jr_023_743e:
	cp   b                                           ; $743e: $b8
	nop                                              ; $743f: $00
	db   $10                                         ; $7440: $10
	ld   [$00b4], sp                                 ; $7441: $08 $b4 $00
	stop                                             ; $7444: $10 $00
	or   d                                           ; $7446: $b2
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	ld   [$02ae], sp                                 ; $7449: $08 $ae $02
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	xor  h                                           ; $744e: $ac
	ld   [de], a                                     ; $744f: $12
	jr   @+$22                                       ; $7450: $18 $20

	ldh  a, [$03]                                    ; $7452: $f0 $03
	ld   [$ee20], sp                                 ; $7454: $08 $20 $ee
	inc  bc                                          ; $7457: $03
	jr   @+$1a                                       ; $7458: $18 $18

	db   $ec                                         ; $745a: $ec
	inc  bc                                          ; $745b: $03
	jr   jr_023_746e                                 ; $745c: $18 $10

jr_023_745e:
	ld   [$1803], a                                  ; $745e: $ea $03 $18
	ld   [$03e8], sp                                 ; $7461: $08 $e8 $03
	jr   jr_023_7466                                 ; $7464: $18 $00

jr_023_7466:
	and  $03                                         ; $7466: $e6 $03
	jr   @-$06                                       ; $7468: $18 $f8

	db   $e4                                         ; $746a: $e4
	inc  bc                                          ; $746b: $03
	jr   jr_023_745e                                 ; $746c: $18 $f0

jr_023_746e:
	ldh  [c], a                                      ; $746e: $e2
	inc  bc                                          ; $746f: $03
	ld   [$e0f8], sp                                 ; $7470: $08 $f8 $e0
	inc  bc                                          ; $7473: $03
	ld   [$def0], sp                                 ; $7474: $08 $f0 $de
	inc  bc                                          ; $7477: $03
	db   $10                                         ; $7478: $10
	db   $10                                         ; $7479: $10
	and  h                                           ; $747a: $a4
	nop                                              ; $747b: $00
	db   $10                                         ; $747c: $10
	ld   [$00a2], sp                                 ; $747d: $08 $a2 $00
	stop                                             ; $7480: $10 $00
	and  b                                           ; $7482: $a0
	nop                                              ; $7483: $00
	jr   nz, @+$12                                   ; $7484: $20 $10

	xor  d                                           ; $7486: $aa
	nop                                              ; $7487: $00
	jr   nz, jr_023_7492                             ; $7488: $20 $08

	xor  b                                           ; $748a: $a8
	nop                                              ; $748b: $00
	jr   nz, jr_023_748e                             ; $748c: $20 $00

jr_023_748e:
	and  [hl]                                        ; $748e: $a6
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	db   $10                                         ; $7491: $10

jr_023_7492:
	sbc  [hl]                                        ; $7492: $9e
	ld   [bc], a                                     ; $7493: $02
	nop                                              ; $7494: $00
	ld   [$029c], sp                                 ; $7495: $08 $9c $02
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	sbc  d                                           ; $749a: $9a
	ld   [de], a                                     ; $749b: $12
	jr   @+$22                                       ; $749c: $18 $20

	ld   [$180b], sp                                 ; $749e: $08 $0b $18
	jr   @+$08                                       ; $74a1: $18 $06

	dec  bc                                          ; $74a3: $0b
	ld   [$0420], sp                                 ; $74a4: $08 $20 $04
	dec  bc                                          ; $74a7: $0b
	ld   [$0218], sp                                 ; $74a8: $08 $18 $02
	dec  bc                                          ; $74ab: $0b
	jr   @+$12                                       ; $74ac: $18 $10

	nop                                              ; $74ae: $00
	dec  bc                                          ; $74af: $0b
	jr   jr_023_74ba                                 ; $74b0: $18 $08

jr_023_74b2:
	cp   $03                                         ; $74b2: $fe $03
	jr   jr_023_74b6                                 ; $74b4: $18 $00

jr_023_74b6:
	db   $fc                                         ; $74b6: $fc
	inc  bc                                          ; $74b7: $03
	jr   jr_023_74b2                                 ; $74b8: $18 $f8

jr_023_74ba:
	ld   a, [$1803]                                  ; $74ba: $fa $03 $18
	ldh  a, [$f8]                                    ; $74bd: $f0 $f8
	inc  bc                                          ; $74bf: $03
	ld   [$f600], sp                                 ; $74c0: $08 $00 $f6
	inc  bc                                          ; $74c3: $03
	ld   [$f4f8], sp                                 ; $74c4: $08 $f8 $f4
	inc  bc                                          ; $74c7: $03
	ld   [$f2f0], sp                                 ; $74c8: $08 $f0 $f2
	inc  bc                                          ; $74cb: $03
	db   $10                                         ; $74cc: $10
	db   $10                                         ; $74cd: $10
	or   [hl]                                        ; $74ce: $b6
	nop                                              ; $74cf: $00
	db   $10                                         ; $74d0: $10
	ld   [$00b4], sp                                 ; $74d1: $08 $b4 $00
	jr   nz, jr_023_74e6                             ; $74d4: $20 $10

	cp   h                                           ; $74d6: $bc
	nop                                              ; $74d7: $00
	jr   nz, jr_023_74e2                             ; $74d8: $20 $08

	cp   d                                           ; $74da: $ba
	nop                                              ; $74db: $00
	jr   nz, jr_023_74de                             ; $74dc: $20 $00

jr_023_74de:
	cp   b                                           ; $74de: $b8
	nop                                              ; $74df: $00
	stop                                             ; $74e0: $10 $00

jr_023_74e2:
	or   d                                           ; $74e2: $b2
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	db   $10                                         ; $74e5: $10

jr_023_74e6:
	or   b                                           ; $74e6: $b0

jr_023_74e7:
	ld   [bc], a                                     ; $74e7: $02
	nop                                              ; $74e8: $00
	ld   [$02ae], sp                                 ; $74e9: $08 $ae $02
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	xor  h                                           ; $74ee: $ac
	ld   [de], a                                     ; $74ef: $12
	ld   [$0af1], sp                                 ; $74f0: $08 $f1 $0a

jr_023_74f3:
	dec  bc                                          ; $74f3: $0b
	jr   jr_023_74e7                                 ; $74f4: $18 $f1

	inc  c                                           ; $74f6: $0c
	dec  bc                                          ; $74f7: $0b
	jr   jr_023_74f3                                 ; $74f8: $18 $f9

	ld   c, $0b                                      ; $74fa: $0e $0b
	ld   [$1001], sp                                 ; $74fc: $08 $01 $10
	dec  bc                                          ; $74ff: $0b
	jr   jr_023_7503                                 ; $7500: $18 $01

	ld   [de], a                                     ; $7502: $12

jr_023_7503:
	dec  bc                                          ; $7503: $0b
	ld   [ClearTextBoxDimensionsAndSetDefaultTextStyle], sp                                 ; $7504: $08 $09 $14
	dec  bc                                          ; $7507: $0b
	jr   jr_023_7513                                 ; $7508: $18 $09

	ld   d, $0b                                      ; $750a: $16 $0b
	jr   @+$13                                       ; $750c: $18 $11

	jr   jr_023_751b                                 ; $750e: $18 $0b

	ld   [$1a19], sp                                 ; $7510: $08 $19 $1a

jr_023_7513:
	dec  bc                                          ; $7513: $0b
	jr   jr_023_752f                                 ; $7514: $18 $19

	inc  e                                           ; $7516: $1c
	dec  bc                                          ; $7517: $0b
	ld   [$1e21], sp                                 ; $7518: $08 $21 $1e

jr_023_751b:
	dec  bc                                          ; $751b: $0b
	jr   @+$23                                       ; $751c: $18 $21

	jr   nz, jr_023_752b                             ; $751e: $20 $0b

	db   $10                                         ; $7520: $10
	db   $10                                         ; $7521: $10
	ret  nz                                          ; $7522: $c0

	nop                                              ; $7523: $00
	jr   nz, @+$12                                   ; $7524: $20 $10

	jp   nz, $0000                                  ; $7526: $c2 $00 $00

	db   $10                                         ; $7529: $10
	cp   [hl]                                        ; $752a: $be

jr_023_752b:
	ld   [bc], a                                     ; $752b: $02
	jr   nz, @+$0a                                   ; $752c: $20 $08

	cp   d                                           ; $752e: $ba

jr_023_752f:
	nop                                              ; $752f: $00
	jr   nz, jr_023_7532                             ; $7530: $20 $00

jr_023_7532:
	cp   b                                           ; $7532: $b8
	nop                                              ; $7533: $00
	db   $10                                         ; $7534: $10

jr_023_7535:
	ld   [$00b4], sp                                 ; $7535: $08 $b4 $00
	stop                                             ; $7538: $10 $00
	or   d                                           ; $753a: $b2
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	ld   [$02ae], sp                                 ; $753d: $08 $ae $02
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	xor  h                                           ; $7542: $ac
	ld   [de], a                                     ; $7543: $12
	ld   [$22eb], sp                                 ; $7544: $08 $eb $22
	dec  bc                                          ; $7547: $0b
	jr   jr_023_7535                                 ; $7548: $18 $eb

	inc  h                                           ; $754a: $24
	dec  bc                                          ; $754b: $0b
	ld   [$26f3], sp                                 ; $754c: $08 $f3 $26
	dec  bc                                          ; $754f: $0b
	jr   @-$0b                                       ; $7550: $18 $f3

	jr   z, jr_023_755f                              ; $7552: $28 $0b

	jr   @-$03                                       ; $7554: $18 $fb

	ld   a, [hl+]                                    ; $7556: $2a
	dec  bc                                          ; $7557: $0b
	jr   @+$05                                       ; $7558: $18 $03

	inc  l                                           ; $755a: $2c
	dec  bc                                          ; $755b: $0b
	jr   jr_023_7573                                 ; $755c: $18 $15

	inc  [hl]                                        ; $755e: $34

jr_023_755f:
	dec  bc                                          ; $755f: $0b
	jr   jr_023_757f                                 ; $7560: $18 $1d

	jr   c, jr_023_756f                              ; $7562: $38 $0b

	jr   @+$27                                       ; $7564: $18 $25

	inc  a                                           ; $7566: $3c
	dec  bc                                          ; $7567: $0b
	ld   [$2e05], sp                                 ; $7568: $08 $05 $2e
	dec  bc                                          ; $756b: $0b
	ld   [$300d], sp                                 ; $756c: $08 $0d $30

jr_023_756f:
	dec  bc                                          ; $756f: $0b
	ld   [$3215], sp                                 ; $7570: $08 $15 $32

jr_023_7573:
	dec  bc                                          ; $7573: $0b
	ld   [$361d], sp                                 ; $7574: $08 $1d $36
	dec  bc                                          ; $7577: $0b
	ld   [$3a25], sp                                 ; $7578: $08 $25 $3a
	dec  bc                                          ; $757b: $0b
	db   $10                                         ; $757c: $10
	db   $10                                         ; $757d: $10
	ret  nz                                          ; $757e: $c0

jr_023_757f:
	nop                                              ; $757f: $00
	db   $10                                         ; $7580: $10
	ld   [$00b4], sp                                 ; $7581: $08 $b4 $00
	stop                                             ; $7584: $10 $00
	or   d                                           ; $7586: $b2
	nop                                              ; $7587: $00
	jr   nz, @+$12                                   ; $7588: $20 $10

	jp   nz, $2000                                   ; $758a: $c2 $00 $20

	ld   [$00ba], sp                                 ; $758d: $08 $ba $00
	jr   nz, jr_023_7592                             ; $7590: $20 $00

jr_023_7592:
	cp   b                                           ; $7592: $b8
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	db   $10                                         ; $7595: $10
	cp   [hl]                                        ; $7596: $be
	ld   [bc], a                                     ; $7597: $02
	nop                                              ; $7598: $00
	ld   [$02ae], sp                                 ; $7599: $08 $ae $02
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	xor  h                                           ; $759e: $ac
	ld   [de], a                                     ; $759f: $12
	ld   [$3ee4], sp                                 ; $75a0: $08 $e4 $3e
	dec  bc                                          ; $75a3: $0b
	ld   [$40ec], sp                                 ; $75a4: $08 $ec $40
	dec  bc                                          ; $75a7: $0b
	jr   @-$1a                                       ; $75a8: $18 $e4

	ld   b, d                                        ; $75aa: $42
	dec  bc                                          ; $75ab: $0b
	jr   @-$12                                       ; $75ac: $18 $ec

	ld   b, h                                        ; $75ae: $44
	dec  bc                                          ; $75af: $0b
	jr   @-$0a                                       ; $75b0: $18 $f4

jr_023_75b2:
	ld   b, [hl]                                     ; $75b2: $46
	dec  bc                                          ; $75b3: $0b
	jr   jr_023_75b2                                 ; $75b4: $18 $fc

	ld   c, b                                        ; $75b6: $48
	dec  bc                                          ; $75b7: $0b
	ld   [$4a21], sp                                 ; $75b8: $08 $21 $4a
	dec  bc                                          ; $75bb: $0b
	ld   [$4c29], sp                                 ; $75bc: $08 $29 $4c
	dec  bc                                          ; $75bf: $0b
	ld   [$4e31], sp                                 ; $75c0: $08 $31 $4e
	dec  bc                                          ; $75c3: $0b
	jr   jr_023_75e7                                 ; $75c4: $18 $21

	ld   d, b                                        ; $75c6: $50
	dec  bc                                          ; $75c7: $0b
	jr   jr_023_75f3                                 ; $75c8: $18 $29

	ld   d, d                                        ; $75ca: $52
	dec  bc                                          ; $75cb: $0b
	jr   jr_023_75ff                                 ; $75cc: $18 $31

	ld   d, h                                        ; $75ce: $54
	dec  bc                                          ; $75cf: $0b
	nop                                              ; $75d0: $00

jr_023_75d1:
	db   $10                                         ; $75d1: $10
	sbc  [hl]                                        ; $75d2: $9e
	ld   [bc], a                                     ; $75d3: $02
	nop                                              ; $75d4: $00
	ld   [$029c], sp                                 ; $75d5: $08 $9c $02
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	sbc  d                                           ; $75da: $9a
	ld   [bc], a                                     ; $75db: $02
	jr   nz, @+$12                                   ; $75dc: $20 $10

	xor  d                                           ; $75de: $aa
	nop                                              ; $75df: $00
	jr   nz, jr_023_75ea                             ; $75e0: $20 $08

	xor  b                                           ; $75e2: $a8
	nop                                              ; $75e3: $00
	jr   nz, jr_023_75e6                             ; $75e4: $20 $00

jr_023_75e6:
	and  [hl]                                        ; $75e6: $a6

jr_023_75e7:
	nop                                              ; $75e7: $00
	db   $10                                         ; $75e8: $10
	db   $10                                         ; $75e9: $10

jr_023_75ea:
	and  h                                           ; $75ea: $a4
	nop                                              ; $75eb: $00
	db   $10                                         ; $75ec: $10
	ld   [$00a2], sp                                 ; $75ed: $08 $a2 $00
	stop                                             ; $75f0: $10 $00
	and  b                                           ; $75f2: $a0

jr_023_75f3:
	db   $10                                         ; $75f3: $10
	jr   @-$3b                                       ; $75f4: $18 $c3

	ld   d, [hl]                                     ; $75f6: $56
	dec  bc                                          ; $75f7: $0b
	jr   @-$33                                       ; $75f8: $18 $cb

	ld   e, b                                        ; $75fa: $58
	dec  bc                                          ; $75fb: $0b
	jr   jr_023_75d1                                 ; $75fc: $18 $d3

jr_023_75fe:
	ld   e, d                                        ; $75fe: $5a

jr_023_75ff:
	dec  bc                                          ; $75ff: $0b
	jr   @-$23                                       ; $7600: $18 $db

jr_023_7602:
	ld   e, h                                        ; $7602: $5c
	dec  bc                                          ; $7603: $0b
	jr   @+$31                                       ; $7604: $18 $2f

jr_023_7606:
	ld   e, [hl]                                     ; $7606: $5e
	dec  bc                                          ; $7607: $0b
	jr   @+$39                                       ; $7608: $18 $37

jr_023_760a:
	ld   h, b                                        ; $760a: $60
	dec  bc                                          ; $760b: $0b
	jr   @+$41                                       ; $760c: $18 $3f

	ld   h, d                                        ; $760e: $62
	dec  bc                                          ; $760f: $0b
	db   $10                                         ; $7610: $10
	db   $10                                         ; $7611: $10
	or   [hl]                                        ; $7612: $b6
	nop                                              ; $7613: $00
	db   $10                                         ; $7614: $10
	ld   [$00b4], sp                                 ; $7615: $08 $b4 $00
	jr   nz, jr_023_762a                             ; $7618: $20 $10

	cp   h                                           ; $761a: $bc
	nop                                              ; $761b: $00
	jr   nz, jr_023_7626                             ; $761c: $20 $08

	cp   d                                           ; $761e: $ba
	nop                                              ; $761f: $00
	jr   nz, jr_023_7622                             ; $7620: $20 $00

jr_023_7622:
	cp   b                                           ; $7622: $b8
	nop                                              ; $7623: $00
	stop                                             ; $7624: $10 $00

jr_023_7626:
	or   d                                           ; $7626: $b2
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	db   $10                                         ; $7629: $10

jr_023_762a:
	or   b                                           ; $762a: $b0
	ld   [bc], a                                     ; $762b: $02
	nop                                              ; $762c: $00
	ld   [$02ae], sp                                 ; $762d: $08 $ae $02
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	xor  h                                           ; $7632: $ac
	ld   [de], a                                     ; $7633: $12
	jr   @+$3b                                       ; $7634: $18 $39

	ld   l, h                                        ; $7636: $6c
	dec  bc                                          ; $7637: $0b
	jr   jr_023_767b                                 ; $7638: $18 $41

	ld   l, [hl]                                     ; $763a: $6e
	dec  bc                                          ; $763b: $0b
	jr   jr_023_7687                                 ; $763c: $18 $49

	ld   [hl], b                                     ; $763e: $70
	dec  bc                                          ; $763f: $0b
	jr   jr_023_760a                                 ; $7640: $18 $c8

	ld   l, d                                        ; $7642: $6a
	dec  bc                                          ; $7643: $0b
	jr   jr_023_7606                                 ; $7644: $18 $c0

	ld   l, b                                        ; $7646: $68
	dec  bc                                          ; $7647: $0b
	jr   jr_023_7602                                 ; $7648: $18 $b8

	ld   h, [hl]                                     ; $764a: $66
	dec  bc                                          ; $764b: $0b
	jr   jr_023_75fe                                 ; $764c: $18 $b0

	ld   h, h                                        ; $764e: $64
	dec  bc                                          ; $764f: $0b
	jr   nz, jr_023_7662                             ; $7650: $20 $10

	jp   nz, $1000                                   ; $7652: $c2 $00 $10

	db   $10                                         ; $7655: $10
	ret  nz                                          ; $7656: $c0

	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	db   $10                                         ; $7659: $10
	cp   [hl]                                        ; $765a: $be
	ld   [bc], a                                     ; $765b: $02
	jr   nz, @+$0a                                   ; $765c: $20 $08

	cp   d                                           ; $765e: $ba
	nop                                              ; $765f: $00
	jr   nz, jr_023_7662                             ; $7660: $20 $00

jr_023_7662:
	cp   b                                           ; $7662: $b8
	nop                                              ; $7663: $00
	db   $10                                         ; $7664: $10
	ld   [$00b4], sp                                 ; $7665: $08 $b4 $00
	stop                                             ; $7668: $10 $00
	or   d                                           ; $766a: $b2
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	ld   [$02ae], sp                                 ; $766d: $08 $ae $02
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00

jr_023_7672:
	xor  h                                           ; $7672: $ac
	ld   [de], a                                     ; $7673: $12
	jr   nz, jr_023_7672                             ; $7674: $20 $fc

	xor  [hl]                                        ; $7676: $ae
	nop                                              ; $7677: $00
	ld   a, [bc]                                     ; $7678: $0a
	inc  c                                           ; $7679: $0c
	inc  b                                           ; $767a: $04

jr_023_767b:
	nop                                              ; $767b: $00
	ld   a, [bc]                                     ; $767c: $0a
	inc  b                                           ; $767d: $04
	ld   [bc], a                                     ; $767e: $02
	nop                                              ; $767f: $00
	ld   a, [bc]                                     ; $7680: $0a
	db   $fc                                         ; $7681: $fc
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	jr   nz, jr_023_7692                             ; $7684: $20 $0c

	db   $10                                         ; $7686: $10

jr_023_7687:
	ld   bc, $0420                                   ; $7687: $01 $20 $04

jr_023_768a:
	ld   c, $01                                      ; $768a: $0e $01
	jr   nz, jr_023_768a                             ; $768c: $20 $fc

	inc  c                                           ; $768e: $0c
	ld   bc, $0c10                                   ; $768f: $01 $10 $0c

jr_023_7692:
	ld   a, [bc]                                     ; $7692: $0a
	ld   bc, $0410                                   ; $7693: $01 $10 $04
	ld   [$1001], sp                                 ; $7696: $08 $01 $10
	db   $fc                                         ; $7699: $fc
	ld   b, $11                                      ; $769a: $06 $11
	jr   nz, jr_023_76aa                             ; $769c: $20 $0c

	ld   [hl+], a                                    ; $769e: $22
	ld   bc, $0420                                   ; $769f: $01 $20 $04

jr_023_76a2:
	jr   nz, @+$03                                   ; $76a2: $20 $01

	jr   nz, jr_023_76a2                             ; $76a4: $20 $fc

	ld   e, $01                                      ; $76a6: $1e $01
	db   $10                                         ; $76a8: $10
	inc  c                                           ; $76a9: $0c

jr_023_76aa:
	inc  e                                           ; $76aa: $1c
	ld   bc, $0410                                   ; $76ab: $01 $10 $04
	ld   a, [de]                                     ; $76ae: $1a
	ld   bc, $fc10                                   ; $76af: $01 $10 $fc
	jr   jr_023_76b5                                 ; $76b2: $18 $01

	dec  bc                                          ; $76b4: $0b

jr_023_76b5:
	db   $10                                         ; $76b5: $10
	ld   d, $00                                      ; $76b6: $16 $00
	dec  bc                                          ; $76b8: $0b
	ld   [$0014], sp                                 ; $76b9: $08 $14 $00
	dec  bc                                          ; $76bc: $0b
	nop                                              ; $76bd: $00
	ld   [de], a                                     ; $76be: $12
	db   $10                                         ; $76bf: $10
	ld   [hl+], a                                    ; $76c0: $22
	inc  c                                           ; $76c1: $0c
	inc  [hl]                                        ; $76c2: $34
	ld   bc, $0422                                   ; $76c3: $01 $22 $04
	ld   [hl-], a                                    ; $76c6: $32
	ld   bc, $fc22                                   ; $76c7: $01 $22 $fc
	jr   nc, jr_023_76cd                             ; $76ca: $30 $01

	ld   [de], a                                     ; $76cc: $12

jr_023_76cd:
	inc  c                                           ; $76cd: $0c
	ld   l, $01                                      ; $76ce: $2e $01
	ld   [de], a                                     ; $76d0: $12
	inc  b                                           ; $76d1: $04
	inc  l                                           ; $76d2: $2c
	ld   bc, $fc12                                   ; $76d3: $01 $12 $fc
	ld   a, [hl+]                                    ; $76d6: $2a
	ld   bc, $0c0a                                   ; $76d7: $01 $0a $0c
	jr   z, jr_023_76dc                              ; $76da: $28 $00

jr_023_76dc:
	ld   a, [bc]                                     ; $76dc: $0a
	inc  b                                           ; $76dd: $04
	ld   h, $00                                      ; $76de: $26 $00
	ld   a, [bc]                                     ; $76e0: $0a
	db   $fc                                         ; $76e1: $fc
	inc  h                                           ; $76e2: $24
	db   $10                                         ; $76e3: $10
	ld   hl, sp+$24                                  ; $76e4: $f8 $24
	and  h                                           ; $76e6: $a4
	inc  bc                                          ; $76e7: $03
	jr   nz, jr_023_76f6                             ; $76e8: $20 $0c

	ld   b, [hl]                                     ; $76ea: $46
	ld   bc, $0420                                   ; $76eb: $01 $20 $04
	ld   b, h                                        ; $76ee: $44
	ld   bc, $fc20                                   ; $76ef: $01 $20 $fc
	ld   b, d                                        ; $76f2: $42
	ld   bc, $0c10                                   ; $76f3: $01 $10 $0c

jr_023_76f6:
	ld   b, b                                        ; $76f6: $40
	ld   bc, $0410                                   ; $76f7: $01 $10 $04
	ld   a, $01                                      ; $76fa: $3e $01
	db   $10                                         ; $76fc: $10
	db   $fc                                         ; $76fd: $fc
	inc  a                                           ; $76fe: $3c
	ld   bc, $0c08                                   ; $76ff: $01 $08 $0c
	ld   a, [hl-]                                    ; $7702: $3a
	nop                                              ; $7703: $00
	ld   [$3804], sp                                 ; $7704: $08 $04 $38
	nop                                              ; $7707: $00
	ld   [$36fc], sp                                 ; $7708: $08 $fc $36
	db   $10                                         ; $770b: $10
	db   $ec                                         ; $770c: $ec
	db   $10                                         ; $770d: $10
	and  h                                           ; $770e: $a4
	inc  bc                                          ; $770f: $03
	ld   hl, sp+$28                                  ; $7710: $f8 $28
	xor  b                                           ; $7712: $a8
	inc  bc                                          ; $7713: $03
	ld   hl, sp+$20                                  ; $7714: $f8 $20
	and  [hl]                                        ; $7716: $a6
	inc  bc                                          ; $7717: $03
	ld   e, $0d                                      ; $7718: $1e $0d
	ld   l, d                                        ; $771a: $6a
	ld   bc, $051e                                   ; $771b: $01 $1e $05
	ld   l, b                                        ; $771e: $68
	ld   bc, $fd1e                                   ; $771f: $01 $1e $fd
	ld   h, [hl]                                     ; $7722: $66
	ld   bc, $0d0e                                   ; $7723: $01 $0e $0d
	ld   h, h                                        ; $7726: $64
	ld   bc, $050e                                   ; $7727: $01 $0e $05
	ld   h, d                                        ; $772a: $62
	ld   bc, $fd0e                                   ; $772b: $01 $0e $fd
	ld   h, b                                        ; $772e: $60
	ld   bc, $0d06                                   ; $772f: $01 $06 $0d
	ld   e, [hl]                                     ; $7732: $5e
	nop                                              ; $7733: $00
	ld   b, $05                                      ; $7734: $06 $05
	ld   e, h                                        ; $7736: $5c
	nop                                              ; $7737: $00
	ld   b, $fd                                      ; $7738: $06 $fd
	ld   e, d                                        ; $773a: $5a
	db   $10                                         ; $773b: $10
	ld   hl, sp+$28                                  ; $773c: $f8 $28
	xor  h                                           ; $773e: $ac
	inc  bc                                          ; $773f: $03
	ld   hl, sp+$20                                  ; $7740: $f8 $20
	xor  d                                           ; $7742: $aa
	inc  bc                                          ; $7743: $03
	db   $ec                                         ; $7744: $ec
	inc  d                                           ; $7745: $14
	xor  b                                           ; $7746: $a8
	inc  bc                                          ; $7747: $03
	db   $ec                                         ; $7748: $ec
	inc  c                                           ; $7749: $0c
	and  [hl]                                        ; $774a: $a6
	inc  bc                                          ; $774b: $03
	ld   d, $16                                      ; $774c: $16 $16
	and  h                                           ; $774e: $a4
	inc  bc                                          ; $774f: $03
	ld   hl, sp+$20                                  ; $7750: $f8 $20
	sbc  d                                           ; $7752: $9a
	inc  h                                           ; $7753: $24
	ld   hl, sp+$28                                  ; $7754: $f8 $28
	sbc  b                                           ; $7756: $98
	inc  h                                           ; $7757: $24
	inc  e                                           ; $7758: $1c
	inc  c                                           ; $7759: $0c
	adc  [hl]                                        ; $775a: $8e
	ld   bc, $041c                                   ; $775b: $01 $1c $04
	adc  h                                           ; $775e: $8c
	ld   bc, $fc1c                                   ; $775f: $01 $1c $fc
	adc  d                                           ; $7762: $8a
	ld   bc, $0c0c                                   ; $7763: $01 $0c $0c
	adc  b                                           ; $7766: $88
	ld   bc, $040c                                   ; $7767: $01 $0c $04
	add  [hl]                                        ; $776a: $86
	ld   bc, $fc0c                                   ; $776b: $01 $0c $fc
	add  h                                           ; $776e: $84
	ld   bc, $0c04                                   ; $776f: $01 $04 $0c
	add  d                                           ; $7772: $82
	nop                                              ; $7773: $00
	inc  b                                           ; $7774: $04
	inc  b                                           ; $7775: $04
	add  b                                           ; $7776: $80
	nop                                              ; $7777: $00
	inc  b                                           ; $7778: $04
	db   $fc                                         ; $7779: $fc
	ld   a, [hl]                                     ; $777a: $7e
	db   $10                                         ; $777b: $10
	dec  bc                                          ; $777c: $0b
	db   $fc                                         ; $777d: $fc
	ld   h, h                                        ; $777e: $64
	ld   hl, $040b                                   ; $777f: $21 $0b $04
	ld   h, d                                        ; $7782: $62
	ld   hl, $0c0b                                   ; $7783: $21 $0b $0c
	ld   h, b                                        ; $7786: $60
	ld   hl, $1214                                   ; $7787: $21 $14 $12
	and  [hl]                                        ; $778a: $a6
	inc  bc                                          ; $778b: $03
	inc  d                                           ; $778c: $14
	ld   a, [de]                                     ; $778d: $1a
	xor  b                                           ; $778e: $a8
	inc  bc                                          ; $778f: $03
	dec  de                                          ; $7790: $1b
	inc  c                                           ; $7791: $0c
	ld   h, [hl]                                     ; $7792: $66
	ld   hl, $fc1b                                   ; $7793: $21 $1b $fc
	ld   l, d                                        ; $7796: $6a
	ld   hl, $041b                                   ; $7797: $21 $1b $04
	ld   l, b                                        ; $779a: $68
	ld   hl, $fc03                                   ; $779b: $21 $03 $fc
	ld   e, [hl]                                     ; $779e: $5e
	jr   nz, @+$05                                   ; $779f: $20 $03

	inc  b                                           ; $77a1: $04
	ld   e, h                                        ; $77a2: $5c
	jr   nz, @+$05                                   ; $77a3: $20 $03

	inc  c                                           ; $77a5: $0c
	ld   e, d                                        ; $77a6: $5a
	jr   nz, @-$12                                   ; $77a7: $20 $ec

	inc  d                                           ; $77a9: $14
	xor  h                                           ; $77aa: $ac
	inc  bc                                          ; $77ab: $03
	db   $ec                                         ; $77ac: $ec
	inc  c                                           ; $77ad: $0c
	xor  d                                           ; $77ae: $aa
	inc  bc                                          ; $77af: $03
	db   $ec                                         ; $77b0: $ec
	inc  c                                           ; $77b1: $0c
	sub  b                                           ; $77b2: $90
	inc  b                                           ; $77b3: $04
	db   $ec                                         ; $77b4: $ec
	db   $fc                                         ; $77b5: $fc
	and  h                                           ; $77b6: $a4
	inc  bc                                          ; $77b7: $03
	db   $ec                                         ; $77b8: $ec
	inc  d                                           ; $77b9: $14
	sub  d                                           ; $77ba: $92
	inc  b                                           ; $77bb: $04
	ld   hl, sp+$20                                  ; $77bc: $f8 $20
	sub  [hl]                                        ; $77be: $96
	ld   [hl+], a                                    ; $77bf: $22
	ld   hl, sp+$28                                  ; $77c0: $f8 $28
	sub  h                                           ; $77c2: $94
	ld   [hl-], a                                    ; $77c3: $32
	ld   a, [bc]                                     ; $77c4: $0a
	inc  c                                           ; $77c5: $0c
	ld   b, b                                        ; $77c6: $40
	ld   bc, $040a                                   ; $77c7: $01 $0a $04
	ld   a, $01                                      ; $77ca: $3e $01
	ld   a, [bc]                                     ; $77cc: $0a
	db   $fc                                         ; $77cd: $fc
	inc  a                                           ; $77ce: $3c
	ld   bc, $f013                                   ; $77cf: $01 $13 $f0
	and  h                                           ; $77d2: $a4
	inc  bc                                          ; $77d3: $03
	ld   a, [de]                                     ; $77d4: $1a
	db   $fc                                         ; $77d5: $fc
	ld   b, d                                        ; $77d6: $42
	ld   bc, $041a                                   ; $77d7: $01 $1a $04
	ld   b, h                                        ; $77da: $44
	ld   bc, $0c02                                   ; $77db: $01 $02 $0c
	ld   a, [hl-]                                    ; $77de: $3a
	nop                                              ; $77df: $00
	ld   [bc], a                                     ; $77e0: $02
	inc  b                                           ; $77e1: $04
	jr   c, jr_023_77e4                              ; $77e2: $38 $00

jr_023_77e4:
	ld   [bc], a                                     ; $77e4: $02
	db   $fc                                         ; $77e5: $fc
	ld   [hl], $00                                   ; $77e6: $36 $00
	inc  de                                          ; $77e8: $13
	ld   a, [de]                                     ; $77e9: $1a
	xor  h                                           ; $77ea: $ac
	inc  bc                                          ; $77eb: $03
	inc  de                                          ; $77ec: $13
	ld   [de], a                                     ; $77ed: $12
	xor  d                                           ; $77ee: $aa
	inc  bc                                          ; $77ef: $03
	db   $ec                                         ; $77f0: $ec
	db   $fc                                         ; $77f1: $fc
	xor  b                                           ; $77f2: $a8
	inc  bc                                          ; $77f3: $03
	db   $ec                                         ; $77f4: $ec
	db   $f4                                         ; $77f5: $f4
	and  [hl]                                        ; $77f6: $a6
	inc  bc                                          ; $77f7: $03
	ld   hl, sp+$28                                  ; $77f8: $f8 $28
	sub  d                                           ; $77fa: $92
	ld   [bc], a                                     ; $77fb: $02
	ld   hl, sp+$20                                  ; $77fc: $f8 $20
	sub  b                                           ; $77fe: $90
	ld   [bc], a                                     ; $77ff: $02
	inc  de                                          ; $7800: $13
	ld   [de], a                                     ; $7801: $12
	sub  [hl]                                        ; $7802: $96
	inc  h                                           ; $7803: $24
	inc  de                                          ; $7804: $13
	ld   a, [de]                                     ; $7805: $1a
	sub  h                                           ; $7806: $94
	inc  h                                           ; $7807: $24
	db   $ec                                         ; $7808: $ec
	inc  d                                           ; $7809: $14
	sub  [hl]                                        ; $780a: $96
	ld   [bc], a                                     ; $780b: $02
	db   $ec                                         ; $780c: $ec
	inc  c                                           ; $780d: $0c
	sub  h                                           ; $780e: $94
	ld   [bc], a                                     ; $780f: $02
	ld   a, [de]                                     ; $7810: $1a
	inc  c                                           ; $7811: $0c
	ld   b, [hl]                                     ; $7812: $46
	ld   de, $0c09                                   ; $7813: $11 $09 $0c
	ld   d, d                                        ; $7816: $52
	ld   bc, $0409                                   ; $7817: $01 $09 $04
	ld   d, b                                        ; $781a: $50
	ld   bc, $fc09                                   ; $781b: $01 $09 $fc
	ld   c, [hl]                                     ; $781e: $4e
	ld   bc, $fc19                                   ; $781f: $01 $19 $fc
	ld   d, h                                        ; $7822: $54
	ld   bc, $0419                                   ; $7823: $01 $19 $04
	ld   d, [hl]                                     ; $7826: $56
	ld   bc, $0c01                                   ; $7827: $01 $01 $0c
	ld   c, h                                        ; $782a: $4c
	nop                                              ; $782b: $00
	ld   bc, $4a04                                   ; $782c: $01 $04 $4a
	nop                                              ; $782f: $00
	ld   bc, $48fc                                   ; $7830: $01 $fc $48
	nop                                              ; $7833: $00
	add  hl, de                                      ; $7834: $19
	inc  c                                           ; $7835: $0c
	ld   e, b                                        ; $7836: $58
	ld   bc, $fced                                   ; $7837: $01 $ed $fc
	xor  h                                           ; $783a: $ac
	inc  bc                                          ; $783b: $03
	db   $ed                                         ; $783c: $ed
	db   $f4                                         ; $783d: $f4
	xor  d                                           ; $783e: $aa
	inc  bc                                          ; $783f: $03
	inc  de                                          ; $7840: $13
	push af                                          ; $7841: $f5
	xor  b                                           ; $7842: $a8
	inc  bc                                          ; $7843: $03
	inc  de                                          ; $7844: $13
	db   $ed                                         ; $7845: $ed
	and  [hl]                                        ; $7846: $a6
	inc  bc                                          ; $7847: $03
	ld   hl, sp-$1b                                  ; $7848: $f8 $e5
	and  h                                           ; $784a: $a4
	inc  bc                                          ; $784b: $03
	db   $ed                                         ; $784c: $ed
	inc  d                                           ; $784d: $14
	sbc  d                                           ; $784e: $9a
	ld   [bc], a                                     ; $784f: $02
	db   $ed                                         ; $7850: $ed
	inc  c                                           ; $7851: $0c
	sbc  b                                           ; $7852: $98
	ld   [bc], a                                     ; $7853: $02
	ld   hl, sp+$27                                  ; $7854: $f8 $27
	sub  [hl]                                        ; $7856: $96
	ld   [bc], a                                     ; $7857: $02
	ld   hl, sp+$1f                                  ; $7858: $f8 $1f
	sub  h                                           ; $785a: $94
	ld   [bc], a                                     ; $785b: $02
	inc  de                                          ; $785c: $13
	dec  de                                          ; $785d: $1b
	sub  d                                           ; $785e: $92
	ld   [bc], a                                     ; $785f: $02
	inc  de                                          ; $7860: $13
	inc  de                                          ; $7861: $13
	sub  b                                           ; $7862: $90
	ld   [bc], a                                     ; $7863: $02
	db   $ed                                         ; $7864: $ed
	db   $f4                                         ; $7865: $f4
	sbc  [hl]                                        ; $7866: $9e
	inc  h                                           ; $7867: $24
	db   $ed                                         ; $7868: $ed
	db   $fc                                         ; $7869: $fc
	sbc  h                                           ; $786a: $9c
	inc  [hl]                                        ; $786b: $34
	ld   [$640c], sp                                 ; $786c: $08 $0c $64
	ld   bc, $0408                                   ; $786f: $01 $08 $04
	ld   h, d                                        ; $7872: $62
	ld   bc, $fc08                                   ; $7873: $01 $08 $fc
	ld   h, b                                        ; $7876: $60
	ld   bc, $fc18                                   ; $7877: $01 $18 $fc
	ld   h, [hl]                                     ; $787a: $66
	ld   bc, $0418                                   ; $787b: $01 $18 $04
	ld   l, b                                        ; $787e: $68
	ld   bc, $0c00                                   ; $787f: $01 $00 $0c
	ld   e, [hl]                                     ; $7882: $5e
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	inc  b                                           ; $7885: $04
	ld   e, h                                        ; $7886: $5c
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	db   $fc                                         ; $7889: $fc
	ld   e, d                                        ; $788a: $5a
	nop                                              ; $788b: $00
	jr   jr_023_789a                                 ; $788c: $18 $0c

	ld   l, d                                        ; $788e: $6a
	ld   bc, $f612                                   ; $788f: $01 $12 $f6
	xor  h                                           ; $7892: $ac
	inc  bc                                          ; $7893: $03
	ld   [de], a                                     ; $7894: $12
	xor  $aa                                         ; $7895: $ee $aa
	inc  bc                                          ; $7897: $03
	ld   hl, sp-$16                                  ; $7898: $f8 $ea

jr_023_789a:
	xor  b                                           ; $789a: $a8
	inc  bc                                          ; $789b: $03
	ld   hl, sp-$1e                                  ; $789c: $f8 $e2
	and  [hl]                                        ; $789e: $a6
	inc  bc                                          ; $789f: $03
	db   $ed                                         ; $78a0: $ed
	inc  d                                           ; $78a1: $14
	sbc  [hl]                                        ; $78a2: $9e
	ld   [bc], a                                     ; $78a3: $02
	db   $ed                                         ; $78a4: $ed
	inc  c                                           ; $78a5: $0c
	sbc  h                                           ; $78a6: $9c
	ld   [bc], a                                     ; $78a7: $02
	ld   hl, sp+$26                                  ; $78a8: $f8 $26
	sbc  d                                           ; $78aa: $9a
	ld   [bc], a                                     ; $78ab: $02
	ld   hl, sp+$1e                                  ; $78ac: $f8 $1e
	sbc  b                                           ; $78ae: $98
	ld   [bc], a                                     ; $78af: $02
	ld   [de], a                                     ; $78b0: $12
	ld   a, [de]                                     ; $78b1: $1a
	sub  [hl]                                        ; $78b2: $96
	ld   [bc], a                                     ; $78b3: $02
	ld   [de], a                                     ; $78b4: $12
	ld   [de], a                                     ; $78b5: $12
	sub  h                                           ; $78b6: $94
	ld   [bc], a                                     ; $78b7: $02
	ld   [de], a                                     ; $78b8: $12
	or   $92                                         ; $78b9: $f6 $92
	inc  b                                           ; $78bb: $04
	ld   [de], a                                     ; $78bc: $12
	xor  $90                                         ; $78bd: $ee $90
	inc  b                                           ; $78bf: $04
	db   $ed                                         ; $78c0: $ed
	db   $f4                                         ; $78c1: $f4
	sbc  d                                           ; $78c2: $9a
	ld   [hl+], a                                    ; $78c3: $22
	db   $ed                                         ; $78c4: $ed
	db   $fc                                         ; $78c5: $fc
	sbc  b                                           ; $78c6: $98
	ld   [hl-], a                                    ; $78c7: $32
	ld   [$760c], sp                                 ; $78c8: $08 $0c $76
	ld   bc, $0408                                   ; $78cb: $01 $08 $04
	ld   [hl], h                                     ; $78ce: $74
	ld   bc, $fc08                                   ; $78cf: $01 $08 $fc
	ld   [hl], d                                     ; $78d2: $72
	ld   bc, $fc18                                   ; $78d3: $01 $18 $fc
	ld   a, b                                        ; $78d6: $78
	ld   bc, $0418                                   ; $78d7: $01 $18 $04
	ld   a, d                                        ; $78da: $7a
	ld   bc, $0c00                                   ; $78db: $01 $00 $0c
	ld   [hl], b                                     ; $78de: $70
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	inc  b                                           ; $78e1: $04
	ld   l, [hl]                                     ; $78e2: $6e
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	db   $fc                                         ; $78e5: $fc
	ld   l, h                                        ; $78e6: $6c
	nop                                              ; $78e7: $00
	jr   jr_023_78f6                                 ; $78e8: $18 $0c

	ld   a, h                                        ; $78ea: $7c
	ld   bc, $ebf8                                   ; $78eb: $01 $f8 $eb
	xor  h                                           ; $78ee: $ac
	inc  bc                                          ; $78ef: $03
	ld   hl, sp-$1d                                  ; $78f0: $f8 $e3
	xor  d                                           ; $78f2: $aa
	inc  bc                                          ; $78f3: $03
	db   $ed                                         ; $78f4: $ed
	inc  d                                           ; $78f5: $14

jr_023_78f6:
	and  d                                           ; $78f6: $a2
	ld   [bc], a                                     ; $78f7: $02
	db   $ed                                         ; $78f8: $ed
	inc  c                                           ; $78f9: $0c
	and  b                                           ; $78fa: $a0
	ld   [bc], a                                     ; $78fb: $02
	ld   hl, sp+$25                                  ; $78fc: $f8 $25
	sbc  [hl]                                        ; $78fe: $9e
	ld   [bc], a                                     ; $78ff: $02
	ld   hl, sp+$1d                                  ; $7900: $f8 $1d
	sbc  h                                           ; $7902: $9c
	ld   [bc], a                                     ; $7903: $02
	ld   de, $9a1a                                   ; $7904: $11 $1a $9a
	ld   [bc], a                                     ; $7907: $02
	ld   de, $9812                                   ; $7908: $11 $12 $98
	ld   [bc], a                                     ; $790b: $02
	ld   de, $96f6                                   ; $790c: $11 $f6 $96
	ld   [bc], a                                     ; $790f: $02
	ld   de, $94ee                                   ; $7910: $11 $ee $94
	ld   [bc], a                                     ; $7913: $02
	ld   hl, sp-$15                                  ; $7914: $f8 $eb
	sub  d                                           ; $7916: $92
	inc  b                                           ; $7917: $04
	ld   hl, sp-$1d                                  ; $7918: $f8 $e3
	sub  b                                           ; $791a: $90
	inc  b                                           ; $791b: $04
	db   $ed                                         ; $791c: $ed
	db   $f4                                         ; $791d: $f4
	sub  [hl]                                        ; $791e: $96
	ld   [hl+], a                                    ; $791f: $22
	db   $ed                                         ; $7920: $ed
	db   $fc                                         ; $7921: $fc
	sub  h                                           ; $7922: $94
	ld   [hl-], a                                    ; $7923: $32
	push hl                                          ; $7924: $e5
	db   $10                                         ; $7925: $10
	or   [hl]                                        ; $7926: $b6
	nop                                              ; $7927: $00
	push hl                                          ; $7928: $e5
	ld   [$00b4], sp                                 ; $7929: $08 $b4 $00
	db   $ed                                         ; $792c: $ed
	nop                                              ; $792d: $00
	or   d                                           ; $792e: $b2
	nop                                              ; $792f: $00
	db   $ed                                         ; $7930: $ed
	ld   hl, sp-$50                                  ; $7931: $f8 $b0
	nop                                              ; $7933: $00
	jr   @-$02                                       ; $7934: $18 $fc

	adc  d                                           ; $7936: $8a
	ld   bc, $0418                                   ; $7937: $01 $18 $04
	adc  h                                           ; $793a: $8c
	ld   bc, $0c08                                   ; $793b: $01 $08 $0c
	adc  b                                           ; $793e: $88
	ld   bc, $0408                                   ; $793f: $01 $08 $04
	add  [hl]                                        ; $7942: $86
	ld   bc, $fc08                                   ; $7943: $01 $08 $fc
	add  h                                           ; $7946: $84
	ld   bc, $0c00                                   ; $7947: $01 $00 $0c
	add  d                                           ; $794a: $82
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	inc  b                                           ; $794d: $04
	add  b                                           ; $794e: $80
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	db   $fc                                         ; $7951: $fc
	ld   a, [hl]                                     ; $7952: $7e
	nop                                              ; $7953: $00
	jr   jr_023_7962                                 ; $7954: $18 $0c

	adc  [hl]                                        ; $7956: $8e
	ld   bc, $0ced                                   ; $7957: $01 $ed $0c
	sbc  [hl]                                        ; $795a: $9e
	ld   [hl+], a                                    ; $795b: $22
	db   $ed                                         ; $795c: $ed
	inc  d                                           ; $795d: $14
	sbc  h                                           ; $795e: $9c
	ld   [hl+], a                                    ; $795f: $22
	ld   hl, sp+$24                                  ; $7960: $f8 $24

jr_023_7962:
	and  d                                           ; $7962: $a2
	ld   [bc], a                                     ; $7963: $02
	ld   hl, sp+$1c                                  ; $7964: $f8 $1c
	and  b                                           ; $7966: $a0
	ld   [bc], a                                     ; $7967: $02
	db   $10                                         ; $7968: $10
	ld   a, [de]                                     ; $7969: $1a
	sbc  [hl]                                        ; $796a: $9e
	ld   [bc], a                                     ; $796b: $02
	db   $10                                         ; $796c: $10
	ld   [de], a                                     ; $796d: $12
	sbc  h                                           ; $796e: $9c
	ld   [bc], a                                     ; $796f: $02
	db   $10                                         ; $7970: $10
	or   $9a                                         ; $7971: $f6 $9a
	ld   [bc], a                                     ; $7973: $02
	db   $10                                         ; $7974: $10
	xor  $98                                         ; $7975: $ee $98
	ld   [bc], a                                     ; $7977: $02
	ld   hl, sp-$14                                  ; $7978: $f8 $ec
	sub  [hl]                                        ; $797a: $96
	ld   [bc], a                                     ; $797b: $02
	ld   hl, sp-$1c                                  ; $797c: $f8 $e4
	sub  h                                           ; $797e: $94
	ld   [bc], a                                     ; $797f: $02
	db   $ed                                         ; $7980: $ed
	db   $fc                                         ; $7981: $fc
	sub  d                                           ; $7982: $92
	ld   [bc], a                                     ; $7983: $02
	db   $ed                                         ; $7984: $ed
	db   $f4                                         ; $7985: $f4
	sub  b                                           ; $7986: $90
	ld   [de], a                                     ; $7987: $12
	db   $ed                                         ; $7988: $ed
	ld   [$00ba], sp                                 ; $7989: $08 $ba $00
	db   $ed                                         ; $798c: $ed
	nop                                              ; $798d: $00
	cp   b                                           ; $798e: $b8
	nop                                              ; $798f: $00
	ld   [$76fc], sp                                 ; $7990: $08 $fc $76
	ld   hl, $0408                                   ; $7993: $21 $08 $04
	ld   [hl], h                                     ; $7996: $74
	ld   hl, $0c08                                   ; $7997: $21 $08 $0c
	ld   [hl], d                                     ; $799a: $72
	ld   hl, $0c18                                   ; $799b: $21 $18 $0c
	ld   a, b                                        ; $799e: $78
	ld   hl, $0418                                   ; $799f: $21 $18 $04
	ld   a, d                                        ; $79a2: $7a
	ld   hl, $fc00                                   ; $79a3: $21 $00 $fc
	ld   [hl], b                                     ; $79a6: $70
	jr   nz, jr_023_79a9                             ; $79a7: $20 $00

jr_023_79a9:
	inc  b                                           ; $79a9: $04
	ld   l, [hl]                                     ; $79aa: $6e
	jr   nz, jr_023_79ad                             ; $79ab: $20 $00

jr_023_79ad:
	inc  c                                           ; $79ad: $0c
	ld   l, h                                        ; $79ae: $6c
	jr   nz, jr_023_79c9                             ; $79af: $20 $18

	db   $fc                                         ; $79b1: $fc
	ld   a, h                                        ; $79b2: $7c
	ld   hl, $0eec                                   ; $79b3: $21 $ec $0e
	sbc  d                                           ; $79b6: $9a
	dec  h                                           ; $79b7: $25
	db   $ec                                         ; $79b8: $ec
	ld   d, $98                                      ; $79b9: $16 $98

jr_023_79bb:
	dec  h                                           ; $79bb: $25
	ld   hl, sp+$2c                                  ; $79bc: $f8 $2c
	sbc  [hl]                                        ; $79be: $9e
	dec  h                                           ; $79bf: $25
	ld   hl, sp+$34                                  ; $79c0: $f8 $34
	sbc  h                                           ; $79c2: $9c
	dec  h                                           ; $79c3: $25
	dec  de                                          ; $79c4: $1b
	rra                                              ; $79c5: $1f
	and  d                                           ; $79c6: $a2
	dec  b                                           ; $79c7: $05
	dec  de                                          ; $79c8: $1b

jr_023_79c9:
	rla                                              ; $79c9: $17
	and  b                                           ; $79ca: $a0
	dec  b                                           ; $79cb: $05
	dec  de                                          ; $79cc: $1b
	pop  af                                          ; $79cd: $f1
	sbc  [hl]                                        ; $79ce: $9e
	dec  b                                           ; $79cf: $05
	dec  de                                          ; $79d0: $1b

jr_023_79d1:
	jp   hl                                          ; $79d1: $e9


	sbc  h                                           ; $79d2: $9c

jr_023_79d3:
	dec  b                                           ; $79d3: $05
	db   $ec                                         ; $79d4: $ec
	ld   a, [$0596]                                  ; $79d5: $fa $96 $05
	db   $ec                                         ; $79d8: $ec
	ldh  a, [c]                                      ; $79d9: $f2
	sub  h                                           ; $79da: $94
	dec  b                                           ; $79db: $05
	ld   hl, sp-$24                                  ; $79dc: $f8 $dc
	sbc  d                                           ; $79de: $9a
	dec  b                                           ; $79df: $05
	ld   hl, sp-$2c                                  ; $79e0: $f8 $d4
	sbc  b                                           ; $79e2: $98
	dec  d                                           ; $79e3: $15
	db   $f4                                         ; $79e4: $f4
	db   $10                                         ; $79e5: $10
	jp   nc, $f400                                   ; $79e6: $d2 $00 $f4

	ld   hl, sp-$34                                  ; $79e9: $f8 $cc
	nop                                              ; $79eb: $00
	db   $e4                                         ; $79ec: $e4
	db   $10                                         ; $79ed: $10
	jp   z, $e400                                    ; $79ee: $ca $00 $e4

	ld   [$00c8], sp                                 ; $79f1: $08 $c8 $00
	db   $e4                                         ; $79f4: $e4
	nop                                              ; $79f5: $00
	add  $00                                         ; $79f6: $c6 $00
	db   $e4                                         ; $79f8: $e4
	ld   hl, sp-$3c                                  ; $79f9: $f8 $c4
	nop                                              ; $79fb: $00
	ld   [$64fc], sp                                 ; $79fc: $08 $fc $64
	ld   hl, $0408                                   ; $79ff: $21 $08 $04
	ld   h, d                                        ; $7a02: $62
	ld   hl, $0c08                                   ; $7a03: $21 $08 $0c
	ld   h, b                                        ; $7a06: $60
	ld   hl, $0c18                                   ; $7a07: $21 $18 $0c
	ld   h, [hl]                                     ; $7a0a: $66
	ld   hl, $0418                                   ; $7a0b: $21 $18 $04
	ld   l, b                                        ; $7a0e: $68
	ld   hl, $fc00                                   ; $7a0f: $21 $00 $fc
	ld   e, [hl]                                     ; $7a12: $5e
	jr   nz, jr_023_7a15                             ; $7a13: $20 $00

jr_023_7a15:
	inc  b                                           ; $7a15: $04
	ld   e, h                                        ; $7a16: $5c
	jr   nz, jr_023_7a19                             ; $7a17: $20 $00

jr_023_7a19:
	inc  c                                           ; $7a19: $0c
	ld   e, d                                        ; $7a1a: $5a
	jr   nz, jr_023_7a35                             ; $7a1b: $20 $18

	db   $fc                                         ; $7a1d: $fc
	ld   l, d                                        ; $7a1e: $6a
	ld   hl, $10ec                                   ; $7a1f: $21 $ec $10
	sub  [hl]                                        ; $7a22: $96
	dec  h                                           ; $7a23: $25
	db   $ec                                         ; $7a24: $ec
	jr   jr_023_79bb                                 ; $7a25: $18 $94

	dec  h                                           ; $7a27: $25
	ld   hl, sp+$30                                  ; $7a28: $f8 $30
	sbc  d                                           ; $7a2a: $9a
	dec  h                                           ; $7a2b: $25
	ld   hl, sp+$38                                  ; $7a2c: $f8 $38
	sbc  b                                           ; $7a2e: $98
	dec  h                                           ; $7a2f: $25
	dec  e                                           ; $7a30: $1d
	jr   jr_023_79d1                                 ; $7a31: $18 $9e

	dec  h                                           ; $7a33: $25
	dec  e                                           ; $7a34: $1d

jr_023_7a35:
	jr   nz, jr_023_79d3                             ; $7a35: $20 $9c

	dec  h                                           ; $7a37: $25
	dec  e                                           ; $7a38: $1d
	ldh  a, [hScriptOpcodeParams+2]                                    ; $7a39: $f0 $a2
	dec  b                                           ; $7a3b: $05
	dec  e                                           ; $7a3c: $1d
	add  sp, -$60                                    ; $7a3d: $e8 $a0
	dec  b                                           ; $7a3f: $05
	db   $ec                                         ; $7a40: $ec
	ld   hl, sp-$66                                  ; $7a41: $f8 $9a
	dec  b                                           ; $7a43: $05
	db   $ec                                         ; $7a44: $ec
	ldh  a, [$98]                                    ; $7a45: $f0 $98
	dec  b                                           ; $7a47: $05
	ld   hl, sp-$28                                  ; $7a48: $f8 $d8
	sbc  [hl]                                        ; $7a4a: $9e
	dec  b                                           ; $7a4b: $05
	ld   hl, sp-$30                                  ; $7a4c: $f8 $d0
	sbc  h                                           ; $7a4e: $9c
	dec  d                                           ; $7a4f: $15
	db   $ec                                         ; $7a50: $ec
	ld   [de], a                                     ; $7a51: $12
	jp   c, $e400                                    ; $7a52: $da $00 $e4

	or   $d4                                         ; $7a55: $f6 $d4
	nop                                              ; $7a57: $00
	call c, $d808                                    ; $7a58: $dc $08 $d8
	nop                                              ; $7a5b: $00
	call c, $d600                                    ; $7a5c: $dc $00 $d6
	nop                                              ; $7a5f: $00
	ld   [$52fc], sp                                 ; $7a60: $08 $fc $52
	ld   hl, $0408                                   ; $7a63: $21 $08 $04
	ld   d, b                                        ; $7a66: $50
	ld   hl, $0c08                                   ; $7a67: $21 $08 $0c
	ld   c, [hl]                                     ; $7a6a: $4e
	ld   hl, $0c18                                   ; $7a6b: $21 $18 $0c
	ld   d, h                                        ; $7a6e: $54
	ld   hl, $0418                                   ; $7a6f: $21 $18 $04
	ld   d, [hl]                                     ; $7a72: $56
	ld   hl, $fc00                                   ; $7a73: $21 $00 $fc
	ld   c, h                                        ; $7a76: $4c
	jr   nz, jr_023_7a79                             ; $7a77: $20 $00

jr_023_7a79:
	inc  b                                           ; $7a79: $04
	ld   c, d                                        ; $7a7a: $4a
	jr   nz, jr_023_7a7d                             ; $7a7b: $20 $00

jr_023_7a7d:
	inc  c                                           ; $7a7d: $0c
	ld   c, b                                        ; $7a7e: $48
	jr   nz, @+$1a                                   ; $7a7f: $20 $18

	db   $fc                                         ; $7a81: $fc
	ld   e, b                                        ; $7a82: $58
	ld   hl, $18ec                                   ; $7a83: $21 $ec $18
	sub  d                                           ; $7a86: $92
	dec  b                                           ; $7a87: $05
	db   $ec                                         ; $7a88: $ec
	db   $10                                         ; $7a89: $10
	sub  b                                           ; $7a8a: $90
	dec  b                                           ; $7a8b: $05
	ld   hl, sp+$32                                  ; $7a8c: $f8 $32
	sub  [hl]                                        ; $7a8e: $96
	dec  h                                           ; $7a8f: $25
	ld   hl, sp+$3a                                  ; $7a90: $f8 $3a
	sub  h                                           ; $7a92: $94
	dec  h                                           ; $7a93: $25
	ld   e, $18                                      ; $7a94: $1e $18
	sbc  d                                           ; $7a96: $9a
	dec  h                                           ; $7a97: $25
	ld   e, $20                                      ; $7a98: $1e $20
	sbc  b                                           ; $7a9a: $98
	dec  h                                           ; $7a9b: $25
	ld   e, $e8                                      ; $7a9c: $1e $e8
	sbc  [hl]                                        ; $7a9e: $9e
	dec  h                                           ; $7a9f: $25
	ld   e, $f0                                      ; $7aa0: $1e $f0
	sbc  h                                           ; $7aa2: $9c
	dec  h                                           ; $7aa3: $25
	db   $ec                                         ; $7aa4: $ec
	ld   hl, sp-$62                                  ; $7aa5: $f8 $9e
	dec  b                                           ; $7aa7: $05
	db   $ec                                         ; $7aa8: $ec
	ldh  a, [$9c]                                    ; $7aa9: $f0 $9c
	dec  b                                           ; $7aab: $05
	ld   hl, sp-$2a                                  ; $7aac: $f8 $d6
	and  d                                           ; $7aae: $a2
	dec  b                                           ; $7aaf: $05
	ld   hl, sp-$32                                  ; $7ab0: $f8 $ce
	and  b                                           ; $7ab2: $a0
	dec  d                                           ; $7ab3: $15
	ld   [$400c], sp                                 ; $7ab4: $08 $0c $40
	ld   bc, $0408                                   ; $7ab7: $01 $08 $04
	ld   a, $01                                      ; $7aba: $3e $01
	ld   [$3cfc], sp                                 ; $7abc: $08 $fc $3c
	ld   bc, $fc18                                   ; $7abf: $01 $18 $fc
	ld   b, d                                        ; $7ac2: $42
	ld   bc, $0418                                   ; $7ac3: $01 $18 $04
	ld   b, h                                        ; $7ac6: $44
	ld   bc, $0c00                                   ; $7ac7: $01 $00 $0c
	ld   a, [hl-]                                    ; $7aca: $3a
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	inc  b                                           ; $7acd: $04
	jr   c, jr_023_7ad0                              ; $7ace: $38 $00

jr_023_7ad0:
	nop                                              ; $7ad0: $00
	db   $fc                                         ; $7ad1: $fc
	ld   [hl], $00                                   ; $7ad2: $36 $00
	jr   jr_023_7ae2                                 ; $7ad4: $18 $0c

	ld   b, [hl]                                     ; $7ad6: $46
	ld   bc, $18ec                                   ; $7ad7: $01 $ec $18
	sub  [hl]                                        ; $7ada: $96
	inc  b                                           ; $7adb: $04
	db   $ec                                         ; $7adc: $ec
	db   $10                                         ; $7add: $10
	sub  h                                           ; $7ade: $94
	inc  b                                           ; $7adf: $04
	ld   hl, sp+$3b                                  ; $7ae0: $f8 $3b

jr_023_7ae2:
	sub  d                                           ; $7ae2: $92
	inc  b                                           ; $7ae3: $04
	ld   hl, sp+$33                                  ; $7ae4: $f8 $33
	sub  b                                           ; $7ae6: $90
	inc  b                                           ; $7ae7: $04
	ld   e, $19                                      ; $7ae8: $1e $19
	sub  [hl]                                        ; $7aea: $96
	inc  h                                           ; $7aeb: $24
	ld   e, $21                                      ; $7aec: $1e $21
	sub  h                                           ; $7aee: $94
	inc  h                                           ; $7aef: $24
	ld   e, $e7                                      ; $7af0: $1e $e7
	sbc  d                                           ; $7af2: $9a
	inc  h                                           ; $7af3: $24
	ld   e, $ef                                      ; $7af4: $1e $ef
	sbc  b                                           ; $7af6: $98
	inc  h                                           ; $7af7: $24
	ld   hl, sp-$33                                  ; $7af8: $f8 $cd
	sbc  [hl]                                        ; $7afa: $9e
	inc  h                                           ; $7afb: $24
	ld   hl, sp-$2b                                  ; $7afc: $f8 $d5
	sbc  h                                           ; $7afe: $9c
	inc  h                                           ; $7aff: $24
	db   $ec                                         ; $7b00: $ec
	ld   hl, sp-$5e                                  ; $7b01: $f8 $a2
	inc  b                                           ; $7b03: $04
	db   $ec                                         ; $7b04: $ec
	ldh  a, [hScriptOpcodeParams]                                    ; $7b05: $f0 $a0
	inc  d                                           ; $7b07: $14
	ld   [$520c], sp                                 ; $7b08: $08 $0c $52
	ld   bc, $0408                                   ; $7b0b: $01 $08 $04
	ld   d, b                                        ; $7b0e: $50
	ld   bc, $fc08                                   ; $7b0f: $01 $08 $fc
	ld   c, [hl]                                     ; $7b12: $4e
	ld   bc, $fc18                                   ; $7b13: $01 $18 $fc
	ld   d, h                                        ; $7b16: $54
	ld   bc, $0418                                   ; $7b17: $01 $18 $04
	ld   d, [hl]                                     ; $7b1a: $56
	ld   bc, $0c00                                   ; $7b1b: $01 $00 $0c
	ld   c, h                                        ; $7b1e: $4c
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	inc  b                                           ; $7b21: $04
	ld   c, d                                        ; $7b22: $4a
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	db   $fc                                         ; $7b25: $fc
	ld   c, b                                        ; $7b26: $48
	nop                                              ; $7b27: $00

jr_023_7b28:
	jr   jr_023_7b36                                 ; $7b28: $18 $0c

	ld   e, b                                        ; $7b2a: $58
	ld   bc, $2220                                   ; $7b2b: $01 $20 $22
	sub  d                                           ; $7b2e: $92
	ld   [bc], a                                     ; $7b2f: $02
	jr   nz, jr_023_7b4c                             ; $7b30: $20 $1a

	sub  b                                           ; $7b32: $90
	ld   [bc], a                                     ; $7b33: $02
	jr   nz, @-$18                                   ; $7b34: $20 $e6

jr_023_7b36:
	sub  [hl]                                        ; $7b36: $96
	ld   [hl+], a                                    ; $7b37: $22
	jr   nz, jr_023_7b28                             ; $7b38: $20 $ee

	sub  h                                           ; $7b3a: $94
	ld   [hl+], a                                    ; $7b3b: $22
	ld   hl, sp-$34                                  ; $7b3c: $f8 $cc
	sbc  d                                           ; $7b3e: $9a
	ld   [hl+], a                                    ; $7b3f: $22
	ld   hl, sp-$2c                                  ; $7b40: $f8 $d4
	sbc  b                                           ; $7b42: $98
	ld   [hl+], a                                    ; $7b43: $22
	db   $ec                                         ; $7b44: $ec
	ldh  a, [$9e]                                    ; $7b45: $f0 $9e
	ld   [hl+], a                                    ; $7b47: $22
	db   $ec                                         ; $7b48: $ec

jr_023_7b49:
	ld   hl, sp-$64                                  ; $7b49: $f8 $9c
	ld   [hl+], a                                    ; $7b4b: $22

jr_023_7b4c:
	db   $ec                                         ; $7b4c: $ec
	jr   @-$64                                       ; $7b4d: $18 $9a

	ld   [bc], a                                     ; $7b4f: $02
	db   $ec                                         ; $7b50: $ec
	db   $10                                         ; $7b51: $10
	sbc  b                                           ; $7b52: $98
	ld   [bc], a                                     ; $7b53: $02
	ld   hl, sp+$3c                                  ; $7b54: $f8 $3c
	sub  [hl]                                        ; $7b56: $96
	ld   [bc], a                                     ; $7b57: $02
	ld   hl, sp+$34                                  ; $7b58: $f8 $34
	sub  h                                           ; $7b5a: $94
	ld   [de], a                                     ; $7b5b: $12
	ld   [$640c], sp                                 ; $7b5c: $08 $0c $64
	ld   bc, $0408                                   ; $7b5f: $01 $08 $04
	ld   h, d                                        ; $7b62: $62
	ld   bc, $fc08                                   ; $7b63: $01 $08 $fc
	ld   h, b                                        ; $7b66: $60
	ld   bc, $fc18                                   ; $7b67: $01 $18 $fc
	ld   h, [hl]                                     ; $7b6a: $66
	ld   bc, $0418                                   ; $7b6b: $01 $18 $04
	ld   l, b                                        ; $7b6e: $68
	ld   bc, $0c00                                   ; $7b6f: $01 $00 $0c
	ld   e, [hl]                                     ; $7b72: $5e
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	inc  b                                           ; $7b75: $04
	ld   e, h                                        ; $7b76: $5c
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	db   $fc                                         ; $7b79: $fc
	ld   e, d                                        ; $7b7a: $5a
	nop                                              ; $7b7b: $00
	jr   @+$0e                                       ; $7b7c: $18 $0c

	ld   l, d                                        ; $7b7e: $6a
	ld   bc, $3df8                                   ; $7b7f: $01 $f8 $3d
	sbc  d                                           ; $7b82: $9a
	ld   [bc], a                                     ; $7b83: $02
	ld   hl, sp+$35                                  ; $7b84: $f8 $35
	sbc  b                                           ; $7b86: $98
	ld   [bc], a                                     ; $7b87: $02
	ld   hl, $9623                                   ; $7b88: $21 $23 $96
	ld   [bc], a                                     ; $7b8b: $02
	ld   hl, $941b                                   ; $7b8c: $21 $1b $94
	ld   [bc], a                                     ; $7b8f: $02
	ld   hl, $92ed                                   ; $7b90: $21 $ed $92
	ld   [bc], a                                     ; $7b93: $02
	ld   hl, $90e5                                   ; $7b94: $21 $e5 $90
	ld   [bc], a                                     ; $7b97: $02
	ld   hl, sp-$35                                  ; $7b98: $f8 $cb
	sub  [hl]                                        ; $7b9a: $96
	ld   [hl+], a                                    ; $7b9b: $22
	ld   hl, sp-$2d                                  ; $7b9c: $f8 $d3
	sub  h                                           ; $7b9e: $94
	ld   [hl+], a                                    ; $7b9f: $22
	db   $ec                                         ; $7ba0: $ec

jr_023_7ba1:
	ldh  a, [$9a]                                    ; $7ba1: $f0 $9a
	ld   [hl+], a                                    ; $7ba3: $22
	db   $ec                                         ; $7ba4: $ec
	ld   hl, sp-$68                                  ; $7ba5: $f8 $98
	ld   [hl+], a                                    ; $7ba7: $22
	db   $ec                                         ; $7ba8: $ec
	jr   jr_023_7b49                                 ; $7ba9: $18 $9e

	ld   [bc], a                                     ; $7bab: $02
	db   $ec                                         ; $7bac: $ec
	db   $10                                         ; $7bad: $10
	sbc  h                                           ; $7bae: $9c
	ld   [de], a                                     ; $7baf: $12
	ld   [$760c], sp                                 ; $7bb0: $08 $0c $76
	ld   bc, $0408                                   ; $7bb3: $01 $08 $04
	ld   [hl], h                                     ; $7bb6: $74
	ld   bc, $fc08                                   ; $7bb7: $01 $08 $fc
	ld   [hl], d                                     ; $7bba: $72
	ld   bc, $fc18                                   ; $7bbb: $01 $18 $fc
	ld   a, b                                        ; $7bbe: $78
	ld   bc, $0418                                   ; $7bbf: $01 $18 $04
	ld   a, d                                        ; $7bc2: $7a
	ld   bc, $0c00                                   ; $7bc3: $01 $00 $0c
	ld   [hl], b                                     ; $7bc6: $70
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	inc  b                                           ; $7bc9: $04
	ld   l, [hl]                                     ; $7bca: $6e
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	db   $fc                                         ; $7bcd: $fc
	ld   l, h                                        ; $7bce: $6c
	nop                                              ; $7bcf: $00
	jr   jr_023_7bde                                 ; $7bd0: $18 $0c

	ld   a, h                                        ; $7bd2: $7c
	ld   bc, $f0ec                                   ; $7bd3: $01 $ec $f0
	sub  [hl]                                        ; $7bd6: $96
	ld   [hl+], a                                    ; $7bd7: $22
	db   $ec                                         ; $7bd8: $ec
	ld   hl, sp-$6c                                  ; $7bd9: $f8 $94
	ld   [hl+], a                                    ; $7bdb: $22
	ld   hl, sp-$2e                                  ; $7bdc: $f8 $d2

jr_023_7bde:
	sub  d                                           ; $7bde: $92
	ld   [bc], a                                     ; $7bdf: $02
	ld   hl, sp-$36                                  ; $7be0: $f8 $ca
	sub  b                                           ; $7be2: $90
	ld   [bc], a                                     ; $7be3: $02
	ld   hl, sp+$3e                                  ; $7be4: $f8 $3e
	sbc  [hl]                                        ; $7be6: $9e
	ld   [bc], a                                     ; $7be7: $02
	ld   hl, sp+$36                                  ; $7be8: $f8 $36
	sbc  h                                           ; $7bea: $9c
	ld   [bc], a                                     ; $7beb: $02
	ld   [hl+], a                                    ; $7bec: $22
	inc  hl                                          ; $7bed: $23
	sbc  d                                           ; $7bee: $9a
	ld   [bc], a                                     ; $7bef: $02
	ld   [hl+], a                                    ; $7bf0: $22
	dec  de                                          ; $7bf1: $1b
	sbc  b                                           ; $7bf2: $98
	ld   [bc], a                                     ; $7bf3: $02
	ld   [hl+], a                                    ; $7bf4: $22
	db   $ed                                         ; $7bf5: $ed
	sub  [hl]                                        ; $7bf6: $96
	ld   [bc], a                                     ; $7bf7: $02
	ld   [hl+], a                                    ; $7bf8: $22
	push hl                                          ; $7bf9: $e5
	sub  h                                           ; $7bfa: $94
	ld   [bc], a                                     ; $7bfb: $02
	db   $ec                                         ; $7bfc: $ec
	jr   jr_023_7ba1                                 ; $7bfd: $18 $a2

	ld   [bc], a                                     ; $7bff: $02
	db   $ec                                         ; $7c00: $ec
	db   $10                                         ; $7c01: $10
	and  b                                           ; $7c02: $a0
	ld   [de], a                                     ; $7c03: $12
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
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
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
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
