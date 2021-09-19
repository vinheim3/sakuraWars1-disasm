; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $091", ROMX[$4000], BANK[$91]

CharacterPortraitTileMaps::
	dw .entry00-CharacterPortraitTileMaps
	dw $0078
	dw $0414
	dw $0708
	dw $09a8
	dw $0f3c
	dw $11f8
	dw $14b4
	dw $14ec
	dw $1508
	dw $1754
	dw $1968
	dw $1b60
	dw $1bd0
	dw $1c5c
	dw $1ccc
	dw $1d58
	dw $1dac
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000
	dw $0000

.entry00:
	db $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $18, $00, $00, $00, $00
	db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $00, $00, $00, $00


	nop                                              ; $4078: $00
	ld   bc, $0302                                   ; $4079: $01 $02 $03
	inc  b                                           ; $407c: $04
	dec  b                                           ; $407d: $05
	ld   b, $07                                      ; $407e: $06 $07
	ld   [$0a09], sp                                 ; $4080: $08 $09 $0a
	dec  bc                                          ; $4083: $0b
	inc  c                                           ; $4084: $0c
	dec  c                                           ; $4085: $0d
	ld   c, $0f                                      ; $4086: $0e $0f
	db   $10                                         ; $4088: $10
	ld   de, $1312                                   ; $4089: $11 $12 $13
	inc  d                                           ; $408c: $14
	dec  d                                           ; $408d: $15
	ld   d, $17                                      ; $408e: $16 $17
	rst  $38                                         ; $4090: $ff
	rst  $38                                         ; $4091: $ff
	ldh  a, [rSB]                                    ; $4092: $f0 $01
	nop                                              ; $4094: $00
	ld   bc, $0302                                   ; $4095: $01 $02 $03
	inc  b                                           ; $4098: $04
	dec  b                                           ; $4099: $05
	ld   b, $07                                      ; $409a: $06 $07
	jr   @+$1b                                       ; $409c: $18 $19

	ld   a, [de]                                     ; $409e: $1a
	dec  bc                                          ; $409f: $0b
	inc  c                                           ; $40a0: $0c
	dec  de                                          ; $40a1: $1b
	ld   c, $0f                                      ; $40a2: $0e $0f
	db   $10                                         ; $40a4: $10
	ld   de, $1312                                   ; $40a5: $11 $12 $13
	inc  d                                           ; $40a8: $14
	dec  d                                           ; $40a9: $15
	ld   d, $17                                      ; $40aa: $16 $17
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	ldh  a, [rSB]                                    ; $40ae: $f0 $01
	nop                                              ; $40b0: $00
	ld   bc, $0302                                   ; $40b1: $01 $02 $03
	inc  e                                           ; $40b4: $1c
	dec  e                                           ; $40b5: $1d
	ld   e, $07                                      ; $40b6: $1e $07
	rra                                              ; $40b8: $1f
	jr   nz, jr_091_40dc                             ; $40b9: $20 $21

	ld   [hl+], a                                    ; $40bb: $22
	inc  c                                           ; $40bc: $0c
	inc  hl                                          ; $40bd: $23
	ld   c, $0f                                      ; $40be: $0e $0f
	db   $10                                         ; $40c0: $10
	ld   de, $1312                                   ; $40c1: $11 $12 $13
	inc  d                                           ; $40c4: $14
	dec  d                                           ; $40c5: $15
	ld   d, $17                                      ; $40c6: $16 $17
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	ldh  a, [rSB]                                    ; $40ca: $f0 $01
	nop                                              ; $40cc: $00
	ld   bc, $0302                                   ; $40cd: $01 $02 $03
	inc  h                                           ; $40d0: $24
	dec  h                                           ; $40d1: $25
	ld   b, $07                                      ; $40d2: $06 $07
	ld   h, $27                                      ; $40d4: $26 $27
	jr   z, jr_091_4101                              ; $40d6: $28 $29

	ld   a, [hl+]                                    ; $40d8: $2a
	dec  hl                                          ; $40d9: $2b
	inc  l                                           ; $40da: $2c
	rrca                                             ; $40db: $0f

jr_091_40dc:
	db   $10                                         ; $40dc: $10
	ld   l, e                                        ; $40dd: $6b
	ld   [de], a                                     ; $40de: $12
	inc  de                                          ; $40df: $13
	inc  d                                           ; $40e0: $14
	dec  d                                           ; $40e1: $15
	ld   d, $17                                      ; $40e2: $16 $17
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	ldh  a, [rSB]                                    ; $40e6: $f0 $01
	nop                                              ; $40e8: $00
	ld   bc, $0302                                   ; $40e9: $01 $02 $03
	dec  l                                           ; $40ec: $2d
	ld   l, $06                                      ; $40ed: $2e $06
	rlca                                             ; $40ef: $07
	cpl                                              ; $40f0: $2f
	jr   nc, jr_091_4124                             ; $40f1: $30 $31

	dec  bc                                          ; $40f3: $0b
	inc  c                                           ; $40f4: $0c
	ld   [hl-], a                                    ; $40f5: $32
	ld   c, $0f                                      ; $40f6: $0e $0f
	db   $10                                         ; $40f8: $10
	ld   de, $1312                                   ; $40f9: $11 $12 $13
	inc  d                                           ; $40fc: $14
	dec  d                                           ; $40fd: $15
	ld   d, $17                                      ; $40fe: $16 $17
	rst  $38                                         ; $4100: $ff

jr_091_4101:
	rst  $38                                         ; $4101: $ff
	ldh  a, [rSB]                                    ; $4102: $f0 $01
	nop                                              ; $4104: $00
	ld   bc, $0302                                   ; $4105: $01 $02 $03
	dec  l                                           ; $4108: $2d
	ld   l, $06                                      ; $4109: $2e $06
	rlca                                             ; $410b: $07
	cpl                                              ; $410c: $2f
	jr   nc, jr_091_4140                             ; $410d: $30 $31

	dec  bc                                          ; $410f: $0b
	inc  sp                                          ; $4110: $33
	dec  c                                           ; $4111: $0d
	inc  [hl]                                        ; $4112: $34
	rrca                                             ; $4113: $0f
	db   $10                                         ; $4114: $10
	ld   de, $1312                                   ; $4115: $11 $12 $13
	inc  d                                           ; $4118: $14
	dec  d                                           ; $4119: $15
	ld   d, $17                                      ; $411a: $16 $17
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	ldh  a, [rSB]                                    ; $411e: $f0 $01
	nop                                              ; $4120: $00
	ld   bc, $0302                                   ; $4121: $01 $02 $03

jr_091_4124:
	dec  [hl]                                        ; $4124: $35
	ld   [hl], $06                                   ; $4125: $36 $06
	rlca                                             ; $4127: $07
	scf                                              ; $4128: $37
	jr   c, jr_091_4164                              ; $4129: $38 $39

	dec  bc                                          ; $412b: $0b
	inc  c                                           ; $412c: $0c
	ld   a, [hl-]                                    ; $412d: $3a
	ld   c, $0f                                      ; $412e: $0e $0f
	db   $10                                         ; $4130: $10
	ld   de, $1312                                   ; $4131: $11 $12 $13
	inc  d                                           ; $4134: $14
	dec  d                                           ; $4135: $15
	ld   d, $17                                      ; $4136: $16 $17
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	ldh  a, [rSB]                                    ; $413a: $f0 $01
	nop                                              ; $413c: $00
	ld   bc, $0302                                   ; $413d: $01 $02 $03

jr_091_4140:
	dec  sp                                          ; $4140: $3b
	inc  a                                           ; $4141: $3c
	dec  a                                           ; $4142: $3d
	rlca                                             ; $4143: $07
	ld   a, $3f                                      ; $4144: $3e $3f
	ld   b, b                                        ; $4146: $40
	ld   b, c                                        ; $4147: $41
	ld   b, d                                        ; $4148: $42
	ld   b, e                                        ; $4149: $43
	ld   b, h                                        ; $414a: $44
	rrca                                             ; $414b: $0f
	db   $10                                         ; $414c: $10
	ld   de, $1312                                   ; $414d: $11 $12 $13
	inc  d                                           ; $4150: $14
	dec  d                                           ; $4151: $15
	ld   d, $17                                      ; $4152: $16 $17
	rst  $38                                         ; $4154: $ff
	rst  $38                                         ; $4155: $ff
	ldh  a, [rSB]                                    ; $4156: $f0 $01
	nop                                              ; $4158: $00
	ld   bc, $4502                                   ; $4159: $01 $02 $45
	inc  b                                           ; $415c: $04
	dec  b                                           ; $415d: $05
	ld   b, $07                                      ; $415e: $06 $07
	ld   [$0a09], sp                                 ; $4160: $08 $09 $0a
	ld   b, [hl]                                     ; $4163: $46

jr_091_4164:
	inc  c                                           ; $4164: $0c
	dec  c                                           ; $4165: $0d
	ld   c, $47                                      ; $4166: $0e $47
	ld   c, b                                        ; $4168: $48
	ld   c, c                                        ; $4169: $49
	ld   c, d                                        ; $416a: $4a
	ld   c, e                                        ; $416b: $4b
	ld   c, h                                        ; $416c: $4c
	ld   c, l                                        ; $416d: $4d
	ld   c, [hl]                                     ; $416e: $4e
	ld   c, a                                        ; $416f: $4f
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	ld   [hl], a                                     ; $4172: $77
	ld   [bc], a                                     ; $4173: $02
	nop                                              ; $4174: $00
	ld   bc, $4502                                   ; $4175: $01 $02 $45
	inc  b                                           ; $4178: $04
	dec  b                                           ; $4179: $05
	ld   b, $07                                      ; $417a: $06 $07
	jr   @+$1b                                       ; $417c: $18 $19

	ld   a, [de]                                     ; $417e: $1a
	ld   b, [hl]                                     ; $417f: $46
	inc  c                                           ; $4180: $0c
	dec  de                                          ; $4181: $1b
	ld   c, $47                                      ; $4182: $0e $47
	ld   c, b                                        ; $4184: $48
	ld   c, c                                        ; $4185: $49
	ld   c, d                                        ; $4186: $4a
	ld   c, e                                        ; $4187: $4b
	ld   c, h                                        ; $4188: $4c
	ld   c, l                                        ; $4189: $4d
	ld   c, [hl]                                     ; $418a: $4e
	ld   c, a                                        ; $418b: $4f
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	ld   [hl], a                                     ; $418e: $77
	ld   [bc], a                                     ; $418f: $02
	nop                                              ; $4190: $00
	ld   bc, $4502                                   ; $4191: $01 $02 $45
	inc  e                                           ; $4194: $1c
	dec  e                                           ; $4195: $1d
	ld   e, $07                                      ; $4196: $1e $07
	rra                                              ; $4198: $1f
	jr   nz, jr_091_41bc                             ; $4199: $20 $21

	ld   d, b                                        ; $419b: $50
	inc  c                                           ; $419c: $0c
	inc  hl                                          ; $419d: $23
	ld   c, $47                                      ; $419e: $0e $47
	ld   c, b                                        ; $41a0: $48
	ld   c, c                                        ; $41a1: $49
	ld   c, d                                        ; $41a2: $4a
	ld   c, e                                        ; $41a3: $4b
	ld   c, h                                        ; $41a4: $4c
	ld   c, l                                        ; $41a5: $4d
	ld   c, [hl]                                     ; $41a6: $4e
	ld   c, a                                        ; $41a7: $4f
	rst  $38                                         ; $41a8: $ff
	rst  $38                                         ; $41a9: $ff
	ld   [hl], a                                     ; $41aa: $77
	ld   [bc], a                                     ; $41ab: $02
	nop                                              ; $41ac: $00
	ld   bc, $4502                                   ; $41ad: $01 $02 $45
	inc  h                                           ; $41b0: $24
	dec  h                                           ; $41b1: $25
	ld   b, $07                                      ; $41b2: $06 $07
	ld   h, $27                                      ; $41b4: $26 $27
	jr   z, jr_091_4208                              ; $41b6: $28 $50

	ld   a, [hl+]                                    ; $41b8: $2a
	dec  hl                                          ; $41b9: $2b
	inc  l                                           ; $41ba: $2c
	ld   b, a                                        ; $41bb: $47

jr_091_41bc:
	ld   c, b                                        ; $41bc: $48
	ld   l, h                                        ; $41bd: $6c
	ld   c, d                                        ; $41be: $4a
	ld   c, e                                        ; $41bf: $4b
	ld   c, h                                        ; $41c0: $4c
	ld   c, l                                        ; $41c1: $4d
	ld   c, [hl]                                     ; $41c2: $4e
	ld   c, a                                        ; $41c3: $4f
	rst  $38                                         ; $41c4: $ff
	rst  $38                                         ; $41c5: $ff
	ld   [hl], a                                     ; $41c6: $77
	ld   [bc], a                                     ; $41c7: $02
	nop                                              ; $41c8: $00
	ld   bc, $4502                                   ; $41c9: $01 $02 $45
	dec  l                                           ; $41cc: $2d
	ld   l, $06                                      ; $41cd: $2e $06
	rlca                                             ; $41cf: $07
	cpl                                              ; $41d0: $2f
	jr   nc, jr_091_4204                             ; $41d1: $30 $31

	ld   b, [hl]                                     ; $41d3: $46
	inc  c                                           ; $41d4: $0c
	ld   [hl-], a                                    ; $41d5: $32
	ld   c, $47                                      ; $41d6: $0e $47
	ld   c, b                                        ; $41d8: $48
	ld   c, c                                        ; $41d9: $49
	ld   c, d                                        ; $41da: $4a
	ld   c, e                                        ; $41db: $4b
	ld   c, h                                        ; $41dc: $4c
	ld   c, l                                        ; $41dd: $4d
	ld   c, [hl]                                     ; $41de: $4e
	ld   c, a                                        ; $41df: $4f
	rst  $38                                         ; $41e0: $ff
	rst  $38                                         ; $41e1: $ff
	ld   [hl], a                                     ; $41e2: $77
	ld   [bc], a                                     ; $41e3: $02
	nop                                              ; $41e4: $00
	ld   bc, $4502                                   ; $41e5: $01 $02 $45
	dec  l                                           ; $41e8: $2d
	ld   l, $06                                      ; $41e9: $2e $06
	rlca                                             ; $41eb: $07
	cpl                                              ; $41ec: $2f
	jr   nc, jr_091_4220                             ; $41ed: $30 $31

	ld   b, [hl]                                     ; $41ef: $46
	inc  sp                                          ; $41f0: $33
	dec  c                                           ; $41f1: $0d
	inc  [hl]                                        ; $41f2: $34
	ld   b, a                                        ; $41f3: $47
	ld   c, b                                        ; $41f4: $48
	ld   c, c                                        ; $41f5: $49
	ld   c, d                                        ; $41f6: $4a
	ld   c, e                                        ; $41f7: $4b
	ld   c, h                                        ; $41f8: $4c
	ld   c, l                                        ; $41f9: $4d
	ld   c, [hl]                                     ; $41fa: $4e
	ld   c, a                                        ; $41fb: $4f
	rst  $38                                         ; $41fc: $ff
	rst  $38                                         ; $41fd: $ff
	ld   [hl], a                                     ; $41fe: $77

Jump_091_41ff:
	ld   [bc], a                                     ; $41ff: $02
	nop                                              ; $4200: $00
	ld   bc, $4502                                   ; $4201: $01 $02 $45

jr_091_4204:
	dec  [hl]                                        ; $4204: $35
	ld   [hl], $06                                   ; $4205: $36 $06
	rlca                                             ; $4207: $07

jr_091_4208:
	scf                                              ; $4208: $37
	jr   c, jr_091_4244                              ; $4209: $38 $39

	ld   b, [hl]                                     ; $420b: $46
	inc  c                                           ; $420c: $0c
	ld   a, [hl-]                                    ; $420d: $3a
	ld   c, $47                                      ; $420e: $0e $47
	ld   c, b                                        ; $4210: $48
	ld   c, c                                        ; $4211: $49
	ld   c, d                                        ; $4212: $4a
	ld   c, e                                        ; $4213: $4b
	ld   c, h                                        ; $4214: $4c
	ld   c, l                                        ; $4215: $4d
	ld   c, [hl]                                     ; $4216: $4e
	ld   c, a                                        ; $4217: $4f
	rst  $38                                         ; $4218: $ff
	rst  $38                                         ; $4219: $ff
	ld   [hl], a                                     ; $421a: $77
	ld   [bc], a                                     ; $421b: $02
	nop                                              ; $421c: $00
	ld   bc, $4502                                   ; $421d: $01 $02 $45

jr_091_4220:
	dec  sp                                          ; $4220: $3b
	inc  a                                           ; $4221: $3c
	dec  a                                           ; $4222: $3d
	rlca                                             ; $4223: $07
	ld   a, $3f                                      ; $4224: $3e $3f
	ld   b, b                                        ; $4226: $40
	ld   d, b                                        ; $4227: $50
	ld   b, d                                        ; $4228: $42
	ld   b, e                                        ; $4229: $43
	ld   b, h                                        ; $422a: $44
	ld   b, a                                        ; $422b: $47
	ld   c, b                                        ; $422c: $48
	ld   c, c                                        ; $422d: $49
	ld   c, d                                        ; $422e: $4a
	ld   c, e                                        ; $422f: $4b
	ld   c, h                                        ; $4230: $4c
	ld   c, l                                        ; $4231: $4d
	ld   c, [hl]                                     ; $4232: $4e
	ld   c, a                                        ; $4233: $4f
	rst  $38                                         ; $4234: $ff
	rst  $38                                         ; $4235: $ff
	ld   [hl], a                                     ; $4236: $77
	ld   [bc], a                                     ; $4237: $02
	nop                                              ; $4238: $00
	ld   bc, $4502                                   ; $4239: $01 $02 $45
	inc  b                                           ; $423c: $04
	dec  b                                           ; $423d: $05
	ld   b, $07                                      ; $423e: $06 $07
	ld   [$0a09], sp                                 ; $4240: $08 $09 $0a
	ld   b, [hl]                                     ; $4243: $46

jr_091_4244:
	inc  c                                           ; $4244: $0c
	dec  c                                           ; $4245: $0d
	ld   c, $47                                      ; $4246: $0e $47
	ld   d, c                                        ; $4248: $51
	ld   d, d                                        ; $4249: $52
	ld   d, e                                        ; $424a: $53
	ld   d, h                                        ; $424b: $54
	ld   d, l                                        ; $424c: $55
	ld   d, [hl]                                     ; $424d: $56
	ld   d, a                                        ; $424e: $57
	ld   e, b                                        ; $424f: $58
	rst  $38                                         ; $4250: $ff
	rst  $38                                         ; $4251: $ff
	ldh  [rSB], a                                    ; $4252: $e0 $01
	nop                                              ; $4254: $00
	ld   bc, $4502                                   ; $4255: $01 $02 $45
	inc  b                                           ; $4258: $04
	dec  b                                           ; $4259: $05
	ld   b, $07                                      ; $425a: $06 $07
	jr   @+$1b                                       ; $425c: $18 $19

	ld   a, [de]                                     ; $425e: $1a
	ld   b, [hl]                                     ; $425f: $46
	inc  c                                           ; $4260: $0c
	dec  de                                          ; $4261: $1b
	ld   c, $47                                      ; $4262: $0e $47
	ld   d, c                                        ; $4264: $51
	ld   d, d                                        ; $4265: $52
	ld   d, e                                        ; $4266: $53
	ld   d, h                                        ; $4267: $54
	ld   d, l                                        ; $4268: $55
	ld   d, [hl]                                     ; $4269: $56
	ld   d, a                                        ; $426a: $57
	ld   e, b                                        ; $426b: $58
	rst  $38                                         ; $426c: $ff
	rst  $38                                         ; $426d: $ff
	ldh  [rSB], a                                    ; $426e: $e0 $01
	nop                                              ; $4270: $00
	ld   bc, $4502                                   ; $4271: $01 $02 $45
	inc  e                                           ; $4274: $1c
	dec  e                                           ; $4275: $1d
	ld   e, $07                                      ; $4276: $1e $07
	rra                                              ; $4278: $1f
	jr   nz, jr_091_429c                             ; $4279: $20 $21

	ld   d, b                                        ; $427b: $50
	inc  c                                           ; $427c: $0c
	inc  hl                                          ; $427d: $23
	ld   c, $47                                      ; $427e: $0e $47
	ld   d, c                                        ; $4280: $51
	ld   d, d                                        ; $4281: $52
	ld   d, e                                        ; $4282: $53
	ld   d, h                                        ; $4283: $54
	ld   d, l                                        ; $4284: $55
	ld   d, [hl]                                     ; $4285: $56
	ld   d, a                                        ; $4286: $57
	ld   e, b                                        ; $4287: $58
	rst  $38                                         ; $4288: $ff
	rst  $38                                         ; $4289: $ff
	ldh  [rSB], a                                    ; $428a: $e0 $01
	nop                                              ; $428c: $00
	ld   bc, $4502                                   ; $428d: $01 $02 $45
	inc  h                                           ; $4290: $24
	dec  h                                           ; $4291: $25
	ld   b, $07                                      ; $4292: $06 $07
	ld   h, $27                                      ; $4294: $26 $27
	jr   z, jr_091_42e8                              ; $4296: $28 $50

	ld   a, [hl+]                                    ; $4298: $2a
	dec  hl                                          ; $4299: $2b
	inc  l                                           ; $429a: $2c
	ld   b, a                                        ; $429b: $47

jr_091_429c:
	ld   d, c                                        ; $429c: $51
	ld   l, l                                        ; $429d: $6d
	ld   d, e                                        ; $429e: $53
	ld   d, h                                        ; $429f: $54
	ld   d, l                                        ; $42a0: $55
	ld   d, [hl]                                     ; $42a1: $56
	ld   d, a                                        ; $42a2: $57
	ld   e, b                                        ; $42a3: $58
	rst  $38                                         ; $42a4: $ff
	rst  $38                                         ; $42a5: $ff
	ldh  [rSB], a                                    ; $42a6: $e0 $01
	nop                                              ; $42a8: $00
	ld   bc, $4502                                   ; $42a9: $01 $02 $45
	dec  l                                           ; $42ac: $2d
	ld   l, $06                                      ; $42ad: $2e $06
	rlca                                             ; $42af: $07
	cpl                                              ; $42b0: $2f
	jr   nc, jr_091_42e4                             ; $42b1: $30 $31

	ld   b, [hl]                                     ; $42b3: $46
	inc  c                                           ; $42b4: $0c
	ld   [hl-], a                                    ; $42b5: $32
	ld   c, $47                                      ; $42b6: $0e $47
	ld   d, c                                        ; $42b8: $51
	ld   d, d                                        ; $42b9: $52
	ld   d, e                                        ; $42ba: $53
	ld   d, h                                        ; $42bb: $54
	ld   d, l                                        ; $42bc: $55
	ld   d, [hl]                                     ; $42bd: $56
	ld   d, a                                        ; $42be: $57
	ld   e, b                                        ; $42bf: $58
	rst  $38                                         ; $42c0: $ff
	rst  $38                                         ; $42c1: $ff
	ldh  [rSB], a                                    ; $42c2: $e0 $01
	nop                                              ; $42c4: $00
	ld   bc, $4502                                   ; $42c5: $01 $02 $45
	dec  l                                           ; $42c8: $2d
	ld   l, $06                                      ; $42c9: $2e $06
	rlca                                             ; $42cb: $07
	cpl                                              ; $42cc: $2f
	jr   nc, jr_091_4300                             ; $42cd: $30 $31

	ld   b, [hl]                                     ; $42cf: $46
	inc  sp                                          ; $42d0: $33
	dec  c                                           ; $42d1: $0d
	inc  [hl]                                        ; $42d2: $34
	ld   b, a                                        ; $42d3: $47
	ld   d, c                                        ; $42d4: $51
	ld   d, d                                        ; $42d5: $52
	ld   d, e                                        ; $42d6: $53
	ld   d, h                                        ; $42d7: $54
	ld   d, l                                        ; $42d8: $55
	ld   d, [hl]                                     ; $42d9: $56
	ld   d, a                                        ; $42da: $57
	ld   e, b                                        ; $42db: $58
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	ldh  [rSB], a                                    ; $42de: $e0 $01
	nop                                              ; $42e0: $00
	ld   bc, $4502                                   ; $42e1: $01 $02 $45

jr_091_42e4:
	dec  [hl]                                        ; $42e4: $35
	ld   [hl], $06                                   ; $42e5: $36 $06
	rlca                                             ; $42e7: $07

jr_091_42e8:
	scf                                              ; $42e8: $37
	jr   c, jr_091_4324                              ; $42e9: $38 $39

	ld   b, [hl]                                     ; $42eb: $46
	inc  c                                           ; $42ec: $0c
	ld   a, [hl-]                                    ; $42ed: $3a
	ld   c, $47                                      ; $42ee: $0e $47
	ld   d, c                                        ; $42f0: $51
	ld   d, d                                        ; $42f1: $52
	ld   d, e                                        ; $42f2: $53
	ld   d, h                                        ; $42f3: $54
	ld   d, l                                        ; $42f4: $55
	ld   d, [hl]                                     ; $42f5: $56
	ld   d, a                                        ; $42f6: $57
	ld   e, b                                        ; $42f7: $58
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	ldh  [rSB], a                                    ; $42fa: $e0 $01
	nop                                              ; $42fc: $00
	ld   bc, $4502                                   ; $42fd: $01 $02 $45

jr_091_4300:
	dec  sp                                          ; $4300: $3b
	inc  a                                           ; $4301: $3c
	dec  a                                           ; $4302: $3d
	rlca                                             ; $4303: $07
	ld   a, $3f                                      ; $4304: $3e $3f
	ld   b, b                                        ; $4306: $40
	ld   d, b                                        ; $4307: $50
	ld   b, d                                        ; $4308: $42
	ld   b, e                                        ; $4309: $43
	ld   b, h                                        ; $430a: $44
	ld   b, a                                        ; $430b: $47
	ld   d, c                                        ; $430c: $51
	ld   d, d                                        ; $430d: $52
	ld   d, e                                        ; $430e: $53
	ld   d, h                                        ; $430f: $54
	ld   d, l                                        ; $4310: $55
	ld   d, [hl]                                     ; $4311: $56
	ld   d, a                                        ; $4312: $57
	ld   e, b                                        ; $4313: $58
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	ldh  [rSB], a                                    ; $4316: $e0 $01
	nop                                              ; $4318: $00
	ld   bc, $0302                                   ; $4319: $01 $02 $03
	ld   e, c                                        ; $431c: $59
	ld   e, d                                        ; $431d: $5a
	ld   e, e                                        ; $431e: $5b
	rlca                                             ; $431f: $07
	ld   e, h                                        ; $4320: $5c
	ld   e, l                                        ; $4321: $5d
	ld   e, [hl]                                     ; $4322: $5e
	ld   e, a                                        ; $4323: $5f

jr_091_4324:
	inc  c                                           ; $4324: $0c
	ld   h, b                                        ; $4325: $60
	ld   h, c                                        ; $4326: $61
	rrca                                             ; $4327: $0f
	db   $10                                         ; $4328: $10
	ld   h, d                                        ; $4329: $62
	ld   [de], a                                     ; $432a: $12
	inc  de                                          ; $432b: $13
	inc  d                                           ; $432c: $14
	dec  d                                           ; $432d: $15
	ld   d, $17                                      ; $432e: $16 $17
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	ldh  a, [rSB]                                    ; $4332: $f0 $01
	nop                                              ; $4334: $00
	ld   bc, $0302                                   ; $4335: $01 $02 $03
	inc  b                                           ; $4338: $04
	dec  b                                           ; $4339: $05
	ld   b, $07                                      ; $433a: $06 $07
	ld   [$0a09], sp                                 ; $433c: $08 $09 $0a
	dec  bc                                          ; $433f: $0b
	inc  c                                           ; $4340: $0c
	dec  c                                           ; $4341: $0d
	ld   c, $0f                                      ; $4342: $0e $0f
	ld   h, e                                        ; $4344: $63
	ld   h, h                                        ; $4345: $64
	ld   h, l                                        ; $4346: $65
	ld   h, [hl]                                     ; $4347: $66
	ld   h, a                                        ; $4348: $67
	ld   l, b                                        ; $4349: $68
	ld   l, c                                        ; $434a: $69
	ld   l, d                                        ; $434b: $6a
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	rst  $38                                         ; $434e: $ff
	ld   bc, $0100                                   ; $434f: $01 $00 $01
	ld   [bc], a                                     ; $4352: $02
	inc  bc                                          ; $4353: $03
	inc  b                                           ; $4354: $04
	dec  b                                           ; $4355: $05
	ld   b, $07                                      ; $4356: $06 $07
	jr   @+$1b                                       ; $4358: $18 $19

	ld   a, [de]                                     ; $435a: $1a
	dec  bc                                          ; $435b: $0b
	inc  c                                           ; $435c: $0c
	dec  de                                          ; $435d: $1b
	ld   c, $0f                                      ; $435e: $0e $0f
	ld   h, e                                        ; $4360: $63
	ld   h, h                                        ; $4361: $64
	ld   h, l                                        ; $4362: $65
	ld   h, [hl]                                     ; $4363: $66
	ld   h, a                                        ; $4364: $67
	ld   l, b                                        ; $4365: $68
	ld   l, c                                        ; $4366: $69
	ld   l, d                                        ; $4367: $6a
	rst  $38                                         ; $4368: $ff
	rst  $38                                         ; $4369: $ff
	rst  $38                                         ; $436a: $ff
	ld   bc, $0100                                   ; $436b: $01 $00 $01
	ld   [bc], a                                     ; $436e: $02
	inc  bc                                          ; $436f: $03
	inc  e                                           ; $4370: $1c
	dec  e                                           ; $4371: $1d
	ld   e, $07                                      ; $4372: $1e $07
	rra                                              ; $4374: $1f
	jr   nz, jr_091_4398                             ; $4375: $20 $21

	ld   [hl+], a                                    ; $4377: $22
	inc  c                                           ; $4378: $0c
	inc  hl                                          ; $4379: $23
	ld   c, $0f                                      ; $437a: $0e $0f
	ld   h, e                                        ; $437c: $63
	ld   h, h                                        ; $437d: $64
	ld   h, l                                        ; $437e: $65
	ld   h, [hl]                                     ; $437f: $66
	ld   h, a                                        ; $4380: $67
	ld   l, b                                        ; $4381: $68
	ld   l, c                                        ; $4382: $69
	ld   l, d                                        ; $4383: $6a
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	rst  $38                                         ; $4386: $ff
	ld   bc, $0100                                   ; $4387: $01 $00 $01
	ld   [bc], a                                     ; $438a: $02
	inc  bc                                          ; $438b: $03
	inc  h                                           ; $438c: $24
	dec  h                                           ; $438d: $25
	ld   b, $07                                      ; $438e: $06 $07
	ld   h, $27                                      ; $4390: $26 $27
	jr   z, jr_091_43bd                              ; $4392: $28 $29

	ld   a, [hl+]                                    ; $4394: $2a
	dec  hl                                          ; $4395: $2b
	inc  l                                           ; $4396: $2c
	rrca                                             ; $4397: $0f

jr_091_4398:
	ld   h, e                                        ; $4398: $63
	ld   l, [hl]                                     ; $4399: $6e
	ld   h, l                                        ; $439a: $65
	ld   h, [hl]                                     ; $439b: $66
	ld   h, a                                        ; $439c: $67
	ld   l, b                                        ; $439d: $68
	ld   l, c                                        ; $439e: $69
	ld   l, d                                        ; $439f: $6a
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	ld   bc, $0100                                   ; $43a3: $01 $00 $01
	ld   [bc], a                                     ; $43a6: $02
	inc  bc                                          ; $43a7: $03
	dec  l                                           ; $43a8: $2d
	ld   l, $06                                      ; $43a9: $2e $06
	rlca                                             ; $43ab: $07
	cpl                                              ; $43ac: $2f
	jr   nc, jr_091_43e0                             ; $43ad: $30 $31

	dec  bc                                          ; $43af: $0b
	inc  c                                           ; $43b0: $0c
	ld   [hl-], a                                    ; $43b1: $32
	ld   c, $0f                                      ; $43b2: $0e $0f
	ld   h, e                                        ; $43b4: $63
	ld   h, h                                        ; $43b5: $64
	ld   h, l                                        ; $43b6: $65
	ld   h, [hl]                                     ; $43b7: $66
	ld   h, a                                        ; $43b8: $67
	ld   l, b                                        ; $43b9: $68
	ld   l, c                                        ; $43ba: $69
	ld   l, d                                        ; $43bb: $6a
	rst  $38                                         ; $43bc: $ff

jr_091_43bd:
	rst  $38                                         ; $43bd: $ff
	rst  $38                                         ; $43be: $ff
	ld   bc, $0100                                   ; $43bf: $01 $00 $01
	ld   [bc], a                                     ; $43c2: $02
	inc  bc                                          ; $43c3: $03
	dec  l                                           ; $43c4: $2d
	ld   l, $06                                      ; $43c5: $2e $06
	rlca                                             ; $43c7: $07
	cpl                                              ; $43c8: $2f
	jr   nc, jr_091_43fc                             ; $43c9: $30 $31

	dec  bc                                          ; $43cb: $0b
	inc  sp                                          ; $43cc: $33
	dec  c                                           ; $43cd: $0d
	inc  [hl]                                        ; $43ce: $34
	rrca                                             ; $43cf: $0f
	ld   h, e                                        ; $43d0: $63
	ld   h, h                                        ; $43d1: $64
	ld   h, l                                        ; $43d2: $65
	ld   h, [hl]                                     ; $43d3: $66
	ld   h, a                                        ; $43d4: $67
	ld   l, b                                        ; $43d5: $68
	ld   l, c                                        ; $43d6: $69
	ld   l, d                                        ; $43d7: $6a
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	ld   bc, $0100                                   ; $43db: $01 $00 $01
	ld   [bc], a                                     ; $43de: $02
	inc  bc                                          ; $43df: $03

jr_091_43e0:
	dec  [hl]                                        ; $43e0: $35
	ld   [hl], $06                                   ; $43e1: $36 $06
	rlca                                             ; $43e3: $07
	scf                                              ; $43e4: $37
	jr   c, jr_091_4420                              ; $43e5: $38 $39

	dec  bc                                          ; $43e7: $0b
	inc  c                                           ; $43e8: $0c
	ld   a, [hl-]                                    ; $43e9: $3a
	ld   c, $0f                                      ; $43ea: $0e $0f
	ld   h, e                                        ; $43ec: $63
	ld   h, h                                        ; $43ed: $64
	ld   h, l                                        ; $43ee: $65
	ld   h, [hl]                                     ; $43ef: $66
	ld   h, a                                        ; $43f0: $67
	ld   l, b                                        ; $43f1: $68
	ld   l, c                                        ; $43f2: $69
	ld   l, d                                        ; $43f3: $6a
	rst  $38                                         ; $43f4: $ff
	rst  $38                                         ; $43f5: $ff
	rst  $38                                         ; $43f6: $ff
	ld   bc, $0100                                   ; $43f7: $01 $00 $01
	ld   [bc], a                                     ; $43fa: $02
	inc  bc                                          ; $43fb: $03

jr_091_43fc:
	dec  sp                                          ; $43fc: $3b
	inc  a                                           ; $43fd: $3c
	dec  a                                           ; $43fe: $3d
	rlca                                             ; $43ff: $07
	ld   a, $3f                                      ; $4400: $3e $3f
	ld   b, b                                        ; $4402: $40
	ld   b, c                                        ; $4403: $41
	ld   b, d                                        ; $4404: $42
	ld   b, e                                        ; $4405: $43
	ld   b, h                                        ; $4406: $44
	rrca                                             ; $4407: $0f
	ld   h, e                                        ; $4408: $63
	ld   h, h                                        ; $4409: $64
	ld   h, l                                        ; $440a: $65
	ld   h, [hl]                                     ; $440b: $66
	ld   h, a                                        ; $440c: $67
	ld   l, b                                        ; $440d: $68
	ld   l, c                                        ; $440e: $69
	ld   l, d                                        ; $440f: $6a
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	rst  $38                                         ; $4412: $ff
	ld   bc, $0100                                   ; $4413: $01 $00 $01
	ld   [bc], a                                     ; $4416: $02
	inc  bc                                          ; $4417: $03
	inc  b                                           ; $4418: $04
	dec  b                                           ; $4419: $05
	ld   b, $07                                      ; $441a: $06 $07
	ld   [$0a09], sp                                 ; $441c: $08 $09 $0a
	dec  bc                                          ; $441f: $0b

jr_091_4420:
	inc  c                                           ; $4420: $0c
	dec  c                                           ; $4421: $0d
	ld   c, $0f                                      ; $4422: $0e $0f
	db   $10                                         ; $4424: $10
	ld   de, $1312                                   ; $4425: $11 $12 $13
	inc  d                                           ; $4428: $14
	dec  d                                           ; $4429: $15
	ld   d, $17                                      ; $442a: $16 $17
	rrca                                             ; $442c: $0f
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	inc  bc                                          ; $442f: $03
	nop                                              ; $4430: $00
	ld   bc, $0302                                   ; $4431: $01 $02 $03
	inc  b                                           ; $4434: $04
	dec  b                                           ; $4435: $05
	ld   b, $07                                      ; $4436: $06 $07
	jr   jr_091_4443                                 ; $4438: $18 $09

	ld   a, [bc]                                     ; $443a: $0a
	add  hl, de                                      ; $443b: $19
	inc  c                                           ; $443c: $0c
	ld   a, [de]                                     ; $443d: $1a
	dec  de                                          ; $443e: $1b
	rrca                                             ; $443f: $0f
	db   $10                                         ; $4440: $10
	inc  e                                           ; $4441: $1c
	dec  e                                           ; $4442: $1d

jr_091_4443:
	inc  de                                          ; $4443: $13
	inc  d                                           ; $4444: $14
	dec  d                                           ; $4445: $15
	ld   d, $17                                      ; $4446: $16 $17
	rrca                                             ; $4448: $0f
	rst  $38                                         ; $4449: $ff
	rst  $38                                         ; $444a: $ff
	inc  bc                                          ; $444b: $03
	nop                                              ; $444c: $00
	ld   bc, $0302                                   ; $444d: $01 $02 $03
	inc  b                                           ; $4450: $04
	dec  b                                           ; $4451: $05
	ld   b, $07                                      ; $4452: $06 $07
	ld   e, $1f                                      ; $4454: $1e $1f
	jr   nz, @+$0d                                   ; $4456: $20 $0b

	inc  c                                           ; $4458: $0c
	ld   hl, $0f22                                   ; $4459: $21 $22 $0f
	db   $10                                         ; $445c: $10
	inc  e                                           ; $445d: $1c
	dec  e                                           ; $445e: $1d
	inc  de                                          ; $445f: $13
	inc  d                                           ; $4460: $14
	dec  d                                           ; $4461: $15
	ld   d, $17                                      ; $4462: $16 $17
	rrca                                             ; $4464: $0f
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	inc  bc                                          ; $4467: $03
	nop                                              ; $4468: $00
	ld   bc, $0302                                   ; $4469: $01 $02 $03
	inc  b                                           ; $446c: $04
	dec  b                                           ; $446d: $05
	ld   b, $07                                      ; $446e: $06 $07
	inc  hl                                          ; $4470: $23
	inc  h                                           ; $4471: $24
	dec  h                                           ; $4472: $25
	ld   h, $27                                      ; $4473: $26 $27
	jr   z, jr_091_44a0                              ; $4475: $28 $29

	rrca                                             ; $4477: $0f
	db   $10                                         ; $4478: $10
	ld   a, [hl+]                                    ; $4479: $2a
	dec  hl                                          ; $447a: $2b
	inc  de                                          ; $447b: $13
	inc  d                                           ; $447c: $14
	dec  d                                           ; $447d: $15
	ld   d, $17                                      ; $447e: $16 $17
	rrca                                             ; $4480: $0f
	rst  $38                                         ; $4481: $ff
	rst  $38                                         ; $4482: $ff
	inc  bc                                          ; $4483: $03
	nop                                              ; $4484: $00
	ld   bc, $0302                                   ; $4485: $01 $02 $03
	inc  b                                           ; $4488: $04
	dec  b                                           ; $4489: $05
	ld   b, $07                                      ; $448a: $06 $07
	inc  l                                           ; $448c: $2c
	dec  l                                           ; $448d: $2d
	ld   l, $0b                                      ; $448e: $2e $0b
	cpl                                              ; $4490: $2f
	jr   nc, jr_091_44c4                             ; $4491: $30 $31

	ld   [hl-], a                                    ; $4493: $32
	db   $10                                         ; $4494: $10
	inc  e                                           ; $4495: $1c
	dec  e                                           ; $4496: $1d
	inc  de                                          ; $4497: $13
	inc  d                                           ; $4498: $14
	dec  d                                           ; $4499: $15
	ld   d, $17                                      ; $449a: $16 $17
	rrca                                             ; $449c: $0f
	rst  $38                                         ; $449d: $ff
	rst  $38                                         ; $449e: $ff
	inc  bc                                          ; $449f: $03

jr_091_44a0:
	nop                                              ; $44a0: $00
	ld   bc, $0302                                   ; $44a1: $01 $02 $03
	inc  b                                           ; $44a4: $04
	dec  b                                           ; $44a5: $05
	ld   b, $07                                      ; $44a6: $06 $07
	inc  l                                           ; $44a8: $2c
	dec  l                                           ; $44a9: $2d
	ld   l, $0b                                      ; $44aa: $2e $0b
	inc  c                                           ; $44ac: $0c
	ld   hl, $0f22                                   ; $44ad: $21 $22 $0f
	db   $10                                         ; $44b0: $10
	inc  e                                           ; $44b1: $1c
	dec  e                                           ; $44b2: $1d
	inc  de                                          ; $44b3: $13
	inc  d                                           ; $44b4: $14
	dec  d                                           ; $44b5: $15
	ld   d, $17                                      ; $44b6: $16 $17
	rrca                                             ; $44b8: $0f
	rst  $38                                         ; $44b9: $ff
	rst  $38                                         ; $44ba: $ff
	inc  bc                                          ; $44bb: $03
	nop                                              ; $44bc: $00
	ld   bc, $0302                                   ; $44bd: $01 $02 $03
	inc  b                                           ; $44c0: $04
	dec  b                                           ; $44c1: $05
	ld   b, $07                                      ; $44c2: $06 $07

jr_091_44c4:
	inc  sp                                          ; $44c4: $33
	inc  [hl]                                        ; $44c5: $34
	dec  [hl]                                        ; $44c6: $35
	ld   [hl], $0c                                   ; $44c7: $36 $0c
	ld   hl, $0f22                                   ; $44c9: $21 $22 $0f
	db   $10                                         ; $44cc: $10
	inc  e                                           ; $44cd: $1c
	dec  e                                           ; $44ce: $1d
	inc  de                                          ; $44cf: $13
	inc  d                                           ; $44d0: $14
	dec  d                                           ; $44d1: $15
	ld   d, $17                                      ; $44d2: $16 $17
	rrca                                             ; $44d4: $0f
	rst  $38                                         ; $44d5: $ff
	rst  $38                                         ; $44d6: $ff
	inc  bc                                          ; $44d7: $03
	nop                                              ; $44d8: $00
	ld   bc, $0302                                   ; $44d9: $01 $02 $03
	inc  b                                           ; $44dc: $04
	dec  b                                           ; $44dd: $05
	ld   b, $07                                      ; $44de: $06 $07
	scf                                              ; $44e0: $37
	jr   c, jr_091_451c                              ; $44e1: $38 $39

	ld   a, [hl-]                                    ; $44e3: $3a
	dec  sp                                          ; $44e4: $3b
	inc  a                                           ; $44e5: $3c
	dec  a                                           ; $44e6: $3d
	rrca                                             ; $44e7: $0f
	db   $10                                         ; $44e8: $10
	ld   a, $3f                                      ; $44e9: $3e $3f
	inc  de                                          ; $44eb: $13
	inc  d                                           ; $44ec: $14
	dec  d                                           ; $44ed: $15
	ld   d, $17                                      ; $44ee: $16 $17
	rrca                                             ; $44f0: $0f
	rst  $38                                         ; $44f1: $ff
	rst  $38                                         ; $44f2: $ff
	inc  bc                                          ; $44f3: $03
	nop                                              ; $44f4: $00
	ld   bc, $0302                                   ; $44f5: $01 $02 $03
	inc  b                                           ; $44f8: $04
	dec  b                                           ; $44f9: $05
	ld   b, $07                                      ; $44fa: $06 $07
	ld   b, b                                        ; $44fc: $40
	ld   b, c                                        ; $44fd: $41
	ld   b, d                                        ; $44fe: $42
	ld   b, e                                        ; $44ff: $43
	daa                                              ; $4500: $27
	ld   b, h                                        ; $4501: $44
	ld   b, l                                        ; $4502: $45
	rrca                                             ; $4503: $0f
	db   $10                                         ; $4504: $10
	ld   b, [hl]                                     ; $4505: $46
	ld   b, a                                        ; $4506: $47
	inc  de                                          ; $4507: $13
	inc  d                                           ; $4508: $14
	dec  d                                           ; $4509: $15
	ld   d, $17                                      ; $450a: $16 $17
	rrca                                             ; $450c: $0f
	rst  $38                                         ; $450d: $ff
	rst  $38                                         ; $450e: $ff
	inc  bc                                          ; $450f: $03
	ld   c, b                                        ; $4510: $48
	ld   c, c                                        ; $4511: $49
	ld   c, d                                        ; $4512: $4a
	ld   c, e                                        ; $4513: $4b
	inc  b                                           ; $4514: $04
	dec  b                                           ; $4515: $05
	ld   b, $07                                      ; $4516: $06 $07
	ld   [$0a09], sp                                 ; $4518: $08 $09 $0a
	dec  bc                                          ; $451b: $0b

jr_091_451c:
	inc  c                                           ; $451c: $0c
	dec  c                                           ; $451d: $0d
	ld   c, $0f                                      ; $451e: $0e $0f
	db   $10                                         ; $4520: $10
	ld   c, h                                        ; $4521: $4c
	ld   c, l                                        ; $4522: $4d
	ld   c, [hl]                                     ; $4523: $4e
	ld   c, a                                        ; $4524: $4f
	ld   d, b                                        ; $4525: $50
	ld   d, c                                        ; $4526: $51
	ld   d, d                                        ; $4527: $52
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	pop  af                                          ; $452a: $f1
	inc  b                                           ; $452b: $04
	ld   c, b                                        ; $452c: $48
	ld   c, c                                        ; $452d: $49
	ld   c, d                                        ; $452e: $4a
	ld   c, e                                        ; $452f: $4b
	inc  b                                           ; $4530: $04
	dec  b                                           ; $4531: $05
	ld   b, $07                                      ; $4532: $06 $07
	jr   jr_091_453f                                 ; $4534: $18 $09

	ld   a, [bc]                                     ; $4536: $0a
	add  hl, de                                      ; $4537: $19
	inc  c                                           ; $4538: $0c
	ld   a, [de]                                     ; $4539: $1a
	dec  de                                          ; $453a: $1b
	rrca                                             ; $453b: $0f
	db   $10                                         ; $453c: $10
	ld   d, e                                        ; $453d: $53
	ld   d, h                                        ; $453e: $54

jr_091_453f:
	ld   c, [hl]                                     ; $453f: $4e
	ld   c, a                                        ; $4540: $4f
	ld   d, b                                        ; $4541: $50
	ld   d, c                                        ; $4542: $51
	ld   d, d                                        ; $4543: $52
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	pop  af                                          ; $4546: $f1
	inc  b                                           ; $4547: $04
	ld   c, b                                        ; $4548: $48
	ld   c, c                                        ; $4549: $49
	ld   c, d                                        ; $454a: $4a
	ld   c, e                                        ; $454b: $4b
	inc  b                                           ; $454c: $04
	dec  b                                           ; $454d: $05
	ld   b, $07                                      ; $454e: $06 $07
	ld   e, $1f                                      ; $4550: $1e $1f
	jr   nz, jr_091_455f                             ; $4552: $20 $0b

	inc  c                                           ; $4554: $0c
	ld   hl, $0f22                                   ; $4555: $21 $22 $0f
	db   $10                                         ; $4558: $10
	ld   d, e                                        ; $4559: $53
	ld   d, h                                        ; $455a: $54
	ld   c, [hl]                                     ; $455b: $4e
	ld   c, a                                        ; $455c: $4f
	ld   d, b                                        ; $455d: $50
	ld   d, c                                        ; $455e: $51

jr_091_455f:
	ld   d, d                                        ; $455f: $52
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	pop  af                                          ; $4562: $f1
	inc  b                                           ; $4563: $04
	ld   c, b                                        ; $4564: $48
	ld   c, c                                        ; $4565: $49
	ld   c, d                                        ; $4566: $4a
	ld   c, e                                        ; $4567: $4b
	inc  b                                           ; $4568: $04
	dec  b                                           ; $4569: $05
	ld   b, $07                                      ; $456a: $06 $07
	inc  hl                                          ; $456c: $23
	inc  h                                           ; $456d: $24
	dec  h                                           ; $456e: $25
	ld   h, $27                                      ; $456f: $26 $27
	jr   z, jr_091_459c                              ; $4571: $28 $29

	rrca                                             ; $4573: $0f
	db   $10                                         ; $4574: $10
	ld   d, l                                        ; $4575: $55
	ld   d, [hl]                                     ; $4576: $56
	ld   c, [hl]                                     ; $4577: $4e
	ld   c, a                                        ; $4578: $4f
	ld   d, b                                        ; $4579: $50
	ld   d, c                                        ; $457a: $51
	ld   d, d                                        ; $457b: $52
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	pop  af                                          ; $457e: $f1
	inc  b                                           ; $457f: $04
	ld   c, b                                        ; $4580: $48
	ld   c, c                                        ; $4581: $49
	ld   c, d                                        ; $4582: $4a
	ld   c, e                                        ; $4583: $4b
	inc  b                                           ; $4584: $04
	dec  b                                           ; $4585: $05
	ld   b, $07                                      ; $4586: $06 $07
	inc  l                                           ; $4588: $2c
	dec  l                                           ; $4589: $2d
	ld   l, $0b                                      ; $458a: $2e $0b
	cpl                                              ; $458c: $2f
	jr   nc, jr_091_45c0                             ; $458d: $30 $31

	ld   [hl-], a                                    ; $458f: $32
	db   $10                                         ; $4590: $10
	ld   d, e                                        ; $4591: $53
	ld   d, h                                        ; $4592: $54
	ld   c, [hl]                                     ; $4593: $4e
	ld   c, a                                        ; $4594: $4f
	ld   d, b                                        ; $4595: $50
	ld   d, c                                        ; $4596: $51
	ld   d, d                                        ; $4597: $52
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	pop  af                                          ; $459a: $f1
	inc  b                                           ; $459b: $04

jr_091_459c:
	ld   c, b                                        ; $459c: $48
	ld   c, c                                        ; $459d: $49
	ld   c, d                                        ; $459e: $4a
	ld   c, e                                        ; $459f: $4b
	inc  b                                           ; $45a0: $04
	dec  b                                           ; $45a1: $05
	ld   b, $07                                      ; $45a2: $06 $07
	inc  l                                           ; $45a4: $2c
	dec  l                                           ; $45a5: $2d
	ld   l, $0b                                      ; $45a6: $2e $0b
	inc  c                                           ; $45a8: $0c
	ld   hl, $0f22                                   ; $45a9: $21 $22 $0f
	db   $10                                         ; $45ac: $10
	ld   d, e                                        ; $45ad: $53
	ld   d, h                                        ; $45ae: $54
	ld   c, [hl]                                     ; $45af: $4e
	ld   c, a                                        ; $45b0: $4f
	ld   d, b                                        ; $45b1: $50
	ld   d, c                                        ; $45b2: $51
	ld   d, d                                        ; $45b3: $52
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	pop  af                                          ; $45b6: $f1
	inc  b                                           ; $45b7: $04
	ld   c, b                                        ; $45b8: $48
	ld   c, c                                        ; $45b9: $49
	ld   c, d                                        ; $45ba: $4a
	ld   c, e                                        ; $45bb: $4b
	inc  b                                           ; $45bc: $04
	dec  b                                           ; $45bd: $05
	ld   b, $07                                      ; $45be: $06 $07

jr_091_45c0:
	inc  sp                                          ; $45c0: $33
	inc  [hl]                                        ; $45c1: $34
	dec  [hl]                                        ; $45c2: $35
	ld   [hl], $0c                                   ; $45c3: $36 $0c
	ld   hl, $0f22                                   ; $45c5: $21 $22 $0f
	db   $10                                         ; $45c8: $10
	ld   d, e                                        ; $45c9: $53
	ld   d, h                                        ; $45ca: $54
	ld   c, [hl]                                     ; $45cb: $4e
	ld   c, a                                        ; $45cc: $4f
	ld   d, b                                        ; $45cd: $50
	ld   d, c                                        ; $45ce: $51
	ld   d, d                                        ; $45cf: $52
	rst  $38                                         ; $45d0: $ff
	rst  $38                                         ; $45d1: $ff
	pop  af                                          ; $45d2: $f1
	inc  b                                           ; $45d3: $04
	ld   c, b                                        ; $45d4: $48
	ld   c, c                                        ; $45d5: $49
	ld   c, d                                        ; $45d6: $4a
	ld   c, e                                        ; $45d7: $4b
	inc  b                                           ; $45d8: $04
	dec  b                                           ; $45d9: $05
	ld   b, $07                                      ; $45da: $06 $07
	scf                                              ; $45dc: $37
	jr   c, jr_091_4618                              ; $45dd: $38 $39

	ld   a, [hl-]                                    ; $45df: $3a
	dec  sp                                          ; $45e0: $3b
	inc  a                                           ; $45e1: $3c
	dec  a                                           ; $45e2: $3d
	rrca                                             ; $45e3: $0f
	db   $10                                         ; $45e4: $10
	ld   d, a                                        ; $45e5: $57
	ld   e, b                                        ; $45e6: $58
	ld   c, [hl]                                     ; $45e7: $4e
	ld   c, a                                        ; $45e8: $4f
	ld   d, b                                        ; $45e9: $50
	ld   d, c                                        ; $45ea: $51
	ld   d, d                                        ; $45eb: $52
	rst  $38                                         ; $45ec: $ff
	rst  $38                                         ; $45ed: $ff
	pop  af                                          ; $45ee: $f1
	inc  b                                           ; $45ef: $04
	ld   e, e                                        ; $45f0: $5b
	ld   e, h                                        ; $45f1: $5c
	ld   e, l                                        ; $45f2: $5d
	ld   e, [hl]                                     ; $45f3: $5e
	inc  b                                           ; $45f4: $04
	dec  b                                           ; $45f5: $05
	ld   b, $07                                      ; $45f6: $06 $07
	ld   [$0a09], sp                                 ; $45f8: $08 $09 $0a
	dec  bc                                          ; $45fb: $0b
	inc  c                                           ; $45fc: $0c
	dec  c                                           ; $45fd: $0d
	ld   c, $0f                                      ; $45fe: $0e $0f
	db   $10                                         ; $4600: $10
	ld   de, $1312                                   ; $4601: $11 $12 $13
	ld   e, a                                        ; $4604: $5f
	ld   h, b                                        ; $4605: $60
	ld   e, c                                        ; $4606: $59
	ld   e, d                                        ; $4607: $5a
	rrca                                             ; $4608: $0f
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	inc  bc                                          ; $460b: $03
	ld   e, e                                        ; $460c: $5b
	ld   e, h                                        ; $460d: $5c
	ld   e, l                                        ; $460e: $5d
	ld   e, [hl]                                     ; $460f: $5e
	inc  b                                           ; $4610: $04
	dec  b                                           ; $4611: $05
	ld   b, $07                                      ; $4612: $06 $07
	jr   jr_091_461f                                 ; $4614: $18 $09

	ld   a, [bc]                                     ; $4616: $0a
	add  hl, de                                      ; $4617: $19

jr_091_4618:
	inc  c                                           ; $4618: $0c
	ld   a, [de]                                     ; $4619: $1a
	dec  de                                          ; $461a: $1b
	rrca                                             ; $461b: $0f
	db   $10                                         ; $461c: $10
	inc  e                                           ; $461d: $1c
	dec  e                                           ; $461e: $1d

jr_091_461f:
	inc  de                                          ; $461f: $13
	ld   e, a                                        ; $4620: $5f
	ld   h, b                                        ; $4621: $60
	ld   e, c                                        ; $4622: $59
	ld   e, d                                        ; $4623: $5a
	rrca                                             ; $4624: $0f
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	inc  bc                                          ; $4627: $03
	ld   e, e                                        ; $4628: $5b
	ld   e, h                                        ; $4629: $5c
	ld   e, l                                        ; $462a: $5d
	ld   e, [hl]                                     ; $462b: $5e
	inc  b                                           ; $462c: $04
	dec  b                                           ; $462d: $05
	ld   b, $07                                      ; $462e: $06 $07
	ld   e, $1f                                      ; $4630: $1e $1f
	jr   nz, jr_091_463f                             ; $4632: $20 $0b

	inc  c                                           ; $4634: $0c
	ld   hl, $0f22                                   ; $4635: $21 $22 $0f
	db   $10                                         ; $4638: $10
	inc  e                                           ; $4639: $1c
	dec  e                                           ; $463a: $1d
	inc  de                                          ; $463b: $13
	ld   e, a                                        ; $463c: $5f
	ld   h, b                                        ; $463d: $60
	ld   e, c                                        ; $463e: $59

jr_091_463f:
	ld   e, d                                        ; $463f: $5a
	rrca                                             ; $4640: $0f
	rst  $38                                         ; $4641: $ff
	rst  $38                                         ; $4642: $ff
	inc  bc                                          ; $4643: $03
	ld   e, e                                        ; $4644: $5b
	ld   e, h                                        ; $4645: $5c
	ld   e, l                                        ; $4646: $5d
	ld   e, [hl]                                     ; $4647: $5e
	inc  b                                           ; $4648: $04
	dec  b                                           ; $4649: $05
	ld   b, $07                                      ; $464a: $06 $07
	inc  hl                                          ; $464c: $23
	inc  h                                           ; $464d: $24
	dec  h                                           ; $464e: $25
	ld   h, $27                                      ; $464f: $26 $27
	jr   z, jr_091_467c                              ; $4651: $28 $29

	rrca                                             ; $4653: $0f
	db   $10                                         ; $4654: $10
	ld   a, [hl+]                                    ; $4655: $2a
	dec  hl                                          ; $4656: $2b
	inc  de                                          ; $4657: $13
	ld   e, a                                        ; $4658: $5f
	ld   h, b                                        ; $4659: $60
	ld   e, c                                        ; $465a: $59
	ld   e, d                                        ; $465b: $5a
	rrca                                             ; $465c: $0f
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	inc  bc                                          ; $465f: $03
	ld   e, e                                        ; $4660: $5b
	ld   e, h                                        ; $4661: $5c
	ld   e, l                                        ; $4662: $5d
	ld   e, [hl]                                     ; $4663: $5e
	inc  b                                           ; $4664: $04
	dec  b                                           ; $4665: $05
	ld   b, $07                                      ; $4666: $06 $07
	inc  l                                           ; $4668: $2c
	dec  l                                           ; $4669: $2d
	ld   l, $0b                                      ; $466a: $2e $0b
	cpl                                              ; $466c: $2f
	jr   nc, jr_091_46a0                             ; $466d: $30 $31

	ld   [hl-], a                                    ; $466f: $32
	db   $10                                         ; $4670: $10
	inc  e                                           ; $4671: $1c
	dec  e                                           ; $4672: $1d
	inc  de                                          ; $4673: $13
	ld   e, a                                        ; $4674: $5f
	ld   h, b                                        ; $4675: $60
	ld   e, c                                        ; $4676: $59
	ld   e, d                                        ; $4677: $5a
	rrca                                             ; $4678: $0f
	rst  $38                                         ; $4679: $ff
	rst  $38                                         ; $467a: $ff
	inc  bc                                          ; $467b: $03

jr_091_467c:
	ld   e, e                                        ; $467c: $5b
	ld   e, h                                        ; $467d: $5c
	ld   e, l                                        ; $467e: $5d
	ld   e, [hl]                                     ; $467f: $5e
	inc  b                                           ; $4680: $04
	dec  b                                           ; $4681: $05
	ld   b, $07                                      ; $4682: $06 $07
	inc  l                                           ; $4684: $2c
	dec  l                                           ; $4685: $2d
	ld   l, $0b                                      ; $4686: $2e $0b
	inc  c                                           ; $4688: $0c
	ld   hl, $0f22                                   ; $4689: $21 $22 $0f
	db   $10                                         ; $468c: $10
	inc  e                                           ; $468d: $1c
	dec  e                                           ; $468e: $1d
	inc  de                                          ; $468f: $13
	ld   e, a                                        ; $4690: $5f
	ld   h, b                                        ; $4691: $60
	ld   e, c                                        ; $4692: $59
	ld   e, d                                        ; $4693: $5a
	rrca                                             ; $4694: $0f
	rst  $38                                         ; $4695: $ff
	rst  $38                                         ; $4696: $ff
	inc  bc                                          ; $4697: $03
	ld   e, e                                        ; $4698: $5b
	ld   e, h                                        ; $4699: $5c
	ld   e, l                                        ; $469a: $5d
	ld   e, [hl]                                     ; $469b: $5e
	inc  b                                           ; $469c: $04
	dec  b                                           ; $469d: $05
	ld   b, $07                                      ; $469e: $06 $07

jr_091_46a0:
	inc  sp                                          ; $46a0: $33
	inc  [hl]                                        ; $46a1: $34
	dec  [hl]                                        ; $46a2: $35
	ld   [hl], $0c                                   ; $46a3: $36 $0c
	ld   hl, $0f22                                   ; $46a5: $21 $22 $0f
	db   $10                                         ; $46a8: $10
	inc  e                                           ; $46a9: $1c
	dec  e                                           ; $46aa: $1d
	inc  de                                          ; $46ab: $13
	ld   e, a                                        ; $46ac: $5f
	ld   h, b                                        ; $46ad: $60
	ld   e, c                                        ; $46ae: $59
	ld   e, d                                        ; $46af: $5a
	rrca                                             ; $46b0: $0f
	rst  $38                                         ; $46b1: $ff
	rst  $38                                         ; $46b2: $ff
	inc  bc                                          ; $46b3: $03
	ld   e, e                                        ; $46b4: $5b
	ld   e, h                                        ; $46b5: $5c
	ld   e, l                                        ; $46b6: $5d
	ld   e, [hl]                                     ; $46b7: $5e
	inc  b                                           ; $46b8: $04
	dec  b                                           ; $46b9: $05
	ld   b, $07                                      ; $46ba: $06 $07
	scf                                              ; $46bc: $37
	jr   c, jr_091_46f8                              ; $46bd: $38 $39

	ld   a, [hl-]                                    ; $46bf: $3a
	dec  sp                                          ; $46c0: $3b
	inc  a                                           ; $46c1: $3c
	dec  a                                           ; $46c2: $3d
	rrca                                             ; $46c3: $0f
	db   $10                                         ; $46c4: $10
	ld   a, $3f                                      ; $46c5: $3e $3f
	inc  de                                          ; $46c7: $13
	ld   e, a                                        ; $46c8: $5f
	ld   h, b                                        ; $46c9: $60
	ld   e, c                                        ; $46ca: $59
	ld   e, d                                        ; $46cb: $5a
	rrca                                             ; $46cc: $0f
	rst  $38                                         ; $46cd: $ff
	rst  $38                                         ; $46ce: $ff
	inc  bc                                          ; $46cf: $03
	ld   h, c                                        ; $46d0: $61
	ld   h, d                                        ; $46d1: $62
	ld   h, e                                        ; $46d2: $63
	ld   h, h                                        ; $46d3: $64
	ld   h, l                                        ; $46d4: $65
	ld   h, [hl]                                     ; $46d5: $66
	ld   h, a                                        ; $46d6: $67
	ld   l, b                                        ; $46d7: $68
	ld   l, c                                        ; $46d8: $69
	ld   l, d                                        ; $46d9: $6a
	ld   l, e                                        ; $46da: $6b
	ld   l, h                                        ; $46db: $6c
	ld   l, l                                        ; $46dc: $6d
	ld   l, [hl]                                     ; $46dd: $6e
	ld   l, a                                        ; $46de: $6f
	ld   [hl], b                                     ; $46df: $70
	ld   [hl], c                                     ; $46e0: $71
	ld   [hl], d                                     ; $46e1: $72
	ld   [hl], e                                     ; $46e2: $73
	ld   [hl], h                                     ; $46e3: $74
	ld   [hl], l                                     ; $46e4: $75
	halt                                             ; $46e5: $76
	ld   [hl], a                                     ; $46e6: $77
	ld   a, b                                        ; $46e7: $78
	ld   c, $ff                                      ; $46e8: $0e $ff
	rst  $38                                         ; $46ea: $ff
	inc  bc                                          ; $46eb: $03
	nop                                              ; $46ec: $00
	ld   bc, $0302                                   ; $46ed: $01 $02 $03
	inc  b                                           ; $46f0: $04
	dec  b                                           ; $46f1: $05
	ld   b, $07                                      ; $46f2: $06 $07
	ld   a, c                                        ; $46f4: $79
	ld   a, d                                        ; $46f5: $7a
	ld   a, e                                        ; $46f6: $7b
	ld   a, h                                        ; $46f7: $7c

jr_091_46f8:
	inc  c                                           ; $46f8: $0c
	ld   hl, $0f22                                   ; $46f9: $21 $22 $0f
	db   $10                                         ; $46fc: $10
	ld   a, l                                        ; $46fd: $7d

Jump_091_46fe:
	ld   a, [hl]                                     ; $46fe: $7e
	inc  de                                          ; $46ff: $13
	ld   a, a                                        ; $4700: $7f
	add  b                                           ; $4701: $80
	add  c                                           ; $4702: $81
	add  d                                           ; $4703: $82
	rrca                                             ; $4704: $0f
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	inc  bc                                          ; $4707: $03
	nop                                              ; $4708: $00
	ld   bc, $0302                                   ; $4709: $01 $02 $03
	inc  b                                           ; $470c: $04
	dec  b                                           ; $470d: $05
	ld   b, $07                                      ; $470e: $06 $07
	ld   [$0a09], sp                                 ; $4710: $08 $09 $0a
	dec  bc                                          ; $4713: $0b
	inc  c                                           ; $4714: $0c
	dec  c                                           ; $4715: $0d
	ld   c, $0f                                      ; $4716: $0e $0f
	db   $10                                         ; $4718: $10
	ld   de, $1312                                   ; $4719: $11 $12 $13
	inc  d                                           ; $471c: $14
	dec  d                                           ; $471d: $15
	ld   d, $17                                      ; $471e: $16 $17
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	ld   h, b                                        ; $4722: $60
	dec  b                                           ; $4723: $05
	nop                                              ; $4724: $00
	ld   bc, $0302                                   ; $4725: $01 $02 $03
	inc  b                                           ; $4728: $04
	dec  b                                           ; $4729: $05
	ld   b, $07                                      ; $472a: $06 $07
	jr   @+$1b                                       ; $472c: $18 $19

	ld   a, [bc]                                     ; $472e: $0a
	dec  bc                                          ; $472f: $0b
	inc  c                                           ; $4730: $0c
	ld   a, [de]                                     ; $4731: $1a
	ld   c, $0f                                      ; $4732: $0e $0f
	db   $10                                         ; $4734: $10
	dec  de                                          ; $4735: $1b
	inc  e                                           ; $4736: $1c
	inc  de                                          ; $4737: $13
	inc  d                                           ; $4738: $14
	dec  d                                           ; $4739: $15
	ld   d, $17                                      ; $473a: $16 $17
	rst  $38                                         ; $473c: $ff
	rst  $38                                         ; $473d: $ff
	ld   h, b                                        ; $473e: $60
	dec  b                                           ; $473f: $05
	nop                                              ; $4740: $00
	ld   bc, $0302                                   ; $4741: $01 $02 $03
	inc  b                                           ; $4744: $04
	dec  b                                           ; $4745: $05
	ld   b, $07                                      ; $4746: $06 $07
	ld   [$0a1d], sp                                 ; $4748: $08 $1d $0a
	dec  bc                                          ; $474b: $0b
	inc  c                                           ; $474c: $0c
	dec  c                                           ; $474d: $0d
	ld   c, $0f                                      ; $474e: $0e $0f
	db   $10                                         ; $4750: $10
	ld   de, $1312                                   ; $4751: $11 $12 $13
	inc  d                                           ; $4754: $14
	dec  d                                           ; $4755: $15
	ld   d, $17                                      ; $4756: $16 $17
	rst  $38                                         ; $4758: $ff
	rst  $38                                         ; $4759: $ff
	ld   h, b                                        ; $475a: $60
	dec  b                                           ; $475b: $05
	nop                                              ; $475c: $00
	ld   bc, $0302                                   ; $475d: $01 $02 $03
	inc  b                                           ; $4760: $04
	dec  b                                           ; $4761: $05
	ld   b, $07                                      ; $4762: $06 $07
	ld   e, $1f                                      ; $4764: $1e $1f
	ld   a, [bc]                                     ; $4766: $0a
	dec  bc                                          ; $4767: $0b
	inc  c                                           ; $4768: $0c
	dec  c                                           ; $4769: $0d
	ld   c, $0f                                      ; $476a: $0e $0f
	db   $10                                         ; $476c: $10
	dec  de                                          ; $476d: $1b
	inc  e                                           ; $476e: $1c
	inc  de                                          ; $476f: $13
	inc  d                                           ; $4770: $14
	dec  d                                           ; $4771: $15
	ld   d, $17                                      ; $4772: $16 $17
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	ld   h, b                                        ; $4776: $60
	dec  b                                           ; $4777: $05
	nop                                              ; $4778: $00
	ld   bc, $0302                                   ; $4779: $01 $02 $03
	inc  b                                           ; $477c: $04
	dec  b                                           ; $477d: $05
	ld   b, $07                                      ; $477e: $06 $07
	ld   [$0a20], sp                                 ; $4780: $08 $20 $0a
	dec  bc                                          ; $4783: $0b
	inc  c                                           ; $4784: $0c
	dec  c                                           ; $4785: $0d
	ld   c, $0f                                      ; $4786: $0e $0f
	db   $10                                         ; $4788: $10
	ld   hl, $1322                                   ; $4789: $21 $22 $13
	inc  d                                           ; $478c: $14
	dec  d                                           ; $478d: $15
	ld   d, $17                                      ; $478e: $16 $17
	rst  $38                                         ; $4790: $ff
	rst  $38                                         ; $4791: $ff
	ld   h, b                                        ; $4792: $60
	dec  b                                           ; $4793: $05
	nop                                              ; $4794: $00
	ld   bc, $0302                                   ; $4795: $01 $02 $03
	inc  b                                           ; $4798: $04
	dec  b                                           ; $4799: $05
	ld   b, $07                                      ; $479a: $06 $07
	ld   [HBlankFarMemCopy], sp                                 ; $479c: $08 $23 $0a
	dec  bc                                          ; $479f: $0b
	inc  c                                           ; $47a0: $0c
	dec  c                                           ; $47a1: $0d
	ld   c, $0f                                      ; $47a2: $0e $0f
	db   $10                                         ; $47a4: $10
	inc  h                                           ; $47a5: $24
	dec  h                                           ; $47a6: $25
	inc  de                                          ; $47a7: $13
	inc  d                                           ; $47a8: $14
	dec  d                                           ; $47a9: $15
	ld   d, $17                                      ; $47aa: $16 $17
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	ld   h, b                                        ; $47ae: $60
	dec  b                                           ; $47af: $05
	nop                                              ; $47b0: $00
	ld   bc, $0302                                   ; $47b1: $01 $02 $03
	inc  b                                           ; $47b4: $04
	dec  b                                           ; $47b5: $05
	ld   b, $07                                      ; $47b6: $06 $07
	ld   h, $27                                      ; $47b8: $26 $27
	ld   a, [bc]                                     ; $47ba: $0a
	dec  bc                                          ; $47bb: $0b
	inc  c                                           ; $47bc: $0c
	dec  c                                           ; $47bd: $0d
	ld   c, $0f                                      ; $47be: $0e $0f
	db   $10                                         ; $47c0: $10
	jr   z, jr_091_47ec                              ; $47c1: $28 $29

	inc  de                                          ; $47c3: $13
	inc  d                                           ; $47c4: $14
	dec  d                                           ; $47c5: $15
	ld   d, $17                                      ; $47c6: $16 $17
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	ld   h, b                                        ; $47ca: $60
	dec  b                                           ; $47cb: $05
	nop                                              ; $47cc: $00
	ld   bc, $0302                                   ; $47cd: $01 $02 $03
	inc  b                                           ; $47d0: $04
	dec  b                                           ; $47d1: $05
	ld   b, $07                                      ; $47d2: $06 $07
	ld   a, [hl+]                                    ; $47d4: $2a
	dec  hl                                          ; $47d5: $2b
	ld   a, [bc]                                     ; $47d6: $0a
	dec  bc                                          ; $47d7: $0b
	inc  c                                           ; $47d8: $0c
	dec  c                                           ; $47d9: $0d
	ld   c, $0f                                      ; $47da: $0e $0f
	db   $10                                         ; $47dc: $10
	ld   c, h                                        ; $47dd: $4c
	ld   c, l                                        ; $47de: $4d
	inc  de                                          ; $47df: $13
	inc  d                                           ; $47e0: $14
	dec  d                                           ; $47e1: $15
	ld   d, $17                                      ; $47e2: $16 $17
	rst  $38                                         ; $47e4: $ff
	rst  $38                                         ; $47e5: $ff
	ld   h, b                                        ; $47e6: $60
	dec  b                                           ; $47e7: $05
	nop                                              ; $47e8: $00
	ld   bc, $0302                                   ; $47e9: $01 $02 $03

jr_091_47ec:
	inc  b                                           ; $47ec: $04
	dec  b                                           ; $47ed: $05
	ld   b, $07                                      ; $47ee: $06 $07
	ld   [$0a09], sp                                 ; $47f0: $08 $09 $0a
	dec  bc                                          ; $47f3: $0b
	inc  c                                           ; $47f4: $0c
	dec  c                                           ; $47f5: $0d
	ld   c, $0f                                      ; $47f6: $0e $0f
	inc  l                                           ; $47f8: $2c
	dec  l                                           ; $47f9: $2d
	ld   l, $2f                                      ; $47fa: $2e $2f
	jr   nc, @+$33                                   ; $47fc: $30 $31

	ld   [hl-], a                                    ; $47fe: $32
	inc  sp                                          ; $47ff: $33
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	ld   [hl], b                                     ; $4802: $70
	ld   b, $00                                      ; $4803: $06 $00
	ld   bc, $0302                                   ; $4805: $01 $02 $03
	inc  b                                           ; $4808: $04
	dec  b                                           ; $4809: $05
	ld   b, $07                                      ; $480a: $06 $07
	jr   @+$1b                                       ; $480c: $18 $19

	ld   a, [bc]                                     ; $480e: $0a
	dec  bc                                          ; $480f: $0b
	inc  c                                           ; $4810: $0c
	ld   a, [de]                                     ; $4811: $1a
	ld   c, $0f                                      ; $4812: $0e $0f
	inc  l                                           ; $4814: $2c
	inc  [hl]                                        ; $4815: $34
	dec  [hl]                                        ; $4816: $35
	cpl                                              ; $4817: $2f
	jr   nc, @+$33                                   ; $4818: $30 $31

	ld   [hl-], a                                    ; $481a: $32
	inc  sp                                          ; $481b: $33
	rst  $38                                         ; $481c: $ff
	rst  $38                                         ; $481d: $ff
	ld   [hl], b                                     ; $481e: $70
	ld   b, $00                                      ; $481f: $06 $00
	ld   bc, $0302                                   ; $4821: $01 $02 $03
	inc  b                                           ; $4824: $04
	dec  b                                           ; $4825: $05
	ld   b, $07                                      ; $4826: $06 $07
	ld   [$0a1d], sp                                 ; $4828: $08 $1d $0a
	dec  bc                                          ; $482b: $0b
	inc  c                                           ; $482c: $0c
	dec  c                                           ; $482d: $0d
	ld   c, $0f                                      ; $482e: $0e $0f
	inc  l                                           ; $4830: $2c
	dec  l                                           ; $4831: $2d
	ld   l, $2f                                      ; $4832: $2e $2f
	jr   nc, @+$33                                   ; $4834: $30 $31

	ld   [hl-], a                                    ; $4836: $32
	inc  sp                                          ; $4837: $33
	rst  $38                                         ; $4838: $ff
	rst  $38                                         ; $4839: $ff
	ld   [hl], b                                     ; $483a: $70
	ld   b, $00                                      ; $483b: $06 $00
	ld   bc, $0302                                   ; $483d: $01 $02 $03
	inc  b                                           ; $4840: $04
	dec  b                                           ; $4841: $05
	ld   b, $07                                      ; $4842: $06 $07
	ld   e, $1f                                      ; $4844: $1e $1f
	ld   a, [bc]                                     ; $4846: $0a
	dec  bc                                          ; $4847: $0b
	inc  c                                           ; $4848: $0c
	dec  c                                           ; $4849: $0d
	ld   c, $0f                                      ; $484a: $0e $0f
	inc  l                                           ; $484c: $2c
	inc  [hl]                                        ; $484d: $34
	dec  [hl]                                        ; $484e: $35
	cpl                                              ; $484f: $2f
	jr   nc, @+$33                                   ; $4850: $30 $31

	ld   [hl-], a                                    ; $4852: $32
	inc  sp                                          ; $4853: $33
	rst  $38                                         ; $4854: $ff
	rst  $38                                         ; $4855: $ff
	ld   [hl], b                                     ; $4856: $70
	ld   b, $00                                      ; $4857: $06 $00
	ld   bc, $0302                                   ; $4859: $01 $02 $03
	inc  b                                           ; $485c: $04
	dec  b                                           ; $485d: $05
	ld   b, $07                                      ; $485e: $06 $07
	ld   [$0a20], sp                                 ; $4860: $08 $20 $0a
	dec  bc                                          ; $4863: $0b
	inc  c                                           ; $4864: $0c
	dec  c                                           ; $4865: $0d
	ld   c, $0f                                      ; $4866: $0e $0f
	inc  l                                           ; $4868: $2c
	ld   [hl], $37                                   ; $4869: $36 $37
	cpl                                              ; $486b: $2f
	jr   nc, @+$33                                   ; $486c: $30 $31

	ld   [hl-], a                                    ; $486e: $32
	inc  sp                                          ; $486f: $33
	rst  $38                                         ; $4870: $ff
	rst  $38                                         ; $4871: $ff
	ld   [hl], b                                     ; $4872: $70
	ld   b, $00                                      ; $4873: $06 $00
	ld   bc, $0302                                   ; $4875: $01 $02 $03
	inc  b                                           ; $4878: $04
	dec  b                                           ; $4879: $05
	ld   b, $07                                      ; $487a: $06 $07
	ld   [HBlankFarMemCopy], sp                                 ; $487c: $08 $23 $0a
	dec  bc                                          ; $487f: $0b
	inc  c                                           ; $4880: $0c
	dec  c                                           ; $4881: $0d
	ld   c, $0f                                      ; $4882: $0e $0f
	inc  l                                           ; $4884: $2c
	jr   c, jr_091_48c0                              ; $4885: $38 $39

	cpl                                              ; $4887: $2f
	jr   nc, @+$33                                   ; $4888: $30 $31

	ld   [hl-], a                                    ; $488a: $32
	inc  sp                                          ; $488b: $33
	rst  $38                                         ; $488c: $ff
	rst  $38                                         ; $488d: $ff
	ld   [hl], b                                     ; $488e: $70
	ld   b, $00                                      ; $488f: $06 $00
	ld   bc, $0302                                   ; $4891: $01 $02 $03
	inc  b                                           ; $4894: $04
	dec  b                                           ; $4895: $05
	ld   b, $07                                      ; $4896: $06 $07
	ld   h, $27                                      ; $4898: $26 $27
	ld   a, [bc]                                     ; $489a: $0a
	dec  bc                                          ; $489b: $0b
	inc  c                                           ; $489c: $0c
	dec  c                                           ; $489d: $0d
	ld   c, $0f                                      ; $489e: $0e $0f
	inc  l                                           ; $48a0: $2c
	ld   a, [hl-]                                    ; $48a1: $3a
	dec  sp                                          ; $48a2: $3b
	cpl                                              ; $48a3: $2f
	jr   nc, @+$33                                   ; $48a4: $30 $31

	ld   [hl-], a                                    ; $48a6: $32
	inc  sp                                          ; $48a7: $33
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	ld   [hl], b                                     ; $48aa: $70
	ld   b, $00                                      ; $48ab: $06 $00
	ld   bc, $0302                                   ; $48ad: $01 $02 $03
	inc  b                                           ; $48b0: $04
	dec  b                                           ; $48b1: $05
	ld   b, $07                                      ; $48b2: $06 $07
	ld   a, [hl+]                                    ; $48b4: $2a
	dec  hl                                          ; $48b5: $2b
	ld   a, [bc]                                     ; $48b6: $0a
	dec  bc                                          ; $48b7: $0b
	inc  c                                           ; $48b8: $0c
	dec  c                                           ; $48b9: $0d
	ld   c, $0f                                      ; $48ba: $0e $0f
	inc  l                                           ; $48bc: $2c
	ld   c, [hl]                                     ; $48bd: $4e
	ld   c, a                                        ; $48be: $4f
	cpl                                              ; $48bf: $2f

jr_091_48c0:
	jr   nc, @+$33                                   ; $48c0: $30 $31

	ld   [hl-], a                                    ; $48c2: $32
	inc  sp                                          ; $48c3: $33
	rst  $38                                         ; $48c4: $ff
	rst  $38                                         ; $48c5: $ff
	ld   [hl], b                                     ; $48c6: $70
	ld   b, $00                                      ; $48c7: $06 $00
	ld   bc, $0302                                   ; $48c9: $01 $02 $03
	inc  b                                           ; $48cc: $04
	dec  b                                           ; $48cd: $05
	ld   b, $07                                      ; $48ce: $06 $07
	ld   [$0a09], sp                                 ; $48d0: $08 $09 $0a
	dec  bc                                          ; $48d3: $0b
	inc  c                                           ; $48d4: $0c
	dec  c                                           ; $48d5: $0d
	ld   c, $0f                                      ; $48d6: $0e $0f
	inc  a                                           ; $48d8: $3c
	dec  a                                           ; $48d9: $3d
	ld   a, $3f                                      ; $48da: $3e $3f
	ld   b, b                                        ; $48dc: $40
	ld   b, c                                        ; $48dd: $41
	ld   b, d                                        ; $48de: $42
	ld   b, e                                        ; $48df: $43
	rst  $38                                         ; $48e0: $ff
	rst  $38                                         ; $48e1: $ff
	rst  $38                                         ; $48e2: $ff
	dec  b                                           ; $48e3: $05
	nop                                              ; $48e4: $00
	ld   bc, $0302                                   ; $48e5: $01 $02 $03
	inc  b                                           ; $48e8: $04
	dec  b                                           ; $48e9: $05
	ld   b, $07                                      ; $48ea: $06 $07
	jr   @+$1b                                       ; $48ec: $18 $19

	ld   a, [bc]                                     ; $48ee: $0a
	dec  bc                                          ; $48ef: $0b
	inc  c                                           ; $48f0: $0c
	ld   a, [de]                                     ; $48f1: $1a
	ld   c, $0f                                      ; $48f2: $0e $0f
	inc  a                                           ; $48f4: $3c
	ld   b, h                                        ; $48f5: $44
	ld   b, l                                        ; $48f6: $45
	ccf                                              ; $48f7: $3f
	ld   b, b                                        ; $48f8: $40
	ld   b, c                                        ; $48f9: $41
	ld   b, d                                        ; $48fa: $42
	ld   b, e                                        ; $48fb: $43
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	dec  b                                           ; $48ff: $05
	nop                                              ; $4900: $00
	ld   bc, $0302                                   ; $4901: $01 $02 $03
	inc  b                                           ; $4904: $04
	dec  b                                           ; $4905: $05
	ld   b, $07                                      ; $4906: $06 $07
	ld   [$0a1d], sp                                 ; $4908: $08 $1d $0a
	dec  bc                                          ; $490b: $0b
	inc  c                                           ; $490c: $0c
	dec  c                                           ; $490d: $0d
	ld   c, $0f                                      ; $490e: $0e $0f
	inc  a                                           ; $4910: $3c
	dec  a                                           ; $4911: $3d
	ld   a, $3f                                      ; $4912: $3e $3f
	ld   b, b                                        ; $4914: $40
	ld   b, c                                        ; $4915: $41
	ld   b, d                                        ; $4916: $42
	ld   b, e                                        ; $4917: $43
	rst  $38                                         ; $4918: $ff
	rst  $38                                         ; $4919: $ff
	rst  $38                                         ; $491a: $ff
	dec  b                                           ; $491b: $05
	nop                                              ; $491c: $00
	ld   bc, $0302                                   ; $491d: $01 $02 $03
	inc  b                                           ; $4920: $04
	dec  b                                           ; $4921: $05
	ld   b, $07                                      ; $4922: $06 $07
	ld   e, $1f                                      ; $4924: $1e $1f
	ld   a, [bc]                                     ; $4926: $0a
	dec  bc                                          ; $4927: $0b
	inc  c                                           ; $4928: $0c
	dec  c                                           ; $4929: $0d
	ld   c, $0f                                      ; $492a: $0e $0f
	inc  a                                           ; $492c: $3c
	ld   b, h                                        ; $492d: $44
	ld   b, l                                        ; $492e: $45
	ccf                                              ; $492f: $3f
	ld   b, b                                        ; $4930: $40
	ld   b, c                                        ; $4931: $41
	ld   b, d                                        ; $4932: $42
	ld   b, e                                        ; $4933: $43
	rst  $38                                         ; $4934: $ff
	rst  $38                                         ; $4935: $ff
	rst  $38                                         ; $4936: $ff
	dec  b                                           ; $4937: $05
	nop                                              ; $4938: $00
	ld   bc, $0302                                   ; $4939: $01 $02 $03
	inc  b                                           ; $493c: $04
	dec  b                                           ; $493d: $05
	ld   b, $07                                      ; $493e: $06 $07
	ld   [$0a20], sp                                 ; $4940: $08 $20 $0a
	dec  bc                                          ; $4943: $0b
	inc  c                                           ; $4944: $0c
	dec  c                                           ; $4945: $0d
	ld   c, $0f                                      ; $4946: $0e $0f
	inc  a                                           ; $4948: $3c
	ld   b, [hl]                                     ; $4949: $46
	ld   b, a                                        ; $494a: $47
	ccf                                              ; $494b: $3f
	ld   b, b                                        ; $494c: $40
	ld   b, c                                        ; $494d: $41
	ld   b, d                                        ; $494e: $42
	ld   b, e                                        ; $494f: $43
	rst  $38                                         ; $4950: $ff
	rst  $38                                         ; $4951: $ff
	rst  $38                                         ; $4952: $ff
	dec  b                                           ; $4953: $05
	nop                                              ; $4954: $00
	ld   bc, $0302                                   ; $4955: $01 $02 $03
	inc  b                                           ; $4958: $04
	dec  b                                           ; $4959: $05
	ld   b, $07                                      ; $495a: $06 $07
	ld   [HBlankFarMemCopy], sp                                 ; $495c: $08 $23 $0a
	dec  bc                                          ; $495f: $0b
	inc  c                                           ; $4960: $0c
	dec  c                                           ; $4961: $0d
	ld   c, $0f                                      ; $4962: $0e $0f
	inc  a                                           ; $4964: $3c
	ld   c, b                                        ; $4965: $48
	ld   c, c                                        ; $4966: $49
	ccf                                              ; $4967: $3f
	ld   b, b                                        ; $4968: $40
	ld   b, c                                        ; $4969: $41
	ld   b, d                                        ; $496a: $42
	ld   b, e                                        ; $496b: $43
	rst  $38                                         ; $496c: $ff
	rst  $38                                         ; $496d: $ff
	rst  $38                                         ; $496e: $ff
	dec  b                                           ; $496f: $05
	nop                                              ; $4970: $00
	ld   bc, $0302                                   ; $4971: $01 $02 $03
	inc  b                                           ; $4974: $04
	dec  b                                           ; $4975: $05
	ld   b, $07                                      ; $4976: $06 $07
	ld   h, $27                                      ; $4978: $26 $27
	ld   a, [bc]                                     ; $497a: $0a
	dec  bc                                          ; $497b: $0b
	inc  c                                           ; $497c: $0c
	dec  c                                           ; $497d: $0d
	ld   c, $0f                                      ; $497e: $0e $0f
	inc  a                                           ; $4980: $3c
	ld   c, d                                        ; $4981: $4a
	ld   c, e                                        ; $4982: $4b
	ccf                                              ; $4983: $3f
	ld   b, b                                        ; $4984: $40
	ld   b, c                                        ; $4985: $41
	ld   b, d                                        ; $4986: $42
	ld   b, e                                        ; $4987: $43
	rst  $38                                         ; $4988: $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	dec  b                                           ; $498b: $05
	nop                                              ; $498c: $00
	ld   bc, $0302                                   ; $498d: $01 $02 $03
	inc  b                                           ; $4990: $04
	dec  b                                           ; $4991: $05
	ld   b, $07                                      ; $4992: $06 $07
	ld   a, [hl+]                                    ; $4994: $2a
	dec  hl                                          ; $4995: $2b
	ld   a, [bc]                                     ; $4996: $0a
	dec  bc                                          ; $4997: $0b
	inc  c                                           ; $4998: $0c
	dec  c                                           ; $4999: $0d
	ld   c, $0f                                      ; $499a: $0e $0f
	inc  a                                           ; $499c: $3c
	ld   d, b                                        ; $499d: $50
	ld   d, c                                        ; $499e: $51
	ccf                                              ; $499f: $3f
	ld   b, b                                        ; $49a0: $40
	ld   b, c                                        ; $49a1: $41
	ld   b, d                                        ; $49a2: $42
	ld   b, e                                        ; $49a3: $43
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	rst  $38                                         ; $49a6: $ff
	dec  b                                           ; $49a7: $05
	nop                                              ; $49a8: $00
	ld   bc, $0302                                   ; $49a9: $01 $02 $03
	inc  b                                           ; $49ac: $04
	dec  b                                           ; $49ad: $05
	ld   b, $07                                      ; $49ae: $06 $07
	ld   [$0a09], sp                                 ; $49b0: $08 $09 $0a
	dec  bc                                          ; $49b3: $0b
	inc  c                                           ; $49b4: $0c
	dec  c                                           ; $49b5: $0d
	ld   c, $0f                                      ; $49b6: $0e $0f
	db   $10                                         ; $49b8: $10
	ld   de, $1312                                   ; $49b9: $11 $12 $13
	inc  d                                           ; $49bc: $14
	dec  d                                           ; $49bd: $15
	ld   d, $17                                      ; $49be: $16 $17
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	ld   de, $0007                                   ; $49c2: $11 $07 $00
	ld   bc, $0302                                   ; $49c5: $01 $02 $03
	jr   @+$1b                                       ; $49c8: $18 $19

	ld   a, [de]                                     ; $49ca: $1a
	dec  de                                          ; $49cb: $1b
	inc  e                                           ; $49cc: $1c
	dec  e                                           ; $49cd: $1d
	ld   e, $1f                                      ; $49ce: $1e $1f
	inc  c                                           ; $49d0: $0c
	jr   nz, jr_091_49f4                             ; $49d1: $20 $21

	rrca                                             ; $49d3: $0f
	db   $10                                         ; $49d4: $10
	ld   de, $1312                                   ; $49d5: $11 $12 $13
	inc  d                                           ; $49d8: $14
	dec  d                                           ; $49d9: $15
	ld   d, $17                                      ; $49da: $16 $17
	rst  $38                                         ; $49dc: $ff
	rst  $38                                         ; $49dd: $ff
	ld   de, $0007                                   ; $49de: $11 $07 $00
	ld   bc, $0302                                   ; $49e1: $01 $02 $03
	ld   [hl+], a                                    ; $49e4: $22
	inc  hl                                          ; $49e5: $23
	inc  h                                           ; $49e6: $24
	rlca                                             ; $49e7: $07
	ld   [$2625], sp                                 ; $49e8: $08 $25 $26
	dec  bc                                          ; $49eb: $0b
	inc  c                                           ; $49ec: $0c
	and  h                                           ; $49ed: $a4
	and  l                                           ; $49ee: $a5
	rrca                                             ; $49ef: $0f
	db   $10                                         ; $49f0: $10
	ld   de, $1312                                   ; $49f1: $11 $12 $13

jr_091_49f4:
	inc  d                                           ; $49f4: $14
	dec  d                                           ; $49f5: $15
	ld   d, $17                                      ; $49f6: $16 $17
	rst  $38                                         ; $49f8: $ff
	rst  $38                                         ; $49f9: $ff
	ld   de, $0007                                   ; $49fa: $11 $07 $00
	ld   bc, $0302                                   ; $49fd: $01 $02 $03
	daa                                              ; $4a00: $27
	jr   z, jr_091_4a2c                              ; $4a01: $28 $29

	ld   a, [hl+]                                    ; $4a03: $2a
	dec  hl                                          ; $4a04: $2b
	inc  l                                           ; $4a05: $2c
	dec  l                                           ; $4a06: $2d
	ld   l, $0c                                      ; $4a07: $2e $0c
	cpl                                              ; $4a09: $2f
	jr   nc, @+$11                                   ; $4a0a: $30 $0f

	db   $10                                         ; $4a0c: $10
	ld   de, $1312                                   ; $4a0d: $11 $12 $13
	inc  d                                           ; $4a10: $14
	dec  d                                           ; $4a11: $15
	ld   d, $17                                      ; $4a12: $16 $17
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	ld   de, $0007                                   ; $4a16: $11 $07 $00
	ld   bc, $0302                                   ; $4a19: $01 $02 $03
	ld   sp, $3332                                   ; $4a1c: $31 $32 $33
	inc  [hl]                                        ; $4a1f: $34
	dec  [hl]                                        ; $4a20: $35
	ld   [hl], $37                                   ; $4a21: $36 $37
	jr   c, jr_091_4a31                              ; $4a23: $38 $0c

	cpl                                              ; $4a25: $2f
	add  hl, sp                                      ; $4a26: $39
	rrca                                             ; $4a27: $0f
	db   $10                                         ; $4a28: $10
	ld   de, $1312                                   ; $4a29: $11 $12 $13

jr_091_4a2c:
	inc  d                                           ; $4a2c: $14
	dec  d                                           ; $4a2d: $15
	ld   d, $17                                      ; $4a2e: $16 $17
	rst  $38                                         ; $4a30: $ff

jr_091_4a31:
	rst  $38                                         ; $4a31: $ff
	ld   de, $0007                                   ; $4a32: $11 $07 $00
	ld   bc, $0302                                   ; $4a35: $01 $02 $03
	daa                                              ; $4a38: $27
	jr   z, jr_091_4a64                              ; $4a39: $28 $29

	ld   a, [hl+]                                    ; $4a3b: $2a
	dec  hl                                          ; $4a3c: $2b
	inc  l                                           ; $4a3d: $2c
	dec  l                                           ; $4a3e: $2d
	ld   l, $0c                                      ; $4a3f: $2e $0c
	and  [hl]                                        ; $4a41: $a6
	jr   nc, @+$11                                   ; $4a42: $30 $0f

	db   $10                                         ; $4a44: $10
	ld   de, $1312                                   ; $4a45: $11 $12 $13
	inc  d                                           ; $4a48: $14
	dec  d                                           ; $4a49: $15
	ld   d, $17                                      ; $4a4a: $16 $17
	rst  $38                                         ; $4a4c: $ff
	rst  $38                                         ; $4a4d: $ff
	ld   de, $0007                                   ; $4a4e: $11 $07 $00
	ld   bc, $0302                                   ; $4a51: $01 $02 $03
	ld   a, [hl-]                                    ; $4a54: $3a
	dec  sp                                          ; $4a55: $3b
	inc  a                                           ; $4a56: $3c
	dec  a                                           ; $4a57: $3d
	ld   a, $3f                                      ; $4a58: $3e $3f
	ld   b, b                                        ; $4a5a: $40
	ld   b, c                                        ; $4a5b: $41
	inc  c                                           ; $4a5c: $0c
	ld   b, d                                        ; $4a5d: $42
	and  e                                           ; $4a5e: $a3
	rrca                                             ; $4a5f: $0f
	db   $10                                         ; $4a60: $10
	ld   de, $1312                                   ; $4a61: $11 $12 $13

jr_091_4a64:
	inc  d                                           ; $4a64: $14
	dec  d                                           ; $4a65: $15
	ld   d, $17                                      ; $4a66: $16 $17
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	ld   de, $0007                                   ; $4a6a: $11 $07 $00
	ld   bc, $0302                                   ; $4a6d: $01 $02 $03
	ld   b, h                                        ; $4a70: $44
	ld   b, l                                        ; $4a71: $45
	ld   b, [hl]                                     ; $4a72: $46
	ld   b, a                                        ; $4a73: $47
	ld   c, b                                        ; $4a74: $48
	ld   c, c                                        ; $4a75: $49
	ld   c, d                                        ; $4a76: $4a
	ld   c, e                                        ; $4a77: $4b
	inc  c                                           ; $4a78: $0c
	ld   c, h                                        ; $4a79: $4c
	ld   b, e                                        ; $4a7a: $43
	rrca                                             ; $4a7b: $0f
	db   $10                                         ; $4a7c: $10
	ld   de, $1312                                   ; $4a7d: $11 $12 $13
	inc  d                                           ; $4a80: $14
	dec  d                                           ; $4a81: $15
	ld   d, $17                                      ; $4a82: $16 $17
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	ld   de, $0007                                   ; $4a86: $11 $07 $00
	ld   bc, $0302                                   ; $4a89: $01 $02 $03
	inc  b                                           ; $4a8c: $04
	dec  b                                           ; $4a8d: $05
	ld   b, $07                                      ; $4a8e: $06 $07
	ld   [$0a09], sp                                 ; $4a90: $08 $09 $0a
	dec  bc                                          ; $4a93: $0b
	ld   d, l                                        ; $4a94: $55
	dec  c                                           ; $4a95: $0d
	ld   c, $0f                                      ; $4a96: $0e $0f
	ld   c, l                                        ; $4a98: $4d
	ld   c, [hl]                                     ; $4a99: $4e
	ld   c, a                                        ; $4a9a: $4f
	ld   d, b                                        ; $4a9b: $50
	ld   d, c                                        ; $4a9c: $51
	ld   d, d                                        ; $4a9d: $52
	ld   d, e                                        ; $4a9e: $53
	ld   d, h                                        ; $4a9f: $54
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	nop                                              ; $4aa2: $00
	ld   [$0100], sp                                 ; $4aa3: $08 $00 $01
	ld   [bc], a                                     ; $4aa6: $02
	inc  bc                                          ; $4aa7: $03
	jr   jr_091_4ac3                                 ; $4aa8: $18 $19

	ld   a, [de]                                     ; $4aaa: $1a
	dec  de                                          ; $4aab: $1b
	inc  e                                           ; $4aac: $1c
	dec  e                                           ; $4aad: $1d
	ld   e, $1f                                      ; $4aae: $1e $1f
	ld   d, l                                        ; $4ab0: $55
	jr   nz, jr_091_4ad4                             ; $4ab1: $20 $21

	rrca                                             ; $4ab3: $0f
	ld   c, l                                        ; $4ab4: $4d
	ld   c, [hl]                                     ; $4ab5: $4e
	ld   c, a                                        ; $4ab6: $4f
	ld   d, b                                        ; $4ab7: $50
	ld   d, c                                        ; $4ab8: $51
	ld   d, d                                        ; $4ab9: $52
	ld   d, e                                        ; $4aba: $53
	ld   d, h                                        ; $4abb: $54
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	nop                                              ; $4abe: $00
	ld   [$0100], sp                                 ; $4abf: $08 $00 $01
	ld   [bc], a                                     ; $4ac2: $02

jr_091_4ac3:
	inc  bc                                          ; $4ac3: $03
	ld   [hl+], a                                    ; $4ac4: $22
	inc  hl                                          ; $4ac5: $23
	inc  h                                           ; $4ac6: $24
	rlca                                             ; $4ac7: $07
	ld   [$2625], sp                                 ; $4ac8: $08 $25 $26
	dec  bc                                          ; $4acb: $0b
	ld   d, l                                        ; $4acc: $55
	and  h                                           ; $4acd: $a4
	and  l                                           ; $4ace: $a5
	rrca                                             ; $4acf: $0f
	ld   c, l                                        ; $4ad0: $4d
	ld   c, [hl]                                     ; $4ad1: $4e
	ld   c, a                                        ; $4ad2: $4f
	ld   d, b                                        ; $4ad3: $50

jr_091_4ad4:
	ld   d, c                                        ; $4ad4: $51
	ld   d, d                                        ; $4ad5: $52
	ld   d, e                                        ; $4ad6: $53
	ld   d, h                                        ; $4ad7: $54
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	nop                                              ; $4ada: $00
	ld   [$0100], sp                                 ; $4adb: $08 $00 $01
	ld   [bc], a                                     ; $4ade: $02
	inc  bc                                          ; $4adf: $03
	daa                                              ; $4ae0: $27
	jr   z, jr_091_4b0c                              ; $4ae1: $28 $29

	ld   a, [hl+]                                    ; $4ae3: $2a
	dec  hl                                          ; $4ae4: $2b
	inc  l                                           ; $4ae5: $2c
	dec  l                                           ; $4ae6: $2d
	ld   l, $55                                      ; $4ae7: $2e $55
	cpl                                              ; $4ae9: $2f
	jr   nc, jr_091_4afb                             ; $4aea: $30 $0f

	ld   c, l                                        ; $4aec: $4d
	ld   c, [hl]                                     ; $4aed: $4e
	ld   c, a                                        ; $4aee: $4f
	ld   d, b                                        ; $4aef: $50
	ld   d, c                                        ; $4af0: $51
	ld   d, d                                        ; $4af1: $52
	ld   d, e                                        ; $4af2: $53
	ld   d, h                                        ; $4af3: $54
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	nop                                              ; $4af6: $00
	ld   [$0100], sp                                 ; $4af7: $08 $00 $01
	ld   [bc], a                                     ; $4afa: $02

jr_091_4afb:
	inc  bc                                          ; $4afb: $03
	ld   sp, $3332                                   ; $4afc: $31 $32 $33
	inc  [hl]                                        ; $4aff: $34
	dec  [hl]                                        ; $4b00: $35
	ld   [hl], $37                                   ; $4b01: $36 $37
	jr   c, jr_091_4b5a                              ; $4b03: $38 $55

	cpl                                              ; $4b05: $2f
	add  hl, sp                                      ; $4b06: $39
	rrca                                             ; $4b07: $0f
	ld   c, l                                        ; $4b08: $4d
	ld   c, [hl]                                     ; $4b09: $4e
	ld   c, a                                        ; $4b0a: $4f
	ld   d, b                                        ; $4b0b: $50

jr_091_4b0c:
	ld   d, c                                        ; $4b0c: $51
	ld   d, d                                        ; $4b0d: $52
	ld   d, e                                        ; $4b0e: $53
	ld   d, h                                        ; $4b0f: $54
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	nop                                              ; $4b12: $00
	ld   [$0100], sp                                 ; $4b13: $08 $00 $01
	ld   [bc], a                                     ; $4b16: $02
	inc  bc                                          ; $4b17: $03
	daa                                              ; $4b18: $27
	jr   z, jr_091_4b44                              ; $4b19: $28 $29

	ld   a, [hl+]                                    ; $4b1b: $2a
	dec  hl                                          ; $4b1c: $2b
	inc  l                                           ; $4b1d: $2c
	dec  l                                           ; $4b1e: $2d
	ld   l, $55                                      ; $4b1f: $2e $55
	and  [hl]                                        ; $4b21: $a6
	jr   nc, jr_091_4b33                             ; $4b22: $30 $0f

	ld   c, l                                        ; $4b24: $4d
	ld   c, [hl]                                     ; $4b25: $4e
	ld   c, a                                        ; $4b26: $4f
	ld   d, b                                        ; $4b27: $50
	ld   d, c                                        ; $4b28: $51
	ld   d, d                                        ; $4b29: $52
	ld   d, e                                        ; $4b2a: $53
	ld   d, h                                        ; $4b2b: $54
	rst  $38                                         ; $4b2c: $ff
	rst  $38                                         ; $4b2d: $ff
	nop                                              ; $4b2e: $00
	ld   [$0100], sp                                 ; $4b2f: $08 $00 $01
	ld   [bc], a                                     ; $4b32: $02

jr_091_4b33:
	inc  bc                                          ; $4b33: $03
	ld   a, [hl-]                                    ; $4b34: $3a
	dec  sp                                          ; $4b35: $3b
	inc  a                                           ; $4b36: $3c
	dec  a                                           ; $4b37: $3d
	ld   a, $3f                                      ; $4b38: $3e $3f
	ld   b, b                                        ; $4b3a: $40
	ld   b, c                                        ; $4b3b: $41
	ld   d, l                                        ; $4b3c: $55
	ld   b, d                                        ; $4b3d: $42
	and  e                                           ; $4b3e: $a3
	rrca                                             ; $4b3f: $0f
	ld   c, l                                        ; $4b40: $4d
	ld   c, [hl]                                     ; $4b41: $4e
	ld   c, a                                        ; $4b42: $4f
	ld   d, b                                        ; $4b43: $50

jr_091_4b44:
	ld   d, c                                        ; $4b44: $51
	ld   d, d                                        ; $4b45: $52
	ld   d, e                                        ; $4b46: $53
	ld   d, h                                        ; $4b47: $54
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	nop                                              ; $4b4a: $00
	ld   [$0100], sp                                 ; $4b4b: $08 $00 $01
	ld   [bc], a                                     ; $4b4e: $02
	inc  bc                                          ; $4b4f: $03
	ld   b, h                                        ; $4b50: $44
	ld   b, l                                        ; $4b51: $45
	ld   b, [hl]                                     ; $4b52: $46
	ld   b, a                                        ; $4b53: $47
	ld   c, b                                        ; $4b54: $48
	ld   c, c                                        ; $4b55: $49
	ld   c, d                                        ; $4b56: $4a
	ld   c, e                                        ; $4b57: $4b
	ld   d, l                                        ; $4b58: $55
	ld   c, h                                        ; $4b59: $4c

jr_091_4b5a:
	ld   b, e                                        ; $4b5a: $43
	rrca                                             ; $4b5b: $0f
	ld   c, l                                        ; $4b5c: $4d
	ld   c, [hl]                                     ; $4b5d: $4e
	ld   c, a                                        ; $4b5e: $4f
	ld   d, b                                        ; $4b5f: $50
	ld   d, c                                        ; $4b60: $51
	ld   d, d                                        ; $4b61: $52
	ld   d, e                                        ; $4b62: $53
	ld   d, h                                        ; $4b63: $54
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	nop                                              ; $4b66: $00
	ld   [$0100], sp                                 ; $4b67: $08 $00 $01
	ld   [bc], a                                     ; $4b6a: $02
	inc  bc                                          ; $4b6b: $03
	inc  b                                           ; $4b6c: $04
	dec  b                                           ; $4b6d: $05
	ld   b, $07                                      ; $4b6e: $06 $07
	ld   [$0a09], sp                                 ; $4b70: $08 $09 $0a
	dec  bc                                          ; $4b73: $0b
	ld   d, [hl]                                     ; $4b74: $56
	dec  c                                           ; $4b75: $0d
	ld   c, $0f                                      ; $4b76: $0e $0f
	ld   d, a                                        ; $4b78: $57
	ld   e, b                                        ; $4b79: $58
	ld   e, c                                        ; $4b7a: $59
	ld   e, d                                        ; $4b7b: $5a
	ld   e, e                                        ; $4b7c: $5b
	ld   e, h                                        ; $4b7d: $5c
	ld   e, l                                        ; $4b7e: $5d
	ld   e, [hl]                                     ; $4b7f: $5e
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	sbc  l                                           ; $4b82: $9d
	add  hl, bc                                      ; $4b83: $09
	nop                                              ; $4b84: $00
	ld   bc, $0302                                   ; $4b85: $01 $02 $03
	jr   @+$1b                                       ; $4b88: $18 $19

	ld   a, [de]                                     ; $4b8a: $1a
	dec  de                                          ; $4b8b: $1b
	inc  e                                           ; $4b8c: $1c
	dec  e                                           ; $4b8d: $1d
	ld   e, $1f                                      ; $4b8e: $1e $1f
	ld   d, [hl]                                     ; $4b90: $56
	jr   nz, jr_091_4bb4                             ; $4b91: $20 $21

	rrca                                             ; $4b93: $0f
	ld   d, a                                        ; $4b94: $57
	ld   e, b                                        ; $4b95: $58
	ld   e, c                                        ; $4b96: $59
	ld   e, d                                        ; $4b97: $5a
	ld   e, e                                        ; $4b98: $5b
	ld   e, h                                        ; $4b99: $5c
	ld   e, l                                        ; $4b9a: $5d
	ld   e, [hl]                                     ; $4b9b: $5e
	rst  $38                                         ; $4b9c: $ff
	rst  $38                                         ; $4b9d: $ff
	sbc  l                                           ; $4b9e: $9d
	add  hl, bc                                      ; $4b9f: $09
	nop                                              ; $4ba0: $00
	ld   bc, $0302                                   ; $4ba1: $01 $02 $03
	ld   [hl+], a                                    ; $4ba4: $22
	inc  hl                                          ; $4ba5: $23
	inc  h                                           ; $4ba6: $24
	rlca                                             ; $4ba7: $07
	ld   [$2625], sp                                 ; $4ba8: $08 $25 $26
	dec  bc                                          ; $4bab: $0b
	ld   d, [hl]                                     ; $4bac: $56
	and  h                                           ; $4bad: $a4
	and  l                                           ; $4bae: $a5
	rrca                                             ; $4baf: $0f
	ld   d, a                                        ; $4bb0: $57
	ld   e, b                                        ; $4bb1: $58
	ld   e, c                                        ; $4bb2: $59
	ld   e, d                                        ; $4bb3: $5a

jr_091_4bb4:
	ld   e, e                                        ; $4bb4: $5b
	ld   e, h                                        ; $4bb5: $5c
	ld   e, l                                        ; $4bb6: $5d
	ld   e, [hl]                                     ; $4bb7: $5e
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	sbc  l                                           ; $4bba: $9d
	add  hl, bc                                      ; $4bbb: $09
	nop                                              ; $4bbc: $00
	ld   bc, $0302                                   ; $4bbd: $01 $02 $03
	daa                                              ; $4bc0: $27
	jr   z, jr_091_4bec                              ; $4bc1: $28 $29

	ld   a, [hl+]                                    ; $4bc3: $2a
	dec  hl                                          ; $4bc4: $2b
	inc  l                                           ; $4bc5: $2c
	dec  l                                           ; $4bc6: $2d
	ld   l, $56                                      ; $4bc7: $2e $56
	cpl                                              ; $4bc9: $2f
	jr   nc, @+$11                                   ; $4bca: $30 $0f

	ld   d, a                                        ; $4bcc: $57
	ld   e, b                                        ; $4bcd: $58
	ld   e, c                                        ; $4bce: $59
	ld   e, d                                        ; $4bcf: $5a
	ld   e, e                                        ; $4bd0: $5b
	ld   e, h                                        ; $4bd1: $5c
	ld   e, l                                        ; $4bd2: $5d
	ld   e, [hl]                                     ; $4bd3: $5e
	rst  $38                                         ; $4bd4: $ff
	rst  $38                                         ; $4bd5: $ff
	sbc  l                                           ; $4bd6: $9d
	add  hl, bc                                      ; $4bd7: $09
	nop                                              ; $4bd8: $00
	ld   bc, $0302                                   ; $4bd9: $01 $02 $03
	ld   sp, $3332                                   ; $4bdc: $31 $32 $33
	inc  [hl]                                        ; $4bdf: $34
	dec  [hl]                                        ; $4be0: $35
	ld   [hl], $37                                   ; $4be1: $36 $37
	jr   c, jr_091_4c3b                              ; $4be3: $38 $56

	cpl                                              ; $4be5: $2f
	add  hl, sp                                      ; $4be6: $39
	rrca                                             ; $4be7: $0f
	ld   d, a                                        ; $4be8: $57
	ld   e, b                                        ; $4be9: $58
	ld   e, c                                        ; $4bea: $59
	ld   e, d                                        ; $4beb: $5a

jr_091_4bec:
	ld   e, e                                        ; $4bec: $5b
	ld   e, h                                        ; $4bed: $5c
	ld   e, l                                        ; $4bee: $5d
	ld   e, [hl]                                     ; $4bef: $5e
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	sbc  l                                           ; $4bf2: $9d
	add  hl, bc                                      ; $4bf3: $09
	nop                                              ; $4bf4: $00
	ld   bc, $0302                                   ; $4bf5: $01 $02 $03
	daa                                              ; $4bf8: $27
	jr   z, jr_091_4c24                              ; $4bf9: $28 $29

	ld   a, [hl+]                                    ; $4bfb: $2a
	dec  hl                                          ; $4bfc: $2b
	inc  l                                           ; $4bfd: $2c
	dec  l                                           ; $4bfe: $2d
	ld   l, $56                                      ; $4bff: $2e $56
	and  [hl]                                        ; $4c01: $a6
	jr   nc, @+$11                                   ; $4c02: $30 $0f

	ld   d, a                                        ; $4c04: $57
	ld   e, b                                        ; $4c05: $58
	ld   e, c                                        ; $4c06: $59
	ld   e, d                                        ; $4c07: $5a
	ld   e, e                                        ; $4c08: $5b
	ld   e, h                                        ; $4c09: $5c
	ld   e, l                                        ; $4c0a: $5d
	ld   e, [hl]                                     ; $4c0b: $5e
	rst  $38                                         ; $4c0c: $ff
	rst  $38                                         ; $4c0d: $ff
	sbc  l                                           ; $4c0e: $9d
	add  hl, bc                                      ; $4c0f: $09
	nop                                              ; $4c10: $00
	ld   bc, $0302                                   ; $4c11: $01 $02 $03
	ld   a, [hl-]                                    ; $4c14: $3a
	dec  sp                                          ; $4c15: $3b
	inc  a                                           ; $4c16: $3c
	dec  a                                           ; $4c17: $3d
	ld   a, $3f                                      ; $4c18: $3e $3f
	ld   b, b                                        ; $4c1a: $40
	ld   b, c                                        ; $4c1b: $41
	ld   d, [hl]                                     ; $4c1c: $56
	ld   b, d                                        ; $4c1d: $42
	and  e                                           ; $4c1e: $a3
	rrca                                             ; $4c1f: $0f
	ld   d, a                                        ; $4c20: $57
	ld   e, b                                        ; $4c21: $58
	ld   e, c                                        ; $4c22: $59
	ld   e, d                                        ; $4c23: $5a

jr_091_4c24:
	ld   e, e                                        ; $4c24: $5b
	ld   e, h                                        ; $4c25: $5c
	ld   e, l                                        ; $4c26: $5d
	ld   e, [hl]                                     ; $4c27: $5e
	rst  $38                                         ; $4c28: $ff
	rst  $38                                         ; $4c29: $ff
	sbc  l                                           ; $4c2a: $9d
	add  hl, bc                                      ; $4c2b: $09
	nop                                              ; $4c2c: $00
	ld   bc, $0302                                   ; $4c2d: $01 $02 $03
	ld   b, h                                        ; $4c30: $44
	ld   b, l                                        ; $4c31: $45
	ld   b, [hl]                                     ; $4c32: $46
	ld   b, a                                        ; $4c33: $47
	ld   c, b                                        ; $4c34: $48
	ld   c, c                                        ; $4c35: $49
	ld   c, d                                        ; $4c36: $4a
	ld   c, e                                        ; $4c37: $4b
	ld   d, [hl]                                     ; $4c38: $56
	ld   c, h                                        ; $4c39: $4c
	ld   b, e                                        ; $4c3a: $43

jr_091_4c3b:
	rrca                                             ; $4c3b: $0f
	ld   d, a                                        ; $4c3c: $57
	ld   e, b                                        ; $4c3d: $58
	ld   e, c                                        ; $4c3e: $59
	ld   e, d                                        ; $4c3f: $5a
	ld   e, e                                        ; $4c40: $5b
	ld   e, h                                        ; $4c41: $5c
	ld   e, l                                        ; $4c42: $5d
	ld   e, [hl]                                     ; $4c43: $5e
	rst  $38                                         ; $4c44: $ff
	rst  $38                                         ; $4c45: $ff
	sbc  l                                           ; $4c46: $9d
	add  hl, bc                                      ; $4c47: $09
	ld   e, a                                        ; $4c48: $5f
	ld   bc, $6002                                   ; $4c49: $01 $02 $60
	inc  b                                           ; $4c4c: $04
	dec  b                                           ; $4c4d: $05
	ld   b, $07                                      ; $4c4e: $06 $07
	ld   [$0a09], sp                                 ; $4c50: $08 $09 $0a
	dec  bc                                          ; $4c53: $0b
	ld   h, c                                        ; $4c54: $61
	dec  c                                           ; $4c55: $0d
	ld   c, $62                                      ; $4c56: $0e $62
	ld   h, e                                        ; $4c58: $63
	ld   h, h                                        ; $4c59: $64
	ld   h, l                                        ; $4c5a: $65
	ld   h, [hl]                                     ; $4c5b: $66
	ld   h, a                                        ; $4c5c: $67
	ld   l, b                                        ; $4c5d: $68
	ld   l, c                                        ; $4c5e: $69
	ld   l, d                                        ; $4c5f: $6a
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	sub  b                                           ; $4c62: $90
	ld   a, [bc]                                     ; $4c63: $0a
	ld   e, a                                        ; $4c64: $5f
	ld   bc, $6002                                   ; $4c65: $01 $02 $60
	jr   @+$1b                                       ; $4c68: $18 $19

	ld   a, [de]                                     ; $4c6a: $1a
	dec  de                                          ; $4c6b: $1b
	inc  e                                           ; $4c6c: $1c
	dec  e                                           ; $4c6d: $1d
	ld   e, $1f                                      ; $4c6e: $1e $1f
	ld   h, c                                        ; $4c70: $61
	jr   nz, jr_091_4c94                             ; $4c71: $20 $21

	ld   h, d                                        ; $4c73: $62
	ld   h, e                                        ; $4c74: $63
	ld   h, h                                        ; $4c75: $64
	ld   h, l                                        ; $4c76: $65
	ld   h, [hl]                                     ; $4c77: $66
	ld   h, a                                        ; $4c78: $67
	ld   l, b                                        ; $4c79: $68
	ld   l, c                                        ; $4c7a: $69
	ld   l, d                                        ; $4c7b: $6a
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	sub  b                                           ; $4c7e: $90
	ld   a, [bc]                                     ; $4c7f: $0a
	ld   e, a                                        ; $4c80: $5f
	ld   bc, $6002                                   ; $4c81: $01 $02 $60
	ld   [hl+], a                                    ; $4c84: $22
	inc  hl                                          ; $4c85: $23
	inc  h                                           ; $4c86: $24
	rlca                                             ; $4c87: $07
	ld   [$2625], sp                                 ; $4c88: $08 $25 $26
	dec  bc                                          ; $4c8b: $0b
	ld   h, c                                        ; $4c8c: $61
	and  h                                           ; $4c8d: $a4
	and  l                                           ; $4c8e: $a5
	ld   h, d                                        ; $4c8f: $62
	ld   h, e                                        ; $4c90: $63
	ld   h, h                                        ; $4c91: $64
	ld   h, l                                        ; $4c92: $65
	ld   h, [hl]                                     ; $4c93: $66

jr_091_4c94:
	ld   h, a                                        ; $4c94: $67
	ld   l, b                                        ; $4c95: $68
	ld   l, c                                        ; $4c96: $69
	ld   l, d                                        ; $4c97: $6a
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	sub  b                                           ; $4c9a: $90
	ld   a, [bc]                                     ; $4c9b: $0a
	ld   e, a                                        ; $4c9c: $5f
	ld   bc, $6002                                   ; $4c9d: $01 $02 $60
	daa                                              ; $4ca0: $27
	jr   z, jr_091_4ccc                              ; $4ca1: $28 $29

	ld   a, [hl+]                                    ; $4ca3: $2a
	dec  hl                                          ; $4ca4: $2b
	inc  l                                           ; $4ca5: $2c
	dec  l                                           ; $4ca6: $2d
	ld   l, $61                                      ; $4ca7: $2e $61
	cpl                                              ; $4ca9: $2f
	jr   nc, @+$64                                   ; $4caa: $30 $62

	ld   h, e                                        ; $4cac: $63
	ld   h, h                                        ; $4cad: $64
	ld   h, l                                        ; $4cae: $65
	ld   h, [hl]                                     ; $4caf: $66
	ld   h, a                                        ; $4cb0: $67
	ld   l, b                                        ; $4cb1: $68
	ld   l, c                                        ; $4cb2: $69
	ld   l, d                                        ; $4cb3: $6a
	rst  $38                                         ; $4cb4: $ff
	rst  $38                                         ; $4cb5: $ff
	sub  b                                           ; $4cb6: $90
	ld   a, [bc]                                     ; $4cb7: $0a
	ld   e, a                                        ; $4cb8: $5f
	ld   bc, $6002                                   ; $4cb9: $01 $02 $60
	ld   sp, $3332                                   ; $4cbc: $31 $32 $33
	inc  [hl]                                        ; $4cbf: $34
	dec  [hl]                                        ; $4cc0: $35
	ld   [hl], $37                                   ; $4cc1: $36 $37
	jr   c, jr_091_4d26                              ; $4cc3: $38 $61

	cpl                                              ; $4cc5: $2f
	add  hl, sp                                      ; $4cc6: $39
	ld   h, d                                        ; $4cc7: $62
	ld   h, e                                        ; $4cc8: $63
	ld   h, h                                        ; $4cc9: $64
	ld   h, l                                        ; $4cca: $65
	ld   h, [hl]                                     ; $4ccb: $66

jr_091_4ccc:
	ld   h, a                                        ; $4ccc: $67
	ld   l, b                                        ; $4ccd: $68
	ld   l, c                                        ; $4cce: $69
	ld   l, d                                        ; $4ccf: $6a
	rst  $38                                         ; $4cd0: $ff
	rst  $38                                         ; $4cd1: $ff
	sub  b                                           ; $4cd2: $90
	ld   a, [bc]                                     ; $4cd3: $0a
	ld   e, a                                        ; $4cd4: $5f
	ld   bc, $6002                                   ; $4cd5: $01 $02 $60
	daa                                              ; $4cd8: $27
	jr   z, jr_091_4d04                              ; $4cd9: $28 $29

	ld   a, [hl+]                                    ; $4cdb: $2a
	dec  hl                                          ; $4cdc: $2b
	inc  l                                           ; $4cdd: $2c
	dec  l                                           ; $4cde: $2d
	ld   l, $61                                      ; $4cdf: $2e $61
	and  [hl]                                        ; $4ce1: $a6
	jr   nc, jr_091_4d46                             ; $4ce2: $30 $62

	ld   h, e                                        ; $4ce4: $63
	ld   h, h                                        ; $4ce5: $64
	ld   h, l                                        ; $4ce6: $65
	ld   h, [hl]                                     ; $4ce7: $66
	ld   h, a                                        ; $4ce8: $67
	ld   l, b                                        ; $4ce9: $68
	ld   l, c                                        ; $4cea: $69
	ld   l, d                                        ; $4ceb: $6a
	rst  $38                                         ; $4cec: $ff
	rst  $38                                         ; $4ced: $ff
	sub  b                                           ; $4cee: $90
	ld   a, [bc]                                     ; $4cef: $0a
	ld   e, a                                        ; $4cf0: $5f
	ld   bc, $6002                                   ; $4cf1: $01 $02 $60
	ld   a, [hl-]                                    ; $4cf4: $3a
	dec  sp                                          ; $4cf5: $3b
	inc  a                                           ; $4cf6: $3c
	dec  a                                           ; $4cf7: $3d
	ld   a, $3f                                      ; $4cf8: $3e $3f
	ld   b, b                                        ; $4cfa: $40
	ld   b, c                                        ; $4cfb: $41
	ld   h, c                                        ; $4cfc: $61
	ld   b, d                                        ; $4cfd: $42
	and  e                                           ; $4cfe: $a3
	ld   h, d                                        ; $4cff: $62
	ld   h, e                                        ; $4d00: $63
	ld   h, h                                        ; $4d01: $64
	ld   h, l                                        ; $4d02: $65
	ld   h, [hl]                                     ; $4d03: $66

jr_091_4d04:
	ld   h, a                                        ; $4d04: $67
	ld   l, b                                        ; $4d05: $68
	ld   l, c                                        ; $4d06: $69
	ld   l, d                                        ; $4d07: $6a
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	sub  b                                           ; $4d0a: $90
	ld   a, [bc]                                     ; $4d0b: $0a
	ld   e, a                                        ; $4d0c: $5f
	ld   bc, $6002                                   ; $4d0d: $01 $02 $60
	ld   b, h                                        ; $4d10: $44
	ld   b, l                                        ; $4d11: $45
	ld   b, [hl]                                     ; $4d12: $46
	ld   b, a                                        ; $4d13: $47
	ld   c, b                                        ; $4d14: $48
	ld   c, c                                        ; $4d15: $49
	ld   c, d                                        ; $4d16: $4a
	ld   c, e                                        ; $4d17: $4b
	ld   h, c                                        ; $4d18: $61
	ld   c, h                                        ; $4d19: $4c
	ld   b, e                                        ; $4d1a: $43
	ld   h, d                                        ; $4d1b: $62
	ld   h, e                                        ; $4d1c: $63
	ld   h, h                                        ; $4d1d: $64
	ld   h, l                                        ; $4d1e: $65
	ld   h, [hl]                                     ; $4d1f: $66
	ld   h, a                                        ; $4d20: $67
	ld   l, b                                        ; $4d21: $68
	ld   l, c                                        ; $4d22: $69
	ld   l, d                                        ; $4d23: $6a
	rst  $38                                         ; $4d24: $ff
	rst  $38                                         ; $4d25: $ff

jr_091_4d26:
	sub  b                                           ; $4d26: $90
	ld   a, [bc]                                     ; $4d27: $0a
	ld   e, a                                        ; $4d28: $5f
	ld   bc, $6002                                   ; $4d29: $01 $02 $60
	ld   l, e                                        ; $4d2c: $6b
	ld   l, h                                        ; $4d2d: $6c
	ld   l, l                                        ; $4d2e: $6d
	ld   l, [hl]                                     ; $4d2f: $6e
	ld   l, a                                        ; $4d30: $6f
	ld   [hl], b                                     ; $4d31: $70
	ld   [hl], c                                     ; $4d32: $71
	ld   [hl], d                                     ; $4d33: $72
	ld   h, c                                        ; $4d34: $61
	dec  c                                           ; $4d35: $0d
	ld   c, $62                                      ; $4d36: $0e $62
	ld   h, e                                        ; $4d38: $63
	ld   h, h                                        ; $4d39: $64
	ld   h, l                                        ; $4d3a: $65
	ld   h, [hl]                                     ; $4d3b: $66
	ld   h, a                                        ; $4d3c: $67
	ld   l, b                                        ; $4d3d: $68
	ld   l, c                                        ; $4d3e: $69
	ld   l, d                                        ; $4d3f: $6a
	rst  $38                                         ; $4d40: $ff
	rst  $38                                         ; $4d41: $ff
	sub  b                                           ; $4d42: $90
	ld   a, [bc]                                     ; $4d43: $0a
	ld   [hl], e                                     ; $4d44: $73
	ld   [hl], h                                     ; $4d45: $74

jr_091_4d46:
	ld   [hl], l                                     ; $4d46: $75
	halt                                             ; $4d47: $76
	ld   [hl], a                                     ; $4d48: $77
	ld   a, b                                        ; $4d49: $78
	ld   a, c                                        ; $4d4a: $79
	ld   a, d                                        ; $4d4b: $7a
	ld   a, e                                        ; $4d4c: $7b
	ld   a, h                                        ; $4d4d: $7c
	ld   a, l                                        ; $4d4e: $7d
	ld   a, [hl]                                     ; $4d4f: $7e
	ld   a, a                                        ; $4d50: $7f
	add  b                                           ; $4d51: $80
	add  c                                           ; $4d52: $81
	add  d                                           ; $4d53: $82
	add  e                                           ; $4d54: $83
	add  h                                           ; $4d55: $84
	add  l                                           ; $4d56: $85
	add  [hl]                                        ; $4d57: $86
	add  a                                           ; $4d58: $87
	adc  b                                           ; $4d59: $88
	adc  c                                           ; $4d5a: $89
	adc  d                                           ; $4d5b: $8a
	rst  $38                                         ; $4d5c: $ff
	rst  $38                                         ; $4d5d: $ff
	ret  nc                                          ; $4d5e: $d0

	ld   a, [bc]                                     ; $4d5f: $0a
	nop                                              ; $4d60: $00
	ld   bc, $0302                                   ; $4d61: $01 $02 $03
	inc  b                                           ; $4d64: $04
	dec  b                                           ; $4d65: $05
	ld   b, $07                                      ; $4d66: $06 $07
	ld   [$0a09], sp                                 ; $4d68: $08 $09 $0a
	dec  bc                                          ; $4d6b: $0b
	inc  c                                           ; $4d6c: $0c
	dec  c                                           ; $4d6d: $0d
	ld   c, $0f                                      ; $4d6e: $0e $0f
	adc  e                                           ; $4d70: $8b
	adc  h                                           ; $4d71: $8c
	adc  l                                           ; $4d72: $8d
	adc  [hl]                                        ; $4d73: $8e
	adc  a                                           ; $4d74: $8f
	sub  b                                           ; $4d75: $90
	sub  c                                           ; $4d76: $91
	sub  d                                           ; $4d77: $92
	rst  $38                                         ; $4d78: $ff
	rst  $38                                         ; $4d79: $ff
	nop                                              ; $4d7a: $00
	dec  bc                                          ; $4d7b: $0b
	nop                                              ; $4d7c: $00
	ld   bc, $0302                                   ; $4d7d: $01 $02 $03
	jr   @+$1b                                       ; $4d80: $18 $19

	ld   a, [de]                                     ; $4d82: $1a
	dec  de                                          ; $4d83: $1b
	inc  e                                           ; $4d84: $1c
	dec  e                                           ; $4d85: $1d
	ld   e, $1f                                      ; $4d86: $1e $1f
	inc  c                                           ; $4d88: $0c
	jr   nz, jr_091_4dac                             ; $4d89: $20 $21

	rrca                                             ; $4d8b: $0f
	adc  e                                           ; $4d8c: $8b
	adc  h                                           ; $4d8d: $8c
	adc  l                                           ; $4d8e: $8d
	adc  [hl]                                        ; $4d8f: $8e
	adc  a                                           ; $4d90: $8f
	sub  b                                           ; $4d91: $90
	sub  c                                           ; $4d92: $91
	sub  d                                           ; $4d93: $92
	rst  $38                                         ; $4d94: $ff
	rst  $38                                         ; $4d95: $ff
	nop                                              ; $4d96: $00
	dec  bc                                          ; $4d97: $0b
	nop                                              ; $4d98: $00
	ld   bc, $0302                                   ; $4d99: $01 $02 $03
	ld   [hl+], a                                    ; $4d9c: $22
	inc  hl                                          ; $4d9d: $23
	inc  h                                           ; $4d9e: $24
	rlca                                             ; $4d9f: $07
	ld   [$2625], sp                                 ; $4da0: $08 $25 $26
	dec  bc                                          ; $4da3: $0b
	inc  c                                           ; $4da4: $0c
	and  h                                           ; $4da5: $a4
	and  l                                           ; $4da6: $a5
	rrca                                             ; $4da7: $0f
	adc  e                                           ; $4da8: $8b
	adc  h                                           ; $4da9: $8c
	adc  l                                           ; $4daa: $8d
	adc  [hl]                                        ; $4dab: $8e

jr_091_4dac:
	adc  a                                           ; $4dac: $8f
	sub  b                                           ; $4dad: $90
	sub  c                                           ; $4dae: $91
	sub  d                                           ; $4daf: $92
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	nop                                              ; $4db2: $00
	dec  bc                                          ; $4db3: $0b
	nop                                              ; $4db4: $00
	ld   bc, $0302                                   ; $4db5: $01 $02 $03
	daa                                              ; $4db8: $27
	jr   z, jr_091_4de4                              ; $4db9: $28 $29

	ld   a, [hl+]                                    ; $4dbb: $2a
	dec  hl                                          ; $4dbc: $2b
	inc  l                                           ; $4dbd: $2c
	dec  l                                           ; $4dbe: $2d
	ld   l, $0c                                      ; $4dbf: $2e $0c
	cpl                                              ; $4dc1: $2f
	jr   nc, @+$11                                   ; $4dc2: $30 $0f

	adc  e                                           ; $4dc4: $8b
	adc  h                                           ; $4dc5: $8c
	adc  l                                           ; $4dc6: $8d
	adc  [hl]                                        ; $4dc7: $8e
	adc  a                                           ; $4dc8: $8f
	sub  b                                           ; $4dc9: $90
	sub  c                                           ; $4dca: $91
	sub  d                                           ; $4dcb: $92
	rst  $38                                         ; $4dcc: $ff
	rst  $38                                         ; $4dcd: $ff
	nop                                              ; $4dce: $00
	dec  bc                                          ; $4dcf: $0b
	nop                                              ; $4dd0: $00
	ld   bc, $0302                                   ; $4dd1: $01 $02 $03
	ld   sp, $3332                                   ; $4dd4: $31 $32 $33
	inc  [hl]                                        ; $4dd7: $34
	dec  [hl]                                        ; $4dd8: $35
	ld   [hl], $37                                   ; $4dd9: $36 $37
	jr   c, jr_091_4de9                              ; $4ddb: $38 $0c

	cpl                                              ; $4ddd: $2f
	add  hl, sp                                      ; $4dde: $39
	rrca                                             ; $4ddf: $0f
	adc  e                                           ; $4de0: $8b
	adc  h                                           ; $4de1: $8c
	adc  l                                           ; $4de2: $8d
	adc  [hl]                                        ; $4de3: $8e

jr_091_4de4:
	adc  a                                           ; $4de4: $8f
	sub  b                                           ; $4de5: $90
	sub  c                                           ; $4de6: $91
	sub  d                                           ; $4de7: $92
	rst  $38                                         ; $4de8: $ff

jr_091_4de9:
	rst  $38                                         ; $4de9: $ff
	nop                                              ; $4dea: $00
	dec  bc                                          ; $4deb: $0b
	nop                                              ; $4dec: $00
	ld   bc, $0302                                   ; $4ded: $01 $02 $03
	daa                                              ; $4df0: $27
	jr   z, jr_091_4e1c                              ; $4df1: $28 $29

	ld   a, [hl+]                                    ; $4df3: $2a
	dec  hl                                          ; $4df4: $2b
	inc  l                                           ; $4df5: $2c
	dec  l                                           ; $4df6: $2d
	ld   l, $0c                                      ; $4df7: $2e $0c
	and  [hl]                                        ; $4df9: $a6
	jr   nc, @+$11                                   ; $4dfa: $30 $0f

	adc  e                                           ; $4dfc: $8b
	adc  h                                           ; $4dfd: $8c
	adc  l                                           ; $4dfe: $8d
	adc  [hl]                                        ; $4dff: $8e
	adc  a                                           ; $4e00: $8f
	sub  b                                           ; $4e01: $90
	sub  c                                           ; $4e02: $91
	sub  d                                           ; $4e03: $92
	rst  $38                                         ; $4e04: $ff
	rst  $38                                         ; $4e05: $ff
	nop                                              ; $4e06: $00
	dec  bc                                          ; $4e07: $0b
	nop                                              ; $4e08: $00
	ld   bc, $0302                                   ; $4e09: $01 $02 $03
	ld   a, [hl-]                                    ; $4e0c: $3a
	dec  sp                                          ; $4e0d: $3b
	inc  a                                           ; $4e0e: $3c
	dec  a                                           ; $4e0f: $3d
	ld   a, $3f                                      ; $4e10: $3e $3f
	ld   b, b                                        ; $4e12: $40
	ld   b, c                                        ; $4e13: $41
	inc  c                                           ; $4e14: $0c
	ld   b, d                                        ; $4e15: $42
	and  e                                           ; $4e16: $a3
	rrca                                             ; $4e17: $0f
	adc  e                                           ; $4e18: $8b
	adc  h                                           ; $4e19: $8c
	adc  l                                           ; $4e1a: $8d
	adc  [hl]                                        ; $4e1b: $8e

jr_091_4e1c:
	adc  a                                           ; $4e1c: $8f
	sub  b                                           ; $4e1d: $90
	sub  c                                           ; $4e1e: $91
	sub  d                                           ; $4e1f: $92
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	nop                                              ; $4e22: $00
	dec  bc                                          ; $4e23: $0b
	nop                                              ; $4e24: $00
	ld   bc, $0302                                   ; $4e25: $01 $02 $03
	ld   b, h                                        ; $4e28: $44
	ld   b, l                                        ; $4e29: $45
	ld   b, [hl]                                     ; $4e2a: $46
	ld   b, a                                        ; $4e2b: $47
	ld   c, b                                        ; $4e2c: $48
	ld   c, c                                        ; $4e2d: $49
	ld   c, d                                        ; $4e2e: $4a
	ld   c, e                                        ; $4e2f: $4b
	inc  c                                           ; $4e30: $0c
	ld   c, h                                        ; $4e31: $4c
	ld   b, e                                        ; $4e32: $43
	rrca                                             ; $4e33: $0f
	adc  e                                           ; $4e34: $8b
	adc  h                                           ; $4e35: $8c
	adc  l                                           ; $4e36: $8d
	adc  [hl]                                        ; $4e37: $8e
	adc  a                                           ; $4e38: $8f
	sub  b                                           ; $4e39: $90
	sub  c                                           ; $4e3a: $91
	sub  d                                           ; $4e3b: $92
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	nop                                              ; $4e3e: $00
	dec  bc                                          ; $4e3f: $0b
	nop                                              ; $4e40: $00
	ld   bc, $0302                                   ; $4e41: $01 $02 $03
	inc  b                                           ; $4e44: $04
	dec  b                                           ; $4e45: $05
	ld   b, $07                                      ; $4e46: $06 $07
	ld   [$0a09], sp                                 ; $4e48: $08 $09 $0a
	dec  bc                                          ; $4e4b: $0b
	ld   d, [hl]                                     ; $4e4c: $56
	dec  c                                           ; $4e4d: $0d
	ld   c, $0f                                      ; $4e4e: $0e $0f
	sub  e                                           ; $4e50: $93
	sub  h                                           ; $4e51: $94
	sub  l                                           ; $4e52: $95
	sub  [hl]                                        ; $4e53: $96
	sub  a                                           ; $4e54: $97
	sbc  b                                           ; $4e55: $98
	sbc  c                                           ; $4e56: $99
	sbc  d                                           ; $4e57: $9a
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rlca                                             ; $4e5b: $07
	nop                                              ; $4e5c: $00
	ld   bc, $0302                                   ; $4e5d: $01 $02 $03
	jr   @+$1b                                       ; $4e60: $18 $19

	ld   a, [de]                                     ; $4e62: $1a
	dec  de                                          ; $4e63: $1b
	inc  e                                           ; $4e64: $1c
	dec  e                                           ; $4e65: $1d
	ld   e, $1f                                      ; $4e66: $1e $1f
	ld   d, [hl]                                     ; $4e68: $56
	jr   nz, jr_091_4e8c                             ; $4e69: $20 $21

	rrca                                             ; $4e6b: $0f
	sub  e                                           ; $4e6c: $93
	sub  h                                           ; $4e6d: $94
	sub  l                                           ; $4e6e: $95
	sub  [hl]                                        ; $4e6f: $96
	sub  a                                           ; $4e70: $97
	sbc  b                                           ; $4e71: $98
	sbc  c                                           ; $4e72: $99
	sbc  d                                           ; $4e73: $9a
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rlca                                             ; $4e77: $07
	nop                                              ; $4e78: $00
	ld   bc, $0302                                   ; $4e79: $01 $02 $03
	ld   [hl+], a                                    ; $4e7c: $22
	inc  hl                                          ; $4e7d: $23
	inc  h                                           ; $4e7e: $24
	rlca                                             ; $4e7f: $07
	ld   [$2625], sp                                 ; $4e80: $08 $25 $26
	dec  bc                                          ; $4e83: $0b
	ld   d, [hl]                                     ; $4e84: $56
	and  h                                           ; $4e85: $a4
	and  l                                           ; $4e86: $a5
	rrca                                             ; $4e87: $0f
	sub  e                                           ; $4e88: $93
	sub  h                                           ; $4e89: $94
	sub  l                                           ; $4e8a: $95
	sub  [hl]                                        ; $4e8b: $96

jr_091_4e8c:
	sub  a                                           ; $4e8c: $97
	sbc  b                                           ; $4e8d: $98
	sbc  c                                           ; $4e8e: $99
	sbc  d                                           ; $4e8f: $9a
	rst  $38                                         ; $4e90: $ff
	rst  $38                                         ; $4e91: $ff
	rst  $38                                         ; $4e92: $ff
	rlca                                             ; $4e93: $07
	nop                                              ; $4e94: $00
	ld   bc, $0302                                   ; $4e95: $01 $02 $03
	daa                                              ; $4e98: $27
	jr   z, jr_091_4ec4                              ; $4e99: $28 $29

	ld   a, [hl+]                                    ; $4e9b: $2a
	dec  hl                                          ; $4e9c: $2b
	inc  l                                           ; $4e9d: $2c
	dec  l                                           ; $4e9e: $2d
	ld   l, $56                                      ; $4e9f: $2e $56
	cpl                                              ; $4ea1: $2f
	jr   nc, @+$11                                   ; $4ea2: $30 $0f

	sub  e                                           ; $4ea4: $93
	sub  h                                           ; $4ea5: $94
	sub  l                                           ; $4ea6: $95
	sub  [hl]                                        ; $4ea7: $96
	sub  a                                           ; $4ea8: $97
	sbc  b                                           ; $4ea9: $98
	sbc  c                                           ; $4eaa: $99
	sbc  d                                           ; $4eab: $9a
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	rst  $38                                         ; $4eae: $ff
	rlca                                             ; $4eaf: $07
	nop                                              ; $4eb0: $00
	ld   bc, $0302                                   ; $4eb1: $01 $02 $03
	ld   sp, $3332                                   ; $4eb4: $31 $32 $33
	inc  [hl]                                        ; $4eb7: $34
	dec  [hl]                                        ; $4eb8: $35
	ld   [hl], $37                                   ; $4eb9: $36 $37
	jr   c, jr_091_4f13                              ; $4ebb: $38 $56

	cpl                                              ; $4ebd: $2f
	add  hl, sp                                      ; $4ebe: $39
	rrca                                             ; $4ebf: $0f
	sub  e                                           ; $4ec0: $93
	sub  h                                           ; $4ec1: $94
	sub  l                                           ; $4ec2: $95
	sub  [hl]                                        ; $4ec3: $96

jr_091_4ec4:
	sub  a                                           ; $4ec4: $97
	sbc  b                                           ; $4ec5: $98
	sbc  c                                           ; $4ec6: $99
	sbc  d                                           ; $4ec7: $9a
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rlca                                             ; $4ecb: $07
	nop                                              ; $4ecc: $00
	ld   bc, $0302                                   ; $4ecd: $01 $02 $03
	daa                                              ; $4ed0: $27
	jr   z, jr_091_4efc                              ; $4ed1: $28 $29

	ld   a, [hl+]                                    ; $4ed3: $2a
	dec  hl                                          ; $4ed4: $2b
	inc  l                                           ; $4ed5: $2c
	dec  l                                           ; $4ed6: $2d
	ld   l, $56                                      ; $4ed7: $2e $56
	and  [hl]                                        ; $4ed9: $a6
	jr   nc, @+$11                                   ; $4eda: $30 $0f

	sub  e                                           ; $4edc: $93
	sub  h                                           ; $4edd: $94
	sub  l                                           ; $4ede: $95
	sub  [hl]                                        ; $4edf: $96
	sub  a                                           ; $4ee0: $97
	sbc  b                                           ; $4ee1: $98
	sbc  c                                           ; $4ee2: $99
	sbc  d                                           ; $4ee3: $9a
	rst  $38                                         ; $4ee4: $ff
	rst  $38                                         ; $4ee5: $ff
	rst  $38                                         ; $4ee6: $ff
	rlca                                             ; $4ee7: $07
	nop                                              ; $4ee8: $00
	ld   bc, $0302                                   ; $4ee9: $01 $02 $03
	ld   a, [hl-]                                    ; $4eec: $3a
	dec  sp                                          ; $4eed: $3b
	inc  a                                           ; $4eee: $3c
	dec  a                                           ; $4eef: $3d
	ld   a, $3f                                      ; $4ef0: $3e $3f
	ld   b, b                                        ; $4ef2: $40
	ld   b, c                                        ; $4ef3: $41
	ld   d, [hl]                                     ; $4ef4: $56
	ld   b, d                                        ; $4ef5: $42
	and  e                                           ; $4ef6: $a3
	rrca                                             ; $4ef7: $0f
	sub  e                                           ; $4ef8: $93
	sub  h                                           ; $4ef9: $94
	sub  l                                           ; $4efa: $95
	sub  [hl]                                        ; $4efb: $96

jr_091_4efc:
	sub  a                                           ; $4efc: $97
	sbc  b                                           ; $4efd: $98
	sbc  c                                           ; $4efe: $99
	sbc  d                                           ; $4eff: $9a
	rst  $38                                         ; $4f00: $ff
	rst  $38                                         ; $4f01: $ff
	rst  $38                                         ; $4f02: $ff
	rlca                                             ; $4f03: $07
	nop                                              ; $4f04: $00
	ld   bc, $0302                                   ; $4f05: $01 $02 $03
	ld   b, h                                        ; $4f08: $44
	ld   b, l                                        ; $4f09: $45
	ld   b, [hl]                                     ; $4f0a: $46
	ld   b, a                                        ; $4f0b: $47
	ld   c, b                                        ; $4f0c: $48
	ld   c, c                                        ; $4f0d: $49
	ld   c, d                                        ; $4f0e: $4a
	ld   c, e                                        ; $4f0f: $4b
	ld   d, [hl]                                     ; $4f10: $56
	ld   c, h                                        ; $4f11: $4c
	ld   b, e                                        ; $4f12: $43

jr_091_4f13:
	rrca                                             ; $4f13: $0f
	sub  e                                           ; $4f14: $93
	sub  h                                           ; $4f15: $94
	sub  l                                           ; $4f16: $95
	sub  [hl]                                        ; $4f17: $96
	sub  a                                           ; $4f18: $97
	sbc  b                                           ; $4f19: $98
	sbc  c                                           ; $4f1a: $99
	sbc  d                                           ; $4f1b: $9a
	rst  $38                                         ; $4f1c: $ff
	rst  $38                                         ; $4f1d: $ff
	rst  $38                                         ; $4f1e: $ff
	rlca                                             ; $4f1f: $07
	nop                                              ; $4f20: $00
	ld   bc, $0302                                   ; $4f21: $01 $02 $03
	sbc  e                                           ; $4f24: $9b
	sbc  h                                           ; $4f25: $9c
	sbc  l                                           ; $4f26: $9d
	sbc  [hl]                                        ; $4f27: $9e
	sbc  a                                           ; $4f28: $9f
	and  b                                           ; $4f29: $a0
	and  c                                           ; $4f2a: $a1
	and  d                                           ; $4f2b: $a2
	inc  c                                           ; $4f2c: $0c
	and  h                                           ; $4f2d: $a4
	and  l                                           ; $4f2e: $a5
	rrca                                             ; $4f2f: $0f
	db   $10                                         ; $4f30: $10
	ld   de, $1312                                   ; $4f31: $11 $12 $13
	inc  d                                           ; $4f34: $14
	dec  d                                           ; $4f35: $15
	ld   d, $17                                      ; $4f36: $16 $17
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	ld   de, $0007                                   ; $4f3a: $11 $07 $00
	ld   bc, $0302                                   ; $4f3d: $01 $02 $03
	inc  b                                           ; $4f40: $04
	dec  b                                           ; $4f41: $05
	ld   b, $07                                      ; $4f42: $06 $07
	ld   [$0a09], sp                                 ; $4f44: $08 $09 $0a
	dec  bc                                          ; $4f47: $0b
	inc  c                                           ; $4f48: $0c
	dec  c                                           ; $4f49: $0d
	ld   c, $0f                                      ; $4f4a: $0e $0f
	db   $10                                         ; $4f4c: $10
	ld   de, $1312                                   ; $4f4d: $11 $12 $13
	inc  d                                           ; $4f50: $14
	dec  d                                           ; $4f51: $15
	ld   d, $17                                      ; $4f52: $16 $17
	rst  $38                                         ; $4f54: $ff
	rst  $38                                         ; $4f55: $ff
	add  b                                           ; $4f56: $80
	inc  c                                           ; $4f57: $0c
	nop                                              ; $4f58: $00
	ld   bc, $0302                                   ; $4f59: $01 $02 $03
	inc  b                                           ; $4f5c: $04
	dec  b                                           ; $4f5d: $05
	ld   b, $07                                      ; $4f5e: $06 $07
	jr   jr_091_4f7b                                 ; $4f60: $18 $19

	ld   a, [de]                                     ; $4f62: $1a
	dec  de                                          ; $4f63: $1b
	inc  c                                           ; $4f64: $0c
	inc  e                                           ; $4f65: $1c
	dec  e                                           ; $4f66: $1d
	rrca                                             ; $4f67: $0f
	db   $10                                         ; $4f68: $10
	ld   de, $1312                                   ; $4f69: $11 $12 $13
	inc  d                                           ; $4f6c: $14
	dec  d                                           ; $4f6d: $15
	ld   d, $17                                      ; $4f6e: $16 $17
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	add  b                                           ; $4f72: $80
	inc  c                                           ; $4f73: $0c
	nop                                              ; $4f74: $00
	ld   bc, $0302                                   ; $4f75: $01 $02 $03
	ld   e, $38                                      ; $4f78: $1e $38
	rra                                              ; $4f7a: $1f

jr_091_4f7b:
	rlca                                             ; $4f7b: $07
	jr   nz, jr_091_4f9f                             ; $4f7c: $20 $21

	ld   [hl+], a                                    ; $4f7e: $22
	inc  hl                                          ; $4f7f: $23
	inc  c                                           ; $4f80: $0c
	inc  h                                           ; $4f81: $24
	dec  h                                           ; $4f82: $25
	rrca                                             ; $4f83: $0f
	db   $10                                         ; $4f84: $10
	ld   de, $1312                                   ; $4f85: $11 $12 $13
	inc  d                                           ; $4f88: $14
	dec  d                                           ; $4f89: $15
	ld   d, $17                                      ; $4f8a: $16 $17
	rst  $38                                         ; $4f8c: $ff
	rst  $38                                         ; $4f8d: $ff
	add  b                                           ; $4f8e: $80
	inc  c                                           ; $4f8f: $0c
	nop                                              ; $4f90: $00
	ld   bc, $0302                                   ; $4f91: $01 $02 $03
	inc  b                                           ; $4f94: $04
	dec  b                                           ; $4f95: $05
	ld   b, $07                                      ; $4f96: $06 $07
	ld   h, $27                                      ; $4f98: $26 $27
	jr   z, jr_091_4fc5                              ; $4f9a: $28 $29

	ld   a, [hl+]                                    ; $4f9c: $2a
	dec  hl                                          ; $4f9d: $2b
	inc  l                                           ; $4f9e: $2c

jr_091_4f9f:
	rrca                                             ; $4f9f: $0f
	db   $10                                         ; $4fa0: $10
	cp   b                                           ; $4fa1: $b8
	cp   c                                           ; $4fa2: $b9
	inc  de                                          ; $4fa3: $13
	inc  d                                           ; $4fa4: $14
	dec  d                                           ; $4fa5: $15
	ld   d, $17                                      ; $4fa6: $16 $17
	rst  $38                                         ; $4fa8: $ff
	rst  $38                                         ; $4fa9: $ff
	ret  nz                                          ; $4faa: $c0

	inc  c                                           ; $4fab: $0c
	nop                                              ; $4fac: $00
	ld   bc, $0302                                   ; $4fad: $01 $02 $03
	dec  l                                           ; $4fb0: $2d
	jr   c, jr_091_4fe1                              ; $4fb1: $38 $2e

	rlca                                             ; $4fb3: $07
	cpl                                              ; $4fb4: $2f
	jr   nc, jr_091_4fe8                             ; $4fb5: $30 $31

	ld   [hl-], a                                    ; $4fb7: $32
	inc  sp                                          ; $4fb8: $33
	inc  [hl]                                        ; $4fb9: $34
	dec  [hl]                                        ; $4fba: $35
	ld   [hl], $10                                   ; $4fbb: $36 $10
	ld   de, $1312                                   ; $4fbd: $11 $12 $13
	inc  d                                           ; $4fc0: $14
	dec  d                                           ; $4fc1: $15
	ld   d, $17                                      ; $4fc2: $16 $17
	rst  $38                                         ; $4fc4: $ff

jr_091_4fc5:
	rst  $38                                         ; $4fc5: $ff
	add  b                                           ; $4fc6: $80
	inc  c                                           ; $4fc7: $0c
	nop                                              ; $4fc8: $00
	ld   bc, $0302                                   ; $4fc9: $01 $02 $03
	scf                                              ; $4fcc: $37
	jr   c, jr_091_5008                              ; $4fcd: $38 $39

	rlca                                             ; $4fcf: $07
	ld   a, [hl-]                                    ; $4fd0: $3a
	dec  sp                                          ; $4fd1: $3b
	inc  a                                           ; $4fd2: $3c
	dec  a                                           ; $4fd3: $3d
	inc  c                                           ; $4fd4: $0c
	ld   a, $3f                                      ; $4fd5: $3e $3f
	rrca                                             ; $4fd7: $0f
	db   $10                                         ; $4fd8: $10
	ld   de, $1312                                   ; $4fd9: $11 $12 $13
	inc  d                                           ; $4fdc: $14
	dec  d                                           ; $4fdd: $15
	ld   d, $17                                      ; $4fde: $16 $17
	rst  $38                                         ; $4fe0: $ff

jr_091_4fe1:
	rst  $38                                         ; $4fe1: $ff
	add  b                                           ; $4fe2: $80
	inc  c                                           ; $4fe3: $0c
	nop                                              ; $4fe4: $00
	ld   bc, $0302                                   ; $4fe5: $01 $02 $03

jr_091_4fe8:
	ld   b, b                                        ; $4fe8: $40
	dec  b                                           ; $4fe9: $05
	ld   b, c                                        ; $4fea: $41
	rlca                                             ; $4feb: $07
	ld   b, d                                        ; $4fec: $42
	ld   b, e                                        ; $4fed: $43
	ld   b, h                                        ; $4fee: $44
	ld   b, l                                        ; $4fef: $45
	inc  c                                           ; $4ff0: $0c
	ld   b, [hl]                                     ; $4ff1: $46
	dec  h                                           ; $4ff2: $25
	rrca                                             ; $4ff3: $0f
	db   $10                                         ; $4ff4: $10
	ld   de, $1312                                   ; $4ff5: $11 $12 $13
	inc  d                                           ; $4ff8: $14
	dec  d                                           ; $4ff9: $15
	ld   d, $17                                      ; $4ffa: $16 $17
	rst  $38                                         ; $4ffc: $ff
	rst  $38                                         ; $4ffd: $ff
	add  b                                           ; $4ffe: $80
	inc  c                                           ; $4fff: $0c
	nop                                              ; $5000: $00
	ld   bc, $0302                                   ; $5001: $01 $02 $03
	ld   b, a                                        ; $5004: $47
	dec  b                                           ; $5005: $05
	ld   c, b                                        ; $5006: $48
	rlca                                             ; $5007: $07

jr_091_5008:
	ld   c, c                                        ; $5008: $49
	ld   c, d                                        ; $5009: $4a
	ld   c, e                                        ; $500a: $4b
	ld   c, h                                        ; $500b: $4c
	inc  c                                           ; $500c: $0c
	ld   c, l                                        ; $500d: $4d
	ld   c, [hl]                                     ; $500e: $4e
	rrca                                             ; $500f: $0f
	db   $10                                         ; $5010: $10
	ld   de, $1312                                   ; $5011: $11 $12 $13
	inc  d                                           ; $5014: $14
	dec  d                                           ; $5015: $15
	ld   d, $17                                      ; $5016: $16 $17
	rst  $38                                         ; $5018: $ff
	rst  $38                                         ; $5019: $ff
	add  b                                           ; $501a: $80
	inc  c                                           ; $501b: $0c
	ld   c, a                                        ; $501c: $4f
	ld   d, b                                        ; $501d: $50
	ld   d, c                                        ; $501e: $51
	ld   d, d                                        ; $501f: $52
	ld   d, e                                        ; $5020: $53
	ld   d, h                                        ; $5021: $54
	ld   d, l                                        ; $5022: $55
	ld   d, [hl]                                     ; $5023: $56
	ld   d, a                                        ; $5024: $57
	ld   e, b                                        ; $5025: $58
	ld   e, c                                        ; $5026: $59
	ld   e, d                                        ; $5027: $5a
	ld   e, e                                        ; $5028: $5b
	ld   e, h                                        ; $5029: $5c
	ld   e, l                                        ; $502a: $5d
	ld   e, [hl]                                     ; $502b: $5e
	ld   e, a                                        ; $502c: $5f
	ld   h, b                                        ; $502d: $60
	ld   h, c                                        ; $502e: $61
	ld   h, d                                        ; $502f: $62
	ld   h, e                                        ; $5030: $63
	ld   h, h                                        ; $5031: $64
	ld   h, l                                        ; $5032: $65
	ld   h, [hl]                                     ; $5033: $66
	rst  $38                                         ; $5034: $ff
	rst  $38                                         ; $5035: $ff
	add  sp, $0c                                     ; $5036: $e8 $0c
	nop                                              ; $5038: $00
	ld   bc, $0302                                   ; $5039: $01 $02 $03
	inc  b                                           ; $503c: $04
	dec  b                                           ; $503d: $05
	ld   b, $07                                      ; $503e: $06 $07
	ld   [$0a09], sp                                 ; $5040: $08 $09 $0a
	dec  bc                                          ; $5043: $0b
	inc  c                                           ; $5044: $0c
	dec  c                                           ; $5045: $0d
	ld   c, $0f                                      ; $5046: $0e $0f
	ld   h, a                                        ; $5048: $67
	ld   l, b                                        ; $5049: $68
	ld   l, c                                        ; $504a: $69
	ld   l, d                                        ; $504b: $6a
	ld   l, e                                        ; $504c: $6b
	ld   l, h                                        ; $504d: $6c
	ld   l, l                                        ; $504e: $6d
	ld   l, [hl]                                     ; $504f: $6e
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	ld   h, b                                        ; $5052: $60
	dec  c                                           ; $5053: $0d
	nop                                              ; $5054: $00
	ld   bc, $0302                                   ; $5055: $01 $02 $03
	inc  b                                           ; $5058: $04
	dec  b                                           ; $5059: $05
	ld   b, $07                                      ; $505a: $06 $07
	jr   jr_091_5077                                 ; $505c: $18 $19

	ld   a, [de]                                     ; $505e: $1a
	dec  de                                          ; $505f: $1b
	inc  c                                           ; $5060: $0c
	inc  e                                           ; $5061: $1c
	dec  e                                           ; $5062: $1d
	rrca                                             ; $5063: $0f
	ld   h, a                                        ; $5064: $67
	ld   l, b                                        ; $5065: $68
	ld   l, c                                        ; $5066: $69
	ld   l, d                                        ; $5067: $6a
	ld   l, e                                        ; $5068: $6b
	ld   l, h                                        ; $5069: $6c
	ld   l, l                                        ; $506a: $6d
	ld   l, [hl]                                     ; $506b: $6e
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	ld   h, b                                        ; $506e: $60
	dec  c                                           ; $506f: $0d
	nop                                              ; $5070: $00
	ld   bc, $0302                                   ; $5071: $01 $02 $03
	ld   e, $05                                      ; $5074: $1e $05
	rra                                              ; $5076: $1f

jr_091_5077:
	rlca                                             ; $5077: $07
	jr   nz, jr_091_509b                             ; $5078: $20 $21

	ld   [hl+], a                                    ; $507a: $22
	inc  hl                                          ; $507b: $23
	inc  c                                           ; $507c: $0c
	inc  h                                           ; $507d: $24
	dec  h                                           ; $507e: $25
	rrca                                             ; $507f: $0f
	ld   h, a                                        ; $5080: $67
	ld   l, b                                        ; $5081: $68
	ld   l, c                                        ; $5082: $69
	ld   l, d                                        ; $5083: $6a
	ld   l, e                                        ; $5084: $6b
	ld   l, h                                        ; $5085: $6c
	ld   l, l                                        ; $5086: $6d
	ld   l, [hl]                                     ; $5087: $6e
	rst  $38                                         ; $5088: $ff
	rst  $38                                         ; $5089: $ff
	ld   h, b                                        ; $508a: $60
	dec  c                                           ; $508b: $0d
	nop                                              ; $508c: $00
	ld   bc, $0302                                   ; $508d: $01 $02 $03
	inc  b                                           ; $5090: $04
	dec  b                                           ; $5091: $05
	ld   b, $07                                      ; $5092: $06 $07
	ld   h, $27                                      ; $5094: $26 $27
	jr   z, jr_091_50c1                              ; $5096: $28 $29

	ld   a, [hl+]                                    ; $5098: $2a
	dec  hl                                          ; $5099: $2b
	inc  l                                           ; $509a: $2c

jr_091_509b:
	rrca                                             ; $509b: $0f
	ld   h, a                                        ; $509c: $67
	cp   d                                           ; $509d: $ba
	cp   e                                           ; $509e: $bb
	ld   l, d                                        ; $509f: $6a
	ld   l, e                                        ; $50a0: $6b
	ld   l, h                                        ; $50a1: $6c
	ld   l, l                                        ; $50a2: $6d
	ld   l, [hl]                                     ; $50a3: $6e
	rst  $38                                         ; $50a4: $ff
	rst  $38                                         ; $50a5: $ff
	ld   h, b                                        ; $50a6: $60
	dec  c                                           ; $50a7: $0d
	nop                                              ; $50a8: $00
	ld   bc, $0302                                   ; $50a9: $01 $02 $03
	dec  l                                           ; $50ac: $2d
	dec  b                                           ; $50ad: $05
	ld   l, $07                                      ; $50ae: $2e $07
	cpl                                              ; $50b0: $2f
	jr   nc, jr_091_50e4                             ; $50b1: $30 $31

	ld   [hl-], a                                    ; $50b3: $32
	inc  sp                                          ; $50b4: $33
	inc  [hl]                                        ; $50b5: $34
	dec  [hl]                                        ; $50b6: $35
	ld   [hl], $67                                   ; $50b7: $36 $67
	ld   l, b                                        ; $50b9: $68
	ld   l, c                                        ; $50ba: $69
	ld   l, d                                        ; $50bb: $6a
	ld   l, e                                        ; $50bc: $6b
	ld   l, h                                        ; $50bd: $6c
	ld   l, l                                        ; $50be: $6d
	ld   l, [hl]                                     ; $50bf: $6e
	rst  $38                                         ; $50c0: $ff

jr_091_50c1:
	rst  $38                                         ; $50c1: $ff
	ld   h, b                                        ; $50c2: $60
	dec  c                                           ; $50c3: $0d
	nop                                              ; $50c4: $00
	ld   bc, $0302                                   ; $50c5: $01 $02 $03
	scf                                              ; $50c8: $37
	jr   c, jr_091_5104                              ; $50c9: $38 $39

	rlca                                             ; $50cb: $07
	ld   a, [hl-]                                    ; $50cc: $3a
	dec  sp                                          ; $50cd: $3b
	inc  a                                           ; $50ce: $3c
	dec  a                                           ; $50cf: $3d
	inc  c                                           ; $50d0: $0c
	ld   a, $3f                                      ; $50d1: $3e $3f
	rrca                                             ; $50d3: $0f
	ld   h, a                                        ; $50d4: $67
	ld   l, b                                        ; $50d5: $68
	ld   l, c                                        ; $50d6: $69
	ld   l, d                                        ; $50d7: $6a
	ld   l, e                                        ; $50d8: $6b
	ld   l, h                                        ; $50d9: $6c
	ld   l, l                                        ; $50da: $6d
	ld   l, [hl]                                     ; $50db: $6e
	rst  $38                                         ; $50dc: $ff
	rst  $38                                         ; $50dd: $ff
	ld   h, b                                        ; $50de: $60
	dec  c                                           ; $50df: $0d
	nop                                              ; $50e0: $00
	ld   bc, $0302                                   ; $50e1: $01 $02 $03

jr_091_50e4:
	ld   b, b                                        ; $50e4: $40
	dec  b                                           ; $50e5: $05
	ld   b, c                                        ; $50e6: $41
	rlca                                             ; $50e7: $07
	ld   b, d                                        ; $50e8: $42
	ld   b, e                                        ; $50e9: $43
	ld   b, h                                        ; $50ea: $44
	ld   b, l                                        ; $50eb: $45
	inc  c                                           ; $50ec: $0c
	ld   b, [hl]                                     ; $50ed: $46
	dec  h                                           ; $50ee: $25
	rrca                                             ; $50ef: $0f
	ld   h, a                                        ; $50f0: $67
	ld   l, b                                        ; $50f1: $68
	ld   l, c                                        ; $50f2: $69
	ld   l, d                                        ; $50f3: $6a
	ld   l, e                                        ; $50f4: $6b
	ld   l, h                                        ; $50f5: $6c
	ld   l, l                                        ; $50f6: $6d
	ld   l, [hl]                                     ; $50f7: $6e
	rst  $38                                         ; $50f8: $ff
	rst  $38                                         ; $50f9: $ff
	ld   h, b                                        ; $50fa: $60
	dec  c                                           ; $50fb: $0d
	nop                                              ; $50fc: $00
	ld   bc, $0302                                   ; $50fd: $01 $02 $03
	ld   b, a                                        ; $5100: $47
	dec  b                                           ; $5101: $05
	ld   c, b                                        ; $5102: $48
	rlca                                             ; $5103: $07

jr_091_5104:
	ld   c, c                                        ; $5104: $49
	ld   c, d                                        ; $5105: $4a
	ld   c, e                                        ; $5106: $4b
	ld   c, h                                        ; $5107: $4c
	inc  c                                           ; $5108: $0c
	ld   c, l                                        ; $5109: $4d
	ld   c, [hl]                                     ; $510a: $4e
	rrca                                             ; $510b: $0f
	ld   h, a                                        ; $510c: $67
	ld   l, b                                        ; $510d: $68
	ld   l, c                                        ; $510e: $69
	ld   l, d                                        ; $510f: $6a
	ld   l, e                                        ; $5110: $6b
	ld   l, h                                        ; $5111: $6c
	ld   l, l                                        ; $5112: $6d
	ld   l, [hl]                                     ; $5113: $6e
	rst  $38                                         ; $5114: $ff
	rst  $38                                         ; $5115: $ff
	ld   h, b                                        ; $5116: $60
	dec  c                                           ; $5117: $0d
	nop                                              ; $5118: $00
	ld   bc, $0302                                   ; $5119: $01 $02 $03
	or   l                                           ; $511c: $b5
	dec  b                                           ; $511d: $05
	ld   b, $07                                      ; $511e: $06 $07
	ld   a, e                                        ; $5120: $7b
	ld   a, h                                        ; $5121: $7c
	ld   a, l                                        ; $5122: $7d
	ld   a, [hl]                                     ; $5123: $7e
	ld   l, a                                        ; $5124: $6f
	ld   a, c                                        ; $5125: $79
	ld   a, d                                        ; $5126: $7a
	ld   [hl], b                                     ; $5127: $70
	ld   [hl], c                                     ; $5128: $71
	ld   [hl], d                                     ; $5129: $72
	ld   [hl], e                                     ; $512a: $73
	ld   [hl], h                                     ; $512b: $74
	ld   [hl], l                                     ; $512c: $75
	halt                                             ; $512d: $76
	ld   [hl], a                                     ; $512e: $77
	ld   a, b                                        ; $512f: $78
	rst  $38                                         ; $5130: $ff
	rst  $38                                         ; $5131: $ff
	rst  $38                                         ; $5132: $ff
	inc  c                                           ; $5133: $0c
	nop                                              ; $5134: $00
	ld   bc, $0302                                   ; $5135: $01 $02 $03
	or   l                                           ; $5138: $b5
	dec  b                                           ; $5139: $05
	ld   b, $07                                      ; $513a: $06 $07
	ld   a, a                                        ; $513c: $7f
	add  b                                           ; $513d: $80
	add  c                                           ; $513e: $81
	add  d                                           ; $513f: $82
	ld   l, a                                        ; $5140: $6f
	add  e                                           ; $5141: $83
	add  h                                           ; $5142: $84
	ld   [hl], b                                     ; $5143: $70
	ld   [hl], c                                     ; $5144: $71
	ld   [hl], d                                     ; $5145: $72
	ld   [hl], e                                     ; $5146: $73
	ld   [hl], h                                     ; $5147: $74
	ld   [hl], l                                     ; $5148: $75
	halt                                             ; $5149: $76
	ld   [hl], a                                     ; $514a: $77
	ld   a, b                                        ; $514b: $78
	rst  $38                                         ; $514c: $ff
	rst  $38                                         ; $514d: $ff
	rst  $38                                         ; $514e: $ff
	inc  c                                           ; $514f: $0c
	nop                                              ; $5150: $00
	ld   bc, $0302                                   ; $5151: $01 $02 $03
	add  l                                           ; $5154: $85
	add  [hl]                                        ; $5155: $86
	add  a                                           ; $5156: $87
	rlca                                             ; $5157: $07
	adc  b                                           ; $5158: $88
	adc  c                                           ; $5159: $89
	adc  d                                           ; $515a: $8a
	adc  e                                           ; $515b: $8b
	ld   l, a                                        ; $515c: $6f
	adc  h                                           ; $515d: $8c
	adc  l                                           ; $515e: $8d
	ld   [hl], b                                     ; $515f: $70
	ld   [hl], c                                     ; $5160: $71
	ld   [hl], d                                     ; $5161: $72
	ld   [hl], e                                     ; $5162: $73
	ld   [hl], h                                     ; $5163: $74
	ld   [hl], l                                     ; $5164: $75
	halt                                             ; $5165: $76
	ld   [hl], a                                     ; $5166: $77
	ld   a, b                                        ; $5167: $78
	rst  $38                                         ; $5168: $ff
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	inc  c                                           ; $516b: $0c
	nop                                              ; $516c: $00
	ld   bc, $0302                                   ; $516d: $01 $02 $03
	or   l                                           ; $5170: $b5
	dec  b                                           ; $5171: $05
	ld   b, $07                                      ; $5172: $06 $07
	adc  a                                           ; $5174: $8f
	sub  b                                           ; $5175: $90
	sub  c                                           ; $5176: $91
	sub  d                                           ; $5177: $92
	sub  e                                           ; $5178: $93
	sub  h                                           ; $5179: $94
	sub  l                                           ; $517a: $95
	ld   [hl], b                                     ; $517b: $70
	ld   [hl], c                                     ; $517c: $71
	cp   h                                           ; $517d: $bc
	cp   l                                           ; $517e: $bd
	ld   [hl], h                                     ; $517f: $74
	ld   [hl], l                                     ; $5180: $75
	halt                                             ; $5181: $76
	ld   [hl], a                                     ; $5182: $77
	ld   a, b                                        ; $5183: $78
	rst  $38                                         ; $5184: $ff
	rst  $38                                         ; $5185: $ff
	rst  $38                                         ; $5186: $ff
	inc  c                                           ; $5187: $0c
	nop                                              ; $5188: $00
	ld   bc, $0302                                   ; $5189: $01 $02 $03
	add  l                                           ; $518c: $85
	add  [hl]                                        ; $518d: $86
	add  a                                           ; $518e: $87
	rlca                                             ; $518f: $07
	sub  [hl]                                        ; $5190: $96
	sub  a                                           ; $5191: $97
	sbc  b                                           ; $5192: $98
	sbc  c                                           ; $5193: $99
	sbc  d                                           ; $5194: $9a
	sbc  e                                           ; $5195: $9b
	sbc  h                                           ; $5196: $9c
	sbc  l                                           ; $5197: $9d
	ld   [hl], c                                     ; $5198: $71
	ld   [hl], d                                     ; $5199: $72
	ld   [hl], e                                     ; $519a: $73
	ld   [hl], h                                     ; $519b: $74
	ld   [hl], l                                     ; $519c: $75
	halt                                             ; $519d: $76
	ld   [hl], a                                     ; $519e: $77
	ld   a, b                                        ; $519f: $78
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	rst  $38                                         ; $51a2: $ff
	inc  c                                           ; $51a3: $0c
	nop                                              ; $51a4: $00
	ld   bc, $0302                                   ; $51a5: $01 $02 $03
	sbc  [hl]                                        ; $51a8: $9e
	sbc  a                                           ; $51a9: $9f
	and  b                                           ; $51aa: $a0
	rlca                                             ; $51ab: $07
	and  c                                           ; $51ac: $a1
	and  d                                           ; $51ad: $a2
	and  e                                           ; $51ae: $a3
	and  h                                           ; $51af: $a4
	ld   l, a                                        ; $51b0: $6f
	and  l                                           ; $51b1: $a5
	and  [hl]                                        ; $51b2: $a6
	ld   [hl], b                                     ; $51b3: $70
	ld   [hl], c                                     ; $51b4: $71
	ld   [hl], d                                     ; $51b5: $72
	ld   [hl], e                                     ; $51b6: $73
	ld   [hl], h                                     ; $51b7: $74
	ld   [hl], l                                     ; $51b8: $75
	halt                                             ; $51b9: $76
	ld   [hl], a                                     ; $51ba: $77
	ld   a, b                                        ; $51bb: $78
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	rst  $38                                         ; $51be: $ff
	inc  c                                           ; $51bf: $0c
	nop                                              ; $51c0: $00
	ld   bc, $0302                                   ; $51c1: $01 $02 $03
	and  a                                           ; $51c4: $a7
	xor  b                                           ; $51c5: $a8
	xor  c                                           ; $51c6: $a9
	rlca                                             ; $51c7: $07
	xor  d                                           ; $51c8: $aa
	xor  e                                           ; $51c9: $ab
	xor  h                                           ; $51ca: $ac
	xor  l                                           ; $51cb: $ad
	ld   l, a                                        ; $51cc: $6f
	xor  [hl]                                        ; $51cd: $ae
	adc  l                                           ; $51ce: $8d
	xor  a                                           ; $51cf: $af
	ld   [hl], c                                     ; $51d0: $71
	ld   [hl], d                                     ; $51d1: $72
	ld   [hl], e                                     ; $51d2: $73
	ld   [hl], h                                     ; $51d3: $74
	ld   [hl], l                                     ; $51d4: $75
	halt                                             ; $51d5: $76
	ld   [hl], a                                     ; $51d6: $77
	ld   a, b                                        ; $51d7: $78
	rst  $38                                         ; $51d8: $ff
	rst  $38                                         ; $51d9: $ff
	rst  $38                                         ; $51da: $ff
	inc  c                                           ; $51db: $0c
	nop                                              ; $51dc: $00
	ld   bc, $0302                                   ; $51dd: $01 $02 $03
	sbc  [hl]                                        ; $51e0: $9e
	sbc  a                                           ; $51e1: $9f
	and  b                                           ; $51e2: $a0
	rlca                                             ; $51e3: $07
	or   b                                           ; $51e4: $b0
	or   c                                           ; $51e5: $b1
	or   d                                           ; $51e6: $b2
	ld   a, [hl]                                     ; $51e7: $7e
	ld   l, a                                        ; $51e8: $6f
	or   e                                           ; $51e9: $b3
	or   h                                           ; $51ea: $b4
	ld   [hl], b                                     ; $51eb: $70
	ld   [hl], c                                     ; $51ec: $71
	ld   [hl], d                                     ; $51ed: $72
	ld   [hl], e                                     ; $51ee: $73
	ld   [hl], h                                     ; $51ef: $74
	ld   [hl], l                                     ; $51f0: $75
	halt                                             ; $51f1: $76
	ld   [hl], a                                     ; $51f2: $77
	ld   a, b                                        ; $51f3: $78
	rst  $38                                         ; $51f4: $ff
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	inc  c                                           ; $51f7: $0c
	nop                                              ; $51f8: $00
	ld   bc, $0302                                   ; $51f9: $01 $02 $03
	inc  b                                           ; $51fc: $04
	dec  b                                           ; $51fd: $05
	ld   b, $07                                      ; $51fe: $06 $07
	ld   [$0a09], sp                                 ; $5200: $08 $09 $0a
	dec  bc                                          ; $5203: $0b
	inc  c                                           ; $5204: $0c
	dec  c                                           ; $5205: $0d
	ld   c, $0f                                      ; $5206: $0e $0f
	db   $10                                         ; $5208: $10
	ld   de, $1312                                   ; $5209: $11 $12 $13
	inc  d                                           ; $520c: $14
	dec  d                                           ; $520d: $15
	ld   d, $17                                      ; $520e: $16 $17
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	or   $0e                                         ; $5212: $f6 $0e
	nop                                              ; $5214: $00
	ld   bc, $0302                                   ; $5215: $01 $02 $03
	inc  b                                           ; $5218: $04
	jr   jr_091_5234                                 ; $5219: $18 $19

	rlca                                             ; $521b: $07
	ld   [$1b1a], sp                                 ; $521c: $08 $1a $1b
	inc  e                                           ; $521f: $1c
	inc  c                                           ; $5220: $0c
	halt                                             ; $5221: $76
	ld   [hl], a                                     ; $5222: $77
	rrca                                             ; $5223: $0f
	db   $10                                         ; $5224: $10
	ld   de, $1312                                   ; $5225: $11 $12 $13
	inc  d                                           ; $5228: $14
	dec  d                                           ; $5229: $15
	ld   d, $17                                      ; $522a: $16 $17
	rst  $38                                         ; $522c: $ff
	rst  $38                                         ; $522d: $ff
	or   $0e                                         ; $522e: $f6 $0e
	nop                                              ; $5230: $00
	ld   bc, $0302                                   ; $5231: $01 $02 $03

jr_091_5234:
	dec  e                                           ; $5234: $1d
	ld   e, $06                                      ; $5235: $1e $06
	rlca                                             ; $5237: $07
	ld   [$201f], sp                                 ; $5238: $08 $1f $20
	ld   hl, $220c                                   ; $523b: $21 $0c $22
	inc  hl                                          ; $523e: $23
	rrca                                             ; $523f: $0f
	db   $10                                         ; $5240: $10
	inc  h                                           ; $5241: $24
	ld   [de], a                                     ; $5242: $12
	inc  de                                          ; $5243: $13
	inc  d                                           ; $5244: $14
	dec  d                                           ; $5245: $15
	ld   d, $17                                      ; $5246: $16 $17
	rst  $38                                         ; $5248: $ff
	rst  $38                                         ; $5249: $ff
	or   $0e                                         ; $524a: $f6 $0e
	nop                                              ; $524c: $00
	ld   bc, $0302                                   ; $524d: $01 $02 $03
	inc  b                                           ; $5250: $04
	dec  h                                           ; $5251: $25
	ld   h, $27                                      ; $5252: $26 $27
	jr   z, @+$2b                                    ; $5254: $28 $29

	ld   a, [hl+]                                    ; $5256: $2a
	dec  hl                                          ; $5257: $2b
	inc  c                                           ; $5258: $0c
	ld   [hl], b                                     ; $5259: $70
	ld   [hl], c                                     ; $525a: $71
	rrca                                             ; $525b: $0f
	db   $10                                         ; $525c: $10
	ld   [hl], d                                     ; $525d: $72
	ld   [hl], e                                     ; $525e: $73
	inc  de                                          ; $525f: $13
	inc  d                                           ; $5260: $14
	dec  d                                           ; $5261: $15
	ld   d, $17                                      ; $5262: $16 $17
	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	or   $0e                                         ; $5266: $f6 $0e
	nop                                              ; $5268: $00
	ld   bc, $0302                                   ; $5269: $01 $02 $03
	inc  b                                           ; $526c: $04
	inc  l                                           ; $526d: $2c
	dec  l                                           ; $526e: $2d
	rlca                                             ; $526f: $07
	ld   l, $2f                                      ; $5270: $2e $2f
	jr   nc, jr_091_52a5                             ; $5272: $30 $31

	ld   [hl-], a                                    ; $5274: $32
	inc  sp                                          ; $5275: $33
	inc  [hl]                                        ; $5276: $34
	dec  [hl]                                        ; $5277: $35
	db   $10                                         ; $5278: $10
	ld   de, $1312                                   ; $5279: $11 $12 $13
	inc  d                                           ; $527c: $14
	dec  d                                           ; $527d: $15
	ld   d, $17                                      ; $527e: $16 $17
	rst  $38                                         ; $5280: $ff
	rst  $38                                         ; $5281: $ff
	or   $0e                                         ; $5282: $f6 $0e
	nop                                              ; $5284: $00
	ld   bc, $0302                                   ; $5285: $01 $02 $03
	inc  b                                           ; $5288: $04
	ld   [hl], $06                                   ; $5289: $36 $06
	rlca                                             ; $528b: $07
	scf                                              ; $528c: $37
	jr   c, jr_091_52c8                              ; $528d: $38 $39

	ld   sp, $220c                                   ; $528f: $31 $0c $22
	inc  hl                                          ; $5292: $23
	rrca                                             ; $5293: $0f
	db   $10                                         ; $5294: $10
	inc  h                                           ; $5295: $24
	ld   [de], a                                     ; $5296: $12
	inc  de                                          ; $5297: $13
	inc  d                                           ; $5298: $14
	dec  d                                           ; $5299: $15
	ld   d, $17                                      ; $529a: $16 $17
	rst  $38                                         ; $529c: $ff
	rst  $38                                         ; $529d: $ff
	or   $0e                                         ; $529e: $f6 $0e
	nop                                              ; $52a0: $00
	ld   bc, $0302                                   ; $52a1: $01 $02 $03
	ld   a, [hl-]                                    ; $52a4: $3a

jr_091_52a5:
	dec  sp                                          ; $52a5: $3b
	ld   b, $3c                                      ; $52a6: $06 $3c
	dec  a                                           ; $52a8: $3d
	ld   a, $3f                                      ; $52a9: $3e $3f
	ld   b, b                                        ; $52ab: $40
	inc  c                                           ; $52ac: $0c
	ld   [hl+], a                                    ; $52ad: $22
	inc  hl                                          ; $52ae: $23
	rrca                                             ; $52af: $0f
	db   $10                                         ; $52b0: $10
	inc  h                                           ; $52b1: $24
	ld   [de], a                                     ; $52b2: $12
	inc  de                                          ; $52b3: $13
	inc  d                                           ; $52b4: $14
	dec  d                                           ; $52b5: $15
	ld   d, $17                                      ; $52b6: $16 $17
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	or   $0e                                         ; $52ba: $f6 $0e
	nop                                              ; $52bc: $00
	ld   bc, $0302                                   ; $52bd: $01 $02 $03
	inc  b                                           ; $52c0: $04
	dec  b                                           ; $52c1: $05
	ld   b, c                                        ; $52c2: $41
	ld   b, d                                        ; $52c3: $42
	ld   b, e                                        ; $52c4: $43
	ld   b, h                                        ; $52c5: $44
	ld   b, l                                        ; $52c6: $45
	ld   b, [hl]                                     ; $52c7: $46

jr_091_52c8:
	inc  c                                           ; $52c8: $0c
	ld   b, a                                        ; $52c9: $47
	inc  hl                                          ; $52ca: $23
	rrca                                             ; $52cb: $0f
	db   $10                                         ; $52cc: $10
	ld   de, $1312                                   ; $52cd: $11 $12 $13
	inc  d                                           ; $52d0: $14
	dec  d                                           ; $52d1: $15
	ld   d, $17                                      ; $52d2: $16 $17
	rst  $38                                         ; $52d4: $ff
	rst  $38                                         ; $52d5: $ff
	or   $0e                                         ; $52d6: $f6 $0e
	nop                                              ; $52d8: $00
	ld   bc, $0302                                   ; $52d9: $01 $02 $03
	inc  b                                           ; $52dc: $04
	dec  h                                           ; $52dd: $25
	ld   h, $27                                      ; $52de: $26 $27
	jr   z, jr_091_530b                              ; $52e0: $28 $29

	ld   a, [hl+]                                    ; $52e2: $2a
	dec  hl                                          ; $52e3: $2b
	ld   c, b                                        ; $52e4: $48
	ld   c, c                                        ; $52e5: $49
	ld   c, d                                        ; $52e6: $4a
	ld   c, e                                        ; $52e7: $4b
	db   $10                                         ; $52e8: $10
	ld   c, h                                        ; $52e9: $4c
	ld   c, l                                        ; $52ea: $4d
	ld   c, [hl]                                     ; $52eb: $4e
	inc  d                                           ; $52ec: $14
	dec  d                                           ; $52ed: $15
	ld   d, $17                                      ; $52ee: $16 $17
	rst  $38                                         ; $52f0: $ff
	rst  $38                                         ; $52f1: $ff
	or   $0e                                         ; $52f2: $f6 $0e
	nop                                              ; $52f4: $00
	ld   bc, $0302                                   ; $52f5: $01 $02 $03
	inc  b                                           ; $52f8: $04
	dec  b                                           ; $52f9: $05
	ld   b, $07                                      ; $52fa: $06 $07
	ld   [$0a09], sp                                 ; $52fc: $08 $09 $0a
	dec  bc                                          ; $52ff: $0b
	ld   c, a                                        ; $5300: $4f
	dec  c                                           ; $5301: $0d
	ld   c, $0f                                      ; $5302: $0e $0f
	ld   d, b                                        ; $5304: $50
	ld   d, c                                        ; $5305: $51
	ld   d, d                                        ; $5306: $52
	ld   d, e                                        ; $5307: $53
	ld   d, h                                        ; $5308: $54
	ld   d, l                                        ; $5309: $55
	ld   d, [hl]                                     ; $530a: $56

jr_091_530b:
	ld   d, a                                        ; $530b: $57
	rst  $38                                         ; $530c: $ff
	rst  $38                                         ; $530d: $ff
	ld   [hl], b                                     ; $530e: $70
	rrca                                             ; $530f: $0f
	nop                                              ; $5310: $00
	ld   bc, $0302                                   ; $5311: $01 $02 $03
	inc  b                                           ; $5314: $04
	jr   jr_091_5330                                 ; $5315: $18 $19

	rlca                                             ; $5317: $07
	ld   [$1b1a], sp                                 ; $5318: $08 $1a $1b
	inc  e                                           ; $531b: $1c
	ld   c, a                                        ; $531c: $4f
	halt                                             ; $531d: $76
	ld   [hl], a                                     ; $531e: $77
	rrca                                             ; $531f: $0f
	ld   d, b                                        ; $5320: $50
	ld   d, c                                        ; $5321: $51
	ld   d, d                                        ; $5322: $52
	ld   d, e                                        ; $5323: $53
	ld   d, h                                        ; $5324: $54
	ld   d, l                                        ; $5325: $55
	ld   d, [hl]                                     ; $5326: $56
	ld   d, a                                        ; $5327: $57
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	ld   [hl], b                                     ; $532a: $70
	rrca                                             ; $532b: $0f
	nop                                              ; $532c: $00
	ld   bc, $0302                                   ; $532d: $01 $02 $03

jr_091_5330:
	dec  e                                           ; $5330: $1d
	ld   e, $06                                      ; $5331: $1e $06
	rlca                                             ; $5333: $07
	ld   [$201f], sp                                 ; $5334: $08 $1f $20
	ld   hl, $224f                                   ; $5337: $21 $4f $22
	inc  hl                                          ; $533a: $23
	rrca                                             ; $533b: $0f
	ld   d, b                                        ; $533c: $50
	ld   e, b                                        ; $533d: $58
	ld   d, d                                        ; $533e: $52
	ld   d, e                                        ; $533f: $53
	ld   d, h                                        ; $5340: $54
	ld   d, l                                        ; $5341: $55
	ld   d, [hl]                                     ; $5342: $56
	ld   d, a                                        ; $5343: $57
	rst  $38                                         ; $5344: $ff
	rst  $38                                         ; $5345: $ff
	ld   [hl], b                                     ; $5346: $70
	rrca                                             ; $5347: $0f
	nop                                              ; $5348: $00
	ld   bc, $0302                                   ; $5349: $01 $02 $03
	inc  b                                           ; $534c: $04
	dec  h                                           ; $534d: $25
	ld   h, $27                                      ; $534e: $26 $27
	jr   z, jr_091_537b                              ; $5350: $28 $29

	ld   a, [hl+]                                    ; $5352: $2a
	dec  hl                                          ; $5353: $2b
	ld   c, a                                        ; $5354: $4f
	ld   [hl], b                                     ; $5355: $70
	ld   [hl], c                                     ; $5356: $71
	rrca                                             ; $5357: $0f
	ld   d, b                                        ; $5358: $50
	ld   [hl], h                                     ; $5359: $74
	ld   [hl], l                                     ; $535a: $75
	ld   d, e                                        ; $535b: $53
	ld   d, h                                        ; $535c: $54
	ld   d, l                                        ; $535d: $55
	ld   d, [hl]                                     ; $535e: $56
	ld   d, a                                        ; $535f: $57
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	ld   [hl], b                                     ; $5362: $70
	rrca                                             ; $5363: $0f
	nop                                              ; $5364: $00
	ld   bc, $0302                                   ; $5365: $01 $02 $03
	inc  b                                           ; $5368: $04
	inc  l                                           ; $5369: $2c
	dec  l                                           ; $536a: $2d
	rlca                                             ; $536b: $07
	ld   l, $2f                                      ; $536c: $2e $2f
	jr   nc, jr_091_53a1                             ; $536e: $30 $31

	ld   e, c                                        ; $5370: $59
	inc  sp                                          ; $5371: $33
	inc  [hl]                                        ; $5372: $34
	dec  [hl]                                        ; $5373: $35
	ld   d, b                                        ; $5374: $50
	ld   d, c                                        ; $5375: $51
	ld   d, d                                        ; $5376: $52
	ld   d, e                                        ; $5377: $53
	ld   d, h                                        ; $5378: $54
	ld   d, l                                        ; $5379: $55
	ld   d, [hl]                                     ; $537a: $56

jr_091_537b:
	ld   d, a                                        ; $537b: $57
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	ld   [hl], b                                     ; $537e: $70
	rrca                                             ; $537f: $0f
	nop                                              ; $5380: $00
	ld   bc, $0302                                   ; $5381: $01 $02 $03
	inc  b                                           ; $5384: $04
	ld   [hl], $06                                   ; $5385: $36 $06
	rlca                                             ; $5387: $07
	scf                                              ; $5388: $37
	jr   c, jr_091_53c4                              ; $5389: $38 $39

	ld   sp, $224f                                   ; $538b: $31 $4f $22
	inc  hl                                          ; $538e: $23
	rrca                                             ; $538f: $0f
	ld   d, b                                        ; $5390: $50
	ld   e, b                                        ; $5391: $58
	ld   d, d                                        ; $5392: $52
	ld   d, e                                        ; $5393: $53
	ld   d, h                                        ; $5394: $54
	ld   d, l                                        ; $5395: $55
	ld   d, [hl]                                     ; $5396: $56
	ld   d, a                                        ; $5397: $57
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	ld   [hl], b                                     ; $539a: $70
	rrca                                             ; $539b: $0f
	nop                                              ; $539c: $00
	ld   bc, $0302                                   ; $539d: $01 $02 $03
	ld   a, [hl-]                                    ; $53a0: $3a

jr_091_53a1:
	dec  sp                                          ; $53a1: $3b
	ld   b, $3c                                      ; $53a2: $06 $3c
	dec  a                                           ; $53a4: $3d
	ld   a, $3f                                      ; $53a5: $3e $3f
	ld   b, b                                        ; $53a7: $40
	ld   c, a                                        ; $53a8: $4f
	ld   [hl+], a                                    ; $53a9: $22
	inc  hl                                          ; $53aa: $23
	rrca                                             ; $53ab: $0f
	ld   d, b                                        ; $53ac: $50
	ld   e, b                                        ; $53ad: $58
	ld   d, d                                        ; $53ae: $52
	ld   d, e                                        ; $53af: $53
	ld   d, h                                        ; $53b0: $54
	ld   d, l                                        ; $53b1: $55
	ld   d, [hl]                                     ; $53b2: $56
	ld   d, a                                        ; $53b3: $57
	rst  $38                                         ; $53b4: $ff
	rst  $38                                         ; $53b5: $ff
	ld   [hl], b                                     ; $53b6: $70
	rrca                                             ; $53b7: $0f
	nop                                              ; $53b8: $00
	ld   bc, $0302                                   ; $53b9: $01 $02 $03
	inc  b                                           ; $53bc: $04
	dec  b                                           ; $53bd: $05
	ld   b, c                                        ; $53be: $41
	ld   b, d                                        ; $53bf: $42
	ld   b, e                                        ; $53c0: $43
	ld   b, h                                        ; $53c1: $44
	ld   b, l                                        ; $53c2: $45
	ld   b, [hl]                                     ; $53c3: $46

jr_091_53c4:
	ld   c, a                                        ; $53c4: $4f
	ld   b, a                                        ; $53c5: $47
	inc  hl                                          ; $53c6: $23
	rrca                                             ; $53c7: $0f
	ld   d, b                                        ; $53c8: $50
	ld   d, c                                        ; $53c9: $51
	ld   d, d                                        ; $53ca: $52
	ld   d, e                                        ; $53cb: $53
	ld   d, h                                        ; $53cc: $54
	ld   d, l                                        ; $53cd: $55
	ld   d, [hl]                                     ; $53ce: $56
	ld   d, a                                        ; $53cf: $57
	rst  $38                                         ; $53d0: $ff
	rst  $38                                         ; $53d1: $ff
	ld   [hl], b                                     ; $53d2: $70
	rrca                                             ; $53d3: $0f
	nop                                              ; $53d4: $00
	ld   e, d                                        ; $53d5: $5a
	ld   e, e                                        ; $53d6: $5b
	inc  bc                                          ; $53d7: $03
	inc  b                                           ; $53d8: $04
	ld   e, h                                        ; $53d9: $5c
	ld   e, l                                        ; $53da: $5d
	ld   e, [hl]                                     ; $53db: $5e
	ld   [$0a09], sp                                 ; $53dc: $08 $09 $0a
	dec  bc                                          ; $53df: $0b
	inc  c                                           ; $53e0: $0c
	dec  c                                           ; $53e1: $0d
	ld   c, $0f                                      ; $53e2: $0e $0f
	ld   e, a                                        ; $53e4: $5f
	ld   de, $1312                                   ; $53e5: $11 $12 $13
	ld   h, b                                        ; $53e8: $60
	dec  d                                           ; $53e9: $15
	ld   h, c                                        ; $53ea: $61
	ld   h, d                                        ; $53eb: $62
	rst  $38                                         ; $53ec: $ff
	rst  $38                                         ; $53ed: $ff
	rst  $38                                         ; $53ee: $ff
	ld   c, $00                                      ; $53ef: $0e $00
	ld   e, d                                        ; $53f1: $5a
	ld   e, e                                        ; $53f2: $5b
	inc  bc                                          ; $53f3: $03
	inc  b                                           ; $53f4: $04
	ld   h, e                                        ; $53f5: $63
	ld   h, h                                        ; $53f6: $64
	ld   e, [hl]                                     ; $53f7: $5e
	ld   [$1b1a], sp                                 ; $53f8: $08 $1a $1b
	inc  e                                           ; $53fb: $1c
	inc  c                                           ; $53fc: $0c
	halt                                             ; $53fd: $76
	ld   [hl], a                                     ; $53fe: $77
	rrca                                             ; $53ff: $0f
	ld   e, a                                        ; $5400: $5f
	ld   de, $1312                                   ; $5401: $11 $12 $13
	ld   h, b                                        ; $5404: $60
	dec  d                                           ; $5405: $15
	ld   h, c                                        ; $5406: $61
	ld   h, d                                        ; $5407: $62
	rst  $38                                         ; $5408: $ff
	rst  $38                                         ; $5409: $ff
	rst  $38                                         ; $540a: $ff
	ld   c, $00                                      ; $540b: $0e $00
	ld   e, d                                        ; $540d: $5a
	ld   e, e                                        ; $540e: $5b
	inc  bc                                          ; $540f: $03
	dec  e                                           ; $5410: $1d
	ld   h, l                                        ; $5411: $65
	ld   e, l                                        ; $5412: $5d
	ld   e, [hl]                                     ; $5413: $5e
	ld   [$201f], sp                                 ; $5414: $08 $1f $20
	ld   hl, $220c                                   ; $5417: $21 $0c $22
	inc  hl                                          ; $541a: $23
	rrca                                             ; $541b: $0f
	ld   e, a                                        ; $541c: $5f
	inc  h                                           ; $541d: $24
	ld   [de], a                                     ; $541e: $12
	inc  de                                          ; $541f: $13
	ld   h, b                                        ; $5420: $60
	dec  d                                           ; $5421: $15
	ld   h, c                                        ; $5422: $61
	ld   h, d                                        ; $5423: $62
	rst  $38                                         ; $5424: $ff
	rst  $38                                         ; $5425: $ff
	rst  $38                                         ; $5426: $ff
	ld   c, $00                                      ; $5427: $0e $00
	ld   e, d                                        ; $5429: $5a
	ld   e, e                                        ; $542a: $5b
	inc  bc                                          ; $542b: $03
	inc  b                                           ; $542c: $04
	ld   h, [hl]                                     ; $542d: $66
	ld   h, a                                        ; $542e: $67
	ld   l, b                                        ; $542f: $68
	jr   z, jr_091_545b                              ; $5430: $28 $29

	ld   a, [hl+]                                    ; $5432: $2a
	dec  hl                                          ; $5433: $2b
	inc  c                                           ; $5434: $0c
	ld   [hl], b                                     ; $5435: $70
	ld   [hl], c                                     ; $5436: $71
	rrca                                             ; $5437: $0f
	ld   e, a                                        ; $5438: $5f
	ld   [hl], d                                     ; $5439: $72
	ld   [hl], e                                     ; $543a: $73
	inc  de                                          ; $543b: $13
	ld   h, b                                        ; $543c: $60
	dec  d                                           ; $543d: $15
	ld   h, c                                        ; $543e: $61
	ld   h, d                                        ; $543f: $62
	rst  $38                                         ; $5440: $ff
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	ld   c, $00                                      ; $5443: $0e $00
	ld   e, d                                        ; $5445: $5a
	ld   e, e                                        ; $5446: $5b
	inc  bc                                          ; $5447: $03
	inc  b                                           ; $5448: $04
	ld   l, c                                        ; $5449: $69
	ld   l, d                                        ; $544a: $6a
	ld   e, [hl]                                     ; $544b: $5e
	ld   l, $2f                                      ; $544c: $2e $2f
	jr   nc, jr_091_5481                             ; $544e: $30 $31

	ld   [hl-], a                                    ; $5450: $32
	inc  sp                                          ; $5451: $33
	inc  [hl]                                        ; $5452: $34
	dec  [hl]                                        ; $5453: $35
	ld   e, a                                        ; $5454: $5f
	ld   de, $1312                                   ; $5455: $11 $12 $13
	ld   h, b                                        ; $5458: $60
	dec  d                                           ; $5459: $15
	ld   h, c                                        ; $545a: $61

jr_091_545b:
	ld   h, d                                        ; $545b: $62
	rst  $38                                         ; $545c: $ff
	rst  $38                                         ; $545d: $ff
	rst  $38                                         ; $545e: $ff
	ld   c, $00                                      ; $545f: $0e $00
	ld   e, d                                        ; $5461: $5a
	ld   e, e                                        ; $5462: $5b
	inc  bc                                          ; $5463: $03
	inc  b                                           ; $5464: $04
	ld   l, e                                        ; $5465: $6b
	ld   e, l                                        ; $5466: $5d
	ld   e, [hl]                                     ; $5467: $5e
	scf                                              ; $5468: $37
	jr   c, jr_091_54a4                              ; $5469: $38 $39

	ld   sp, $220c                                   ; $546b: $31 $0c $22
	inc  hl                                          ; $546e: $23
	rrca                                             ; $546f: $0f
	ld   e, a                                        ; $5470: $5f
	inc  h                                           ; $5471: $24
	ld   [de], a                                     ; $5472: $12
	inc  de                                          ; $5473: $13
	ld   h, b                                        ; $5474: $60
	dec  d                                           ; $5475: $15
	ld   h, c                                        ; $5476: $61
	ld   h, d                                        ; $5477: $62
	rst  $38                                         ; $5478: $ff
	rst  $38                                         ; $5479: $ff
	rst  $38                                         ; $547a: $ff
	ld   c, $00                                      ; $547b: $0e $00
	ld   e, d                                        ; $547d: $5a
	ld   e, e                                        ; $547e: $5b
	inc  bc                                          ; $547f: $03
	ld   a, [hl-]                                    ; $5480: $3a

jr_091_5481:
	ld   l, h                                        ; $5481: $6c
	ld   e, l                                        ; $5482: $5d
	ld   l, l                                        ; $5483: $6d
	dec  a                                           ; $5484: $3d
	ld   a, $3f                                      ; $5485: $3e $3f
	ld   b, b                                        ; $5487: $40
	inc  c                                           ; $5488: $0c
	ld   [hl+], a                                    ; $5489: $22
	inc  hl                                          ; $548a: $23
	rrca                                             ; $548b: $0f
	ld   e, a                                        ; $548c: $5f
	inc  h                                           ; $548d: $24
	ld   [de], a                                     ; $548e: $12
	inc  de                                          ; $548f: $13
	ld   h, b                                        ; $5490: $60
	dec  d                                           ; $5491: $15
	ld   h, c                                        ; $5492: $61
	ld   h, d                                        ; $5493: $62
	rst  $38                                         ; $5494: $ff
	rst  $38                                         ; $5495: $ff
	rst  $38                                         ; $5496: $ff
	ld   c, $00                                      ; $5497: $0e $00
	ld   e, d                                        ; $5499: $5a
	ld   e, e                                        ; $549a: $5b
	inc  bc                                          ; $549b: $03
	inc  b                                           ; $549c: $04
	ld   e, h                                        ; $549d: $5c
	ld   l, [hl]                                     ; $549e: $6e
	ld   l, a                                        ; $549f: $6f
	ld   b, e                                        ; $54a0: $43
	ld   b, h                                        ; $54a1: $44
	ld   b, l                                        ; $54a2: $45
	ld   b, [hl]                                     ; $54a3: $46

jr_091_54a4:
	inc  c                                           ; $54a4: $0c
	ld   b, a                                        ; $54a5: $47
	inc  hl                                          ; $54a6: $23
	rrca                                             ; $54a7: $0f
	ld   e, a                                        ; $54a8: $5f
	ld   de, $1312                                   ; $54a9: $11 $12 $13
	ld   h, b                                        ; $54ac: $60
	dec  d                                           ; $54ad: $15
	ld   h, c                                        ; $54ae: $61
	ld   h, d                                        ; $54af: $62
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	rst  $38                                         ; $54b2: $ff
	ld   c, $00                                      ; $54b3: $0e $00
	ld   bc, $0302                                   ; $54b5: $01 $02 $03
	inc  b                                           ; $54b8: $04
	dec  b                                           ; $54b9: $05
	ld   b, $07                                      ; $54ba: $06 $07
	ld   [$0a09], sp                                 ; $54bc: $08 $09 $0a
	dec  bc                                          ; $54bf: $0b
	inc  c                                           ; $54c0: $0c
	dec  c                                           ; $54c1: $0d
	ld   c, $0f                                      ; $54c2: $0e $0f
	db   $10                                         ; $54c4: $10
	ld   de, $1312                                   ; $54c5: $11 $12 $13
	inc  d                                           ; $54c8: $14
	dec  d                                           ; $54c9: $15
	ld   d, $17                                      ; $54ca: $16 $17
	ld   b, $ee                                      ; $54cc: $06 $ee
	ld   l, a                                        ; $54ce: $6f
	stop                                             ; $54cf: $10 $00
	ld   bc, $0302                                   ; $54d1: $01 $02 $03
	inc  b                                           ; $54d4: $04
	dec  b                                           ; $54d5: $05
	ld   b, $07                                      ; $54d6: $06 $07
	jr   @+$1b                                       ; $54d8: $18 $19

	ld   a, [de]                                     ; $54da: $1a
	dec  bc                                          ; $54db: $0b
	inc  c                                           ; $54dc: $0c
	dec  de                                          ; $54dd: $1b
	ld   c, $0f                                      ; $54de: $0e $0f
	db   $10                                         ; $54e0: $10
	ld   de, $1312                                   ; $54e1: $11 $12 $13
	inc  d                                           ; $54e4: $14
	dec  d                                           ; $54e5: $15
	ld   d, $17                                      ; $54e6: $16 $17
	ld   b, $ee                                      ; $54e8: $06 $ee
	ld   l, a                                        ; $54ea: $6f
	stop                                             ; $54eb: $10 $00
	ld   bc, $0302                                   ; $54ed: $01 $02 $03
	inc  b                                           ; $54f0: $04
	dec  b                                           ; $54f1: $05
	ld   b, $07                                      ; $54f2: $06 $07
	ld   [$0a09], sp                                 ; $54f4: $08 $09 $0a
	dec  bc                                          ; $54f7: $0b
	inc  c                                           ; $54f8: $0c
	dec  c                                           ; $54f9: $0d
	ld   c, $0f                                      ; $54fa: $0e $0f
	db   $10                                         ; $54fc: $10
	ld   de, $1312                                   ; $54fd: $11 $12 $13
	inc  d                                           ; $5500: $14
	dec  d                                           ; $5501: $15
	ld   d, $17                                      ; $5502: $16 $17
	rst  $38                                         ; $5504: $ff
	rst  $38                                         ; $5505: $ff
	ldh  a, [rAUD1LEN]                               ; $5506: $f0 $11
	nop                                              ; $5508: $00
	ld   bc, $0302                                   ; $5509: $01 $02 $03
	inc  b                                           ; $550c: $04
	dec  b                                           ; $550d: $05
	ld   b, $07                                      ; $550e: $06 $07
	ld   [$0a09], sp                                 ; $5510: $08 $09 $0a
	dec  bc                                          ; $5513: $0b
	inc  c                                           ; $5514: $0c
	dec  c                                           ; $5515: $0d
	ld   c, $0f                                      ; $5516: $0e $0f
	db   $10                                         ; $5518: $10
	ld   de, $1312                                   ; $5519: $11 $12 $13
	inc  d                                           ; $551c: $14
	dec  d                                           ; $551d: $15
	ld   d, $17                                      ; $551e: $16 $17
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	add  sp, $12                                     ; $5522: $e8 $12
	nop                                              ; $5524: $00
	ld   bc, $0302                                   ; $5525: $01 $02 $03
	jr   jr_091_552f                                 ; $5528: $18 $05

	add  hl, de                                      ; $552a: $19
	ld   a, [de]                                     ; $552b: $1a
	dec  de                                          ; $552c: $1b
	inc  e                                           ; $552d: $1c
	dec  e                                           ; $552e: $1d

jr_091_552f:
	ld   e, $0c                                      ; $552f: $1e $0c
	rra                                              ; $5531: $1f
	jr   nz, @+$11                                   ; $5532: $20 $0f

	db   $10                                         ; $5534: $10
	ld   de, $1312                                   ; $5535: $11 $12 $13
	inc  d                                           ; $5538: $14
	dec  d                                           ; $5539: $15
	ld   d, $17                                      ; $553a: $16 $17
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	add  sp, $12                                     ; $553e: $e8 $12
	nop                                              ; $5540: $00
	ld   bc, $0302                                   ; $5541: $01 $02 $03
	ld   hl, $2205                                   ; $5544: $21 $05 $22
	inc  hl                                          ; $5547: $23
	inc  h                                           ; $5548: $24
	dec  h                                           ; $5549: $25
	ld   h, $0b                                      ; $554a: $26 $0b
	inc  c                                           ; $554c: $0c
	daa                                              ; $554d: $27
	jr   z, @+$11                                    ; $554e: $28 $0f

	db   $10                                         ; $5550: $10
	ld   de, $1312                                   ; $5551: $11 $12 $13
	inc  d                                           ; $5554: $14
	dec  d                                           ; $5555: $15
	ld   d, $17                                      ; $5556: $16 $17
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	add  sp, $12                                     ; $555a: $e8 $12
	nop                                              ; $555c: $00
	ld   bc, $0302                                   ; $555d: $01 $02 $03
	add  hl, hl                                      ; $5560: $29
	ld   l, d                                        ; $5561: $6a
	ld   a, [hl+]                                    ; $5562: $2a
	rlca                                             ; $5563: $07
	dec  hl                                          ; $5564: $2b
	inc  l                                           ; $5565: $2c
	dec  l                                           ; $5566: $2d
	ld   l, $0c                                      ; $5567: $2e $0c
	cpl                                              ; $5569: $2f
	jr   nc, @+$11                                   ; $556a: $30 $0f

	db   $10                                         ; $556c: $10
	ld   de, $1312                                   ; $556d: $11 $12 $13
	inc  d                                           ; $5570: $14
	dec  d                                           ; $5571: $15
	ld   d, $17                                      ; $5572: $16 $17
	rst  $38                                         ; $5574: $ff
	rst  $38                                         ; $5575: $ff
	add  sp, $12                                     ; $5576: $e8 $12
	nop                                              ; $5578: $00
	ld   bc, $0302                                   ; $5579: $01 $02 $03
	ld   sp, $3332                                   ; $557c: $31 $32 $33
	inc  [hl]                                        ; $557f: $34
	dec  [hl]                                        ; $5580: $35
	ld   [hl], $37                                   ; $5581: $36 $37
	dec  bc                                          ; $5583: $0b
	inc  c                                           ; $5584: $0c
	jr   c, jr_091_5595                              ; $5585: $38 $0e

	rrca                                             ; $5587: $0f
	db   $10                                         ; $5588: $10
	ld   de, $1312                                   ; $5589: $11 $12 $13
	inc  d                                           ; $558c: $14
	dec  d                                           ; $558d: $15
	ld   d, $17                                      ; $558e: $16 $17
	rst  $38                                         ; $5590: $ff
	rst  $38                                         ; $5591: $ff
	add  sp, $12                                     ; $5592: $e8 $12
	nop                                              ; $5594: $00

jr_091_5595:
	ld   bc, $0302                                   ; $5595: $01 $02 $03
	inc  b                                           ; $5598: $04
	dec  b                                           ; $5599: $05
	ld   b, $07                                      ; $559a: $06 $07
	ld   [$0a09], sp                                 ; $559c: $08 $09 $0a
	dec  bc                                          ; $559f: $0b
	inc  c                                           ; $55a0: $0c
	dec  c                                           ; $55a1: $0d
	ld   c, $0f                                      ; $55a2: $0e $0f
	add  hl, sp                                      ; $55a4: $39
	ld   a, [hl-]                                    ; $55a5: $3a
	dec  sp                                          ; $55a6: $3b
	inc  a                                           ; $55a7: $3c
	dec  a                                           ; $55a8: $3d
	ld   a, $3f                                      ; $55a9: $3e $3f
	ld   b, b                                        ; $55ab: $40
	rst  $38                                         ; $55ac: $ff
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	ld   [de], a                                     ; $55af: $12
	nop                                              ; $55b0: $00
	ld   bc, $0302                                   ; $55b1: $01 $02 $03
	jr   jr_091_55bb                                 ; $55b4: $18 $05

	add  hl, de                                      ; $55b6: $19
	ld   a, [de]                                     ; $55b7: $1a
	dec  de                                          ; $55b8: $1b
	inc  e                                           ; $55b9: $1c
	dec  e                                           ; $55ba: $1d

jr_091_55bb:
	ld   e, $0c                                      ; $55bb: $1e $0c
	rra                                              ; $55bd: $1f
	jr   nz, @+$11                                   ; $55be: $20 $0f

	add  hl, sp                                      ; $55c0: $39
	ld   a, [hl-]                                    ; $55c1: $3a
	dec  sp                                          ; $55c2: $3b
	inc  a                                           ; $55c3: $3c
	dec  a                                           ; $55c4: $3d
	ld   a, $3f                                      ; $55c5: $3e $3f
	ld   b, b                                        ; $55c7: $40
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	rst  $38                                         ; $55ca: $ff
	ld   [de], a                                     ; $55cb: $12
	nop                                              ; $55cc: $00
	ld   bc, $0302                                   ; $55cd: $01 $02 $03
	ld   hl, $2205                                   ; $55d0: $21 $05 $22
	inc  hl                                          ; $55d3: $23
	inc  h                                           ; $55d4: $24
	dec  h                                           ; $55d5: $25
	ld   h, $0b                                      ; $55d6: $26 $0b
	inc  c                                           ; $55d8: $0c
	daa                                              ; $55d9: $27
	jr   z, @+$11                                    ; $55da: $28 $0f

	add  hl, sp                                      ; $55dc: $39
	ld   a, [hl-]                                    ; $55dd: $3a
	dec  sp                                          ; $55de: $3b
	inc  a                                           ; $55df: $3c
	dec  a                                           ; $55e0: $3d
	ld   a, $3f                                      ; $55e1: $3e $3f
	ld   b, b                                        ; $55e3: $40
	rst  $38                                         ; $55e4: $ff
	rst  $38                                         ; $55e5: $ff
	rst  $38                                         ; $55e6: $ff
	ld   [de], a                                     ; $55e7: $12
	nop                                              ; $55e8: $00
	ld   bc, $0302                                   ; $55e9: $01 $02 $03
	add  hl, hl                                      ; $55ec: $29
	ld   l, d                                        ; $55ed: $6a
	ld   a, [hl+]                                    ; $55ee: $2a
	rlca                                             ; $55ef: $07
	dec  hl                                          ; $55f0: $2b
	inc  l                                           ; $55f1: $2c
	dec  l                                           ; $55f2: $2d
	ld   l, $0c                                      ; $55f3: $2e $0c
	cpl                                              ; $55f5: $2f
	jr   nc, @+$11                                   ; $55f6: $30 $0f

	add  hl, sp                                      ; $55f8: $39
	ld   a, [hl-]                                    ; $55f9: $3a
	dec  sp                                          ; $55fa: $3b
	inc  a                                           ; $55fb: $3c
	dec  a                                           ; $55fc: $3d
	ld   a, $3f                                      ; $55fd: $3e $3f
	ld   b, b                                        ; $55ff: $40
	rst  $38                                         ; $5600: $ff
	rst  $38                                         ; $5601: $ff
	rst  $38                                         ; $5602: $ff
	ld   [de], a                                     ; $5603: $12
	nop                                              ; $5604: $00
	ld   bc, $0302                                   ; $5605: $01 $02 $03
	ld   sp, $3332                                   ; $5608: $31 $32 $33
	inc  [hl]                                        ; $560b: $34
	dec  [hl]                                        ; $560c: $35
	ld   [hl], $37                                   ; $560d: $36 $37
	dec  bc                                          ; $560f: $0b
	inc  c                                           ; $5610: $0c
	jr   c, jr_091_5621                              ; $5611: $38 $0e

	rrca                                             ; $5613: $0f
	add  hl, sp                                      ; $5614: $39
	ld   a, [hl-]                                    ; $5615: $3a
	dec  sp                                          ; $5616: $3b
	inc  a                                           ; $5617: $3c
	dec  a                                           ; $5618: $3d
	ld   a, $3f                                      ; $5619: $3e $3f
	ld   b, b                                        ; $561b: $40
	rst  $38                                         ; $561c: $ff
	rst  $38                                         ; $561d: $ff
	rst  $38                                         ; $561e: $ff
	ld   [de], a                                     ; $561f: $12
	nop                                              ; $5620: $00

jr_091_5621:
	ld   bc, $0302                                   ; $5621: $01 $02 $03
	ld   b, c                                        ; $5624: $41
	ld   b, d                                        ; $5625: $42
	ld   b, e                                        ; $5626: $43
	ld   b, h                                        ; $5627: $44
	ld   b, l                                        ; $5628: $45
	ld   b, [hl]                                     ; $5629: $46
	ld   b, a                                        ; $562a: $47
	ld   c, b                                        ; $562b: $48
	inc  c                                           ; $562c: $0c
	ld   c, c                                        ; $562d: $49
	ld   c, d                                        ; $562e: $4a
	rrca                                             ; $562f: $0f
	db   $10                                         ; $5630: $10
	ld   c, e                                        ; $5631: $4b
	ld   c, h                                        ; $5632: $4c
	inc  de                                          ; $5633: $13
	inc  d                                           ; $5634: $14
	dec  d                                           ; $5635: $15
	ld   d, $17                                      ; $5636: $16 $17
	rst  $38                                         ; $5638: $ff
	rst  $38                                         ; $5639: $ff
	add  sp, $12                                     ; $563a: $e8 $12
	nop                                              ; $563c: $00
	ld   bc, $0302                                   ; $563d: $01 $02 $03
	ld   c, l                                        ; $5640: $4d
	ld   c, [hl]                                     ; $5641: $4e
	ld   c, a                                        ; $5642: $4f
	ld   d, b                                        ; $5643: $50
	ld   d, c                                        ; $5644: $51
	ld   d, d                                        ; $5645: $52
	ld   d, e                                        ; $5646: $53
	ld   d, h                                        ; $5647: $54
	inc  c                                           ; $5648: $0c
	ld   d, l                                        ; $5649: $55
	ld   d, [hl]                                     ; $564a: $56
	rrca                                             ; $564b: $0f
	db   $10                                         ; $564c: $10
	ld   d, a                                        ; $564d: $57
	ld   e, b                                        ; $564e: $58
	inc  de                                          ; $564f: $13
	inc  d                                           ; $5650: $14
	dec  d                                           ; $5651: $15
	ld   d, $17                                      ; $5652: $16 $17
	rst  $38                                         ; $5654: $ff
	rst  $38                                         ; $5655: $ff
	add  sp, $12                                     ; $5656: $e8 $12
	nop                                              ; $5658: $00
	ld   bc, $0302                                   ; $5659: $01 $02 $03
	ld   b, c                                        ; $565c: $41
	ld   b, d                                        ; $565d: $42
	ld   b, e                                        ; $565e: $43
	ld   b, h                                        ; $565f: $44
	ld   b, l                                        ; $5660: $45
	ld   b, [hl]                                     ; $5661: $46
	ld   b, a                                        ; $5662: $47
	ld   c, b                                        ; $5663: $48
	inc  c                                           ; $5664: $0c
	ld   c, c                                        ; $5665: $49
	ld   c, d                                        ; $5666: $4a
	rrca                                             ; $5667: $0f
	add  hl, sp                                      ; $5668: $39
	ld   e, c                                        ; $5669: $59
	ld   e, d                                        ; $566a: $5a
	inc  a                                           ; $566b: $3c
	dec  a                                           ; $566c: $3d
	ld   a, $3f                                      ; $566d: $3e $3f
	ld   b, b                                        ; $566f: $40
	rst  $38                                         ; $5670: $ff
	rst  $38                                         ; $5671: $ff
	rst  $38                                         ; $5672: $ff
	ld   [de], a                                     ; $5673: $12
	nop                                              ; $5674: $00
	ld   bc, $0302                                   ; $5675: $01 $02 $03
	ld   c, l                                        ; $5678: $4d
	ld   c, [hl]                                     ; $5679: $4e
	ld   c, a                                        ; $567a: $4f
	ld   d, b                                        ; $567b: $50
	ld   d, c                                        ; $567c: $51
	ld   d, d                                        ; $567d: $52
	ld   d, e                                        ; $567e: $53
	ld   d, h                                        ; $567f: $54
	inc  c                                           ; $5680: $0c
	ld   d, l                                        ; $5681: $55
	ld   d, [hl]                                     ; $5682: $56
	rrca                                             ; $5683: $0f
	add  hl, sp                                      ; $5684: $39
	ld   e, e                                        ; $5685: $5b
	ld   e, h                                        ; $5686: $5c
	inc  a                                           ; $5687: $3c
	dec  a                                           ; $5688: $3d
	ld   a, $3f                                      ; $5689: $3e $3f
	ld   b, b                                        ; $568b: $40
	rst  $38                                         ; $568c: $ff
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	ld   [de], a                                     ; $568f: $12
	nop                                              ; $5690: $00
	ld   bc, $0302                                   ; $5691: $01 $02 $03
	inc  b                                           ; $5694: $04
	dec  b                                           ; $5695: $05
	ld   b, $07                                      ; $5696: $06 $07
	ld   [$0a09], sp                                 ; $5698: $08 $09 $0a
	dec  bc                                          ; $569b: $0b
	inc  c                                           ; $569c: $0c
	dec  c                                           ; $569d: $0d
	ld   c, $5d                                      ; $569e: $0e $5d
	ld   e, [hl]                                     ; $56a0: $5e
	ld   e, a                                        ; $56a1: $5f
	ld   h, b                                        ; $56a2: $60
	ld   h, c                                        ; $56a3: $61
	ld   h, d                                        ; $56a4: $62
	ld   h, e                                        ; $56a5: $63
	ld   h, h                                        ; $56a6: $64
	ld   h, l                                        ; $56a7: $65
	rst  $38                                         ; $56a8: $ff
	rst  $38                                         ; $56a9: $ff
	ld   [hl], b                                     ; $56aa: $70
	inc  de                                          ; $56ab: $13
	nop                                              ; $56ac: $00
	ld   bc, $0302                                   ; $56ad: $01 $02 $03
	jr   jr_091_56b7                                 ; $56b0: $18 $05

	add  hl, de                                      ; $56b2: $19
	ld   a, [de]                                     ; $56b3: $1a
	dec  de                                          ; $56b4: $1b
	inc  e                                           ; $56b5: $1c
	dec  e                                           ; $56b6: $1d

jr_091_56b7:
	ld   e, $0c                                      ; $56b7: $1e $0c
	rra                                              ; $56b9: $1f
	jr   nz, jr_091_5719                             ; $56ba: $20 $5d

	ld   e, [hl]                                     ; $56bc: $5e
	ld   e, a                                        ; $56bd: $5f
	ld   h, b                                        ; $56be: $60
	ld   h, c                                        ; $56bf: $61
	ld   h, d                                        ; $56c0: $62
	ld   h, e                                        ; $56c1: $63
	ld   h, h                                        ; $56c2: $64
	ld   h, l                                        ; $56c3: $65
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	ld   [hl], b                                     ; $56c6: $70
	inc  de                                          ; $56c7: $13
	nop                                              ; $56c8: $00
	ld   bc, $0302                                   ; $56c9: $01 $02 $03
	ld   hl, $2205                                   ; $56cc: $21 $05 $22
	inc  hl                                          ; $56cf: $23
	inc  h                                           ; $56d0: $24
	dec  h                                           ; $56d1: $25
	ld   h, $0b                                      ; $56d2: $26 $0b
	inc  c                                           ; $56d4: $0c
	daa                                              ; $56d5: $27
	jr   z, jr_091_5735                              ; $56d6: $28 $5d

	ld   e, [hl]                                     ; $56d8: $5e
	ld   e, a                                        ; $56d9: $5f
	ld   h, b                                        ; $56da: $60
	ld   h, c                                        ; $56db: $61
	ld   h, d                                        ; $56dc: $62
	ld   h, e                                        ; $56dd: $63
	ld   h, h                                        ; $56de: $64
	ld   h, l                                        ; $56df: $65
	rst  $38                                         ; $56e0: $ff
	rst  $38                                         ; $56e1: $ff
	ld   [hl], b                                     ; $56e2: $70
	inc  de                                          ; $56e3: $13
	nop                                              ; $56e4: $00
	ld   bc, $0302                                   ; $56e5: $01 $02 $03
	add  hl, hl                                      ; $56e8: $29
	ld   l, d                                        ; $56e9: $6a
	ld   a, [hl+]                                    ; $56ea: $2a
	rlca                                             ; $56eb: $07
	dec  hl                                          ; $56ec: $2b
	inc  l                                           ; $56ed: $2c
	dec  l                                           ; $56ee: $2d
	ld   l, $0c                                      ; $56ef: $2e $0c
	cpl                                              ; $56f1: $2f
	jr   nc, jr_091_5751                             ; $56f2: $30 $5d

	ld   e, [hl]                                     ; $56f4: $5e
	ld   e, a                                        ; $56f5: $5f
	ld   h, b                                        ; $56f6: $60
	ld   h, c                                        ; $56f7: $61
	ld   h, d                                        ; $56f8: $62
	ld   h, e                                        ; $56f9: $63
	ld   h, h                                        ; $56fa: $64
	ld   h, l                                        ; $56fb: $65
	rst  $38                                         ; $56fc: $ff
	rst  $38                                         ; $56fd: $ff
	ld   [hl], b                                     ; $56fe: $70
	inc  de                                          ; $56ff: $13
	nop                                              ; $5700: $00
	ld   bc, $0302                                   ; $5701: $01 $02 $03
	ld   sp, $3332                                   ; $5704: $31 $32 $33
	inc  [hl]                                        ; $5707: $34
	dec  [hl]                                        ; $5708: $35
	ld   [hl], $37                                   ; $5709: $36 $37
	dec  bc                                          ; $570b: $0b
	inc  c                                           ; $570c: $0c
	jr   c, jr_091_571d                              ; $570d: $38 $0e

	ld   e, l                                        ; $570f: $5d
	ld   e, [hl]                                     ; $5710: $5e
	ld   e, a                                        ; $5711: $5f
	ld   h, b                                        ; $5712: $60
	ld   h, c                                        ; $5713: $61
	ld   h, d                                        ; $5714: $62
	ld   h, e                                        ; $5715: $63
	ld   h, h                                        ; $5716: $64
	ld   h, l                                        ; $5717: $65
	rst  $38                                         ; $5718: $ff

jr_091_5719:
	rst  $38                                         ; $5719: $ff
	ld   [hl], b                                     ; $571a: $70
	inc  de                                          ; $571b: $13
	nop                                              ; $571c: $00

jr_091_571d:
	ld   bc, $0302                                   ; $571d: $01 $02 $03
	ld   b, c                                        ; $5720: $41
	ld   b, d                                        ; $5721: $42
	ld   b, e                                        ; $5722: $43
	ld   b, h                                        ; $5723: $44
	ld   b, l                                        ; $5724: $45
	ld   b, [hl]                                     ; $5725: $46
	ld   b, a                                        ; $5726: $47
	ld   c, b                                        ; $5727: $48
	inc  c                                           ; $5728: $0c
	ld   c, c                                        ; $5729: $49
	ld   c, d                                        ; $572a: $4a
	ld   e, l                                        ; $572b: $5d
	ld   e, [hl]                                     ; $572c: $5e
	ld   h, [hl]                                     ; $572d: $66
	ld   h, a                                        ; $572e: $67
	ld   h, c                                        ; $572f: $61
	ld   h, d                                        ; $5730: $62
	ld   h, e                                        ; $5731: $63
	ld   h, h                                        ; $5732: $64
	ld   h, l                                        ; $5733: $65
	rst  $38                                         ; $5734: $ff

jr_091_5735:
	rst  $38                                         ; $5735: $ff
	ld   [hl], b                                     ; $5736: $70
	inc  de                                          ; $5737: $13
	nop                                              ; $5738: $00
	ld   bc, $0302                                   ; $5739: $01 $02 $03
	ld   c, l                                        ; $573c: $4d
	ld   c, [hl]                                     ; $573d: $4e
	ld   c, a                                        ; $573e: $4f
	ld   d, b                                        ; $573f: $50
	ld   d, c                                        ; $5740: $51
	ld   d, d                                        ; $5741: $52
	ld   d, e                                        ; $5742: $53
	ld   d, h                                        ; $5743: $54
	inc  c                                           ; $5744: $0c
	ld   d, l                                        ; $5745: $55
	ld   d, [hl]                                     ; $5746: $56
	ld   e, l                                        ; $5747: $5d
	ld   e, [hl]                                     ; $5748: $5e
	ld   l, b                                        ; $5749: $68
	ld   l, c                                        ; $574a: $69
	ld   h, c                                        ; $574b: $61
	ld   h, d                                        ; $574c: $62
	ld   h, e                                        ; $574d: $63
	ld   h, h                                        ; $574e: $64
	ld   h, l                                        ; $574f: $65
	rst  $38                                         ; $5750: $ff

jr_091_5751:
	rst  $38                                         ; $5751: $ff
	ld   [hl], b                                     ; $5752: $70
	inc  de                                          ; $5753: $13
	nop                                              ; $5754: $00
	ld   bc, $0302                                   ; $5755: $01 $02 $03
	inc  b                                           ; $5758: $04
	dec  b                                           ; $5759: $05
	ld   b, $07                                      ; $575a: $06 $07
	ld   [$0a09], sp                                 ; $575c: $08 $09 $0a
	dec  bc                                          ; $575f: $0b
	inc  c                                           ; $5760: $0c
	dec  c                                           ; $5761: $0d
	ld   c, $0f                                      ; $5762: $0e $0f
	db   $10                                         ; $5764: $10
	ld   de, $1312                                   ; $5765: $11 $12 $13
	inc  d                                           ; $5768: $14
	dec  d                                           ; $5769: $15
	ld   d, $17                                      ; $576a: $16 $17
	rst  $38                                         ; $576c: $ff
	rst  $38                                         ; $576d: $ff
	ldh  a, [rAUD1HIGH]                              ; $576e: $f0 $14
	nop                                              ; $5770: $00
	ld   bc, $0302                                   ; $5771: $01 $02 $03
	jr   @+$1b                                       ; $5774: $18 $19

	ld   a, [de]                                     ; $5776: $1a
	dec  de                                          ; $5777: $1b
	inc  e                                           ; $5778: $1c
	dec  e                                           ; $5779: $1d
	ld   e, $0b                                      ; $577a: $1e $0b
	inc  c                                           ; $577c: $0c
	dec  c                                           ; $577d: $0d
	rra                                              ; $577e: $1f
	rrca                                             ; $577f: $0f
	db   $10                                         ; $5780: $10
	ld   de, $1312                                   ; $5781: $11 $12 $13
	inc  d                                           ; $5784: $14
	dec  d                                           ; $5785: $15
	ld   d, $17                                      ; $5786: $16 $17
	rst  $38                                         ; $5788: $ff
	rst  $38                                         ; $5789: $ff
	ldh  a, [rAUD1HIGH]                              ; $578a: $f0 $14
	nop                                              ; $578c: $00
	ld   bc, $0302                                   ; $578d: $01 $02 $03
	jr   nz, jr_091_57b3                             ; $5790: $20 $21

	ld   [hl+], a                                    ; $5792: $22
	rlca                                             ; $5793: $07
	ld   [$2423], sp                                 ; $5794: $08 $23 $24
	dec  bc                                          ; $5797: $0b
	inc  c                                           ; $5798: $0c
	dec  h                                           ; $5799: $25
	ld   h, $0f                                      ; $579a: $26 $0f
	db   $10                                         ; $579c: $10
	ld   de, $1312                                   ; $579d: $11 $12 $13
	inc  d                                           ; $57a0: $14
	dec  d                                           ; $57a1: $15
	ld   d, $17                                      ; $57a2: $16 $17
	rst  $38                                         ; $57a4: $ff
	rst  $38                                         ; $57a5: $ff
	ldh  a, [rAUD1HIGH]                              ; $57a6: $f0 $14
	nop                                              ; $57a8: $00
	ld   bc, $0302                                   ; $57a9: $01 $02 $03
	daa                                              ; $57ac: $27
	jr   z, jr_091_57d8                              ; $57ad: $28 $29

	dec  de                                          ; $57af: $1b
	ld   a, [hl+]                                    ; $57b0: $2a
	dec  hl                                          ; $57b1: $2b
	inc  l                                           ; $57b2: $2c

jr_091_57b3:
	dec  bc                                          ; $57b3: $0b
	dec  l                                           ; $57b4: $2d
	ld   l, $2f                                      ; $57b5: $2e $2f
	rrca                                             ; $57b7: $0f
	db   $10                                         ; $57b8: $10
	jr   nc, jr_091_57ec                             ; $57b9: $30 $31

	inc  de                                          ; $57bb: $13
	inc  d                                           ; $57bc: $14
	dec  d                                           ; $57bd: $15
	ld   d, $17                                      ; $57be: $16 $17
	rst  $38                                         ; $57c0: $ff
	rst  $38                                         ; $57c1: $ff
	ldh  a, [rAUD1HIGH]                              ; $57c2: $f0 $14
	nop                                              ; $57c4: $00
	ld   bc, $0302                                   ; $57c5: $01 $02 $03
	ld   [hl-], a                                    ; $57c8: $32
	inc  sp                                          ; $57c9: $33
	inc  [hl]                                        ; $57ca: $34
	dec  [hl]                                        ; $57cb: $35
	ld   [hl], $37                                   ; $57cc: $36 $37
	jr   c, @+$0d                                    ; $57ce: $38 $0b

	add  hl, sp                                      ; $57d0: $39
	ld   a, [hl-]                                    ; $57d1: $3a
	dec  sp                                          ; $57d2: $3b
	rrca                                             ; $57d3: $0f
	db   $10                                         ; $57d4: $10
	ld   de, $1312                                   ; $57d5: $11 $12 $13

jr_091_57d8:
	inc  d                                           ; $57d8: $14
	dec  d                                           ; $57d9: $15
	ld   d, $17                                      ; $57da: $16 $17
	rst  $38                                         ; $57dc: $ff
	rst  $38                                         ; $57dd: $ff
	ldh  a, [rAUD1HIGH]                              ; $57de: $f0 $14
	nop                                              ; $57e0: $00
	ld   bc, $0302                                   ; $57e1: $01 $02 $03
	inc  b                                           ; $57e4: $04
	dec  b                                           ; $57e5: $05
	ld   b, $07                                      ; $57e6: $06 $07
	ld   [$0a09], sp                                 ; $57e8: $08 $09 $0a
	dec  bc                                          ; $57eb: $0b

jr_091_57ec:
	inc  c                                           ; $57ec: $0c
	dec  c                                           ; $57ed: $0d
	ld   c, $0f                                      ; $57ee: $0e $0f
	inc  a                                           ; $57f0: $3c
	dec  a                                           ; $57f1: $3d
	ld   a, $3f                                      ; $57f2: $3e $3f
	ld   b, b                                        ; $57f4: $40
	ld   b, c                                        ; $57f5: $41
	ld   b, d                                        ; $57f6: $42
	ld   b, e                                        ; $57f7: $43
	rst  $38                                         ; $57f8: $ff
	rst  $38                                         ; $57f9: $ff
	rst  $38                                         ; $57fa: $ff
	inc  d                                           ; $57fb: $14
	nop                                              ; $57fc: $00
	ld   bc, $0302                                   ; $57fd: $01 $02 $03
	jr   @+$1b                                       ; $5800: $18 $19

	ld   a, [de]                                     ; $5802: $1a
	dec  de                                          ; $5803: $1b
	inc  e                                           ; $5804: $1c
	dec  e                                           ; $5805: $1d
	ld   e, $0b                                      ; $5806: $1e $0b
	inc  c                                           ; $5808: $0c
	dec  c                                           ; $5809: $0d
	rra                                              ; $580a: $1f
	rrca                                             ; $580b: $0f
	inc  a                                           ; $580c: $3c
	dec  a                                           ; $580d: $3d
	ld   a, $3f                                      ; $580e: $3e $3f
	ld   b, b                                        ; $5810: $40
	ld   b, c                                        ; $5811: $41
	ld   b, d                                        ; $5812: $42
	ld   b, e                                        ; $5813: $43
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	inc  d                                           ; $5817: $14
	nop                                              ; $5818: $00
	ld   bc, $0302                                   ; $5819: $01 $02 $03

Call_091_581c:
	jr   nz, jr_091_583f                             ; $581c: $20 $21

	ld   [hl+], a                                    ; $581e: $22
	rlca                                             ; $581f: $07
	ld   [$2423], sp                                 ; $5820: $08 $23 $24
	dec  bc                                          ; $5823: $0b
	inc  c                                           ; $5824: $0c
	dec  h                                           ; $5825: $25
	ld   h, $0f                                      ; $5826: $26 $0f
	inc  a                                           ; $5828: $3c
	dec  a                                           ; $5829: $3d
	ld   a, $3f                                      ; $582a: $3e $3f
	ld   b, b                                        ; $582c: $40
	ld   b, c                                        ; $582d: $41
	ld   b, d                                        ; $582e: $42
	ld   b, e                                        ; $582f: $43
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	inc  d                                           ; $5833: $14
	nop                                              ; $5834: $00
	ld   bc, $0302                                   ; $5835: $01 $02 $03
	daa                                              ; $5838: $27
	jr   z, jr_091_5864                              ; $5839: $28 $29

	dec  de                                          ; $583b: $1b
	ld   a, [hl+]                                    ; $583c: $2a
	dec  hl                                          ; $583d: $2b
	inc  l                                           ; $583e: $2c

jr_091_583f:
	dec  bc                                          ; $583f: $0b
	dec  l                                           ; $5840: $2d
	ld   l, $2f                                      ; $5841: $2e $2f
	rrca                                             ; $5843: $0f
	inc  a                                           ; $5844: $3c
	dec  a                                           ; $5845: $3d
	ld   a, $3f                                      ; $5846: $3e $3f
	ld   b, b                                        ; $5848: $40
	ld   b, c                                        ; $5849: $41
	ld   b, d                                        ; $584a: $42
	ld   b, e                                        ; $584b: $43
	rst  $38                                         ; $584c: $ff
	rst  $38                                         ; $584d: $ff
	rst  $38                                         ; $584e: $ff
	inc  d                                           ; $584f: $14
	nop                                              ; $5850: $00
	ld   bc, $0302                                   ; $5851: $01 $02 $03
	ld   [hl-], a                                    ; $5854: $32
	inc  sp                                          ; $5855: $33
	inc  [hl]                                        ; $5856: $34
	dec  [hl]                                        ; $5857: $35
	ld   [hl], $37                                   ; $5858: $36 $37
	jr   c, jr_091_5867                              ; $585a: $38 $0b

	add  hl, sp                                      ; $585c: $39
	ld   a, [hl-]                                    ; $585d: $3a
	dec  sp                                          ; $585e: $3b
	rrca                                             ; $585f: $0f
	inc  a                                           ; $5860: $3c
	dec  a                                           ; $5861: $3d
	ld   a, $3f                                      ; $5862: $3e $3f

jr_091_5864:
	ld   b, b                                        ; $5864: $40
	ld   b, c                                        ; $5865: $41
	ld   b, d                                        ; $5866: $42

jr_091_5867:
	ld   b, e                                        ; $5867: $43
	rst  $38                                         ; $5868: $ff
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	inc  d                                           ; $586b: $14
	nop                                              ; $586c: $00
	ld   bc, $0302                                   ; $586d: $01 $02 $03
	inc  b                                           ; $5870: $04
	dec  b                                           ; $5871: $05
	ld   b, $07                                      ; $5872: $06 $07
	ld   b, h                                        ; $5874: $44
	ld   b, l                                        ; $5875: $45
	ld   b, [hl]                                     ; $5876: $46
	ld   b, a                                        ; $5877: $47
	inc  c                                           ; $5878: $0c
	ld   c, h                                        ; $5879: $4c
	ld   c, l                                        ; $587a: $4d
	rrca                                             ; $587b: $0f
	db   $10                                         ; $587c: $10
	ld   c, [hl]                                     ; $587d: $4e
	ld   c, a                                        ; $587e: $4f
	inc  de                                          ; $587f: $13
	inc  d                                           ; $5880: $14
	dec  d                                           ; $5881: $15
	ld   d, $17                                      ; $5882: $16 $17
	rst  $38                                         ; $5884: $ff
	rst  $38                                         ; $5885: $ff
	ldh  a, [rAUD1HIGH]                              ; $5886: $f0 $14
	nop                                              ; $5888: $00
	ld   bc, $0302                                   ; $5889: $01 $02 $03
	ld   c, b                                        ; $588c: $48
	ld   c, c                                        ; $588d: $49
	ld   c, d                                        ; $588e: $4a
	ld   c, e                                        ; $588f: $4b
	ld   b, h                                        ; $5890: $44
	ld   b, l                                        ; $5891: $45
	ld   b, [hl]                                     ; $5892: $46
	ld   b, a                                        ; $5893: $47
	ld   d, b                                        ; $5894: $50
	ld   d, c                                        ; $5895: $51
	ld   d, d                                        ; $5896: $52
	rrca                                             ; $5897: $0f
	db   $10                                         ; $5898: $10
	ld   d, e                                        ; $5899: $53
	ld   d, h                                        ; $589a: $54
	inc  de                                          ; $589b: $13
	inc  d                                           ; $589c: $14
	dec  d                                           ; $589d: $15
	ld   d, $17                                      ; $589e: $16 $17
	rst  $38                                         ; $58a0: $ff
	rst  $38                                         ; $58a1: $ff
	ldh  a, [rAUD1HIGH]                              ; $58a2: $f0 $14
	ld   d, l                                        ; $58a4: $55
	ld   d, [hl]                                     ; $58a5: $56
	ld   d, a                                        ; $58a6: $57
	ld   e, b                                        ; $58a7: $58
	ld   e, c                                        ; $58a8: $59
	ld   e, d                                        ; $58a9: $5a
	ld   e, e                                        ; $58aa: $5b
	ld   e, h                                        ; $58ab: $5c
	ld   [$0a09], sp                                 ; $58ac: $08 $09 $0a
	dec  bc                                          ; $58af: $0b
	inc  c                                           ; $58b0: $0c
	dec  c                                           ; $58b1: $0d
	ld   c, $0f                                      ; $58b2: $0e $0f
	ld   l, a                                        ; $58b4: $6f
	ld   [hl], b                                     ; $58b5: $70
	ld   [hl], c                                     ; $58b6: $71
	ld   [hl], d                                     ; $58b7: $72
	ld   [hl], e                                     ; $58b8: $73
	ld   [hl], h                                     ; $58b9: $74
	ld   [hl], l                                     ; $58ba: $75
	halt                                             ; $58bb: $76
	rrca                                             ; $58bc: $0f
	rst  $38                                         ; $58bd: $ff
	ldh  a, [$15]                                    ; $58be: $f0 $15
	ld   d, l                                        ; $58c0: $55
	ld   d, [hl]                                     ; $58c1: $56
	ld   d, a                                        ; $58c2: $57
	ld   e, b                                        ; $58c3: $58
	ld   e, l                                        ; $58c4: $5d
	ld   e, [hl]                                     ; $58c5: $5e
	ld   e, a                                        ; $58c6: $5f
	ld   h, b                                        ; $58c7: $60
	inc  e                                           ; $58c8: $1c
	dec  e                                           ; $58c9: $1d
	ld   e, $0b                                      ; $58ca: $1e $0b
	inc  c                                           ; $58cc: $0c
	dec  c                                           ; $58cd: $0d
	rra                                              ; $58ce: $1f
	rrca                                             ; $58cf: $0f
	ld   l, a                                        ; $58d0: $6f
	ld   [hl], b                                     ; $58d1: $70
	ld   [hl], c                                     ; $58d2: $71
	ld   [hl], d                                     ; $58d3: $72
	ld   [hl], e                                     ; $58d4: $73
	ld   [hl], h                                     ; $58d5: $74
	ld   [hl], l                                     ; $58d6: $75
	halt                                             ; $58d7: $76
	rrca                                             ; $58d8: $0f
	rst  $38                                         ; $58d9: $ff
	ldh  a, [$15]                                    ; $58da: $f0 $15
	ld   d, l                                        ; $58dc: $55
	ld   d, [hl]                                     ; $58dd: $56
	ld   d, a                                        ; $58de: $57
	ld   e, b                                        ; $58df: $58
	ld   h, c                                        ; $58e0: $61
	ld   h, d                                        ; $58e1: $62
	ld   h, e                                        ; $58e2: $63
	ld   e, h                                        ; $58e3: $5c
	ld   [$2423], sp                                 ; $58e4: $08 $23 $24
	dec  bc                                          ; $58e7: $0b
	inc  c                                           ; $58e8: $0c
	dec  h                                           ; $58e9: $25
	ld   h, $0f                                      ; $58ea: $26 $0f
	ld   l, a                                        ; $58ec: $6f
	ld   [hl], b                                     ; $58ed: $70
	ld   [hl], c                                     ; $58ee: $71
	ld   [hl], d                                     ; $58ef: $72
	ld   [hl], e                                     ; $58f0: $73
	ld   [hl], h                                     ; $58f1: $74
	ld   [hl], l                                     ; $58f2: $75
	halt                                             ; $58f3: $76
	rrca                                             ; $58f4: $0f
	rst  $38                                         ; $58f5: $ff
	ldh  a, [$15]                                    ; $58f6: $f0 $15
	ld   d, l                                        ; $58f8: $55
	ld   d, [hl]                                     ; $58f9: $56
	ld   d, a                                        ; $58fa: $57
	ld   e, b                                        ; $58fb: $58
	ld   h, h                                        ; $58fc: $64
	ld   h, l                                        ; $58fd: $65
	ld   h, [hl]                                     ; $58fe: $66
	ld   h, b                                        ; $58ff: $60
	ld   a, [hl+]                                    ; $5900: $2a
	dec  hl                                          ; $5901: $2b
	inc  l                                           ; $5902: $2c
	dec  bc                                          ; $5903: $0b
	dec  l                                           ; $5904: $2d
	ld   l, $2f                                      ; $5905: $2e $2f
	rrca                                             ; $5907: $0f
	ld   l, a                                        ; $5908: $6f
	ld   [hl], a                                     ; $5909: $77
	ld   a, b                                        ; $590a: $78
	ld   [hl], d                                     ; $590b: $72
	ld   [hl], e                                     ; $590c: $73
	ld   [hl], h                                     ; $590d: $74
	ld   [hl], l                                     ; $590e: $75
	halt                                             ; $590f: $76
	rrca                                             ; $5910: $0f
	rst  $38                                         ; $5911: $ff
	ldh  a, [$15]                                    ; $5912: $f0 $15
	ld   d, l                                        ; $5914: $55
	ld   d, [hl]                                     ; $5915: $56
	ld   d, a                                        ; $5916: $57
	ld   e, b                                        ; $5917: $58
	ld   h, a                                        ; $5918: $67
	ld   l, b                                        ; $5919: $68
	ld   l, c                                        ; $591a: $69
	ld   l, d                                        ; $591b: $6a
	ld   [hl], $37                                   ; $591c: $36 $37
	jr   c, jr_091_592b                              ; $591e: $38 $0b

	add  hl, sp                                      ; $5920: $39
	ld   a, [hl-]                                    ; $5921: $3a
	dec  sp                                          ; $5922: $3b
	rrca                                             ; $5923: $0f
	ld   l, a                                        ; $5924: $6f
	ld   [hl], b                                     ; $5925: $70
	ld   [hl], c                                     ; $5926: $71
	ld   [hl], d                                     ; $5927: $72
	ld   [hl], e                                     ; $5928: $73
	ld   [hl], h                                     ; $5929: $74
	ld   [hl], l                                     ; $592a: $75

jr_091_592b:
	halt                                             ; $592b: $76
	rrca                                             ; $592c: $0f
	rst  $38                                         ; $592d: $ff
	ldh  a, [$15]                                    ; $592e: $f0 $15
	ld   d, l                                        ; $5930: $55
	ld   d, [hl]                                     ; $5931: $56
	ld   d, a                                        ; $5932: $57
	ld   e, b                                        ; $5933: $58
	ld   e, c                                        ; $5934: $59
	ld   e, d                                        ; $5935: $5a
	ld   e, e                                        ; $5936: $5b
	ld   e, h                                        ; $5937: $5c
	ld   b, h                                        ; $5938: $44
	ld   b, l                                        ; $5939: $45
	ld   b, [hl]                                     ; $593a: $46
	ld   b, a                                        ; $593b: $47
	inc  c                                           ; $593c: $0c
	ld   c, h                                        ; $593d: $4c
	ld   c, l                                        ; $593e: $4d
	rrca                                             ; $593f: $0f
	ld   l, a                                        ; $5940: $6f
	ld   a, c                                        ; $5941: $79
	ld   a, d                                        ; $5942: $7a
	ld   [hl], d                                     ; $5943: $72
	ld   [hl], e                                     ; $5944: $73
	ld   [hl], h                                     ; $5945: $74
	ld   [hl], l                                     ; $5946: $75
	halt                                             ; $5947: $76
	rrca                                             ; $5948: $0f
	rst  $38                                         ; $5949: $ff
	ldh  a, [$15]                                    ; $594a: $f0 $15
	ld   d, l                                        ; $594c: $55
	ld   d, [hl]                                     ; $594d: $56
	ld   d, a                                        ; $594e: $57
	ld   e, b                                        ; $594f: $58
	ld   l, e                                        ; $5950: $6b
	ld   l, h                                        ; $5951: $6c
	ld   l, l                                        ; $5952: $6d
	ld   l, [hl]                                     ; $5953: $6e
	ld   b, h                                        ; $5954: $44
	ld   b, l                                        ; $5955: $45
	ld   b, [hl]                                     ; $5956: $46
	ld   b, a                                        ; $5957: $47
	ld   d, b                                        ; $5958: $50
	ld   d, c                                        ; $5959: $51
	ld   d, d                                        ; $595a: $52
	rrca                                             ; $595b: $0f
	ld   l, a                                        ; $595c: $6f
	ld   a, e                                        ; $595d: $7b
	ld   a, h                                        ; $595e: $7c
	ld   [hl], d                                     ; $595f: $72
	ld   [hl], e                                     ; $5960: $73
	ld   [hl], h                                     ; $5961: $74
	ld   [hl], l                                     ; $5962: $75
	halt                                             ; $5963: $76
	rrca                                             ; $5964: $0f
	rst  $38                                         ; $5965: $ff
	ldh  a, [$15]                                    ; $5966: $f0 $15
	nop                                              ; $5968: $00
	ld   bc, $0302                                   ; $5969: $01 $02 $03
	inc  b                                           ; $596c: $04
	dec  b                                           ; $596d: $05
	ld   b, $07                                      ; $596e: $06 $07
	ld   [$0a09], sp                                 ; $5970: $08 $09 $0a
	dec  bc                                          ; $5973: $0b
	inc  c                                           ; $5974: $0c
	dec  c                                           ; $5975: $0d
	ld   c, $0f                                      ; $5976: $0e $0f
	db   $10                                         ; $5978: $10
	ld   de, $1312                                   ; $5979: $11 $12 $13
	inc  d                                           ; $597c: $14
	dec  d                                           ; $597d: $15
	ld   d, $17                                      ; $597e: $16 $17
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	ldh  a, [rAUD2LEN]                               ; $5982: $f0 $16
	nop                                              ; $5984: $00
	ld   bc, $0302                                   ; $5985: $01 $02 $03
	inc  b                                           ; $5988: $04
	dec  b                                           ; $5989: $05
	ld   b, $07                                      ; $598a: $06 $07
	jr   @+$1b                                       ; $598c: $18 $19

	ld   a, [de]                                     ; $598e: $1a
	dec  de                                          ; $598f: $1b
	inc  c                                           ; $5990: $0c
	inc  e                                           ; $5991: $1c
	ld   c, $0f                                      ; $5992: $0e $0f
	db   $10                                         ; $5994: $10
	ld   de, $1312                                   ; $5995: $11 $12 $13
	inc  d                                           ; $5998: $14
	dec  d                                           ; $5999: $15
	ld   d, $17                                      ; $599a: $16 $17
	rst  $38                                         ; $599c: $ff
	rst  $38                                         ; $599d: $ff
	ldh  a, [rAUD2LEN]                               ; $599e: $f0 $16
	nop                                              ; $59a0: $00
	ld   bc, $0302                                   ; $59a1: $01 $02 $03
	inc  b                                           ; $59a4: $04
	dec  b                                           ; $59a5: $05
	ld   b, $07                                      ; $59a6: $06 $07
	dec  e                                           ; $59a8: $1d
	ld   e, $0a                                      ; $59a9: $1e $0a
	dec  bc                                          ; $59ab: $0b
	inc  c                                           ; $59ac: $0c
	dec  c                                           ; $59ad: $0d
	rra                                              ; $59ae: $1f
	rrca                                             ; $59af: $0f
	db   $10                                         ; $59b0: $10
	ld   de, $1312                                   ; $59b1: $11 $12 $13
	inc  d                                           ; $59b4: $14
	dec  d                                           ; $59b5: $15
	ld   d, $17                                      ; $59b6: $16 $17
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	ldh  a, [rAUD2LEN]                               ; $59ba: $f0 $16
	nop                                              ; $59bc: $00
	ld   bc, $0302                                   ; $59bd: $01 $02 $03
	inc  b                                           ; $59c0: $04
	jr   nz, jr_091_59c9                             ; $59c1: $20 $06

	rlca                                             ; $59c3: $07
	ld   hl, $4322                                   ; $59c4: $21 $22 $43
	inc  hl                                          ; $59c7: $23
	inc  c                                           ; $59c8: $0c

jr_091_59c9:
	inc  h                                           ; $59c9: $24
	ld   c, $0f                                      ; $59ca: $0e $0f
	db   $10                                         ; $59cc: $10
	ld   de, $1312                                   ; $59cd: $11 $12 $13
	inc  d                                           ; $59d0: $14
	dec  d                                           ; $59d1: $15
	ld   d, $17                                      ; $59d2: $16 $17
	rst  $38                                         ; $59d4: $ff
	rst  $38                                         ; $59d5: $ff
	ldh  a, [rAUD2LEN]                               ; $59d6: $f0 $16
	nop                                              ; $59d8: $00
	ld   bc, $0302                                   ; $59d9: $01 $02 $03
	dec  h                                           ; $59dc: $25
	ld   h, $27                                      ; $59dd: $26 $27
	rlca                                             ; $59df: $07
	jr   z, @+$2b                                    ; $59e0: $28 $29

	ld   a, [hl+]                                    ; $59e2: $2a
	dec  hl                                          ; $59e3: $2b
	inc  c                                           ; $59e4: $0c
	inc  l                                           ; $59e5: $2c
	dec  l                                           ; $59e6: $2d
	rrca                                             ; $59e7: $0f
	db   $10                                         ; $59e8: $10
	ld   l, $2f                                      ; $59e9: $2e $2f
	inc  de                                          ; $59eb: $13
	inc  d                                           ; $59ec: $14
	dec  d                                           ; $59ed: $15
	ld   d, $17                                      ; $59ee: $16 $17
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	ldh  a, [rAUD2LEN]                               ; $59f2: $f0 $16
	nop                                              ; $59f4: $00
	ld   bc, $0302                                   ; $59f5: $01 $02 $03
	inc  b                                           ; $59f8: $04
	jr   nz, jr_091_5a01                             ; $59f9: $20 $06

	rlca                                             ; $59fb: $07
	jr   nc, @+$33                                   ; $59fc: $30 $31

	ld   a, [bc]                                     ; $59fe: $0a
	inc  hl                                          ; $59ff: $23
	inc  c                                           ; $5a00: $0c

jr_091_5a01:
	inc  h                                           ; $5a01: $24
	ld   c, $0f                                      ; $5a02: $0e $0f
	db   $10                                         ; $5a04: $10
	ld   de, $1312                                   ; $5a05: $11 $12 $13
	inc  d                                           ; $5a08: $14
	dec  d                                           ; $5a09: $15
	ld   d, $17                                      ; $5a0a: $16 $17
	rst  $38                                         ; $5a0c: $ff
	rst  $38                                         ; $5a0d: $ff
	ldh  a, [rAUD2LEN]                               ; $5a0e: $f0 $16
	nop                                              ; $5a10: $00
	ld   bc, $0302                                   ; $5a11: $01 $02 $03
	inc  b                                           ; $5a14: $04
	dec  b                                           ; $5a15: $05
	ld   b, $07                                      ; $5a16: $06 $07
	ld   [$0a09], sp                                 ; $5a18: $08 $09 $0a
	dec  bc                                          ; $5a1b: $0b
	inc  c                                           ; $5a1c: $0c
	dec  c                                           ; $5a1d: $0d
	ld   c, $0f                                      ; $5a1e: $0e $0f
	ld   [hl-], a                                    ; $5a20: $32
	inc  sp                                          ; $5a21: $33
	inc  [hl]                                        ; $5a22: $34
	inc  de                                          ; $5a23: $13
	dec  [hl]                                        ; $5a24: $35
	ld   [hl], $37                                   ; $5a25: $36 $37
	jr   c, @+$01                                    ; $5a27: $38 $ff

	rst  $38                                         ; $5a29: $ff
	rst  $38                                         ; $5a2a: $ff
	ld   d, $00                                      ; $5a2b: $16 $00
	ld   bc, $0302                                   ; $5a2d: $01 $02 $03
	inc  b                                           ; $5a30: $04
	dec  b                                           ; $5a31: $05
	ld   b, $07                                      ; $5a32: $06 $07
	jr   @+$1b                                       ; $5a34: $18 $19

	ld   a, [de]                                     ; $5a36: $1a
	dec  de                                          ; $5a37: $1b
	inc  c                                           ; $5a38: $0c
	inc  e                                           ; $5a39: $1c
	ld   c, $0f                                      ; $5a3a: $0e $0f
	ld   [hl-], a                                    ; $5a3c: $32
	inc  sp                                          ; $5a3d: $33
	inc  [hl]                                        ; $5a3e: $34
	inc  de                                          ; $5a3f: $13
	dec  [hl]                                        ; $5a40: $35
	ld   [hl], $37                                   ; $5a41: $36 $37
	jr   c, @+$01                                    ; $5a43: $38 $ff

	rst  $38                                         ; $5a45: $ff
	rst  $38                                         ; $5a46: $ff
	ld   d, $00                                      ; $5a47: $16 $00
	ld   bc, $0302                                   ; $5a49: $01 $02 $03
	inc  b                                           ; $5a4c: $04
	dec  b                                           ; $5a4d: $05
	ld   b, $07                                      ; $5a4e: $06 $07
	dec  e                                           ; $5a50: $1d
	ld   e, $0a                                      ; $5a51: $1e $0a
	dec  bc                                          ; $5a53: $0b
	inc  c                                           ; $5a54: $0c
	dec  c                                           ; $5a55: $0d
	rra                                              ; $5a56: $1f
	rrca                                             ; $5a57: $0f
	ld   [hl-], a                                    ; $5a58: $32
	inc  sp                                          ; $5a59: $33
	inc  [hl]                                        ; $5a5a: $34
	inc  de                                          ; $5a5b: $13
	dec  [hl]                                        ; $5a5c: $35
	ld   [hl], $37                                   ; $5a5d: $36 $37
	jr   c, @+$01                                    ; $5a5f: $38 $ff

	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	ld   d, $00                                      ; $5a63: $16 $00
	ld   bc, $0302                                   ; $5a65: $01 $02 $03
	inc  b                                           ; $5a68: $04
	jr   nz, jr_091_5a71                             ; $5a69: $20 $06

	rlca                                             ; $5a6b: $07
	ld   hl, $4322                                   ; $5a6c: $21 $22 $43
	inc  hl                                          ; $5a6f: $23
	inc  c                                           ; $5a70: $0c

jr_091_5a71:
	inc  h                                           ; $5a71: $24
	ld   c, $0f                                      ; $5a72: $0e $0f
	ld   [hl-], a                                    ; $5a74: $32
	inc  sp                                          ; $5a75: $33
	inc  [hl]                                        ; $5a76: $34
	inc  de                                          ; $5a77: $13
	dec  [hl]                                        ; $5a78: $35
	ld   [hl], $37                                   ; $5a79: $36 $37
	jr   c, @+$01                                    ; $5a7b: $38 $ff

	rst  $38                                         ; $5a7d: $ff
	rst  $38                                         ; $5a7e: $ff
	ld   d, $00                                      ; $5a7f: $16 $00
	ld   bc, $0302                                   ; $5a81: $01 $02 $03
	dec  h                                           ; $5a84: $25
	ld   h, $27                                      ; $5a85: $26 $27
	rlca                                             ; $5a87: $07
	jr   z, jr_091_5ab3                              ; $5a88: $28 $29

	ld   a, [hl+]                                    ; $5a8a: $2a
	dec  hl                                          ; $5a8b: $2b
	inc  c                                           ; $5a8c: $0c
	inc  l                                           ; $5a8d: $2c
	dec  l                                           ; $5a8e: $2d
	rrca                                             ; $5a8f: $0f
	ld   [hl-], a                                    ; $5a90: $32
	add  hl, sp                                      ; $5a91: $39
	ld   a, [hl-]                                    ; $5a92: $3a
	inc  de                                          ; $5a93: $13
	dec  [hl]                                        ; $5a94: $35
	ld   [hl], $37                                   ; $5a95: $36 $37
	jr   c, @+$01                                    ; $5a97: $38 $ff

	rst  $38                                         ; $5a99: $ff
	rst  $38                                         ; $5a9a: $ff
	ld   d, $00                                      ; $5a9b: $16 $00
	ld   bc, $0302                                   ; $5a9d: $01 $02 $03
	inc  b                                           ; $5aa0: $04
	jr   nz, jr_091_5aa9                             ; $5aa1: $20 $06

	rlca                                             ; $5aa3: $07
	jr   nc, @+$33                                   ; $5aa4: $30 $31

	ld   a, [bc]                                     ; $5aa6: $0a
	inc  hl                                          ; $5aa7: $23
	inc  c                                           ; $5aa8: $0c

jr_091_5aa9:
	inc  h                                           ; $5aa9: $24
	ld   c, $0f                                      ; $5aaa: $0e $0f
	ld   [hl-], a                                    ; $5aac: $32
	inc  sp                                          ; $5aad: $33
	inc  [hl]                                        ; $5aae: $34
	inc  de                                          ; $5aaf: $13
	dec  [hl]                                        ; $5ab0: $35
	ld   [hl], $37                                   ; $5ab1: $36 $37

jr_091_5ab3:
	jr   c, @+$01                                    ; $5ab3: $38 $ff

	rst  $38                                         ; $5ab5: $ff
	rst  $38                                         ; $5ab6: $ff
	ld   d, $00                                      ; $5ab7: $16 $00
	ld   bc, $0302                                   ; $5ab9: $01 $02 $03
	inc  b                                           ; $5abc: $04
	dec  b                                           ; $5abd: $05
	ld   b, $07                                      ; $5abe: $06 $07
	ld   [$0a09], sp                                 ; $5ac0: $08 $09 $0a
	dec  bc                                          ; $5ac3: $0b
	inc  c                                           ; $5ac4: $0c
	dec  c                                           ; $5ac5: $0d
	ld   c, $0f                                      ; $5ac6: $0e $0f
	dec  sp                                          ; $5ac8: $3b
	inc  a                                           ; $5ac9: $3c
	dec  a                                           ; $5aca: $3d
	inc  de                                          ; $5acb: $13
	ld   a, $3f                                      ; $5acc: $3e $3f
	ld   b, b                                        ; $5ace: $40
	ld   b, c                                        ; $5acf: $41
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	ldh  a, [rAUD2ENV]                               ; $5ad2: $f0 $17
	nop                                              ; $5ad4: $00
	ld   bc, $0302                                   ; $5ad5: $01 $02 $03
	inc  b                                           ; $5ad8: $04
	dec  b                                           ; $5ad9: $05
	ld   b, $07                                      ; $5ada: $06 $07
	jr   @+$1b                                       ; $5adc: $18 $19

	ld   a, [de]                                     ; $5ade: $1a
	dec  de                                          ; $5adf: $1b
	inc  c                                           ; $5ae0: $0c
	inc  e                                           ; $5ae1: $1c
	ld   c, $0f                                      ; $5ae2: $0e $0f
	dec  sp                                          ; $5ae4: $3b
	inc  a                                           ; $5ae5: $3c
	dec  a                                           ; $5ae6: $3d
	inc  de                                          ; $5ae7: $13
	ld   a, $3f                                      ; $5ae8: $3e $3f
	ld   b, b                                        ; $5aea: $40
	ld   b, c                                        ; $5aeb: $41
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	ldh  a, [rAUD2ENV]                               ; $5aee: $f0 $17
	nop                                              ; $5af0: $00
	ld   bc, $0302                                   ; $5af1: $01 $02 $03
	inc  b                                           ; $5af4: $04
	dec  b                                           ; $5af5: $05
	ld   b, $07                                      ; $5af6: $06 $07
	dec  e                                           ; $5af8: $1d
	ld   e, $0a                                      ; $5af9: $1e $0a
	dec  bc                                          ; $5afb: $0b
	inc  c                                           ; $5afc: $0c
	dec  c                                           ; $5afd: $0d
	rra                                              ; $5afe: $1f
	rrca                                             ; $5aff: $0f
	dec  sp                                          ; $5b00: $3b
	inc  a                                           ; $5b01: $3c
	dec  a                                           ; $5b02: $3d
	inc  de                                          ; $5b03: $13
	ld   a, $3f                                      ; $5b04: $3e $3f
	ld   b, b                                        ; $5b06: $40
	ld   b, c                                        ; $5b07: $41
	rst  $38                                         ; $5b08: $ff
	rst  $38                                         ; $5b09: $ff
	ldh  a, [rAUD2ENV]                               ; $5b0a: $f0 $17
	nop                                              ; $5b0c: $00

Jump_091_5b0d:
	ld   bc, $0302                                   ; $5b0d: $01 $02 $03
	inc  b                                           ; $5b10: $04
	jr   nz, jr_091_5b19                             ; $5b11: $20 $06

	rlca                                             ; $5b13: $07
	ld   hl, $4322                                   ; $5b14: $21 $22 $43
	inc  hl                                          ; $5b17: $23
	inc  c                                           ; $5b18: $0c

jr_091_5b19:
	inc  h                                           ; $5b19: $24
	ld   c, $0f                                      ; $5b1a: $0e $0f
	dec  sp                                          ; $5b1c: $3b
	inc  a                                           ; $5b1d: $3c
	dec  a                                           ; $5b1e: $3d
	inc  de                                          ; $5b1f: $13
	ld   a, $3f                                      ; $5b20: $3e $3f
	ld   b, b                                        ; $5b22: $40
	ld   b, c                                        ; $5b23: $41
	rst  $38                                         ; $5b24: $ff
	rst  $38                                         ; $5b25: $ff
	ldh  a, [rAUD2ENV]                               ; $5b26: $f0 $17
	nop                                              ; $5b28: $00
	ld   bc, $0302                                   ; $5b29: $01 $02 $03
	dec  h                                           ; $5b2c: $25
	ld   h, $27                                      ; $5b2d: $26 $27
	rlca                                             ; $5b2f: $07
	jr   z, jr_091_5b5b                              ; $5b30: $28 $29

	ld   a, [hl+]                                    ; $5b32: $2a
	dec  hl                                          ; $5b33: $2b
	inc  c                                           ; $5b34: $0c
	inc  l                                           ; $5b35: $2c
	dec  l                                           ; $5b36: $2d
	rrca                                             ; $5b37: $0f
	dec  sp                                          ; $5b38: $3b
	add  hl, sp                                      ; $5b39: $39
	ld   b, d                                        ; $5b3a: $42
	inc  de                                          ; $5b3b: $13
	ld   a, $3f                                      ; $5b3c: $3e $3f
	ld   b, b                                        ; $5b3e: $40
	ld   b, c                                        ; $5b3f: $41
	rst  $38                                         ; $5b40: $ff
	rst  $38                                         ; $5b41: $ff
	ldh  a, [rAUD2ENV]                               ; $5b42: $f0 $17
	nop                                              ; $5b44: $00
	ld   bc, $0302                                   ; $5b45: $01 $02 $03
	inc  b                                           ; $5b48: $04
	jr   nz, jr_091_5b51                             ; $5b49: $20 $06

	rlca                                             ; $5b4b: $07
	jr   nc, @+$33                                   ; $5b4c: $30 $31

	ld   a, [bc]                                     ; $5b4e: $0a
	inc  hl                                          ; $5b4f: $23
	inc  c                                           ; $5b50: $0c

jr_091_5b51:
	inc  h                                           ; $5b51: $24
	ld   c, $0f                                      ; $5b52: $0e $0f
	dec  sp                                          ; $5b54: $3b
	inc  a                                           ; $5b55: $3c
	dec  a                                           ; $5b56: $3d
	inc  de                                          ; $5b57: $13
	ld   a, $3f                                      ; $5b58: $3e $3f
	ld   b, b                                        ; $5b5a: $40

jr_091_5b5b:
	ld   b, c                                        ; $5b5b: $41
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	ldh  a, [rAUD2ENV]                               ; $5b5e: $f0 $17
	nop                                              ; $5b60: $00
	ld   bc, $0302                                   ; $5b61: $01 $02 $03
	inc  b                                           ; $5b64: $04
	dec  b                                           ; $5b65: $05
	ld   b, $07                                      ; $5b66: $06 $07
	ld   [$0a09], sp                                 ; $5b68: $08 $09 $0a
	dec  bc                                          ; $5b6b: $0b
	inc  c                                           ; $5b6c: $0c
	dec  c                                           ; $5b6d: $0d
	ld   c, $0f                                      ; $5b6e: $0e $0f
	db   $10                                         ; $5b70: $10
	ld   de, $1312                                   ; $5b71: $11 $12 $13
	inc  d                                           ; $5b74: $14
	dec  d                                           ; $5b75: $15
	ld   d, $17                                      ; $5b76: $16 $17
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	ldh  [c], a                                      ; $5b7a: $e2
	jr   jr_091_5b7d                                 ; $5b7b: $18 $00

jr_091_5b7d:
	ld   bc, $0302                                   ; $5b7d: $01 $02 $03
	jr   @+$1b                                       ; $5b80: $18 $19

	ld   a, [de]                                     ; $5b82: $1a
	rlca                                             ; $5b83: $07
	dec  de                                          ; $5b84: $1b
	inc  e                                           ; $5b85: $1c
	dec  e                                           ; $5b86: $1d
	ld   e, $0c                                      ; $5b87: $1e $0c
	dec  c                                           ; $5b89: $0d
	ld   c, $0f                                      ; $5b8a: $0e $0f
	db   $10                                         ; $5b8c: $10
	ld   de, $1312                                   ; $5b8d: $11 $12 $13
	inc  d                                           ; $5b90: $14
	dec  d                                           ; $5b91: $15
	ld   d, $17                                      ; $5b92: $16 $17
	rst  $38                                         ; $5b94: $ff
	rst  $38                                         ; $5b95: $ff
	ldh  [c], a                                      ; $5b96: $e2
	jr   jr_091_5b99                                 ; $5b97: $18 $00

jr_091_5b99:
	ld   bc, $0302                                   ; $5b99: $01 $02 $03
	rra                                              ; $5b9c: $1f
	add  hl, de                                      ; $5b9d: $19
	jr   nz, @+$09                                   ; $5b9e: $20 $07

	ld   [$2221], sp                                 ; $5ba0: $08 $21 $22
	dec  bc                                          ; $5ba3: $0b
	inc  c                                           ; $5ba4: $0c
	inc  hl                                          ; $5ba5: $23
	ld   c, $0f                                      ; $5ba6: $0e $0f
	db   $10                                         ; $5ba8: $10
	inc  h                                           ; $5ba9: $24
	dec  h                                           ; $5baa: $25
	inc  de                                          ; $5bab: $13
	inc  d                                           ; $5bac: $14
	dec  d                                           ; $5bad: $15
	ld   d, $17                                      ; $5bae: $16 $17
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	ldh  [c], a                                      ; $5bb2: $e2
	jr   jr_091_5bb5                                 ; $5bb3: $18 $00

jr_091_5bb5:
	ld   bc, $0302                                   ; $5bb5: $01 $02 $03
	ld   h, $27                                      ; $5bb8: $26 $27
	jr   z, @+$09                                    ; $5bba: $28 $07

	add  hl, hl                                      ; $5bbc: $29
	ld   a, [hl+]                                    ; $5bbd: $2a
	dec  hl                                          ; $5bbe: $2b
	dec  bc                                          ; $5bbf: $0b
	inc  c                                           ; $5bc0: $0c
	dec  c                                           ; $5bc1: $0d
	ld   c, $0f                                      ; $5bc2: $0e $0f
	db   $10                                         ; $5bc4: $10
	ld   de, $1312                                   ; $5bc5: $11 $12 $13
	inc  d                                           ; $5bc8: $14
	dec  d                                           ; $5bc9: $15
	ld   d, $17                                      ; $5bca: $16 $17
	rst  $38                                         ; $5bcc: $ff
	rst  $38                                         ; $5bcd: $ff
	ldh  [c], a                                      ; $5bce: $e2
	jr   jr_091_5bd1                                 ; $5bcf: $18 $00

jr_091_5bd1:
	ld   bc, $0302                                   ; $5bd1: $01 $02 $03
	inc  b                                           ; $5bd4: $04
	dec  b                                           ; $5bd5: $05
	ld   b, $07                                      ; $5bd6: $06 $07
	ld   [$0a09], sp                                 ; $5bd8: $08 $09 $0a
	dec  bc                                          ; $5bdb: $0b
	inc  c                                           ; $5bdc: $0c
	dec  c                                           ; $5bdd: $0d
	ld   c, $0f                                      ; $5bde: $0e $0f
	db   $10                                         ; $5be0: $10
	ld   de, $1312                                   ; $5be1: $11 $12 $13
	inc  d                                           ; $5be4: $14
	dec  d                                           ; $5be5: $15
	ld   d, $17                                      ; $5be6: $16 $17
	rst  $38                                         ; $5be8: $ff
	rst  $38                                         ; $5be9: $ff
	ldh  a, [rAUD2HIGH]                              ; $5bea: $f0 $19
	nop                                              ; $5bec: $00
	ld   bc, $0302                                   ; $5bed: $01 $02 $03
	jr   @+$1b                                       ; $5bf0: $18 $19

	ld   a, [de]                                     ; $5bf2: $1a
	rlca                                             ; $5bf3: $07
	dec  de                                          ; $5bf4: $1b
	inc  e                                           ; $5bf5: $1c
	dec  e                                           ; $5bf6: $1d
	ld   e, $0c                                      ; $5bf7: $1e $0c
	rra                                              ; $5bf9: $1f
	ld   c, $0f                                      ; $5bfa: $0e $0f
	db   $10                                         ; $5bfc: $10
	ld   de, $1312                                   ; $5bfd: $11 $12 $13
	inc  d                                           ; $5c00: $14
	dec  d                                           ; $5c01: $15
	ld   d, $17                                      ; $5c02: $16 $17
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	ldh  a, [rAUD2HIGH]                              ; $5c06: $f0 $19
	nop                                              ; $5c08: $00
	ld   bc, $0302                                   ; $5c09: $01 $02 $03
	jr   nz, jr_091_5c13                             ; $5c0c: $20 $05

	ld   hl, $2207                                   ; $5c0e: $21 $07 $22
	inc  hl                                          ; $5c11: $23
	inc  h                                           ; $5c12: $24

jr_091_5c13:
	dec  h                                           ; $5c13: $25
	inc  c                                           ; $5c14: $0c
	ld   h, $0e                                      ; $5c15: $26 $0e
	rrca                                             ; $5c17: $0f
	db   $10                                         ; $5c18: $10
	daa                                              ; $5c19: $27
	ld   [de], a                                     ; $5c1a: $12
	inc  de                                          ; $5c1b: $13
	inc  d                                           ; $5c1c: $14
	dec  d                                           ; $5c1d: $15
	ld   d, $17                                      ; $5c1e: $16 $17
	rst  $38                                         ; $5c20: $ff
	rst  $38                                         ; $5c21: $ff
	ldh  a, [rAUD2HIGH]                              ; $5c22: $f0 $19
	nop                                              ; $5c24: $00
	ld   bc, $0302                                   ; $5c25: $01 $02 $03
	jr   z, jr_091_5c53                              ; $5c28: $28 $29

	ld   a, [hl+]                                    ; $5c2a: $2a
	rlca                                             ; $5c2b: $07
	dec  hl                                          ; $5c2c: $2b
	inc  l                                           ; $5c2d: $2c
	dec  l                                           ; $5c2e: $2d
	ld   l, $0c                                      ; $5c2f: $2e $0c
	cpl                                              ; $5c31: $2f
	ld   c, $0f                                      ; $5c32: $0e $0f
	db   $10                                         ; $5c34: $10
	daa                                              ; $5c35: $27
	ld   [de], a                                     ; $5c36: $12
	inc  de                                          ; $5c37: $13
	inc  d                                           ; $5c38: $14
	dec  d                                           ; $5c39: $15
	ld   d, $17                                      ; $5c3a: $16 $17
	rst  $38                                         ; $5c3c: $ff
	rst  $38                                         ; $5c3d: $ff
	ldh  a, [rAUD2HIGH]                              ; $5c3e: $f0 $19
	nop                                              ; $5c40: $00
	ld   bc, $0302                                   ; $5c41: $01 $02 $03
	jr   nc, jr_091_5c4b                             ; $5c44: $30 $05

	ld   sp, $3207                                   ; $5c46: $31 $07 $32
	inc  sp                                          ; $5c49: $33
	inc  [hl]                                        ; $5c4a: $34

jr_091_5c4b:
	dec  [hl]                                        ; $5c4b: $35
	inc  c                                           ; $5c4c: $0c
	ld   [hl], $37                                   ; $5c4d: $36 $37
	rrca                                             ; $5c4f: $0f
	db   $10                                         ; $5c50: $10
	jr   c, @+$14                                    ; $5c51: $38 $12

jr_091_5c53:
	inc  de                                          ; $5c53: $13
	inc  d                                           ; $5c54: $14
	dec  d                                           ; $5c55: $15
	ld   d, $17                                      ; $5c56: $16 $17
	rst  $38                                         ; $5c58: $ff
	rst  $38                                         ; $5c59: $ff
	ldh  a, [rAUD2HIGH]                              ; $5c5a: $f0 $19
	nop                                              ; $5c5c: $00
	ld   bc, $0302                                   ; $5c5d: $01 $02 $03
	inc  b                                           ; $5c60: $04
	dec  b                                           ; $5c61: $05
	ld   b, $07                                      ; $5c62: $06 $07
	ld   [$0a09], sp                                 ; $5c64: $08 $09 $0a
	dec  bc                                          ; $5c67: $0b
	inc  c                                           ; $5c68: $0c
	dec  c                                           ; $5c69: $0d
	ld   c, $0f                                      ; $5c6a: $0e $0f
	db   $10                                         ; $5c6c: $10
	ld   de, $1312                                   ; $5c6d: $11 $12 $13
	inc  d                                           ; $5c70: $14
	dec  d                                           ; $5c71: $15
	ld   d, $17                                      ; $5c72: $16 $17
	rst  $38                                         ; $5c74: $ff
	rst  $38                                         ; $5c75: $ff
	ldh  a, [rAUD3ENA]                               ; $5c76: $f0 $1a
	nop                                              ; $5c78: $00
	ld   bc, $0302                                   ; $5c79: $01 $02 $03
	jr   @+$1b                                       ; $5c7c: $18 $19

	ld   a, [de]                                     ; $5c7e: $1a
	rlca                                             ; $5c7f: $07
	dec  de                                          ; $5c80: $1b
	inc  e                                           ; $5c81: $1c
	dec  e                                           ; $5c82: $1d
	ld   e, $0c                                      ; $5c83: $1e $0c
	rra                                              ; $5c85: $1f
	jr   nz, @+$11                                   ; $5c86: $20 $0f

	db   $10                                         ; $5c88: $10
	ld   de, $1312                                   ; $5c89: $11 $12 $13
	inc  d                                           ; $5c8c: $14
	dec  d                                           ; $5c8d: $15
	ld   d, $17                                      ; $5c8e: $16 $17
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	ldh  a, [rAUD3ENA]                               ; $5c92: $f0 $1a
	nop                                              ; $5c94: $00
	ld   bc, $0302                                   ; $5c95: $01 $02 $03
	ld   hl, $2322                                   ; $5c98: $21 $22 $23
	rlca                                             ; $5c9b: $07
	ld   [$2524], sp                                 ; $5c9c: $08 $24 $25
	dec  bc                                          ; $5c9f: $0b
	inc  c                                           ; $5ca0: $0c
	ld   h, $0e                                      ; $5ca1: $26 $0e
	rrca                                             ; $5ca3: $0f
	db   $10                                         ; $5ca4: $10
	ld   de, $1312                                   ; $5ca5: $11 $12 $13
	inc  d                                           ; $5ca8: $14
	dec  d                                           ; $5ca9: $15
	ld   d, $17                                      ; $5caa: $16 $17
	rst  $38                                         ; $5cac: $ff
	rst  $38                                         ; $5cad: $ff
	ldh  a, [rAUD3ENA]                               ; $5cae: $f0 $1a
	nop                                              ; $5cb0: $00
	ld   bc, $0302                                   ; $5cb1: $01 $02 $03
	daa                                              ; $5cb4: $27
	jr   z, jr_091_5ce0                              ; $5cb5: $28 $29

	rlca                                             ; $5cb7: $07
	ld   a, [hl+]                                    ; $5cb8: $2a
	dec  hl                                          ; $5cb9: $2b
	inc  l                                           ; $5cba: $2c
	dec  l                                           ; $5cbb: $2d
	inc  c                                           ; $5cbc: $0c
	ld   l, $0e                                      ; $5cbd: $2e $0e
	rrca                                             ; $5cbf: $0f
	db   $10                                         ; $5cc0: $10
	ld   de, $1312                                   ; $5cc1: $11 $12 $13
	inc  d                                           ; $5cc4: $14
	dec  d                                           ; $5cc5: $15
	ld   d, $17                                      ; $5cc6: $16 $17
	rst  $38                                         ; $5cc8: $ff
	rst  $38                                         ; $5cc9: $ff
	ldh  a, [rAUD3ENA]                               ; $5cca: $f0 $1a
	nop                                              ; $5ccc: $00
	ld   bc, $0302                                   ; $5ccd: $01 $02 $03
	inc  b                                           ; $5cd0: $04
	dec  b                                           ; $5cd1: $05
	ld   b, $07                                      ; $5cd2: $06 $07
	ld   [$0a09], sp                                 ; $5cd4: $08 $09 $0a
	dec  bc                                          ; $5cd7: $0b
	inc  c                                           ; $5cd8: $0c
	dec  c                                           ; $5cd9: $0d
	ld   c, $0f                                      ; $5cda: $0e $0f
	db   $10                                         ; $5cdc: $10
	ld   de, $1312                                   ; $5cdd: $11 $12 $13

jr_091_5ce0:
	inc  d                                           ; $5ce0: $14
	dec  d                                           ; $5ce1: $15
	ld   d, $17                                      ; $5ce2: $16 $17
	rst  $38                                         ; $5ce4: $ff
	rst  $38                                         ; $5ce5: $ff
	ldh  a, [rAUD3LEN]                               ; $5ce6: $f0 $1b
	nop                                              ; $5ce8: $00
	ld   bc, $0302                                   ; $5ce9: $01 $02 $03
	jr   @+$1b                                       ; $5cec: $18 $19

	ld   a, [de]                                     ; $5cee: $1a
	dec  de                                          ; $5cef: $1b
	inc  e                                           ; $5cf0: $1c
	dec  e                                           ; $5cf1: $1d
	ld   e, $1f                                      ; $5cf2: $1e $1f
	inc  c                                           ; $5cf4: $0c
	jr   nz, jr_091_5d18                             ; $5cf5: $20 $21

	rrca                                             ; $5cf7: $0f
	db   $10                                         ; $5cf8: $10
	ld   de, $1312                                   ; $5cf9: $11 $12 $13
	inc  d                                           ; $5cfc: $14
	dec  d                                           ; $5cfd: $15
	ld   d, $17                                      ; $5cfe: $16 $17
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	ldh  a, [rAUD3LEN]                               ; $5d02: $f0 $1b
	nop                                              ; $5d04: $00
	ld   bc, $0302                                   ; $5d05: $01 $02 $03
	ld   [hl+], a                                    ; $5d08: $22
	dec  b                                           ; $5d09: $05
	inc  hl                                          ; $5d0a: $23
	inc  h                                           ; $5d0b: $24
	dec  h                                           ; $5d0c: $25
	ld   h, $27                                      ; $5d0d: $26 $27
	rra                                              ; $5d0f: $1f
	inc  c                                           ; $5d10: $0c
	jr   z, jr_091_5d3c                              ; $5d11: $28 $29

	rrca                                             ; $5d13: $0f
	db   $10                                         ; $5d14: $10
	ld   de, $1312                                   ; $5d15: $11 $12 $13

jr_091_5d18:
	inc  d                                           ; $5d18: $14
	dec  d                                           ; $5d19: $15
	ld   d, $17                                      ; $5d1a: $16 $17
	rst  $38                                         ; $5d1c: $ff
	rst  $38                                         ; $5d1d: $ff
	ldh  a, [rAUD3LEN]                               ; $5d1e: $f0 $1b
	nop                                              ; $5d20: $00
	ld   bc, $0302                                   ; $5d21: $01 $02 $03
	ld   a, [hl+]                                    ; $5d24: $2a
	dec  b                                           ; $5d25: $05
	dec  hl                                          ; $5d26: $2b
	inc  h                                           ; $5d27: $24
	inc  l                                           ; $5d28: $2c
	dec  l                                           ; $5d29: $2d
	ld   l, $2f                                      ; $5d2a: $2e $2f
	inc  c                                           ; $5d2c: $0c
	jr   z, jr_091_5d58                              ; $5d2d: $28 $29

	rrca                                             ; $5d2f: $0f
	db   $10                                         ; $5d30: $10
	ld   de, $1312                                   ; $5d31: $11 $12 $13
	inc  d                                           ; $5d34: $14
	dec  d                                           ; $5d35: $15
	ld   d, $17                                      ; $5d36: $16 $17
	rst  $38                                         ; $5d38: $ff
	rst  $38                                         ; $5d39: $ff
	ldh  a, [rAUD3LEN]                               ; $5d3a: $f0 $1b

jr_091_5d3c:
	nop                                              ; $5d3c: $00
	ld   bc, $0302                                   ; $5d3d: $01 $02 $03
	jr   nc, @+$33                                   ; $5d40: $30 $31

	ld   [hl-], a                                    ; $5d42: $32
	inc  sp                                          ; $5d43: $33
	inc  [hl]                                        ; $5d44: $34
	dec  [hl]                                        ; $5d45: $35
	ld   [hl], $37                                   ; $5d46: $36 $37
	inc  c                                           ; $5d48: $0c
	jr   c, jr_091_5d84                              ; $5d49: $38 $39

	rrca                                             ; $5d4b: $0f
	db   $10                                         ; $5d4c: $10
	ld   a, [hl-]                                    ; $5d4d: $3a
	dec  sp                                          ; $5d4e: $3b
	inc  de                                          ; $5d4f: $13
	inc  d                                           ; $5d50: $14
	dec  d                                           ; $5d51: $15
	ld   d, $17                                      ; $5d52: $16 $17
	rst  $38                                         ; $5d54: $ff
	rst  $38                                         ; $5d55: $ff
	ldh  a, [rAUD3LEN]                               ; $5d56: $f0 $1b

jr_091_5d58:
	nop                                              ; $5d58: $00
	ld   bc, $0302                                   ; $5d59: $01 $02 $03
	inc  b                                           ; $5d5c: $04
	dec  b                                           ; $5d5d: $05
	ld   b, $07                                      ; $5d5e: $06 $07
	ld   [$0a09], sp                                 ; $5d60: $08 $09 $0a
	dec  bc                                          ; $5d63: $0b
	inc  c                                           ; $5d64: $0c
	dec  c                                           ; $5d65: $0d
	ld   c, $0f                                      ; $5d66: $0e $0f
	db   $10                                         ; $5d68: $10
	ld   de, $1312                                   ; $5d69: $11 $12 $13
	inc  d                                           ; $5d6c: $14
	dec  d                                           ; $5d6d: $15
	ld   d, $17                                      ; $5d6e: $16 $17
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	ldh  [rAUD3LEVEL], a                             ; $5d72: $e0 $1c
	nop                                              ; $5d74: $00
	ld   bc, $0302                                   ; $5d75: $01 $02 $03
	inc  b                                           ; $5d78: $04
	jr   jr_091_5d94                                 ; $5d79: $18 $19

	rlca                                             ; $5d7b: $07
	ld   [$1b1a], sp                                 ; $5d7c: $08 $1a $1b
	dec  bc                                          ; $5d7f: $0b
	inc  c                                           ; $5d80: $0c
	inc  e                                           ; $5d81: $1c
	dec  e                                           ; $5d82: $1d
	rrca                                             ; $5d83: $0f

jr_091_5d84:
	db   $10                                         ; $5d84: $10
	ld   e, $1f                                      ; $5d85: $1e $1f
	inc  de                                          ; $5d87: $13
	inc  d                                           ; $5d88: $14
	dec  d                                           ; $5d89: $15
	ld   d, $17                                      ; $5d8a: $16 $17
	rst  $38                                         ; $5d8c: $ff
	rst  $38                                         ; $5d8d: $ff
	ldh  [rAUD3LEVEL], a                             ; $5d8e: $e0 $1c
	jr   nz, @+$23                                   ; $5d90: $20 $21

	ld   [hl+], a                                    ; $5d92: $22
	inc  hl                                          ; $5d93: $23

jr_091_5d94:
	inc  h                                           ; $5d94: $24
	dec  h                                           ; $5d95: $25
	ld   h, $27                                      ; $5d96: $26 $27
	jr   z, @+$2b                                    ; $5d98: $28 $29

	ld   a, [hl+]                                    ; $5d9a: $2a
	dec  hl                                          ; $5d9b: $2b
	inc  l                                           ; $5d9c: $2c
	dec  l                                           ; $5d9d: $2d
	ld   l, $2f                                      ; $5d9e: $2e $2f
	jr   nc, jr_091_5dd3                             ; $5da0: $30 $31

	ld   [hl-], a                                    ; $5da2: $32
	inc  sp                                          ; $5da3: $33
	inc  [hl]                                        ; $5da4: $34
	dec  [hl]                                        ; $5da5: $35
	ld   [hl], $37                                   ; $5da6: $36 $37
	rst  $38                                         ; $5da8: $ff
	rst  $38                                         ; $5da9: $ff
	ld   h, [hl]                                     ; $5daa: $66
	dec  e                                           ; $5dab: $1d
	nop                                              ; $5dac: $00
	ld   bc, $0302                                   ; $5dad: $01 $02 $03
	inc  b                                           ; $5db0: $04
	dec  b                                           ; $5db1: $05
	ld   b, $07                                      ; $5db2: $06 $07
	ld   [$0a09], sp                                 ; $5db4: $08 $09 $0a
	dec  bc                                          ; $5db7: $0b
	inc  c                                           ; $5db8: $0c
	dec  c                                           ; $5db9: $0d
	ld   c, $0f                                      ; $5dba: $0e $0f
	db   $10                                         ; $5dbc: $10
	ld   de, $1312                                   ; $5dbd: $11 $12 $13
	inc  d                                           ; $5dc0: $14
	dec  d                                           ; $5dc1: $15
	ld   d, $17                                      ; $5dc2: $16 $17
	rst  $38                                         ; $5dc4: $ff
	rst  $38                                         ; $5dc5: $ff
	rst  $38                                         ; $5dc6: $ff
	ld   e, $18                                      ; $5dc7: $1e $18
	add  hl, de                                      ; $5dc9: $19
	ld   a, [de]                                     ; $5dca: $1a
	dec  de                                          ; $5dcb: $1b
	inc  e                                           ; $5dcc: $1c
	dec  e                                           ; $5dcd: $1d
	ld   e, $1f                                      ; $5dce: $1e $1f
	jr   nz, @+$23                                   ; $5dd0: $20 $21

	ld   [hl+], a                                    ; $5dd2: $22

jr_091_5dd3:
	inc  hl                                          ; $5dd3: $23
	inc  h                                           ; $5dd4: $24
	dec  h                                           ; $5dd5: $25
	ld   h, $27                                      ; $5dd6: $26 $27
	jr   z, jr_091_5e03                              ; $5dd8: $28 $29

	ld   a, [hl+]                                    ; $5dda: $2a
	dec  hl                                          ; $5ddb: $2b
	inc  l                                           ; $5ddc: $2c
	dec  l                                           ; $5ddd: $2d
	ld   l, $2f                                      ; $5dde: $2e $2f
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	rst  $38                                         ; $5de2: $ff
	ld   e, $30                                      ; $5de3: $1e $30
	ld   sp, $3332                                   ; $5de5: $31 $32 $33
	inc  [hl]                                        ; $5de8: $34
	dec  [hl]                                        ; $5de9: $35
	ld   [hl], $37                                   ; $5dea: $36 $37
	jr   c, jr_091_5e27                              ; $5dec: $38 $39

	ld   a, [hl-]                                    ; $5dee: $3a
	dec  sp                                          ; $5def: $3b
	inc  a                                           ; $5df0: $3c
	dec  a                                           ; $5df1: $3d
	ld   a, $3f                                      ; $5df2: $3e $3f
	ld   b, b                                        ; $5df4: $40
	ld   b, c                                        ; $5df5: $41
	ld   b, d                                        ; $5df6: $42
	ld   b, e                                        ; $5df7: $43
	ld   b, h                                        ; $5df8: $44
	ld   b, l                                        ; $5df9: $45
	ld   b, [hl]                                     ; $5dfa: $46
	ld   b, a                                        ; $5dfb: $47
	rst  $38                                         ; $5dfc: $ff
	rst  $30                                         ; $5dfd: $f7
	rst  $38                                         ; $5dfe: $ff
	ld   e, $48                                      ; $5dff: $1e $48
	ld   c, c                                        ; $5e01: $49
	ld   c, d                                        ; $5e02: $4a

jr_091_5e03:
	ld   c, e                                        ; $5e03: $4b
	ld   c, h                                        ; $5e04: $4c
	ld   c, l                                        ; $5e05: $4d
	ld   c, [hl]                                     ; $5e06: $4e
	ld   c, a                                        ; $5e07: $4f
	ld   d, b                                        ; $5e08: $50
	ld   d, c                                        ; $5e09: $51
	ld   d, d                                        ; $5e0a: $52
	ld   d, e                                        ; $5e0b: $53
	ld   d, h                                        ; $5e0c: $54
	ld   d, l                                        ; $5e0d: $55
	ld   d, [hl]                                     ; $5e0e: $56
	ld   d, a                                        ; $5e0f: $57
	ld   e, b                                        ; $5e10: $58
	ld   e, c                                        ; $5e11: $59
	ld   e, d                                        ; $5e12: $5a
	ld   e, e                                        ; $5e13: $5b
	ld   e, h                                        ; $5e14: $5c
	ld   e, l                                        ; $5e15: $5d
	ld   e, [hl]                                     ; $5e16: $5e
	ld   e, a                                        ; $5e17: $5f
	rst  $38                                         ; $5e18: $ff
	rst  $38                                         ; $5e19: $ff
	rst  $38                                         ; $5e1a: $ff
	ld   e, $60                                      ; $5e1b: $1e $60
	ld   h, c                                        ; $5e1d: $61
	ld   h, d                                        ; $5e1e: $62
	ld   h, e                                        ; $5e1f: $63
	ld   h, h                                        ; $5e20: $64
	ld   h, l                                        ; $5e21: $65
	ld   h, [hl]                                     ; $5e22: $66
	ld   h, a                                        ; $5e23: $67
	ld   l, b                                        ; $5e24: $68
	ld   l, c                                        ; $5e25: $69
	ld   l, d                                        ; $5e26: $6a

jr_091_5e27:
	ld   l, e                                        ; $5e27: $6b
	ld   l, h                                        ; $5e28: $6c
	ld   l, l                                        ; $5e29: $6d
	ld   l, [hl]                                     ; $5e2a: $6e
	ld   l, a                                        ; $5e2b: $6f
	ld   [hl], b                                     ; $5e2c: $70
	ld   [hl], c                                     ; $5e2d: $71
	ld   [hl], d                                     ; $5e2e: $72
	ld   [hl], e                                     ; $5e2f: $73
	ld   [hl], h                                     ; $5e30: $74
	ld   [hl], l                                     ; $5e31: $75
	halt                                             ; $5e32: $76
	ld   [hl], a                                     ; $5e33: $77
	rst  $38                                         ; $5e34: $ff
	rst  $38                                         ; $5e35: $ff
	rst  $38                                         ; $5e36: $ff
	rra                                              ; $5e37: $1f
	ld   a, b                                        ; $5e38: $78
	ld   a, c                                        ; $5e39: $79
	ld   a, d                                        ; $5e3a: $7a
	ld   a, e                                        ; $5e3b: $7b
	ld   a, h                                        ; $5e3c: $7c
	ld   a, l                                        ; $5e3d: $7d
	ld   a, [hl]                                     ; $5e3e: $7e
	ld   a, a                                        ; $5e3f: $7f
	add  b                                           ; $5e40: $80
	add  c                                           ; $5e41: $81
	add  d                                           ; $5e42: $82
	add  e                                           ; $5e43: $83
	add  h                                           ; $5e44: $84
	add  l                                           ; $5e45: $85
	add  [hl]                                        ; $5e46: $86
	add  a                                           ; $5e47: $87
	adc  b                                           ; $5e48: $88
	adc  c                                           ; $5e49: $89
	adc  d                                           ; $5e4a: $8a
	adc  e                                           ; $5e4b: $8b
	adc  h                                           ; $5e4c: $8c
	adc  l                                           ; $5e4d: $8d
	adc  [hl]                                        ; $5e4e: $8e
	adc  a                                           ; $5e4f: $8f
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	rra                                              ; $5e53: $1f
	sub  b                                           ; $5e54: $90
	sub  c                                           ; $5e55: $91
	sub  d                                           ; $5e56: $92
	sub  e                                           ; $5e57: $93
	sub  h                                           ; $5e58: $94
	sub  l                                           ; $5e59: $95
	sub  [hl]                                        ; $5e5a: $96
	sub  a                                           ; $5e5b: $97
	sbc  b                                           ; $5e5c: $98
	sbc  c                                           ; $5e5d: $99
	sbc  d                                           ; $5e5e: $9a
	sbc  e                                           ; $5e5f: $9b
	sbc  h                                           ; $5e60: $9c
	sbc  l                                           ; $5e61: $9d
	sbc  [hl]                                        ; $5e62: $9e
	sbc  a                                           ; $5e63: $9f
	and  b                                           ; $5e64: $a0
	and  c                                           ; $5e65: $a1
	and  d                                           ; $5e66: $a2
	and  e                                           ; $5e67: $a3
	and  h                                           ; $5e68: $a4
	and  l                                           ; $5e69: $a5
	and  [hl]                                        ; $5e6a: $a6
	and  a                                           ; $5e6b: $a7
	rst  $38                                         ; $5e6c: $ff
	rst  $30                                         ; $5e6d: $f7
	ccf                                              ; $5e6e: $3f
	rra                                              ; $5e6f: $1f
	xor  b                                           ; $5e70: $a8
	xor  c                                           ; $5e71: $a9
	xor  d                                           ; $5e72: $aa
	xor  e                                           ; $5e73: $ab
	xor  h                                           ; $5e74: $ac
	xor  l                                           ; $5e75: $ad
	xor  [hl]                                        ; $5e76: $ae
	xor  a                                           ; $5e77: $af
	or   b                                           ; $5e78: $b0
	or   c                                           ; $5e79: $b1
	or   d                                           ; $5e7a: $b2
	or   e                                           ; $5e7b: $b3
	or   h                                           ; $5e7c: $b4
	or   l                                           ; $5e7d: $b5
	or   [hl]                                        ; $5e7e: $b6
	or   a                                           ; $5e7f: $b7
	cp   b                                           ; $5e80: $b8
	cp   c                                           ; $5e81: $b9
	cp   d                                           ; $5e82: $ba
	cp   e                                           ; $5e83: $bb
	cp   h                                           ; $5e84: $bc
	cp   l                                           ; $5e85: $bd
	cp   [hl]                                        ; $5e86: $be
	cp   a                                           ; $5e87: $bf
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	rst  $38                                         ; $5e8a: $ff
	rra                                              ; $5e8b: $1f
	ret  nz                                          ; $5e8c: $c0

	pop  bc                                          ; $5e8d: $c1
	jp   nz, $c4c3                                   ; $5e8e: $c2 $c3 $c4

	push bc                                          ; $5e91: $c5
	add  $c7                                         ; $5e92: $c6 $c7
	ret  z                                           ; $5e94: $c8

	ret                                              ; $5e95: $c9


	jp   z, $cccb                                    ; $5e96: $ca $cb $cc

	call $cfce                                       ; $5e99: $cd $ce $cf
	ret  nc                                          ; $5e9c: $d0

	pop  de                                          ; $5e9d: $d1
	jp   nc, $d4d3                                   ; $5e9e: $d2 $d3 $d4

	push de                                          ; $5ea1: $d5
	sub  $d7                                         ; $5ea2: $d6 $d7
	rst  $38                                         ; $5ea4: $ff
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	ld   e, $d8                                      ; $5ea7: $1e $d8
	reti                                             ; $5ea9: $d9


	jp   c, $dcdb                                    ; $5eaa: $da $db $dc

	db   $dd                                         ; $5ead: $dd
	sbc  $df                                         ; $5eae: $de $df
	ldh  [$e1], a                                    ; $5eb0: $e0 $e1
	ldh  [c], a                                      ; $5eb2: $e2
	db   $e3                                         ; $5eb3: $e3
	db   $e4                                         ; $5eb4: $e4
	push hl                                          ; $5eb5: $e5
	and  $e7                                         ; $5eb6: $e6 $e7
	add  sp, -$17                                    ; $5eb8: $e8 $e9
	ld   [$eceb], a                                  ; $5eba: $ea $eb $ec
	db   $ed                                         ; $5ebd: $ed
	xor  $ef                                         ; $5ebe: $ee $ef
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	rra                                              ; $5ec3: $1f
	cp   [hl]                                        ; $5ec4: $be
	ld   a, e                                        ; $5ec5: $7b
	cp   [hl]                                        ; $5ec6: $be
	ld   h, e                                        ; $5ec7: $63
	cp   [hl]                                        ; $5ec8: $be
	ld   h, a                                        ; $5ec9: $67
	cp   d                                           ; $5eca: $ba
	rst  $38                                         ; $5ecb: $ff
	ei                                               ; $5ecc: $fb
	ld   l, a                                        ; $5ecd: $6f
	or   c                                           ; $5ece: $b1
	ld   a, a                                        ; $5ecf: $7f
	and  c                                           ; $5ed0: $a1
	ld   a, a                                        ; $5ed1: $7f
	and  b                                           ; $5ed2: $a0
	ld   a, a                                        ; $5ed3: $7f
	adc  a                                           ; $5ed4: $8f
	reti                                             ; $5ed5: $d9


	rst  $38                                         ; $5ed6: $ff
	rst  $38                                         ; $5ed7: $ff
	ret  nc                                          ; $5ed8: $d0

	ld   hl, sp+$50                                  ; $5ed9: $f8 $50
	rst  $38                                         ; $5edb: $ff
	ld   d, b                                        ; $5edc: $50
	rst  $38                                         ; $5edd: $ff
	ld   d, b                                        ; $5ede: $50
	rst  $38                                         ; $5edf: $ff
	or   b                                           ; $5ee0: $b0
	rst  $38                                         ; $5ee1: $ff
	nop                                              ; $5ee2: $00
	rst  $38                                         ; $5ee3: $ff
	adc  $7b                                         ; $5ee4: $ce $7b
	rst  $38                                         ; $5ee6: $ff
	db   $fc                                         ; $5ee7: $fc
	inc  bc                                          ; $5ee8: $03
	ld   e, $01                                      ; $5ee9: $1e $01
	ccf                                              ; $5eeb: $3f
	ld   bc, $013f                  ; $5eec: $01 $3f $01
	ccf                                              ; $5eef: $3f
	ld   bc, $003f                                   ; $5ef0: $01 $3f $00
	ccf                                              ; $5ef3: $3f
	ld   a, [bc]                                     ; $5ef4: $0a
	sbc  $0a                                         ; $5ef5: $de $0a
	sbc  $8a                                         ; $5ef7: $de $8a
	ld   e, [hl]                                     ; $5ef9: $5e
	adc  d                                           ; $5efa: $8a
	ld   e, [hl]                                     ; $5efb: $5e
	adc  d                                           ; $5efc: $8a
	ld   e, [hl]                                     ; $5efd: $5e
	adc  d                                           ; $5efe: $8a
	ld   e, [hl]                                     ; $5eff: $5e
	ld   a, [bc]                                     ; $5f00: $0a
	sbc  $96                                         ; $5f01: $de $96
	cp   [hl]                                        ; $5f03: $be
	ret  nz                                          ; $5f04: $c0

	ld   a, a                                        ; $5f05: $7f
	pop  bc                                          ; $5f06: $c1
	rst  $38                                         ; $5f07: $ff
	sbc  e                                           ; $5f08: $9b
	rst  $38                                         ; $5f09: $ff
	ldh  [rIE], a                                    ; $5f0a: $e0 $ff
	rrca                                             ; $5f0c: $0f
	rst  $38                                         ; $5f0d: $ff
	sbc  a                                           ; $5f0e: $9f
	rst  $30                                         ; $5f0f: $f7
	ld   a, a                                        ; $5f10: $7f
	ld   hl, sp+$1f                                  ; $5f11: $f8 $1f
	rst  $38                                         ; $5f13: $ff
	nop                                              ; $5f14: $00
	rst  $38                                         ; $5f15: $ff
	nop                                              ; $5f16: $00
	cp   $ff                                         ; $5f17: $fe $ff
	rst  $38                                         ; $5f19: $ff
	nop                                              ; $5f1a: $00
	rst  $38                                         ; $5f1b: $ff
	rst  $38                                         ; $5f1c: $ff
	rst  $38                                         ; $5f1d: $ff
	rst  $38                                         ; $5f1e: $ff
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	nop                                              ; $5f21: $00
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	nop                                              ; $5f24: $00
	ccf                                              ; $5f25: $3f
	inc  b                                           ; $5f26: $04
	rrca                                             ; $5f27: $0f
	rrca                                             ; $5f28: $0f
	rst  $38                                         ; $5f29: $ff
	inc  bc                                          ; $5f2a: $03
	rst  $38                                         ; $5f2b: $ff
	db   $fc                                         ; $5f2c: $fc
	rst  $38                                         ; $5f2d: $ff
	ld   hl, sp-$04                                  ; $5f2e: $f8 $fc
	rst  $38                                         ; $5f30: $ff
	rlca                                             ; $5f31: $07
	db   $fc                                         ; $5f32: $fc
	rst  $38                                         ; $5f33: $ff
	ld   a, d                                        ; $5f34: $7a
	cp   $12                                         ; $5f35: $fe $12
	cp   $ca                                         ; $5f37: $fe $ca
	cp   $3a                                         ; $5f39: $fe $3a
	cp   $86                                         ; $5f3b: $fe $86
	cp   $4e                                         ; $5f3d: $fe $4e
	cp   $f2                                         ; $5f3f: $fe $f2
	cp   $c2                                         ; $5f41: $fe $c2
	cp   $0f                                         ; $5f43: $fe $0f
	ldh  a, [rTAC]                                   ; $5f45: $f0 $07
	ld   hl, sp+$02                                  ; $5f47: $f8 $02
	rst  $38                                         ; $5f49: $ff
	nop                                              ; $5f4a: $00
	rst  $38                                         ; $5f4b: $ff
	adc  a                                           ; $5f4c: $8f
	rst  $38                                         ; $5f4d: $ff
	ld   e, a                                        ; $5f4e: $5f
	rst  $30                                         ; $5f4f: $f7
	ld   a, $fb                                      ; $5f50: $3e $fb
	rra                                              ; $5f52: $1f
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	nop                                              ; $5f55: $00
	rst  $38                                         ; $5f56: $ff
	nop                                              ; $5f57: $00
	ld   bc, $c0ff                                   ; $5f58: $01 $ff $c0
	rst  $38                                         ; $5f5b: $ff
	ccf                                              ; $5f5c: $3f
	cp   a                                           ; $5f5d: $bf
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rst  JumpTable                                         ; $5f60: $df
	ldh  a, [$3f]                                    ; $5f61: $f0 $3f
	rst  $38                                         ; $5f63: $ff
	rst  $38                                         ; $5f64: $ff
	inc  bc                                          ; $5f65: $03
	rst  $38                                         ; $5f66: $ff
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	rst  $38                                         ; $5f69: $ff
	nop                                              ; $5f6a: $00
	rst  $38                                         ; $5f6b: $ff
	rst  $38                                         ; $5f6c: $ff
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	nop                                              ; $5f71: $00
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	add  d                                           ; $5f74: $82
	ld   a, [hl]                                     ; $5f75: $7e
	ld   [bc], a                                     ; $5f76: $02
	cp   $82                                         ; $5f77: $fe $82
	cp   $02                                         ; $5f79: $fe $02
	cp   $8e                                         ; $5f7b: $fe $8e
	cp   $d2                                         ; $5f7d: $fe $d2
	ld   a, [hl]                                     ; $5f7f: $7e
	ldh  [c], a                                      ; $5f80: $e2
	cp   $c2                                         ; $5f81: $fe $c2
	cp   $0f                                         ; $5f83: $fe $0f
	ldh  a, [rTAC]                                   ; $5f85: $f0 $07

Jump_091_5f87:
	ld   hl, sp+$00                                  ; $5f87: $f8 $00
	rst  $38                                         ; $5f89: $ff
	ret  nz                                          ; $5f8a: $c0

	ccf                                              ; $5f8b: $3f
	ret  nz                                          ; $5f8c: $c0

	ccf                                              ; $5f8d: $3f
	ldh  [$5f], a                                    ; $5f8e: $e0 $5f
	ldh  [$1f], a                                    ; $5f90: $e0 $1f
	ldh  a, [rIF]                                    ; $5f92: $f0 $0f
	rst  $38                                         ; $5f94: $ff
	ret  nz                                          ; $5f95: $c0

	rst  $38                                         ; $5f96: $ff
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	rst  $38                                         ; $5f99: $ff
	nop                                              ; $5f9a: $00
	rst  $38                                         ; $5f9b: $ff
	nop                                              ; $5f9c: $00
	rst  $38                                         ; $5f9d: $ff
	nop                                              ; $5f9e: $00
	rst  $38                                         ; $5f9f: $ff
	nop                                              ; $5fa0: $00
	rst  $38                                         ; $5fa1: $ff
	nop                                              ; $5fa2: $00
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	nop                                              ; $5fa5: $00
	rst  $38                                         ; $5fa6: $ff
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	rst  $38                                         ; $5fa9: $ff
	nop                                              ; $5faa: $00
	rst  $38                                         ; $5fab: $ff
	nop                                              ; $5fac: $00
	rst  $38                                         ; $5fad: $ff
	nop                                              ; $5fae: $00
	rst  $38                                         ; $5faf: $ff
	inc  bc                                          ; $5fb0: $03
	rst  $38                                         ; $5fb1: $ff
	dec  b                                           ; $5fb2: $05
	rst  $38                                         ; $5fb3: $ff
	add  d                                           ; $5fb4: $82
	ld   a, [hl]                                     ; $5fb5: $7e
	ld   [bc], a                                     ; $5fb6: $02
	cp   $02                                         ; $5fb7: $fe $02
	cp   $02                                         ; $5fb9: $fe $02
	cp   $02                                         ; $5fbb: $fe $02
	cp   $12                                         ; $5fbd: $fe $12
	cp   $82                                         ; $5fbf: $fe $82
	cp   $42                                         ; $5fc1: $fe $42
	cp   $78                                         ; $5fc3: $fe $78
	add  a                                           ; $5fc5: $87
	ld   a, h                                        ; $5fc6: $7c
	add  e                                           ; $5fc7: $83
	ld   a, [hl]                                     ; $5fc8: $7e
	add  c                                           ; $5fc9: $81
	ccf                                              ; $5fca: $3f
	ret  nz                                          ; $5fcb: $c0

	ccf                                              ; $5fcc: $3f
	ret  nz                                          ; $5fcd: $c0

	ccf                                              ; $5fce: $3f
	ret  z                                           ; $5fcf: $c8

	ccf                                              ; $5fd0: $3f
	ret  nz                                          ; $5fd1: $c0

	rra                                              ; $5fd2: $1f
	ldh  [rP1], a                                    ; $5fd3: $e0 $00
	rst  $38                                         ; $5fd5: $ff
	nop                                              ; $5fd6: $00
	rst  $38                                         ; $5fd7: $ff
	nop                                              ; $5fd8: $00
	rst  $38                                         ; $5fd9: $ff
	nop                                              ; $5fda: $00
	rst  $38                                         ; $5fdb: $ff
	add  b                                           ; $5fdc: $80
	ld   a, a                                        ; $5fdd: $7f
	ldh  [$1f], a                                    ; $5fde: $e0 $1f
	rst  $38                                         ; $5fe0: $ff
	nop                                              ; $5fe1: $00
	cp   $01                                         ; $5fe2: $fe $01
	dec  b                                           ; $5fe4: $05
	rst  $38                                         ; $5fe5: $ff
	dec  b                                           ; $5fe6: $05
	rst  $38                                         ; $5fe7: $ff
	inc  bc                                          ; $5fe8: $03
	rst  $38                                         ; $5fe9: $ff
	nop                                              ; $5fea: $00
	rst  $38                                         ; $5feb: $ff
	nop                                              ; $5fec: $00
	rst  $38                                         ; $5fed: $ff
	nop                                              ; $5fee: $00
	rst  $38                                         ; $5fef: $ff
	nop                                              ; $5ff0: $00
	rst  $38                                         ; $5ff1: $ff
	nop                                              ; $5ff2: $00
	rst  $38                                         ; $5ff3: $ff
	ld   b, d                                        ; $5ff4: $42
	cp   $42                                         ; $5ff5: $fe $42
	cp   $82                                         ; $5ff7: $fe $82
	cp   $02                                         ; $5ff9: $fe $02
	cp   $02                                         ; $5ffb: $fe $02
	cp   $82                                         ; $5ffd: $fe $82
	cp   $02                                         ; $5fff: $fe $02
	cp   $02                                         ; $6001: $fe $02
	cp   $1f                                         ; $6003: $fe $1f
	ldh  [rIE], a                                    ; $6005: $e0 $ff
	ldh  a, [$ef]                                    ; $6007: $f0 $ef
	inc  a                                           ; $6009: $3c
	db   $e3                                         ; $600a: $e3
	xor  $23                                         ; $600b: $ee $23
	rst  $28                                         ; $600d: $ef
	db   $eb                                         ; $600e: $eb
	and  $5b                                         ; $600f: $e6 $5b
	add  $df                                         ; $6011: $c6 $df
	jp   nz, $01fe                                   ; $6013: $c2 $fe $01

	db   $fc                                         ; $6016: $fc
	inc  bc                                          ; $6017: $03
	rst  $38                                         ; $6018: $ff
	rlca                                             ; $6019: $07
	db   $fc                                         ; $601a: $fc
	ld   [$f0ff], sp                                 ; $601b: $08 $ff $f0
	ld   sp, hl                                      ; $601e: $f9
	ld   h, $f0                                      ; $601f: $26 $f0
	cpl                                              ; $6021: $2f
	ret  nz                                          ; $6022: $c0

	ld   a, a                                        ; $6023: $7f
	nop                                              ; $6024: $00
	rst  $38                                         ; $6025: $ff
	nop                                              ; $6026: $00
	rst  $38                                         ; $6027: $ff
	ld   bc, $82ff                                   ; $6028: $01 $ff $82
	cp   $7e                                         ; $602b: $fe $7e
	ld   a, a                                        ; $602d: $7f
	ld   a, $23                                      ; $602e: $3e $23
	ld   a, [hl]                                     ; $6030: $7e
	inc  hl                                          ; $6031: $23
	rra                                              ; $6032: $1f
	ld   [hl], d                                     ; $6033: $72
	ld   [bc], a                                     ; $6034: $02
	cp   $7e                                         ; $6035: $fe $7e
	cp   $be                                         ; $6037: $fe $be
	and  d                                           ; $6039: $a2
	ld   a, $3e                                      ; $603a: $3e $3e
	ld   [hl+], a                                    ; $603c: $22
	cp   [hl]                                        ; $603d: $be
	cp   [hl]                                        ; $603e: $be
	ld   a, $d2                                      ; $603f: $3e $d2
	ld   e, $de                                      ; $6041: $1e $de
	ld   e, $30                                      ; $6043: $1e $30
	jr   nc, jr_091_604f                             ; $6045: $30 $08

	ld   a, b                                        ; $6047: $78
	inc  b                                           ; $6048: $04
	ld   a, h                                        ; $6049: $7c
	inc  de                                          ; $604a: $13
	cp   a                                           ; $604b: $bf
	db   $fc                                         ; $604c: $fc
	rst  $30                                         ; $604d: $f7
	inc  c                                           ; $604e: $0c

jr_091_604f:
	cp   e                                           ; $604f: $bb
	ld   c, $d9                                      ; $6050: $0e $d9
	rrca                                             ; $6052: $0f
	rst  JumpTable                                         ; $6053: $df
	ld   b, b                                        ; $6054: $40
	ld   b, b                                        ; $6055: $40
	and  b                                           ; $6056: $a0
	and  b                                           ; $6057: $a0
	and  b                                           ; $6058: $a0
	and  b                                           ; $6059: $a0
	and  b                                           ; $605a: $a0
	and  b                                           ; $605b: $a0
	and  e                                           ; $605c: $a3
	db   $e3                                         ; $605d: $e3
	cp   h                                           ; $605e: $bc
	db   $fc                                         ; $605f: $fc
	ldh  [$e3], a                                    ; $6060: $e0 $e3
	nop                                              ; $6062: $00
	rra                                              ; $6063: $1f
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	ld   bc, $3e01                                   ; $6066: $01 $01 $3e
	ccf                                              ; $6069: $3f
	ld   b, h                                        ; $606a: $44
	ld   a, a                                        ; $606b: $7f
	ld   sp, hl                                      ; $606c: $f9
	rst  $38                                         ; $606d: $ff
	ld   b, $07                                      ; $606e: $06 $07
	ld   bc, $0039                                   ; $6070: $01 $39 $00
	cp   a                                           ; $6073: $bf
	add  d                                           ; $6074: $82
	sbc  [hl]                                        ; $6075: $9e
	ld   [bc], a                                     ; $6076: $02
	cp   $7e                                         ; $6077: $fe $7e
	cp   $82                                         ; $6079: $fe $82
	cp   $02                                         ; $607b: $fe $02
	cp   $1e                                         ; $607d: $fe $1e
	cp   $62                                         ; $607f: $fe $62
	cp   [hl]                                        ; $6081: $be
	ldh  a, [c]                                      ; $6082: $f2
	adc  $79                                         ; $6083: $ce $79
	rst  $38                                         ; $6085: $ff
	sub  l                                           ; $6086: $95
	rst  $38                                         ; $6087: $ff
	rla                                              ; $6088: $17
	rst  $38                                         ; $6089: $ff
	sub  h                                           ; $608a: $94
	ld   a, a                                        ; $608b: $7f
	sbc  h                                           ; $608c: $9c
	ld   a, a                                        ; $608d: $7f
	or   e                                           ; $608e: $b3
	ld   l, a                                        ; $608f: $6f
	rst  $30                                         ; $6090: $f7
	inc  l                                           ; $6091: $2c
	rst  $38                                         ; $6092: $ff
	ld   b, l                                        ; $6093: $45
	nop                                              ; $6094: $00
	rst  $38                                         ; $6095: $ff
	nop                                              ; $6096: $00
	rst  $38                                         ; $6097: $ff
	nop                                              ; $6098: $00
	rst  $38                                         ; $6099: $ff
	rrca                                             ; $609a: $0f
	rst  $38                                         ; $609b: $ff
	ld   a, a                                        ; $609c: $7f
	ldh  a, [rIE]                                    ; $609d: $f0 $ff
	adc  a                                           ; $609f: $8f
	cp   $7f                                         ; $60a0: $fe $7f
	ldh  [rIE], a                                    ; $60a2: $e0 $ff
	inc  e                                           ; $60a4: $1c
	rra                                              ; $60a5: $1f
	ld   [hl+], a                                    ; $60a6: $22
	rst  $38                                         ; $60a7: $ff
	cp   $ff                                         ; $60a8: $fe $ff
	rst  $38                                         ; $60aa: $ff
	ld   hl, $ffff                                   ; $60ab: $21 $ff $ff
	pop  af                                          ; $60ae: $f1
	rst  $28                                         ; $60af: $ef
	nop                                              ; $60b0: $00
	rst  $38                                         ; $60b1: $ff
	inc  b                                           ; $60b2: $04
	rst  $38                                         ; $60b3: $ff
	ld   [hl], d                                     ; $60b4: $72
	adc  $32                                         ; $60b5: $ce $32
	xor  $1a                                         ; $60b7: $ee $1a
	ld   a, [$fe86]                                  ; $60b9: $fa $86 $fe
	jp   nz, $e2fe                                   ; $60bc: $c2 $fe $e2

	cp   $72                                         ; $60bf: $fe $72
	cp   $0a                                         ; $60c1: $fe $0a
	cp   $fe                                         ; $60c3: $fe $fe
	ld   c, e                                        ; $60c5: $4b
	db   $fc                                         ; $60c6: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c7: $cf
	ei                                               ; $60c8: $fb
	sbc  a                                           ; $60c9: $9f
	db   $fc                                         ; $60ca: $fc
	rla                                              ; $60cb: $17
	rst  $38                                         ; $60cc: $ff
	daa                                              ; $60cd: $27
	rst  $38                                         ; $60ce: $ff
	rst  ToBoot                                         ; $60cf: $c7
	rst  $38                                         ; $60d0: $ff
	inc  c                                           ; $60d1: $0c
	rst  $38                                         ; $60d2: $ff
	rrca                                             ; $60d3: $0f
	ld   [bc], a                                     ; $60d4: $02
	rst  $38                                         ; $60d5: $ff
	nop                                              ; $60d6: $00
	rst  $38                                         ; $60d7: $ff
	add  e                                           ; $60d8: $83
	rst  $38                                         ; $60d9: $ff
	ld   a, a                                        ; $60da: $7f
	db   $fc                                         ; $60db: $fc
	rst  $38                                         ; $60dc: $ff
	db   $e3                                         ; $60dd: $e3
	rst  $38                                         ; $60de: $ff
	cp   a                                           ; $60df: $bf
	db   $fc                                         ; $60e0: $fc
	ccf                                              ; $60e1: $3f
	ret  nz                                          ; $60e2: $c0

	rst  $38                                         ; $60e3: $ff
	nop                                              ; $60e4: $00
	rst  $38                                         ; $60e5: $ff
	rra                                              ; $60e6: $1f
	rst  $38                                         ; $60e7: $ff
	rst  $38                                         ; $60e8: $ff
	ldh  [rIE], a                                    ; $60e9: $e0 $ff
	rra                                              ; $60eb: $1f
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	ldh  a, [$ef]                                    ; $60ee: $f0 $ef
	nop                                              ; $60f0: $00
	rst  $38                                         ; $60f1: $ff
	nop                                              ; $60f2: $00
	rst  $38                                         ; $60f3: $ff
	ld   b, $fe                                      ; $60f4: $06 $fe
	jp   nz, $e2fe                                   ; $60f6: $c2 $fe $e2

	ld   a, $fa                                      ; $60f9: $3e $fa
	sbc  $fe                                         ; $60fb: $de $fe
	cp   $02                                         ; $60fd: $fe $02
	cp   $02                                         ; $60ff: $fe $02
	cp   $02                                         ; $6101: $fe $02

Jump_091_6103:
	cp   $ff                                         ; $6103: $fe $ff
	rla                                              ; $6105: $17
	db   $fc                                         ; $6106: $fc
	rra                                              ; $6107: $1f
	db   $fc                                         ; $6108: $fc
	inc  hl                                          ; $6109: $23
	db   $fc                                         ; $610a: $fc
	jp   $03fc                                       ; $610b: $c3 $fc $03


	db   $fc                                         ; $610e: $fc
	add  e                                           ; $610f: $83
	cp   $81                                         ; $6110: $fe $81
	cp   $81                                         ; $6112: $fe $81
	nop                                              ; $6114: $00
	rst  $38                                         ; $6115: $ff
	nop                                              ; $6116: $00
	rst  $38                                         ; $6117: $ff
	nop                                              ; $6118: $00
	rst  $38                                         ; $6119: $ff
	nop                                              ; $611a: $00
	rst  $38                                         ; $611b: $ff
	nop                                              ; $611c: $00
	rst  $38                                         ; $611d: $ff
	nop                                              ; $611e: $00
	rst  $38                                         ; $611f: $ff
	nop                                              ; $6120: $00
	rst  $38                                         ; $6121: $ff
	nop                                              ; $6122: $00
	rst  $38                                         ; $6123: $ff
	nop                                              ; $6124: $00
	rst  $38                                         ; $6125: $ff
	nop                                              ; $6126: $00
	rst  $38                                         ; $6127: $ff
	nop                                              ; $6128: $00
	rst  $38                                         ; $6129: $ff
	nop                                              ; $612a: $00
	rst  $38                                         ; $612b: $ff
	nop                                              ; $612c: $00
	rst  $38                                         ; $612d: $ff
	nop                                              ; $612e: $00
	rst  $38                                         ; $612f: $ff
	nop                                              ; $6130: $00
	rst  $38                                         ; $6131: $ff
	ld   bc, $02ff                                   ; $6132: $01 $ff $02
	cp   $02                                         ; $6135: $fe $02
	cp   $02                                         ; $6137: $fe $02
	cp   $02                                         ; $6139: $fe $02
	cp   $02                                         ; $613b: $fe $02
	cp   $02                                         ; $613d: $fe $02
	cp   $02                                         ; $613f: $fe $02
	cp   $c2                                         ; $6141: $fe $c2
	cp   $ff                                         ; $6143: $fe $ff
	add  b                                           ; $6145: $80
	rst  $38                                         ; $6146: $ff
	add  b                                           ; $6147: $80
	rst  $38                                         ; $6148: $ff
	adc  b                                           ; $6149: $88
	rst  $38                                         ; $614a: $ff
	add  b                                           ; $614b: $80
	rst  $38                                         ; $614c: $ff
	ret  nz                                          ; $614d: $c0

	rst  $38                                         ; $614e: $ff
	ld   b, b                                        ; $614f: $40
	rst  $38                                         ; $6150: $ff
	ld   b, b                                        ; $6151: $40
	rst  $38                                         ; $6152: $ff
	ld   b, c                                        ; $6153: $41
	nop                                              ; $6154: $00
	rst  $38                                         ; $6155: $ff
	nop                                              ; $6156: $00
	rst  $38                                         ; $6157: $ff
	add  b                                           ; $6158: $80
	ld   a, a                                        ; $6159: $7f
	ret  nz                                          ; $615a: $c0

	ccf                                              ; $615b: $3f
	ret  nz                                          ; $615c: $c0

	ccf                                              ; $615d: $3f
	ldh  [$1f], a                                    ; $615e: $e0 $1f
	ldh  a, [rIF]                                    ; $6160: $f0 $0f
	ld   hl, sp+$07                                  ; $6162: $f8 $07
	ld   [bc], a                                     ; $6164: $02
	rst  $38                                         ; $6165: $ff
	ld   [bc], a                                     ; $6166: $02
	rst  $38                                         ; $6167: $ff
	ld   [bc], a                                     ; $6168: $02
	rst  $38                                         ; $6169: $ff
	ld   bc, $00ff                                   ; $616a: $01 $ff $00
	rst  $38                                         ; $616d: $ff
	nop                                              ; $616e: $00
	rst  $38                                         ; $616f: $ff
	nop                                              ; $6170: $00
	rst  $38                                         ; $6171: $ff
	nop                                              ; $6172: $00
	rst  $38                                         ; $6173: $ff
	and  d                                           ; $6174: $a2
	cp   $a2                                         ; $6175: $fe $a2
	cp   $a2                                         ; $6177: $fe $a2
	cp   $c6                                         ; $6179: $fe $c6
	ld   a, [$fa0e]                                  ; $617b: $fa $0e $fa
	ld   b, $fa                                      ; $617e: $06 $fa
	ld   c, $f2                                      ; $6180: $0e $f2
	ld   c, $f2                                      ; $6182: $0e $f2
	rst  $38                                         ; $6184: $ff
	ld   b, b                                        ; $6185: $40
	rst  $38                                         ; $6186: $ff
	ret  nz                                          ; $6187: $c0

	rst  $38                                         ; $6188: $ff
	jr   nz, @+$01                                   ; $6189: $20 $ff

	jr   nz, @+$01                                   ; $618b: $20 $ff

	ldh  [$7f], a                                    ; $618d: $e0 $7f
	ld   a, a                                        ; $618f: $7f
	ld   a, a                                        ; $6190: $7f
	ld   b, b                                        ; $6191: $40
	ld   a, a                                        ; $6192: $7f
	ld   e, a                                        ; $6193: $5f
	db   $fc                                         ; $6194: $fc
	inc  bc                                          ; $6195: $03
	cp   $01                                         ; $6196: $fe $01
	rst  $38                                         ; $6198: $ff
	nop                                              ; $6199: $00
	rst  $38                                         ; $619a: $ff
	nop                                              ; $619b: $00
	rst  $38                                         ; $619c: $ff
	nop                                              ; $619d: $00
	rst  $38                                         ; $619e: $ff
	ret  nz                                          ; $619f: $c0

	cp   a                                           ; $61a0: $bf
	and  c                                           ; $61a1: $a1
	cp   [hl]                                        ; $61a2: $be
	sbc  a                                           ; $61a3: $9f
	nop                                              ; $61a4: $00
	rst  $38                                         ; $61a5: $ff
	nop                                              ; $61a6: $00
	rst  $38                                         ; $61a7: $ff
	nop                                              ; $61a8: $00
	rst  $38                                         ; $61a9: $ff
	ldh  [$1f], a                                    ; $61aa: $e0 $1f
	rst  $38                                         ; $61ac: $ff
	nop                                              ; $61ad: $00
	rst  $38                                         ; $61ae: $ff
	ldh  a, [rIF]                                    ; $61af: $f0 $0f
	cp   a                                           ; $61b1: $bf
	rlca                                             ; $61b2: $07
	call c, $f20e                                    ; $61b3: $dc $0e $f2
	ld   e, $e2                                      ; $61b6: $1e $e2
	ld   e, $e2                                      ; $61b8: $1e $e2
	ld   e, $fe                                      ; $61ba: $1e $fe
	cp   $62                                         ; $61bc: $fe $62
	sbc  [hl]                                        ; $61be: $9e
	sbc  [hl]                                        ; $61bf: $9e
	jp   nc, $de9e                                   ; $61c0: $d2 $9e $de

	sbc  [hl]                                        ; $61c3: $9e
	ld   a, h                                        ; $61c4: $7c
	rst  ToBoot                                         ; $61c5: $c7
	ld   a, a                                        ; $61c6: $7f
	rst  ToBoot                                         ; $61c7: $c7
	ld   a, h                                        ; $61c8: $7c
	rst  $28                                         ; $61c9: $ef
	ld   a, e                                        ; $61ca: $7b
	rst  JumpTable                                         ; $61cb: $df
	db   $fc                                         ; $61cc: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61cd: $cf
	jr   nc, jr_091_624f                             ; $61ce: $30 $7f

	jr   nz, jr_091_6251                             ; $61d0: $20 $7f

	jr   nz, jr_091_6253                             ; $61d2: $20 $7f

	ld   [hl], b                                     ; $61d4: $70
	rst  JumpTable                                         ; $61d5: $df
	cp   a                                           ; $61d6: $bf
	rst  $38                                         ; $61d7: $ff
	xor  b                                           ; $61d8: $a8
	rst  $38                                         ; $61d9: $ff
	xor  b                                           ; $61da: $a8
	rst  $38                                         ; $61db: $ff
	xor  b                                           ; $61dc: $a8
	rst  $38                                         ; $61dd: $ff
	ld   l, b                                        ; $61de: $68
	rst  $38                                         ; $61df: $ff
	jr   @+$01                                       ; $61e0: $18 $ff

	nop                                              ; $61e2: $00
	rst  $38                                         ; $61e3: $ff
	inc  bc                                          ; $61e4: $03
	rst  $38                                         ; $61e5: $ff
	db   $fc                                         ; $61e6: $fc
	rst  $38                                         ; $61e7: $ff
	nop                                              ; $61e8: $00
	rst  $38                                         ; $61e9: $ff
	nop                                              ; $61ea: $00
	ldh  [rP1], a                                    ; $61eb: $e0 $00
	db   $fc                                         ; $61ed: $fc
	nop                                              ; $61ee: $00
	cp   $00                                         ; $61ef: $fe $00
	rst  $38                                         ; $61f1: $ff
	nop                                              ; $61f2: $00
	rst  $38                                         ; $61f3: $ff
	ldh  a, [c]                                      ; $61f4: $f2
	ld   c, [hl]                                     ; $61f5: $4e
	ld   a, [$3ac6]                                  ; $61f6: $fa $c6 $3a
	and  $1a                                         ; $61f9: $e6 $1a
	or   $0a                                         ; $61fb: $f6 $0a
	cp   $06                                         ; $61fd: $fe $06
	ld   a, [hl]                                     ; $61ff: $7e
	ld   b, $7e                                      ; $6200: $06 $7e
	ld   [bc], a                                     ; $6202: $02
	ld   a, [hl]                                     ; $6203: $7e
	ldh  a, [rIE]                                    ; $6204: $f0 $ff
	ld   hl, sp-$71                                  ; $6206: $f8 $8f
	ld   hl, sp+$4f                                  ; $6208: $f8 $4f
	cp   $e9                                         ; $620a: $fe $e9
	rra                                              ; $620c: $1f
	sbc  c                                           ; $620d: $99
	rlca                                             ; $620e: $07
	ld   l, $13                                      ; $620f: $2e $13
	ld   a, a                                        ; $6211: $7f
	inc  bc                                          ; $6212: $03
	cp   $00                                         ; $6213: $fe $00
	rst  $38                                         ; $6215: $ff
	nop                                              ; $6216: $00
	rst  $38                                         ; $6217: $ff
	ld   h, a                                        ; $6218: $67
	rst  $38                                         ; $6219: $ff
	ret  nz                                          ; $621a: $c0

	cp   a                                           ; $621b: $bf
	rst  $38                                         ; $621c: $ff
	rra                                              ; $621d: $1f
	rst  $38                                         ; $621e: $ff
	cpl                                              ; $621f: $2f
	rst  $38                                         ; $6220: $ff
	ldh  a, [$bf]                                    ; $6221: $f0 $bf
	ld   e, a                                        ; $6223: $5f
	nop                                              ; $6224: $00
	rst  $38                                         ; $6225: $ff
	nop                                              ; $6226: $00
	cp   $b6                                         ; $6227: $fe $b6
	rst  $38                                         ; $6229: $ff
	nop                                              ; $622a: $00
	rst  $38                                         ; $622b: $ff
	rst  $38                                         ; $622c: $ff
	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	rst  $38                                         ; $622f: $ff
	rst  $38                                         ; $6230: $ff
	nop                                              ; $6231: $00
	rst  $38                                         ; $6232: $ff
	rst  $38                                         ; $6233: $ff
	ld   [bc], a                                     ; $6234: $02
	ld   a, [hl]                                     ; $6235: $7e
	ld   [bc], a                                     ; $6236: $02
	ld   a, $02                                      ; $6237: $3e $02
	cp   $3a                                         ; $6239: $fe $3a
	cp   $c6                                         ; $623b: $fe $c6
	cp   $c6                                         ; $623d: $fe $c6

jr_091_623f:
	add  $c6                                         ; $623f: $c6 $c6
	ld   a, [hl]                                     ; $6241: $7e
	ld   a, [$01fe]                                  ; $6242: $fa $fe $01
	rst  $38                                         ; $6245: $ff
	ld   bc, $85ff                                   ; $6246: $01 $ff $85
	rst  $38                                         ; $6249: $ff
	pop  af                                          ; $624a: $f1
	rst  $38                                         ; $624b: $ff
	adc  l                                           ; $624c: $8d
	rra                                              ; $624d: $1f
	add  e                                           ; $624e: $83

jr_091_624f:
	ld   a, $f1                                      ; $624f: $3e $f1

jr_091_6251:
	rst  $38                                         ; $6251: $ff
	ld   l, b                                        ; $6252: $68

jr_091_6253:
	rst  $38                                         ; $6253: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6254: $cf
	jr   nc, jr_091_623f                             ; $6255: $30 $e8

	rra                                              ; $6257: $1f
	db   $e3                                         ; $6258: $e3
	rra                                              ; $6259: $1f
	db   $e4                                         ; $625a: $e4
	rra                                              ; $625b: $1f
	ei                                               ; $625c: $fb
	rra                                              ; $625d: $1f
	ei                                               ; $625e: $fb
	cpl                                              ; $625f: $2f
	db   $fc                                         ; $6260: $fc
	rst  $30                                         ; $6261: $f7
	rst  $38                                         ; $6262: $ff
	sbc  a                                           ; $6263: $9f
	rst  $38                                         ; $6264: $ff
	nop                                              ; $6265: $00
	ld   [bc], a                                     ; $6266: $02
	rst  $38                                         ; $6267: $ff
	nop                                              ; $6268: $00
	rst  $38                                         ; $6269: $ff
	add  b                                           ; $626a: $80
	rst  $38                                         ; $626b: $ff
	ld   a, a                                        ; $626c: $7f
	rst  $38                                         ; $626d: $ff
	ld   a, a                                        ; $626e: $7f
	rst  $38                                         ; $626f: $ff
	rst  $38                                         ; $6270: $ff
	add  b                                           ; $6271: $80
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	ldh  a, [c]                                      ; $6274: $f2
	ld   c, $06                                      ; $6275: $0e $06
	cp   $02                                         ; $6277: $fe $02
	cp   $02                                         ; $6279: $fe $02
	cp   $fe                                         ; $627b: $fe $fe
	cp   $fe                                         ; $627d: $fe $fe
	ld   a, [$06fe]                                  ; $627f: $fa $fe $06
	cp   $fe                                         ; $6282: $fe $fe
	sub  h                                           ; $6284: $94
	sbc  a                                           ; $6285: $9f
	sub  d                                           ; $6286: $92
	sbc  a                                           ; $6287: $9f
	ld   l, d                                        ; $6288: $6a
	rst  $38                                         ; $6289: $ff
	ld   a, [de]                                     ; $628a: $1a
	rst  $38                                         ; $628b: $ff
	and  [hl]                                        ; $628c: $a6
	rst  $20                                         ; $628d: $e7
	and  [hl]                                        ; $628e: $a6
	rst  $20                                         ; $628f: $e7
	ld   e, [hl]                                     ; $6290: $5e
	db   $fd                                         ; $6291: $fd
	ld   c, $f9                                      ; $6292: $0e $f9
	rst  $38                                         ; $6294: $ff
	add  b                                           ; $6295: $80
	ld   a, a                                        ; $6296: $7f
	ret  nz                                          ; $6297: $c0

	ld   a, h                                        ; $6298: $7c
	jp   $c37c                                       ; $6299: $c3 $7c $c3


	ld   a, h                                        ; $629c: $7c
	jp   $c37c                                       ; $629d: $c3 $7c $c3


	db   $fc                                         ; $62a0: $fc
	add  e                                           ; $62a1: $83
	db   $fc                                         ; $62a2: $fc
	add  e                                           ; $62a3: $83
	rst  $38                                         ; $62a4: $ff
	nop                                              ; $62a5: $00
	rst  $38                                         ; $62a6: $ff
	nop                                              ; $62a7: $00
	nop                                              ; $62a8: $00
	rst  $38                                         ; $62a9: $ff
	nop                                              ; $62aa: $00
	rst  $38                                         ; $62ab: $ff
	nop                                              ; $62ac: $00
	rst  $38                                         ; $62ad: $ff
	nop                                              ; $62ae: $00
	rst  $38                                         ; $62af: $ff
	nop                                              ; $62b0: $00
	rst  $38                                         ; $62b1: $ff
	nop                                              ; $62b2: $00
	rst  $38                                         ; $62b3: $ff
	ld   a, [$f206]                                  ; $62b4: $fa $06 $f2
	ld   c, $02                                      ; $62b7: $0e $02
	cp   $02                                         ; $62b9: $fe $02
	cp   $02                                         ; $62bb: $fe $02
	cp   $06                                         ; $62bd: $fe $06
	cp   $32                                         ; $62bf: $fe $32
	cp   $4a                                         ; $62c1: $fe $4a
	cp   $ff                                         ; $62c3: $fe $ff
	pop  af                                          ; $62c5: $f1
	rst  $38                                         ; $62c6: $ff
	ld   [bc], a                                     ; $62c7: $02
	rst  $38                                         ; $62c8: $ff
	inc  c                                           ; $62c9: $0c
	rst  $38                                         ; $62ca: $ff
	ldh  a, [rIE]                                    ; $62cb: $f0 $ff
	add  b                                           ; $62cd: $80
	rst  $38                                         ; $62ce: $ff
	add  h                                           ; $62cf: $84
	rst  $38                                         ; $62d0: $ff
	add  h                                           ; $62d1: $84
	rst  $38                                         ; $62d2: $ff
	add  d                                           ; $62d3: $82
	cp   $01                                         ; $62d4: $fe $01
	cp   $01                                         ; $62d6: $fe $01
	cp   $01                                         ; $62d8: $fe $01
	rst  $38                                         ; $62da: $ff
	nop                                              ; $62db: $00
	rst  $38                                         ; $62dc: $ff
	ld   b, b                                        ; $62dd: $40
	rst  $38                                         ; $62de: $ff
	nop                                              ; $62df: $00
	rst  $38                                         ; $62e0: $ff
	nop                                              ; $62e1: $00
	rst  $38                                         ; $62e2: $ff
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	rst  $38                                         ; $62e5: $ff
	nop                                              ; $62e6: $00
	rst  $38                                         ; $62e7: $ff
	nop                                              ; $62e8: $00
	rst  $38                                         ; $62e9: $ff
	nop                                              ; $62ea: $00
	rst  $38                                         ; $62eb: $ff
	nop                                              ; $62ec: $00
	rst  $38                                         ; $62ed: $ff
	nop                                              ; $62ee: $00
	rst  $38                                         ; $62ef: $ff
	add  b                                           ; $62f0: $80
	ld   a, a                                        ; $62f1: $7f
	add  b                                           ; $62f2: $80
	ld   a, a                                        ; $62f3: $7f
	ld   l, d                                        ; $62f4: $6a
	cp   $4a                                         ; $62f5: $fe $4a
	cp   $32                                         ; $62f7: $fe $32
	cp   $02                                         ; $62f9: $fe $02
	cp   $0a                                         ; $62fb: $fe $0a
	cp   $02                                         ; $62fd: $fe $02
	cp   $02                                         ; $62ff: $fe $02
	cp   $02                                         ; $6301: $fe $02
	cp   $ff                                         ; $6303: $fe $ff
	add  d                                           ; $6305: $82
	rst  $38                                         ; $6306: $ff
	add  b                                           ; $6307: $80
	rst  $38                                         ; $6308: $ff
	adc  [hl]                                        ; $6309: $8e
	pop  af                                          ; $630a: $f1
	sbc  a                                           ; $630b: $9f
	cp   $17                                         ; $630c: $fe $17
	ld   sp, hl                                      ; $630e: $f9
	rst  $28                                         ; $630f: $ef
	cp   $2f                                         ; $6310: $fe $2f
	pop  af                                          ; $6312: $f1
	ld   e, a                                        ; $6313: $5f
	rst  $38                                         ; $6314: $ff
	nop                                              ; $6315: $00
	rst  $38                                         ; $6316: $ff
	nop                                              ; $6317: $00
	rst  $38                                         ; $6318: $ff
	nop                                              ; $6319: $00
	rst  $38                                         ; $631a: $ff
	ldh  [$1f], a                                    ; $631b: $e0 $1f
	sbc  h                                           ; $631d: $9c
	rst  ToBoot                                         ; $631e: $c7
	rst  $20                                         ; $631f: $e7
	cpl                                              ; $6320: $2f
	jp   hl                                          ; $6321: $e9


	rst  $28                                         ; $6322: $ef
	jp   hl                                          ; $6323: $e9


	ret  nz                                          ; $6324: $c0

	ccf                                              ; $6325: $3f
	ret  nz                                          ; $6326: $c0

	ccf                                              ; $6327: $3f
	call c, $e23f                                    ; $6328: $dc $3f $e2
	dec  sp                                          ; $632b: $3b
	pop  bc                                          ; $632c: $c1
	ld   a, e                                        ; $632d: $7b
	add  b                                           ; $632e: $80
	ld   sp, hl                                      ; $632f: $f9
	nop                                              ; $6330: $00
	db   $fd                                         ; $6331: $fd
	nop                                              ; $6332: $00
	db   $fd                                         ; $6333: $fd
	ld   [bc], a                                     ; $6334: $02
	cp   $06                                         ; $6335: $fe $06
	cp   $1e                                         ; $6337: $fe $1e
	cp   $26                                         ; $6339: $fe $26
	or   $e6                                         ; $633b: $f6 $e6
	or   $e6                                         ; $633d: $f6 $e6
	or   [hl]                                        ; $633f: $b6
	ldh  a, [c]                                      ; $6340: $f2
	sbc  d                                           ; $6341: $9a
	ld   [hl], d                                     ; $6342: $72
	jp   c, $fb80                                    ; $6343: $da $80 $fb

	sbc  a                                           ; $6346: $9f
	rst  $38                                         ; $6347: $ff
	pop  hl                                          ; $6348: $e1
	ld   a, l                                        ; $6349: $7d
	pop  bc                                          ; $634a: $c1
	ld   a, l                                        ; $634b: $7d
	jp   $c47f                                       ; $634c: $c3 $7f $c4


	ld   a, a                                        ; $634f: $7f
	ret  z                                           ; $6350: $c8

	ld   a, a                                        ; $6351: $7f
	ret  nc                                          ; $6352: $d0

	rst  $38                                         ; $6353: $ff
	ld   hl, sp-$01                                  ; $6354: $f8 $ff
	rra                                              ; $6356: $1f
	rst  $38                                         ; $6357: $ff
	ld   h, b                                        ; $6358: $60
	db   $fc                                         ; $6359: $fc
	ld   b, b                                        ; $635a: $40
	rst  $38                                         ; $635b: $ff
	add  b                                           ; $635c: $80
	rst  $38                                         ; $635d: $ff
	nop                                              ; $635e: $00
	rst  $38                                         ; $635f: $ff
	nop                                              ; $6360: $00
	rst  $38                                         ; $6361: $ff
	nop                                              ; $6362: $00
	rst  $38                                         ; $6363: $ff
	nop                                              ; $6364: $00
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	rst  $38                                         ; $6367: $ff
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $636b: $cf
	nop                                              ; $636c: $00
	rst  JumpTable                                         ; $636d: $df
	nop                                              ; $636e: $00
	sbc  a                                           ; $636f: $9f
	nop                                              ; $6370: $00
	ccf                                              ; $6371: $3f
	nop                                              ; $6372: $00
	ld   a, a                                        ; $6373: $7f
	ldh  a, [c]                                      ; $6374: $f2
	cp   $e2                                         ; $6375: $fe $e2
	cp   $22                                         ; $6377: $fe $22
	ld   a, $16                                      ; $6379: $3e $16
	cp   $12                                         ; $637b: $fe $12
	ld   a, [$fa12]                                  ; $637d: $fa $12 $fa
	ld   a, [bc]                                     ; $6380: $0a
	cp   $06                                         ; $6381: $fe $06
	cp   $d0                                         ; $6383: $fe $d0
	ld   a, a                                        ; $6385: $7f
	db   $e3                                         ; $6386: $e3
	ld   a, a                                        ; $6387: $7f
	add  b                                           ; $6388: $80
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	rst  $38                                         ; $638b: $ff
	rst  $38                                         ; $638c: $ff
	xor  a                                           ; $638d: $af
	rst  $38                                         ; $638e: $ff
	ld   b, b                                        ; $638f: $40
	rst  $38                                         ; $6390: $ff
	ld   a, a                                        ; $6391: $7f
	rst  $38                                         ; $6392: $ff
	ld   b, b                                        ; $6393: $40
	nop                                              ; $6394: $00
	rst  $38                                         ; $6395: $ff
	ld   a, $fe                                      ; $6396: $3e $fe
	nop                                              ; $6398: $00
	ld   sp, hl                                      ; $6399: $f9
	rst  $38                                         ; $639a: $ff
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	ld   bc, $ffff                                   ; $639f: $01 $ff $ff
	rst  $38                                         ; $63a2: $ff
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	ld   a, a                                        ; $63a5: $7f
	inc  c                                           ; $63a6: $0c
	ld   a, a                                        ; $63a7: $7f
	ldh  [c], a                                      ; $63a8: $e2
	rst  $38                                         ; $63a9: $ff
	add  hl, de                                      ; $63aa: $19
	rst  $38                                         ; $63ab: $ff
	inc  e                                           ; $63ac: $1c
	rra                                              ; $63ad: $1f
	ld   a, [de]                                     ; $63ae: $1a
	rst  $38                                         ; $63af: $ff
	ld   sp, hl                                      ; $63b0: $f9
	rst  $30                                         ; $63b1: $f7
	ldh  a, [rIF]                                    ; $63b2: $f0 $0f
	ld   [bc], a                                     ; $63b4: $02
	cp   $02                                         ; $63b5: $fe $02
	cp   $02                                         ; $63b7: $fe $02
	cp   $0e                                         ; $63b9: $fe $0e
	cp   $12                                         ; $63bb: $fe $12
	cp   $12                                         ; $63bd: $fe $12
	cp   $e2                                         ; $63bf: $fe $e2
	cp   $2a                                         ; $63c1: $fe $2a
	or   $82                                         ; $63c3: $f6 $82
	rst  $38                                         ; $63c5: $ff
	add  b                                           ; $63c6: $80
	rst  $38                                         ; $63c7: $ff
	inc  e                                           ; $63c8: $1c
	rst  $38                                         ; $63c9: $ff
	db   $e3                                         ; $63ca: $e3
	rst  $38                                         ; $63cb: $ff
	ei                                               ; $63cc: $fb
	ld   a, a                                        ; $63cd: $7f
	rst  $38                                         ; $63ce: $ff
	cp   $ff                                         ; $63cf: $fe $ff
	cp   a                                           ; $63d1: $bf
	rst  $38                                         ; $63d2: $ff
	add  b                                           ; $63d3: $80
	nop                                              ; $63d4: $00
	rst  $38                                         ; $63d5: $ff
	nop                                              ; $63d6: $00
	rst  $38                                         ; $63d7: $ff
	nop                                              ; $63d8: $00
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	nop                                              ; $63df: $00
	rst  $38                                         ; $63e0: $ff
	rst  $38                                         ; $63e1: $ff
	rst  $38                                         ; $63e2: $ff
	nop                                              ; $63e3: $00
	add  b                                           ; $63e4: $80
	rst  $38                                         ; $63e5: $ff
	nop                                              ; $63e6: $00
	rst  $38                                         ; $63e7: $ff
	ld   bc, $faff                                   ; $63e8: $01 $ff $fa
	rst  $38                                         ; $63eb: $ff
	db   $fc                                         ; $63ec: $fc
	rst  $38                                         ; $63ed: $ff
	ld   hl, sp+$0f                                  ; $63ee: $f8 $0f
	ldh  a, [rIE]                                    ; $63f0: $f0 $ff
	ldh  a, [$1f]                                    ; $63f2: $f0 $1f
	ld   a, $e2                                      ; $63f4: $3e $e2
	ld   a, [hl]                                     ; $63f6: $7e
	cp   $82                                         ; $63f7: $fe $82
	ldh  [c], a                                      ; $63f9: $e2
	ld   [bc], a                                     ; $63fa: $02
	and  $02                                         ; $63fb: $e6 $02
	and  $02                                         ; $63fd: $e6 $02
	and  $7e                                         ; $63ff: $e6 $7e
	cp   $e6                                         ; $6401: $fe $e6
	cp   $ff                                         ; $6403: $fe $ff
	ld   b, b                                        ; $6405: $40
	rst  $38                                         ; $6406: $ff
	ld   b, b                                        ; $6407: $40
	rst  $38                                         ; $6408: $ff
	ld   b, b                                        ; $6409: $40
	db   $fc                                         ; $640a: $fc
	ld   b, e                                        ; $640b: $43
	db   $fc                                         ; $640c: $fc
	ld   b, e                                        ; $640d: $43
	cp   $c9                                         ; $640e: $fe $c9
	cp   $41                                         ; $6410: $fe $41
	cp   $41                                         ; $6412: $fe $41
	rst  $38                                         ; $6414: $ff
	nop                                              ; $6415: $00
	rst  $38                                         ; $6416: $ff
	nop                                              ; $6417: $00
	db   $fc                                         ; $6418: $fc
	inc  bc                                          ; $6419: $03
	nop                                              ; $641a: $00
	rst  $38                                         ; $641b: $ff
	nop                                              ; $641c: $00
	rst  $38                                         ; $641d: $ff
	nop                                              ; $641e: $00
	rst  $38                                         ; $641f: $ff
	nop                                              ; $6420: $00
	rst  $38                                         ; $6421: $ff
	nop                                              ; $6422: $00
	rst  $38                                         ; $6423: $ff
	pop  hl                                          ; $6424: $e1
	ccf                                              ; $6425: $3f
	and  a                                           ; $6426: $a7
	ld   a, c                                        ; $6427: $79
	cpl                                              ; $6428: $2f
	pop  af                                          ; $6429: $f1
	ccf                                              ; $642a: $3f
	pop  hl                                          ; $642b: $e1
	ld   a, $e3                                      ; $642c: $3e $e3
	ld   a, $e3                                      ; $642e: $3e $e3
	ccf                                              ; $6430: $3f
	pop  hl                                          ; $6431: $e1
	rra                                              ; $6432: $1f
	ldh  a, [$be]                                    ; $6433: $f0 $be
	cp   $a6                                         ; $6435: $fe $a6
	cp   $26                                         ; $6437: $fe $26
	cp   $fe                                         ; $6439: $fe $fe
	cp   [hl]                                        ; $643b: $be
	ld   h, [hl]                                     ; $643c: $66
	cp   $3e                                         ; $643d: $fe $3e
	cp   $16                                         ; $643f: $fe $16
	cp   $d2                                         ; $6441: $fe $d2
	cp   $ff                                         ; $6443: $fe $ff
	ret  nz                                          ; $6445: $c0

	rst  $38                                         ; $6446: $ff
	ld   b, b                                        ; $6447: $40
	cp   a                                           ; $6448: $bf
	and  b                                           ; $6449: $a0
	ccf                                              ; $644a: $3f
	inc  h                                           ; $644b: $24
	ccf                                              ; $644c: $3f
	jr   nz, jr_091_646e                             ; $644d: $20 $1f

	db   $10                                         ; $644f: $10
	rra                                              ; $6450: $1f
	db   $10                                         ; $6451: $10
	rrca                                             ; $6452: $0f
	ld   [$ff00], sp                                 ; $6453: $08 $00 $ff
	nop                                              ; $6456: $00
	rst  $38                                         ; $6457: $ff
	nop                                              ; $6458: $00
	rst  $38                                         ; $6459: $ff
	add  b                                           ; $645a: $80
	ld   a, a                                        ; $645b: $7f
	add  b                                           ; $645c: $80
	ld   a, a                                        ; $645d: $7f
	ret  nz                                          ; $645e: $c0

	ccf                                              ; $645f: $3f
	ldh  [$1f], a                                    ; $6460: $e0 $1f
	ldh  a, [rIF]                                    ; $6462: $f0 $0f
	rra                                              ; $6464: $1f
	ldh  a, [rIF]                                    ; $6465: $f0 $0f
	ld   hl, sp+$07                                  ; $6467: $f8 $07
	db   $fc                                         ; $6469: $fc
	rlca                                             ; $646a: $07
	ld   a, [$fd07]                                  ; $646b: $fa $07 $fd

jr_091_646e:
	rlca                                             ; $646e: $07
	ld   hl, sp+$1f                                  ; $646f: $f8 $1f
	ldh  [$7f], a                                    ; $6471: $e0 $7f
	add  b                                           ; $6473: $80
	cp   $7e                                         ; $6474: $fe $7e
	cp   $02                                         ; $6476: $fe $02
	cp   $02                                         ; $6478: $fe $02
	cp   $02                                         ; $647a: $fe $02
	cp   $82                                         ; $647c: $fe $82
	cp   $fe                                         ; $647e: $fe $fe
	ld   a, [$fa8e]                                  ; $6480: $fa $8e $fa
	adc  [hl]                                        ; $6483: $8e
	rst  $38                                         ; $6484: $ff
	cp   $fd                                         ; $6485: $fe $fd
	inc  bc                                          ; $6487: $03
	db   $fc                                         ; $6488: $fc
	ld   a, l                                        ; $6489: $7d
	call nz, $fc7d                                   ; $648a: $c4 $7d $fc
	ld   a, l                                        ; $648d: $7d
	add  h                                           ; $648e: $84
	db   $fd                                         ; $648f: $fd
	db   $fc                                         ; $6490: $fc

jr_091_6491:
	db   $fd                                         ; $6491: $fd
	add  h                                           ; $6492: $84
	db   $fd                                         ; $6493: $fd
	rst  $38                                         ; $6494: $ff
	inc  c                                           ; $6495: $0c
	di                                               ; $6496: $f3
	sub  e                                           ; $6497: $93
	ld   h, b                                        ; $6498: $60
	ei                                               ; $6499: $fb
	ld   b, b                                        ; $649a: $40
	ei                                               ; $649b: $fb
	ld   b, b                                        ; $649c: $40
	ei                                               ; $649d: $fb
	add  b                                           ; $649e: $80
	ei                                               ; $649f: $fb
	add  b                                           ; $64a0: $80
	ei                                               ; $64a1: $fb
	add  b                                           ; $64a2: $80
	ei                                               ; $64a3: $fb
	rst  $38                                         ; $64a4: $ff
	nop                                              ; $64a5: $00
	rst  $38                                         ; $64a6: $ff
	ld   bc, $82ff                                   ; $64a7: $01 $ff $82
	ld   a, a                                        ; $64aa: $7f
	cp   $3f                                         ; $64ab: $fe $3f
	pop  hl                                          ; $64ad: $e1
	ccf                                              ; $64ae: $3f
	pop  hl                                          ; $64af: $e1
	rra                                              ; $64b0: $1f
	pop  af                                          ; $64b1: $f1
	rra                                              ; $64b2: $1f
	di                                               ; $64b3: $f3
	cp   $fe                                         ; $64b4: $fe $fe
	and  d                                           ; $64b6: $a2
	ld   e, $be                                      ; $64b7: $1e $be
	ld   a, $a2                                      ; $64b9: $3e $a2
	ld   a, $be                                      ; $64bb: $3e $be
	ld   a, $d2                                      ; $64bd: $3e $d2
	ld   e, $de                                      ; $64bf: $1e $de
	ld   e, $d2                                      ; $64c1: $1e $d2
	ld   e, $02                                      ; $64c3: $1e $02
	inc  bc                                          ; $64c5: $03
	ld   [bc], a                                     ; $64c6: $02
	inc  bc                                          ; $64c7: $03
	ld   [bc], a                                     ; $64c8: $02
	inc  bc                                          ; $64c9: $03
	ld   [bc], a                                     ; $64ca: $02
	inc  bc                                          ; $64cb: $03
	ld   [bc], a                                     ; $64cc: $02
	inc  bc                                          ; $64cd: $03
	inc  bc                                          ; $64ce: $03
	inc  bc                                          ; $64cf: $03
	inc  bc                                          ; $64d0: $03
	inc  bc                                          ; $64d1: $03
	jp   $30c3                                       ; $64d2: $c3 $c3 $30


	sbc  l                                           ; $64d5: $9d
	jr   z, jr_091_6491                              ; $64d6: $28 $b9

	ld   d, b                                        ; $64d8: $50
	ei                                               ; $64d9: $fb
	and  b                                           ; $64da: $a0

jr_091_64db:
	rst  $38                                         ; $64db: $ff
	and  b                                           ; $64dc: $a0
	rst  $38                                         ; $64dd: $ff
	jr   nz, @+$01                                   ; $64de: $20 $ff

	rra                                              ; $64e0: $1f
	rst  $38                                         ; $64e1: $ff
	jr   nz, jr_091_64db                             ; $64e2: $20 $f7

	ld   hl, $11ff                                   ; $64e4: $21 $ff $11
	rst  $38                                         ; $64e7: $ff
	add  hl, hl                                      ; $64e8: $29
	rst  $38                                         ; $64e9: $ff
	dec  d                                           ; $64ea: $15
	rst  $38                                         ; $64eb: $ff
	dec  [hl]                                        ; $64ec: $35
	rst  JumpTable                                         ; $64ed: $df
	ld   a, e                                        ; $64ee: $7b
	sub  a                                           ; $64ef: $97
	ei                                               ; $64f0: $fb
	rst  $20                                         ; $64f1: $e7
	dec  sp                                          ; $64f2: $3b
	rst  $10                                         ; $64f3: $d7
	ld   [bc], a                                     ; $64f4: $02
	ld   [bc], a                                     ; $64f5: $02
	ld   [bc], a                                     ; $64f6: $02
	ld   [bc], a                                     ; $64f7: $02
	ld   [bc], a                                     ; $64f8: $02
	ld   [bc], a                                     ; $64f9: $02
	ld   [bc], a                                     ; $64fa: $02
	ld   [bc], a                                     ; $64fb: $02
	ld   [bc], a                                     ; $64fc: $02
	ld   [bc], a                                     ; $64fd: $02
	ld   [bc], a                                     ; $64fe: $02
	ld   [bc], a                                     ; $64ff: $02
	ld   [bc], a                                     ; $6500: $02
	ld   [bc], a                                     ; $6501: $02
	ld   c, $0e                                      ; $6502: $0e $0e
	ccf                                              ; $6504: $3f
	rst  $38                                         ; $6505: $ff
	nop                                              ; $6506: $00
	rst  $38                                         ; $6507: $ff
	nop                                              ; $6508: $00
	rst  $38                                         ; $6509: $ff
	nop                                              ; $650a: $00
	rst  $38                                         ; $650b: $ff
	nop                                              ; $650c: $00
	rst  $38                                         ; $650d: $ff
	nop                                              ; $650e: $00
	rst  $38                                         ; $650f: $ff
	ld   [bc], a                                     ; $6510: $02
	db   $fd                                         ; $6511: $fd
	ld   c, $f1                                      ; $6512: $0e $f1
	rst  ToBoot                                         ; $6514: $c7
	rst  $30                                         ; $6515: $f7
	ld   a, a                                        ; $6516: $7f
	rst  $38                                         ; $6517: $ff
	cp   a                                           ; $6518: $bf
	db   $db                                         ; $6519: $db
	cp   a                                           ; $651a: $bf
	ldh  a, [$bb]                                    ; $651b: $f0 $bb
	rst  $38                                         ; $651d: $ff
	ei                                               ; $651e: $fb
	rst  $38                                         ; $651f: $ff
	ldh  a, [$bf]                                    ; $6520: $f0 $bf
	ei                                               ; $6522: $fb
	rst  JumpTable                                         ; $6523: $df
	adc  a                                           ; $6524: $8f
	rst  $38                                         ; $6525: $ff
	db   $fc                                         ; $6526: $fc
	rst  $38                                         ; $6527: $ff
	db   $fc                                         ; $6528: $fc
	ld   h, a                                        ; $6529: $67
	db   $fc                                         ; $652a: $fc
	scf                                              ; $652b: $37
	db   $f4                                         ; $652c: $f4
	ld   a, a                                        ; $652d: $7f
	ld   [hl], h                                     ; $652e: $74
	rst  $38                                         ; $652f: $ff
	ld   a, $f5                                      ; $6530: $3e $f5
	ld   a, a                                        ; $6532: $7f
	db   $e4                                         ; $6533: $e4
	ldh  a, [c]                                      ; $6534: $f2
	cp   $02                                         ; $6535: $fe $02
	cp   $02                                         ; $6537: $fe $02
	cp   $02                                         ; $6539: $fe $02
	cp   $02                                         ; $653b: $fe $02
	cp   $02                                         ; $653d: $fe $02
	cp   $02                                         ; $653f: $fe $02
	cp   $c2                                         ; $6541: $fe $c2
	ld   a, $ff                                      ; $6543: $3e $ff
	nop                                              ; $6545: $00
	rst  $38                                         ; $6546: $ff
	nop                                              ; $6547: $00
	rst  $38                                         ; $6548: $ff
	ldh  [$1f], a                                    ; $6549: $e0 $1f
	rra                                              ; $654b: $1f
	ld   l, e                                        ; $654c: $6b
	ld   a, d                                        ; $654d: $7a
	adc  a                                           ; $654e: $8f
	rst  $38                                         ; $654f: $ff
	adc  [hl]                                        ; $6550: $8e
	rst  $38                                         ; $6551: $ff
	sbc  [hl]                                        ; $6552: $9e
	db   $eb                                         ; $6553: $eb
	ei                                               ; $6554: $fb
	rst  JumpTable                                         ; $6555: $df
	rst  $38                                         ; $6556: $ff
	rst  ToBoot                                         ; $6557: $c7
	rst  $38                                         ; $6558: $ff
	or   b                                           ; $6559: $b0
	rst  $38                                         ; $655a: $ff
	rra                                              ; $655b: $1f
	rst  $38                                         ; $655c: $ff
	ld   l, b                                        ; $655d: $68
	sbc  a                                           ; $655e: $9f
	rst  $38                                         ; $655f: $ff
	inc  hl                                          ; $6560: $23
	db   $fd                                         ; $6561: $fd
	rra                                              ; $6562: $1f
	rst  $38                                         ; $6563: $ff
	ld   a, a                                        ; $6564: $7f
	db   $ec                                         ; $6565: $ec
	rst  $38                                         ; $6566: $ff
	adc  h                                           ; $6567: $8c
	rst  $38                                         ; $6568: $ff
	inc  d                                           ; $6569: $14
	rst  $38                                         ; $656a: $ff
	ld   h, e                                        ; $656b: $63
	rst  $38                                         ; $656c: $ff
	ld   e, c                                        ; $656d: $59
	rst  $20                                         ; $656e: $e7
	rst  $38                                         ; $656f: $ff
	pop  af                                          ; $6570: $f1
	rra                                              ; $6571: $1f
	pop  hl                                          ; $6572: $e1
	cp   $fe                                         ; $6573: $fe $fe
	ld   [bc], a                                     ; $6575: $02
	cp   $02                                         ; $6576: $fe $02
	cp   $1e                                         ; $6578: $fe $1e
	ldh  [c], a                                      ; $657a: $e2
	ldh  [c], a                                      ; $657b: $e2
	ld   e, d                                        ; $657c: $5a
	ld   a, d                                        ; $657d: $7a
	ld   b, [hl]                                     ; $657e: $46
	ld   a, [hl]                                     ; $657f: $7e
	add  $fe                                         ; $6580: $c6 $fe
	add  $5e                                         ; $6582: $c6 $5e
	rst  $28                                         ; $6584: $ef
	cp   e                                           ; $6585: $bb
	adc  a                                           ; $6586: $8f
	ei                                               ; $6587: $fb
	xor  [hl]                                        ; $6588: $ae
	db   $db                                         ; $6589: $db
	db   $ed                                         ; $658a: $ed
	sbc  e                                           ; $658b: $9b
	add  sp, -$41                                    ; $658c: $e8 $bf
	add  sp, $1f                                     ; $658e: $e8 $1f
	xor  $99                                         ; $6590: $ee $99
	rst  $28                                         ; $6592: $ef
	ld   e, h                                        ; $6593: $5c
	nop                                              ; $6594: $00
	rst  $38                                         ; $6595: $ff
	add  b                                           ; $6596: $80
	rst  $38                                         ; $6597: $ff
	ld   b, h                                        ; $6598: $44
	rst  $38                                         ; $6599: $ff
	sbc  e                                           ; $659a: $9b
	ld   a, a                                        ; $659b: $7f
	res  7, a                                        ; $659c: $cb $bf
	inc  e                                           ; $659e: $1c
	rst  $38                                         ; $659f: $ff
	jr   nz, @+$01                                   ; $65a0: $20 $ff

	ld   b, b                                        ; $65a2: $40
	rst  $38                                         ; $65a3: $ff
	nop                                              ; $65a4: $00
	rst  $38                                         ; $65a5: $ff
	nop                                              ; $65a6: $00
	rst  $38                                         ; $65a7: $ff
	add  b                                           ; $65a8: $80
	rst  $38                                         ; $65a9: $ff
	ld   h, b                                        ; $65aa: $60
	rst  $38                                         ; $65ab: $ff
	ld   b, b                                        ; $65ac: $40
	rst  $38                                         ; $65ad: $ff
	ldh  [rIE], a                                    ; $65ae: $e0 $ff
	db   $10                                         ; $65b0: $10
	rst  $38                                         ; $65b1: $ff
	ld   [$deff], sp                                 ; $65b2: $08 $ff $de
	halt                                             ; $65b5: $76
	add  $7e                                         ; $65b6: $c6 $7e
	sub  $6e                                         ; $65b8: $d6 $6e
	cp   $46                                         ; $65ba: $fe $46
	ld   a, [hl]                                     ; $65bc: $7e
	sub  $7e                                         ; $65bd: $d6 $7e
	jp   nz, $c67e                                   ; $65bf: $c2 $7e $c6

	cp   $ce                                         ; $65c2: $fe $ce
	rst  $38                                         ; $65c4: $ff
	db   $fc                                         ; $65c5: $fc
	rst  $38                                         ; $65c6: $ff
	ld   a, [$8aff]                                  ; $65c7: $fa $ff $8a
	rst  $38                                         ; $65ca: $ff
	ld   a, d                                        ; $65cb: $7a
	rst  $38                                         ; $65cc: $ff
	adc  d                                           ; $65cd: $8a
	rst  $38                                         ; $65ce: $ff
	ld   a, [hl]                                     ; $65cf: $7e
	rst  $38                                         ; $65d0: $ff
	add  [hl]                                        ; $65d1: $86
	rst  $38                                         ; $65d2: $ff
	ld   a, a                                        ; $65d3: $7f
	ld   b, b                                        ; $65d4: $40
	rst  $38                                         ; $65d5: $ff
	add  b                                           ; $65d6: $80
	rst  $38                                         ; $65d7: $ff
	ret  nz                                          ; $65d8: $c0

	cp   a                                           ; $65d9: $bf
	ld   hl, sp-$79                                  ; $65da: $f8 $87
	db   $fc                                         ; $65dc: $fc
	add  e                                           ; $65dd: $83
	cp   $41                                         ; $65de: $fe $41
	cp   $41                                         ; $65e0: $fe $41
	cp   $21                                         ; $65e2: $fe $21
	ld   [$05df], sp                                 ; $65e4: $08 $df $05
	sbc  a                                           ; $65e7: $9f
	dec  b                                           ; $65e8: $05
	sbc  a                                           ; $65e9: $9f
	dec  b                                           ; $65ea: $05
	ccf                                              ; $65eb: $3f
	dec  b                                           ; $65ec: $05
	rst  $38                                         ; $65ed: $ff
	add  hl, bc                                      ; $65ee: $09
	rst  $38                                         ; $65ef: $ff
	add  hl, bc                                      ; $65f0: $09
	rst  $38                                         ; $65f1: $ff
	inc  de                                          ; $65f2: $13
	rst  $38                                         ; $65f3: $ff
	cp   $fe                                         ; $65f4: $fe $fe
	cp   $7a                                         ; $65f6: $fe $7a
	cp   $62                                         ; $65f8: $fe $62
	ldh  [c], a                                      ; $65fa: $e2
	ld   a, [hl]                                     ; $65fb: $7e
	ldh  a, [c]                                      ; $65fc: $f2
	ld   e, [hl]                                     ; $65fd: $5e
	ldh  a, [c]                                      ; $65fe: $f2
	sbc  [hl]                                        ; $65ff: $9e
	ld   [$caae], a                                  ; $6600: $ea $ae $ca
	ld   c, [hl]                                     ; $6603: $4e

Call_091_6604:
	rst  $38                                         ; $6604: $ff
	add  l                                           ; $6605: $85
	rst  $38                                         ; $6606: $ff
	ld   a, l                                        ; $6607: $7d
	rst  $38                                         ; $6608: $ff
	add  l                                           ; $6609: $85
	rst  $38                                         ; $660a: $ff
	ld   a, h                                        ; $660b: $7c
	rst  $38                                         ; $660c: $ff
	add  h                                           ; $660d: $84
	rst  $38                                         ; $660e: $ff
	ld   a, l                                        ; $660f: $7d
	rst  $38                                         ; $6610: $ff
	adc  c                                           ; $6611: $89
	cp   $7b                                         ; $6612: $fe $7b
	cp   $19                                         ; $6614: $fe $19
	rst  $38                                         ; $6616: $ff
	add  a                                           ; $6617: $87
	cp   $41                                         ; $6618: $fe $41
	cp   $a1                                         ; $661a: $fe $a1
	rst  $38                                         ; $661c: $ff
	sbc  b                                           ; $661d: $98
	rst  $38                                         ; $661e: $ff
	sub  h                                           ; $661f: $94
	ld   a, a                                        ; $6620: $7f
	di                                               ; $6621: $f3
	ccf                                              ; $6622: $3f
	ldh  [$63], a                                    ; $6623: $e0 $63
	cp   $87                                         ; $6625: $fe $87
	cp   $0f                                         ; $6627: $fe $0f
	ld   a, [$14ff]                                  ; $6629: $fa $ff $14
	rst  $38                                         ; $662c: $ff
	ld   h, h                                        ; $662d: $64
	rst  $38                                         ; $662e: $ff
	and  [hl]                                        ; $662f: $a6
	ei                                               ; $6630: $fb
	ld   a, $f1                                      ; $6631: $3e $f1
	rra                                              ; $6633: $1f
	ld   [$ee2e], a                                  ; $6634: $ea $2e $ee
	ld   l, $fa                                      ; $6637: $2e $fa
	ld   e, $f6                                      ; $6639: $1e $f6
	ld   d, $f2                                      ; $663b: $16 $f2
	ld   [de], a                                     ; $663d: $12
	ldh  [c], a                                      ; $663e: $e2
	ld   [hl+], a                                    ; $663f: $22
	ldh  [c], a                                      ; $6640: $e2
	ld   [hl+], a                                    ; $6641: $22
	jp   nz, $0042                                   ; $6642: $c2 $42 $00

	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	ld   a, h                                        ; $6654: $7c
	ld   b, e                                        ; $6655: $43
	ld   a, h                                        ; $6656: $7c
	ld   b, e                                        ; $6657: $43
	ld   a, h                                        ; $6658: $7c
	ld   b, e                                        ; $6659: $43
	ld   a, [hl]                                     ; $665a: $7e
	ld   b, c                                        ; $665b: $41
	ld   a, $21                                      ; $665c: $3e $21
	ccf                                              ; $665e: $3f
	cpl                                              ; $665f: $2f
	jr   c, @+$41                                    ; $6660: $38 $3f

	inc  hl                                          ; $6662: $23
	inc  a                                           ; $6663: $3c
	nop                                              ; $6664: $00
	rst  JumpTable                                         ; $6665: $df
	nop                                              ; $6666: $00
	rst  JumpTable                                         ; $6667: $df
	nop                                              ; $6668: $00
	rst  JumpTable                                         ; $6669: $df
	nop                                              ; $666a: $00
	rst  $28                                         ; $666b: $ef
	ld   bc, $c6ef                                   ; $666c: $01 $ef $c6
	rst  $28                                         ; $666f: $ef
	jr   c, @+$01                                    ; $6670: $38 $ff

	ldh  [$3f], a                                    ; $6672: $e0 $3f
	add  d                                           ; $6674: $82
	add  d                                           ; $6675: $82
	add  d                                           ; $6676: $82
	add  d                                           ; $6677: $82
	add  d                                           ; $6678: $82
	add  d                                           ; $6679: $82
	ld   [hl], d                                     ; $667a: $72
	ldh  a, [c]                                      ; $667b: $f2
	adc  $de                                         ; $667c: $ce $de
	ld   b, $de                                      ; $667e: $06 $de
	ld   b, $ee                                      ; $6680: $06 $ee
	ld   [bc], a                                     ; $6682: $02
	xor  $00                                         ; $6683: $ee $00
	nop                                              ; $6685: $00
	inc  bc                                          ; $6686: $03
	inc  bc                                          ; $6687: $03
	rlca                                             ; $6688: $07
	inc  b                                           ; $6689: $04
	rrca                                             ; $668a: $0f
	ld   [$101f], sp                                 ; $668b: $08 $1f $10
	ccf                                              ; $668e: $3f
	add  hl, sp                                      ; $668f: $39
	rst  ToBoot                                         ; $6690: $c7
	rst  $38                                         ; $6691: $ff
	inc  bc                                          ; $6692: $03
	cp   a                                           ; $6693: $bf
	rst  $38                                         ; $6694: $ff
	db   $fd                                         ; $6695: $fd
	ldh  [c], a                                      ; $6696: $e2
	ld   a, a                                        ; $6697: $7f
	rst  $38                                         ; $6698: $ff
	rra                                              ; $6699: $1f
	db   $fd                                         ; $669a: $fd
	ld   [hl], e                                     ; $669b: $73
	db   $fc                                         ; $669c: $fc
	cp   e                                           ; $669d: $bb
	cp   $a7                                         ; $669e: $fe $a7
	cp   $1f                                         ; $66a0: $fe $1f
	jp   nc, $c07f                                   ; $66a2: $d2 $7f $c0

	rst  $38                                         ; $66a5: $ff
	add  b                                           ; $66a6: $80
	rst  $38                                         ; $66a7: $ff
	add  b                                           ; $66a8: $80
	rst  $38                                         ; $66a9: $ff
	ret  nz                                          ; $66aa: $c0

	ccf                                              ; $66ab: $3f
	ret  nz                                          ; $66ac: $c0

	cp   a                                           ; $66ad: $bf
	ret  nz                                          ; $66ae: $c0

	cp   a                                           ; $66af: $bf
	ldh  [$9f], a                                    ; $66b0: $e0 $9f
	ld   h, b                                        ; $66b2: $60
	rst  JumpTable                                         ; $66b3: $df
	ld   [bc], a                                     ; $66b4: $02
	xor  $02                                         ; $66b5: $ee $02
	or   $02                                         ; $66b7: $f6 $02
	or   $02                                         ; $66b9: $f6 $02
	or   $02                                         ; $66bb: $f6 $02
	ld   a, [$fa02]                                  ; $66bd: $fa $02 $fa
	ld   [bc], a                                     ; $66c0: $02
	cp   $1e                                         ; $66c1: $fe $1e
	cp   $03                                         ; $66c3: $fe $03
	cp   [hl]                                        ; $66c5: $be
	inc  bc                                          ; $66c6: $03
	rst  JumpTable                                         ; $66c7: $df
	ld   [bc], a                                     ; $66c8: $02
	rst  JumpTable                                         ; $66c9: $df
	ld   bc, $01df                                   ; $66ca: $01 $df $01
	rst  $28                                         ; $66cd: $ef
	ld   bc, $01ee                                   ; $66ce: $01 $ee $01
	xor  $01                                         ; $66d1: $ee $01
	or   $4e                                         ; $66d3: $f6 $4e
	db   $fd                                         ; $66d5: $fd
	scf                                              ; $66d6: $37
	db   $fc                                         ; $66d7: $fc
	rst  JumpTable                                         ; $66d8: $df
	ld   hl, sp-$01                                  ; $66d9: $f8 $ff
	ldh  a, [rIE]                                    ; $66db: $f0 $ff
	ld   bc, $86ff                                   ; $66dd: $01 $ff $86
	rst  $38                                         ; $66e0: $ff
	ld   a, a                                        ; $66e1: $7f
	ldh  a, [$3f]                                    ; $66e2: $f0 $3f
	ld   [hl], b                                     ; $66e4: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e5: $cf
	ld   [hl], e                                     ; $66e6: $73
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e7: $cf
	rst  $38                                         ; $66e8: $ff
	inc  l                                           ; $66e9: $2c
	rst  $38                                         ; $66ea: $ff
	jr   z, @+$01                                    ; $66eb: $28 $ff

	inc  sp                                          ; $66ed: $33
	rst  $38                                         ; $66ee: $ff
	db   $fc                                         ; $66ef: $fc
	rrca                                             ; $66f0: $0f
	rst  $38                                         ; $66f1: $ff
	or   b                                           ; $66f2: $b0
	rst  $38                                         ; $66f3: $ff
	ld   h, [hl]                                     ; $66f4: $66
	cp   $f2                                         ; $66f5: $fe $f2
	sbc  [hl]                                        ; $66f7: $9e
	ldh  a, [c]                                      ; $66f8: $f2
	cp   $8e                                         ; $66f9: $fe $8e
	cp   $b2                                         ; $66fb: $fe $b2
	ld   a, [hl]                                     ; $66fd: $7e
	xor  d                                           ; $66fe: $aa
	ld   a, [hl]                                     ; $66ff: $7e
	and  $ee                                         ; $6700: $e6 $ee
	ld   b, [hl]                                     ; $6702: $46
	or   $07                                         ; $6703: $f6 $07
	rst  $30                                         ; $6705: $f7
	inc  e                                           ; $6706: $1c
	db   $fc                                         ; $6707: $fc
	ld   a, [hl]                                     ; $6708: $7e
	ld   [$efdf], a                                  ; $6709: $ea $df $ef
	sbc  d                                           ; $670c: $9a
	rst  $30                                         ; $670d: $f7
	sbc  e                                           ; $670e: $9b
	rst  $10                                         ; $670f: $d7
	cp   d                                           ; $6710: $ba
	sub  a                                           ; $6711: $97
	cp   d                                           ; $6712: $ba
	rst  $30                                         ; $6713: $f7
	pop  bc                                          ; $6714: $c1
	rst  $38                                         ; $6715: $ff
	xor  [hl]                                        ; $6716: $ae
	rst  $38                                         ; $6717: $ff
	ldh  a, [rIE]                                    ; $6718: $f0 $ff
	inc  bc                                          ; $671a: $03
	rst  $38                                         ; $671b: $ff
	dec  a                                           ; $671c: $3d
	rst  $38                                         ; $671d: $ff
	ld   e, l                                        ; $671e: $5d
	rst  $30                                         ; $671f: $f7
	ld   e, l                                        ; $6720: $5d
	rst  $38                                         ; $6721: $ff
	ld   d, [hl]                                     ; $6722: $56
	rst  $38                                         ; $6723: $ff
	ret  nz                                          ; $6724: $c0

	rst  $38                                         ; $6725: $ff
	nop                                              ; $6726: $00
	rst  $38                                         ; $6727: $ff
	nop                                              ; $6728: $00
	rst  $38                                         ; $6729: $ff
	nop                                              ; $672a: $00
	rst  $38                                         ; $672b: $ff
	nop                                              ; $672c: $00
	rst  $38                                         ; $672d: $ff
	nop                                              ; $672e: $00
	rst  $38                                         ; $672f: $ff
	ret  nz                                          ; $6730: $c0

	rst  $38                                         ; $6731: $ff
	ld   hl, $56fe                                   ; $6732: $21 $fe $56
	cp   $4e                                         ; $6735: $fe $4e
	or   $5e                                         ; $6737: $f6 $5e
	and  $5e                                         ; $6739: $e6 $5e
	and  $7e                                         ; $673b: $e6 $7e
	sub  $7e                                         ; $673d: $d6 $7e
	jp   nz, Jump_091_46fe                           ; $673f: $c2 $fe $46

	cp   $7e                                         ; $6742: $fe $7e
	ld   hl, sp-$69                                  ; $6744: $f8 $97
	cp   $91                                         ; $6746: $fe $91
	rst  $38                                         ; $6748: $ff
	dec  c                                           ; $6749: $0d
	rst  $38                                         ; $674a: $ff
	rst  $38                                         ; $674b: $ff
	rst  $38                                         ; $674c: $ff
	rla                                              ; $674d: $17
	rst  $38                                         ; $674e: $ff
	ld   de, $f9e7                                   ; $674f: $11 $e7 $f9
	inc  hl                                          ; $6752: $23
	inc  a                                           ; $6753: $3c
	ldh  [$fc], a                                    ; $6754: $e0 $fc
	add  b                                           ; $6756: $80
	ld   hl, sp+$00                                  ; $6757: $f8 $00
	ld   sp, hl                                      ; $6759: $f9
	nop                                              ; $675a: $00
	rst  $38                                         ; $675b: $ff
	nop                                              ; $675c: $00
	rst  $38                                         ; $675d: $ff
	jr   @-$17                                       ; $675e: $18 $e7

	inc  a                                           ; $6760: $3c
	jp   $c0bf                                       ; $6761: $c3 $bf $c0


	ld   de, $117e                                   ; $6764: $11 $7e $11
	rst  $38                                         ; $6767: $ff
	add  hl, bc                                      ; $6768: $09
	rst  $38                                         ; $6769: $ff
	add  hl, bc                                      ; $676a: $09
	rst  $38                                         ; $676b: $ff
	add  hl, bc                                      ; $676c: $09
	rst  $38                                         ; $676d: $ff
	dec  bc                                          ; $676e: $0b
	cp   $13                                         ; $676f: $fe $13
	cp   $13                                         ; $6771: $fe $13
	cp   $fe                                         ; $6773: $fe $fe
	cp   [hl]                                        ; $6775: $be
	cp   $26                                         ; $6776: $fe $26
	cp   $26                                         ; $6778: $fe $26
	cp   $a6                                         ; $677a: $fe $a6
	cp   $aa                                         ; $677c: $fe $aa
	cp   $ca                                         ; $677e: $fe $ca
	cp   $56                                         ; $6780: $fe $56
	cp   $ba                                         ; $6782: $fe $ba
	ld   b, c                                        ; $6784: $41
	ld   a, [hl]                                     ; $6785: $7e
	add  c                                           ; $6786: $81
	cp   $e3                                         ; $6787: $fe $e3
	db   $fc                                         ; $6789: $fc
	ld   a, a                                        ; $678a: $7f
	ld   e, a                                        ; $678b: $5f
	ccf                                              ; $678c: $3f
	jr   nz, jr_091_67ae                             ; $678d: $20 $1f

	db   $10                                         ; $678f: $10
	rra                                              ; $6790: $1f
	db   $10                                         ; $6791: $10
	rra                                              ; $6792: $1f
	db   $10                                         ; $6793: $10
	rst  $38                                         ; $6794: $ff
	add  b                                           ; $6795: $80
	rst  $38                                         ; $6796: $ff
	ldh  [rIE], a                                    ; $6797: $e0 $ff
	sbc  a                                           ; $6799: $9f
	rst  $38                                         ; $679a: $ff
	add  b                                           ; $679b: $80
	rst  $38                                         ; $679c: $ff
	ld   b, b                                        ; $679d: $40
	cp   a                                           ; $679e: $bf
	and  d                                           ; $679f: $a2
	sbc  a                                           ; $67a0: $9f
	sbc  c                                           ; $67a1: $99
	sbc  a                                           ; $67a2: $9f
	sub  a                                           ; $67a3: $97
	di                                               ; $67a4: $f3
	ld   l, $ff                                      ; $67a5: $2e $ff
	call nz, $04ff                                   ; $67a7: $c4 $ff $04
	rst  $38                                         ; $67aa: $ff
	ld   [$18ff], sp                                 ; $67ab: $08 $ff $18

jr_091_67ae:
	rst  $38                                         ; $67ae: $ff
	jr   z, @+$01                                    ; $67af: $28 $ff

	ld   c, l                                        ; $67b1: $4d
	cp   $47                                         ; $67b2: $fe $47
	cp   $a6                                         ; $67b4: $fe $a6
	cp   $a2                                         ; $67b6: $fe $a2
	cp   $c2                                         ; $67b8: $fe $c2
	cp   $82                                         ; $67ba: $fe $82
	cp   $c2                                         ; $67bc: $fe $c2
	cp   [hl]                                        ; $67be: $be
	ldh  [c], a                                      ; $67bf: $e2
	ld   a, $e2                                      ; $67c0: $3e $e2
	ld   a, $e2                                      ; $67c2: $3e $e2
	inc  b                                           ; $67c4: $04
	rlca                                             ; $67c5: $07
	inc  b                                           ; $67c6: $04
	rlca                                             ; $67c7: $07
	inc  b                                           ; $67c8: $04
	rlca                                             ; $67c9: $07
	inc  b                                           ; $67ca: $04
	rlca                                             ; $67cb: $07
	inc  b                                           ; $67cc: $04
	rlca                                             ; $67cd: $07
	inc  b                                           ; $67ce: $04
	rlca                                             ; $67cf: $07
	inc  b                                           ; $67d0: $04
	rlca                                             ; $67d1: $07
	dec  b                                           ; $67d2: $05
	rlca                                             ; $67d3: $07
	ld   a, b                                        ; $67d4: $78
	adc  a                                           ; $67d5: $8f
	ld   [hl], b                                     ; $67d6: $70
	sbc  a                                           ; $67d7: $9f
	ld   h, b                                        ; $67d8: $60
	cp   a                                           ; $67d9: $bf
	ld   b, b                                        ; $67da: $40
	rst  $38                                         ; $67db: $ff
	ld   e, b                                        ; $67dc: $58
	rst  $30                                         ; $67dd: $f7
	cp   [hl]                                        ; $67de: $be
	pop  hl                                          ; $67df: $e1
	cp   a                                           ; $67e0: $bf
	ldh  [$bf], a                                    ; $67e1: $e0 $bf
	ldh  [$34], a                                    ; $67e3: $e0 $34
	db   $fc                                         ; $67e5: $fc
	inc  c                                           ; $67e6: $0c
	db   $fc                                         ; $67e7: $fc
	inc  h                                           ; $67e8: $24
	db   $fc                                         ; $67e9: $fc
	ld   [de], a                                     ; $67ea: $12
	cp   $0a                                         ; $67eb: $fe $0a
	cp   $09                                         ; $67ed: $fe $09
	rst  $38                                         ; $67ef: $ff
	pop  hl                                          ; $67f0: $e1
	rra                                              ; $67f1: $1f
	ld   sp, hl                                      ; $67f2: $f9
	rst  $38                                         ; $67f3: $ff
	ld   [bc], a                                     ; $67f4: $02
	ld   [bc], a                                     ; $67f5: $02
	ld   [bc], a                                     ; $67f6: $02
	ld   [bc], a                                     ; $67f7: $02
	ld   [bc], a                                     ; $67f8: $02
	ld   [bc], a                                     ; $67f9: $02
	ld   [bc], a                                     ; $67fa: $02
	ld   [bc], a                                     ; $67fb: $02
	ld   [bc], a                                     ; $67fc: $02
	ld   [bc], a                                     ; $67fd: $02
	ld   b, $06                                      ; $67fe: $06 $06
	ld   a, [de]                                     ; $6800: $1a
	ld   e, $e2                                      ; $6801: $1e $e2
	cp   $05                                         ; $6803: $fe $05
	rlca                                             ; $6805: $07
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	nop                                              ; $6808: $00
	cp   a                                           ; $6809: $bf
	nop                                              ; $680a: $00
	cp   a                                           ; $680b: $bf
	nop                                              ; $680c: $00
	cp   a                                           ; $680d: $bf
	nop                                              ; $680e: $00
	cp   a                                           ; $680f: $bf
	nop                                              ; $6810: $00
	rst  JumpTable                                         ; $6811: $df
	nop                                              ; $6812: $00
	rst  JumpTable                                         ; $6813: $df
	rst  $38                                         ; $6814: $ff
	ld   d, e                                        ; $6815: $53
	rst  $38                                         ; $6816: $ff
	db   $ec                                         ; $6817: $ec
	rra                                              ; $6818: $1f
	ld   hl, sp+$1f                                  ; $6819: $f8 $1f
	db   $fd                                         ; $681b: $fd
	rra                                              ; $681c: $1f
	di                                               ; $681d: $f3
	rra                                              ; $681e: $1f
	ldh  a, [c]                                      ; $681f: $f2
	rra                                              ; $6820: $1f
	di                                               ; $6821: $f3
	rra                                              ; $6822: $1f
	db   $eb                                         ; $6823: $eb
	rst  $20                                         ; $6824: $e7
	rra                                              ; $6825: $1f
	jp   $ff3f                                       ; $6826: $c3 $3f $ff


	db   $fd                                         ; $6829: $fd
	rst  $38                                         ; $682a: $ff
	ld   l, l                                        ; $682b: $6d
	ei                                               ; $682c: $fb
	ld   h, [hl]                                     ; $682d: $66
	or   $1f                                         ; $682e: $f6 $1f
	or   d                                           ; $6830: $b2
	rst  $38                                         ; $6831: $ff
	add  [hl]                                        ; $6832: $86
	rst  $38                                         ; $6833: $ff
	ld   [bc], a                                     ; $6834: $02
	cp   $02                                         ; $6835: $fe $02
	cp   $02                                         ; $6837: $fe $02
	cp   $82                                         ; $6839: $fe $82
	ld   a, [hl]                                     ; $683b: $7e
	and  d                                           ; $683c: $a2
	sbc  $b2                                         ; $683d: $de $b2
	adc  $fa                                         ; $683f: $ce $fa
	add  [hl]                                        ; $6841: $86
	cp   $82                                         ; $6842: $fe $82
	nop                                              ; $6844: $00
	rst  JumpTable                                         ; $6845: $df
	add  b                                           ; $6846: $80
	rst  JumpTable                                         ; $6847: $df
	add  b                                           ; $6848: $80
	rst  JumpTable                                         ; $6849: $df
	ld   h, b                                        ; $684a: $60
	ld   a, a                                        ; $684b: $7f
	rra                                              ; $684c: $1f
	rra                                              ; $684d: $1f
	ld   hl, sp-$02                                  ; $684e: $f8 $fe
	inc  a                                           ; $6850: $3c
	ldh  [c], a                                      ; $6851: $e2
	ld   b, b                                        ; $6852: $40
	ld   sp, hl                                      ; $6853: $f9
	ld   a, $cb                                      ; $6854: $3e $cb
	ccf                                              ; $6856: $3f
	ret                                              ; $6857: $c9


	ld   a, a                                        ; $6858: $7f
	adc  h                                           ; $6859: $8c
	rst  $38                                         ; $685a: $ff
	ld   a, [bc]                                     ; $685b: $0a
	rst  $38                                         ; $685c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685d: $cf
	ccf                                              ; $685e: $3f
	ld   hl, sp-$61                                  ; $685f: $f8 $9f
	cp   $0f                                         ; $6861: $fe $0f
	rst  $38                                         ; $6863: $ff
	dec  [hl]                                        ; $6864: $35
	rst  $38                                         ; $6865: $ff
	cp   a                                           ; $6866: $bf
	db   $fd                                         ; $6867: $fd
	cp   $fa                                         ; $6868: $fe $fa
	rst  $38                                         ; $686a: $ff
	rlca                                             ; $686b: $07
	cp   $ff                                         ; $686c: $fe $ff
	ldh  a, [rIF]                                    ; $686e: $f0 $0f
	adc  b                                           ; $6870: $88
	ld   a, a                                        ; $6871: $7f
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	cp   $82                                         ; $6874: $fe $82
	ld   a, [hl]                                     ; $6876: $7e
	ld   b, [hl]                                     ; $6877: $46
	ld   a, d                                        ; $6878: $7a
	ld   a, d                                        ; $6879: $7a
	and  $fe                                         ; $687a: $e6 $fe
	sub  d                                           ; $687c: $92
	cp   $5a                                         ; $687d: $fe $5a
	xor  $da                                         ; $687f: $ee $da
	ld   [$f60e], a                                  ; $6881: $ea $0e $f6
	sbc  [hl]                                        ; $6884: $9e
	rst  $38                                         ; $6885: $ff
	ld   a, a                                        ; $6886: $7f
	rst  $38                                         ; $6887: $ff
	ld   [hl], b                                     ; $6888: $70
	rst  $38                                         ; $6889: $ff
	or   $df                                         ; $688a: $f6 $df
	reti                                             ; $688c: $d9


	ld   sp, hl                                      ; $688d: $f9
	sub  $f6                                         ; $688e: $d6 $f6
	or   $d6                                         ; $6890: $f6 $d6
	ld   sp, hl                                      ; $6892: $f9
	ld   e, c                                        ; $6893: $59
	add  hl, bc                                      ; $6894: $09
	rst  $38                                         ; $6895: $ff
	add  h                                           ; $6896: $84
	rst  $38                                         ; $6897: $ff
	ld   d, [hl]                                     ; $6898: $56
	db   $fd                                         ; $6899: $fd
	ld   b, [hl]                                     ; $689a: $46
	db   $fd                                         ; $689b: $fd
	ld   h, [hl]                                     ; $689c: $66
	db   $fd                                         ; $689d: $fd
	rst  $28                                         ; $689e: $ef
	db   $fc                                         ; $689f: $fc
	rst  $38                                         ; $68a0: $ff
	call c, $d27f                                    ; $68a1: $dc $7f $d2
	add  b                                           ; $68a4: $80
	rst  $38                                         ; $68a5: $ff
	ldh  [rIE], a                                    ; $68a6: $e0 $ff
	sub  a                                           ; $68a8: $97
	ei                                               ; $68a9: $fb
	ld   h, a                                        ; $68aa: $67
	ld   a, [$fa07]                                  ; $68ab: $fa $07 $fa
	rlca                                             ; $68ae: $07
	db   $fd                                         ; $68af: $fd
	ld   [$08ff], sp                                 ; $68b0: $08 $ff $08
	rst  $38                                         ; $68b3: $ff
	ld   c, $f6                                      ; $68b4: $0e $f6
	ld   h, [hl]                                     ; $68b6: $66
	ld   a, [$da76]                                  ; $68b7: $fa $76 $da
	or   $de                                         ; $68ba: $f6 $de
	xor  $fa                                         ; $68bc: $ee $fa
	add  [hl]                                        ; $68be: $86
	or   $02                                         ; $68bf: $f6 $02
	ldh  [c], a                                      ; $68c1: $e2
	ld   [bc], a                                     ; $68c2: $02
	ldh  a, [c]                                      ; $68c3: $f2
	or   $3f                                         ; $68c4: $f6 $3f
	ldh  a, [$3f]                                    ; $68c6: $f0 $3f
	ret                                              ; $68c8: $c9


	ld   c, a                                        ; $68c9: $4f
	add  [hl]                                        ; $68ca: $86
	add  [hl]                                        ; $68cb: $86
	add  [hl]                                        ; $68cc: $86
	add  [hl]                                        ; $68cd: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68ce: $cf
	ld   c, c                                        ; $68cf: $49
	rst  $38                                         ; $68d0: $ff
	jr   nc, @+$01                                   ; $68d1: $30 $ff

	ld   hl, sp+$7f                                  ; $68d3: $f8 $7f
	and  $ff                                         ; $68d5: $e6 $ff
	add  $3f                                         ; $68d7: $c6 $3f
	ld   a, [hl+]                                    ; $68d9: $2a
	rra                                              ; $68da: $1f
	ld   a, [de]                                     ; $68db: $1a
	rra                                              ; $68dc: $1f
	ld   [de], a                                     ; $68dd: $12
	ccf                                              ; $68de: $3f
	ld   sp, $e1ff                                   ; $68df: $31 $ff $e1
	rst  $38                                         ; $68e2: $ff
	and  b                                           ; $68e3: $a0
	db   $10                                         ; $68e4: $10
	rst  $38                                         ; $68e5: $ff
	sub  b                                           ; $68e6: $90
	ld   a, a                                        ; $68e7: $7f
	ret  nc                                          ; $68e8: $d0

	ccf                                              ; $68e9: $3f
	ld   hl, sp+$17                                  ; $68ea: $f8 $17
	rst  $38                                         ; $68ec: $ff
	db   $10                                         ; $68ed: $10
	rst  $38                                         ; $68ee: $ff
	ld   [$08ff], sp                                 ; $68ef: $08 $ff $08
	rst  $38                                         ; $68f2: $ff
	add  h                                           ; $68f3: $84
	ld   [bc], a                                     ; $68f4: $02
	ld   a, [$fa02]                                  ; $68f5: $fa $02 $fa
	ld   [bc], a                                     ; $68f8: $02
	cp   $02                                         ; $68f9: $fe $02
	cp   $c2                                         ; $68fb: $fe $c2
	ld   a, $e2                                      ; $68fd: $3e $e2
	ld   e, $e2                                      ; $68ff: $1e $e2
	ld   e, $e6                                      ; $6901: $1e $e6
	ld   e, $1f                                      ; $6903: $1e $1f
	jr   jr_091_6946                                 ; $6905: $18 $3f

	ld   h, $3f                                      ; $6907: $26 $3f
	ld   hl, $203f                                   ; $6909: $21 $3f $20
	cp   a                                           ; $690c: $bf
	and  b                                           ; $690d: $a0
	sbc  a                                           ; $690e: $9f
	sub  b                                           ; $690f: $90
	ld   e, a                                        ; $6910: $5f
	ret  nc                                          ; $6911: $d0

	ld   c, a                                        ; $6912: $4f
	call z, $50ff                                    ; $6913: $cc $ff $50
	rst  $38                                         ; $6916: $ff
	ld   d, b                                        ; $6917: $50
	rst  $38                                         ; $6918: $ff
	add  sp, -$01                                    ; $6919: $e8 $ff
	jr   z, @+$01                                    ; $691b: $28 $ff

	add  hl, hl                                      ; $691d: $29
	rst  $38                                         ; $691e: $ff
	dec  a                                           ; $691f: $3d
	di                                               ; $6920: $f3
	rra                                              ; $6921: $1f
	pop  af                                          ; $6922: $f1
	ccf                                              ; $6923: $3f
	rst  $38                                         ; $6924: $ff
	ld   b, e                                        ; $6925: $43
	rst  $38                                         ; $6926: $ff
	ld   h, b                                        ; $6927: $60
	rst  $38                                         ; $6928: $ff
	ret  nc                                          ; $6929: $d0

	rst  $38                                         ; $692a: $ff
	adc  h                                           ; $692b: $8c
	rst  $38                                         ; $692c: $ff
	add  e                                           ; $692d: $83
	rst  $38                                         ; $692e: $ff
	nop                                              ; $692f: $00
	rst  $38                                         ; $6930: $ff
	nop                                              ; $6931: $00
	rst  $38                                         ; $6932: $ff
	ld   bc, $1eee                                   ; $6933: $01 $ee $1e
	cp   $fa                                         ; $6936: $fe $fa
	sbc  $32                                         ; $6938: $de $32
	cp   $22                                         ; $693a: $fe $22
	cp   $22                                         ; $693c: $fe $22
	cp   $b2                                         ; $693e: $fe $b2
	xor  $ee                                         ; $6940: $ee $ee
	ld   h, $e6                                      ; $6942: $26 $e6
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00

jr_091_6946:
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	ld   b, b                                        ; $694c: $40
	ld   b, b                                        ; $694d: $40
	rst  $38                                         ; $694e: $ff
	rst  $38                                         ; $694f: $ff
	xor  l                                           ; $6950: $ad
	rst  $38                                         ; $6951: $ff
	cp   a                                           ; $6952: $bf
	rst  $38                                         ; $6953: $ff
	jr   jr_091_6975                                 ; $6954: $18 $1f

	jr   z, jr_091_6997                              ; $6956: $28 $3f

	ld   d, b                                        ; $6958: $50
	ld   a, a                                        ; $6959: $7f
	and  b                                           ; $695a: $a0
	rst  $38                                         ; $695b: $ff
	and  b                                           ; $695c: $a0
	rst  $38                                         ; $695d: $ff
	ld   b, b                                        ; $695e: $40
	rst  $38                                         ; $695f: $ff
	ld   b, e                                        ; $6960: $43
	db   $fc                                         ; $6961: $fc
	ld   c, a                                        ; $6962: $4f
	ldh  a, [rAUD2LOW]                               ; $6963: $f0 $18
	ld   hl, sp+$0c                                  ; $6965: $f8 $0c
	db   $fc                                         ; $6967: $fc
	ld   a, [bc]                                     ; $6968: $0a
	cp   [hl]                                        ; $6969: $be
	ld   a, [bc]                                     ; $696a: $0a
	cp   [hl]                                        ; $696b: $be
	dec  h                                           ; $696c: $25
	rra                                              ; $696d: $1f
	dec  h                                           ; $696e: $25

jr_091_696f:
	rra                                              ; $696f: $1f
	or   l                                           ; $6970: $b5
	rrca                                             ; $6971: $0f
	push af                                          ; $6972: $f5
	rrca                                             ; $6973: $0f
	ld   [bc], a                                     ; $6974: $02

jr_091_6975:
	ld   [bc], a                                     ; $6975: $02
	ld   [bc], a                                     ; $6976: $02
	ld   [bc], a                                     ; $6977: $02
	ld   [bc], a                                     ; $6978: $02
	ld   [bc], a                                     ; $6979: $02
	ld   [bc], a                                     ; $697a: $02
	ld   [bc], a                                     ; $697b: $02
	ld   [bc], a                                     ; $697c: $02
	ld   [bc], a                                     ; $697d: $02
	ld   [bc], a                                     ; $697e: $02
	ld   [bc], a                                     ; $697f: $02
	ld   [bc], a                                     ; $6980: $02
	ld   [bc], a                                     ; $6981: $02
	add  d                                           ; $6982: $82
	add  d                                           ; $6983: $82
	db   $e3                                         ; $6984: $e3
	rst  $38                                         ; $6985: $ff
	or   a                                           ; $6986: $b7
	rst  $38                                         ; $6987: $ff
	sbc  a                                           ; $6988: $9f
	push af                                          ; $6989: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $698a: $cf
	ld   a, l                                        ; $698b: $7d
	jp   Jump_091_41ff                               ; $698c: $c3 $ff $41


	rst  $38                                         ; $698f: $ff
	pop  hl                                          ; $6990: $e1
	ld   a, $e7                                      ; $6991: $3e $e7
	jr   c, @+$51                                    ; $6993: $38 $4f

	ldh  a, [$5f]                                    ; $6995: $f0 $5f

jr_091_6997:
	ldh  [$1f], a                                    ; $6997: $e0 $1f
	rst  $38                                         ; $6999: $ff
	ld   a, a                                        ; $699a: $7f
	ldh  [$fc], a                                    ; $699b: $e0 $fc
	add  e                                           ; $699d: $83
	rst  $38                                         ; $699e: $ff
	sbc  a                                           ; $699f: $9f
	rst  $38                                         ; $69a0: $ff
	db   $fd                                         ; $69a1: $fd
	rst  $38                                         ; $69a2: $ff
	ld   [hl], l                                     ; $69a3: $75
	rst  $30                                         ; $69a4: $f7
	dec  c                                           ; $69a5: $0d
	rst  $30                                         ; $69a6: $f7
	dec  c                                           ; $69a7: $0d
	rst  $38                                         ; $69a8: $ff
	push bc                                          ; $69a9: $c5
	ccf                                              ; $69aa: $3f
	db   $eb                                         ; $69ab: $eb
	ld   e, $bf                                      ; $69ac: $1e $bf
	jr   nc, jr_091_696f                             ; $69ae: $30 $bf

	ld   hl, sp-$09                                  ; $69b0: $f8 $f7
	cp   $f1                                         ; $69b2: $fe $f1
	ld   b, d                                        ; $69b4: $42
	jp   nz, $c646                                   ; $69b5: $c2 $46 $c6

	ld   a, d                                        ; $69b8: $7a
	cp   $c2                                         ; $69b9: $fe $c2
	cp   $02                                         ; $69bb: $fe $02
	cp   $02                                         ; $69bd: $fe $02
	cp   $02                                         ; $69bf: $fe $02
	cp   $02                                         ; $69c1: $fe $02
	cp   $ef                                         ; $69c3: $fe $ef
	ldh  a, [$1f]                                    ; $69c5: $f0 $1f
	db   $10                                         ; $69c7: $10
	rrca                                             ; $69c8: $0f
	ld   [$0607], sp                                 ; $69c9: $08 $07 $06
	ld   bc, $0001                                   ; $69cc: $01 $01 $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	rst  $38                                         ; $69d4: $ff
	ld   h, b                                        ; $69d5: $60
	rst  $38                                         ; $69d6: $ff
	ld   a, d                                        ; $69d7: $7a
	rst  $38                                         ; $69d8: $ff
	jr   nc, @+$01                                   ; $69d9: $30 $ff

	dec  sp                                          ; $69db: $3b
	rst  $38                                         ; $69dc: $ff
	sbc  a                                           ; $69dd: $9f
	ld   a, a                                        ; $69de: $7f
	ld   [hl], h                                     ; $69df: $74
	rra                                              ; $69e0: $1f
	rra                                              ; $69e1: $1f
	cpl                                              ; $69e2: $2f
	jr   nc, @+$01                                   ; $69e3: $30 $ff

	jr   z, @+$01                                    ; $69e5: $28 $ff

	add  sp, -$01                                    ; $69e7: $e8 $ff
	jr   z, @+$01                                    ; $69e9: $28 $ff

	ld   c, h                                        ; $69eb: $4c
	rst  $38                                         ; $69ec: $ff
	sub  h                                           ; $69ed: $94
	rst  $38                                         ; $69ee: $ff
	ld   a, a                                        ; $69ef: $7f
	rst  $38                                         ; $69f0: $ff
	add  b                                           ; $69f1: $80
	rst  $38                                         ; $69f2: $ff
	nop                                              ; $69f3: $00
	add  d                                           ; $69f4: $82
	ld   a, [hl]                                     ; $69f5: $7e
	ldh  [c], a                                      ; $69f6: $e2
	ld   e, $fe                                      ; $69f7: $1e $fe
	ld   [bc], a                                     ; $69f9: $02
	cp   $0e                                         ; $69fa: $fe $0e
	ld   a, [$defe]                                  ; $69fc: $fa $fe $de
	sub  $4a                                         ; $69ff: $d6 $4a
	jp   z, $f676                                    ; $6a01: $ca $76 $f6

	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	ld   bc, $0301                                   ; $6a0a: $01 $01 $03
	inc  bc                                          ; $6a0d: $03
	dec  b                                           ; $6a0e: $05
	rlca                                             ; $6a0f: $07
	ld   c, $0f                                      ; $6a10: $0e $0f
	ld   a, [bc]                                     ; $6a12: $0a
	rrca                                             ; $6a13: $0f
	cpl                                              ; $6a14: $2f
	scf                                              ; $6a15: $37
	ld   e, b                                        ; $6a16: $58
	ld   a, h                                        ; $6a17: $7c
	and  b                                           ; $6a18: $a0
	cp   $47                                         ; $6a19: $fe $47
	rst  $38                                         ; $6a1b: $ff
	ld   c, b                                        ; $6a1c: $48
	cp   $80                                         ; $6a1d: $fe $80
	cp   $80                                         ; $6a1f: $fe $80
	cp   $67                                         ; $6a21: $fe $67
	rst  $38                                         ; $6a23: $ff
	rst  $38                                         ; $6a24: $ff
	rst  $38                                         ; $6a25: $ff
	rra                                              ; $6a26: $1f
	ld   a, b                                        ; $6a27: $78
	ld   b, $fd                                      ; $6a28: $06 $fd
	ldh  [c], a                                      ; $6a2a: $e2
	rst  $38                                         ; $6a2b: $ff
	ld   b, $f8                                      ; $6a2c: $06 $f8
	inc  c                                           ; $6a2e: $0c
	pop  af                                          ; $6a2f: $f1
	ld   a, [bc]                                     ; $6a30: $0a
	di                                               ; $6a31: $f3
	push bc                                          ; $6a32: $c5
	rst  $30                                         ; $6a33: $f7
	xor  $c2                                         ; $6a34: $ee $c2
	ld   e, [hl]                                     ; $6a36: $5e
	jp   nc, $aa3e                                   ; $6a37: $d2 $3e $aa

	ld   a, [hl]                                     ; $6a3a: $7e
	ld   e, [hl]                                     ; $6a3b: $5e
	ld   a, [hl]                                     ; $6a3c: $7e
	ldh  [c], a                                      ; $6a3d: $e2
	cp   $82                                         ; $6a3e: $fe $82
	cp   $82                                         ; $6a40: $fe $82
	cp   $02                                         ; $6a42: $fe $02
	ld   [de], a                                     ; $6a44: $12
	rra                                              ; $6a45: $1f
	ld   de, $2117                                   ; $6a46: $11 $17 $21
	daa                                              ; $6a49: $27
	daa                                              ; $6a4a: $27
	jr   z, jr_091_6a7c                              ; $6a4b: $28 $2f

	inc  sp                                          ; $6a4d: $33
	inc  e                                           ; $6a4e: $1c
	rla                                              ; $6a4f: $17
	rra                                              ; $6a50: $1f
	rla                                              ; $6a51: $17
	rrca                                             ; $6a52: $0f
	inc  c                                           ; $6a53: $0c
	ld   l, a                                        ; $6a54: $6f
	cp   b                                           ; $6a55: $b8
	ld   [hl], a                                     ; $6a56: $77
	cp   b                                           ; $6a57: $b8
	ld   b, b                                        ; $6a58: $40
	rst  $38                                         ; $6a59: $ff
	add  b                                           ; $6a5a: $80
	rst  $38                                         ; $6a5b: $ff
	ldh  [$fe], a                                    ; $6a5c: $e0 $fe
	jr   @-$01                                       ; $6a5e: $18 $fd

	add  d                                           ; $6a60: $82
	ei                                               ; $6a61: $fb
	pop  hl                                          ; $6a62: $e1
	ld   [hl], a                                     ; $6a63: $77
	rst  $28                                         ; $6a64: $ef
	dec  h                                           ; $6a65: $25
	rst  JumpTable                                         ; $6a66: $df
	dec  c                                           ; $6a67: $0d
	ccf                                              ; $6a68: $3f
	add  l                                           ; $6a69: $85
	rra                                              ; $6a6a: $1f
	ld   h, d                                        ; $6a6b: $62
	rrca                                             ; $6a6c: $0f
	ldh  a, [c]                                      ; $6a6d: $f2
	rra                                              ; $6a6e: $1f
	push hl                                          ; $6a6f: $e5
	rra                                              ; $6a70: $1f
	push hl                                          ; $6a71: $e5
	ccf                                              ; $6a72: $3f
	push bc                                          ; $6a73: $c5
	cp   $02                                         ; $6a74: $fe $02
	cp   $02                                         ; $6a76: $fe $02
	cp   $02                                         ; $6a78: $fe $02
	cp   $82                                         ; $6a7a: $fe $82

jr_091_6a7c:
	cp   $e2                                         ; $6a7c: $fe $e2
	cp   $9e                                         ; $6a7e: $fe $9e
	cp   $02                                         ; $6a80: $fe $02
	cp   $02                                         ; $6a82: $fe $02
	ld   [$300f], sp                                 ; $6a84: $08 $0f $30
	ccf                                              ; $6a87: $3f
	call z, $83ff                                    ; $6a88: $cc $ff $83
	rst  $38                                         ; $6a8b: $ff
	ld   h, b                                        ; $6a8c: $60
	ld   a, [hl]                                     ; $6a8d: $7e
	jr   c, jr_091_6acd                              ; $6a8e: $38 $3d

	jr   c, @+$25                                    ; $6a90: $38 $23

	ld   b, [hl]                                     ; $6a92: $46
	ld   [hl], e                                     ; $6a93: $73
	add  sp, $0f                                     ; $6a94: $e8 $0f
	inc  e                                           ; $6a96: $1c
	rst  ToBoot                                         ; $6a97: $c7
	ld   e, $a3                                      ; $6a98: $1e $a3
	rrca                                             ; $6a9a: $0f
	ld   [hl], c                                     ; $6a9b: $71
	add  a                                           ; $6a9c: $87
	ld   hl, sp+$47                                  ; $6a9d: $f8 $47
	ld   hl, sp+$27                                  ; $6a9f: $f8 $27
	ld   hl, sp+$1f                                  ; $6aa1: $f8 $1f
	ldh  a, [rIE]                                    ; $6aa3: $f0 $ff
	adc  e                                           ; $6aa5: $8b
	ld   a, a                                        ; $6aa6: $7f
	bit  7, [hl]                                     ; $6aa7: $cb $7e
	xor  d                                           ; $6aa9: $aa
	ld   a, [hl]                                     ; $6aaa: $7e
	sbc  d                                           ; $6aab: $9a
	rst  $38                                         ; $6aac: $ff
	adc  e                                           ; $6aad: $8b
	cp   $4b                                         ; $6aae: $fe $4b
	cp   $6f                                         ; $6ab0: $fe $6f
	db   $fc                                         ; $6ab2: $fc
	sbc  e                                           ; $6ab3: $9b
	cp   $02                                         ; $6ab4: $fe $02
	cp   $02                                         ; $6ab6: $fe $02
	cp   $82                                         ; $6ab8: $fe $82
	cp   $82                                         ; $6aba: $fe $82
	ld   a, [hl]                                     ; $6abc: $7e
	ld   h, d                                        ; $6abd: $62
	sbc  [hl]                                        ; $6abe: $9e
	sbc  [hl]                                        ; $6abf: $9e
	add  d                                           ; $6ac0: $82
	add  d                                           ; $6ac1: $82
	add  d                                           ; $6ac2: $82
	add  d                                           ; $6ac3: $82
	cp   [hl]                                        ; $6ac4: $be
	ld   a, e                                        ; $6ac5: $7b
	cp   [hl]                                        ; $6ac6: $be
	ld   h, e                                        ; $6ac7: $63
	cp   [hl]                                        ; $6ac8: $be
	ld   h, a                                        ; $6ac9: $67
	cp   d                                           ; $6aca: $ba
	rst  $38                                         ; $6acb: $ff
	ei                                               ; $6acc: $fb

jr_091_6acd:
	ld   l, a                                        ; $6acd: $6f
	or   c                                           ; $6ace: $b1
	ld   a, a                                        ; $6acf: $7f
	and  c                                           ; $6ad0: $a1
	ld   a, a                                        ; $6ad1: $7f
	and  b                                           ; $6ad2: $a0
	ld   a, a                                        ; $6ad3: $7f
	adc  a                                           ; $6ad4: $8f
	reti                                             ; $6ad5: $d9


	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	ret  nc                                          ; $6ad8: $d0

	ld   hl, sp+$50                                  ; $6ad9: $f8 $50
	rst  $38                                         ; $6adb: $ff
	ld   d, b                                        ; $6adc: $50
	rst  $38                                         ; $6add: $ff
	ld   d, b                                        ; $6ade: $50
	rst  $38                                         ; $6adf: $ff
	or   b                                           ; $6ae0: $b0
	rst  $38                                         ; $6ae1: $ff
	db   $10                                         ; $6ae2: $10
	rst  $28                                         ; $6ae3: $ef
	adc  $7b                                         ; $6ae4: $ce $7b
	rst  $38                                         ; $6ae6: $ff
	db   $fc                                         ; $6ae7: $fc
	inc  bc                                          ; $6ae8: $03
	ld   e, $01                                      ; $6ae9: $1e $01
	ccf                                              ; $6aeb: $3f
	ld   de, $212f                                   ; $6aec: $11 $2f $21
	rra                                              ; $6aef: $1f
	ld   bc, $007f                                   ; $6af0: $01 $7f $00
	cp   a                                           ; $6af3: $bf
	ld   a, [bc]                                     ; $6af4: $0a

jr_091_6af5:
	sbc  $0a                                         ; $6af5: $de $0a
	sbc  $8a                                         ; $6af7: $de $8a
	ld   e, [hl]                                     ; $6af9: $5e
	adc  d                                           ; $6afa: $8a
	ld   e, [hl]                                     ; $6afb: $5e
	adc  d                                           ; $6afc: $8a
	ld   e, [hl]                                     ; $6afd: $5e
	adc  d                                           ; $6afe: $8a
	ld   e, [hl]                                     ; $6aff: $5e
	ld   a, [bc]                                     ; $6b00: $0a
	sbc  $96                                         ; $6b01: $de $96
	cp   [hl]                                        ; $6b03: $be
	ret  nz                                          ; $6b04: $c0

	ld   a, a                                        ; $6b05: $7f
	pop  bc                                          ; $6b06: $c1
	rst  $38                                         ; $6b07: $ff
	sbc  e                                           ; $6b08: $9b
	rst  $38                                         ; $6b09: $ff
	ldh  [rIE], a                                    ; $6b0a: $e0 $ff
	rrca                                             ; $6b0c: $0f
	rst  $38                                         ; $6b0d: $ff
	sbc  a                                           ; $6b0e: $9f
	rst  $30                                         ; $6b0f: $f7
	ld   a, a                                        ; $6b10: $7f
	ld   hl, sp+$1f                                  ; $6b11: $f8 $1f
	rst  $38                                         ; $6b13: $ff
	jr   nz, jr_091_6af5                             ; $6b14: $20 $df

	nop                                              ; $6b16: $00
	cp   $ff                                         ; $6b17: $fe $ff
	rst  $38                                         ; $6b19: $ff
	nop                                              ; $6b1a: $00
	rst  $38                                         ; $6b1b: $ff
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	rst  $38                                         ; $6b20: $ff
	nop                                              ; $6b21: $00
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	nop                                              ; $6b24: $00
	ccf                                              ; $6b25: $3f
	inc  b                                           ; $6b26: $04
	rrca                                             ; $6b27: $0f
	rrca                                             ; $6b28: $0f
	rst  $38                                         ; $6b29: $ff
	inc  bc                                          ; $6b2a: $03
	rst  $38                                         ; $6b2b: $ff
	db   $fc                                         ; $6b2c: $fc
	rst  $38                                         ; $6b2d: $ff
	ld   hl, sp-$04                                  ; $6b2e: $f8 $fc
	rst  $38                                         ; $6b30: $ff
	rlca                                             ; $6b31: $07
	db   $fc                                         ; $6b32: $fc
	rst  $38                                         ; $6b33: $ff
	ld   a, d                                        ; $6b34: $7a
	cp   $12                                         ; $6b35: $fe $12
	cp   $ca                                         ; $6b37: $fe $ca
	cp   $3a                                         ; $6b39: $fe $3a
	cp   $86                                         ; $6b3b: $fe $86
	cp   $4e                                         ; $6b3d: $fe $4e
	cp   $f2                                         ; $6b3f: $fe $f2
	cp   $c2                                         ; $6b41: $fe $c2
	cp   $0f                                         ; $6b43: $fe $0f
	ldh  a, [rTAC]                                   ; $6b45: $f0 $07
	ld   hl, sp+$02                                  ; $6b47: $f8 $02
	rst  $38                                         ; $6b49: $ff
	nop                                              ; $6b4a: $00
	rst  $38                                         ; $6b4b: $ff
	adc  a                                           ; $6b4c: $8f
	rst  $38                                         ; $6b4d: $ff
	ld   e, a                                        ; $6b4e: $5f
	rst  $30                                         ; $6b4f: $f7
	ld   a, $fb                                      ; $6b50: $3e $fb
	rra                                              ; $6b52: $1f
	rst  $38                                         ; $6b53: $ff
	rst  $38                                         ; $6b54: $ff
	nop                                              ; $6b55: $00
	rst  $38                                         ; $6b56: $ff
	nop                                              ; $6b57: $00
	ld   bc, $c0ff                                   ; $6b58: $01 $ff $c0
	rst  $38                                         ; $6b5b: $ff
	ccf                                              ; $6b5c: $3f
	cp   a                                           ; $6b5d: $bf
	rst  $38                                         ; $6b5e: $ff
	rst  $38                                         ; $6b5f: $ff
	rst  JumpTable                                         ; $6b60: $df
	ldh  a, [$3f]                                    ; $6b61: $f0 $3f
	rst  $38                                         ; $6b63: $ff
	rst  $38                                         ; $6b64: $ff
	inc  bc                                          ; $6b65: $03
	rst  $38                                         ; $6b66: $ff
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	rst  $38                                         ; $6b69: $ff
	nop                                              ; $6b6a: $00
	rst  $38                                         ; $6b6b: $ff
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	nop                                              ; $6b71: $00
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	add  d                                           ; $6b74: $82
	ld   a, [hl]                                     ; $6b75: $7e
	ld   [bc], a                                     ; $6b76: $02
	cp   $82                                         ; $6b77: $fe $82
	cp   $02                                         ; $6b79: $fe $02
	cp   $8e                                         ; $6b7b: $fe $8e
	cp   $d2                                         ; $6b7d: $fe $d2
	ld   a, [hl]                                     ; $6b7f: $7e
	ldh  [c], a                                      ; $6b80: $e2
	cp   $c2                                         ; $6b81: $fe $c2
	cp   $0f                                         ; $6b83: $fe $0f
	ldh  a, [rTAC]                                   ; $6b85: $f0 $07
	ld   hl, sp+$00                                  ; $6b87: $f8 $00
	rst  $38                                         ; $6b89: $ff
	ret  nz                                          ; $6b8a: $c0

	ccf                                              ; $6b8b: $3f
	ret  nz                                          ; $6b8c: $c0

	ccf                                              ; $6b8d: $3f
	ldh  [$5f], a                                    ; $6b8e: $e0 $5f
	ldh  [$1f], a                                    ; $6b90: $e0 $1f
	db   $f4                                         ; $6b92: $f4
	dec  bc                                          ; $6b93: $0b
	rst  $38                                         ; $6b94: $ff
	ret  nz                                          ; $6b95: $c0

	rst  $38                                         ; $6b96: $ff
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	rst  $38                                         ; $6b99: $ff
	nop                                              ; $6b9a: $00
	rst  $38                                         ; $6b9b: $ff
	ld   b, b                                        ; $6b9c: $40
	cp   a                                           ; $6b9d: $bf
	add  b                                           ; $6b9e: $80
	ld   a, a                                        ; $6b9f: $7f
	nop                                              ; $6ba0: $00
	rst  $38                                         ; $6ba1: $ff
	nop                                              ; $6ba2: $00
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	nop                                              ; $6ba5: $00
	rst  $38                                         ; $6ba6: $ff
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	rst  $38                                         ; $6ba9: $ff
	db   $10                                         ; $6baa: $10
	rst  $20                                         ; $6bab: $e7
	inc  c                                           ; $6bac: $0c
	pop  af                                          ; $6bad: $f1
	nop                                              ; $6bae: $00
	rst  $38                                         ; $6baf: $ff
	inc  bc                                          ; $6bb0: $03
	rst  $38                                         ; $6bb1: $ff
	dec  b                                           ; $6bb2: $05
	rst  $38                                         ; $6bb3: $ff
	add  d                                           ; $6bb4: $82
	ld   a, [hl]                                     ; $6bb5: $7e
	ld   [bc], a                                     ; $6bb6: $02
	cp   $02                                         ; $6bb7: $fe $02
	cp   $02                                         ; $6bb9: $fe $02
	cp   $02                                         ; $6bbb: $fe $02
	cp   $12                                         ; $6bbd: $fe $12
	cp   $82                                         ; $6bbf: $fe $82
	cp   $42                                         ; $6bc1: $fe $42
	cp   $7a                                         ; $6bc3: $fe $7a
	add  l                                           ; $6bc5: $85
	ld   a, l                                        ; $6bc6: $7d
	add  d                                           ; $6bc7: $82
	ld   a, [hl]                                     ; $6bc8: $7e
	add  c                                           ; $6bc9: $81
	ccf                                              ; $6bca: $3f
	ret  nz                                          ; $6bcb: $c0

	ccf                                              ; $6bcc: $3f
	ret  nz                                          ; $6bcd: $c0

	ccf                                              ; $6bce: $3f
	ret  z                                           ; $6bcf: $c8

	ccf                                              ; $6bd0: $3f
	ret  nz                                          ; $6bd1: $c0

	rra                                              ; $6bd2: $1f
	ldh  [$80], a                                    ; $6bd3: $e0 $80
	ld   a, a                                        ; $6bd5: $7f
	ld   b, c                                        ; $6bd6: $41
	cp   [hl]                                        ; $6bd7: $be
	and  b                                           ; $6bd8: $a0
	ld   e, a                                        ; $6bd9: $5f
	ld   b, b                                        ; $6bda: $40
	cp   a                                           ; $6bdb: $bf
	and  b                                           ; $6bdc: $a0
	ld   e, a                                        ; $6bdd: $5f
	ldh  a, [rIF]                                    ; $6bde: $f0 $0f
	rst  $38                                         ; $6be0: $ff
	nop                                              ; $6be1: $00
	cp   $01                                         ; $6be2: $fe $01
	dec  b                                           ; $6be4: $05
	rst  $38                                         ; $6be5: $ff
	add  l                                           ; $6be6: $85
	ld   a, a                                        ; $6be7: $7f
	ld   h, e                                        ; $6be8: $63
	sbc  a                                           ; $6be9: $9f
	db   $10                                         ; $6bea: $10
	rst  $28                                         ; $6beb: $ef
	ld   [$34f7], sp                                 ; $6bec: $08 $f7 $34
	rrc  d                                           ; $6bef: $cb $0a
	push af                                          ; $6bf1: $f5
	dec  h                                           ; $6bf2: $25
	jp   c, $fe42                                    ; $6bf3: $da $42 $fe

	ld   b, d                                        ; $6bf6: $42
	cp   $82                                         ; $6bf7: $fe $82
	cp   $02                                         ; $6bf9: $fe $02
	cp   $02                                         ; $6bfb: $fe $02
	cp   $82                                         ; $6bfd: $fe $82
	cp   $02                                         ; $6bff: $fe $02
	cp   $02                                         ; $6c01: $fe $02
	cp   $1f                                         ; $6c03: $fe $1f
	ldh  [rIE], a                                    ; $6c05: $e0 $ff
	ldh  a, [$ef]                                    ; $6c07: $f0 $ef
	inc  a                                           ; $6c09: $3c
	db   $e3                                         ; $6c0a: $e3
	xor  $23                                         ; $6c0b: $ee $23
	rst  $28                                         ; $6c0d: $ef
	db   $eb                                         ; $6c0e: $eb
	and  $5b                                         ; $6c0f: $e6 $5b

jr_091_6c11:
	add  $df                                         ; $6c11: $c6 $df
	jp   nz, $01fe                                   ; $6c13: $c2 $fe $01

	db   $fc                                         ; $6c16: $fc
	inc  bc                                          ; $6c17: $03
	rst  $38                                         ; $6c18: $ff
	rlca                                             ; $6c19: $07
	db   $fc                                         ; $6c1a: $fc
	dec  bc                                          ; $6c1b: $0b
	rst  $38                                         ; $6c1c: $ff
	ldh  a, [$f9]                                    ; $6c1d: $f0 $f9
	ld   h, $f0                                      ; $6c1f: $26 $f0
	cpl                                              ; $6c21: $2f
	ret  nz                                          ; $6c22: $c0

	ld   a, a                                        ; $6c23: $7f
	db   $10                                         ; $6c24: $10
	rst  $28                                         ; $6c25: $ef
	db   $10                                         ; $6c26: $10
	rst  $28                                         ; $6c27: $ef
	ld   bc, $82ff                                   ; $6c28: $01 $ff $82
	rst  $38                                         ; $6c2b: $ff
	ld   a, [hl]                                     ; $6c2c: $7e
	rst  $38                                         ; $6c2d: $ff
	ld   a, $e3                                      ; $6c2e: $3e $e3
	ld   a, [hl]                                     ; $6c30: $7e
	inc  hl                                          ; $6c31: $23
	rra                                              ; $6c32: $1f
	ld   [hl], d                                     ; $6c33: $72
	ld   [bc], a                                     ; $6c34: $02
	cp   $7e                                         ; $6c35: $fe $7e
	cp   $be                                         ; $6c37: $fe $be
	ldh  [c], a                                      ; $6c39: $e2
	ld   a, $fe                                      ; $6c3a: $3e $fe
	ld   [hl+], a                                    ; $6c3c: $22
	cp   $be                                         ; $6c3d: $fe $be
	ld   a, [hl]                                     ; $6c3f: $7e
	jp   nc, $de3e                                   ; $6c40: $d2 $3e $de

	ld   a, $02                                      ; $6c43: $3e $02
	inc  bc                                          ; $6c45: $03
	ld   [bc], a                                     ; $6c46: $02
	inc  bc                                          ; $6c47: $03
	ld   [bc], a                                     ; $6c48: $02
	inc  bc                                          ; $6c49: $03
	ld   [bc], a                                     ; $6c4a: $02
	inc  bc                                          ; $6c4b: $03
	ld   [bc], a                                     ; $6c4c: $02
	inc  bc                                          ; $6c4d: $03
	inc  bc                                          ; $6c4e: $03
	inc  bc                                          ; $6c4f: $03
	inc  bc                                          ; $6c50: $03
	inc  bc                                          ; $6c51: $03
	jp   $30c3                                       ; $6c52: $c3 $c3 $30


	sbc  l                                           ; $6c55: $9d
	jr   z, jr_091_6c11                              ; $6c56: $28 $b9

	ld   d, b                                        ; $6c58: $50
	ei                                               ; $6c59: $fb
	and  b                                           ; $6c5a: $a0
	rst  $38                                         ; $6c5b: $ff
	and  b                                           ; $6c5c: $a0
	rst  $38                                         ; $6c5d: $ff
	jr   nz, @+$01                                   ; $6c5e: $20 $ff

	rra                                              ; $6c60: $1f
	rst  $38                                         ; $6c61: $ff
	jr   nz, @+$01                                   ; $6c62: $20 $ff

	ld   hl, $11ff                                   ; $6c64: $21 $ff $11
	rst  $38                                         ; $6c67: $ff
	add  hl, hl                                      ; $6c68: $29
	rst  $38                                         ; $6c69: $ff
	dec  d                                           ; $6c6a: $15
	rst  $38                                         ; $6c6b: $ff
	dec  [hl]                                        ; $6c6c: $35
	rst  JumpTable                                         ; $6c6d: $df
	ld   a, e                                        ; $6c6e: $7b
	sub  a                                           ; $6c6f: $97
	ei                                               ; $6c70: $fb
	rst  $20                                         ; $6c71: $e7
	dec  sp                                          ; $6c72: $3b
	rst  $10                                         ; $6c73: $d7
	ld   [bc], a                                     ; $6c74: $02
	ld   [bc], a                                     ; $6c75: $02
	ld   [bc], a                                     ; $6c76: $02
	ld   [bc], a                                     ; $6c77: $02
	ld   [bc], a                                     ; $6c78: $02
	ld   [bc], a                                     ; $6c79: $02
	ld   [bc], a                                     ; $6c7a: $02
	ld   [bc], a                                     ; $6c7b: $02
	ld   [bc], a                                     ; $6c7c: $02
	ld   [bc], a                                     ; $6c7d: $02
	ld   [bc], a                                     ; $6c7e: $02
	ld   [bc], a                                     ; $6c7f: $02
	ld   [bc], a                                     ; $6c80: $02
	ld   [bc], a                                     ; $6c81: $02
	ld   c, $0e                                      ; $6c82: $0e $0e
	ccf                                              ; $6c84: $3f
	rst  $38                                         ; $6c85: $ff
	nop                                              ; $6c86: $00
	rst  $38                                         ; $6c87: $ff
	nop                                              ; $6c88: $00
	rst  $38                                         ; $6c89: $ff
	nop                                              ; $6c8a: $00
	rst  $38                                         ; $6c8b: $ff
	nop                                              ; $6c8c: $00
	rst  $38                                         ; $6c8d: $ff
	nop                                              ; $6c8e: $00
	rst  $38                                         ; $6c8f: $ff
	ld   b, d                                        ; $6c90: $42
	cp   l                                           ; $6c91: $bd
	ld   c, $f1                                      ; $6c92: $0e $f1
	rst  ToBoot                                         ; $6c94: $c7
	rst  $38                                         ; $6c95: $ff
	ld   a, a                                        ; $6c96: $7f
	rst  $38                                         ; $6c97: $ff
	cp   a                                           ; $6c98: $bf
	db   $db                                         ; $6c99: $db
	cp   a                                           ; $6c9a: $bf
	ldh  a, [$bb]                                    ; $6c9b: $f0 $bb
	rst  $38                                         ; $6c9d: $ff
	ei                                               ; $6c9e: $fb
	rst  $38                                         ; $6c9f: $ff
	ldh  a, [$bf]                                    ; $6ca0: $f0 $bf
	ei                                               ; $6ca2: $fb
	rst  JumpTable                                         ; $6ca3: $df
	adc  a                                           ; $6ca4: $8f
	rst  $38                                         ; $6ca5: $ff
	db   $fc                                         ; $6ca6: $fc
	rst  $38                                         ; $6ca7: $ff
	db   $fc                                         ; $6ca8: $fc
	ld   h, a                                        ; $6ca9: $67
	db   $fc                                         ; $6caa: $fc
	scf                                              ; $6cab: $37
	db   $f4                                         ; $6cac: $f4
	ld   a, a                                        ; $6cad: $7f
	ld   [hl], h                                     ; $6cae: $74
	rst  $38                                         ; $6caf: $ff
	ld   a, $f5                                      ; $6cb0: $3e $f5
	ld   a, a                                        ; $6cb2: $7f
	db   $e4                                         ; $6cb3: $e4
	ldh  a, [c]                                      ; $6cb4: $f2
	cp   $02                                         ; $6cb5: $fe $02
	cp   $02                                         ; $6cb7: $fe $02
	cp   $0a                                         ; $6cb9: $fe $0a
	or   $06                                         ; $6cbb: $f6 $06
	ld   a, [$ee12]                                  ; $6cbd: $fa $12 $ee
	ld   a, [bc]                                     ; $6cc0: $0a
	or   $c2                                         ; $6cc1: $f6 $c2
	ld   a, $ff                                      ; $6cc3: $3e $ff
	nop                                              ; $6cc5: $00
	rst  $38                                         ; $6cc6: $ff
	nop                                              ; $6cc7: $00
	rst  $38                                         ; $6cc8: $ff
	ldh  [$1f], a                                    ; $6cc9: $e0 $1f
	rra                                              ; $6ccb: $1f
	ld   l, e                                        ; $6ccc: $6b
	ld   a, d                                        ; $6ccd: $7a
	adc  a                                           ; $6cce: $8f
	rst  $38                                         ; $6ccf: $ff
	adc  [hl]                                        ; $6cd0: $8e
	rst  $38                                         ; $6cd1: $ff
	sbc  [hl]                                        ; $6cd2: $9e
	db   $eb                                         ; $6cd3: $eb
	ei                                               ; $6cd4: $fb
	rst  JumpTable                                         ; $6cd5: $df
	rst  $38                                         ; $6cd6: $ff
	rst  ToBoot                                         ; $6cd7: $c7
	rst  $38                                         ; $6cd8: $ff
	or   b                                           ; $6cd9: $b0
	rst  $38                                         ; $6cda: $ff
	rra                                              ; $6cdb: $1f
	rst  $38                                         ; $6cdc: $ff
	ld   l, b                                        ; $6cdd: $68
	sbc  a                                           ; $6cde: $9f
	rst  $38                                         ; $6cdf: $ff
	inc  hl                                          ; $6ce0: $23
	db   $fd                                         ; $6ce1: $fd
	rra                                              ; $6ce2: $1f
	rst  $38                                         ; $6ce3: $ff
	ld   a, a                                        ; $6ce4: $7f
	db   $ec                                         ; $6ce5: $ec
	rst  $38                                         ; $6ce6: $ff
	adc  h                                           ; $6ce7: $8c
	rst  $38                                         ; $6ce8: $ff
	inc  d                                           ; $6ce9: $14
	rst  $38                                         ; $6cea: $ff
	ld   h, e                                        ; $6ceb: $63
	rst  $38                                         ; $6cec: $ff
	ld   e, c                                        ; $6ced: $59
	rst  $20                                         ; $6cee: $e7
	rst  $38                                         ; $6cef: $ff
	pop  af                                          ; $6cf0: $f1
	rra                                              ; $6cf1: $1f
	pop  hl                                          ; $6cf2: $e1
	cp   $fe                                         ; $6cf3: $fe $fe
	ld   [bc], a                                     ; $6cf5: $02
	cp   $02                                         ; $6cf6: $fe $02
	cp   $1e                                         ; $6cf8: $fe $1e
	ldh  [c], a                                      ; $6cfa: $e2
	ldh  [c], a                                      ; $6cfb: $e2
	ld   e, d                                        ; $6cfc: $5a
	ld   a, d                                        ; $6cfd: $7a
	ld   b, [hl]                                     ; $6cfe: $46
	ld   a, [hl]                                     ; $6cff: $7e
	add  $fe                                         ; $6d00: $c6 $fe
	add  $5e                                         ; $6d02: $c6 $5e
	rst  $28                                         ; $6d04: $ef
	cp   e                                           ; $6d05: $bb
	adc  a                                           ; $6d06: $8f
	ei                                               ; $6d07: $fb
	xor  [hl]                                        ; $6d08: $ae
	db   $db                                         ; $6d09: $db
	db   $ed                                         ; $6d0a: $ed
	sbc  e                                           ; $6d0b: $9b
	add  sp, -$41                                    ; $6d0c: $e8 $bf
	add  sp, $1f                                     ; $6d0e: $e8 $1f
	xor  $99                                         ; $6d10: $ee $99
	rst  $28                                         ; $6d12: $ef
	ld   e, h                                        ; $6d13: $5c
	nop                                              ; $6d14: $00
	rst  $38                                         ; $6d15: $ff
	add  b                                           ; $6d16: $80
	rst  $38                                         ; $6d17: $ff
	ld   b, h                                        ; $6d18: $44
	rst  $38                                         ; $6d19: $ff
	sbc  e                                           ; $6d1a: $9b
	ld   a, a                                        ; $6d1b: $7f
	res  7, a                                        ; $6d1c: $cb $bf
	inc  e                                           ; $6d1e: $1c
	rst  $38                                         ; $6d1f: $ff
	jr   nz, @+$01                                   ; $6d20: $20 $ff

	ld   b, b                                        ; $6d22: $40
	rst  $38                                         ; $6d23: $ff
	nop                                              ; $6d24: $00
	rst  $38                                         ; $6d25: $ff
	inc  b                                           ; $6d26: $04
	ei                                               ; $6d27: $fb
	add  d                                           ; $6d28: $82
	db   $fd                                         ; $6d29: $fd
	ld   h, b                                        ; $6d2a: $60
	rst  $38                                         ; $6d2b: $ff
	ld   b, b                                        ; $6d2c: $40
	rst  $38                                         ; $6d2d: $ff
	ldh  [rIE], a                                    ; $6d2e: $e0 $ff
	db   $10                                         ; $6d30: $10
	rst  $38                                         ; $6d31: $ff
	adc  b                                           ; $6d32: $88
	ld   a, a                                        ; $6d33: $7f
	sbc  $76                                         ; $6d34: $de $76
	add  $7e                                         ; $6d36: $c6 $7e
	sub  $6e                                         ; $6d38: $d6 $6e
	cp   $46                                         ; $6d3a: $fe $46
	ld   a, [hl]                                     ; $6d3c: $7e
	sub  $7e                                         ; $6d3d: $d6 $7e
	jp   nz, $c67e                                   ; $6d3f: $c2 $7e $c6

	cp   $ce                                         ; $6d42: $fe $ce
	rst  $38                                         ; $6d44: $ff
	db   $fc                                         ; $6d45: $fc
	rst  $38                                         ; $6d46: $ff
	ld   a, [$8aff]                                  ; $6d47: $fa $ff $8a
	rst  $38                                         ; $6d4a: $ff
	ld   a, d                                        ; $6d4b: $7a
	rst  $38                                         ; $6d4c: $ff

jr_091_6d4d:
	adc  d                                           ; $6d4d: $8a
	rst  $38                                         ; $6d4e: $ff
	ld   a, [hl]                                     ; $6d4f: $7e
	rst  $38                                         ; $6d50: $ff
	add  [hl]                                        ; $6d51: $86
	rst  $38                                         ; $6d52: $ff
	ld   a, a                                        ; $6d53: $7f
	ld   b, c                                        ; $6d54: $41
	cp   $82                                         ; $6d55: $fe $82
	db   $fd                                         ; $6d57: $fd
	call nz, $fcbb                                   ; $6d58: $c4 $bb $fc
	add  a                                           ; $6d5b: $87
	db   $fc                                         ; $6d5c: $fc
	adc  e                                           ; $6d5d: $8b
	cp   $51                                         ; $6d5e: $fe $51
	cp   $41                                         ; $6d60: $fe $41
	cp   $21                                         ; $6d62: $fe $21
	ld   [$05ff], sp                                 ; $6d64: $08 $ff $05
	rst  $38                                         ; $6d67: $ff
	ld   b, l                                        ; $6d68: $45
	cp   a                                           ; $6d69: $bf
	dec  h                                           ; $6d6a: $25
	rst  JumpTable                                         ; $6d6b: $df
	add  l                                           ; $6d6c: $85
	ld   a, a                                        ; $6d6d: $7f
	ld   c, c                                        ; $6d6e: $49
	cp   a                                           ; $6d6f: $bf
	ld   c, c                                        ; $6d70: $49
	cp   a                                           ; $6d71: $bf
	inc  de                                          ; $6d72: $13
	rst  $38                                         ; $6d73: $ff
	cp   $fe                                         ; $6d74: $fe $fe
	cp   $7a                                         ; $6d76: $fe $7a
	cp   $62                                         ; $6d78: $fe $62
	ldh  [c], a                                      ; $6d7a: $e2
	ld   a, [hl]                                     ; $6d7b: $7e
	ldh  a, [c]                                      ; $6d7c: $f2
	ld   e, [hl]                                     ; $6d7d: $5e
	ldh  a, [c]                                      ; $6d7e: $f2
	sbc  [hl]                                        ; $6d7f: $9e
	ld   [$caae], a                                  ; $6d80: $ea $ae $ca
	ld   c, [hl]                                     ; $6d83: $4e
	rst  $38                                         ; $6d84: $ff
	add  l                                           ; $6d85: $85
	rst  $38                                         ; $6d86: $ff
	ld   a, l                                        ; $6d87: $7d
	rst  $38                                         ; $6d88: $ff
	add  l                                           ; $6d89: $85
	rst  $38                                         ; $6d8a: $ff
	ld   a, h                                        ; $6d8b: $7c
	rst  $38                                         ; $6d8c: $ff
	add  h                                           ; $6d8d: $84
	rst  $38                                         ; $6d8e: $ff
	ld   a, l                                        ; $6d8f: $7d
	rst  $38                                         ; $6d90: $ff
	adc  c                                           ; $6d91: $89
	cp   $7b                                         ; $6d92: $fe $7b
	cp   $19                                         ; $6d94: $fe $19
	rst  $38                                         ; $6d96: $ff
	add  a                                           ; $6d97: $87
	cp   $41                                         ; $6d98: $fe $41
	cp   $a1                                         ; $6d9a: $fe $a1
	rst  $38                                         ; $6d9c: $ff
	sbc  b                                           ; $6d9d: $98
	rst  $38                                         ; $6d9e: $ff
	sub  h                                           ; $6d9f: $94
	ld   a, a                                        ; $6da0: $7f
	di                                               ; $6da1: $f3
	ccf                                              ; $6da2: $3f
	ldh  [$63], a                                    ; $6da3: $e0 $63
	cp   $87                                         ; $6da5: $fe $87
	cp   $0f                                         ; $6da7: $fe $0f
	ld   a, [$14ff]                                  ; $6da9: $fa $ff $14
	rst  $38                                         ; $6dac: $ff
	ld   h, h                                        ; $6dad: $64

jr_091_6dae:
	rst  $38                                         ; $6dae: $ff
	and  [hl]                                        ; $6daf: $a6
	ei                                               ; $6db0: $fb
	ld   a, $f1                                      ; $6db1: $3e $f1
	rra                                              ; $6db3: $1f
	ld   [$ee2e], a                                  ; $6db4: $ea $2e $ee
	ld   l, $fa                                      ; $6db7: $2e $fa
	ld   e, $f6                                      ; $6db9: $1e $f6
	ld   d, $f2                                      ; $6dbb: $16 $f2
	ld   [de], a                                     ; $6dbd: $12
	ldh  [c], a                                      ; $6dbe: $e2
	ld   [hl+], a                                    ; $6dbf: $22
	ldh  [c], a                                      ; $6dc0: $e2
	ld   [hl+], a                                    ; $6dc1: $22
	db $c2, $42 
	
	
RleXorTileData_FileLoadDisplay::
	db $27, $03, $84, $00, $02, $de, $00, $20, $80, $4c, $0f, $ec, $6d, $ce, $8e, $c6, $00, $e6, $a0, $7f, $cf, $ff, $0f, $b3, $43, $f3, $03, $80, $c1, $80, $f9, $01
	db $fd, $02, $86, $00, $01, $04, $00, $80, $0e, $03, $3b, $0a, $6a, $5f, $9d, $00, $01, $e0, $00, $80, $c0, $00, $10, $80, $e0, $80, $00, $07, $a0, $a8, $f0, $18
	db $e0, $dc, $d0, $fc, $81, $00, $02, $0f, $00, $0d, $81, $00, $00, $02, $97, $00, $06, $b6, $00, $88, $00, $14, $00, $2a, $a3, $00, $02, $30, $00, $30, $8b, $00
	db $02, $80, $00, $80, $9b, $00, $08, $16, $0c, $3e, $18, $64, $20, $08, $10, $60, $95, $00, $06, $04, $f8, $74, $70, $88, $00, $70, $ab, $00, $10, $30, $00, $40
	db $20, $ec, $60, $20, $78, $6c, $70, $68, $00, $f0, $00, $80, $00, $c0, $81, $80, $00, $40, $82, $00, $00, $80, $90, $00, $05, $03, $04, $03, $00, $0b, $00, $80
	db $08, $00, $0f, $95, $00, $04, $80, $00, $88, $00, $b7, $81, $00, $00, $bf, $97, $00, $06, $35, $00, $38, $50, $53, $01, $0f, $99, $00, $00, $7c, $81, $00, $00
	db $7c, $9d, $00, $80, $18, $80, $38, $80, $18, $80, $38, $80, $0c, $82, $00, $80, $06, $82, $0e, $80, $07, $80, $00, $82, $20, $82, $60, $80, $78, $80, $38, $82
	db $06, $82, $07, $80, $00, $80, $02, $80, $03, $80, $07, $80, $0e, $84, $00, $00, $01, $87, $00, $02, $1e, $00, $1e, $89, $00, $02, $3e, $00, $3f, $84, $00, $01
	db $80, $00, $80, $40, $81, $00, $04, $38, $28, $68, $00, $78, $87, $00, $04, $1c, $14, $74, $00, $fc, $84, $00, $15, $80, $00, $40, $58, $10, $44, $50, $20, $60
	db $2c, $08, $48, $50, $18, $48, $28, $24, $22, $00, $06, $14, $0c, $80, $00, $00, $80, $84, $00, $00, $01, $83, $00, $02, $3e, $00, $3c, $80, $00, $00, $04, $81
	db $00, $07, $08, $00, $02, $14, $00, $28, $10, $20, $81, $00, $00, $01, $83, $00, $00, $80, $81, $00, $05, $1c, $14, $74, $00, $3c, $00, $81, $20, $0a, $00, $50
	db $40, $4c, $04, $26, $00, $06, $14, $0c, $00, $81, $80, $83, $00, $02, $01, $00, $02, $80, $00, $0e, $04, $01, $08, $11, $10, $36, $28, $30, $40, $6e, $00, $16
	db $08, $0c, $10, $80, $00, $80, $0c, $02, $32, $00, $3f, $84, $00, $00, $80, $80, $40, $0d, $c0, $20, $00, $50, $cc, $04, $66, $00, $26, $14, $5c, $00, $60, $28
	db $80, $40, $06, $68, $30, $3c, $54, $74, $00, $fc, $83, $00, $07, $01, $02, $03, $06, $08, $0a, $00, $08, $88, $00, $80, $08, $06, $02, $0a, $04, $06, $07, $02
	db $03, $83, $00, $07, $80, $40, $c0, $60, $10, $50, $00, $10, $88, $00, $80, $10, $06, $40, $50, $20, $60, $e0, $40, $c0, $83, $00, $00, $01, $80, $00, $03, $02
	db $04, $00, $06, $8d, $00, $80, $02, $02, $06, $00, $07, $83, $00, $00, $80, $93, $00, $80, $40, $02, $60, $00, $e0, $83, $00, $05, $05, $06, $0f, $0a, $02, $08
	db $80, $02, $0a, $08, $0a, $04, $0e, $04, $00, $01, $00, $03, $01, $05, $80, $00, $01, $0a, $03, $81, $00, $00, $0f, $83, $00, $02, $a0, $60, $f0, $80, $50, $81
	db $00, $80, $50, $06, $d0, $80, $a0, $00, $40, $00, $80, $80, $00, $00, $10, $80, $20, $04, $f0, $10, $00, $10, $e0, $83, $00, $0a, $05, $06, $0f, $0a, $08, $02
	db $00, $02, $04, $0e, $04, $80, $00, $80, $01, $0b, $00, $0a, $0e, $08, $02, $00, $02, $00, $0a, $03, $06, $03, $83, $00, $02, $a0, $60, $f0, $80, $50, $83, $00
	db $06, $10, $40, $a0, $00, $e0, $40, $50, $84, $00, $03, $50, $c0, $60, $c0, $83, $00, $81, $01, $00, $00, $81, $02, $00, $01, $81, $04, $00, $02, $81, $08, $00
	db $04, $80, $00, $02, $07, $00, $0f, $81, $00, $02, $01, $00, $01, $83, $00, $00, $c0, $8f, $00, $02, $30, $00, $30, $81, $00, $02, $20, $00, $e0, $83, $00, $00
	db $07, $81, $00, $00, $03, $83, $00, $07, $03, $00, $03, $02, $06, $00, $06, $0a, $80, $02, $80, $08, $04, $00, $0a, $03, $06, $03, $83, $00, $01, $f0, $00, $80
	db $10, $00, $f0, $83, $00, $02, $e0, $20, $f0, $80, $50, $86, $00, $03, $50, $c0, $60, $c0, $83, $00, $07, $01, $02, $03, $06, $08, $0a, $00, $08, $80, $00, $00
	db $03, $80, $02, $02, $01, $00, $02, $82, $00, $80, $08, $04, $00, $0a, $03, $06, $03, $83, $00, $06, $a0, $60, $f0, $50, $10, $50, $20, $81, $00, $05, $a0, $60
	db $f0, $50, $40, $10, $82, $00, $80, $10, $04, $00, $50, $c0, $60, $c0, $83, $00, $01, $07, $08, $80, $00, $01, $03, $04, $81, $08, $83, $00, $80, $01, $01, $00
	db $01, $84, $00, $81, $01, $83, $00, $00, $f0, $81, $00, $03, $d0, $10, $00, $50, $81, $20, $00, $80, $80, $40, $01, $00, $40, $86, $00, $81, $80, $83, $00, $04
	db $07, $04, $0f, $0a, $00, $81, $0a, $02, $03, $09, $05, $80, $04, $04, $00, $03, $06, $00, $0a, $82, $08, $04, $04, $0e, $03, $06, $03, $83, $00, $11, $e0, $20
	db $f0, $50, $40, $10, $00, $10, $20, $60, $e0, $40, $00, $20, $00, $90, $00, $40, $80, $00, $81, $10, $03, $40, $e0, $40, $c0, $83, $00, $05, $05, $06, $0f, $0a
	db $02, $08, $82, $00, $80, $08, $04, $00, $0a, $03, $06, $03, $81, $00, $06, $0e, $0a, $08, $0a, $03, $06, $03, $83, $00, $05, $a0, $60, $f0, $50, $40, $10, $82
	db $00, $80, $40, $00, $c0, $80, $80, $02, $40, $80, $00, $80, $10, $06, $40, $50, $a0, $e0, $20, $c0, $80, $83, $00, $04, $0c, $04, $07, $00, $03, $85, $00, $02
	db $03, $00, $03, $85, $00, $04, $03, $00, $07, $04, $0c, $83, $00, $04, $20, $10, $c8, $08, $c0, $85, $00, $02, $c0, $00, $c0, $85, $00, $04, $c0, $00, $d0, $10
	db $30, $83, $00, $04, $0c, $04, $07, $00, $03, $81, $00, $02, $03, $00, $03, $81, $00, $03, $03, $00, $03, $00, $80, $14, $01, $00, $14, $80, $08, $02, $28, $10
	db $20, $83, $00, $04, $20, $10, $c8, $08, $c0, $81, $00, $02, $c0, $00, $c0, $81, $00, $02, $c0, $00, $c0, $83, $00, $04, $c0, $00, $c0, $50, $60, $83, $00, $00
	db $01, $82, $00, $00, $08, $81, $10, $00, $20, $80, $00, $80, $2a, $01, $38, $02, $80, $04, $08, $01, $05, $09, $08, $1e, $14, $3c, $00, $30, $84, $00, $11, $80
	db $00, $40, $58, $10, $14, $00, $22, $02, $14, $58, $30, $00, $80, $a0, $10, $90, $58, $80, $48, $05, $04, $02, $20, $02, $14, $08, $83, $00, $00, $01, $83, $00
	db $05, $08, $04, $70, $02, $72, $00, $80, $10, $01, $00, $14, $80, $20, $08, $28, $00, $50, $20, $46, $00, $06, $02, $03, $ff, $00, $ff, $00, $ff, $00, $ba, $00
	db $03, $1e, $02, $a3, $5f, $80, $1f, $03, $5f, $43, $7f, $7d, $80, $45, $01, $05, $15, $82, $55, $00, $11, $92, $ff, $00, $00, $80, $ff, $80, $00, $00, $ff, $91
	db $00, $02, $07, $00, $07, $8b, $00, $05, $c0, $40, $7a, $04, $40, $50, $8a, $54, $00, $ee, $86, $00, $80, $01, $00, $03, $81, $02, $01, $06, $07, $80, $00, $80
	db $1e, $0b, $7f, $60, $e0, $80, $9f, $17, $78, $67, $f7, $cf, $ef, $3f, $82, $00, $02, $7f, $4f, $df, $80, $50, $06, $10, $df, $d9, $6f, $ed, $ad, $d6, $82, $00
	db $81, $ff, $81, $00, $05, $ff, $c3, $ff, $e3, $e1, $3e, $82, $00, $80, $80, $0d, $e0, $20, $38, $08, $cc, $d4, $f6, $ea, $fb, $2f, $c0, $20, $00, $c0, $8a, $00
	db $00, $ff, $81, $00, $89, $ff, $02, $0f, $f7, $07, $80, $0f, $89, $ff, $80, $00, $01, $07, $00, $80, $03, $1a, $01, $05, $02, $00, $38, $00, $1e, $18, $0f, $2f
	db $0c, $0d, $87, $16, $c4, $84, $05, $84, $85, $84, $3e, $8f, $fd, $fe, $c2, $c6, $f9, $83, $00, $0a, $60, $00, $f6, $60, $7f, $f6, $82, $02, $fa, $02, $07, $85
	db $00, $00, $03, $80, $00, $05, $01, $31, $01, $fb, $30, $f9, $85, $00, $18, $06, $00, $fd, $04, $7e, $fe, $81, $00, $fa, $03, $01, $05, $00, $01, $00, $01, $fc
	db $01, $3e, $7f, $47, $7f, $78, $81, $3e, $81, $80, $0c, $00, $80, $00, $80, $3f, $80, $7c, $ff, $fb, $ff, $07, $c0, $3f, $83, $00, $0a, $6c, $00, $df, $6d, $47
	db $fe, $97, $3f, $70, $52, $ee, $80, $05, $81, $0d, $02, $d1, $01, $21, $80, $4d, $80, $ed, $80, $ce, $03, $c6, $e9, $ec, $9c, $8a, $d8, $03, $df, $46, $de, $fa
	db $80, $6e, $07, $2e, $3e, $36, $37, $17, $15, $17, $19, $80, $0f, $03, $ff, $2e, $ee, $d7, $84, $f7, $01, $77, $6b, $81, $7b, $06, $fb, $bb, $3b, $7b, $75, $7d
	db $fd, $81, $bd, $00, $fd, $81, $dd, $80, $cd, $02, $83, $ab, $cf, $80, $00, $8a, $80, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $04, $60, $6f, $3f, $b0, $97
	db $8d, $50, $02, $a7, $10, $0f, $8b, $00, $01, $25, $c2, $80, $42, $00, $40, $81, $42, $09, $00, $82, $62, $02, $00, $02, $00, $02, $0f, $07, $80, $04, $00, $1b
	db $81, $08, $01, $34, $10, $80, $11, $1f, $09, $00, $33, $01, $05, $f8, $33, $32, $b3, $33, $a5, $a1, $ea, $60, $41, $40, $d0, $c0, $a0, $80, $c3, $00, $fd, $01
	db $3f, $ff, $41, $81, $7d, $01, $87, $03, $81, $0a, $15, $06, $08, $01, $80, $01, $40, $81, $87, $83, $c1, $03, $0d, $07, $10, $97, $18, $0e, $ef, $d0, $30, $e0
	db $08, $80, $e8, $11, $f0, $74, $b8, $ba, $9c, $4d, $1e, $26, $8f, $24, $1f, $1c, $1b, $14, $2f, $05, $0d, $08, $80, $0f, $0d, $11, $81, $87, $c7, $07, $d7, $e6
	db $06, $7f, $bf, $ff, $8f, $b3, $03, $80, $f3, $01, $c1, $c0, $80, $f9, $01, $fd, $f0, $80, $0c, $03, $cc, $cf, $ef, $e7, $80, $07, $80, $a6, $01, $f6, $f2, $80
	db $eb, $01, $d3, $d0, $80, $00, $03, $7f, $fe, $9f, $fc, $80, $ee, $03, $6e, $7e, $36, $35, $80, $37, $01, $17, $e6, $80, $3c, $04, $bf, $b0, $33, $e2, $c2, $80
	db $d2, $80, $c2, $0d, $5b, $59, $7f, $6f, $35, $0b, $03, $c3, $4c, $c0, $61, $03, $fd, $e4, $80, $f4, $00, $7c, $81, $78, $00, $fc, $80, $00, $80, $80, $03, $c0
	db $40, $60, $a0, $81, $b0, $00, $d0, $81, $58, $02, $98, $df, $c0, $80, $e0, $89, $ff, $00, $e8, $89, $50, $80, $40, $05, $50, $10, $67, $6f, $cf, $df, $80, $9f
	db $88, $5f, $07, $e5, $02, $08, $0a, $0c, $06, $04, $05, $80, $14, $01, $18, $0a, $80, $28, $0a, $34, $10, $3c, $03, $0e, $06, $19, $08, $02, $04, $18, $85, $00
	db $02, $80, $00, $80, $85, $00, $81, $3f, $80, $2b, $0a, $21, $00, $0c, $26, $18, $54, $20, $28, $10, $60, $00, $81, $c0, $81, $40, $08, $a3, $1e, $7f, $3c, $38
	db $3a, $40, $04, $38, $85, $00, $08, $08, $07, $0a, $03, $04, $01, $02, $00, $01, $85, $00, $08, $a7, $c0, $86, $c0, $c1, $a0, $80, $40, $80, $85, $00, $00, $ff
	db $80, $c3, $80, $e7, $05, $66, $6f, $00, $f6, $04, $00, $80, $0e, $08, $3b, $0a, $6a, $a1, $f9, $f8, $76, $f6, $07, $80, $77, $08, $7f, $3b, $3f, $1c, $1f, $8f
	db $0f, $c7, $41, $80, $9b, $0a, $cb, $4a, $6b, $2f, $bd, $8d, $cd, $02, $f3, $0c, $3c, $80, $c3, $03, $61, $6f, $6d, $6c, $80, $a8, $01, $b8, $b0, $80, $a4, $01
	db $78, $7f, $80, $c0, $80, $ff, $01, $7c, $7d, $82, $bc, $05, $82, $80, $84, $78, $00, $ff, $80, $00, $80, $ff, $00, $5f, $81, $d8, $82, $58, $01, $38, $b0, $80
	db $30, $00, $f0, $80, $e0, $06, $c0, $3f, $fc, $fd, $3d, $fd, $c1, $80, $dd, $80, $c1, $01, $61, $6d, $80, $6c, $02, $ec, $e0, $00, $80, $ff, $00, $00, $80, $b7
	db $80, $98, $80, $8f, $00, $00, $80, $70, $80, $ff, $01, $00, $44, $87, $55, $08, $5d, $4d, $59, $5b, $33, $37, $cb, $03, $37, $81, $07, $82, $0f, $06, $08, $0f
	db $04, $06, $00, $06, $fc, $80, $ff, $80, $c0, $0b, $ff, $bb, $ff, $1b, $ff, $e2, $bf, $a6, $af, $42, $4f, $06, $80, $e4, $27, $00, $41, $c1, $8a, $ca, $c0, $a0
	db $ab, $4b, $01, $d1, $84, $d4, $c0, $ff, $f5, $1f, $80, $bf, $09, $b3, $02, $b3, $4c, $7f, $0c, $3f, $aa, $8f, $04, $ff, $f6, $af, $a4, $06, $05, $af, $8c, $a6
	db $84, $80, $2a, $03, $a2, $88, $ff, $d5, $80, $ff, $1a, $4c, $48, $0e, $00, $4e, $41, $0d, $00, $0d, $04, $03, $ad, $ff, $50, $ff, $7b, $c5, $01, $c0, $02, $cb
	db $09, $40, $11, $51, $d2, $92, $80, $ff, $0b, $24, $e4, $7f, $ff, $75, $b5, $24, $a4, $ae, $bf, $ee, $ff, $80, $bf, $80, $ff, $03, $df, $e1, $c1, $f0, $80, $f8
	db $00, $f0, $83, $f8, $01, $f0, $f8, $81, $f0, $80, $ff, $80, $7c, $8a, $00, $80, $7f, $8c, $00, $01, $ff, $00, $80, $ff, $80, $f0, $82, $fd, $88, $ff, $80, $49
	db $80, $c1, $80, $d5, $88, $ff, $00, $00, $80, $7f, $81, $00, $82, $ff, $02, $00, $7d, $7c, $80, $04, $01, $40, $50, $88, $54, $8e, $55, $00, $ee, $80, $03, $01
	db $01, $00, $80, $02, $01, $03, $02, $80, $03, $84, $00, $07, $ff, $5f, $50, $40, $48, $e8, $b8, $a8, $80, $18, $83, $00, $05, $3f, $e9, $a8, $5e, $40, $60, $88
	db $00, $03, $70, $df, $9f, $30, $8b, $00, $80, $ff, $8c, $00, $80, $ff, $8c, $00, $80, $ff, $8c, $00, $80, $ff, $8b, $00, $02, $20, $e0, $c0, $8d, $00, $20, $0c
	db $04, $07, $00, $03, $00, $03, $00, $03, $00, $03, $00, $70, $00, $7f, $00, $20, $10, $c8, $08, $c0, $00, $c0, $00, $c0, $00, $cc, $08, $0a, $00, $fe, $00, $1c
	db $80, $04, $1b, $00, $4c, $28, $0c, $42, $09, $01, $36, $15, $66, $49, $32, $00, $40, $20, $08, $04, $90, $82, $12, $a0, $60, $14, $a0, $20, $06, $42, $c3, $87
	db $5f, $80, $9f, $80, $df, $08, $7f, $6f, $3f, $37, $5f, $5b, $4f, $4d, $45, $87, $55, $00, $ee, $81, $00, $04, $09, $08, $0e, $00, $0e, $81, $00, $80, $02, $02
	db $00, $02, $03, $81, $00, $81, $80, $01, $00, $80, $83, $00, $80, $80, $80, $00, $11, $da, $48, $69, $00, $20, $00, $0c, $08, $1e, $20, $12, $10, $34, $09, $de
	db $00, $70, $10, $80, $00, $0a, $38, $08, $a8, $00, $18, $20, $78, $28, $68, $00, $f8, $81, $00, $04, $0c, $04, $07, $00, $03, $85, $00, $00, $0c, $81, $00, $04
	db $20, $10, $c8, $08, $c0, $85, $00, $00, $30, $81, $00, $04, $c2, $41, $7c, $00, $3c, $81, $00, $04, $3c, $00, $3c, $00, $c3, $83, $00, $80, $80, $8a, $00, $50
	db $6b, $26, $33, $02, $13, $02, $01, $00, $03, $02, $11, $00, $7c, $00, $44, $22, $99, $01, $98, $00, $98, $00, $98, $00, $98, $00, $36, $12, $e9, $00, $0c, $00
	db $0c, $00, $0c, $00, $08, $04, $0c, $00, $54, $18, $73, $00, $08, $04, $72, $82, $f0, $40, $64, $10, $a4, $24, $86, $40, $b6, $04, $cc, $00, $7f, $00, $04, $10
	db $54, $05, $04, $01, $40, $50, $42, $23, $46, $04, $0c, $00, $ef, $20, $e9, $92, $ac, $80, $20, $09, $00, $60, $08, $68, $24, $34, $14, $1c, $00, $02, $89, $01
	db $02, $02, $00, $01, $85, $00, $01, $ff, $00, $80, $ff, $81, $00, $80, $ff, $02, $00, $fc, $00, $80, $04, $02, $01, $05, $0b, $80, $0a, $05, $00, $14, $00, $68
	db $50, $20, $80, $00, $00, $80, $81, $40, $2d, $00, $20, $00, $98, $88, $8c, $00, $1c, $50, $30, $00, $d9, $00, $23, $00, $07, $28, $16, $00, $05, $02, $07, $00
	db $43, $41, $c1, $00, $f0, $10, $14, $0c, $06, $00, $82, $14, $08, $80, $00, $20, $00, $40, $80, $00, $0f, $00, $03, $85, $00, $08, $03, $00, $07, $04, $0c, $00
	db $f0, $00, $c0, $85, $00, $0a, $c0, $00, $d0, $10, $30, $00, $c3, $00, $3c, $00, $3c, $83, $00, $04, $3c, $00, $7d, $41, $c3, $8f, $00, $30, $6d, $00, $02, $00
	db $02, $00, $10, $00, $14, $04, $2c, $20, $60, $00, $01, $00, $fe, $00, $66, $02, $64, $00, $66, $02, $64, $00, $66, $02, $64, $00, $fe, $00, $ba, $54, $57, $56
	db $53, $5b, $79, $6d, $3c, $b6, $9e, $db, $cf, $ed, $e7, $f6, $0f, $81, $00, $03, $80, $00, $ff, $80, $80, $ff, $81, $00, $80, $ff, $01, $00, $ff, $83, $00, $01
	db $ff, $00, $80, $ff, $80, $00, $04, $0c, $ed, $f9, $1b, $fc, $83, $00, $01, $ff, $00, $80, $ff, $81, $00, $81, $ff, $00, $bb, $85, $55, $80, $d5, $06, $15, $35
	db $3d, $ed, $f9, $1b, $03, $82, $ff, $02, $01, $ff, $fe, $80, $03, $04, $fd, $01, $02, $00, $01, $8f, $00, $81, $ff, $00, $00, $80, $ff, $80, $00, $80, $ff, $81
	db $00, $80, $ff, $80, $00, $80, $ff, $02, $0f, $ff, $f0, $80, $1b, $80, $ec, $06, $03, $00, $04, $f0, $f8, $00, $0f, $86, $ff, $04, $7f, $ff, $bf, $ff, $df, $80
	db $5f, $00, $1f, $82, $ff, $02, $80, $ef, $6f, $81, $44, $82, $55, $01, $54, $10, $80, $ff, $02, $e0, $ff, $1f, $80, $b0, $80, $6f, $81, $00, $80, $ff, $80, $00
	db $80, $ff, $00, $00, $80, $ff, $80, $00, $80, $ff, $81, $00, $80, $ff, $80, $00, $80, $ff, $00, $00, $80, $ed, $80, $19, $80, $f1, $00, $00, $80, $0e, $80, $ff
	db $80, $00, $04, $3f, $bf, $bc, $bf, $83, $80, $bb, $80, $83, $06, $87, $b6, $37, $36, $37, $07, $45, $87, $54, $80, $50, $01, $54, $44, $80, $7c, $02, $02, $fb
	db $f8, $80, $fc, $89, $ff, $01, $00, $ff, $81, $00, $89, $ff, $02, $0f, $f7, $07, $80, $0f, $89, $ff, $80, $00, $01, $10, $08, $81, $04, $0d, $00, $20, $24, $0f
	db $28, $4e, $41, $00, $49, $79, $00, $40, $20, $00, $80, $10, $06, $00, $0e, $0a, $9a, $00, $0e, $00, $80, $08, $12, $f0, $00, $23, $11, $0d, $00, $09, $00, $09
	db $00, $09, $00, $09, $00, $09, $00, $36, $00, $38, $80, $00, $13, $40, $14, $00, $ea, $40, $39, $00, $a5, $42, $e6, $00, $a7, $00, $40, $02, $01, $00, $03, $04
	db $05, $81, $00, $80, $08, $0a, $18, $00, $fc, $14, $84, $02, $09, $08, $91, $02, $9c, $81, $00, $80, $20, $20, $60, $00, $3f, $00, $1e, $16, $30, $50, $08, $20
	db $06, $00, $1e, $00, $60, $04, $03, $00, $de, $00, $20, $00, $46, $20, $04, $24, $86, $82, $5b, $88, $e9, $42, $c4, $81, $00, $02, $01, $00, $03, $89, $01, $00
	db $b8, $89, $55, $80, $51, $02, $55, $45, $fe, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
	db $00, $ff, $00, $80, $00



	ld   d, h                                        ; $7a09: $54
	ld   bc, $0086                                   ; $7a0a: $01 $86 $00
	add  b                                           ; $7a0d: $80
	ld   [$1403], sp                                 ; $7a0e: $08 $03 $14
	inc  e                                           ; $7a11: $1c

jr_091_7a12:
	nop                                              ; $7a12: $00
	ld   [$0086], sp                                 ; $7a13: $08 $86 $00
	add  b                                           ; $7a16: $80
	ld   bc, $008e                                   ; $7a17: $01 $8e $00
	jr   jr_091_7a1d                                 ; $7a1a: $18 $01

	nop                                              ; $7a1c: $00

jr_091_7a1d:
	inc  bc                                          ; $7a1d: $03
	ld   bc, $0307                                   ; $7a1e: $01 $07 $03
	ld   c, $07                                      ; $7a21: $0e $07
	ld   l, $1f                                      ; $7a23: $2e $1f
	ld   e, a                                        ; $7a25: $5f
	ccf                                              ; $7a26: $3f
	rra                                              ; $7a27: $1f
	ccf                                              ; $7a28: $3f
	rst  $28                                         ; $7a29: $ef
	ld   a, a                                        ; $7a2a: $7f
	call c, $b3ff                                    ; $7a2b: $dc $ff $b3
	rst  $38                                         ; $7a2e: $ff
	ld   l, a                                        ; $7a2f: $6f
	rst  $38                                         ; $7a30: $ff
	adc  a                                           ; $7a31: $8f
	rst  $38                                         ; $7a32: $ff
	ld   h, b                                        ; $7a33: $60
	add  c                                           ; $7a34: $81
	rst  $38                                         ; $7a35: $ff
	ld   d, $df                                      ; $7a36: $16 $df
	rst  $38                                         ; $7a38: $ff
	ld   e, $ff                                      ; $7a39: $1e $ff
	cp   l                                           ; $7a3b: $bd
	cp   $b3                                         ; $7a3c: $fe $b3
	db   $fd                                         ; $7a3e: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a3f: $cf
	ei                                               ; $7a40: $fb
	rst  $38                                         ; $7a41: $ff
	rst  $30                                         ; $7a42: $f7
	rrca                                             ; $7a43: $0f
	rst  $38                                         ; $7a44: $ff
	db   $e3                                         ; $7a45: $e3
	rst  $38                                         ; $7a46: $ff
	sbc  h                                           ; $7a47: $9c
	add  e                                           ; $7a48: $83
	dec  sp                                          ; $7a49: $3b
	ld   a, h                                        ; $7a4a: $7c
	cp   d                                           ; $7a4b: $ba
	rst  $38                                         ; $7a4c: $ff
	cp   $83                                         ; $7a4d: $fe $83
	rst  $38                                         ; $7a4f: $ff
	jr   nz, jr_091_7a52                             ; $7a50: $20 $00

jr_091_7a52:
	cp   a                                           ; $7a52: $bf
	ccf                                              ; $7a53: $3f
	reti                                             ; $7a54: $d9


	sbc  b                                           ; $7a55: $98
	rst  $20                                         ; $7a56: $e7
	ld   b, [hl]                                     ; $7a57: $46
	rst  $30                                         ; $7a58: $f7
	or   a                                           ; $7a59: $b7
	ld   a, e                                        ; $7a5a: $7b
	ld   c, e                                        ; $7a5b: $4b
	cp   l                                           ; $7a5c: $bd
	inc  l                                           ; $7a5d: $2c
	rst  JumpTable                                         ; $7a5e: $df
	sbc  $df                                         ; $7a5f: $de $df
	ld   d, b                                        ; $7a61: $50
	add  b                                           ; $7a62: $80
	ld   l, h                                        ; $7a63: $6c
	ldh  a, [$ea]                                    ; $7a64: $f0 $ea
	db   $fc                                         ; $7a66: $fc
	ld   a, c                                        ; $7a67: $79
	cp   $9d                                         ; $7a68: $fe $9d
	rst  $38                                         ; $7a6a: $ff
	rra                                              ; $7a6b: $1f
	rst  $38                                         ; $7a6c: $ff
	add  e                                           ; $7a6d: $83
	rst  $38                                         ; $7a6e: $ff
	ld   a, l                                        ; $7a6f: $7d
	pop  bc                                          ; $7a70: $c1
	ccf                                              ; $7a71: $3f
	add  l                                           ; $7a72: $85
	nop                                              ; $7a73: $00
	dec  c                                           ; $7a74: $0d
	add  b                                           ; $7a75: $80
	nop                                              ; $7a76: $00
	ret  nz                                          ; $7a77: $c0

	add  b                                           ; $7a78: $80
	ldh  [$c0], a                                    ; $7a79: $e0 $c0
	ldh  a, [$e0]                                    ; $7a7b: $f0 $e0
	ldh  a, [c]                                      ; $7a7d: $f2
	ld   [bc], a                                     ; $7a7e: $02
	dec  b                                           ; $7a7f: $05
	rlca                                             ; $7a80: $07
	nop                                              ; $7a81: $00
	ld   [bc], a                                     ; $7a82: $02
	sbc  d                                           ; $7a83: $9a
	nop                                              ; $7a84: $00
	add  b                                           ; $7a85: $80
	inc  b                                           ; $7a86: $04
	adc  d                                           ; $7a87: $8a
	nop                                              ; $7a88: $00
	dec  bc                                          ; $7a89: $0b
	cp   $7f                                         ; $7a8a: $fe $7f
	ld   a, c                                        ; $7a8c: $79
	ld   a, a                                        ; $7a8d: $7f
	ld   [hl], a                                     ; $7a8e: $77
	ld   a, a                                        ; $7a8f: $7f
	ld   l, a                                        ; $7a90: $6f
	ld   a, a                                        ; $7a91: $7f
	ld   e, a                                        ; $7a92: $5f
	ld   a, a                                        ; $7a93: $7f
	ccf                                              ; $7a94: $3f
	ld   a, a                                        ; $7a95: $7f
	add  d                                           ; $7a96: $82
	ccf                                              ; $7a97: $3f
	adc  [hl]                                        ; $7a98: $8e
	rst  $38                                         ; $7a99: $ff
	ld   [bc], a                                     ; $7a9a: $02
	sub  c                                           ; $7a9b: $91
	sbc  a                                           ; $7a9c: $9f
	sbc  $81                                         ; $7a9d: $de $81
	rst  JumpTable                                         ; $7a9f: $df
	nop                                              ; $7aa0: $00
	rst  ToBoot                                         ; $7aa1: $c7
	add  e                                           ; $7aa2: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aa3: $cf
	db   $10                                         ; $7aa4: $10
	call z, $97cf                                    ; $7aa5: $cc $cf $97
	sbc  a                                           ; $7aa8: $9f
	di                                               ; $7aa9: $f3
	rst  $38                                         ; $7aaa: $ff
	rrca                                             ; $7aab: $0f
	rst  $38                                         ; $7aac: $ff
	rst  $30                                         ; $7aad: $f7
	rst  $38                                         ; $7aae: $ff
	ei                                               ; $7aaf: $fb
	rst  $38                                         ; $7ab0: $ff
	ei                                               ; $7ab1: $fb
	rst  $38                                         ; $7ab2: $ff
	add  a                                           ; $7ab3: $87
	rst  $38                                         ; $7ab4: $ff
	ld   a, a                                        ; $7ab5: $7f
	add  d                                           ; $7ab6: $82
	rst  $38                                         ; $7ab7: $ff

jr_091_7ab8:
	adc  c                                           ; $7ab8: $89
	nop                                              ; $7ab9: $00
	add  b                                           ; $7aba: $80
	inc  b                                           ; $7abb: $04
	adc  b                                           ; $7abc: $88
	nop                                              ; $7abd: $00
	jr   c, jr_091_7ac1                              ; $7abe: $38 $01

	nop                                              ; $7ac0: $00

jr_091_7ac1:
	ld   b, $03                                      ; $7ac1: $06 $03
	rrca                                             ; $7ac3: $0f
	ld   b, $1b                                      ; $7ac4: $06 $1b
	dec  c                                           ; $7ac6: $0d
	ld   [$3b0f], sp                                 ; $7ac7: $08 $0f $3b
	ld   e, $77                                      ; $7aca: $1e $77
	dec  a                                           ; $7acc: $3d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7acd: $cf
	ld   [hl], e                                     ; $7ace: $73
	ccf                                              ; $7acf: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad0: $cf
	db   $fc                                         ; $7ad1: $fc
	cp   a                                           ; $7ad2: $bf
	db   $e3                                         ; $7ad3: $e3
	ld   a, h                                        ; $7ad4: $7c
	rst  JumpTable                                         ; $7ad5: $df
	di                                               ; $7ad6: $f3
	ld   a, b                                        ; $7ad7: $78
	ld   a, a                                        ; $7ad8: $7f
	rst  ToBoot                                         ; $7ad9: $c7
	rst  $38                                         ; $7ada: $ff
	rst  $28                                         ; $7adb: $ef
	db   $fc                                         ; $7adc: $fc
	call c, $3cf3                                    ; $7add: $dc $f3 $3c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae0: $cf
	rst  $38                                         ; $7ae1: $ff
	ld   sp, $c3f1                                   ; $7ae2: $31 $f1 $c3
	ret  nz                                          ; $7ae5: $c0

	ld   e, $e5                                      ; $7ae6: $1e $e5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ae8: $cf
	push bc                                          ; $7ae9: $c5
	ccf                                              ; $7aea: $3f
	ld   sp, $3bff                                   ; $7aeb: $31 $ff $3b
	rst  $38                                         ; $7aee: $ff
	cp   b                                           ; $7aef: $b8
	rst  $38                                         ; $7af0: $ff
	cp   a                                           ; $7af1: $bf
	ld   hl, sp+$3f                                  ; $7af2: $f8 $3f
	rst  ToBoot                                         ; $7af4: $c7
	rst  $38                                         ; $7af5: $ff
	inc  sp                                          ; $7af6: $33
	di                                               ; $7af7: $f3
	add  e                                           ; $7af8: $83
	rst  $38                                         ; $7af9: $ff
	inc  bc                                          ; $7afa: $03
	rrca                                             ; $7afb: $0f
	rst  $38                                         ; $7afc: $ff
	rst  $30                                         ; $7afd: $f7
	rlca                                             ; $7afe: $07
	add  h                                           ; $7aff: $84
	rst  $38                                         ; $7b00: $ff
	nop                                              ; $7b01: $00
	ret  nz                                          ; $7b02: $c0

	add  d                                           ; $7b03: $82
	rst  $28                                         ; $7b04: $ef
	inc  bc                                          ; $7b05: $03
	xor  $ce                                         ; $7b06: $ee $ce
	push af                                          ; $7b08: $f5
	db   $f4                                         ; $7b09: $f4
	add  b                                           ; $7b0a: $80
	di                                               ; $7b0b: $f3
	ld   bc, $f5f7                                   ; $7b0c: $01 $f7 $f5
	add  c                                           ; $7b0f: $81
	rst  $30                                         ; $7b10: $f7
	ld   b, $28                                      ; $7b11: $06 $28
	cp   [hl]                                        ; $7b13: $be
	db   $fc                                         ; $7b14: $fc
	ld   a, a                                        ; $7b15: $7f
	ld   a, [hl]                                     ; $7b16: $7e
	rst  $38                                         ; $7b17: $ff
	ld   a, a                                        ; $7b18: $7f
	add  c                                           ; $7b19: $81
	rst  $38                                         ; $7b1a: $ff
	ld   d, $f6                                      ; $7b1b: $16 $f6
	rst  $38                                         ; $7b1d: $ff
	or   d                                           ; $7b1e: $b2
	rst  $38                                         ; $7b1f: $ff
	sbc  l                                           ; $7b20: $9d
	rst  $38                                         ; $7b21: $ff
	ld   de, $5c70                                   ; $7b22: $11 $70 $5c
	cp   b                                           ; $7b25: $b8
	cp   d                                           ; $7b26: $ba
	call c, $dc48                                    ; $7b27: $dc $48 $dc
	sbc  l                                           ; $7b2a: $9d
	xor  $e4                                         ; $7b2b: $ee $e4
	or   $32                                         ; $7b2d: $f6 $32
	or   $f4                                         ; $7b2f: $f6 $f4
	ei                                               ; $7b31: $fb
	inc  b                                           ; $7b32: $04
	add  a                                           ; $7b33: $87
	nop                                              ; $7b34: $00
	add  b                                           ; $7b35: $80
	jr   nz, jr_091_7ab8                             ; $7b36: $20 $80

	nop                                              ; $7b38: $00
	inc  bc                                          ; $7b39: $03
	add  b                                           ; $7b3a: $80
	nop                                              ; $7b3b: $00
	add  b                                           ; $7b3c: $80
	nop                                              ; $7b3d: $00
	add  b                                           ; $7b3e: $80
	db   $10                                         ; $7b3f: $10
	adc  h                                           ; $7b40: $8c
	nop                                              ; $7b41: $00
	add  b                                           ; $7b42: $80
	ld   bc, $008a                                   ; $7b43: $01 $8a $00
	nop                                              ; $7b46: $00
	ldh  [$80], a                                    ; $7b47: $e0 $80
	rra                                              ; $7b49: $1f
	ld   [$8f9f], sp                                 ; $7b4a: $08 $9f $8f
	ld   c, a                                        ; $7b4d: $4f
	rrca                                             ; $7b4e: $0f
	ld   l, a                                        ; $7b4f: $6f
	daa                                              ; $7b50: $27
	scf                                              ; $7b51: $37
	inc  de                                          ; $7b52: $13
	inc  sp                                          ; $7b53: $33
	add  b                                           ; $7b54: $80
	ld   de, $1001                                   ; $7b55: $11 $01 $10
	nop                                              ; $7b58: $00
	add  [hl]                                        ; $7b59: $86
	rst  $38                                         ; $7b5a: $ff
	add  b                                           ; $7b5b: $80
	cp   $82                                         ; $7b5c: $fe $82
	db   $fc                                         ; $7b5e: $fc
	add  b                                           ; $7b5f: $80
	jr   c, jr_091_7b65                              ; $7b60: $38 $03

	sub  e                                           ; $7b62: $93
	sbc  a                                           ; $7b63: $9f
	sbc  e                                           ; $7b64: $9b

jr_091_7b65:
	sbc  a                                           ; $7b65: $9f
	add  b                                           ; $7b66: $80
	rra                                              ; $7b67: $1f
	nop                                              ; $7b68: $00
	daa                                              ; $7b69: $27
	add  c                                           ; $7b6a: $81
	ccf                                              ; $7b6b: $3f
	inc  bc                                          ; $7b6c: $03
	ld   c, a                                        ; $7b6d: $4f
	ld   a, a                                        ; $7b6e: $7f
	ld   e, a                                        ; $7b6f: $5f
	ld   a, a                                        ; $7b70: $7f
	add  b                                           ; $7b71: $80
	ldh  [$8a], a                                    ; $7b72: $e0 $8a
	rst  $38                                         ; $7b74: $ff
	add  b                                           ; $7b75: $80
	cp   $02                                         ; $7b76: $fe $02
	ld   bc, $fe00                                   ; $7b78: $01 $00 $fe
	add  a                                           ; $7b7b: $87
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	ld   bc, $0081                                   ; $7b7e: $01 $81 $00
	ld   a, [hl+]                                    ; $7b81: $2a
	ld   [bc], a                                     ; $7b82: $02
	ld   bc, $1b2e                                   ; $7b83: $01 $2e $1b
	ld   l, h                                        ; $7b86: $6c
	scf                                              ; $7b87: $37
	dec  de                                          ; $7b88: $1b
	ld   l, $e7                                      ; $7b89: $2e $e7
	ld   l, l                                        ; $7b8b: $6d
	cpl                                              ; $7b8c: $2f
	ld   e, e                                        ; $7b8d: $5b
	cp   $b7                                         ; $7b8e: $fe $b7
	dec  d                                           ; $7b90: $15
	xor  a                                           ; $7b91: $af
	db   $e3                                         ; $7b92: $e3
	ld   l, a                                        ; $7b93: $6f
	jr   z, jr_091_7b65                              ; $7b94: $28 $cf

	cp   $3e                                         ; $7b96: $fe $3e

jr_091_7b98:
	ld   [hl], c                                     ; $7b98: $71
	ld   sp, hl                                      ; $7b99: $f9
	ld   l, a                                        ; $7b9a: $6f
	rst  $30                                         ; $7b9b: $f7
	sbc  h                                           ; $7b9c: $9c
	xor  $7b                                         ; $7b9d: $ee $7b
	db   $dd                                         ; $7b9f: $dd
	rst  $30                                         ; $7ba0: $f7
	cp   e                                           ; $7ba1: $bb
	rst  $28                                         ; $7ba2: $ef
	ld   [hl], a                                     ; $7ba3: $77
	add  c                                           ; $7ba4: $81
	sbc  c                                           ; $7ba5: $99
	ld   l, a                                        ; $7ba6: $6f
	ld   h, h                                        ; $7ba7: $64
	sbc  h                                           ; $7ba8: $9c
	ret  nc                                          ; $7ba9: $d0

	ld   [hl], b                                     ; $7baa: $70
	cpl                                              ; $7bab: $2f

jr_091_7bac:
	rst  $28                                         ; $7bac: $ef
	add  b                                           ; $7bad: $80
	cp   $80                                         ; $7bae: $fe $80
	db   $fd                                         ; $7bb0: $fd
	inc  bc                                          ; $7bb1: $03
	rst  $38                                         ; $7bb2: $ff
	sbc  [hl]                                        ; $7bb3: $9e
	rst  $38                                         ; $7bb4: $ff
	sbc  [hl]                                        ; $7bb5: $9e
	add  b                                           ; $7bb6: $80
	rrca                                             ; $7bb7: $0f
	add  b                                           ; $7bb8: $80
	ccf                                              ; $7bb9: $3f
	add  b                                           ; $7bba: $80
	ld   bc, $0f09                                   ; $7bbb: $01 $09 $0f
	inc  c                                           ; $7bbe: $0c
	ld   a, [hl]                                     ; $7bbf: $7e
	ld   h, e                                        ; $7bc0: $63
	pop  af                                          ; $7bc1: $f1
	sub  a                                           ; $7bc2: $97
	rst  ToBoot                                         ; $7bc3: $c7
	ld   c, a                                        ; $7bc4: $4f
	rrca                                             ; $7bc5: $0f
	rst  $38                                         ; $7bc6: $ff
	add  c                                           ; $7bc7: $81
	nop                                              ; $7bc8: $00
	inc  c                                           ; $7bc9: $0c
	ld   c, $00                                      ; $7bca: $0e $00
	ld   a, [hl]                                     ; $7bcc: $7e
	nop                                              ; $7bcd: $00
	pop  af                                          ; $7bce: $f1
	nop                                              ; $7bcf: $00
	add  d                                           ; $7bd0: $82
	ld   bc, $030d                                   ; $7bd1: $01 $0d $03
	ld   d, e                                        ; $7bd4: $53
	rrca                                             ; $7bd5: $0f
	ld   d, b                                        ; $7bd6: $50
	add  c                                           ; $7bd7: $81
	nop                                              ; $7bd8: $00
	add  hl, bc                                      ; $7bd9: $09
	inc  c                                           ; $7bda: $0c
	nop                                              ; $7bdb: $00
	ld   e, b                                        ; $7bdc: $58
	nop                                              ; $7bdd: $00
	ld   hl, sp+$00                                  ; $7bde: $f8 $00
	ld   b, $00                                      ; $7be0: $06 $00
	ld   a, h                                        ; $7be2: $7c
	xor  b                                           ; $7be3: $a8
	add  b                                           ; $7be4: $80
	db   $fc                                         ; $7be5: $fc
	ld   [$ff4d], sp                                 ; $7be6: $08 $4d $ff
	ld   d, e                                        ; $7be9: $53
	ld   a, a                                        ; $7bea: $7f
	ccf                                              ; $7beb: $3f
	cp   a                                           ; $7bec: $bf
	cpl                                              ; $7bed: $2f
	cp   a                                           ; $7bee: $bf
	sub  $81                                         ; $7bef: $d6 $81
	rst  JumpTable                                         ; $7bf1: $df
	db   $10                                         ; $7bf2: $10
	set  5, a                                        ; $7bf3: $cb $ef
	call $00ef                                       ; $7bf5: $cd $ef $00
	db   $fd                                         ; $7bf8: $fd
	push af                                          ; $7bf9: $f5
	db   $fd                                         ; $7bfa: $fd
	reti                                             ; $7bfb: $d9


	cp   $ce                                         ; $7bfc: $fe $ce
	ld   a, [hl]                                     ; $7bfe: $7e
	ld   a, h                                        ; $7bff: $7c
	cp   a                                           ; $7c00: $bf
	xor  a                                           ; $7c01: $af
	cp   a                                           ; $7c02: $bf
	ld   a, $80                                      ; $7c03: $3e $80
	rst  JumpTable                                         ; $7c05: $df
	ld   bc, $af5f                                   ; $7c06: $01 $5f $af
	adc  c                                           ; $7c09: $89
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	ret  nz                                          ; $7c0c: $c0

	add  c                                           ; $7c0d: $81
	add  b                                           ; $7c0e: $80
	nop                                              ; $7c0f: $00
	ret  nz                                          ; $7c10: $c0

	sub  l                                           ; $7c11: $95
	nop                                              ; $7c12: $00
	add  d                                           ; $7c13: $82
	jr   jr_091_7b98                                 ; $7c14: $18 $82

	nop                                              ; $7c16: $00
	ld   bc, $00ff                                   ; $7c17: $01 $ff $00
	add  b                                           ; $7c1a: $80
	add  b                                           ; $7c1b: $80
	add  d                                           ; $7c1c: $82
	ret  nz                                          ; $7c1d: $c0

	add  h                                           ; $7c1e: $84
	ldh  [$80], a                                    ; $7c1f: $e0 $80
	jr   nz, jr_091_7bac                             ; $7c21: $20 $89

	nop                                              ; $7c23: $00
	dec  b                                           ; $7c24: $05
	rlca                                             ; $7c25: $07
	nop                                              ; $7c26: $00
	rrca                                             ; $7c27: $0f
	rlca                                             ; $7c28: $07
	rra                                              ; $7c29: $1f
	db   $10                                         ; $7c2a: $10
	add  h                                           ; $7c2b: $84
	nop                                              ; $7c2c: $00
	dec  b                                           ; $7c2d: $05
	rra                                              ; $7c2e: $1f
	jr   @+$01                                       ; $7c2f: $18 $ff

	add  a                                           ; $7c31: $87
	rst  $38                                         ; $7c32: $ff
	ld   a, [hl]                                     ; $7c33: $7e
	add  c                                           ; $7c34: $81
	rst  $38                                         ; $7c35: $ff
	inc  b                                           ; $7c36: $04
	ld   [bc], a                                     ; $7c37: $02
	nop                                              ; $7c38: $00
	inc  b                                           ; $7c39: $04
	nop                                              ; $7c3a: $00
	ld   [$0080], sp                                 ; $7c3b: $08 $80 $00
	add  hl, bc                                      ; $7c3e: $09
	ret  nz                                          ; $7c3f: $c0

jr_091_7c40:
	sbc  b                                           ; $7c40: $98

Jump_091_7c41:
	ret  nz                                          ; $7c41: $c0

	xor  [hl]                                        ; $7c42: $ae
	add  b                                           ; $7c43: $80
	rlca                                             ; $7c44: $07
	add  b                                           ; $7c45: $80
	add  c                                           ; $7c46: $81
	add  b                                           ; $7c47: $80
	jp   $0182                                       ; $7c48: $c3 $82 $01


	add  c                                           ; $7c4b: $81
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	ld   [bc], a                                     ; $7c4e: $02
	add  l                                           ; $7c4f: $85
	nop                                              ; $7c50: $00
	ld   b, $f6                                      ; $7c51: $06 $f6
	ld   e, a                                        ; $7c53: $5f
	ld   b, a                                        ; $7c54: $47
	ld   e, [hl]                                     ; $7c55: $5e
	sbc  $3e                                         ; $7c56: $de $3e
	ccf                                              ; $7c58: $3f
	add  c                                           ; $7c59: $81
	dec  a                                           ; $7c5a: $3d
	nop                                              ; $7c5b: $00
	ld   l, $83                                      ; $7c5c: $2e $83
	dec  hl                                          ; $7c5e: $2b
	ld   [$6fef], sp                                 ; $7c5f: $08 $ef $6f
	and  l                                           ; $7c62: $a5
	rst  $28                                         ; $7c63: $ef
	db   $eb                                         ; $7c64: $eb
	rst  JumpTable                                         ; $7c65: $df
	ld   e, a                                        ; $7c66: $5f
	rst  JumpTable                                         ; $7c67: $df
	rst  ToBoot                                         ; $7c68: $c7
	add  b                                           ; $7c69: $80
	rst  JumpTable                                         ; $7c6a: $df
	add  c                                           ; $7c6b: $81
	cp   a                                           ; $7c6c: $bf
	inc  de                                          ; $7c6d: $13
	xor  a                                           ; $7c6e: $af
	cp   a                                           ; $7c6f: $bf
	add  e                                           ; $7c70: $83
	cp   $b2                                         ; $7c71: $fe $b2
	db   $fd                                         ; $7c73: $fd
	ld   c, l                                        ; $7c74: $4d
	ld   a, [$f5bb]                                  ; $7c75: $fa $bb $f5
	ld   [hl], a                                     ; $7c78: $77
	db   $eb                                         ; $7c79: $eb
	xor  $d7                                         ; $7c7a: $ee $d7
	call c, $abaf                                    ; $7c7c: $dc $af $ab
	xor  a                                           ; $7c7f: $af
	jr   jr_091_7c40                                 ; $7c80: $18 $be

	add  b                                           ; $7c82: $80
	ld   a, h                                        ; $7c83: $7c
	inc  e                                           ; $7c84: $1c
	ld   hl, sp-$06                                  ; $7c85: $f8 $fa
	ldh  a, [c]                                      ; $7c87: $f2
	or   $e6                                         ; $7c88: $f6 $e6
	xor  $ce                                         ; $7c8a: $ee $ce
	db   $dd                                         ; $7c8c: $dd

jr_091_7c8d:
	sbc  l                                           ; $7c8d: $9d
	cp   l                                           ; $7c8e: $bd
	dec  a                                           ; $7c8f: $3d
	dec  e                                           ; $7c90: $1d
	ld   e, l                                        ; $7c91: $5d
	rra                                              ; $7c92: $1f
	sbc  $3f                                         ; $7c93: $de $3f
	cp   a                                           ; $7c95: $bf
	ld   a, a                                        ; $7c96: $7f
	ld   a, l                                        ; $7c97: $7d
	rst  $38                                         ; $7c98: $ff
	ei                                               ; $7c99: $fb
	rst  $38                                         ; $7c9a: $ff
	rst  $30                                         ; $7c9b: $f7
	rst  $38                                         ; $7c9c: $ff
	rst  $28                                         ; $7c9d: $ef
	rst  $38                                         ; $7c9e: $ff
	sbc  a                                           ; $7c9f: $9f
	rst  $38                                         ; $7ca0: $ff
	ld   a, l                                        ; $7ca1: $7d
	add  l                                           ; $7ca2: $85
	db   $fc                                         ; $7ca3: $fc
	ld   [bc], a                                     ; $7ca4: $02
	ld   a, [$f9f8]                                  ; $7ca5: $fa $f8 $f9
	add  e                                           ; $7ca8: $83
	ld   hl, sp+$00                                  ; $7ca9: $f8 $00
	push af                                          ; $7cab: $f5
	add  e                                           ; $7cac: $83
	rst  $20                                         ; $7cad: $e7
	ld   bc, $e2eb                                   ; $7cae: $01 $eb $e2
	add  c                                           ; $7cb1: $81
	ldh  [$82], a                                    ; $7cb2: $e0 $82
	ld   b, c                                        ; $7cb4: $41
	rlca                                             ; $7cb5: $07
	ld   bc, $2f3f                                   ; $7cb6: $01 $3f $2f
	rrca                                             ; $7cb9: $0f
	xor  l                                           ; $7cba: $ad
	cp   l                                           ; $7cbb: $bd
	sub  l                                           ; $7cbc: $95
	sub  c                                           ; $7cbd: $91
	add  b                                           ; $7cbe: $80
	call nc, $0603                                   ; $7cbf: $d4 $03 $06
	ld   c, $0a                                      ; $7cc2: $0e $0a
	ld   [$0a80], sp                                 ; $7cc4: $08 $80 $0a
	inc  bc                                          ; $7cc7: $03
	dec  bc                                          ; $7cc8: $0b
	ld   c, l                                        ; $7cc9: $4d
	add  b                                           ; $7cca: $80
	ldh  [$81], a                                    ; $7ccb: $e0 $81
	ret  nz                                          ; $7ccd: $c0

	nop                                              ; $7cce: $00
	ldh  a, [$81]                                    ; $7ccf: $f0 $81
	ldh  [rSB], a                                    ; $7cd1: $e0 $01
	ld   hl, sp-$10                                  ; $7cd3: $f8 $f0
	add  d                                           ; $7cd5: $82
	ret  nc                                          ; $7cd6: $d0

	nop                                              ; $7cd7: $00
	ld   hl, sp-$75                                  ; $7cd8: $f8 $8b
	nop                                              ; $7cda: $00
	add  b                                           ; $7cdb: $80
	add  b                                           ; $7cdc: $80
	adc  [hl]                                        ; $7cdd: $8e
	nop                                              ; $7cde: $00
	ld   bc, $20df                                   ; $7cdf: $01 $df $20
	add  b                                           ; $7ce2: $80
	nop                                              ; $7ce3: $00
	add  b                                           ; $7ce4: $80
	inc  c                                           ; $7ce5: $0c
	add  b                                           ; $7ce6: $80
	add  hl, sp                                      ; $7ce7: $39
	add  b                                           ; $7ce8: $80
	ld   [hl], c                                     ; $7ce9: $71
	add  d                                           ; $7cea: $82
	db   $e3                                         ; $7ceb: $e3
	add  b                                           ; $7cec: $80
	rst  $20                                         ; $7ced: $e7
	add  b                                           ; $7cee: $80
	rra                                              ; $7cef: $1f
	add  [hl]                                        ; $7cf0: $86
	cp   a                                           ; $7cf1: $bf
	add  h                                           ; $7cf2: $84
	ccf                                              ; $7cf3: $3f
	nop                                              ; $7cf4: $00
	cp   $87                                         ; $7cf5: $fe $87
	rst  $38                                         ; $7cf7: $ff
	nop                                              ; $7cf8: $00
	cp   $83                                         ; $7cf9: $fe $83
	rst  $38                                         ; $7cfb: $ff
	nop                                              ; $7cfc: $00
	cp   a                                           ; $7cfd: $bf
	adc  l                                           ; $7cfe: $8d
	add  b                                           ; $7cff: $80
	nop                                              ; $7d00: $00
	ret  nz                                          ; $7d01: $c0

	add  c                                           ; $7d02: $81
	nop                                              ; $7d03: $00
	add  d                                           ; $7d04: $82
	jr   nc, jr_091_7c8d                             ; $7d05: $30 $86

	nop                                              ; $7d07: $00
	ld   [$093e], sp                                 ; $7d08: $08 $3e $09
	add  hl, hl                                      ; $7d0b: $29
	add  hl, bc                                      ; $7d0c: $09
	jr   jr_091_7d11                                 ; $7d0d: $18 $02

	ld   a, [bc]                                     ; $7d0f: $0a
	ld   [bc], a                                     ; $7d10: $02

jr_091_7d11:
	ld   b, $81                                      ; $7d11: $06 $81
	ld   bc, $0300                                   ; $7d13: $01 $00 $03
	add  c                                           ; $7d16: $81
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	ld   b, c                                        ; $7d19: $41
	add  c                                           ; $7d1a: $81
	nop                                              ; $7d1b: $00
	inc  c                                           ; $7d1c: $0c
	ld   h, c                                        ; $7d1d: $61
	nop                                              ; $7d1e: $00
	add  b                                           ; $7d1f: $80

jr_091_7d20:
	nop                                              ; $7d20: $00
	ld   [hl], b                                     ; $7d21: $70
	nop                                              ; $7d22: $00
	jr   z, jr_091_7d65                              ; $7d23: $28 $40

	call nz, $2a28                                   ; $7d25: $c4 $28 $2a
	jr   z, jr_091_7d20                              ; $7d28: $28 $f6

	add  c                                           ; $7d2a: $81
	nop                                              ; $7d2b: $00
	ld   [bc], a                                     ; $7d2c: $02
	ldh  [c], a                                      ; $7d2d: $e2
	ld   bc, $8105                                   ; $7d2e: $01 $05 $81
	inc  bc                                          ; $7d31: $03
	nop                                              ; $7d32: $00
	ld   a, [bc]                                     ; $7d33: $0a

jr_091_7d34:
	add  c                                           ; $7d34: $81
	rlca                                             ; $7d35: $07
	ld   [bc], a                                     ; $7d36: $02
	dec  b                                           ; $7d37: $05
	rlca                                             ; $7d38: $07
	or   h                                           ; $7d39: $b4
	add  b                                           ; $7d3a: $80
	push hl                                          ; $7d3b: $e5
	dec  c                                           ; $7d3c: $0d
	ld   a, b                                        ; $7d3d: $78
	ld   a, [hl]                                     ; $7d3e: $7e
	ld   c, $09                                      ; $7d3f: $0e $09
	add  e                                           ; $7d41: $83
	ld   d, d                                        ; $7d42: $52
	ret  nz                                          ; $7d43: $c0

	sub  b                                           ; $7d44: $90
	ret  z                                           ; $7d45: $c8

	xor  c                                           ; $7d46: $a9
	ldh  [c], a                                      ; $7d47: $e2
	ld   a, [$fef8]                                  ; $7d48: $fa $f8 $fe
	add  c                                           ; $7d4b: $81
	rst  $38                                         ; $7d4c: $ff
	ld   c, $3f                                      ; $7d4d: $0e $3f

jr_091_7d4f:
	ld   a, a                                        ; $7d4f: $7f
	ld   e, a                                        ; $7d50: $5f
	cp   a                                           ; $7d51: $bf
	ld   l, a                                        ; $7d52: $6f
	rst  JumpTable                                         ; $7d53: $df
	ld   d, a                                        ; $7d54: $57
	ld   l, a                                        ; $7d55: $6f

jr_091_7d56:
	dec  bc                                          ; $7d56: $0b
	scf                                              ; $7d57: $37
	sub  l                                           ; $7d58: $95
	dec  sp                                          ; $7d59: $3b
	ld   b, b                                        ; $7d5a: $40
	ld   hl, sp-$0c                                  ; $7d5b: $f8 $f4
	add  c                                           ; $7d5d: $81
	ldh  a, [rP1]                                    ; $7d5e: $f0 $00
	di                                               ; $7d60: $f3
	add  a                                           ; $7d61: $87
	ldh  a, [rP1]                                    ; $7d62: $f0 $00
	db   $fd                                         ; $7d64: $fd

jr_091_7d65:
	add  b                                           ; $7d65: $80
	ld   [hl-], a                                    ; $7d66: $32
	add  d                                           ; $7d67: $82
	ld   [hl], d                                     ; $7d68: $72
	add  c                                           ; $7d69: $81
	ld   a, [$da00]                                  ; $7d6a: $fa $00 $da
	add  c                                           ; $7d6d: $81
	ld   a, [$ba04]                                  ; $7d6e: $fa $04 $ba
	ld   a, [$a59f]                                  ; $7d71: $fa $9f $a5
	and  h                                           ; $7d74: $a4
	add  c                                           ; $7d75: $81
	or   l                                           ; $7d76: $b5
	nop                                              ; $7d77: $00
	or   a                                           ; $7d78: $b7
	add  c                                           ; $7d79: $81
	or   $00                                         ; $7d7a: $f6 $00
	or   [hl]                                        ; $7d7c: $b6
	add  b                                           ; $7d7d: $80
	or   $81                                         ; $7d7e: $f6 $81
	cp   $00                                         ; $7d80: $fe $00
	adc  e                                           ; $7d82: $8b
	add  c                                           ; $7d83: $81
	add  sp, $06                                     ; $7d84: $e8 $06
	ret  z                                           ; $7d86: $c8

	add  sp, -$12                                    ; $7d87: $e8 $ee
	db   $ec                                         ; $7d89: $ec
	ld   l, h                                        ; $7d8a: $6c
	db   $ec                                         ; $7d8b: $ec
	db   $e4                                         ; $7d8c: $e4
	add  c                                           ; $7d8d: $81
	db   $f4                                         ; $7d8e: $f4
	ld   [bc], a                                     ; $7d8f: $02
	or   h                                           ; $7d90: $b4
	ld   [hl], h                                     ; $7d91: $74
	xor  [hl]                                        ; $7d92: $ae
	sub  l                                           ; $7d93: $95
	nop                                              ; $7d94: $00
	add  b                                           ; $7d95: $80
	ld   [$1403], sp                                 ; $7d96: $08 $03 $14
	inc  e                                           ; $7d99: $1c
	nop                                              ; $7d9a: $00
	ld   [$0081], sp                                 ; $7d9b: $08 $81 $00
	adc  l                                           ; $7d9e: $8d
	rst  $38                                         ; $7d9f: $ff
	add  [hl]                                        ; $7da0: $86
	ldh  a, [$84]                                    ; $7da1: $f0 $84
	ld   hl, sp-$80                                  ; $7da3: $f8 $80
	db   $fc                                         ; $7da5: $fc
	ld   bc, $0200                                   ; $7da6: $01 $00 $02
	add  b                                           ; $7da9: $80
	nop                                              ; $7daa: $00
	ld   b, $04                                      ; $7dab: $06 $04
	nop                                              ; $7dad: $00
	ld   [$1100], sp                                 ; $7dae: $08 $00 $11
	nop                                              ; $7db1: $00
	jr   nz, jr_091_7d34                             ; $7db2: $20 $80

	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	ld   b, b                                        ; $7db6: $40
	add  b                                           ; $7db7: $80
	nop                                              ; $7db8: $00
	ld   [bc], a                                     ; $7db9: $02
	adc  a                                           ; $7dba: $8f
	ld   [bc], a                                     ; $7dbb: $02
	ld   [de], a                                     ; $7dbc: $12
	add  c                                           ; $7dbd: $81
	inc  bc                                          ; $7dbe: $03
	ld   a, [bc]                                     ; $7dbf: $0a
	inc  de                                          ; $7dc0: $13
	ld   bc, $0181                                   ; $7dc1: $01 $81 $01
	add  hl, bc                                      ; $7dc4: $09
	ld   bc, $00c5                                   ; $7dc5: $01 $c5 $00
	ld   h, e                                        ; $7dc8: $63
	nop                                              ; $7dc9: $00
	jr   nz, jr_091_7d4f                             ; $7dca: $20 $83

	nop                                              ; $7dcc: $00
	add  b                                           ; $7dcd: $80
	jr   nz, jr_091_7d56                             ; $7dce: $20 $86

	nop                                              ; $7dd0: $00
	inc  bc                                          ; $7dd1: $03
	ld   bc, $0100                                   ; $7dd2: $01 $00 $01
	nop                                              ; $7dd5: $00
	add  b                                           ; $7dd6: $80
	db   $10                                         ; $7dd7: $10

jr_091_7dd8:
	adc  b                                           ; $7dd8: $88
	nop                                              ; $7dd9: $00
	ld   b, $3f                                      ; $7dda: $06 $3f
	inc  de                                          ; $7ddc: $13
	sub  e                                           ; $7ddd: $93
	dec  de                                          ; $7dde: $1b
	dec  sp                                          ; $7ddf: $3b
	rrca                                             ; $7de0: $0f
	rra                                              ; $7de1: $1f
	add  b                                           ; $7de2: $80
	rlca                                             ; $7de3: $07
	add  b                                           ; $7de4: $80
	inc  bc                                          ; $7de5: $03
	add  c                                           ; $7de6: $81
	rlca                                             ; $7de7: $07
	inc  b                                           ; $7de8: $04
	rla                                              ; $7de9: $17
	rrca                                             ; $7dea: $0f
	ld   e, h                                        ; $7deb: $5c
	rlca                                             ; $7dec: $07
	cpl                                              ; $7ded: $2f
	add  b                                           ; $7dee: $80
	add  e                                           ; $7def: $83
	ld   b, $c3                                      ; $7df0: $06 $c3
	push de                                          ; $7df2: $d5
	pop  hl                                          ; $7df3: $e1
	jp   hl                                          ; $7df4: $e9


	pop  af                                          ; $7df5: $f1
	db   $f4                                         ; $7df6: $f4
	ld   hl, sp-$80                                  ; $7df7: $f8 $80
	cp   $03                                         ; $7df9: $fe $03
	ei                                               ; $7dfb: $fb
	rst  $38                                         ; $7dfc: $ff

jr_091_7dfd:
	ld   [bc], a                                     ; $7dfd: $02
	cp   $88                                         ; $7dfe: $fe $88
	rst  $38                                         ; $7e00: $ff
	add  b                                           ; $7e01: $80
	ccf                                              ; $7e02: $3f
	add  b                                           ; $7e03: $80
	rst  $38                                         ; $7e04: $ff
	inc  b                                           ; $7e05: $04
	ld   b, c                                        ; $7e06: $41
	db   $dd                                         ; $7e07: $dd
	ld   [hl], c                                     ; $7e08: $71
	db   $fd                                         ; $7e09: $fd
	rst  $28                                         ; $7e0a: $ef
	adc  c                                           ; $7e0b: $89
	rst  $38                                         ; $7e0c: $ff
	ld   [bc], a                                     ; $7e0d: $02
	push hl                                          ; $7e0e: $e5
	ldh  [$ee], a                                    ; $7e0f: $e0 $ee
	add  e                                           ; $7e11: $83
	ldh  [$0a], a                                    ; $7e12: $e0 $0a
	ret  c                                           ; $7e14: $d8

	ret  nz                                          ; $7e15: $c0

	call nz, $b0c0                                   ; $7e16: $c4 $c0 $b0
	add  b                                           ; $7e19: $80
	and  b                                           ; $7e1a: $a0
	sub  b                                           ; $7e1b: $90
	adc  a                                           ; $7e1c: $8f
	ld   a, [$8272]                                  ; $7e1d: $fa $72 $82
	or   $03                                         ; $7e20: $f6 $03
	push af                                          ; $7e22: $f5
	push de                                          ; $7e23: $d5
	push af                                          ; $7e24: $f5
	push hl                                          ; $7e25: $e5
	add  b                                           ; $7e26: $80
	db   $ed                                         ; $7e27: $ed
	inc  de                                          ; $7e28: $13
	db   $eb                                         ; $7e29: $eb
	adc  e                                           ; $7e2a: $8b
	db   $db                                         ; $7e2b: $db
	dec  b                                           ; $7e2c: $05
	cp   $fa                                         ; $7e2d: $fe $fa
	cp   $7e                                         ; $7e2f: $fe $7e
	cp   $f6                                         ; $7e31: $fe $f6
	cp   $dd                                         ; $7e33: $fe $dd
	db   $fc                                         ; $7e35: $fc
	db   $ec                                         ; $7e36: $ec
	db   $fc                                         ; $7e37: $fc
	db   $fd                                         ; $7e38: $fd
	db   $fc                                         ; $7e39: $fc
	sbc  [hl]                                        ; $7e3a: $9e
	ld   hl, sp-$61                                  ; $7e3b: $f8 $9f
	add  e                                           ; $7e3d: $83
	ld   [hl], h                                     ; $7e3e: $74
	ld   [bc], a                                     ; $7e3f: $02
	ld   [hl], b                                     ; $7e40: $70
	ld   [hl], h                                     ; $7e41: $74
	ld   d, h                                        ; $7e42: $54
	add  d                                           ; $7e43: $82
	ld   [hl], h                                     ; $7e44: $74
	inc  bc                                          ; $7e45: $03
	db   $f4                                         ; $7e46: $f4
	cp   $e0                                         ; $7e47: $fe $e0
	inc  d                                           ; $7e49: $14
	sub  c                                           ; $7e4a: $91
	nop                                              ; $7e4b: $00
	add  b                                           ; $7e4c: $80
	jr   nz, jr_091_7dd8                             ; $7e4d: $20 $89

	nop                                              ; $7e4f: $00
	add  e                                           ; $7e50: $83
	rst  $38                                         ; $7e51: $ff
	add  b                                           ; $7e52: $80
	db   $fc                                         ; $7e53: $fc
	inc  de                                          ; $7e54: $13
	db   $e3                                         ; $7e55: $e3
	ldh  [$9c], a                                    ; $7e56: $e0 $9c
	add  b                                           ; $7e58: $80
	ld   h, b                                        ; $7e59: $60
	nop                                              ; $7e5a: $00
	add  b                                           ; $7e5b: $80
	nop                                              ; $7e5c: $00
	inc  bc                                          ; $7e5d: $03
	db   $fc                                         ; $7e5e: $fc
	add  c                                           ; $7e5f: $81
	add  b                                           ; $7e60: $80
	ld   a, b                                        ; $7e61: $78
	ld   [bc], a                                     ; $7e62: $02
	add  b                                           ; $7e63: $80
	nop                                              ; $7e64: $00
	inc  c                                           ; $7e65: $0c
	nop                                              ; $7e66: $00
	db   $10                                         ; $7e67: $10
	ld   [$0080], sp                                 ; $7e68: $08 $80 $00
	ld   [bc], a                                     ; $7e6b: $02
	jr   nc, jr_091_7e6e                             ; $7e6c: $30 $00

jr_091_7e6e:
	jr   nz, jr_091_7dfd                             ; $7e6e: $20 $8d

	nop                                              ; $7e70: $00
	ld   b, $18                                      ; $7e71: $06 $18
	nop                                              ; $7e73: $00
	ld   e, $00                                      ; $7e74: $1e $00
	rlca                                             ; $7e76: $07
	nop                                              ; $7e77: $00
	ld   bc, $0089                                   ; $7e78: $01 $89 $00
	inc  de                                          ; $7e7b: $13
	ld   bc, $0600                                   ; $7e7c: $01 $00 $06
	nop                                              ; $7e7f: $00
	ld   [$1000], sp                                 ; $7e80: $08 $00 $10
	nop                                              ; $7e83: $00
	jr   nz, jr_091_7e86                             ; $7e84: $20 $00

jr_091_7e86:
	ld   b, b                                        ; $7e86: $40
	nop                                              ; $7e87: $00
	add  b                                           ; $7e88: $80
	nop                                              ; $7e89: $00
	rst  $38                                         ; $7e8a: $ff
	nop                                              ; $7e8b: $00
	cp   $00                                         ; $7e8c: $fe $00
	ld   a, a                                        ; $7e8e: $7f
	ld   a, [hl]                                     ; $7e8f: $7e
	add  b                                           ; $7e90: $80
	ld   a, a                                        ; $7e91: $7f
	add  d                                           ; $7e92: $82
	rst  $38                                         ; $7e93: $ff

jr_091_7e94:
	add  d                                           ; $7e94: $82
	ld   a, a                                        ; $7e95: $7f
	dec  c                                           ; $7e96: $0d
	ld   h, b                                        ; $7e97: $60
	rrca                                             ; $7e98: $0f

jr_091_7e99:
	cpl                                              ; $7e99: $2f
	rra                                              ; $7e9a: $1f
	ld   e, a                                        ; $7e9b: $5f
	rra                                              ; $7e9c: $1f
	rst  JumpTable                                         ; $7e9d: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9e: $cf
	rst  $38                                         ; $7e9f: $ff
	di                                               ; $7ea0: $f3
	rst  $38                                         ; $7ea1: $ff
	db   $fd                                         ; $7ea2: $fd
	rst  $38                                         ; $7ea3: $ff
	cp   $80                                         ; $7ea4: $fe $80
	rst  $38                                         ; $7ea6: $ff
	ld   [bc], a                                     ; $7ea7: $02
	db   $10                                         ; $7ea8: $10
	rst  $38                                         ; $7ea9: $ff
	ldh  a, [$84]                                    ; $7eaa: $f0 $84
	rst  $38                                         ; $7eac: $ff
	ld   bc, $6f7f                                   ; $7ead: $01 $7f $6f
	add  d                                           ; $7eb0: $82
	ld   a, a                                        ; $7eb1: $7f
	ld   bc, $cf3f                                   ; $7eb2: $01 $3f $cf
	adc  a                                           ; $7eb5: $8f
	rst  $38                                         ; $7eb6: $ff
	add  b                                           ; $7eb7: $80
	cp   $80                                         ; $7eb8: $fe $80

jr_091_7eba:
	db   $fc                                         ; $7eba: $fc
	ld   b, $f8                                      ; $7ebb: $06 $f8
	ei                                               ; $7ebd: $fb
	di                                               ; $7ebe: $f3
	cp   $f6                                         ; $7ebf: $fe $f6
	db   $fc                                         ; $7ec1: $fc
	ld   hl, sp-$7f                                  ; $7ec2: $f8 $81
	cp   $0c                                         ; $7ec4: $fe $0c
	dec  c                                           ; $7ec6: $0d
	jr   nz, @+$32                                   ; $7ec7: $20 $30

	ld   b, b                                        ; $7ec9: $40
	ld   h, b                                        ; $7eca: $60
	add  b                                           ; $7ecb: $80
	pop  bc                                          ; $7ecc: $c1
	nop                                              ; $7ecd: $00
	add  [hl]                                        ; $7ece: $86
	nop                                              ; $7ecf: $00
	ld   sp, hl                                      ; $7ed0: $f9
	nop                                              ; $7ed1: $00
	ld   bc, $f080                                   ; $7ed2: $01 $80 $f0
	add  b                                           ; $7ed5: $80
	cp   $80                                         ; $7ed6: $fe $80
	rst  $10                                         ; $7ed8: $d7
	add  b                                           ; $7ed9: $80
	xor  a                                           ; $7eda: $af
	add  b                                           ; $7edb: $80
	ld   e, a                                        ; $7edc: $5f
	add  b                                           ; $7edd: $80
	cp   a                                           ; $7ede: $bf
	add  b                                           ; $7edf: $80
	ld   a, a                                        ; $7ee0: $7f
	inc  hl                                          ; $7ee1: $23
	db   $fc                                         ; $7ee2: $fc
	rst  $38                                         ; $7ee3: $ff
	nop                                              ; $7ee4: $00
	db   $fd                                         ; $7ee5: $fd
	nop                                              ; $7ee6: $00
	db   $fc                                         ; $7ee7: $fc
	ld   hl, sp-$02                                  ; $7ee8: $f8 $fe
	pop  af                                          ; $7eea: $f1
	ld   sp, hl                                      ; $7eeb: $f9
	pop  hl                                          ; $7eec: $e1
	push af                                          ; $7eed: $f5
	jp   $07eb                                       ; $7eee: $c3 $eb $07


	rst  $10                                         ; $7ef1: $d7
	ld   c, $6f                                      ; $7ef2: $0e $6f
	jr   jr_091_7e94                                 ; $7ef4: $18 $9e

	ld   h, b                                        ; $7ef6: $60
	ld   l, h                                        ; $7ef7: $6c
	ldh  [$f0], a                                    ; $7ef8: $e0 $f0
	ret  nz                                          ; $7efa: $c0

	call z, $e0c0                                    ; $7efb: $cc $c0 $e0
	add  b                                           ; $7efe: $80
	ret  c                                           ; $7eff: $d8

Call_091_7f00:
	nop                                              ; $7f00: $00
	or   b                                           ; $7f01: $b0
	nop                                              ; $7f02: $00
	ld   h, b                                        ; $7f03: $60
	nop                                              ; $7f04: $00
	ld   b, b                                        ; $7f05: $40
	adc  c                                           ; $7f06: $89
	nop                                              ; $7f07: $00
	add  b                                           ; $7f08: $80
	jr   nz, jr_091_7e99                             ; $7f09: $20 $8e

	nop                                              ; $7f0b: $00
	add  d                                           ; $7f0c: $82
	inc  bc                                          ; $7f0d: $03
	add  d                                           ; $7f0e: $82
	nop                                              ; $7f0f: $00
	ld   [bc], a                                     ; $7f10: $02
	inc  bc                                          ; $7f11: $03
	nop                                              ; $7f12: $00
	inc  bc                                          ; $7f13: $03
	add  c                                           ; $7f14: $81
	nop                                              ; $7f15: $00
	ld   a, [bc]                                     ; $7f16: $0a
	ld   bc, $ff00                                   ; $7f17: $01 $00 $ff
	nop                                              ; $7f1a: $00
	cp   $00                                         ; $7f1b: $fe $00
	ld   b, b                                        ; $7f1d: $40
	nop                                              ; $7f1e: $00
	add  b                                           ; $7f1f: $80
	nop                                              ; $7f20: $00
	ld   b, b                                        ; $7f21: $40
	add  c                                           ; $7f22: $81
	nop                                              ; $7f23: $00
	ld   [$00c0], sp                                 ; $7f24: $08 $c0 $00
	add  b                                           ; $7f27: $80
	nop                                              ; $7f28: $00
	ldh  [rP1], a                                    ; $7f29: $e0 $00
	jr   jr_091_7f2d                                 ; $7f2b: $18 $00

jr_091_7f2d:
	jr   c, jr_091_7eba                              ; $7f2d: $38 $8b

	nop                                              ; $7f2f: $00
	ld   [bc], a                                     ; $7f30: $02
	ld   bc, $0100                                   ; $7f31: $01 $00 $01
	add  e                                           ; $7f34: $83
	nop                                              ; $7f35: $00
	ld   a, [bc]                                     ; $7f36: $0a
	ld   bc, $0600                                   ; $7f37: $01 $00 $06

jr_091_7f3a:
	nop                                              ; $7f3a: $00
	add  hl, de                                      ; $7f3b: $19
	nop                                              ; $7f3c: $00
	ld   h, [hl]                                     ; $7f3d: $66
	nop                                              ; $7f3e: $00
	add  sp, $00                                     ; $7f3f: $e8 $00
	ld   l, a                                        ; $7f41: $6f
	add  e                                           ; $7f42: $83
	nop                                              ; $7f43: $00
	add  b                                           ; $7f44: $80
	db   $fc                                         ; $7f45: $fc
	adc  d                                           ; $7f46: $8a
	rst  $38                                         ; $7f47: $ff
	add  b                                           ; $7f48: $80
	ld   a, a                                        ; $7f49: $7f
	add  b                                           ; $7f4a: $80
	ccf                                              ; $7f4b: $3f
	add  b                                           ; $7f4c: $80
	rra                                              ; $7f4d: $1f
	add  b                                           ; $7f4e: $80
	rst  $20                                         ; $7f4f: $e7
	add  b                                           ; $7f50: $80
	pop  af                                          ; $7f51: $f1
	add  b                                           ; $7f52: $80
	db   $fc                                         ; $7f53: $fc
	adc  [hl]                                        ; $7f54: $8e
	rst  $38                                         ; $7f55: $ff
	nop                                              ; $7f56: $00
	adc  a                                           ; $7f57: $8f
	add  b                                           ; $7f58: $80
	cp   a                                           ; $7f59: $bf
	ld   bc, $979f                                   ; $7f5a: $01 $9f $97
	add  b                                           ; $7f5d: $80
	sbc  a                                           ; $7f5e: $9f
	ld   bc, $8b8f                                   ; $7f5f: $01 $8f $8b
	add  b                                           ; $7f62: $80
	adc  a                                           ; $7f63: $8f
	ld   bc, $c587                                   ; $7f64: $01 $87 $c5
	add  b                                           ; $7f67: $80
	jp   $c100                                       ; $7f68: $c3 $00 $c1


	add  b                                           ; $7f6b: $80
	cp   $82                                         ; $7f6c: $fe $82
	rst  $38                                         ; $7f6e: $ff
	ld   [bc], a                                     ; $7f6f: $02
	cp   $ff                                         ; $7f70: $fe $ff
	cp   $85                                         ; $7f72: $fe $85
	rst  $38                                         ; $7f74: $ff
	dec  de                                          ; $7f75: $1b
	ld   a, b                                        ; $7f76: $78
	ld   a, c                                        ; $7f77: $79
	ld   a, $ff                                      ; $7f78: $3e $ff
	rrca                                             ; $7f7a: $0f
	rst  $28                                         ; $7f7b: $ef
	rra                                              ; $7f7c: $1f
	rst  $38                                         ; $7f7d: $ff
	cp   a                                           ; $7f7e: $bf
	rst  $38                                         ; $7f7f: $ff
	ld   a, h                                        ; $7f80: $7c
	cp   $f2                                         ; $7f81: $fe $f2
	ld   hl, sp+$0b                                  ; $7f83: $f8 $0b
	add  e                                           ; $7f85: $83
	pop  af                                          ; $7f86: $f1
	db   $fd                                         ; $7f87: $fd
	ld   [hl], l                                     ; $7f88: $75
	db   $fd                                         ; $7f89: $fd
	rst  $30                                         ; $7f8a: $f7
	ei                                               ; $7f8b: $fb
	rst  $28                                         ; $7f8c: $ef
	rst  $30                                         ; $7f8d: $f7
	sbc  a                                           ; $7f8e: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f8f: $cf
	ld   [hl], a                                     ; $7f90: $77
	scf                                              ; $7f91: $37
	add  b                                           ; $7f92: $80
	ei                                               ; $7f93: $fb
	add  b                                           ; $7f94: $80
	db   $fd                                         ; $7f95: $fd
	ld   [bc], a                                     ; $7f96: $02
	ldh  a, [rP1]                                    ; $7f97: $f0 $00
	rrca                                             ; $7f99: $0f
	add  l                                           ; $7f9a: $85
	nop                                              ; $7f9b: $00
	add  b                                           ; $7f9c: $80
	db   $10                                         ; $7f9d: $10
	add  d                                           ; $7f9e: $82
	nop                                              ; $7f9f: $00
	ld   [bc], a                                     ; $7fa0: $02
	ldh  [rP1], a                                    ; $7fa1: $e0 $00
	ldh  [$81], a                                    ; $7fa3: $e0 $81
	nop                                              ; $7fa5: $00
	add  b                                           ; $7fa6: $80
	jr   nz, jr_091_7fac                             ; $7fa7: $20 $03

	ld   d, b                                        ; $7fa9: $50
	ld   [hl], b                                     ; $7faa: $70
	nop                                              ; $7fab: $00

jr_091_7fac:
	jr   nz, jr_091_7f3a                             ; $7fac: $20 $8c

	nop                                              ; $7fae: $00
	add  b                                           ; $7faf: $80
	ld   bc, $00b2                                   ; $7fb0: $01 $b2 $00
	ld   b, $16                                      ; $7fb3: $06 $16
	nop                                              ; $7fb5: $00
	rra                                              ; $7fb6: $1f
	nop                                              ; $7fb7: $00
	ld   c, $00                                      ; $7fb8: $0e $00
	rlca                                             ; $7fba: $07
	add  a                                           ; $7fbb: $87
	nop                                              ; $7fbc: $00
	rra                                              ; $7fbd: $1f
	ld   a, $00                                      ; $7fbe: $3e $00
	db   $fd                                         ; $7fc0: $fd
	nop                                              ; $7fc1: $00
	rst  JumpTable                                         ; $7fc2: $df
	nop                                              ; $7fc3: $00
	db   $fc                                         ; $7fc4: $fc
	nop                                              ; $7fc5: $00
	ldh  [rP1], a                                    ; $7fc6: $e0 $00
	ld   bc, $0e00                                   ; $7fc8: $01 $00 $0e
	nop                                              ; $7fcb: $00
	ld   a, a                                        ; $7fcc: $7f
	nop                                              ; $7fcd: $00
	ld   de, $e200                                   ; $7fce: $11 $00 $e2
	ld   bc, $0385                                   ; $7fd1: $01 $85 $03
	dec  de                                          ; $7fd4: $1b
	rlca                                             ; $7fd5: $07
	ld   h, a                                        ; $7fd6: $67
	rlca                                             ; $7fd7: $07
	rst  ToBoot                                         ; $7fd8: $c7
	inc  bc                                          ; $7fd9: $03
	add  e                                           ; $7fda: $83
	ld   bc, $0041                                   ; $7fdb: $01 $41 $00
	stop                                             ; $7fde: $10 $00
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
	rst  $28                                         ; $7ffe: $ef
	nop                                              ; $7fff: $00
