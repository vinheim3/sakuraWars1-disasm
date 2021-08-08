; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $090", ROMX[$4000], BANK[$90]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	inc  bc                                          ; $400d: $03
	inc  bc                                          ; $400e: $03
	nop                                              ; $400f: $00
	ld   [$0808], sp                                 ; $4010: $08 $08 $08
	ld   [rRAMG], sp                                 ; $4013: $08 $00 $00
	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	nop                                              ; $401e: $00
	dec  b                                           ; $401f: $05
	nop                                              ; $4020: $00
	ld   bc, $0001                                   ; $4021: $01 $01 $00
	ld   [$0808], sp                                 ; $4024: $08 $08 $08
	ld   [rRAMG], sp                                 ; $4027: $08 $00 $00
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	nop                                              ; $4036: $00
	nop                                              ; $4037: $00
	ld   [$0808], sp                                 ; $4038: $08 $08 $08
	ld   [rRAMG], sp                                 ; $403b: $08 $00 $00
	nop                                              ; $403e: $00
	ld   b, $06                                      ; $403f: $06 $06
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	ld   [$0808], sp                                 ; $404c: $08 $08 $08
	ld   [rRAMG], sp                                 ; $404f: $08 $00 $00
	nop                                              ; $4052: $00
	ld   b, $01                                      ; $4053: $06 $01
	ld   bc, $0101                                   ; $4055: $01 $01 $01
	ld   bc, $0006                                   ; $4058: $01 $06 $00
	nop                                              ; $405b: $00
	ld   b, $04                                      ; $405c: $06 $04
	inc  b                                           ; $405e: $04
	inc  b                                           ; $405f: $04
	inc  c                                           ; $4060: $0c
	inc  c                                           ; $4061: $0c
	ld   c, $08                                      ; $4062: $0e $08
	nop                                              ; $4064: $00
	ld   b, $06                                      ; $4065: $06 $06
	ld   b, $01                                      ; $4067: $06 $01
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	nop                                              ; $406c: $00
	nop                                              ; $406d: $00
	nop                                              ; $406e: $00
	ld   b, $06                                      ; $406f: $06 $06
	inc  b                                           ; $4071: $04
	inc  b                                           ; $4072: $04
	inc  b                                           ; $4073: $04
	inc  c                                           ; $4074: $0c
	inc  c                                           ; $4075: $0c
	ld   c, $08                                      ; $4076: $0e $08
	nop                                              ; $4078: $00
	ld   bc, $0101                                   ; $4079: $01 $01 $01
	ld   bc, $0303                                   ; $407c: $01 $03 $03
	dec  b                                           ; $407f: $05
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	ld   b, $06                                      ; $4082: $06 $06
	dec  b                                           ; $4084: $05
	ld   [bc], a                                     ; $4085: $02
	ld   [bc], a                                     ; $4086: $02
	ld   [bc], a                                     ; $4087: $02
	ld   a, [bc]                                     ; $4088: $0a
	ld   a, [bc]                                     ; $4089: $0a
	ld   a, [bc]                                     ; $408a: $0a
	ld   [rRAMG], sp                                 ; $408b: $08 $00 $00
	nop                                              ; $408e: $00
	ld   bc, $0301                                   ; $408f: $01 $01 $03
	inc  bc                                          ; $4092: $03
	inc  bc                                          ; $4093: $03
	inc  bc                                          ; $4094: $03
	inc  bc                                          ; $4095: $03
	ld   bc, $0206                                   ; $4096: $01 $06 $02
	ld   [bc], a                                     ; $4099: $02
	ld   [bc], a                                     ; $409a: $02
	ld   [bc], a                                     ; $409b: $02
	ld   a, [bc]                                     ; $409c: $0a
	ld   a, [bc]                                     ; $409d: $0a
	ld   a, [bc]                                     ; $409e: $0a
	ld   [rRAMG], sp                                 ; $409f: $08 $00 $00
	nop                                              ; $40a2: $00
	ld   b, $01                                      ; $40a3: $06 $01
	nop                                              ; $40a5: $00
	ld   b, $00                                      ; $40a6: $06 $00
	ld   b, $00                                      ; $40a8: $06 $00
	ld   b, $06                                      ; $40aa: $06 $06
	ld   [bc], a                                     ; $40ac: $02
	ld   [bc], a                                     ; $40ad: $02
	ld   [bc], a                                     ; $40ae: $02
	ld   [bc], a                                     ; $40af: $02
	ld   a, [bc]                                     ; $40b0: $0a
	ld   a, [bc]                                     ; $40b1: $0a
	ld   a, [bc]                                     ; $40b2: $0a
	ld   [$0600], sp                                 ; $40b3: $08 $00 $06
	ld   b, $06                                      ; $40b6: $06 $06
	ld   bc, $0606                                   ; $40b8: $01 $06 $06
	ld   b, $06                                      ; $40bb: $06 $06
	ld   b, $06                                      ; $40bd: $06 $06
	ld   b, $00                                      ; $40bf: $06 $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	ld   [$0808], sp                                 ; $40c4: $08 $08 $08
	ld   [rRAMG], sp                                 ; $40c7: $08 $00 $00
	nop                                              ; $40ca: $00
	ld   b, $01                                      ; $40cb: $06 $01
	ld   bc, $0101                                   ; $40cd: $01 $01 $01
	ld   bc, $0101                                   ; $40d0: $01 $01 $01
	ld   b, $00                                      ; $40d3: $06 $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	ld   [$0808], sp                                 ; $40d8: $08 $08 $08
	ld   [$0500], sp                                 ; $40db: $08 $00 $05
	dec  b                                           ; $40de: $05
	ld   b, $06                                      ; $40df: $06 $06
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	ld   [$0808], sp                                 ; $40ec: $08 $08 $08
	ld   [rRAMG], sp                                 ; $40ef: $08 $00 $00
	nop                                              ; $40f2: $00
	ld   b, $06                                      ; $40f3: $06 $06
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	nop                                              ; $40f9: $00
	nop                                              ; $40fa: $00
	nop                                              ; $40fb: $00
	ld   [bc], a                                     ; $40fc: $02
	ld   [bc], a                                     ; $40fd: $02
	ld   [bc], a                                     ; $40fe: $02
	ld   [bc], a                                     ; $40ff: $02
	ld   a, [bc]                                     ; $4100: $0a
	ld   a, [bc]                                     ; $4101: $0a
	dec  c                                           ; $4102: $0d
	ld   [rRAMG], sp                                 ; $4103: $08 $00 $00
	nop                                              ; $4106: $00
	ld   b, $06                                      ; $4107: $06 $06
	nop                                              ; $4109: $00
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	nop                                              ; $410c: $00
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	ld   [bc], a                                     ; $4112: $02
	ld   [bc], a                                     ; $4113: $02
	ld   a, [bc]                                     ; $4114: $0a
	dec  c                                           ; $4115: $0d
	dec  c                                           ; $4116: $0d
	ld   [rRAMG], sp                                 ; $4117: $08 $00 $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	dec  b                                           ; $411f: $05
	dec  b                                           ; $4120: $05
	dec  b                                           ; $4121: $05
	dec  b                                           ; $4122: $05
	nop                                              ; $4123: $00
	ld   [bc], a                                     ; $4124: $02
	ld   [bc], a                                     ; $4125: $02
	ld   [bc], a                                     ; $4126: $02
	ld   [bc], a                                     ; $4127: $02
	ld   a, [bc]                                     ; $4128: $0a
	dec  c                                           ; $4129: $0d
	dec  c                                           ; $412a: $0d
	ld   [rRAMG], sp                                 ; $412b: $08 $00 $00
	nop                                              ; $412e: $00
	nop                                              ; $412f: $00
	nop                                              ; $4130: $00
	nop                                              ; $4131: $00
	nop                                              ; $4132: $00
	dec  b                                           ; $4133: $05
	dec  b                                           ; $4134: $05
	dec  b                                           ; $4135: $05
	dec  b                                           ; $4136: $05
	nop                                              ; $4137: $00
	ld   [bc], a                                     ; $4138: $02
	ld   [bc], a                                     ; $4139: $02
	ld   [bc], a                                     ; $413a: $02
	ld   [bc], a                                     ; $413b: $02
	ld   a, [bc]                                     ; $413c: $0a
	dec  c                                           ; $413d: $0d
	ld   [$0808], sp                                 ; $413e: $08 $08 $08
	ld   [$0808], sp                                 ; $4141: $08 $08 $08
	ld   [$0808], sp                                 ; $4144: $08 $08 $08
	ld   [$0808], sp                                 ; $4147: $08 $08 $08
	ld   [$0808], sp                                 ; $414a: $08 $08 $08
	ld   [$0d08], sp                                 ; $414d: $08 $08 $0d
	dec  c                                           ; $4150: $0d
	ld   [$0808], sp                                 ; $4151: $08 $08 $08
	ld   [$0808], sp                                 ; $4154: $08 $08 $08
	ld   [$0808], sp                                 ; $4157: $08 $08 $08
	ld   [$0808], sp                                 ; $415a: $08 $08 $08
	ld   [$0808], sp                                 ; $415d: $08 $08 $08
	ld   [$0808], sp                                 ; $4160: $08 $08 $08
	ld   [$0808], sp                                 ; $4163: $08 $08 $08
	ld   [$8008], sp                                 ; $4166: $08 $08 $80
	add  c                                           ; $4169: $81
	add  d                                           ; $416a: $82
	add  e                                           ; $416b: $83
	add  h                                           ; $416c: $84
	add  l                                           ; $416d: $85
	add  [hl]                                        ; $416e: $86
	add  a                                           ; $416f: $87
	adc  b                                           ; $4170: $88
	adc  c                                           ; $4171: $89
	adc  d                                           ; $4172: $8a
	adc  e                                           ; $4173: $8b
	adc  h                                           ; $4174: $8c
	adc  l                                           ; $4175: $8d
	adc  [hl]                                        ; $4176: $8e
	adc  a                                           ; $4177: $8f
	inc  b                                           ; $4178: $04
	dec  b                                           ; $4179: $05
	ld   b, $07                                      ; $417a: $06 $07
	sub  b                                           ; $417c: $90
	sub  c                                           ; $417d: $91
	sub  d                                           ; $417e: $92
	sub  e                                           ; $417f: $93
	sub  h                                           ; $4180: $94
	sub  l                                           ; $4181: $95
	sub  [hl]                                        ; $4182: $96
	sub  a                                           ; $4183: $97
	sbc  b                                           ; $4184: $98
	sbc  c                                           ; $4185: $99
	sbc  d                                           ; $4186: $9a
	sbc  e                                           ; $4187: $9b
	sbc  h                                           ; $4188: $9c
	sbc  l                                           ; $4189: $9d
	sbc  [hl]                                        ; $418a: $9e
	sbc  a                                           ; $418b: $9f
	inc  d                                           ; $418c: $14
	dec  d                                           ; $418d: $15
	ld   d, $17                                      ; $418e: $16 $17
	and  b                                           ; $4190: $a0
	and  c                                           ; $4191: $a1
	and  d                                           ; $4192: $a2
	and  e                                           ; $4193: $a3
	and  h                                           ; $4194: $a4
	and  l                                           ; $4195: $a5
	and  [hl]                                        ; $4196: $a6
	and  a                                           ; $4197: $a7
	xor  b                                           ; $4198: $a8
	xor  c                                           ; $4199: $a9
	xor  d                                           ; $419a: $aa
	xor  e                                           ; $419b: $ab
	xor  h                                           ; $419c: $ac
	xor  l                                           ; $419d: $ad
	xor  [hl]                                        ; $419e: $ae
	xor  a                                           ; $419f: $af
	inc  h                                           ; $41a0: $24
	dec  h                                           ; $41a1: $25
	ld   h, $27                                      ; $41a2: $26 $27
	or   b                                           ; $41a4: $b0
	or   c                                           ; $41a5: $b1
	or   d                                           ; $41a6: $b2
	or   e                                           ; $41a7: $b3
	or   h                                           ; $41a8: $b4
	or   l                                           ; $41a9: $b5
	or   [hl]                                        ; $41aa: $b6
	or   a                                           ; $41ab: $b7
	cp   b                                           ; $41ac: $b8
	cp   c                                           ; $41ad: $b9
	cp   d                                           ; $41ae: $ba
	cp   e                                           ; $41af: $bb
	cp   h                                           ; $41b0: $bc
	cp   l                                           ; $41b1: $bd
	cp   [hl]                                        ; $41b2: $be
	cp   a                                           ; $41b3: $bf
	inc  [hl]                                        ; $41b4: $34
	dec  [hl]                                        ; $41b5: $35
	ld   [hl], $37                                   ; $41b6: $36 $37
	ret  nz                                          ; $41b8: $c0

	pop  bc                                          ; $41b9: $c1
	jp   nz, $c4c3                                   ; $41ba: $c2 $c3 $c4

	push bc                                          ; $41bd: $c5
	add  $c7                                         ; $41be: $c6 $c7
	ret  z                                           ; $41c0: $c8

	ret                                              ; $41c1: $c9


	jp   z, $cccb                                    ; $41c2: $ca $cb $cc

	call $cfce                                       ; $41c5: $cd $ce $cf
	ld   b, h                                        ; $41c8: $44
	ld   b, l                                        ; $41c9: $45
	ld   b, [hl]                                     ; $41ca: $46
	ld   b, a                                        ; $41cb: $47
	ret  nc                                          ; $41cc: $d0

	pop  de                                          ; $41cd: $d1
	jp   nc, $d4d3                                   ; $41ce: $d2 $d3 $d4

	push de                                          ; $41d1: $d5
	sub  $d7                                         ; $41d2: $d6 $d7
	ret  c                                           ; $41d4: $d8

	reti                                             ; $41d5: $d9


	jp   c, $dcdb                                    ; $41d6: $da $db $dc

	db   $dd                                         ; $41d9: $dd
	sbc  $df                                         ; $41da: $de $df
	ld   d, h                                        ; $41dc: $54
	ld   d, l                                        ; $41dd: $55
	ld   d, [hl]                                     ; $41de: $56
	ld   d, a                                        ; $41df: $57
	ldh  [$e1], a                                    ; $41e0: $e0 $e1
	ldh  [c], a                                      ; $41e2: $e2
	db   $e3                                         ; $41e3: $e3
	db   $e4                                         ; $41e4: $e4
	push hl                                          ; $41e5: $e5
	and  $e7                                         ; $41e6: $e6 $e7
	add  sp, -$17                                    ; $41e8: $e8 $e9
	ld   [$eceb], a                                  ; $41ea: $ea $eb $ec
	db   $ed                                         ; $41ed: $ed
	xor  $ef                                         ; $41ee: $ee $ef
	ld   h, h                                        ; $41f0: $64
	ld   h, l                                        ; $41f1: $65
	ld   h, [hl]                                     ; $41f2: $66
	ld   h, a                                        ; $41f3: $67
	ldh  a, [$f1]                                    ; $41f4: $f0 $f1
	ldh  a, [c]                                      ; $41f6: $f2
	di                                               ; $41f7: $f3
	db   $f4                                         ; $41f8: $f4
	push af                                          ; $41f9: $f5
	or   $f7                                         ; $41fa: $f6 $f7
	ld   hl, sp-$07                                  ; $41fc: $f8 $f9
	ld   a, [$fcfb]                                  ; $41fe: $fa $fb $fc
	db   $fd                                         ; $4201: $fd
	cp   $ff                                         ; $4202: $fe $ff

Jump_090_4204:
	ld   [hl], h                                     ; $4204: $74
	ld   [hl], l                                     ; $4205: $75
	halt                                             ; $4206: $76
	ld   [hl], a                                     ; $4207: $77
	nop                                              ; $4208: $00
	ld   bc, $0302                                   ; $4209: $01 $02 $03
	inc  b                                           ; $420c: $04
	dec  b                                           ; $420d: $05
	ld   b, $07                                      ; $420e: $06 $07
	ld   [$0a09], sp                                 ; $4210: $08 $09 $0a
	dec  bc                                          ; $4213: $0b
	inc  c                                           ; $4214: $0c
	dec  c                                           ; $4215: $0d
	ld   c, $0f                                      ; $4216: $0e $0f
	nop                                              ; $4218: $00
	ld   bc, $0302                                   ; $4219: $01 $02 $03
	db   $10                                         ; $421c: $10
	ld   de, $1312                                   ; $421d: $11 $12 $13
	inc  d                                           ; $4220: $14
	dec  d                                           ; $4221: $15
	ld   d, $17                                      ; $4222: $16 $17
	jr   @+$1b                                       ; $4224: $18 $19

	ld   a, [de]                                     ; $4226: $1a
	dec  de                                          ; $4227: $1b
	inc  e                                           ; $4228: $1c
	dec  e                                           ; $4229: $1d
	ld   e, $1f                                      ; $422a: $1e $1f
	db   $10                                         ; $422c: $10
	ld   de, $1312                                   ; $422d: $11 $12 $13
	jr   nz, @+$23                                   ; $4230: $20 $21

	ld   [hl+], a                                    ; $4232: $22
	inc  hl                                          ; $4233: $23
	inc  h                                           ; $4234: $24
	dec  h                                           ; $4235: $25
	ld   h, $27                                      ; $4236: $26 $27
	jr   z, jr_090_4263                              ; $4238: $28 $29

	ld   a, [hl+]                                    ; $423a: $2a
	dec  hl                                          ; $423b: $2b
	inc  l                                           ; $423c: $2c
	dec  l                                           ; $423d: $2d
	ld   l, $2f                                      ; $423e: $2e $2f
	jr   nz, jr_090_4263                             ; $4240: $20 $21

	ld   [hl+], a                                    ; $4242: $22
	inc  hl                                          ; $4243: $23
	jr   nc, jr_090_4277                             ; $4244: $30 $31

	ld   [hl-], a                                    ; $4246: $32
	inc  sp                                          ; $4247: $33
	inc  [hl]                                        ; $4248: $34
	dec  [hl]                                        ; $4249: $35
	ld   [hl], $37                                   ; $424a: $36 $37
	jr   c, jr_090_4287                              ; $424c: $38 $39

	ld   a, [hl-]                                    ; $424e: $3a
	dec  sp                                          ; $424f: $3b
	inc  a                                           ; $4250: $3c
	dec  a                                           ; $4251: $3d
	ld   a, $3f                                      ; $4252: $3e $3f
	jr   nc, jr_090_4287                             ; $4254: $30 $31

	ld   [hl-], a                                    ; $4256: $32
	inc  sp                                          ; $4257: $33
	ld   b, b                                        ; $4258: $40
	ld   b, c                                        ; $4259: $41
	ld   b, d                                        ; $425a: $42
	ld   b, e                                        ; $425b: $43
	ld   b, h                                        ; $425c: $44
	ld   b, l                                        ; $425d: $45
	ld   b, [hl]                                     ; $425e: $46
	ld   b, a                                        ; $425f: $47
	ld   c, b                                        ; $4260: $48
	ld   c, c                                        ; $4261: $49
	ld   c, d                                        ; $4262: $4a

jr_090_4263:
	ld   c, e                                        ; $4263: $4b
	ld   c, h                                        ; $4264: $4c
	ld   c, l                                        ; $4265: $4d
	ld   c, [hl]                                     ; $4266: $4e
	ld   c, a                                        ; $4267: $4f
	ld   b, b                                        ; $4268: $40
	ld   b, c                                        ; $4269: $41
	ld   b, d                                        ; $426a: $42
	ld   b, e                                        ; $426b: $43
	ld   d, b                                        ; $426c: $50
	ld   d, c                                        ; $426d: $51
	ld   d, d                                        ; $426e: $52
	ld   d, e                                        ; $426f: $53
	ld   d, h                                        ; $4270: $54
	ld   d, l                                        ; $4271: $55
	ld   d, [hl]                                     ; $4272: $56
	ld   d, a                                        ; $4273: $57
	ld   e, b                                        ; $4274: $58
	ld   e, c                                        ; $4275: $59
	ld   e, d                                        ; $4276: $5a

jr_090_4277:
	ld   e, e                                        ; $4277: $5b
	ld   e, h                                        ; $4278: $5c
	ld   e, l                                        ; $4279: $5d
	ld   e, [hl]                                     ; $427a: $5e
	ld   e, a                                        ; $427b: $5f
	ld   d, b                                        ; $427c: $50
	ld   d, c                                        ; $427d: $51
	ld   d, d                                        ; $427e: $52
	ld   d, e                                        ; $427f: $53
	ld   h, b                                        ; $4280: $60
	ld   h, c                                        ; $4281: $61
	ld   h, d                                        ; $4282: $62
	ld   h, e                                        ; $4283: $63
	ld   h, h                                        ; $4284: $64
	ld   h, l                                        ; $4285: $65
	ld   h, [hl]                                     ; $4286: $66

jr_090_4287:
	ld   h, a                                        ; $4287: $67
	ld   l, b                                        ; $4288: $68
	ld   l, c                                        ; $4289: $69
	ld   l, d                                        ; $428a: $6a
	ld   l, e                                        ; $428b: $6b
	ld   l, h                                        ; $428c: $6c
	ld   l, l                                        ; $428d: $6d
	ld   l, [hl]                                     ; $428e: $6e
	ld   l, a                                        ; $428f: $6f
	ld   h, b                                        ; $4290: $60
	ld   h, c                                        ; $4291: $61
	ld   h, d                                        ; $4292: $62
	ld   h, e                                        ; $4293: $63
	ld   [hl], b                                     ; $4294: $70
	ld   [hl], c                                     ; $4295: $71
	ld   [hl], d                                     ; $4296: $72
	ld   [hl], e                                     ; $4297: $73
	ld   [hl], h                                     ; $4298: $74
	ld   [hl], l                                     ; $4299: $75
	halt                                             ; $429a: $76
	ld   [hl], a                                     ; $429b: $77
	ld   a, b                                        ; $429c: $78
	ld   a, c                                        ; $429d: $79
	ld   a, d                                        ; $429e: $7a
	ld   a, e                                        ; $429f: $7b
	ld   a, h                                        ; $42a0: $7c
	ld   a, l                                        ; $42a1: $7d
	ld   a, [hl]                                     ; $42a2: $7e
	ld   a, a                                        ; $42a3: $7f
	ld   [hl], b                                     ; $42a4: $70
	ld   [hl], c                                     ; $42a5: $71
	ld   [hl], d                                     ; $42a6: $72
	ld   [hl], e                                     ; $42a7: $73
	ld   [$0a09], sp                                 ; $42a8: $08 $09 $0a
	dec  bc                                          ; $42ab: $0b
	inc  c                                           ; $42ac: $0c
	dec  c                                           ; $42ad: $0d
	ld   c, $0f                                      ; $42ae: $0e $0f
	jr   z, jr_090_42db                              ; $42b0: $28 $29

	ld   a, [hl+]                                    ; $42b2: $2a
	dec  hl                                          ; $42b3: $2b
	inc  l                                           ; $42b4: $2c
	dec  l                                           ; $42b5: $2d
	ld   l, $2f                                      ; $42b6: $2e $2f
	ld   c, b                                        ; $42b8: $48
	ld   c, c                                        ; $42b9: $49
	ld   c, d                                        ; $42ba: $4a
	ld   c, e                                        ; $42bb: $4b
	jr   jr_090_42d7                                 ; $42bc: $18 $19

	ld   a, [de]                                     ; $42be: $1a
	dec  de                                          ; $42bf: $1b
	inc  e                                           ; $42c0: $1c
	dec  e                                           ; $42c1: $1d
	ld   e, $1f                                      ; $42c2: $1e $1f
	jr   c, jr_090_42ff                              ; $42c4: $38 $39

	ld   a, [hl-]                                    ; $42c6: $3a
	dec  sp                                          ; $42c7: $3b
	inc  a                                           ; $42c8: $3c
	dec  a                                           ; $42c9: $3d
	ld   a, $3f                                      ; $42ca: $3e $3f
	ld   e, b                                        ; $42cc: $58
	ld   e, c                                        ; $42cd: $59
	ld   e, d                                        ; $42ce: $5a
	ld   e, e                                        ; $42cf: $5b
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	nop                                              ; $42d3: $00
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	nop                                              ; $42d6: $00

jr_090_42d7:
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	nop                                              ; $42da: $00

jr_090_42db:
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	ld   [$0808], sp                                 ; $42e0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $42e3: $08 $00 $00
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	dec  b                                           ; $42e9: $05
	nop                                              ; $42ea: $00
	dec  b                                           ; $42eb: $05
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	nop                                              ; $42f3: $00
	ld   [$0808], sp                                 ; $42f4: $08 $08 $08
	ld   [rRAMG], sp                                 ; $42f7: $08 $00 $00
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	dec  b                                           ; $42fd: $05
	nop                                              ; $42fe: $00

jr_090_42ff:
	nop                                              ; $42ff: $00
	dec  b                                           ; $4300: $05
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	ld   b, $06                                      ; $4305: $06 $06
	ld   b, $0e                                      ; $4307: $06 $0e
	ld   c, $0e                                      ; $4309: $0e $0e
	ld   [rRAMG], sp                                 ; $430b: $08 $00 $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	dec  b                                           ; $4314: $05
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	ld   [$0808], sp                                 ; $431c: $08 $08 $08
	ld   [rRAMG], sp                                 ; $431f: $08 $00 $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	nop                                              ; $432b: $00
	ld   bc, $0404                                   ; $432c: $01 $04 $04
	inc  b                                           ; $432f: $04
	inc  c                                           ; $4330: $0c
	inc  c                                           ; $4331: $0c
	dec  bc                                          ; $4332: $0b
	ld   [rRAMG], sp                                 ; $4333: $08 $00 $00
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	nop                                              ; $4338: $00
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	ld   bc, $0404                                   ; $4340: $01 $04 $04
	inc  b                                           ; $4343: $04
	inc  c                                           ; $4344: $0c
	inc  c                                           ; $4345: $0c
	dec  bc                                          ; $4346: $0b
	ld   [$0200], sp                                 ; $4347: $08 $00 $02
	ld   [bc], a                                     ; $434a: $02
	nop                                              ; $434b: $00
	nop                                              ; $434c: $00
	dec  b                                           ; $434d: $05
	nop                                              ; $434e: $00
	dec  b                                           ; $434f: $05
	ld   b, $00                                      ; $4350: $06 $00
	nop                                              ; $4352: $00
	nop                                              ; $4353: $00
	ld   [bc], a                                     ; $4354: $02
	ld   [bc], a                                     ; $4355: $02
	ld   [bc], a                                     ; $4356: $02
	ld   [bc], a                                     ; $4357: $02
	ld   a, [bc]                                     ; $4358: $0a
	ld   a, [bc]                                     ; $4359: $0a
	ld   a, [bc]                                     ; $435a: $0a
	ld   [$0300], sp                                 ; $435b: $08 $00 $03
	inc  bc                                          ; $435e: $03
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	ld   [bc], a                                     ; $4361: $02
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00
	nop                                              ; $4364: $00
	nop                                              ; $4365: $00
	ld   bc, $0201                                   ; $4366: $01 $01 $02
	ld   [bc], a                                     ; $4369: $02
	ld   [bc], a                                     ; $436a: $02
	ld   [bc], a                                     ; $436b: $02
	ld   a, [bc]                                     ; $436c: $0a
	ld   a, [bc]                                     ; $436d: $0a
	ld   a, [bc]                                     ; $436e: $0a
	ld   [$0300], sp                                 ; $436f: $08 $00 $03
	inc  bc                                          ; $4372: $03
	nop                                              ; $4373: $00
	nop                                              ; $4374: $00
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	nop                                              ; $437a: $00
	ld   bc, $0202                                   ; $437b: $01 $02 $02
	ld   [bc], a                                     ; $437e: $02
	ld   [bc], a                                     ; $437f: $02
	ld   a, [bc]                                     ; $4380: $0a
	ld   a, [bc]                                     ; $4381: $0a
	ld   a, [bc]                                     ; $4382: $0a
	ld   a, [bc]                                     ; $4383: $0a
	nop                                              ; $4384: $00
	nop                                              ; $4385: $00
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	inc  bc                                          ; $438f: $03
	ld   [bc], a                                     ; $4390: $02
	nop                                              ; $4391: $00
	nop                                              ; $4392: $00
	ld   [bc], a                                     ; $4393: $02
	ld   [$0808], sp                                 ; $4394: $08 $08 $08
	ld   [rRAMG], sp                                 ; $4397: $08 $00 $00
	nop                                              ; $439a: $00
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	ld   bc, $0001                                   ; $439d: $01 $01 $00
	ld   bc, $0001                                   ; $43a0: $01 $01 $00
	inc  bc                                          ; $43a3: $03
	nop                                              ; $43a4: $00
	nop                                              ; $43a5: $00
	nop                                              ; $43a6: $00
	nop                                              ; $43a7: $00
	ld   [$0808], sp                                 ; $43a8: $08 $08 $08
	ld   [$0006], sp                                 ; $43ab: $08 $06 $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	nop                                              ; $43b5: $00
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	nop                                              ; $43b8: $00
	nop                                              ; $43b9: $00
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	ld   [$0808], sp                                 ; $43bc: $08 $08 $08
	ld   [$0500], sp                                 ; $43bf: $08 $00 $05
	ld   [bc], a                                     ; $43c2: $02
	ld   [bc], a                                     ; $43c3: $02
	ld   [bc], a                                     ; $43c4: $02
	ld   [bc], a                                     ; $43c5: $02
	nop                                              ; $43c6: $00
	nop                                              ; $43c7: $00
	nop                                              ; $43c8: $00
	nop                                              ; $43c9: $00
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	ld   [bc], a                                     ; $43cc: $02
	ld   [bc], a                                     ; $43cd: $02
	ld   [bc], a                                     ; $43ce: $02
	ld   [bc], a                                     ; $43cf: $02
	ld   a, [bc]                                     ; $43d0: $0a
	ld   a, [bc]                                     ; $43d1: $0a
	ld   a, [bc]                                     ; $43d2: $0a
	ld   [$0505], sp                                 ; $43d3: $08 $05 $05
	dec  b                                           ; $43d6: $05
	dec  b                                           ; $43d7: $05
	ld   [bc], a                                     ; $43d8: $02
	ld   [bc], a                                     ; $43d9: $02
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
	ld   [bc], a                                     ; $43e0: $02
	ld   [bc], a                                     ; $43e1: $02
	dec  b                                           ; $43e2: $05
	dec  b                                           ; $43e3: $05
	dec  c                                           ; $43e4: $0d
	dec  c                                           ; $43e5: $0d
	dec  c                                           ; $43e6: $0d
	ld   [$0505], sp                                 ; $43e7: $08 $05 $05
	dec  b                                           ; $43ea: $05
	dec  b                                           ; $43eb: $05
	ld   [bc], a                                     ; $43ec: $02
	ld   [bc], a                                     ; $43ed: $02
	nop                                              ; $43ee: $00
	nop                                              ; $43ef: $00
	nop                                              ; $43f0: $00
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	ld   [bc], a                                     ; $43f4: $02
	ld   [bc], a                                     ; $43f5: $02
	dec  b                                           ; $43f6: $05
	dec  b                                           ; $43f7: $05
	dec  c                                           ; $43f8: $0d
	dec  c                                           ; $43f9: $0d
	dec  c                                           ; $43fa: $0d
	ld   [rRAMG], sp                                 ; $43fb: $08 $00 $00
	nop                                              ; $43fe: $00
	dec  b                                           ; $43ff: $05
	ld   [bc], a                                     ; $4400: $02
	ld   [bc], a                                     ; $4401: $02
	ld   [bc], a                                     ; $4402: $02
	ld   [bc], a                                     ; $4403: $02
	ld   [bc], a                                     ; $4404: $02
	ld   [bc], a                                     ; $4405: $02
	ld   [bc], a                                     ; $4406: $02
	ld   [bc], a                                     ; $4407: $02
	ld   [bc], a                                     ; $4408: $02
	ld   [bc], a                                     ; $4409: $02
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	ld   [$0d0d], sp                                 ; $440c: $08 $0d $0d
	ld   [$0808], sp                                 ; $440f: $08 $08 $08
	ld   [$0808], sp                                 ; $4412: $08 $08 $08
	ld   [$0808], sp                                 ; $4415: $08 $08 $08
	ld   [$0808], sp                                 ; $4418: $08 $08 $08
	ld   [$0808], sp                                 ; $441b: $08 $08 $08
	ld   [$0808], sp                                 ; $441e: $08 $08 $08
	ld   [$0808], sp                                 ; $4421: $08 $08 $08
	ld   [$0808], sp                                 ; $4424: $08 $08 $08
	ld   [$0808], sp                                 ; $4427: $08 $08 $08
	ld   [$0808], sp                                 ; $442a: $08 $08 $08
	ld   [$0808], sp                                 ; $442d: $08 $08 $08
	ld   [$0808], sp                                 ; $4430: $08 $08 $08
	ld   [$0808], sp                                 ; $4433: $08 $08 $08
	ld   [$8008], sp                                 ; $4436: $08 $08 $80
	add  c                                           ; $4439: $81
	add  d                                           ; $443a: $82
	add  e                                           ; $443b: $83
	add  h                                           ; $443c: $84
	add  l                                           ; $443d: $85
	add  [hl]                                        ; $443e: $86
	add  a                                           ; $443f: $87
	adc  b                                           ; $4440: $88
	adc  c                                           ; $4441: $89
	adc  d                                           ; $4442: $8a
	adc  e                                           ; $4443: $8b
	adc  h                                           ; $4444: $8c
	adc  l                                           ; $4445: $8d
	adc  [hl]                                        ; $4446: $8e
	adc  a                                           ; $4447: $8f
	inc  b                                           ; $4448: $04
	dec  b                                           ; $4449: $05
	ld   b, $07                                      ; $444a: $06 $07
	sub  b                                           ; $444c: $90
	sub  c                                           ; $444d: $91
	sub  d                                           ; $444e: $92
	sub  e                                           ; $444f: $93
	sub  h                                           ; $4450: $94
	sub  l                                           ; $4451: $95
	sub  [hl]                                        ; $4452: $96
	sub  a                                           ; $4453: $97
	sbc  b                                           ; $4454: $98
	sbc  c                                           ; $4455: $99
	sbc  d                                           ; $4456: $9a
	sbc  e                                           ; $4457: $9b
	sbc  h                                           ; $4458: $9c
	sbc  l                                           ; $4459: $9d
	sbc  [hl]                                        ; $445a: $9e
	sbc  a                                           ; $445b: $9f
	inc  d                                           ; $445c: $14
	dec  d                                           ; $445d: $15
	ld   d, $17                                      ; $445e: $16 $17
	and  b                                           ; $4460: $a0
	and  c                                           ; $4461: $a1
	and  d                                           ; $4462: $a2
	and  e                                           ; $4463: $a3
	and  h                                           ; $4464: $a4
	and  l                                           ; $4465: $a5
	and  [hl]                                        ; $4466: $a6
	and  a                                           ; $4467: $a7
	xor  b                                           ; $4468: $a8
	xor  c                                           ; $4469: $a9
	xor  d                                           ; $446a: $aa
	xor  e                                           ; $446b: $ab
	xor  h                                           ; $446c: $ac
	xor  l                                           ; $446d: $ad
	xor  [hl]                                        ; $446e: $ae
	xor  a                                           ; $446f: $af
	inc  h                                           ; $4470: $24
	dec  h                                           ; $4471: $25
	ld   h, $27                                      ; $4472: $26 $27
	or   b                                           ; $4474: $b0
	or   c                                           ; $4475: $b1
	or   d                                           ; $4476: $b2
	or   e                                           ; $4477: $b3
	or   h                                           ; $4478: $b4
	or   l                                           ; $4479: $b5
	or   [hl]                                        ; $447a: $b6
	or   a                                           ; $447b: $b7
	cp   b                                           ; $447c: $b8
	cp   c                                           ; $447d: $b9
	cp   d                                           ; $447e: $ba
	cp   e                                           ; $447f: $bb
	cp   h                                           ; $4480: $bc
	cp   l                                           ; $4481: $bd
	cp   [hl]                                        ; $4482: $be
	cp   a                                           ; $4483: $bf
	inc  [hl]                                        ; $4484: $34
	dec  [hl]                                        ; $4485: $35
	ld   [hl], $37                                   ; $4486: $36 $37
	ret  nz                                          ; $4488: $c0

	pop  bc                                          ; $4489: $c1
	jp   nz, $c4c3                                   ; $448a: $c2 $c3 $c4

	push bc                                          ; $448d: $c5
	add  $c7                                         ; $448e: $c6 $c7
	ret  z                                           ; $4490: $c8

	ret                                              ; $4491: $c9


	jp   z, $cccb                                    ; $4492: $ca $cb $cc

	call $cfce                                       ; $4495: $cd $ce $cf
	ld   b, h                                        ; $4498: $44
	ld   b, l                                        ; $4499: $45
	ld   b, [hl]                                     ; $449a: $46
	ld   b, a                                        ; $449b: $47
	ret  nc                                          ; $449c: $d0

	pop  de                                          ; $449d: $d1
	jp   nc, $d4d3                                   ; $449e: $d2 $d3 $d4

	push de                                          ; $44a1: $d5
	sub  $d7                                         ; $44a2: $d6 $d7
	ret  c                                           ; $44a4: $d8

	reti                                             ; $44a5: $d9


	jp   c, $dcdb                                    ; $44a6: $da $db $dc

	db   $dd                                         ; $44a9: $dd
	sbc  $df                                         ; $44aa: $de $df
	ld   d, h                                        ; $44ac: $54
	ld   d, l                                        ; $44ad: $55
	ld   d, [hl]                                     ; $44ae: $56
	ld   d, a                                        ; $44af: $57
	ldh  [$e1], a                                    ; $44b0: $e0 $e1
	ldh  [c], a                                      ; $44b2: $e2
	db   $e3                                         ; $44b3: $e3
	db   $e4                                         ; $44b4: $e4
	push hl                                          ; $44b5: $e5
	and  $e7                                         ; $44b6: $e6 $e7
	add  sp, -$17                                    ; $44b8: $e8 $e9
	ld   [$eceb], a                                  ; $44ba: $ea $eb $ec
	db   $ed                                         ; $44bd: $ed
	xor  $ef                                         ; $44be: $ee $ef
	ld   h, h                                        ; $44c0: $64
	ld   h, l                                        ; $44c1: $65
	ld   h, [hl]                                     ; $44c2: $66
	ld   h, a                                        ; $44c3: $67
	ldh  a, [$f1]                                    ; $44c4: $f0 $f1
	ldh  a, [c]                                      ; $44c6: $f2
	di                                               ; $44c7: $f3
	db   $f4                                         ; $44c8: $f4
	push af                                          ; $44c9: $f5
	or   $f7                                         ; $44ca: $f6 $f7
	ld   hl, sp-$07                                  ; $44cc: $f8 $f9
	ld   a, [$fcfb]                                  ; $44ce: $fa $fb $fc
	db   $fd                                         ; $44d1: $fd
	cp   $ff                                         ; $44d2: $fe $ff
	ld   [hl], h                                     ; $44d4: $74
	ld   [hl], l                                     ; $44d5: $75
	halt                                             ; $44d6: $76
	ld   [hl], a                                     ; $44d7: $77
	nop                                              ; $44d8: $00
	ld   bc, $0302                                   ; $44d9: $01 $02 $03
	inc  b                                           ; $44dc: $04
	dec  b                                           ; $44dd: $05
	ld   b, $07                                      ; $44de: $06 $07
	ld   [$0a09], sp                                 ; $44e0: $08 $09 $0a
	dec  bc                                          ; $44e3: $0b
	inc  c                                           ; $44e4: $0c
	dec  c                                           ; $44e5: $0d
	ld   c, $0f                                      ; $44e6: $0e $0f
	nop                                              ; $44e8: $00
	ld   bc, $0302                                   ; $44e9: $01 $02 $03
	db   $10                                         ; $44ec: $10
	ld   de, $1312                                   ; $44ed: $11 $12 $13
	inc  d                                           ; $44f0: $14
	dec  d                                           ; $44f1: $15
	ld   d, $17                                      ; $44f2: $16 $17
	jr   @+$1b                                       ; $44f4: $18 $19

	ld   a, [de]                                     ; $44f6: $1a
	dec  de                                          ; $44f7: $1b
	inc  e                                           ; $44f8: $1c
	dec  e                                           ; $44f9: $1d
	ld   e, $1f                                      ; $44fa: $1e $1f
	db   $10                                         ; $44fc: $10
	ld   de, $1312                                   ; $44fd: $11 $12 $13
	jr   nz, @+$23                                   ; $4500: $20 $21

	ld   [hl+], a                                    ; $4502: $22
	inc  hl                                          ; $4503: $23
	inc  h                                           ; $4504: $24
	dec  h                                           ; $4505: $25
	ld   h, $27                                      ; $4506: $26 $27
	jr   z, jr_090_4533                              ; $4508: $28 $29

	ld   a, [hl+]                                    ; $450a: $2a
	dec  hl                                          ; $450b: $2b
	inc  l                                           ; $450c: $2c
	dec  l                                           ; $450d: $2d
	ld   l, $2f                                      ; $450e: $2e $2f
	jr   nz, jr_090_4533                             ; $4510: $20 $21

	ld   [hl+], a                                    ; $4512: $22
	inc  hl                                          ; $4513: $23
	jr   nc, jr_090_4547                             ; $4514: $30 $31

	ld   [hl-], a                                    ; $4516: $32
	inc  sp                                          ; $4517: $33
	inc  [hl]                                        ; $4518: $34
	dec  [hl]                                        ; $4519: $35
	ld   [hl], $37                                   ; $451a: $36 $37
	jr   c, jr_090_4557                              ; $451c: $38 $39

	ld   a, [hl-]                                    ; $451e: $3a
	dec  sp                                          ; $451f: $3b
	inc  a                                           ; $4520: $3c
	dec  a                                           ; $4521: $3d
	ld   a, $3f                                      ; $4522: $3e $3f
	jr   nc, jr_090_4557                             ; $4524: $30 $31

	ld   [hl-], a                                    ; $4526: $32
	inc  sp                                          ; $4527: $33
	ld   b, b                                        ; $4528: $40
	ld   b, c                                        ; $4529: $41
	ld   b, d                                        ; $452a: $42
	ld   b, e                                        ; $452b: $43
	ld   b, h                                        ; $452c: $44
	ld   b, l                                        ; $452d: $45
	ld   b, [hl]                                     ; $452e: $46
	ld   b, a                                        ; $452f: $47
	ld   c, b                                        ; $4530: $48
	ld   c, c                                        ; $4531: $49
	ld   c, d                                        ; $4532: $4a

jr_090_4533:
	ld   c, e                                        ; $4533: $4b
	ld   c, h                                        ; $4534: $4c
	ld   c, l                                        ; $4535: $4d
	ld   c, [hl]                                     ; $4536: $4e
	ld   c, a                                        ; $4537: $4f
	ld   b, b                                        ; $4538: $40
	ld   b, c                                        ; $4539: $41
	ld   b, d                                        ; $453a: $42
	ld   b, e                                        ; $453b: $43
	ld   d, b                                        ; $453c: $50
	ld   d, c                                        ; $453d: $51
	ld   d, d                                        ; $453e: $52
	ld   d, e                                        ; $453f: $53
	ld   d, h                                        ; $4540: $54
	ld   d, l                                        ; $4541: $55
	ld   d, [hl]                                     ; $4542: $56
	ld   d, a                                        ; $4543: $57
	ld   e, b                                        ; $4544: $58
	ld   e, c                                        ; $4545: $59
	ld   e, d                                        ; $4546: $5a

jr_090_4547:
	ld   e, e                                        ; $4547: $5b
	ld   e, h                                        ; $4548: $5c
	ld   e, l                                        ; $4549: $5d
	ld   e, [hl]                                     ; $454a: $5e
	ld   e, a                                        ; $454b: $5f
	ld   d, b                                        ; $454c: $50
	ld   d, c                                        ; $454d: $51
	ld   d, d                                        ; $454e: $52
	ld   d, e                                        ; $454f: $53
	ld   h, b                                        ; $4550: $60
	ld   h, c                                        ; $4551: $61
	ld   h, d                                        ; $4552: $62
	ld   h, e                                        ; $4553: $63
	ld   h, h                                        ; $4554: $64
	ld   h, l                                        ; $4555: $65
	ld   h, [hl]                                     ; $4556: $66

jr_090_4557:
	ld   h, a                                        ; $4557: $67
	ld   l, b                                        ; $4558: $68
	ld   l, c                                        ; $4559: $69
	ld   l, d                                        ; $455a: $6a
	ld   l, e                                        ; $455b: $6b
	ld   l, h                                        ; $455c: $6c
	ld   l, l                                        ; $455d: $6d
	ld   l, [hl]                                     ; $455e: $6e
	ld   l, a                                        ; $455f: $6f
	ld   h, b                                        ; $4560: $60
	ld   h, c                                        ; $4561: $61
	ld   h, d                                        ; $4562: $62
	ld   h, e                                        ; $4563: $63
	ld   [hl], b                                     ; $4564: $70
	ld   [hl], c                                     ; $4565: $71
	ld   [hl], d                                     ; $4566: $72
	ld   [hl], e                                     ; $4567: $73
	ld   [hl], h                                     ; $4568: $74
	ld   [hl], l                                     ; $4569: $75
	halt                                             ; $456a: $76
	ld   [hl], a                                     ; $456b: $77
	ld   a, b                                        ; $456c: $78
	ld   a, c                                        ; $456d: $79
	ld   a, d                                        ; $456e: $7a
	ld   a, e                                        ; $456f: $7b
	ld   a, h                                        ; $4570: $7c
	ld   a, l                                        ; $4571: $7d
	ld   a, [hl]                                     ; $4572: $7e
	ld   a, a                                        ; $4573: $7f
	ld   [hl], b                                     ; $4574: $70
	ld   [hl], c                                     ; $4575: $71
	ld   [hl], d                                     ; $4576: $72
	ld   [hl], e                                     ; $4577: $73
	ld   [$0a09], sp                                 ; $4578: $08 $09 $0a
	dec  bc                                          ; $457b: $0b
	inc  c                                           ; $457c: $0c
	dec  c                                           ; $457d: $0d
	ld   c, $0f                                      ; $457e: $0e $0f
	jr   z, jr_090_45ab                              ; $4580: $28 $29

	ld   a, [hl+]                                    ; $4582: $2a
	dec  hl                                          ; $4583: $2b
	inc  l                                           ; $4584: $2c
	dec  l                                           ; $4585: $2d
	ld   l, $2f                                      ; $4586: $2e $2f
	ld   c, b                                        ; $4588: $48
	ld   c, c                                        ; $4589: $49
	ld   c, d                                        ; $458a: $4a
	ld   c, e                                        ; $458b: $4b
	jr   jr_090_45a7                                 ; $458c: $18 $19

	ld   a, [de]                                     ; $458e: $1a
	dec  de                                          ; $458f: $1b
	inc  e                                           ; $4590: $1c
	dec  e                                           ; $4591: $1d
	ld   e, $1f                                      ; $4592: $1e $1f
	jr   c, jr_090_45cf                              ; $4594: $38 $39

	ld   a, [hl-]                                    ; $4596: $3a
	dec  sp                                          ; $4597: $3b
	inc  a                                           ; $4598: $3c
	dec  a                                           ; $4599: $3d
	ld   a, $3f                                      ; $459a: $3e $3f
	ld   e, b                                        ; $459c: $58
	ld   e, c                                        ; $459d: $59
	ld   e, d                                        ; $459e: $5a
	ld   e, e                                        ; $459f: $5b
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00

jr_090_45a7:
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	nop                                              ; $45aa: $00

jr_090_45ab:
	nop                                              ; $45ab: $00
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	ld   [$0808], sp                                 ; $45b0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $45b3: $08 $00 $00
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	inc  c                                           ; $45c4: $0c
	inc  c                                           ; $45c5: $0c
	ld   [$0008], sp                                 ; $45c6: $08 $08 $00
	nop                                              ; $45c9: $00
	nop                                              ; $45ca: $00
	nop                                              ; $45cb: $00
	nop                                              ; $45cc: $00
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00

jr_090_45cf:
	nop                                              ; $45cf: $00
	ld   bc, $0101                                   ; $45d0: $01 $01 $01
	ld   bc, $0101                                   ; $45d3: $01 $01 $01
	inc  bc                                          ; $45d6: $03
	nop                                              ; $45d7: $00
	inc  c                                           ; $45d8: $0c
	inc  c                                           ; $45d9: $0c
	dec  bc                                          ; $45da: $0b
	ld   [rRAMG], sp                                 ; $45db: $08 $00 $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	ld   bc, $0303                                   ; $45e4: $01 $03 $03
	inc  bc                                          ; $45e7: $03
	ld   bc, $0101                                   ; $45e8: $01 $01 $01
	ld   bc, $0c0c                                   ; $45eb: $01 $0c $0c
	add  hl, bc                                      ; $45ee: $09
	add  hl, bc                                      ; $45ef: $09
	nop                                              ; $45f0: $00
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	nop                                              ; $45f4: $00
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	ld   bc, $0101                                   ; $45f9: $01 $01 $01
	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	add  hl, bc                                      ; $4600: $09
	add  hl, bc                                      ; $4601: $09
	ld   [$0008], sp                                 ; $4602: $08 $08 $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	inc  bc                                          ; $4610: $03
	nop                                              ; $4611: $00
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	ld   [$0808], sp                                 ; $4614: $08 $08 $08
	ld   [$0400], sp                                 ; $4617: $08 $00 $04
	inc  b                                           ; $461a: $04
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	ld   [$0808], sp                                 ; $4628: $08 $08 $08
	ld   [$0100], sp                                 ; $462b: $08 $00 $01
	ld   bc, $0000                                   ; $462e: $01 $00 $00
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	ld   [$0808], sp                                 ; $463c: $08 $08 $08
	ld   [$0100], sp                                 ; $463f: $08 $00 $01
	ld   bc, $0000                                   ; $4642: $01 $00 $00
	inc  b                                           ; $4645: $04
	inc  b                                           ; $4646: $04
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	inc  b                                           ; $4649: $04
	inc  b                                           ; $464a: $04
	inc  b                                           ; $464b: $04
	inc  bc                                          ; $464c: $03
	inc  bc                                          ; $464d: $03
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	ld   [$0808], sp                                 ; $4650: $08 $08 $08
	ld   [rRAMG], sp                                 ; $4653: $08 $00 $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	inc  b                                           ; $4659: $04
	inc  b                                           ; $465a: $04
	dec  b                                           ; $465b: $05
	inc  b                                           ; $465c: $04
	inc  b                                           ; $465d: $04
	inc  b                                           ; $465e: $04
	inc  b                                           ; $465f: $04
	inc  bc                                          ; $4660: $03
	inc  bc                                          ; $4661: $03
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	add  hl, bc                                      ; $4664: $09
	add  hl, bc                                      ; $4665: $09
	ld   [$0008], sp                                 ; $4666: $08 $08 $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	inc  b                                           ; $466d: $04
	inc  b                                           ; $466e: $04
	inc  b                                           ; $466f: $04
	inc  b                                           ; $4670: $04
	inc  b                                           ; $4671: $04
	inc  b                                           ; $4672: $04
	inc  b                                           ; $4673: $04
	ld   b, $06                                      ; $4674: $06 $06
	nop                                              ; $4676: $00
	ld   [bc], a                                     ; $4677: $02
	add  hl, bc                                      ; $4678: $09
	add  hl, bc                                      ; $4679: $09
	ld   a, [bc]                                     ; $467a: $0a
	ld   [rRAMG], sp                                 ; $467b: $08 $00 $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	inc  b                                           ; $4681: $04
	inc  b                                           ; $4682: $04
	inc  b                                           ; $4683: $04
	inc  b                                           ; $4684: $04
	inc  b                                           ; $4685: $04
	inc  b                                           ; $4686: $04
	inc  b                                           ; $4687: $04
	inc  b                                           ; $4688: $04
	inc  b                                           ; $4689: $04
	nop                                              ; $468a: $00
	ld   [bc], a                                     ; $468b: $02
	add  hl, bc                                      ; $468c: $09
	add  hl, bc                                      ; $468d: $09
	ld   a, [bc]                                     ; $468e: $0a
	ld   [rRAMG], sp                                 ; $468f: $08 $00 $00
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	nop                                              ; $4694: $00
	nop                                              ; $4695: $00
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	ld   [bc], a                                     ; $469f: $02
	add  hl, bc                                      ; $46a0: $09
	add  hl, bc                                      ; $46a1: $09
	ld   a, [bc]                                     ; $46a2: $0a
	ld   [rRAMG], sp                                 ; $46a3: $08 $00 $00
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	inc  bc                                          ; $46aa: $03
	inc  bc                                          ; $46ab: $03
	inc  bc                                          ; $46ac: $03
	inc  bc                                          ; $46ad: $03
	inc  bc                                          ; $46ae: $03
	inc  bc                                          ; $46af: $03
	inc  bc                                          ; $46b0: $03
	inc  bc                                          ; $46b1: $03
	nop                                              ; $46b2: $00
	ld   [bc], a                                     ; $46b3: $02
	add  hl, bc                                      ; $46b4: $09
	add  hl, bc                                      ; $46b5: $09
	ld   a, [bc]                                     ; $46b6: $0a
	ld   [rRAMG], sp                                 ; $46b7: $08 $00 $00
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	nop                                              ; $46bd: $00
	inc  bc                                          ; $46be: $03
	inc  bc                                          ; $46bf: $03
	inc  bc                                          ; $46c0: $03
	inc  bc                                          ; $46c1: $03
	inc  bc                                          ; $46c2: $03
	inc  bc                                          ; $46c3: $03
	inc  bc                                          ; $46c4: $03
	inc  bc                                          ; $46c5: $03
	nop                                              ; $46c6: $00
	ld   [bc], a                                     ; $46c7: $02
	add  hl, bc                                      ; $46c8: $09
	add  hl, bc                                      ; $46c9: $09
	ld   a, [bc]                                     ; $46ca: $0a
	ld   [rRAMG], sp                                 ; $46cb: $08 $00 $00
	nop                                              ; $46ce: $00
	nop                                              ; $46cf: $00
	nop                                              ; $46d0: $00
	nop                                              ; $46d1: $00
	inc  bc                                          ; $46d2: $03
	inc  bc                                          ; $46d3: $03
	inc  bc                                          ; $46d4: $03
	inc  bc                                          ; $46d5: $03
	inc  bc                                          ; $46d6: $03
	inc  bc                                          ; $46d7: $03
	inc  bc                                          ; $46d8: $03
	inc  bc                                          ; $46d9: $03
	nop                                              ; $46da: $00
	nop                                              ; $46db: $00
	ld   [$0808], sp                                 ; $46dc: $08 $08 $08
	ld   [$0808], sp                                 ; $46df: $08 $08 $08
	ld   [$0808], sp                                 ; $46e2: $08 $08 $08
	ld   [$0808], sp                                 ; $46e5: $08 $08 $08
	ld   [$0808], sp                                 ; $46e8: $08 $08 $08
	ld   [$0808], sp                                 ; $46eb: $08 $08 $08
	ld   [$0808], sp                                 ; $46ee: $08 $08 $08
	ld   [$0808], sp                                 ; $46f1: $08 $08 $08
	ld   [$0808], sp                                 ; $46f4: $08 $08 $08
	ld   [$0808], sp                                 ; $46f7: $08 $08 $08
	ld   [$0808], sp                                 ; $46fa: $08 $08 $08
	ld   [$0808], sp                                 ; $46fd: $08 $08 $08
	ld   [$0808], sp                                 ; $4700: $08 $08 $08
	ld   [$0808], sp                                 ; $4703: $08 $08 $08
	ld   [$8008], sp                                 ; $4706: $08 $08 $80
	add  c                                           ; $4709: $81
	add  d                                           ; $470a: $82
	add  e                                           ; $470b: $83
	add  h                                           ; $470c: $84
	add  l                                           ; $470d: $85
	add  [hl]                                        ; $470e: $86
	add  a                                           ; $470f: $87
	adc  b                                           ; $4710: $88
	adc  c                                           ; $4711: $89
	adc  d                                           ; $4712: $8a
	adc  e                                           ; $4713: $8b
	adc  h                                           ; $4714: $8c
	adc  l                                           ; $4715: $8d
	adc  [hl]                                        ; $4716: $8e
	adc  a                                           ; $4717: $8f
	inc  b                                           ; $4718: $04
	dec  b                                           ; $4719: $05
	ld   b, $07                                      ; $471a: $06 $07
	sub  b                                           ; $471c: $90
	sub  c                                           ; $471d: $91
	sub  d                                           ; $471e: $92
	sub  e                                           ; $471f: $93
	sub  h                                           ; $4720: $94
	sub  l                                           ; $4721: $95
	sub  [hl]                                        ; $4722: $96
	sub  a                                           ; $4723: $97
	sbc  b                                           ; $4724: $98
	sbc  c                                           ; $4725: $99
	sbc  d                                           ; $4726: $9a
	sbc  e                                           ; $4727: $9b
	sbc  h                                           ; $4728: $9c
	sbc  l                                           ; $4729: $9d
	sbc  [hl]                                        ; $472a: $9e
	sbc  a                                           ; $472b: $9f
	inc  d                                           ; $472c: $14
	dec  d                                           ; $472d: $15
	ld   d, $17                                      ; $472e: $16 $17
	and  b                                           ; $4730: $a0
	and  c                                           ; $4731: $a1
	and  d                                           ; $4732: $a2
	and  e                                           ; $4733: $a3
	and  h                                           ; $4734: $a4
	and  l                                           ; $4735: $a5
	and  [hl]                                        ; $4736: $a6
	and  a                                           ; $4737: $a7
	xor  b                                           ; $4738: $a8
	xor  c                                           ; $4739: $a9
	xor  d                                           ; $473a: $aa
	xor  e                                           ; $473b: $ab
	xor  h                                           ; $473c: $ac
	xor  l                                           ; $473d: $ad
	xor  [hl]                                        ; $473e: $ae
	xor  a                                           ; $473f: $af
	inc  h                                           ; $4740: $24
	dec  h                                           ; $4741: $25
	ld   h, $27                                      ; $4742: $26 $27
	or   b                                           ; $4744: $b0
	or   c                                           ; $4745: $b1
	or   d                                           ; $4746: $b2
	or   e                                           ; $4747: $b3
	or   h                                           ; $4748: $b4
	or   l                                           ; $4749: $b5
	or   [hl]                                        ; $474a: $b6
	or   a                                           ; $474b: $b7
	cp   b                                           ; $474c: $b8
	cp   c                                           ; $474d: $b9
	cp   d                                           ; $474e: $ba
	cp   e                                           ; $474f: $bb
	cp   h                                           ; $4750: $bc
	cp   l                                           ; $4751: $bd
	cp   [hl]                                        ; $4752: $be
	cp   a                                           ; $4753: $bf
	inc  [hl]                                        ; $4754: $34
	dec  [hl]                                        ; $4755: $35
	ld   [hl], $37                                   ; $4756: $36 $37
	ret  nz                                          ; $4758: $c0

	pop  bc                                          ; $4759: $c1
	jp   nz, $c4c3                                   ; $475a: $c2 $c3 $c4

	push bc                                          ; $475d: $c5
	add  $c7                                         ; $475e: $c6 $c7
	ret  z                                           ; $4760: $c8

	ret                                              ; $4761: $c9


	jp   z, $cccb                                    ; $4762: $ca $cb $cc

	call $cfce                                       ; $4765: $cd $ce $cf
	ld   b, h                                        ; $4768: $44
	ld   b, l                                        ; $4769: $45
	ld   b, [hl]                                     ; $476a: $46
	ld   b, a                                        ; $476b: $47
	ret  nc                                          ; $476c: $d0

	pop  de                                          ; $476d: $d1
	jp   nc, $d4d3                                   ; $476e: $d2 $d3 $d4

	push de                                          ; $4771: $d5
	sub  $d7                                         ; $4772: $d6 $d7
	ret  c                                           ; $4774: $d8

	reti                                             ; $4775: $d9


	jp   c, $dcdb                                    ; $4776: $da $db $dc

	db   $dd                                         ; $4779: $dd
	sbc  $df                                         ; $477a: $de $df
	ld   d, h                                        ; $477c: $54
	ld   d, l                                        ; $477d: $55
	ld   d, [hl]                                     ; $477e: $56
	ld   d, a                                        ; $477f: $57
	ldh  [$e1], a                                    ; $4780: $e0 $e1
	ldh  [c], a                                      ; $4782: $e2
	db   $e3                                         ; $4783: $e3
	db   $e4                                         ; $4784: $e4
	push hl                                          ; $4785: $e5
	and  $e7                                         ; $4786: $e6 $e7
	add  sp, -$17                                    ; $4788: $e8 $e9
	ld   [$eceb], a                                  ; $478a: $ea $eb $ec
	db   $ed                                         ; $478d: $ed
	xor  $ef                                         ; $478e: $ee $ef
	ld   h, h                                        ; $4790: $64
	ld   h, l                                        ; $4791: $65
	ld   h, [hl]                                     ; $4792: $66
	ld   h, a                                        ; $4793: $67
	ldh  a, [$f1]                                    ; $4794: $f0 $f1
	ldh  a, [c]                                      ; $4796: $f2
	di                                               ; $4797: $f3
	db   $f4                                         ; $4798: $f4
	push af                                          ; $4799: $f5
	or   $f7                                         ; $479a: $f6 $f7
	ld   hl, sp-$07                                  ; $479c: $f8 $f9
	ld   a, [$fcfb]                                  ; $479e: $fa $fb $fc
	db   $fd                                         ; $47a1: $fd
	cp   $ff                                         ; $47a2: $fe $ff
	ld   [hl], h                                     ; $47a4: $74
	ld   [hl], l                                     ; $47a5: $75
	halt                                             ; $47a6: $76
	ld   [hl], a                                     ; $47a7: $77
	nop                                              ; $47a8: $00
	ld   bc, $0302                                   ; $47a9: $01 $02 $03
	inc  b                                           ; $47ac: $04
	dec  b                                           ; $47ad: $05
	ld   b, $07                                      ; $47ae: $06 $07
	ld   [$0a09], sp                                 ; $47b0: $08 $09 $0a
	dec  bc                                          ; $47b3: $0b
	inc  c                                           ; $47b4: $0c
	dec  c                                           ; $47b5: $0d
	ld   c, $0f                                      ; $47b6: $0e $0f
	nop                                              ; $47b8: $00
	ld   bc, $0302                                   ; $47b9: $01 $02 $03
	db   $10                                         ; $47bc: $10
	ld   de, $1312                                   ; $47bd: $11 $12 $13
	inc  d                                           ; $47c0: $14
	dec  d                                           ; $47c1: $15
	ld   d, $17                                      ; $47c2: $16 $17
	jr   @+$1b                                       ; $47c4: $18 $19

	ld   a, [de]                                     ; $47c6: $1a
	dec  de                                          ; $47c7: $1b
	inc  e                                           ; $47c8: $1c
	dec  e                                           ; $47c9: $1d
	ld   e, $1f                                      ; $47ca: $1e $1f
	db   $10                                         ; $47cc: $10
	ld   de, $1312                                   ; $47cd: $11 $12 $13
	jr   nz, @+$23                                   ; $47d0: $20 $21

	ld   [hl+], a                                    ; $47d2: $22
	inc  hl                                          ; $47d3: $23
	inc  h                                           ; $47d4: $24
	dec  h                                           ; $47d5: $25
	ld   h, $27                                      ; $47d6: $26 $27
	jr   z, jr_090_4803                              ; $47d8: $28 $29

	ld   a, [hl+]                                    ; $47da: $2a
	dec  hl                                          ; $47db: $2b
	inc  l                                           ; $47dc: $2c
	dec  l                                           ; $47dd: $2d
	ld   l, $2f                                      ; $47de: $2e $2f
	jr   nz, jr_090_4803                             ; $47e0: $20 $21

	ld   [hl+], a                                    ; $47e2: $22
	inc  hl                                          ; $47e3: $23
	jr   nc, jr_090_4817                             ; $47e4: $30 $31

	ld   [hl-], a                                    ; $47e6: $32
	inc  sp                                          ; $47e7: $33
	inc  [hl]                                        ; $47e8: $34
	dec  [hl]                                        ; $47e9: $35
	ld   [hl], $37                                   ; $47ea: $36 $37
	jr   c, jr_090_4827                              ; $47ec: $38 $39

	ld   a, [hl-]                                    ; $47ee: $3a
	dec  sp                                          ; $47ef: $3b
	inc  a                                           ; $47f0: $3c
	dec  a                                           ; $47f1: $3d
	ld   a, $3f                                      ; $47f2: $3e $3f
	jr   nc, jr_090_4827                             ; $47f4: $30 $31

	ld   [hl-], a                                    ; $47f6: $32
	inc  sp                                          ; $47f7: $33
	ld   b, b                                        ; $47f8: $40
	ld   b, c                                        ; $47f9: $41
	ld   b, d                                        ; $47fa: $42
	ld   b, e                                        ; $47fb: $43
	ld   b, h                                        ; $47fc: $44
	ld   b, l                                        ; $47fd: $45
	ld   b, [hl]                                     ; $47fe: $46
	ld   b, a                                        ; $47ff: $47
	ld   c, b                                        ; $4800: $48
	ld   c, c                                        ; $4801: $49
	ld   c, d                                        ; $4802: $4a

jr_090_4803:
	ld   c, e                                        ; $4803: $4b
	ld   c, h                                        ; $4804: $4c
	ld   c, l                                        ; $4805: $4d
	ld   c, [hl]                                     ; $4806: $4e
	ld   c, a                                        ; $4807: $4f
	ld   b, b                                        ; $4808: $40
	ld   b, c                                        ; $4809: $41
	ld   b, d                                        ; $480a: $42
	ld   b, e                                        ; $480b: $43
	ld   d, b                                        ; $480c: $50
	ld   d, c                                        ; $480d: $51
	ld   d, d                                        ; $480e: $52
	ld   d, e                                        ; $480f: $53
	ld   d, h                                        ; $4810: $54
	ld   d, l                                        ; $4811: $55
	ld   d, [hl]                                     ; $4812: $56
	ld   d, a                                        ; $4813: $57
	ld   e, b                                        ; $4814: $58
	ld   e, c                                        ; $4815: $59
	ld   e, d                                        ; $4816: $5a

jr_090_4817:
	ld   e, e                                        ; $4817: $5b
	ld   e, h                                        ; $4818: $5c
	ld   e, l                                        ; $4819: $5d
	ld   e, [hl]                                     ; $481a: $5e
	ld   e, a                                        ; $481b: $5f
	ld   d, b                                        ; $481c: $50
	ld   d, c                                        ; $481d: $51
	ld   d, d                                        ; $481e: $52
	ld   d, e                                        ; $481f: $53
	ld   h, b                                        ; $4820: $60
	ld   h, c                                        ; $4821: $61
	ld   h, d                                        ; $4822: $62
	ld   h, e                                        ; $4823: $63
	ld   h, h                                        ; $4824: $64
	ld   h, l                                        ; $4825: $65
	ld   h, [hl]                                     ; $4826: $66

jr_090_4827:
	ld   h, a                                        ; $4827: $67
	ld   l, b                                        ; $4828: $68
	ld   l, c                                        ; $4829: $69
	ld   l, d                                        ; $482a: $6a
	ld   l, e                                        ; $482b: $6b
	ld   l, h                                        ; $482c: $6c
	ld   l, l                                        ; $482d: $6d
	ld   l, [hl]                                     ; $482e: $6e
	ld   l, a                                        ; $482f: $6f
	ld   h, b                                        ; $4830: $60
	ld   h, c                                        ; $4831: $61
	ld   h, d                                        ; $4832: $62
	ld   h, e                                        ; $4833: $63
	ld   [hl], b                                     ; $4834: $70
	ld   [hl], c                                     ; $4835: $71
	ld   [hl], d                                     ; $4836: $72
	ld   [hl], e                                     ; $4837: $73
	ld   [hl], h                                     ; $4838: $74
	ld   [hl], l                                     ; $4839: $75
	halt                                             ; $483a: $76
	ld   [hl], a                                     ; $483b: $77
	ld   a, b                                        ; $483c: $78
	ld   a, c                                        ; $483d: $79
	ld   a, d                                        ; $483e: $7a
	ld   a, e                                        ; $483f: $7b
	ld   a, h                                        ; $4840: $7c
	ld   a, l                                        ; $4841: $7d
	ld   a, [hl]                                     ; $4842: $7e
	ld   a, a                                        ; $4843: $7f
	ld   [hl], b                                     ; $4844: $70
	ld   [hl], c                                     ; $4845: $71
	ld   [hl], d                                     ; $4846: $72
	ld   [hl], e                                     ; $4847: $73
	ld   [$0a09], sp                                 ; $4848: $08 $09 $0a
	dec  bc                                          ; $484b: $0b
	inc  c                                           ; $484c: $0c
	dec  c                                           ; $484d: $0d
	ld   c, $0f                                      ; $484e: $0e $0f
	jr   z, jr_090_487b                              ; $4850: $28 $29

	ld   a, [hl+]                                    ; $4852: $2a
	dec  hl                                          ; $4853: $2b
	inc  l                                           ; $4854: $2c
	dec  l                                           ; $4855: $2d
	ld   l, $2f                                      ; $4856: $2e $2f
	ld   c, b                                        ; $4858: $48
	ld   c, c                                        ; $4859: $49
	ld   c, d                                        ; $485a: $4a
	ld   c, e                                        ; $485b: $4b
	jr   jr_090_4877                                 ; $485c: $18 $19

	ld   a, [de]                                     ; $485e: $1a
	dec  de                                          ; $485f: $1b
	inc  e                                           ; $4860: $1c
	dec  e                                           ; $4861: $1d
	ld   e, $1f                                      ; $4862: $1e $1f
	jr   c, jr_090_489f                              ; $4864: $38 $39

	ld   a, [hl-]                                    ; $4866: $3a
	dec  sp                                          ; $4867: $3b
	inc  a                                           ; $4868: $3c
	dec  a                                           ; $4869: $3d
	ld   a, $3f                                      ; $486a: $3e $3f
	ld   e, b                                        ; $486c: $58
	ld   e, c                                        ; $486d: $59
	ld   e, d                                        ; $486e: $5a
	ld   e, e                                        ; $486f: $5b
	rlca                                             ; $4870: $07
	rlca                                             ; $4871: $07
	rlca                                             ; $4872: $07
	rlca                                             ; $4873: $07
	rlca                                             ; $4874: $07
	rlca                                             ; $4875: $07
	rlca                                             ; $4876: $07

jr_090_4877:
	rlca                                             ; $4877: $07
	rlca                                             ; $4878: $07
	rlca                                             ; $4879: $07
	rlca                                             ; $487a: $07

jr_090_487b:
	ld   b, $06                                      ; $487b: $06 $06
	ld   b, $07                                      ; $487d: $06 $07
	rlca                                             ; $487f: $07
	rlca                                             ; $4880: $07
	dec  b                                           ; $4881: $05
	dec  b                                           ; $4882: $05
	dec  b                                           ; $4883: $05
	rlca                                             ; $4884: $07
	rlca                                             ; $4885: $07
	rlca                                             ; $4886: $07
	rlca                                             ; $4887: $07
	rlca                                             ; $4888: $07
	rlca                                             ; $4889: $07
	rlca                                             ; $488a: $07
	rlca                                             ; $488b: $07
	rlca                                             ; $488c: $07
	rlca                                             ; $488d: $07
	rlca                                             ; $488e: $07
	ld   b, $06                                      ; $488f: $06 $06
	ld   b, $07                                      ; $4891: $06 $07
	ld   b, $05                                      ; $4893: $06 $05
	dec  b                                           ; $4895: $05
	dec  b                                           ; $4896: $05
	dec  b                                           ; $4897: $05
	rlca                                             ; $4898: $07
	rlca                                             ; $4899: $07
	rlca                                             ; $489a: $07
	rlca                                             ; $489b: $07
	rlca                                             ; $489c: $07
	rlca                                             ; $489d: $07
	rlca                                             ; $489e: $07

jr_090_489f:
	rlca                                             ; $489f: $07
	rlca                                             ; $48a0: $07
	rlca                                             ; $48a1: $07
	rlca                                             ; $48a2: $07
	ld   b, $05                                      ; $48a3: $06 $05
	dec  b                                           ; $48a5: $05
	ld   b, $05                                      ; $48a6: $06 $05
	dec  b                                           ; $48a8: $05
	dec  b                                           ; $48a9: $05
	dec  b                                           ; $48aa: $05
	dec  b                                           ; $48ab: $05
	rlca                                             ; $48ac: $07
	rlca                                             ; $48ad: $07
	rlca                                             ; $48ae: $07
	rlca                                             ; $48af: $07
	rlca                                             ; $48b0: $07
	rlca                                             ; $48b1: $07
	rlca                                             ; $48b2: $07
	rlca                                             ; $48b3: $07
	rlca                                             ; $48b4: $07
	rlca                                             ; $48b5: $07
	rlca                                             ; $48b6: $07
	ld   b, $05                                      ; $48b7: $06 $05
	dec  b                                           ; $48b9: $05
	dec  b                                           ; $48ba: $05
	dec  b                                           ; $48bb: $05
	dec  b                                           ; $48bc: $05
	dec  b                                           ; $48bd: $05
	dec  b                                           ; $48be: $05
	dec  b                                           ; $48bf: $05
	rlca                                             ; $48c0: $07
	rlca                                             ; $48c1: $07
	rlca                                             ; $48c2: $07
	rlca                                             ; $48c3: $07
	rlca                                             ; $48c4: $07
	rlca                                             ; $48c5: $07
	rlca                                             ; $48c6: $07
	rlca                                             ; $48c7: $07
	ld   b, $06                                      ; $48c8: $06 $06
	rlca                                             ; $48ca: $07
	ld   b, $05                                      ; $48cb: $06 $05
	dec  b                                           ; $48cd: $05
	dec  b                                           ; $48ce: $05
	dec  b                                           ; $48cf: $05
	dec  b                                           ; $48d0: $05
	dec  b                                           ; $48d1: $05
	dec  b                                           ; $48d2: $05
	dec  b                                           ; $48d3: $05
	ld   b, $06                                      ; $48d4: $06 $06
	rlca                                             ; $48d6: $07
	rlca                                             ; $48d7: $07
	rlca                                             ; $48d8: $07
	rlca                                             ; $48d9: $07
	rlca                                             ; $48da: $07
	rlca                                             ; $48db: $07
	ld   b, $06                                      ; $48dc: $06 $06
	dec  b                                           ; $48de: $05
	dec  b                                           ; $48df: $05
	dec  b                                           ; $48e0: $05
	dec  b                                           ; $48e1: $05
	dec  b                                           ; $48e2: $05
	dec  b                                           ; $48e3: $05
	dec  b                                           ; $48e4: $05
	dec  b                                           ; $48e5: $05
	dec  b                                           ; $48e6: $05
	dec  b                                           ; $48e7: $05
	ld   b, $06                                      ; $48e8: $06 $06
	ld   b, $07                                      ; $48ea: $06 $07
	ld   b, $06                                      ; $48ec: $06 $06
	ld   b, $06                                      ; $48ee: $06 $06
	dec  b                                           ; $48f0: $05
	dec  b                                           ; $48f1: $05
	dec  b                                           ; $48f2: $05
	dec  b                                           ; $48f3: $05
	dec  b                                           ; $48f4: $05
	dec  b                                           ; $48f5: $05
	dec  b                                           ; $48f6: $05
	dec  b                                           ; $48f7: $05
	dec  b                                           ; $48f8: $05
	dec  c                                           ; $48f9: $0d
	dec  c                                           ; $48fa: $0d
	dec  c                                           ; $48fb: $0d
	ld   c, $0d                                      ; $48fc: $0e $0d
	ld   c, $0e                                      ; $48fe: $0e $0e
	ld   c, $0d                                      ; $4900: $0e $0d
	dec  c                                           ; $4902: $0d
	dec  c                                           ; $4903: $0d
	dec  c                                           ; $4904: $0d
	dec  c                                           ; $4905: $0d
	dec  c                                           ; $4906: $0d
	dec  c                                           ; $4907: $0d
	dec  c                                           ; $4908: $0d
	dec  c                                           ; $4909: $0d
	dec  c                                           ; $490a: $0d
	dec  c                                           ; $490b: $0d
	dec  c                                           ; $490c: $0d
	dec  c                                           ; $490d: $0d
	dec  c                                           ; $490e: $0d
	dec  c                                           ; $490f: $0d
	dec  c                                           ; $4910: $0d
	dec  c                                           ; $4911: $0d
	dec  c                                           ; $4912: $0d
	dec  c                                           ; $4913: $0d
	dec  c                                           ; $4914: $0d
	dec  c                                           ; $4915: $0d
	dec  c                                           ; $4916: $0d
	dec  c                                           ; $4917: $0d
	dec  c                                           ; $4918: $0d
	dec  c                                           ; $4919: $0d
	dec  c                                           ; $491a: $0d
	dec  c                                           ; $491b: $0d
	dec  c                                           ; $491c: $0d
	dec  c                                           ; $491d: $0d
	dec  c                                           ; $491e: $0d
	dec  c                                           ; $491f: $0d
	dec  c                                           ; $4920: $0d
	dec  c                                           ; $4921: $0d
	dec  c                                           ; $4922: $0d
	dec  c                                           ; $4923: $0d
	dec  c                                           ; $4924: $0d
	dec  c                                           ; $4925: $0d
	dec  c                                           ; $4926: $0d
	dec  c                                           ; $4927: $0d
	dec  c                                           ; $4928: $0d
	dec  c                                           ; $4929: $0d
	dec  c                                           ; $492a: $0d
	dec  c                                           ; $492b: $0d
	dec  c                                           ; $492c: $0d
	dec  c                                           ; $492d: $0d
	dec  c                                           ; $492e: $0d
	dec  c                                           ; $492f: $0d
	dec  c                                           ; $4930: $0d
	dec  c                                           ; $4931: $0d
	dec  c                                           ; $4932: $0d
	dec  c                                           ; $4933: $0d
	dec  c                                           ; $4934: $0d
	dec  c                                           ; $4935: $0d
	dec  c                                           ; $4936: $0d
	dec  c                                           ; $4937: $0d
	nop                                              ; $4938: $00
	ld   bc, $0302                                   ; $4939: $01 $02 $03
	inc  b                                           ; $493c: $04
	dec  b                                           ; $493d: $05
	ld   b, $07                                      ; $493e: $06 $07
	ld   [$0a09], sp                                 ; $4940: $08 $09 $0a
	dec  bc                                          ; $4943: $0b
	inc  c                                           ; $4944: $0c
	dec  c                                           ; $4945: $0d
	ld   c, $0f                                      ; $4946: $0e $0f
	db   $10                                         ; $4948: $10
	ld   de, $1312                                   ; $4949: $11 $12 $13
	inc  d                                           ; $494c: $14
	dec  d                                           ; $494d: $15
	ld   d, $17                                      ; $494e: $16 $17
	jr   jr_090_496b                                 ; $4950: $18 $19

	ld   a, [de]                                     ; $4952: $1a
	dec  de                                          ; $4953: $1b
	inc  e                                           ; $4954: $1c
	dec  e                                           ; $4955: $1d
	ld   e, $1f                                      ; $4956: $1e $1f
	jr   nz, jr_090_497b                             ; $4958: $20 $21

	ld   a, [hl+]                                    ; $495a: $2a
	ld   [hl+], a                                    ; $495b: $22
	inc  hl                                          ; $495c: $23
	inc  h                                           ; $495d: $24
	dec  h                                           ; $495e: $25
	ld   h, $27                                      ; $495f: $26 $27
	jr   z, jr_090_498c                              ; $4961: $28 $29

	ld   a, [hl+]                                    ; $4963: $2a
	ld   a, [hl+]                                    ; $4964: $2a
	ld   a, [hl+]                                    ; $4965: $2a
	dec  hl                                          ; $4966: $2b
	inc  l                                           ; $4967: $2c
	dec  l                                           ; $4968: $2d
	ld   l, $2f                                      ; $4969: $2e $2f

jr_090_496b:
	jr   nc, jr_090_499e                             ; $496b: $30 $31

	ld   [hl-], a                                    ; $496d: $32
	inc  sp                                          ; $496e: $33
	inc  [hl]                                        ; $496f: $34
	dec  [hl]                                        ; $4970: $35
	ld   [hl], $37                                   ; $4971: $36 $37
	jr   c, jr_090_49ae                              ; $4973: $38 $39

	ld   a, [hl+]                                    ; $4975: $2a
	ld   a, [hl+]                                    ; $4976: $2a
	ld   a, [hl-]                                    ; $4977: $3a
	dec  sp                                          ; $4978: $3b
	inc  a                                           ; $4979: $3c
	dec  a                                           ; $497a: $3d

jr_090_497b:
	ld   a, [hl+]                                    ; $497b: $2a
	ld   a, [hl+]                                    ; $497c: $2a
	ld   a, [hl+]                                    ; $497d: $2a
	ld   a, $3f                                      ; $497e: $3e $3f
	ld   b, b                                        ; $4980: $40
	ld   b, c                                        ; $4981: $41
	ld   b, d                                        ; $4982: $42
	ld   b, e                                        ; $4983: $43
	ld   b, h                                        ; $4984: $44
	ld   b, l                                        ; $4985: $45
	ld   b, [hl]                                     ; $4986: $46
	ld   b, a                                        ; $4987: $47
	ld   c, b                                        ; $4988: $48
	ld   c, c                                        ; $4989: $49
	ld   c, d                                        ; $498a: $4a
	ld   c, e                                        ; $498b: $4b

jr_090_498c:
	ld   c, h                                        ; $498c: $4c
	ld   c, l                                        ; $498d: $4d
	ld   c, [hl]                                     ; $498e: $4e
	ld   c, a                                        ; $498f: $4f
	ld   d, b                                        ; $4990: $50
	ld   d, c                                        ; $4991: $51
	ld   d, d                                        ; $4992: $52
	ld   d, e                                        ; $4993: $53
	ld   d, h                                        ; $4994: $54
	ld   d, l                                        ; $4995: $55
	ld   d, [hl]                                     ; $4996: $56
	ld   d, a                                        ; $4997: $57
	ld   e, b                                        ; $4998: $58
	ld   e, c                                        ; $4999: $59
	ld   e, d                                        ; $499a: $5a
	ld   e, e                                        ; $499b: $5b
	ld   e, h                                        ; $499c: $5c
	ld   e, l                                        ; $499d: $5d

jr_090_499e:
	ld   e, [hl]                                     ; $499e: $5e
	ld   e, a                                        ; $499f: $5f
	ld   h, b                                        ; $49a0: $60
	ld   h, c                                        ; $49a1: $61
	ld   h, d                                        ; $49a2: $62
	ld   h, e                                        ; $49a3: $63
	ld   h, h                                        ; $49a4: $64
	ld   h, l                                        ; $49a5: $65
	ld   h, [hl]                                     ; $49a6: $66
	ld   h, a                                        ; $49a7: $67
	ld   l, b                                        ; $49a8: $68
	ld   l, c                                        ; $49a9: $69
	ld   l, d                                        ; $49aa: $6a
	ld   l, e                                        ; $49ab: $6b
	ld   l, h                                        ; $49ac: $6c
	ld   l, l                                        ; $49ad: $6d

jr_090_49ae:
	ld   l, [hl]                                     ; $49ae: $6e
	ld   l, a                                        ; $49af: $6f
	ld   [hl], b                                     ; $49b0: $70
	ld   [hl], c                                     ; $49b1: $71
	ld   [hl], d                                     ; $49b2: $72
	ld   a, [hl+]                                    ; $49b3: $2a
	ld   [hl], e                                     ; $49b4: $73
	ld   [hl], h                                     ; $49b5: $74
	ld   [hl], l                                     ; $49b6: $75
	halt                                             ; $49b7: $76
	ld   [hl], a                                     ; $49b8: $77
	ld   a, b                                        ; $49b9: $78
	ld   a, c                                        ; $49ba: $79
	ld   a, d                                        ; $49bb: $7a
	ld   a, e                                        ; $49bc: $7b
	ld   a, h                                        ; $49bd: $7c
	ld   a, l                                        ; $49be: $7d
	ld   a, [hl]                                     ; $49bf: $7e
	ld   a, a                                        ; $49c0: $7f
	nop                                              ; $49c1: $00
	ld   bc, $0302                                   ; $49c2: $01 $02 $03
	inc  b                                           ; $49c5: $04
	dec  b                                           ; $49c6: $05
	ld   b, $07                                      ; $49c7: $06 $07
	ld   [$0a09], sp                                 ; $49c9: $08 $09 $0a
	dec  bc                                          ; $49cc: $0b
	inc  c                                           ; $49cd: $0c
	dec  c                                           ; $49ce: $0d
	ld   c, $0f                                      ; $49cf: $0e $0f
	db   $10                                         ; $49d1: $10
	ld   de, $1312                                   ; $49d2: $11 $12 $13
	inc  d                                           ; $49d5: $14
	dec  d                                           ; $49d6: $15
	ld   d, $17                                      ; $49d7: $16 $17
	jr   jr_090_49f4                                 ; $49d9: $18 $19

	ld   a, [de]                                     ; $49db: $1a
	dec  de                                          ; $49dc: $1b
	inc  e                                           ; $49dd: $1c
	dec  e                                           ; $49de: $1d
	ld   e, $1f                                      ; $49df: $1e $1f
	jr   nz, jr_090_4a04                             ; $49e1: $20 $21

	ld   [hl+], a                                    ; $49e3: $22
	inc  hl                                          ; $49e4: $23
	inc  h                                           ; $49e5: $24
	dec  h                                           ; $49e6: $25
	ld   h, $27                                      ; $49e7: $26 $27
	jr   z, jr_090_4a14                              ; $49e9: $28 $29

	ld   a, [hl+]                                    ; $49eb: $2a
	dec  hl                                          ; $49ec: $2b
	inc  l                                           ; $49ed: $2c
	dec  l                                           ; $49ee: $2d
	ld   l, $2f                                      ; $49ef: $2e $2f
	jr   nc, jr_090_4a24                             ; $49f1: $30 $31

	ld   [hl-], a                                    ; $49f3: $32

jr_090_49f4:
	inc  sp                                          ; $49f4: $33
	inc  [hl]                                        ; $49f5: $34
	dec  [hl]                                        ; $49f6: $35
	ld   [hl], $37                                   ; $49f7: $36 $37
	jr   c, jr_090_4a34                              ; $49f9: $38 $39

	ld   a, [hl-]                                    ; $49fb: $3a
	dec  sp                                          ; $49fc: $3b
	inc  a                                           ; $49fd: $3c
	dec  a                                           ; $49fe: $3d
	ld   a, $0d                                      ; $49ff: $3e $0d
	dec  c                                           ; $4a01: $0d
	dec  c                                           ; $4a02: $0d
	dec  c                                           ; $4a03: $0d

jr_090_4a04:
	dec  c                                           ; $4a04: $0d
	dec  c                                           ; $4a05: $0d
	dec  c                                           ; $4a06: $0d
	dec  c                                           ; $4a07: $0d
	dec  c                                           ; $4a08: $0d
	dec  c                                           ; $4a09: $0d
	dec  c                                           ; $4a0a: $0d
	dec  c                                           ; $4a0b: $0d
	dec  c                                           ; $4a0c: $0d
	dec  c                                           ; $4a0d: $0d
	dec  c                                           ; $4a0e: $0d
	dec  c                                           ; $4a0f: $0d
	dec  c                                           ; $4a10: $0d
	dec  c                                           ; $4a11: $0d
	dec  c                                           ; $4a12: $0d
	dec  c                                           ; $4a13: $0d

jr_090_4a14:
	dec  c                                           ; $4a14: $0d
	dec  c                                           ; $4a15: $0d
	dec  c                                           ; $4a16: $0d
	dec  c                                           ; $4a17: $0d
	dec  c                                           ; $4a18: $0d
	dec  c                                           ; $4a19: $0d
	dec  c                                           ; $4a1a: $0d
	dec  c                                           ; $4a1b: $0d
	dec  c                                           ; $4a1c: $0d
	dec  c                                           ; $4a1d: $0d
	dec  c                                           ; $4a1e: $0d
	dec  c                                           ; $4a1f: $0d
	dec  c                                           ; $4a20: $0d
	dec  c                                           ; $4a21: $0d
	dec  c                                           ; $4a22: $0d
	dec  c                                           ; $4a23: $0d

jr_090_4a24:
	dec  c                                           ; $4a24: $0d
	dec  c                                           ; $4a25: $0d
	dec  c                                           ; $4a26: $0d
	dec  c                                           ; $4a27: $0d
	dec  c                                           ; $4a28: $0d
	dec  c                                           ; $4a29: $0d
	dec  c                                           ; $4a2a: $0d
	dec  c                                           ; $4a2b: $0d
	dec  c                                           ; $4a2c: $0d
	dec  c                                           ; $4a2d: $0d
	dec  c                                           ; $4a2e: $0d
	dec  c                                           ; $4a2f: $0d
	dec  c                                           ; $4a30: $0d
	dec  c                                           ; $4a31: $0d
	dec  c                                           ; $4a32: $0d
	dec  c                                           ; $4a33: $0d

jr_090_4a34:
	dec  b                                           ; $4a34: $05
	dec  c                                           ; $4a35: $0d
	dec  c                                           ; $4a36: $0d
	dec  c                                           ; $4a37: $0d
	dec  c                                           ; $4a38: $0d
	dec  c                                           ; $4a39: $0d
	dec  c                                           ; $4a3a: $0d
	dec  c                                           ; $4a3b: $0d
	dec  c                                           ; $4a3c: $0d
	dec  c                                           ; $4a3d: $0d
	dec  c                                           ; $4a3e: $0d
	dec  c                                           ; $4a3f: $0d
	dec  c                                           ; $4a40: $0d
	dec  c                                           ; $4a41: $0d
	dec  b                                           ; $4a42: $05
	dec  b                                           ; $4a43: $05
	dec  b                                           ; $4a44: $05
	dec  b                                           ; $4a45: $05
	dec  b                                           ; $4a46: $05
	dec  b                                           ; $4a47: $05
	dec  b                                           ; $4a48: $05
	dec  b                                           ; $4a49: $05
	dec  b                                           ; $4a4a: $05
	dec  b                                           ; $4a4b: $05
	dec  b                                           ; $4a4c: $05
	dec  b                                           ; $4a4d: $05
	dec  b                                           ; $4a4e: $05
	dec  b                                           ; $4a4f: $05
	dec  b                                           ; $4a50: $05
	dec  b                                           ; $4a51: $05
	dec  b                                           ; $4a52: $05
	dec  b                                           ; $4a53: $05
	dec  b                                           ; $4a54: $05
	dec  b                                           ; $4a55: $05
	dec  b                                           ; $4a56: $05
	dec  b                                           ; $4a57: $05
	dec  b                                           ; $4a58: $05
	dec  b                                           ; $4a59: $05
	dec  b                                           ; $4a5a: $05
	dec  b                                           ; $4a5b: $05
	dec  b                                           ; $4a5c: $05
	dec  b                                           ; $4a5d: $05
	dec  b                                           ; $4a5e: $05
	dec  b                                           ; $4a5f: $05
	dec  b                                           ; $4a60: $05
	dec  b                                           ; $4a61: $05
	dec  b                                           ; $4a62: $05
	dec  b                                           ; $4a63: $05
	dec  b                                           ; $4a64: $05
	dec  b                                           ; $4a65: $05
	dec  b                                           ; $4a66: $05
	dec  b                                           ; $4a67: $05
	dec  b                                           ; $4a68: $05
	dec  b                                           ; $4a69: $05
	dec  b                                           ; $4a6a: $05
	dec  b                                           ; $4a6b: $05
	dec  b                                           ; $4a6c: $05
	dec  b                                           ; $4a6d: $05
	dec  b                                           ; $4a6e: $05
	dec  b                                           ; $4a6f: $05
	dec  b                                           ; $4a70: $05
	dec  b                                           ; $4a71: $05
	dec  b                                           ; $4a72: $05
	dec  b                                           ; $4a73: $05
	dec  b                                           ; $4a74: $05
	dec  b                                           ; $4a75: $05
	dec  b                                           ; $4a76: $05
	dec  b                                           ; $4a77: $05
	dec  b                                           ; $4a78: $05
	dec  b                                           ; $4a79: $05
	dec  b                                           ; $4a7a: $05
	dec  b                                           ; $4a7b: $05
	dec  b                                           ; $4a7c: $05
	dec  b                                           ; $4a7d: $05
	dec  b                                           ; $4a7e: $05
	dec  b                                           ; $4a7f: $05
	dec  b                                           ; $4a80: $05
	dec  b                                           ; $4a81: $05
	dec  b                                           ; $4a82: $05
	dec  b                                           ; $4a83: $05
	dec  b                                           ; $4a84: $05
	dec  b                                           ; $4a85: $05
	dec  b                                           ; $4a86: $05
	dec  b                                           ; $4a87: $05
	dec  b                                           ; $4a88: $05
	dec  b                                           ; $4a89: $05
	dec  b                                           ; $4a8a: $05
	dec  b                                           ; $4a8b: $05
	dec  b                                           ; $4a8c: $05
	dec  b                                           ; $4a8d: $05
	dec  b                                           ; $4a8e: $05
	dec  b                                           ; $4a8f: $05
	dec  b                                           ; $4a90: $05
	dec  b                                           ; $4a91: $05
	dec  b                                           ; $4a92: $05
	dec  b                                           ; $4a93: $05
	dec  b                                           ; $4a94: $05
	dec  b                                           ; $4a95: $05
	dec  b                                           ; $4a96: $05
	dec  b                                           ; $4a97: $05
	dec  b                                           ; $4a98: $05
	dec  b                                           ; $4a99: $05
	dec  b                                           ; $4a9a: $05
	dec  b                                           ; $4a9b: $05
	dec  b                                           ; $4a9c: $05
	dec  b                                           ; $4a9d: $05
	dec  b                                           ; $4a9e: $05
	dec  b                                           ; $4a9f: $05
	dec  b                                           ; $4aa0: $05
	dec  b                                           ; $4aa1: $05
	dec  b                                           ; $4aa2: $05
	dec  b                                           ; $4aa3: $05
	dec  b                                           ; $4aa4: $05
	dec  b                                           ; $4aa5: $05
	dec  b                                           ; $4aa6: $05
	dec  b                                           ; $4aa7: $05
	dec  b                                           ; $4aa8: $05
	dec  b                                           ; $4aa9: $05
	dec  b                                           ; $4aaa: $05
	dec  b                                           ; $4aab: $05
	dec  b                                           ; $4aac: $05
	dec  b                                           ; $4aad: $05
	dec  b                                           ; $4aae: $05
	dec  b                                           ; $4aaf: $05
	dec  b                                           ; $4ab0: $05
	dec  b                                           ; $4ab1: $05
	dec  b                                           ; $4ab2: $05
	dec  b                                           ; $4ab3: $05
	dec  b                                           ; $4ab4: $05
	dec  b                                           ; $4ab5: $05
	dec  b                                           ; $4ab6: $05
	dec  b                                           ; $4ab7: $05
	dec  b                                           ; $4ab8: $05
	dec  b                                           ; $4ab9: $05
	dec  b                                           ; $4aba: $05
	dec  b                                           ; $4abb: $05
	dec  b                                           ; $4abc: $05
	dec  b                                           ; $4abd: $05
	dec  b                                           ; $4abe: $05
	dec  b                                           ; $4abf: $05
	dec  b                                           ; $4ac0: $05
	dec  b                                           ; $4ac1: $05
	dec  b                                           ; $4ac2: $05
	dec  b                                           ; $4ac3: $05
	dec  b                                           ; $4ac4: $05
	dec  b                                           ; $4ac5: $05
	dec  b                                           ; $4ac6: $05
	dec  b                                           ; $4ac7: $05
	ccf                                              ; $4ac8: $3f
	ld   b, b                                        ; $4ac9: $40
	ld   b, c                                        ; $4aca: $41
	ld   b, d                                        ; $4acb: $42
	ld   b, e                                        ; $4acc: $43
	ld   b, h                                        ; $4acd: $44
	ld   b, l                                        ; $4ace: $45
	ld   b, [hl]                                     ; $4acf: $46
	ld   b, a                                        ; $4ad0: $47
	ld   c, b                                        ; $4ad1: $48
	ld   c, c                                        ; $4ad2: $49
	ld   c, d                                        ; $4ad3: $4a
	ld   c, e                                        ; $4ad4: $4b
	ld   c, h                                        ; $4ad5: $4c
	ld   c, l                                        ; $4ad6: $4d
	ld   c, [hl]                                     ; $4ad7: $4e
	ld   c, a                                        ; $4ad8: $4f
	ld   d, b                                        ; $4ad9: $50
	ld   d, c                                        ; $4ada: $51
	ld   d, d                                        ; $4adb: $52
	ld   d, e                                        ; $4adc: $53
	ld   d, h                                        ; $4add: $54
	ld   d, l                                        ; $4ade: $55
	ld   d, [hl]                                     ; $4adf: $56
	ld   d, a                                        ; $4ae0: $57
	ld   e, b                                        ; $4ae1: $58
	ld   e, c                                        ; $4ae2: $59
	ld   e, d                                        ; $4ae3: $5a
	ld   e, e                                        ; $4ae4: $5b
	ld   e, h                                        ; $4ae5: $5c
	ld   e, l                                        ; $4ae6: $5d
	ld   e, [hl]                                     ; $4ae7: $5e
	ld   e, a                                        ; $4ae8: $5f
	ld   h, b                                        ; $4ae9: $60
	ld   h, c                                        ; $4aea: $61
	ld   h, d                                        ; $4aeb: $62
	ld   h, e                                        ; $4aec: $63
	ld   h, h                                        ; $4aed: $64
	ld   h, l                                        ; $4aee: $65
	ld   h, [hl]                                     ; $4aef: $66
	ld   h, a                                        ; $4af0: $67
	ld   l, b                                        ; $4af1: $68
	ld   l, c                                        ; $4af2: $69
	ld   l, d                                        ; $4af3: $6a
	ld   l, e                                        ; $4af4: $6b
	ld   l, h                                        ; $4af5: $6c
	ld   l, l                                        ; $4af6: $6d
	ld   l, [hl]                                     ; $4af7: $6e
	ld   l, a                                        ; $4af8: $6f
	ld   [hl], b                                     ; $4af9: $70
	ld   [hl], c                                     ; $4afa: $71
	ld   [hl], d                                     ; $4afb: $72
	ld   a, [hl+]                                    ; $4afc: $2a
	ld   [hl], e                                     ; $4afd: $73
	ld   [hl], h                                     ; $4afe: $74
	ld   [hl], l                                     ; $4aff: $75
	halt                                             ; $4b00: $76
	ld   [hl], a                                     ; $4b01: $77
	ld   a, b                                        ; $4b02: $78
	ld   a, c                                        ; $4b03: $79
	ld   a, d                                        ; $4b04: $7a
	ld   a, e                                        ; $4b05: $7b
	ld   a, h                                        ; $4b06: $7c
	ld   a, l                                        ; $4b07: $7d
	ld   a, [hl]                                     ; $4b08: $7e
	ld   a, a                                        ; $4b09: $7f
	add  b                                           ; $4b0a: $80
	add  c                                           ; $4b0b: $81
	add  d                                           ; $4b0c: $82
	add  e                                           ; $4b0d: $83
	add  h                                           ; $4b0e: $84
	add  l                                           ; $4b0f: $85
	add  [hl]                                        ; $4b10: $86
	add  a                                           ; $4b11: $87
	adc  b                                           ; $4b12: $88
	adc  c                                           ; $4b13: $89
	adc  d                                           ; $4b14: $8a
	adc  e                                           ; $4b15: $8b
	adc  h                                           ; $4b16: $8c
	adc  l                                           ; $4b17: $8d
	adc  [hl]                                        ; $4b18: $8e
	adc  a                                           ; $4b19: $8f
	sub  b                                           ; $4b1a: $90
	sub  c                                           ; $4b1b: $91
	sub  d                                           ; $4b1c: $92
	sub  e                                           ; $4b1d: $93
	sub  h                                           ; $4b1e: $94
	sub  l                                           ; $4b1f: $95
	sub  [hl]                                        ; $4b20: $96
	sub  a                                           ; $4b21: $97
	sbc  b                                           ; $4b22: $98
	sbc  c                                           ; $4b23: $99
	sbc  d                                           ; $4b24: $9a
	sbc  e                                           ; $4b25: $9b
	sbc  h                                           ; $4b26: $9c
	sbc  l                                           ; $4b27: $9d
	sbc  [hl]                                        ; $4b28: $9e
	sbc  a                                           ; $4b29: $9f
	and  b                                           ; $4b2a: $a0
	and  c                                           ; $4b2b: $a1
	and  d                                           ; $4b2c: $a2
	and  e                                           ; $4b2d: $a3
	and  h                                           ; $4b2e: $a4
	and  l                                           ; $4b2f: $a5
	and  [hl]                                        ; $4b30: $a6
	and  a                                           ; $4b31: $a7
	xor  b                                           ; $4b32: $a8
	xor  c                                           ; $4b33: $a9
	xor  d                                           ; $4b34: $aa
	xor  e                                           ; $4b35: $ab
	xor  h                                           ; $4b36: $ac
	xor  l                                           ; $4b37: $ad
	xor  [hl]                                        ; $4b38: $ae
	xor  a                                           ; $4b39: $af
	or   b                                           ; $4b3a: $b0
	adc  c                                           ; $4b3b: $89
	adc  d                                           ; $4b3c: $8a
	adc  e                                           ; $4b3d: $8b
	or   c                                           ; $4b3e: $b1
	adc  l                                           ; $4b3f: $8d
	or   d                                           ; $4b40: $b2
	or   e                                           ; $4b41: $b3
	or   h                                           ; $4b42: $b4
	or   l                                           ; $4b43: $b5
	or   [hl]                                        ; $4b44: $b6
	or   a                                           ; $4b45: $b7
	cp   b                                           ; $4b46: $b8
	cp   c                                           ; $4b47: $b9
	cp   d                                           ; $4b48: $ba
	cp   e                                           ; $4b49: $bb
	cp   h                                           ; $4b4a: $bc
	cp   l                                           ; $4b4b: $bd
	cp   [hl]                                        ; $4b4c: $be
	cp   a                                           ; $4b4d: $bf
	ret  nz                                          ; $4b4e: $c0

	pop  bc                                          ; $4b4f: $c1
	jp   nz, $c4c3                                   ; $4b50: $c2 $c3 $c4

	push bc                                          ; $4b53: $c5
	add  $c7                                         ; $4b54: $c6 $c7
	ret  z                                           ; $4b56: $c8

	ret                                              ; $4b57: $c9


	jp   z, $cccb                                    ; $4b58: $ca $cb $cc

	call $cfce                                       ; $4b5b: $cd $ce $cf
	ret  nc                                          ; $4b5e: $d0

	pop  de                                          ; $4b5f: $d1
	jp   nc, $d4d3                                   ; $4b60: $d2 $d3 $d4

	adc  c                                           ; $4b63: $89
	adc  d                                           ; $4b64: $8a
	push de                                          ; $4b65: $d5
	sub  $d7                                         ; $4b66: $d6 $d7
	ret  c                                           ; $4b68: $d8

	reti                                             ; $4b69: $d9


	jp   c, $dcdb                                    ; $4b6a: $da $db $dc

	db   $dd                                         ; $4b6d: $dd
	sbc  $df                                         ; $4b6e: $de $df
	ldh  [$e1], a                                    ; $4b70: $e0 $e1
	ldh  [c], a                                      ; $4b72: $e2
	db   $e3                                         ; $4b73: $e3
	db   $e4                                         ; $4b74: $e4
	push hl                                          ; $4b75: $e5
	and  $e7                                         ; $4b76: $e6 $e7
	add  sp, -$17                                    ; $4b78: $e8 $e9
	ld   [$eceb], a                                  ; $4b7a: $ea $eb $ec
	db   $ed                                         ; $4b7d: $ed
	xor  $ef                                         ; $4b7e: $ee $ef
	ldh  a, [$f1]                                    ; $4b80: $f0 $f1
	ldh  a, [c]                                      ; $4b82: $f2
	di                                               ; $4b83: $f3
	db   $f4                                         ; $4b84: $f4
	push af                                          ; $4b85: $f5
	or   $f7                                         ; $4b86: $f6 $f7
	ld   hl, sp-$07                                  ; $4b88: $f8 $f9
	ld   a, [$fcfb]                                  ; $4b8a: $fa $fb $fc
	db   $fd                                         ; $4b8d: $fd
	cp   $ff                                         ; $4b8e: $fe $ff
	rlca                                             ; $4b90: $07
	rlca                                             ; $4b91: $07
	rlca                                             ; $4b92: $07
	rlca                                             ; $4b93: $07
	rlca                                             ; $4b94: $07
	rlca                                             ; $4b95: $07
	rlca                                             ; $4b96: $07
	rlca                                             ; $4b97: $07
	rlca                                             ; $4b98: $07
	rlca                                             ; $4b99: $07
	rlca                                             ; $4b9a: $07
	rlca                                             ; $4b9b: $07
	rlca                                             ; $4b9c: $07
	rlca                                             ; $4b9d: $07
	rlca                                             ; $4b9e: $07
	rlca                                             ; $4b9f: $07
	rlca                                             ; $4ba0: $07
	rlca                                             ; $4ba1: $07
	rlca                                             ; $4ba2: $07
	rlca                                             ; $4ba3: $07
	rlca                                             ; $4ba4: $07
	rlca                                             ; $4ba5: $07
	rlca                                             ; $4ba6: $07
	rlca                                             ; $4ba7: $07
	rlca                                             ; $4ba8: $07
	rlca                                             ; $4ba9: $07
	rlca                                             ; $4baa: $07
	rlca                                             ; $4bab: $07
	rlca                                             ; $4bac: $07
	rlca                                             ; $4bad: $07
	rlca                                             ; $4bae: $07
	rlca                                             ; $4baf: $07
	rlca                                             ; $4bb0: $07
	rlca                                             ; $4bb1: $07
	rlca                                             ; $4bb2: $07
	rlca                                             ; $4bb3: $07
	rlca                                             ; $4bb4: $07
	rlca                                             ; $4bb5: $07
	rlca                                             ; $4bb6: $07
	rlca                                             ; $4bb7: $07
	rlca                                             ; $4bb8: $07
	rlca                                             ; $4bb9: $07
	rlca                                             ; $4bba: $07
	rlca                                             ; $4bbb: $07
	rlca                                             ; $4bbc: $07
	rlca                                             ; $4bbd: $07
	rlca                                             ; $4bbe: $07
	rlca                                             ; $4bbf: $07
	rlca                                             ; $4bc0: $07
	rlca                                             ; $4bc1: $07
	rlca                                             ; $4bc2: $07
	rlca                                             ; $4bc3: $07
	rlca                                             ; $4bc4: $07
	rlca                                             ; $4bc5: $07
	rlca                                             ; $4bc6: $07
	rlca                                             ; $4bc7: $07
	rlca                                             ; $4bc8: $07
	rlca                                             ; $4bc9: $07
	rlca                                             ; $4bca: $07
	rlca                                             ; $4bcb: $07
	rlca                                             ; $4bcc: $07
	rlca                                             ; $4bcd: $07
	rlca                                             ; $4bce: $07
	rlca                                             ; $4bcf: $07
	rlca                                             ; $4bd0: $07
	rlca                                             ; $4bd1: $07
	rlca                                             ; $4bd2: $07
	rlca                                             ; $4bd3: $07
	rlca                                             ; $4bd4: $07
	rlca                                             ; $4bd5: $07
	rlca                                             ; $4bd6: $07
	rlca                                             ; $4bd7: $07
	rlca                                             ; $4bd8: $07
	rlca                                             ; $4bd9: $07
	rlca                                             ; $4bda: $07
	rlca                                             ; $4bdb: $07
	rlca                                             ; $4bdc: $07
	rlca                                             ; $4bdd: $07
	rlca                                             ; $4bde: $07
	rlca                                             ; $4bdf: $07
	rlca                                             ; $4be0: $07
	rlca                                             ; $4be1: $07
	rlca                                             ; $4be2: $07
	rlca                                             ; $4be3: $07
	rlca                                             ; $4be4: $07
	rlca                                             ; $4be5: $07
	rlca                                             ; $4be6: $07
	rlca                                             ; $4be7: $07
	rlca                                             ; $4be8: $07
	rlca                                             ; $4be9: $07
	rlca                                             ; $4bea: $07
	rlca                                             ; $4beb: $07
	rlca                                             ; $4bec: $07
	rlca                                             ; $4bed: $07
	rlca                                             ; $4bee: $07
	rlca                                             ; $4bef: $07
	rlca                                             ; $4bf0: $07
	rlca                                             ; $4bf1: $07
	rlca                                             ; $4bf2: $07
	rlca                                             ; $4bf3: $07
	rlca                                             ; $4bf4: $07
	rlca                                             ; $4bf5: $07
	rlca                                             ; $4bf6: $07
	rlca                                             ; $4bf7: $07
	rlca                                             ; $4bf8: $07
	rlca                                             ; $4bf9: $07
	rlca                                             ; $4bfa: $07
	rlca                                             ; $4bfb: $07
	rlca                                             ; $4bfc: $07
	rlca                                             ; $4bfd: $07
	rlca                                             ; $4bfe: $07
	rlca                                             ; $4bff: $07
	rlca                                             ; $4c00: $07
	rlca                                             ; $4c01: $07
	rlca                                             ; $4c02: $07
	rlca                                             ; $4c03: $07
	rlca                                             ; $4c04: $07
	rlca                                             ; $4c05: $07
	rlca                                             ; $4c06: $07
	rlca                                             ; $4c07: $07
	ld   b, $06                                      ; $4c08: $06 $06
	ld   b, $06                                      ; $4c0a: $06 $06
	ld   b, $06                                      ; $4c0c: $06 $06
	ld   b, $06                                      ; $4c0e: $06 $06
	ld   b, $06                                      ; $4c10: $06 $06
	ld   b, $06                                      ; $4c12: $06 $06
	ld   b, $06                                      ; $4c14: $06 $06
	ld   b, $06                                      ; $4c16: $06 $06
	ld   b, $06                                      ; $4c18: $06 $06
	ld   b, $06                                      ; $4c1a: $06 $06
	ld   b, $06                                      ; $4c1c: $06 $06
	ld   b, $06                                      ; $4c1e: $06 $06
	ld   b, $06                                      ; $4c20: $06 $06
	ld   b, $06                                      ; $4c22: $06 $06
	ld   b, $06                                      ; $4c24: $06 $06
	ld   b, $06                                      ; $4c26: $06 $06
	ld   b, $06                                      ; $4c28: $06 $06
	ld   b, $06                                      ; $4c2a: $06 $06
	ld   b, $06                                      ; $4c2c: $06 $06
	ld   b, $06                                      ; $4c2e: $06 $06
	rst  $30                                         ; $4c30: $f7
	rst  $30                                         ; $4c31: $f7
	call nc, $d6d5                                   ; $4c32: $d4 $d5 $d6
	rst  $30                                         ; $4c35: $f7
	rst  $30                                         ; $4c36: $f7
	rst  $30                                         ; $4c37: $f7
	rst  $30                                         ; $4c38: $f7
	rst  $30                                         ; $4c39: $f7
	db   $e3                                         ; $4c3a: $e3
	db   $e4                                         ; $4c3b: $e4
	push hl                                          ; $4c3c: $e5
	and  $f7                                         ; $4c3d: $e6 $f7
	rst  $30                                         ; $4c3f: $f7
	rst  $30                                         ; $4c40: $f7
	rst  $30                                         ; $4c41: $f7
	rst  $30                                         ; $4c42: $f7
	rst  $30                                         ; $4c43: $f7
	rst  $30                                         ; $4c44: $f7
	rst  $30                                         ; $4c45: $f7
	rst  $10                                         ; $4c46: $d7
	ret  c                                           ; $4c47: $d8

	reti                                             ; $4c48: $d9


	rst  $30                                         ; $4c49: $f7
	rst  $30                                         ; $4c4a: $f7
	rst  $30                                         ; $4c4b: $f7
	rst  $30                                         ; $4c4c: $f7
	rst  $30                                         ; $4c4d: $f7
	rst  $20                                         ; $4c4e: $e7
	add  sp, -$17                                    ; $4c4f: $e8 $e9
	ld   [$f7f7], a                                  ; $4c51: $ea $f7 $f7
	rst  $30                                         ; $4c54: $f7
	rst  $30                                         ; $4c55: $f7
	rst  $30                                         ; $4c56: $f7
	rst  $30                                         ; $4c57: $f7
	rst  $30                                         ; $4c58: $f7
	rst  $30                                         ; $4c59: $f7
	jp   c, $dcdb                                    ; $4c5a: $da $db $dc

	rst  $30                                         ; $4c5d: $f7
	rst  $30                                         ; $4c5e: $f7
	rst  $30                                         ; $4c5f: $f7
	rst  $30                                         ; $4c60: $f7
	rst  $30                                         ; $4c61: $f7
	db   $eb                                         ; $4c62: $eb
	db   $ec                                         ; $4c63: $ec
	db   $ed                                         ; $4c64: $ed
	xor  $f7                                         ; $4c65: $ee $f7
	rst  $30                                         ; $4c67: $f7
	rst  $30                                         ; $4c68: $f7
	rst  $30                                         ; $4c69: $f7
	rst  $30                                         ; $4c6a: $f7
	rst  $30                                         ; $4c6b: $f7
	rst  $30                                         ; $4c6c: $f7
	rst  $30                                         ; $4c6d: $f7
	db   $dd                                         ; $4c6e: $dd
	sbc  $df                                         ; $4c6f: $de $df
	rst  $30                                         ; $4c71: $f7
	rst  $30                                         ; $4c72: $f7
	rst  $30                                         ; $4c73: $f7
	rst  $30                                         ; $4c74: $f7
	rst  $30                                         ; $4c75: $f7
	rst  $28                                         ; $4c76: $ef
	ldh  a, [$f1]                                    ; $4c77: $f0 $f1
	ldh  a, [c]                                      ; $4c79: $f2
	rst  $30                                         ; $4c7a: $f7
	rst  $30                                         ; $4c7b: $f7
	rst  $30                                         ; $4c7c: $f7
	rst  $30                                         ; $4c7d: $f7
	rst  $30                                         ; $4c7e: $f7
	rst  $30                                         ; $4c7f: $f7
	rst  $30                                         ; $4c80: $f7
	rst  $30                                         ; $4c81: $f7
	ldh  [$e1], a                                    ; $4c82: $e0 $e1
	ldh  [c], a                                      ; $4c84: $e2
	rst  $30                                         ; $4c85: $f7
	rst  $30                                         ; $4c86: $f7
	rst  $30                                         ; $4c87: $f7
	rst  $30                                         ; $4c88: $f7
	rst  $30                                         ; $4c89: $f7
	di                                               ; $4c8a: $f3
	db   $f4                                         ; $4c8b: $f4
	push af                                          ; $4c8c: $f5
	or   $f7                                         ; $4c8d: $f6 $f7
	rst  $30                                         ; $4c8f: $f7
	rst  $30                                         ; $4c90: $f7
	rst  $30                                         ; $4c91: $f7
	rst  $30                                         ; $4c92: $f7
	rst  $30                                         ; $4c93: $f7
	ld   hl, sp-$08                                  ; $4c94: $f8 $f8
	ld   hl, sp-$08                                  ; $4c96: $f8 $f8
	ld   hl, sp-$08                                  ; $4c98: $f8 $f8
	ld   hl, sp-$08                                  ; $4c9a: $f8 $f8
	ld   hl, sp-$08                                  ; $4c9c: $f8 $f8
	ld   hl, sp-$08                                  ; $4c9e: $f8 $f8
	ld   hl, sp-$08                                  ; $4ca0: $f8 $f8
	ld   hl, sp-$08                                  ; $4ca2: $f8 $f8
	ld   hl, sp-$08                                  ; $4ca4: $f8 $f8
	ld   hl, sp-$08                                  ; $4ca6: $f8 $f8
	rst  $30                                         ; $4ca8: $f7
	add  b                                           ; $4ca9: $80
	add  c                                           ; $4caa: $81
	add  d                                           ; $4cab: $82
	add  [hl]                                        ; $4cac: $86
	add  a                                           ; $4cad: $87
	adc  b                                           ; $4cae: $88
	adc  h                                           ; $4caf: $8c
	adc  l                                           ; $4cb0: $8d
	adc  [hl]                                        ; $4cb1: $8e
	sub  d                                           ; $4cb2: $92
	sub  e                                           ; $4cb3: $93
	sub  h                                           ; $4cb4: $94
	sbc  b                                           ; $4cb5: $98
	sbc  c                                           ; $4cb6: $99
	sbc  d                                           ; $4cb7: $9a
	sbc  [hl]                                        ; $4cb8: $9e
	sbc  a                                           ; $4cb9: $9f
	and  b                                           ; $4cba: $a0
	and  h                                           ; $4cbb: $a4
	rst  $30                                         ; $4cbc: $f7
	add  e                                           ; $4cbd: $83
	add  h                                           ; $4cbe: $84
	add  l                                           ; $4cbf: $85
	adc  c                                           ; $4cc0: $89
	adc  d                                           ; $4cc1: $8a
	adc  e                                           ; $4cc2: $8b
	adc  a                                           ; $4cc3: $8f
	sub  b                                           ; $4cc4: $90
	sub  c                                           ; $4cc5: $91
	sub  l                                           ; $4cc6: $95
	sub  [hl]                                        ; $4cc7: $96
	sub  a                                           ; $4cc8: $97
	sbc  e                                           ; $4cc9: $9b
	sbc  h                                           ; $4cca: $9c
	sbc  l                                           ; $4ccb: $9d
	and  c                                           ; $4ccc: $a1
	and  d                                           ; $4ccd: $a2
	and  e                                           ; $4cce: $a3
	and  a                                           ; $4ccf: $a7
	ld   c, b                                        ; $4cd0: $48
	inc  c                                           ; $4cd1: $0c
	ret  nc                                          ; $4cd2: $d0

	nop                                              ; $4cd3: $00
	db   $f4                                         ; $4cd4: $f4
	dec  h                                           ; $4cd5: $25
	sbc  l                                           ; $4cd6: $9d
	ld   h, a                                        ; $4cd7: $67
	ld   c, b                                        ; $4cd8: $48
	inc  c                                           ; $4cd9: $0c
	ret  nc                                          ; $4cda: $d0

	nop                                              ; $4cdb: $00
	ld   b, b                                        ; $4cdc: $40
	ld   bc, $1e8e                                   ; $4cdd: $01 $8e $1e
	ld   c, b                                        ; $4ce0: $48
	inc  c                                           ; $4ce1: $0c
	ret  c                                           ; $4ce2: $d8

	inc  e                                           ; $4ce3: $1c
	sbc  l                                           ; $4ce4: $9d
	ld   h, a                                        ; $4ce5: $67
	dec  bc                                          ; $4ce6: $0b
	inc  l                                           ; $4ce7: $2c
	ld   c, b                                        ; $4ce8: $48
	inc  c                                           ; $4ce9: $0c
	db   $f4                                         ; $4cea: $f4
	dec  h                                           ; $4ceb: $25
	ld   b, b                                        ; $4cec: $40
	ld   bc, $1e8e                                   ; $4ced: $01 $8e $1e
	ld   [bc], a                                     ; $4cf0: $02
	add  hl, bc                                      ; $4cf1: $09
	ld   e, c                                        ; $4cf2: $59
	cpl                                              ; $4cf3: $2f
	cp   h                                           ; $4cf4: $bc
	ld   b, [hl]                                     ; $4cf5: $46
	ld   l, [hl]                                     ; $4cf6: $6e
	ld   d, l                                        ; $4cf7: $55
	ld   c, b                                        ; $4cf8: $48
	inc  c                                           ; $4cf9: $0c
	ret  c                                           ; $4cfa: $d8

	inc  e                                           ; $4cfb: $1c
	di                                               ; $4cfc: $f3
	dec  l                                           ; $4cfd: $2d
	sbc  b                                           ; $4cfe: $98
	ld   c, [hl]                                     ; $4cff: $4e
	ld   c, b                                        ; $4d00: $48
	inc  c                                           ; $4d01: $0c
	ret  nc                                          ; $4d02: $d0

	nop                                              ; $4d03: $00
	db   $f4                                         ; $4d04: $f4
	dec  h                                           ; $4d05: $25
	ld   e, c                                        ; $4d06: $59
	cpl                                              ; $4d07: $2f
	rst  $38                                         ; $4d08: $ff
	ld   a, a                                        ; $4d09: $7f
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	nop                                              ; $4d0d: $00
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	ld   c, b                                        ; $4d10: $48
	inc  c                                           ; $4d11: $0c
	ret  z                                           ; $4d12: $c8

	inc  d                                           ; $4d13: $14
	adc  e                                           ; $4d14: $8b
	dec  h                                           ; $4d15: $25
	or   l                                           ; $4d16: $b5
	ld   c, d                                        ; $4d17: $4a
	ld   c, b                                        ; $4d18: $48
	inc  c                                           ; $4d19: $0c
	ld   b, b                                        ; $4d1a: $40
	ld   bc, $1e8e                                   ; $4d1b: $01 $8e $1e
	or   l                                           ; $4d1e: $b5
	ld   c, d                                        ; $4d1f: $4a
	ld   c, b                                        ; $4d20: $48
	inc  c                                           ; $4d21: $0c
	ret  z                                           ; $4d22: $c8

	inc  d                                           ; $4d23: $14
	or   [hl]                                        ; $4d24: $b6
	ld   c, d                                        ; $4d25: $4a
	ld   [de], a                                     ; $4d26: $12
	inc  l                                           ; $4d27: $2c
	ld   c, b                                        ; $4d28: $48
	inc  c                                           ; $4d29: $0c
	dec  h                                           ; $4d2a: $25
	dec  h                                           ; $4d2b: $25
	db   $e4                                         ; $4d2c: $e4
	ld   b, l                                        ; $4d2d: $45
	or   h                                           ; $4d2e: $b4
	ld   c, [hl]                                     ; $4d2f: $4e
	ld   c, b                                        ; $4d30: $48
	inc  c                                           ; $4d31: $0c
	ret  nc                                          ; $4d32: $d0

	nop                                              ; $4d33: $00
	db   $f4                                         ; $4d34: $f4
	dec  h                                           ; $4d35: $25
	or   l                                           ; $4d36: $b5
	ld   c, d                                        ; $4d37: $4a
	ret  nc                                          ; $4d38: $d0

	nop                                              ; $4d39: $00
	adc  e                                           ; $4d3a: $8b
	dec  h                                           ; $4d3b: $25
	db   $f4                                         ; $4d3c: $f4
	dec  h                                           ; $4d3d: $25
	or   l                                           ; $4d3e: $b5
	ld   c, d                                        ; $4d3f: $4a
	ld   c, b                                        ; $4d40: $48
	inc  c                                           ; $4d41: $0c
	db   $f4                                         ; $4d42: $f4
	dec  h                                           ; $4d43: $25
	dec  h                                           ; $4d44: $25
	dec  h                                           ; $4d45: $25
	db   $e4                                         ; $4d46: $e4
	ld   b, l                                        ; $4d47: $45
	rst  $38                                         ; $4d48: $ff
	ld   a, a                                        ; $4d49: $7f
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	nop                                              ; $4d4c: $00
	nop                                              ; $4d4d: $00
	nop                                              ; $4d4e: $00
	nop                                              ; $4d4f: $00
	inc  h                                           ; $4d50: $24
	inc  d                                           ; $4d51: $14
	ld   l, e                                        ; $4d52: $6b
	inc  e                                           ; $4d53: $1c
	sub  b                                           ; $4d54: $90
	ld   sp, $6b59                                   ; $4d55: $31 $59 $6b
	inc  h                                           ; $4d58: $24
	inc  d                                           ; $4d59: $14
	nop                                              ; $4d5a: $00
	dec  e                                           ; $4d5b: $1d
	dec  hl                                          ; $4d5c: $2b
	ld   a, [hl+]                                    ; $4d5d: $2a
	ld   e, c                                        ; $4d5e: $59
	ld   l, e                                        ; $4d5f: $6b
	inc  h                                           ; $4d60: $24
	inc  d                                           ; $4d61: $14
	jr   nc, jr_090_4d94                             ; $4d62: $30 $30

	ld   e, c                                        ; $4d64: $59
	ld   l, e                                        ; $4d65: $6b
	rlca                                             ; $4d66: $07
	jr   c, jr_090_4d8d                              ; $4d67: $38 $24

	inc  d                                           ; $4d69: $14
	ret  z                                           ; $4d6a: $c8

	ld   e, d                                        ; $4d6b: $5a
	ld   d, a                                        ; $4d6c: $57
	jr   nz, jr_090_4d9a                             ; $4d6d: $20 $2b

	ld   a, [hl+]                                    ; $4d6f: $2a
	nop                                              ; $4d70: $00
	dec  e                                           ; $4d71: $1d
	or   $36                                         ; $4d72: $f6 $36
	rla                                              ; $4d74: $17
	ld   b, [hl]                                     ; $4d75: $46
	dec  bc                                          ; $4d76: $0b
	ld   c, l                                        ; $4d77: $4d
	inc  h                                           ; $4d78: $24
	inc  d                                           ; $4d79: $14
	jr   nc, @+$32                                   ; $4d7a: $30 $30

	sub  b                                           ; $4d7c: $90
	ld   sp, $4e98                                   ; $4d7d: $31 $98 $4e
	inc  h                                           ; $4d80: $24
	inc  d                                           ; $4d81: $14
	sub  b                                           ; $4d82: $90
	ld   sp, $1d00                                   ; $4d83: $31 $00 $1d
	dec  hl                                          ; $4d86: $2b
	ld   a, [hl+]                                    ; $4d87: $2a
	rst  $38                                         ; $4d88: $ff
	ld   a, a                                        ; $4d89: $7f
	nop                                              ; $4d8a: $00
	nop                                              ; $4d8b: $00
	nop                                              ; $4d8c: $00

jr_090_4d8d:
	nop                                              ; $4d8d: $00
	nop                                              ; $4d8e: $00
	nop                                              ; $4d8f: $00
	inc  h                                           ; $4d90: $24
	inc  d                                           ; $4d91: $14
	ld   l, e                                        ; $4d92: $6b
	inc  e                                           ; $4d93: $1c

jr_090_4d94:
	sub  b                                           ; $4d94: $90
	ld   sp, $6b59                                   ; $4d95: $31 $59 $6b
	inc  h                                           ; $4d98: $24
	inc  d                                           ; $4d99: $14

jr_090_4d9a:
	ld   l, e                                        ; $4d9a: $6b
	inc  e                                           ; $4d9b: $1c
	nop                                              ; $4d9c: $00
	dec  e                                           ; $4d9d: $1d
	dec  hl                                          ; $4d9e: $2b
	ld   a, [hl+]                                    ; $4d9f: $2a
	inc  h                                           ; $4da0: $24
	inc  d                                           ; $4da1: $14
	jr   nc, jr_090_4dd4                             ; $4da2: $30 $30

	ld   e, c                                        ; $4da4: $59
	ld   l, e                                        ; $4da5: $6b
	rlca                                             ; $4da6: $07
	jr   c, jr_090_4dcd                              ; $4da7: $38 $24

	inc  d                                           ; $4da9: $14
	sub  b                                           ; $4daa: $90
	ld   sp, $0140                                   ; $4dab: $31 $40 $01
	dec  hl                                          ; $4dae: $2b
	ld   a, [hl+]                                    ; $4daf: $2a
	nop                                              ; $4db0: $00
	dec  e                                           ; $4db1: $1d
	or   $36                                         ; $4db2: $f6 $36
	rla                                              ; $4db4: $17
	ld   b, [hl]                                     ; $4db5: $46
	dec  bc                                          ; $4db6: $0b
	ld   c, l                                        ; $4db7: $4d
	inc  h                                           ; $4db8: $24
	inc  d                                           ; $4db9: $14
	jr   nc, jr_090_4dec                             ; $4dba: $30 $30

	sub  b                                           ; $4dbc: $90
	ld   sp, $4e56                                   ; $4dbd: $31 $56 $4e
	inc  h                                           ; $4dc0: $24
	inc  d                                           ; $4dc1: $14
	ld   l, e                                        ; $4dc2: $6b
	inc  e                                           ; $4dc3: $1c
	sub  b                                           ; $4dc4: $90
	ld   sp, $36f6                                   ; $4dc5: $31 $f6 $36
	rst  $38                                         ; $4dc8: $ff
	ld   a, a                                        ; $4dc9: $7f
	nop                                              ; $4dca: $00
	nop                                              ; $4dcb: $00
	nop                                              ; $4dcc: $00

jr_090_4dcd:
	nop                                              ; $4dcd: $00
	nop                                              ; $4dce: $00
	nop                                              ; $4dcf: $00
	inc  h                                           ; $4dd0: $24
	inc  d                                           ; $4dd1: $14
	add  [hl]                                        ; $4dd2: $86
	inc  e                                           ; $4dd3: $1c

jr_090_4dd4:
	ld   l, d                                        ; $4dd4: $6a
	add  hl, hl                                      ; $4dd5: $29
	or   l                                           ; $4dd6: $b5
	ld   c, d                                        ; $4dd7: $4a
	inc  h                                           ; $4dd8: $24
	inc  d                                           ; $4dd9: $14
	ld   b, b                                        ; $4dda: $40
	ld   bc, $1e8e                                   ; $4ddb: $01 $8e $1e
	or   l                                           ; $4dde: $b5
	ld   c, d                                        ; $4ddf: $4a
	inc  h                                           ; $4de0: $24
	inc  d                                           ; $4de1: $14
	ret  z                                           ; $4de2: $c8

	inc  d                                           ; $4de3: $14
	or   [hl]                                        ; $4de4: $b6
	ld   c, d                                        ; $4de5: $4a
	ld   [de], a                                     ; $4de6: $12
	inc  l                                           ; $4de7: $2c
	inc  h                                           ; $4de8: $24
	inc  d                                           ; $4de9: $14
	dec  h                                           ; $4dea: $25
	dec  h                                           ; $4deb: $25

jr_090_4dec:
	db   $e4                                         ; $4dec: $e4
	ld   b, l                                        ; $4ded: $45
	or   h                                           ; $4dee: $b4
	ld   c, [hl]                                     ; $4def: $4e
	inc  h                                           ; $4df0: $24
	inc  d                                           ; $4df1: $14
	ret  nc                                          ; $4df2: $d0

	nop                                              ; $4df3: $00
	db   $f4                                         ; $4df4: $f4
	dec  h                                           ; $4df5: $25
	or   l                                           ; $4df6: $b5
	ld   c, d                                        ; $4df7: $4a
	ret  nc                                          ; $4df8: $d0

	nop                                              ; $4df9: $00
	adc  e                                           ; $4dfa: $8b
	dec  h                                           ; $4dfb: $25
	db   $f4                                         ; $4dfc: $f4
	dec  h                                           ; $4dfd: $25
	or   l                                           ; $4dfe: $b5
	ld   c, d                                        ; $4dff: $4a
	inc  h                                           ; $4e00: $24
	inc  d                                           ; $4e01: $14
	db   $f4                                         ; $4e02: $f4
	dec  h                                           ; $4e03: $25
	dec  h                                           ; $4e04: $25
	dec  h                                           ; $4e05: $25
	db   $e4                                         ; $4e06: $e4
	ld   b, l                                        ; $4e07: $45
	rst  $38                                         ; $4e08: $ff
	ld   a, a                                        ; $4e09: $7f
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	rst  $38                                         ; $4e10: $ff
	ld   a, a                                        ; $4e11: $7f
	rra                                              ; $4e12: $1f
	nop                                              ; $4e13: $00
	ld   a, a                                        ; $4e14: $7f
	inc  bc                                          ; $4e15: $03
	ld   [bc], a                                     ; $4e16: $02
	jr   nz, @+$01                                   ; $4e17: $20 $ff

	ld   a, a                                        ; $4e19: $7f
	pop  hl                                          ; $4e1a: $e1
	inc  bc                                          ; $4e1b: $03
	ld   a, a                                        ; $4e1c: $7f
	inc  bc                                          ; $4e1d: $03
	ld   [bc], a                                     ; $4e1e: $02
	jr   nz, @+$01                                   ; $4e1f: $20 $ff

	ld   a, a                                        ; $4e21: $7f
	ld   d, $04                                      ; $4e22: $16 $04
	rst  $38                                         ; $4e24: $ff
	ld   a, a                                        ; $4e25: $7f
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	rst  $38                                         ; $4e28: $ff
	ld   a, a                                        ; $4e29: $7f
	rst  JumpTable                                         ; $4e2a: $df
	ld   [hl], c                                     ; $4e2b: $71
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	ld   d, a                                        ; $4e2e: $57
	ld   d, b                                        ; $4e2f: $50
	rst  $38                                         ; $4e30: $ff
	ld   a, a                                        ; $4e31: $7f
	ld   a, l                                        ; $4e32: $7d
	ld   bc, $7fff                                   ; $4e33: $01 $ff $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e36: $cf
	nop                                              ; $4e37: $00
	rst  $38                                         ; $4e38: $ff
	ld   a, a                                        ; $4e39: $7f
	ld   c, $01                                      ; $4e3a: $0e $01
	rst  $38                                         ; $4e3c: $ff
	dec  l                                           ; $4e3d: $2d
	ld   [bc], a                                     ; $4e3e: $02
	jr   nz, @+$01                                   ; $4e3f: $20 $ff

	ld   a, a                                        ; $4e41: $7f
	ld   a, a                                        ; $4e42: $7f
	inc  bc                                          ; $4e43: $03
	rst  $38                                         ; $4e44: $ff
	dec  l                                           ; $4e45: $2d
	ld   [bc], a                                     ; $4e46: $02
	jr   nz, @+$01                                   ; $4e47: $20 $ff

	ld   a, a                                        ; $4e49: $7f
	ld   a, [de]                                     ; $4e4a: $1a
	add  hl, sp                                      ; $4e4b: $39
	rst  $38                                         ; $4e4c: $ff
	dec  l                                           ; $4e4d: $2d
	ld   [bc], a                                     ; $4e4e: $02
	jr   nz, jr_090_4e51                             ; $4e4f: $20 $00

jr_090_4e51:
	nop                                              ; $4e51: $00
	nop                                              ; $4e52: $00
	nop                                              ; $4e53: $00
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	nop                                              ; $4e56: $00
	nop                                              ; $4e57: $00
	call z, $ff6e                                    ; $4e58: $cc $6e $ff
	ld   a, a                                        ; $4e5b: $7f
	ld   [bc], a                                     ; $4e5c: $02
	jr   nz, jr_090_4e61                             ; $4e5d: $20 $02

	jr   nz, jr_090_4e61                             ; $4e5f: $20 $00

jr_090_4e61:
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	rst  $38                                         ; $4e68: $ff
	ld   a, a                                        ; $4e69: $7f
	rst  $38                                         ; $4e6a: $ff
	ld   a, a                                        ; $4e6b: $7f
	ld   [bc], a                                     ; $4e6c: $02
	jr   nz, jr_090_4e71                             ; $4e6d: $20 $02

	jr   nz, @+$01                                   ; $4e6f: $20 $ff

jr_090_4e71:
	ld   a, a                                        ; $4e71: $7f
	sbc  a                                           ; $4e72: $9f
	ld   d, c                                        ; $4e73: $51
	sbc  a                                           ; $4e74: $9f
	ld   d, c                                        ; $4e75: $51
	ld   [bc], a                                     ; $4e76: $02
	jr   nz, @+$01                                   ; $4e77: $20 $ff

	ld   a, a                                        ; $4e79: $7f
	rst  $38                                         ; $4e7a: $ff
	ld   a, a                                        ; $4e7b: $7f
	rst  $38                                         ; $4e7c: $ff
	ld   a, a                                        ; $4e7d: $7f
	ld   [bc], a                                     ; $4e7e: $02
	db $20 
	
	
Data_90_4e80::
	db $36

	nop                                              ; $4e81: $00
	ld   b, b                                        ; $4e82: $40
	nop                                              ; $4e83: $00
	ld   c, d                                        ; $4e84: $4a
	nop                                              ; $4e85: $00
	ld   d, h                                        ; $4e86: $54
	nop                                              ; $4e87: $00
	ld   e, a                                        ; $4e88: $5f
	nop                                              ; $4e89: $00
	ld   l, d                                        ; $4e8a: $6a
	nop                                              ; $4e8b: $00
	ld   [hl], h                                     ; $4e8c: $74
	nop                                              ; $4e8d: $00
	ld   a, c                                        ; $4e8e: $79
	nop                                              ; $4e8f: $00
	add  d                                           ; $4e90: $82
	nop                                              ; $4e91: $00
	adc  h                                           ; $4e92: $8c
	nop                                              ; $4e93: $00
	sbc  b                                           ; $4e94: $98
	nop                                              ; $4e95: $00
	and  c                                           ; $4e96: $a1
	nop                                              ; $4e97: $00
	xor  c                                           ; $4e98: $a9
	nop                                              ; $4e99: $00
	or   c                                           ; $4e9a: $b1
	nop                                              ; $4e9b: $00
	cp   l                                           ; $4e9c: $bd
	nop                                              ; $4e9d: $00
	ret                                              ; $4e9e: $c9


	nop                                              ; $4e9f: $00
	push de                                          ; $4ea0: $d5
	nop                                              ; $4ea1: $00
	ldh  [c], a                                      ; $4ea2: $e2
	nop                                              ; $4ea3: $00
	rst  $28                                         ; $4ea4: $ef
	nop                                              ; $4ea5: $00
	ei                                               ; $4ea6: $fb
	nop                                              ; $4ea7: $00
	inc  c                                           ; $4ea8: $0c
	ld   bc, $011d                                   ; $4ea9: $01 $1d $01
	ld   b, [hl]                                     ; $4eac: $46
	ld   bc, $016f                                   ; $4ead: $01 $6f $01
	sbc  c                                           ; $4eb0: $99
	ld   bc, $01c3                                   ; $4eb1: $01 $c3 $01
	xor  $01                                         ; $4eb4: $ee $01
	ld   h, e                                        ; $4eb6: $63

jr_090_4eb7:
	ld   e, l                                        ; $4eb7: $5d
	sub  a                                           ; $4eb8: $97
	ld   a, h                                        ; $4eb9: $7c
	rst  $10                                         ; $4eba: $d7
	rst  $28                                         ; $4ebb: $ef
	rst  JumpTable                                         ; $4ebc: $df
	and  l                                           ; $4ebd: $a5
	jp   z, Jump_090_6700                            ; $4ebe: $ca $00 $67

	adc  l                                           ; $4ec1: $8d
	sbc  d                                           ; $4ec2: $9a
	ld   a, h                                        ; $4ec3: $7c
	rst  $10                                         ; $4ec4: $d7
	rst  $28                                         ; $4ec5: $ef
	rst  JumpTable                                         ; $4ec6: $df
	and  l                                           ; $4ec7: $a5
	jp   z, $df00                                    ; $4ec8: $ca $00 $df

	db   $ec                                         ; $4ecb: $ec
	and  e                                           ; $4ecc: $a3
	ld   a, h                                        ; $4ecd: $7c
	rst  $10                                         ; $4ece: $d7
	rst  $28                                         ; $4ecf: $ef
	rst  JumpTable                                         ; $4ed0: $df
	and  l                                           ; $4ed1: $a5
	jp   z, $a300                                    ; $4ed2: $ca $00 $a3

	and  l                                           ; $4ed5: $a5
	db   $ec                                         ; $4ed6: $ec
	cp   d                                           ; $4ed7: $ba
	ld   a, h                                        ; $4ed8: $7c
	rst  $10                                         ; $4ed9: $d7
	rst  $28                                         ; $4eda: $ef
	rst  JumpTable                                         ; $4edb: $df
	and  l                                           ; $4edc: $a5
	jp   z, $0200                                    ; $4edd: $ca $00 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ee0: $cf
	dec  b                                           ; $4ee1: $05
	ld   a, [de]                                     ; $4ee2: $1a
	ld   a, h                                        ; $4ee3: $7c
	rst  $10                                         ; $4ee4: $d7
	rst  $28                                         ; $4ee5: $ef
	rst  JumpTable                                         ; $4ee6: $df
	and  l                                           ; $4ee7: $a5
	jp   z, $ac00                                    ; $4ee8: $ca $00 $ac

	push af                                          ; $4eeb: $f5
	bit  7, h                                        ; $4eec: $cb $7c
	rst  $10                                         ; $4eee: $d7
	rst  $28                                         ; $4eef: $ef
	rst  JumpTable                                         ; $4ef0: $df
	and  l                                           ; $4ef1: $a5
	jp   z, $0400                                    ; $4ef2: $ca $00 $04

	rst  ToBoot                                         ; $4ef5: $c7
	ld   [bc], a                                     ; $4ef6: $02
	ld   sp, hl                                      ; $4ef7: $f9
	nop                                              ; $4ef8: $00
	ld   [bc], a                                     ; $4ef9: $02
	sub  e                                           ; $4efa: $93
	inc  b                                           ; $4efb: $04
	ld   a, h                                        ; $4efc: $7c
	jp   z, $f5ec                                    ; $4efd: $ca $ec $f5

	or   b                                           ; $4f00: $b0
	nop                                              ; $4f01: $00
	add  b                                           ; $4f02: $80
	sub  a                                           ; $4f03: $97
	adc  a                                           ; $4f04: $8f
	ld   e, e                                        ; $4f05: $5b
	ld   a, h                                        ; $4f06: $7c
	inc  bc                                          ; $4f07: $03
	ld   a, [hl+]                                    ; $4f08: $2a
	dec  b                                           ; $4f09: $05
	inc  e                                           ; $4f0a: $1c
	nop                                              ; $4f0b: $00
	inc  b                                           ; $4f0c: $04
	and  b                                           ; $4f0d: $a0
	dec  b                                           ; $4f0e: $05
	pop  de                                          ; $4f0f: $d1
	dec  b                                           ; $4f10: $05
	halt                                             ; $4f11: $76
	ld   a, b                                        ; $4f12: $78
	ld   e, b                                        ; $4f13: $58
	inc  bc                                          ; $4f14: $03
	sub  e                                           ; $4f15: $93
	sbc  b                                           ; $4f16: $98
	nop                                              ; $4f17: $00
	ld   [bc], a                                     ; $4f18: $02
	ld   e, l                                        ; $4f19: $5d
	ld   [bc], a                                     ; $4f1a: $02
	db   $fc                                         ; $4f1b: $fc
	ret  nc                                          ; $4f1c: $d0

	jp   nz, $aedf                                   ; $4f1d: $c2 $df $ae

	nop                                              ; $4f20: $00
	ld   [bc], a                                     ; $4f21: $02
	ld   [hl], $92                                   ; $4f22: $36 $92
	ld   e, c                                        ; $4f24: $59
	ld   a, b                                        ; $4f25: $78
	or   b                                           ; $4f26: $b0
	push bc                                          ; $4f27: $c5
	nop                                              ; $4f28: $00
	or   b                                           ; $4f29: $b0
	call nz, $ecae                                   ; $4f2a: $c4 $ae $ec
	xor  $f5                                         ; $4f2d: $ee $f5
	cp   e                                           ; $4f2f: $bb
	nop                                              ; $4f30: $00
	ld   h, e                                        ; $4f31: $63
	ld   e, l                                        ; $4f32: $5d
	sub  a                                           ; $4f33: $97
	ld   a, h                                        ; $4f34: $7c
	rst  $10                                         ; $4f35: $d7
	rst  $28                                         ; $4f36: $ef
	rst  JumpTable                                         ; $4f37: $df
	and  l                                           ; $4f38: $a5
	jp   z, Jump_090_6775                            ; $4f39: $ca $75 $67

	nop                                              ; $4f3c: $00
	ld   h, a                                        ; $4f3d: $67
	adc  l                                           ; $4f3e: $8d
	sbc  d                                           ; $4f3f: $9a
	ld   a, h                                        ; $4f40: $7c
	rst  $10                                         ; $4f41: $d7
	rst  $28                                         ; $4f42: $ef
	rst  JumpTable                                         ; $4f43: $df
	and  l                                           ; $4f44: $a5
	jp   z, Jump_090_6775                            ; $4f45: $ca $75 $67

	nop                                              ; $4f48: $00
	rst  JumpTable                                         ; $4f49: $df
	db   $ec                                         ; $4f4a: $ec
	and  e                                           ; $4f4b: $a3
	ld   a, h                                        ; $4f4c: $7c
	rst  $10                                         ; $4f4d: $d7
	rst  $28                                         ; $4f4e: $ef
	rst  JumpTable                                         ; $4f4f: $df
	and  l                                           ; $4f50: $a5
	jp   z, Jump_090_6775                            ; $4f51: $ca $75 $67

	nop                                              ; $4f54: $00
	and  e                                           ; $4f55: $a3
	and  l                                           ; $4f56: $a5
	db   $ec                                         ; $4f57: $ec
	cp   d                                           ; $4f58: $ba
	ld   a, h                                        ; $4f59: $7c
	rst  $10                                         ; $4f5a: $d7
	rst  $28                                         ; $4f5b: $ef
	rst  JumpTable                                         ; $4f5c: $df
	and  l                                           ; $4f5d: $a5
	jp   z, Jump_090_6775                            ; $4f5e: $ca $75 $67

	nop                                              ; $4f61: $00
	ld   [bc], a                                     ; $4f62: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f63: $cf
	dec  b                                           ; $4f64: $05
	ld   a, [de]                                     ; $4f65: $1a
	ld   a, h                                        ; $4f66: $7c
	rst  $10                                         ; $4f67: $d7
	rst  $28                                         ; $4f68: $ef
	rst  JumpTable                                         ; $4f69: $df
	and  l                                           ; $4f6a: $a5
	jp   z, Jump_090_6775                            ; $4f6b: $ca $75 $67

	nop                                              ; $4f6e: $00
	xor  h                                           ; $4f6f: $ac
	push af                                          ; $4f70: $f5
	bit  7, h                                        ; $4f71: $cb $7c
	rst  $10                                         ; $4f73: $d7
	rst  $28                                         ; $4f74: $ef
	rst  JumpTable                                         ; $4f75: $df
	and  l                                           ; $4f76: $a5
	jp   z, Jump_090_6775                            ; $4f77: $ca $75 $67

	nop                                              ; $4f7a: $00
	inc  b                                           ; $4f7b: $04
	rst  ToBoot                                         ; $4f7c: $c7
	inc  bc                                          ; $4f7d: $03
	ld   c, a                                        ; $4f7e: $4f
	and  b                                           ; $4f7f: $a0
	inc  b                                           ; $4f80: $04
	adc  h                                           ; $4f81: $8c
	ld   d, [hl]                                     ; $4f82: $56
	sbc  c                                           ; $4f83: $99
	ld   [bc], a                                     ; $4f84: $02
	jp   Jump_090_755a                               ; $4f85: $c3 $5a $75


	ld   e, e                                        ; $4f88: $5b
	adc  h                                           ; $4f89: $8c
	ld   h, a                                        ; $4f8a: $67
	nop                                              ; $4f8b: $00
	inc  bc                                          ; $4f8c: $03
	xor  [hl]                                        ; $4f8d: $ae
	ld   d, h                                        ; $4f8e: $54
	halt                                             ; $4f8f: $76
	inc  b                                           ; $4f90: $04
	dec  c                                           ; $4f91: $0d
	dec  b                                           ; $4f92: $05
	ld   a, [bc]                                     ; $4f93: $0a
	ld   e, d                                        ; $4f94: $5a
	inc  bc                                          ; $4f95: $03
	ld   d, a                                        ; $4f96: $57
	dec  b                                           ; $4f97: $05
	sbc  d                                           ; $4f98: $9a
	ld   h, l                                        ; $4f99: $65
	adc  h                                           ; $4f9a: $8c
	ld   h, a                                        ; $4f9b: $67
	nop                                              ; $4f9c: $00
	inc  bc                                          ; $4f9d: $03
	ld   l, l                                        ; $4f9e: $6d
	dec  b                                           ; $4f9f: $05
	add  hl, de                                      ; $4fa0: $19
	ld   [hl], l                                     ; $4fa1: $75
	inc  b                                           ; $4fa2: $04
	dec  hl                                          ; $4fa3: $2b
	dec  b                                           ; $4fa4: $05
	ld   a, [bc]                                     ; $4fa5: $0a
	ld   e, d                                        ; $4fa6: $5a
	inc  b                                           ; $4fa7: $04
	rrca                                             ; $4fa8: $0f
	ld   e, l                                        ; $4fa9: $5d
	inc  bc                                          ; $4faa: $03
	ld   h, l                                        ; $4fab: $65
	ld   e, d                                        ; $4fac: $5a
	sbc  c                                           ; $4fad: $99
	ld   e, d                                        ; $4fae: $5a
	inc  b                                           ; $4faf: $04
	ld   a, e                                        ; $4fb0: $7b
	sbc  d                                           ; $4fb1: $9a
	sub  d                                           ; $4fb2: $92
	ld   h, a                                        ; $4fb3: $67
	ld   d, d                                        ; $4fb4: $52
	dec  c                                           ; $4fb5: $0d
	ld   bc, $0303                                   ; $4fb6: $01 $03 $03
	xor  [hl]                                        ; $4fb9: $ae
	inc  b                                           ; $4fba: $04
	di                                               ; $4fbb: $f3
	ld   h, a                                        ; $4fbc: $67
	sbc  c                                           ; $4fbd: $99
	halt                                             ; $4fbe: $76
	inc  bc                                          ; $4fbf: $03
	ld   c, h                                        ; $4fc0: $4c
	inc  b                                           ; $4fc1: $04
	ld   d, e                                        ; $4fc2: $53
	ld   bc, $0004                                   ; $4fc3: $01 $04 $00
	inc  bc                                          ; $4fc6: $03
	ld   l, l                                        ; $4fc7: $6d
	dec  b                                           ; $4fc8: $05
	add  hl, de                                      ; $4fc9: $19
	ld   [hl], l                                     ; $4fca: $75
	dec  b                                           ; $4fcb: $05
	add  hl, bc                                      ; $4fcc: $09
	dec  b                                           ; $4fcd: $05
	ld   a, [bc]                                     ; $4fce: $0a
	ld   e, d                                        ; $4fcf: $5a
	inc  b                                           ; $4fd0: $04
	rrca                                             ; $4fd1: $0f
	ld   e, l                                        ; $4fd2: $5d
	inc  bc                                          ; $4fd3: $03
	ld   h, l                                        ; $4fd4: $65
	ld   e, d                                        ; $4fd5: $5a
	sbc  c                                           ; $4fd6: $99
	ld   e, d                                        ; $4fd7: $5a
	inc  b                                           ; $4fd8: $04
	ld   a, e                                        ; $4fd9: $7b
	sbc  d                                           ; $4fda: $9a
	sub  d                                           ; $4fdb: $92
	ld   h, a                                        ; $4fdc: $67
	ld   d, d                                        ; $4fdd: $52
	dec  c                                           ; $4fde: $0d
	ld   bc, $0303                                   ; $4fdf: $01 $03 $03
	xor  [hl]                                        ; $4fe2: $ae
	inc  b                                           ; $4fe3: $04
	di                                               ; $4fe4: $f3
	ld   h, a                                        ; $4fe5: $67
	sbc  c                                           ; $4fe6: $99
	halt                                             ; $4fe7: $76
	inc  bc                                          ; $4fe8: $03
	ld   c, h                                        ; $4fe9: $4c
	inc  b                                           ; $4fea: $04
	ld   d, e                                        ; $4feb: $53
	ld   bc, $0004                                   ; $4fec: $01 $04 $00
	inc  bc                                          ; $4fef: $03
	ld   l, l                                        ; $4ff0: $6d
	dec  b                                           ; $4ff1: $05
	add  hl, de                                      ; $4ff2: $19
	ld   [hl], l                                     ; $4ff3: $75
	ld   [bc], a                                     ; $4ff4: $02
	and  c                                           ; $4ff5: $a1
	ld   [bc], a                                     ; $4ff6: $02
	ld   a, e                                        ; $4ff7: $7b
	ld   d, d                                        ; $4ff8: $52
	ld   e, d                                        ; $4ff9: $5a
	inc  b                                           ; $4ffa: $04
	rrca                                             ; $4ffb: $0f
	ld   e, l                                        ; $4ffc: $5d
	inc  bc                                          ; $4ffd: $03
	ld   h, l                                        ; $4ffe: $65
	ld   e, d                                        ; $4fff: $5a
	sbc  c                                           ; $5000: $99
	ld   e, d                                        ; $5001: $5a
	inc  b                                           ; $5002: $04
	ld   a, e                                        ; $5003: $7b
	sbc  d                                           ; $5004: $9a
	sub  d                                           ; $5005: $92
	ld   h, a                                        ; $5006: $67
	ld   d, d                                        ; $5007: $52
	dec  c                                           ; $5008: $0d
	ld   bc, $0303                                   ; $5009: $01 $03 $03
	xor  [hl]                                        ; $500c: $ae
	inc  b                                           ; $500d: $04
	di                                               ; $500e: $f3
	ld   h, a                                        ; $500f: $67
	sbc  c                                           ; $5010: $99
	halt                                             ; $5011: $76
	inc  bc                                          ; $5012: $03
	ld   c, h                                        ; $5013: $4c
	inc  b                                           ; $5014: $04
	ld   d, e                                        ; $5015: $53
	ld   bc, $0004                                   ; $5016: $01 $04 $00

jr_090_5019:
	inc  bc                                          ; $5019: $03
	ld   l, l                                        ; $501a: $6d
	dec  b                                           ; $501b: $05
	add  hl, de                                      ; $501c: $19
	ld   [hl], l                                     ; $501d: $75
	inc  bc                                          ; $501e: $03
	and  [hl]                                        ; $501f: $a6
	inc  bc                                          ; $5020: $03
	ld   [hl], b                                     ; $5021: $70
	ld   h, e                                        ; $5022: $63
	ld   e, d                                        ; $5023: $5a
	inc  b                                           ; $5024: $04
	rrca                                             ; $5025: $0f
	ld   e, l                                        ; $5026: $5d
	inc  bc                                          ; $5027: $03
	ld   h, l                                        ; $5028: $65
	ld   e, d                                        ; $5029: $5a
	sbc  c                                           ; $502a: $99
	ld   e, d                                        ; $502b: $5a
	inc  b                                           ; $502c: $04
	ld   a, e                                        ; $502d: $7b
	sbc  d                                           ; $502e: $9a
	sub  d                                           ; $502f: $92
	ld   h, a                                        ; $5030: $67
	ld   d, d                                        ; $5031: $52
	dec  c                                           ; $5032: $0d
	ld   bc, $0303                                   ; $5033: $01 $03 $03
	xor  [hl]                                        ; $5036: $ae
	inc  b                                           ; $5037: $04
	di                                               ; $5038: $f3
	ld   h, a                                        ; $5039: $67
	sbc  c                                           ; $503a: $99
	halt                                             ; $503b: $76
	inc  bc                                          ; $503c: $03
	ld   c, h                                        ; $503d: $4c
	inc  b                                           ; $503e: $04
	ld   d, e                                        ; $503f: $53
	ld   bc, $0004                                   ; $5040: $01 $04 $00
	inc  bc                                          ; $5043: $03
	ld   l, l                                        ; $5044: $6d
	dec  b                                           ; $5045: $05
	add  hl, de                                      ; $5046: $19
	ld   [hl], l                                     ; $5047: $75
	ld   b, $25                                      ; $5048: $06 $25
	inc  b                                           ; $504a: $04
	dec  bc                                          ; $504b: $0b
	ld   b, $80                                      ; $504c: $06 $80
	ld   e, d                                        ; $504e: $5a
	inc  b                                           ; $504f: $04
	rrca                                             ; $5050: $0f
	ld   e, l                                        ; $5051: $5d
	inc  bc                                          ; $5052: $03
	ld   h, l                                        ; $5053: $65
	ld   e, d                                        ; $5054: $5a
	sbc  c                                           ; $5055: $99
	ld   e, d                                        ; $5056: $5a
	inc  b                                           ; $5057: $04
	ld   a, e                                        ; $5058: $7b
	sbc  d                                           ; $5059: $9a
	sub  d                                           ; $505a: $92
	ld   h, a                                        ; $505b: $67
	ld   d, d                                        ; $505c: $52
	dec  c                                           ; $505d: $0d
	ld   bc, $0303                                   ; $505e: $01 $03 $03
	xor  [hl]                                        ; $5061: $ae
	inc  b                                           ; $5062: $04
	di                                               ; $5063: $f3
	ld   h, a                                        ; $5064: $67
	sbc  c                                           ; $5065: $99
	halt                                             ; $5066: $76
	inc  bc                                          ; $5067: $03
	ld   c, h                                        ; $5068: $4c
	inc  b                                           ; $5069: $04
	ld   d, e                                        ; $506a: $53
	ld   bc, $0004                                   ; $506b: $01 $04 $00
	ld   bc, $0303                                   ; $506e: $01 $03 $03
	ld   c, h                                        ; $5071: $4c
	inc  b                                           ; $5072: $04
	ld   d, e                                        ; $5073: $53
	inc  b                                           ; $5074: $04
	dec  bc                                          ; $5075: $0b
	di                                               ; $5076: $f3
	inc  bc                                          ; $5077: $03
	ret  nz                                          ; $5078: $c0

	inc  bc                                          ; $5079: $03
	xor  [hl]                                        ; $507a: $ae
	inc  b                                           ; $507b: $04
	di                                               ; $507c: $f3
	ld   [hl], l                                     ; $507d: $75
	inc  bc                                          ; $507e: $03
	jr   jr_090_5019                                 ; $507f: $18 $98

	ld   [bc], a                                     ; $5081: $02
	bit  4, l                                        ; $5082: $cb $65
	ld   bc, $0004                                   ; $5084: $01 $04 $00


Data_90_5087::
	ld   c, $00                                      ; $5087: $0e $00
	inc  e                                           ; $5089: $1c
	nop                                              ; $508a: $00
	cpl                                              ; $508b: $2f
	nop                                              ; $508c: $00
	ld   b, d                                        ; $508d: $42
	nop                                              ; $508e: $00
	ld   d, l                                        ; $508f: $55
	nop                                              ; $5090: $00
	ld   l, d                                        ; $5091: $6a
	nop                                              ; $5092: $00
	ld   a, [hl]                                     ; $5093: $7e
	nop                                              ; $5094: $00
	ld   h, c                                        ; $5095: $61
	sbc  d                                           ; $5096: $9a
	ld   a, c                                        ; $5097: $79
	ld   h, a                                        ; $5098: $67
	sbc  c                                           ; $5099: $99
	dec  c                                           ; $509a: $0d
	add  a                                           ; $509b: $87
	ld   [hl], d                                     ; $509c: $72
	ld   a, h                                        ; $509d: $7c
	and  b                                           ; $509e: $a0
	ld   d, [hl]                                     ; $509f: $56
	sub  a                                           ; $50a0: $97
	add  h                                           ; $50a1: $84
	nop                                              ; $50a2: $00
	ld   l, e                                        ; $50a3: $6b
	sbc  d                                           ; $50a4: $9a
	ld   a, l                                        ; $50a5: $7d
	ld   h, e                                        ; $50a6: $63
	ld   e, l                                        ; $50a7: $5d
	sub  a                                           ; $50a8: $97
	ld   h, e                                        ; $50a9: $63
	and  c                                           ; $50aa: $a1
	ld   a, h                                        ; $50ab: $7c
	dec  c                                           ; $50ac: $0d
	rst  $10                                         ; $50ad: $d7
	rst  $28                                         ; $50ae: $ef
	rst  JumpTable                                         ; $50af: $df
	and  l                                           ; $50b0: $a5
	jp   z, Jump_090_6775                            ; $50b1: $ca $75 $67

	sbc  a                                           ; $50b4: $9f
	nop                                              ; $50b5: $00
	ld   l, e                                        ; $50b6: $6b
	sbc  d                                           ; $50b7: $9a
	ld   a, l                                        ; $50b8: $7d
	ld   h, a                                        ; $50b9: $67
	adc  l                                           ; $50ba: $8d
	sbc  d                                           ; $50bb: $9a
	ld   h, e                                        ; $50bc: $63
	and  c                                           ; $50bd: $a1
	ld   a, h                                        ; $50be: $7c
	dec  c                                           ; $50bf: $0d
	rst  $10                                         ; $50c0: $d7
	rst  $28                                         ; $50c1: $ef
	rst  JumpTable                                         ; $50c2: $df
	and  l                                           ; $50c3: $a5
	jp   z, Jump_090_6775                            ; $50c4: $ca $75 $67

	sbc  a                                           ; $50c7: $9f
	nop                                              ; $50c8: $00
	ld   l, e                                        ; $50c9: $6b
	sbc  d                                           ; $50ca: $9a
	ld   a, l                                        ; $50cb: $7d
	rst  JumpTable                                         ; $50cc: $df
	db   $ec                                         ; $50cd: $ec
	and  e                                           ; $50ce: $a3
	ld   h, e                                        ; $50cf: $63
	and  c                                           ; $50d0: $a1
	ld   a, h                                        ; $50d1: $7c
	dec  c                                           ; $50d2: $0d
	rst  $10                                         ; $50d3: $d7
	rst  $28                                         ; $50d4: $ef
	rst  JumpTable                                         ; $50d5: $df
	and  l                                           ; $50d6: $a5
	jp   z, Jump_090_6775                            ; $50d7: $ca $75 $67

	sbc  a                                           ; $50da: $9f
	nop                                              ; $50db: $00
	ld   l, e                                        ; $50dc: $6b
	sbc  d                                           ; $50dd: $9a
	ld   a, l                                        ; $50de: $7d
	and  e                                           ; $50df: $a3
	and  l                                           ; $50e0: $a5
	db   $ec                                         ; $50e1: $ec
	cp   d                                           ; $50e2: $ba
	ld   l, a                                        ; $50e3: $6f
	sub  c                                           ; $50e4: $91
	and  c                                           ; $50e5: $a1
	ld   a, h                                        ; $50e6: $7c
	dec  c                                           ; $50e7: $0d
	rst  $10                                         ; $50e8: $d7
	rst  $28                                         ; $50e9: $ef
	rst  JumpTable                                         ; $50ea: $df
	and  l                                           ; $50eb: $a5
	jp   z, Jump_090_6775                            ; $50ec: $ca $75 $67

	sbc  a                                           ; $50ef: $9f
	nop                                              ; $50f0: $00
	ld   l, e                                        ; $50f1: $6b
	sbc  d                                           ; $50f2: $9a
	ld   a, l                                        ; $50f3: $7d
	ld   [bc], a                                     ; $50f4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50f5: $cf
	dec  b                                           ; $50f6: $05
	ld   a, [de]                                     ; $50f7: $1a
	ld   h, e                                        ; $50f8: $63
	and  c                                           ; $50f9: $a1
	ld   a, h                                        ; $50fa: $7c
	dec  c                                           ; $50fb: $0d
	rst  $10                                         ; $50fc: $d7
	rst  $28                                         ; $50fd: $ef
	rst  JumpTable                                         ; $50fe: $df
	and  l                                           ; $50ff: $a5
	jp   z, Jump_090_6775                            ; $5100: $ca $75 $67

	sbc  a                                           ; $5103: $9f
	nop                                              ; $5104: $00
	ld   l, e                                        ; $5105: $6b
	sbc  d                                           ; $5106: $9a
	ld   a, l                                        ; $5107: $7d
	xor  h                                           ; $5108: $ac
	push af                                          ; $5109: $f5
	bit  4, e                                        ; $510a: $cb $63
	and  c                                           ; $510c: $a1
	ld   a, h                                        ; $510d: $7c
	dec  c                                           ; $510e: $0d
	rst  $10                                         ; $510f: $d7
	rst  $28                                         ; $5110: $ef
	rst  JumpTable                                         ; $5111: $df
	and  l                                           ; $5112: $a5
	jp   z, Jump_090_6775                            ; $5113: $ca $75 $67

	sbc  a                                           ; $5116: $9f
	nop                                              ; $5117: $00


Data_90_5118::
	dw .thing0-@
	ld   a, [hl-]                                    ; $511a: $3a
	nop                                              ; $511b: $00
	ld   h, a                                        ; $511c: $67
	nop                                              ; $511d: $00
	sub  l                                           ; $511e: $95
	nop                                              ; $511f: $00
	jp   nz, $ef00                                   ; $5120: $c2 $00 $ef

	nop                                              ; $5123: $00

.thing0
	ld   h, e                                        ; $5124: $63
	ld   e, l                                        ; $5125: $5d
	sub  a                                           ; $5126: $97
	inc  b                                           ; $5127: $04
	di                                               ; $5128: $f3
	ld   [bc], a                                     ; $5129: $02
	jr   c, jr_090_5130                              ; $512a: $38 $04

	ld   d, d                                        ; $512c: $52
	dec  c                                           ; $512d: $0d
	inc  bc                                          ; $512e: $03
	push af                                          ; $512f: $f5

jr_090_5130:
	ld   [bc], a                                     ; $5130: $02
	db   $fc                                         ; $5131: $fc
	inc  b                                           ; $5132: $04
	ld   b, e                                        ; $5133: $43
	dec  b                                           ; $5134: $05
	ld   a, [bc]                                     ; $5135: $0a
	ld   bc, $0615                                   ; $5136: $01 $15 $06
	ld   a, a                                        ; $5139: $7f
	ld   [bc], a                                     ; $513a: $02
	ld   a, e                                        ; $513b: $7b
	dec  b                                           ; $513c: $05
	ld   a, [bc]                                     ; $513d: $0a
	dec  c                                           ; $513e: $0d
	ld   [bc], a                                     ; $513f: $02
	ld   c, b                                        ; $5140: $48
	ld   [bc], a                                     ; $5141: $02
	sub  c                                           ; $5142: $91
	ld   b, $8f                                      ; $5143: $06 $8f
	ld   b, $90                                      ; $5145: $06 $90
	ld   bc, $0215                                   ; $5147: $01 $15 $02
	and  b                                           ; $514a: $a0
	ld   b, $8f                                      ; $514b: $06 $8f
	ld   b, $90                                      ; $514d: $06 $90
	ld   [bc], a                                     ; $514f: $02
	ld   d, l                                        ; $5150: $55
	nop                                              ; $5151: $00
	ld   h, a                                        ; $5152: $67
	adc  l                                           ; $5153: $8d
	sbc  d                                           ; $5154: $9a
	inc  b                                           ; $5155: $04
	di                                               ; $5156: $f3
	ld   [bc], a                                     ; $5157: $02
	jr   c, jr_090_515e                              ; $5158: $38 $04

	ld   d, d                                        ; $515a: $52
	dec  c                                           ; $515b: $0d
	inc  bc                                          ; $515c: $03
	push af                                          ; $515d: $f5

jr_090_515e:
	ld   [bc], a                                     ; $515e: $02
	db   $fc                                         ; $515f: $fc
	inc  b                                           ; $5160: $04
	ld   b, e                                        ; $5161: $43
	dec  b                                           ; $5162: $05
	ld   a, [bc]                                     ; $5163: $0a
	ld   bc, $0315                                   ; $5164: $01 $15 $03
	and  [hl]                                        ; $5167: $a6
	inc  bc                                          ; $5168: $03
	ld   [hl], b                                     ; $5169: $70
	ld   h, e                                        ; $516a: $63
	dec  c                                           ; $516b: $0d
	ld   [bc], a                                     ; $516c: $02
	ld   c, b                                        ; $516d: $48
	ld   [bc], a                                     ; $516e: $02
	sub  c                                           ; $516f: $91
	ld   b, $8f                                      ; $5170: $06 $8f
	ld   b, $90                                      ; $5172: $06 $90
	ld   bc, $0415                                   ; $5174: $01 $15 $04
	dec  bc                                          ; $5177: $0b
	ld   b, $8f                                      ; $5178: $06 $8f
	ld   b, $90                                      ; $517a: $06 $90
	ld   [bc], a                                     ; $517c: $02
	ld   d, l                                        ; $517d: $55
	nop                                              ; $517e: $00
	rst  JumpTable                                         ; $517f: $df
	db   $ec                                         ; $5180: $ec
	and  e                                           ; $5181: $a3
	inc  b                                           ; $5182: $04
	di                                               ; $5183: $f3
	ld   [bc], a                                     ; $5184: $02
	jr   c, jr_090_518b                              ; $5185: $38 $04

	ld   d, d                                        ; $5187: $52
	dec  c                                           ; $5188: $0d
	inc  bc                                          ; $5189: $03
	push af                                          ; $518a: $f5

jr_090_518b:
	ld   [bc], a                                     ; $518b: $02
	db   $fc                                         ; $518c: $fc
	inc  b                                           ; $518d: $04
	ld   b, e                                        ; $518e: $43
	dec  b                                           ; $518f: $05
	ld   a, [bc]                                     ; $5190: $0a
	ld   bc, $0615                                   ; $5191: $01 $15 $06
	dec  h                                           ; $5194: $25
	inc  b                                           ; $5195: $04
	dec  bc                                          ; $5196: $0b
	ld   b, $80                                      ; $5197: $06 $80
	dec  c                                           ; $5199: $0d
	ld   [bc], a                                     ; $519a: $02
	ld   c, b                                        ; $519b: $48
	ld   [bc], a                                     ; $519c: $02
	sub  c                                           ; $519d: $91
	ld   b, $8f                                      ; $519e: $06 $8f
	ld   b, $90                                      ; $51a0: $06 $90
	ld   bc, $0215                                   ; $51a2: $01 $15 $02
	ld   bc, $8f06                                   ; $51a5: $01 $06 $8f
	ld   b, $90                                      ; $51a8: $06 $90
	ld   [bc], a                                     ; $51aa: $02
	ld   d, l                                        ; $51ab: $55
	nop                                              ; $51ac: $00
	and  e                                           ; $51ad: $a3
	and  l                                           ; $51ae: $a5
	db   $ec                                         ; $51af: $ec
	cp   d                                           ; $51b0: $ba
	inc  b                                           ; $51b1: $04
	di                                               ; $51b2: $f3
	ld   [bc], a                                     ; $51b3: $02
	jr   c, jr_090_51ba                              ; $51b4: $38 $04

	ld   d, d                                        ; $51b6: $52
	dec  c                                           ; $51b7: $0d
	inc  bc                                          ; $51b8: $03
	push af                                          ; $51b9: $f5

jr_090_51ba:
	ld   [bc], a                                     ; $51ba: $02
	db   $fc                                         ; $51bb: $fc
	inc  b                                           ; $51bc: $04
	ld   b, e                                        ; $51bd: $43
	dec  b                                           ; $51be: $05
	ld   a, [bc]                                     ; $51bf: $0a
	ld   bc, $0515                                   ; $51c0: $01 $15 $05
	add  hl, bc                                      ; $51c3: $09
	dec  b                                           ; $51c4: $05
	ld   a, [bc]                                     ; $51c5: $0a
	dec  c                                           ; $51c6: $0d
	ld   [bc], a                                     ; $51c7: $02
	ld   c, b                                        ; $51c8: $48
	ld   [bc], a                                     ; $51c9: $02
	sub  c                                           ; $51ca: $91
	ld   b, $8f                                      ; $51cb: $06 $8f
	ld   b, $90                                      ; $51cd: $06 $90
	ld   bc, $0415                                   ; $51cf: $01 $15 $04
	dec  bc                                          ; $51d2: $0b
	ld   b, $8f                                      ; $51d3: $06 $8f
	ld   b, $90                                      ; $51d5: $06 $90
	ld   [bc], a                                     ; $51d7: $02
	ld   d, l                                        ; $51d8: $55
	nop                                              ; $51d9: $00
	ld   [bc], a                                     ; $51da: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51db: $cf
	dec  b                                           ; $51dc: $05
	ld   a, [de]                                     ; $51dd: $1a
	inc  b                                           ; $51de: $04
	di                                               ; $51df: $f3
	ld   [bc], a                                     ; $51e0: $02
	jr   c, jr_090_51e7                              ; $51e1: $38 $04

	ld   d, d                                        ; $51e3: $52
	dec  c                                           ; $51e4: $0d
	inc  bc                                          ; $51e5: $03
	push af                                          ; $51e6: $f5

jr_090_51e7:
	ld   [bc], a                                     ; $51e7: $02
	db   $fc                                         ; $51e8: $fc
	inc  b                                           ; $51e9: $04
	ld   b, e                                        ; $51ea: $43
	dec  b                                           ; $51eb: $05
	ld   a, [bc]                                     ; $51ec: $0a
	ld   bc, $0415                                   ; $51ed: $01 $15 $04
	dec  hl                                          ; $51f0: $2b
	dec  b                                           ; $51f1: $05
	ld   a, [bc]                                     ; $51f2: $0a
	dec  c                                           ; $51f3: $0d
	ld   [bc], a                                     ; $51f4: $02
	ld   c, b                                        ; $51f5: $48
	ld   [bc], a                                     ; $51f6: $02
	sub  c                                           ; $51f7: $91
	ld   b, $8f                                      ; $51f8: $06 $8f
	ld   b, $90                                      ; $51fa: $06 $90
	ld   bc, $0215                                   ; $51fc: $01 $15 $02
	ld   bc, $8f06                                   ; $51ff: $01 $06 $8f
	ld   b, $90                                      ; $5202: $06 $90
	ld   [bc], a                                     ; $5204: $02
	ld   d, l                                        ; $5205: $55
	nop                                              ; $5206: $00
	xor  h                                           ; $5207: $ac
	push af                                          ; $5208: $f5
	rlc  h                                           ; $5209: $cb $04
	di                                               ; $520b: $f3
	ld   [bc], a                                     ; $520c: $02
	jr   c, jr_090_5213                              ; $520d: $38 $04

	ld   d, d                                        ; $520f: $52
	dec  c                                           ; $5210: $0d
	inc  bc                                          ; $5211: $03
	push af                                          ; $5212: $f5

jr_090_5213:
	ld   [bc], a                                     ; $5213: $02
	db   $fc                                         ; $5214: $fc
	inc  b                                           ; $5215: $04
	ld   b, e                                        ; $5216: $43
	dec  b                                           ; $5217: $05
	ld   a, [bc]                                     ; $5218: $0a
	ld   bc, $0215                                   ; $5219: $01 $15 $02
	and  c                                           ; $521c: $a1
	ld   [bc], a                                     ; $521d: $02
	ld   a, e                                        ; $521e: $7b
	ld   d, d                                        ; $521f: $52
	dec  c                                           ; $5220: $0d
	ld   [bc], a                                     ; $5221: $02
	ld   c, b                                        ; $5222: $48
	ld   [bc], a                                     ; $5223: $02
	sub  c                                           ; $5224: $91
	ld   b, $8f                                      ; $5225: $06 $8f
	ld   b, $90                                      ; $5227: $06 $90
	ld   bc, $0215                                   ; $5229: $01 $15 $02
	and  b                                           ; $522c: $a0
	ld   b, $8f                                      ; $522d: $06 $8f
	ld   b, $90                                      ; $522f: $06 $90
	ld   [bc], a                                     ; $5231: $02
	ld   d, l                                        ; $5232: $55
	nop                                              ; $5233: $00


Data_90_5234::
	dw $00ec ; 5234
	db   $f4                                         ; $5236: $f4
	nop                                              ; $5237: $00
	dec  b                                           ; $5238: $05
	ld   bc, $010b                                   ; $5239: $01 $0b $01
	dec  e                                           ; $523c: $1d
	ld   bc, $0122                                   ; $523d: $01 $22 $01
	ld   [hl], $01                                   ; $5240: $36 $01
	dec  a                                           ; $5242: $3d
	ld   bc, $0151                                   ; $5243: $01 $51 $01
	ld   e, d                                        ; $5246: $5a
	ld   bc, $0167                                   ; $5247: $01 $67 $01
	ld   [hl], b                                     ; $524a: $70
	ld   bc, $017d                                   ; $524b: $01 $7d $01
	add  [hl]                                        ; $524e: $86
	ld   bc, $0193                                   ; $524f: $01 $93 $01
	sbc  l                                           ; $5252: $9d
	ld   bc, $01ab                                   ; $5253: $01 $ab $01
	or   l                                           ; $5256: $b5
	ld   bc, $01c3                                   ; $5257: $01 $c3 $01
	call z, $d901                                    ; $525a: $cc $01 $d9
	ld   bc, $01e3                                   ; $525d: $01 $e3 $01
	di                                               ; $5260: $f3
	ld   bc, $01fd                                   ; $5261: $01 $fd $01
	dec  c                                           ; $5264: $0d
	ld   [bc], a                                     ; $5265: $02
	rla                                              ; $5266: $17
	ld   [bc], a                                     ; $5267: $02
	daa                                              ; $5268: $27
	ld   [bc], a                                     ; $5269: $02
	ld   [hl-], a                                    ; $526a: $32
	ld   [bc], a                                     ; $526b: $02
	ld   b, e                                        ; $526c: $43
	ld   [bc], a                                     ; $526d: $02
	ld   c, [hl]                                     ; $526e: $4e
	ld   [bc], a                                     ; $526f: $02
	ld   e, a                                        ; $5270: $5f
	ld   [bc], a                                     ; $5271: $02
	ld   l, c                                        ; $5272: $69
	ld   [bc], a                                     ; $5273: $02
	ld   a, c                                        ; $5274: $79
	ld   [bc], a                                     ; $5275: $02
	add  h                                           ; $5276: $84
	ld   [bc], a                                     ; $5277: $02
	sub  l                                           ; $5278: $95
	ld   [bc], a                                     ; $5279: $02
	sbc  [hl]                                        ; $527a: $9e
	ld   [bc], a                                     ; $527b: $02
	xor  l                                           ; $527c: $ad
	ld   [bc], a                                     ; $527d: $02
	or   h                                           ; $527e: $b4
	ld   [bc], a                                     ; $527f: $02
	jp   $cd02                                       ; $5280: $c3 $02 $cd


	ld   [bc], a                                     ; $5283: $02
	ldh  [rSC], a                                    ; $5284: $e0 $02
	ld   [$fd02], a                                  ; $5286: $ea $02 $fd
	ld   [bc], a                                     ; $5289: $02
	rlca                                             ; $528a: $07
	inc  bc                                          ; $528b: $03
	ld   a, [de]                                     ; $528c: $1a
	inc  bc                                          ; $528d: $03
	dec  h                                           ; $528e: $25
	inc  bc                                          ; $528f: $03
	add  hl, sp                                      ; $5290: $39
	inc  bc                                          ; $5291: $03
	ld   b, h                                        ; $5292: $44
	inc  bc                                          ; $5293: $03
	ld   e, b                                        ; $5294: $58
	inc  bc                                          ; $5295: $03
	ld   h, d                                        ; $5296: $62
	inc  bc                                          ; $5297: $03
	ld   [hl], l                                     ; $5298: $75
	inc  bc                                          ; $5299: $03
	add  b                                           ; $529a: $80
	inc  bc                                          ; $529b: $03
	sub  h                                           ; $529c: $94
	inc  bc                                          ; $529d: $03
	sbc  a                                           ; $529e: $9f
	inc  bc                                          ; $529f: $03
	cp   e                                           ; $52a0: $bb
	inc  bc                                          ; $52a1: $03
	ret                                              ; $52a2: $c9


	inc  bc                                          ; $52a3: $03
	ldh  [$03], a                                    ; $52a4: $e0 $03
	xor  $03                                         ; $52a6: $ee $03
	dec  b                                           ; $52a8: $05
	inc  b                                           ; $52a9: $04
	inc  de                                          ; $52aa: $13
	inc  b                                           ; $52ab: $04
	ld   a, [hl+]                                    ; $52ac: $2a
	inc  b                                           ; $52ad: $04
	add  hl, sp                                      ; $52ae: $39
	inc  b                                           ; $52af: $04
	ld   d, c                                        ; $52b0: $51
	inc  b                                           ; $52b1: $04
	ld   h, b                                        ; $52b2: $60
	inc  b                                           ; $52b3: $04
	ld   a, b                                        ; $52b4: $78
	inc  b                                           ; $52b5: $04
	add  [hl]                                        ; $52b6: $86
	inc  b                                           ; $52b7: $04
	sbc  l                                           ; $52b8: $9d
	inc  b                                           ; $52b9: $04
	xor  h                                           ; $52ba: $ac
	inc  b                                           ; $52bb: $04
	call nz, $d004                                   ; $52bc: $c4 $04 $d0
	inc  b                                           ; $52bf: $04
	db   $e4                                         ; $52c0: $e4
	inc  b                                           ; $52c1: $04
	ldh  a, [rDIV]                                   ; $52c2: $f0 $04
	inc  b                                           ; $52c4: $04
	dec  b                                           ; $52c5: $05
	inc  d                                           ; $52c6: $14
	dec  b                                           ; $52c7: $05
	jr   z, jr_090_52cf                              ; $52c8: $28 $05

	inc  [hl]                                        ; $52ca: $34
	dec  b                                           ; $52cb: $05
	ld   c, b                                        ; $52cc: $48
	dec  b                                           ; $52cd: $05
	ld   d, h                                        ; $52ce: $54

jr_090_52cf:
	dec  b                                           ; $52cf: $05
	ld   l, b                                        ; $52d0: $68
	dec  b                                           ; $52d1: $05
	ld   [hl], d                                     ; $52d2: $72
	dec  b                                           ; $52d3: $05
	add  [hl]                                        ; $52d4: $86
	dec  b                                           ; $52d5: $05
	sub  d                                           ; $52d6: $92
	dec  b                                           ; $52d7: $05
	xor  h                                           ; $52d8: $ac
	dec  b                                           ; $52d9: $05
	or   [hl]                                        ; $52da: $b6
	dec  b                                           ; $52db: $05
	ret  nc                                          ; $52dc: $d0

	dec  b                                           ; $52dd: $05
	db   $db                                         ; $52de: $db
	dec  b                                           ; $52df: $05
	db   $fd                                         ; $52e0: $fd
	dec  b                                           ; $52e1: $05
	ld   [$2a06], sp                                 ; $52e2: $08 $06 $2a
	ld   b, $35                                      ; $52e5: $06 $35
	ld   b, $57                                      ; $52e7: $06 $57
	ld   b, $63                                      ; $52e9: $06 $63
	ld   b, $86                                      ; $52eb: $06 $86
	ld   b, $92                                      ; $52ed: $06 $92
	ld   b, $b5                                      ; $52ef: $06 $b5
	ld   b, $c0                                      ; $52f1: $06 $c0
	ld   b, $e2                                      ; $52f3: $06 $e2
	ld   b, $e7                                      ; $52f5: $06 $e7
	ld   b, $0a                                      ; $52f7: $06 $0a
	rlca                                             ; $52f9: $07
	inc  de                                          ; $52fa: $13
	rlca                                             ; $52fb: $07
	ld   sp, $3b07                                   ; $52fc: $31 $07 $3b
	rlca                                             ; $52ff: $07
	ld   h, l                                        ; $5300: $65
	rlca                                             ; $5301: $07
	ld   [hl], c                                     ; $5302: $71
	rlca                                             ; $5303: $07
	sbc  e                                           ; $5304: $9b
	rlca                                             ; $5305: $07
	and  h                                           ; $5306: $a4
	rlca                                             ; $5307: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5308: $cf
	rlca                                             ; $5309: $07
	rst  $10                                         ; $530a: $d7
	rlca                                             ; $530b: $07
	ld   [bc], a                                     ; $530c: $02
	ld   [$080a], sp                                 ; $530d: $08 $0a $08
	ld   [hl], $08                                   ; $5310: $36 $08
	dec  a                                           ; $5312: $3d
	ld   [$084a], sp                                 ; $5313: $08 $4a $08
	ld   d, l                                        ; $5316: $55
	ld   [$0866], sp                                 ; $5317: $08 $66 $08
	ld   l, a                                        ; $531a: $6f
	ld   [$087e], sp                                 ; $531b: $08 $7e $08
	add  [hl]                                        ; $531e: $86
	ld   [$a7b6], sp                                 ; $531f: $08 $b6 $a7
	push af                                          ; $5322: $f5
	jp   z, $fbe4                                    ; $5323: $ca $e4 $fb

	jp   z, $1c00                                    ; $5326: $ca $00 $1c

	ld   hl, $9227                                   ; $5329: $21 $27 $92
	dec  l                                           ; $532c: $2d
	rra                                              ; $532d: $1f
	and  b                                           ; $532e: $a0
	ld   e, e                                        ; $532f: $5b
	ld   e, l                                        ; $5330: $5d
	ld   h, c                                        ; $5331: $61
	halt                                             ; $5332: $76
	ld   e, d                                        ; $5333: $5a
	ld   [hl], l                                     ; $5334: $75
	ld   e, e                                        ; $5335: $5b
	adc  h                                           ; $5336: $8c
	ld   h, a                                        ; $5337: $67
	nop                                              ; $5338: $00
	inc  e                                           ; $5339: $1c
	ld   hl, $0327                                   ; $533a: $21 $27 $03
	ld   h, d                                        ; $533d: $62
	nop                                              ; $533e: $00
	or   [hl]                                        ; $533f: $b6
	and  a                                           ; $5340: $a7
	push af                                          ; $5341: $f5
	jp   z, $fbe4                                    ; $5342: $ca $e4 $fb

	jp   z, $0275                                    ; $5345: $ca $75 $02

	inc  bc                                          ; $5348: $03
	dec  b                                           ; $5349: $05
	inc  de                                          ; $534a: $13
	and  b                                           ; $534b: $a0
	ld   e, e                                        ; $534c: $5b
	ld   e, a                                        ; $534d: $5f
	adc  h                                           ; $534e: $8c
	ld   h, a                                        ; $534f: $67
	nop                                              ; $5350: $00
	dec  l                                           ; $5351: $2d
	rra                                              ; $5352: $1f
	inc  bc                                          ; $5353: $03
	ld   h, d                                        ; $5354: $62
	nop                                              ; $5355: $00
	or   [hl]                                        ; $5356: $b6
	and  a                                           ; $5357: $a7
	push af                                          ; $5358: $f5
	jp   z, $fbe4                                    ; $5359: $ca $e4 $fb

	jp   z, $0675                                    ; $535c: $ca $75 $06

	sub  d                                           ; $535f: $92
	ld   [bc], a                                     ; $5360: $02
	ld   h, e                                        ; $5361: $63
	ld   [bc], a                                     ; $5362: $02
	inc  bc                                          ; $5363: $03
	and  b                                           ; $5364: $a0
	ld   e, e                                        ; $5365: $5b
	ld   e, a                                        ; $5366: $5f
	adc  h                                           ; $5367: $8c
	ld   h, a                                        ; $5368: $67
	nop                                              ; $5369: $00
	db   $dd                                         ; $536a: $dd
	and  l                                           ; $536b: $a5
	cp   d                                           ; $536c: $ba
	db   $e4                                         ; $536d: $e4
	ei                                               ; $536e: $fb
	jp   z, $0500                                    ; $536f: $ca $00 $05

	and  l                                           ; $5372: $a5
	inc  b                                           ; $5373: $04
	ld   a, [bc]                                     ; $5374: $0a
	ld   [bc], a                                     ; $5375: $02
	nop                                              ; $5376: $00
	ld   a, h                                        ; $5377: $7c
	inc  bc                                          ; $5378: $03
	and  l                                           ; $5379: $a5
	and  b                                           ; $537a: $a0
	ld   e, e                                        ; $537b: $5b
	ld   e, l                                        ; $537c: $5d
	ld   h, c                                        ; $537d: $61
	halt                                             ; $537e: $76
	ld   e, d                                        ; $537f: $5a
	ld   [hl], l                                     ; $5380: $75
	ld   e, e                                        ; $5381: $5b
	adc  h                                           ; $5382: $8c
	ld   h, a                                        ; $5383: $67
	nop                                              ; $5384: $00
	ld   h, e                                        ; $5385: $63
	ld   e, l                                        ; $5386: $5d
	sub  a                                           ; $5387: $97
	db   $dd                                         ; $5388: $dd
	and  l                                           ; $5389: $a5
	cp   d                                           ; $538a: $ba
	inc  bc                                          ; $538b: $03
	ld   h, d                                        ; $538c: $62
	nop                                              ; $538d: $00
	ld   h, e                                        ; $538e: $63
	ld   e, l                                        ; $538f: $5d
	sub  a                                           ; $5390: $97
	ld   a, h                                        ; $5391: $7c
	db   $dd                                         ; $5392: $dd
	and  l                                           ; $5393: $a5
	cp   d                                           ; $5394: $ba
	and  b                                           ; $5395: $a0
	ld   e, e                                        ; $5396: $5b
	ld   e, a                                        ; $5397: $5f
	adc  h                                           ; $5398: $8c
	ld   h, a                                        ; $5399: $67
	nop                                              ; $539a: $00
	ld   h, a                                        ; $539b: $67
	adc  l                                           ; $539c: $8d
	sbc  d                                           ; $539d: $9a
	db   $dd                                         ; $539e: $dd
	and  l                                           ; $539f: $a5
	cp   d                                           ; $53a0: $ba
	inc  bc                                          ; $53a1: $03
	ld   h, d                                        ; $53a2: $62
	nop                                              ; $53a3: $00
	ld   h, a                                        ; $53a4: $67
	adc  l                                           ; $53a5: $8d
	sbc  d                                           ; $53a6: $9a
	ld   a, h                                        ; $53a7: $7c
	db   $dd                                         ; $53a8: $dd
	and  l                                           ; $53a9: $a5
	cp   d                                           ; $53aa: $ba
	and  b                                           ; $53ab: $a0
	ld   e, e                                        ; $53ac: $5b
	ld   e, a                                        ; $53ad: $5f
	adc  h                                           ; $53ae: $8c
	ld   h, a                                        ; $53af: $67
	nop                                              ; $53b0: $00
	rst  JumpTable                                         ; $53b1: $df
	db   $ec                                         ; $53b2: $ec
	and  e                                           ; $53b3: $a3
	db   $dd                                         ; $53b4: $dd
	and  l                                           ; $53b5: $a5
	cp   d                                           ; $53b6: $ba
	inc  bc                                          ; $53b7: $03
	ld   h, d                                        ; $53b8: $62
	nop                                              ; $53b9: $00
	rst  JumpTable                                         ; $53ba: $df
	db   $ec                                         ; $53bb: $ec
	and  e                                           ; $53bc: $a3
	ld   a, h                                        ; $53bd: $7c
	db   $dd                                         ; $53be: $dd
	and  l                                           ; $53bf: $a5
	cp   d                                           ; $53c0: $ba
	and  b                                           ; $53c1: $a0
	ld   e, e                                        ; $53c2: $5b
	ld   e, a                                        ; $53c3: $5f
	adc  h                                           ; $53c4: $8c
	ld   h, a                                        ; $53c5: $67
	nop                                              ; $53c6: $00
	and  e                                           ; $53c7: $a3
	and  l                                           ; $53c8: $a5
	db   $ec                                         ; $53c9: $ec
	cp   d                                           ; $53ca: $ba
	db   $dd                                         ; $53cb: $dd
	and  l                                           ; $53cc: $a5
	cp   d                                           ; $53cd: $ba
	inc  bc                                          ; $53ce: $03
	ld   h, d                                        ; $53cf: $62
	nop                                              ; $53d0: $00
	and  e                                           ; $53d1: $a3
	and  l                                           ; $53d2: $a5
	db   $ec                                         ; $53d3: $ec
	cp   d                                           ; $53d4: $ba
	ld   a, h                                        ; $53d5: $7c
	db   $dd                                         ; $53d6: $dd
	and  l                                           ; $53d7: $a5
	cp   d                                           ; $53d8: $ba
	and  b                                           ; $53d9: $a0
	ld   e, e                                        ; $53da: $5b
	ld   e, a                                        ; $53db: $5f
	adc  h                                           ; $53dc: $8c
	ld   h, a                                        ; $53dd: $67
	nop                                              ; $53de: $00
	ld   [bc], a                                     ; $53df: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e0: $cf
	dec  b                                           ; $53e1: $05
	ld   a, [de]                                     ; $53e2: $1a
	db   $dd                                         ; $53e3: $dd
	and  l                                           ; $53e4: $a5
	cp   d                                           ; $53e5: $ba
	inc  bc                                          ; $53e6: $03
	ld   h, d                                        ; $53e7: $62
	nop                                              ; $53e8: $00
	ld   [bc], a                                     ; $53e9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ea: $cf
	dec  b                                           ; $53eb: $05
	ld   a, [de]                                     ; $53ec: $1a
	ld   a, h                                        ; $53ed: $7c
	db   $dd                                         ; $53ee: $dd
	and  l                                           ; $53ef: $a5
	cp   d                                           ; $53f0: $ba
	and  b                                           ; $53f1: $a0
	ld   e, e                                        ; $53f2: $5b
	ld   e, a                                        ; $53f3: $5f
	adc  h                                           ; $53f4: $8c
	ld   h, a                                        ; $53f5: $67
	nop                                              ; $53f6: $00
	xor  h                                           ; $53f7: $ac
	push af                                          ; $53f8: $f5
	set  3, l                                        ; $53f9: $cb $dd
	and  l                                           ; $53fb: $a5
	cp   d                                           ; $53fc: $ba
	inc  bc                                          ; $53fd: $03
	ld   h, d                                        ; $53fe: $62
	nop                                              ; $53ff: $00
	xor  h                                           ; $5400: $ac
	push af                                          ; $5401: $f5
	bit  7, h                                        ; $5402: $cb $7c
	db   $dd                                         ; $5404: $dd
	and  l                                           ; $5405: $a5
	cp   d                                           ; $5406: $ba
	and  b                                           ; $5407: $a0
	ld   e, e                                        ; $5408: $5b
	ld   e, a                                        ; $5409: $5f
	adc  h                                           ; $540a: $8c
	ld   h, a                                        ; $540b: $67
	nop                                              ; $540c: $00
	ld   h, e                                        ; $540d: $63
	ld   e, l                                        ; $540e: $5d
	sub  a                                           ; $540f: $97
	ld   a, h                                        ; $5410: $7c
	rst  $10                                         ; $5411: $d7
	rst  $28                                         ; $5412: $ef
	rst  JumpTable                                         ; $5413: $df
	and  l                                           ; $5414: $a5
	jp   z, Jump_090_6300                            ; $5415: $ca $00 $63

	ld   e, l                                        ; $5418: $5d
	sub  a                                           ; $5419: $97
	ld   a, h                                        ; $541a: $7c
	rst  $10                                         ; $541b: $d7
	rst  $28                                         ; $541c: $ef
	rst  JumpTable                                         ; $541d: $df
	and  l                                           ; $541e: $a5
	jp   z, $02a0                                    ; $541f: $ca $a0 $02

	sub  l                                           ; $5422: $95
	sbc  d                                           ; $5423: $9a
	adc  h                                           ; $5424: $8c
	ld   h, a                                        ; $5425: $67
	nop                                              ; $5426: $00
	ld   h, a                                        ; $5427: $67
	adc  l                                           ; $5428: $8d
	sbc  d                                           ; $5429: $9a
	ld   a, h                                        ; $542a: $7c
	rst  $10                                         ; $542b: $d7
	rst  $28                                         ; $542c: $ef
	rst  JumpTable                                         ; $542d: $df
	and  l                                           ; $542e: $a5
	jp   z, Jump_090_6700                            ; $542f: $ca $00 $67

	adc  l                                           ; $5432: $8d
	sbc  d                                           ; $5433: $9a
	ld   a, h                                        ; $5434: $7c
	rst  $10                                         ; $5435: $d7
	rst  $28                                         ; $5436: $ef
	rst  JumpTable                                         ; $5437: $df
	and  l                                           ; $5438: $a5
	jp   z, $02a0                                    ; $5439: $ca $a0 $02

	sub  l                                           ; $543c: $95
	sbc  d                                           ; $543d: $9a
	adc  h                                           ; $543e: $8c
	ld   h, a                                        ; $543f: $67
	nop                                              ; $5440: $00
	rst  JumpTable                                         ; $5441: $df
	db   $ec                                         ; $5442: $ec
	and  e                                           ; $5443: $a3
	ld   a, h                                        ; $5444: $7c
	rst  $10                                         ; $5445: $d7
	rst  $28                                         ; $5446: $ef
	rst  JumpTable                                         ; $5447: $df
	and  l                                           ; $5448: $a5
	jp   z, $df00                                    ; $5449: $ca $00 $df

	db   $ec                                         ; $544c: $ec
	and  e                                           ; $544d: $a3
	ld   a, h                                        ; $544e: $7c
	rst  $10                                         ; $544f: $d7
	rst  $28                                         ; $5450: $ef
	rst  JumpTable                                         ; $5451: $df
	and  l                                           ; $5452: $a5
	jp   z, $02a0                                    ; $5453: $ca $a0 $02

	sub  l                                           ; $5456: $95
	sbc  d                                           ; $5457: $9a
	adc  h                                           ; $5458: $8c
	ld   h, a                                        ; $5459: $67
	nop                                              ; $545a: $00
	and  e                                           ; $545b: $a3
	and  l                                           ; $545c: $a5
	db   $ec                                         ; $545d: $ec
	cp   d                                           ; $545e: $ba
	ld   a, h                                        ; $545f: $7c
	rst  $10                                         ; $5460: $d7
	rst  $28                                         ; $5461: $ef
	rst  JumpTable                                         ; $5462: $df
	and  l                                           ; $5463: $a5
	jp   z, $a300                                    ; $5464: $ca $00 $a3

	and  l                                           ; $5467: $a5
	db   $ec                                         ; $5468: $ec
	cp   d                                           ; $5469: $ba
	ld   a, h                                        ; $546a: $7c
	rst  $10                                         ; $546b: $d7
	rst  $28                                         ; $546c: $ef
	rst  JumpTable                                         ; $546d: $df
	and  l                                           ; $546e: $a5
	jp   z, $02a0                                    ; $546f: $ca $a0 $02

	sub  l                                           ; $5472: $95
	sbc  d                                           ; $5473: $9a
	adc  h                                           ; $5474: $8c
	ld   h, a                                        ; $5475: $67
	nop                                              ; $5476: $00
	ld   [bc], a                                     ; $5477: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5478: $cf
	dec  b                                           ; $5479: $05
	ld   a, [de]                                     ; $547a: $1a
	ld   a, h                                        ; $547b: $7c
	rst  $10                                         ; $547c: $d7
	rst  $28                                         ; $547d: $ef
	rst  JumpTable                                         ; $547e: $df
	and  l                                           ; $547f: $a5
	jp   z, $0200                                    ; $5480: $ca $00 $02

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5483: $cf
	dec  b                                           ; $5484: $05
	ld   a, [de]                                     ; $5485: $1a
	ld   a, h                                        ; $5486: $7c
	rst  $10                                         ; $5487: $d7
	rst  $28                                         ; $5488: $ef
	rst  JumpTable                                         ; $5489: $df
	and  l                                           ; $548a: $a5
	jp   z, $02a0                                    ; $548b: $ca $a0 $02

	sub  l                                           ; $548e: $95
	sbc  d                                           ; $548f: $9a
	adc  h                                           ; $5490: $8c
	ld   h, a                                        ; $5491: $67
	nop                                              ; $5492: $00
	xor  h                                           ; $5493: $ac
	push af                                          ; $5494: $f5
	bit  7, h                                        ; $5495: $cb $7c
	rst  $10                                         ; $5497: $d7
	rst  $28                                         ; $5498: $ef
	rst  JumpTable                                         ; $5499: $df
	and  l                                           ; $549a: $a5
	jp   z, $ac00                                    ; $549b: $ca $00 $ac

	push af                                          ; $549e: $f5
	bit  7, h                                        ; $549f: $cb $7c
	rst  $10                                         ; $54a1: $d7
	rst  $28                                         ; $54a2: $ef
	rst  JumpTable                                         ; $54a3: $df
	and  l                                           ; $54a4: $a5
	jp   z, $02a0                                    ; $54a5: $ca $a0 $02

	sub  l                                           ; $54a8: $95
	sbc  d                                           ; $54a9: $9a
	adc  h                                           ; $54aa: $8c
	ld   h, a                                        ; $54ab: $67
	nop                                              ; $54ac: $00
	inc  bc                                          ; $54ad: $03
	ret                                              ; $54ae: $c9


	inc  b                                           ; $54af: $04
	add  l                                           ; $54b0: $85
	ld   a, h                                        ; $54b1: $7c
	rst  $10                                         ; $54b2: $d7
	rst  $28                                         ; $54b3: $ef
	rst  JumpTable                                         ; $54b4: $df
	and  l                                           ; $54b5: $a5
	jp   z, $0300                                    ; $54b6: $ca $00 $03

	ret                                              ; $54b9: $c9


	inc  b                                           ; $54ba: $04
	add  l                                           ; $54bb: $85
	ld   a, h                                        ; $54bc: $7c
	rst  $10                                         ; $54bd: $d7
	rst  $28                                         ; $54be: $ef
	rst  JumpTable                                         ; $54bf: $df
	and  l                                           ; $54c0: $a5
	jp   z, $02a0                                    ; $54c1: $ca $a0 $02

	sub  l                                           ; $54c4: $95
	sbc  d                                           ; $54c5: $9a
	adc  h                                           ; $54c6: $8c
	ld   h, a                                        ; $54c7: $67
	nop                                              ; $54c8: $00
	xor  $cc                                         ; $54c9: $ee $cc
	ld   a, h                                        ; $54cb: $7c
	rst  $10                                         ; $54cc: $d7
	rst  $28                                         ; $54cd: $ef
	rst  JumpTable                                         ; $54ce: $df
	and  l                                           ; $54cf: $a5
	jp   z, $ee00                                    ; $54d0: $ca $00 $ee

	call z, $d77c                                    ; $54d3: $cc $7c $d7
	rst  $28                                         ; $54d6: $ef
	rst  JumpTable                                         ; $54d7: $df
	and  l                                           ; $54d8: $a5
	jp   z, $02a0                                    ; $54d9: $ca $a0 $02

	sub  l                                           ; $54dc: $95
	sbc  d                                           ; $54dd: $9a
	adc  h                                           ; $54de: $8c
	ld   h, a                                        ; $54df: $67
	nop                                              ; $54e0: $00
	and  l                                           ; $54e1: $a5
	jp   c, $c9f5                                    ; $54e2: $da $f5 $c9

	inc  bc                                          ; $54e5: $03
	ld   h, d                                        ; $54e6: $62
	nop                                              ; $54e7: $00
	and  l                                           ; $54e8: $a5
	jp   c, $c9f5                                    ; $54e9: $da $f5 $c9

	ld   [bc], a                                     ; $54ec: $02
	cp   c                                           ; $54ed: $b9
	ld   b, $4b                                      ; $54ee: $06 $4b
	and  b                                           ; $54f0: $a0
	ld   [bc], a                                     ; $54f1: $02
	sub  l                                           ; $54f2: $95
	sbc  d                                           ; $54f3: $9a
	adc  h                                           ; $54f4: $8c
	ld   h, a                                        ; $54f5: $67
	nop                                              ; $54f6: $00
	ld   h, e                                        ; $54f7: $63
	ld   e, l                                        ; $54f8: $5d
	sub  a                                           ; $54f9: $97
	and  l                                           ; $54fa: $a5
	jp   c, $c9f5                                    ; $54fb: $da $f5 $c9

	inc  bc                                          ; $54fe: $03
	ld   h, d                                        ; $54ff: $62
	nop                                              ; $5500: $00
	ld   h, e                                        ; $5501: $63
	ld   e, l                                        ; $5502: $5d
	sub  a                                           ; $5503: $97
	ld   a, h                                        ; $5504: $7c
	and  l                                           ; $5505: $a5
	jp   c, $c9f5                                    ; $5506: $da $f5 $c9

	ld   [bc], a                                     ; $5509: $02
	cp   c                                           ; $550a: $b9
	ld   b, $4b                                      ; $550b: $06 $4b
	and  b                                           ; $550d: $a0
	ld   [bc], a                                     ; $550e: $02
	sub  l                                           ; $550f: $95
	sbc  d                                           ; $5510: $9a
	adc  h                                           ; $5511: $8c
	ld   h, a                                        ; $5512: $67
	nop                                              ; $5513: $00
	ld   h, a                                        ; $5514: $67
	adc  l                                           ; $5515: $8d
	sbc  d                                           ; $5516: $9a
	and  l                                           ; $5517: $a5
	jp   c, $c9f5                                    ; $5518: $da $f5 $c9

	inc  bc                                          ; $551b: $03
	ld   h, d                                        ; $551c: $62
	nop                                              ; $551d: $00
	ld   h, a                                        ; $551e: $67
	adc  l                                           ; $551f: $8d
	sbc  d                                           ; $5520: $9a
	ld   a, h                                        ; $5521: $7c
	and  l                                           ; $5522: $a5
	jp   c, $c9f5                                    ; $5523: $da $f5 $c9

	ld   [bc], a                                     ; $5526: $02
	cp   c                                           ; $5527: $b9
	ld   b, $4b                                      ; $5528: $06 $4b
	and  b                                           ; $552a: $a0
	ld   [bc], a                                     ; $552b: $02
	sub  l                                           ; $552c: $95
	sbc  d                                           ; $552d: $9a
	adc  h                                           ; $552e: $8c
	ld   h, a                                        ; $552f: $67
	nop                                              ; $5530: $00
	rst  JumpTable                                         ; $5531: $df
	db   $ec                                         ; $5532: $ec
	and  e                                           ; $5533: $a3
	and  l                                           ; $5534: $a5
	jp   c, $c9f5                                    ; $5535: $da $f5 $c9

	inc  bc                                          ; $5538: $03
	ld   h, d                                        ; $5539: $62
	nop                                              ; $553a: $00
	rst  JumpTable                                         ; $553b: $df
	db   $ec                                         ; $553c: $ec
	and  e                                           ; $553d: $a3
	ld   a, h                                        ; $553e: $7c
	and  l                                           ; $553f: $a5
	jp   c, $c9f5                                    ; $5540: $da $f5 $c9

	ld   [bc], a                                     ; $5543: $02
	cp   c                                           ; $5544: $b9
	ld   b, $4b                                      ; $5545: $06 $4b
	and  b                                           ; $5547: $a0
	ld   [bc], a                                     ; $5548: $02
	sub  l                                           ; $5549: $95
	sbc  d                                           ; $554a: $9a
	adc  h                                           ; $554b: $8c
	ld   h, a                                        ; $554c: $67
	nop                                              ; $554d: $00
	and  e                                           ; $554e: $a3
	and  l                                           ; $554f: $a5
	db   $ec                                         ; $5550: $ec
	cp   d                                           ; $5551: $ba
	and  l                                           ; $5552: $a5
	jp   c, $c9f5                                    ; $5553: $da $f5 $c9

	inc  bc                                          ; $5556: $03
	ld   h, d                                        ; $5557: $62
	nop                                              ; $5558: $00
	and  e                                           ; $5559: $a3
	and  l                                           ; $555a: $a5
	db   $ec                                         ; $555b: $ec
	cp   d                                           ; $555c: $ba
	ld   a, h                                        ; $555d: $7c
	and  l                                           ; $555e: $a5
	jp   c, $c9f5                                    ; $555f: $da $f5 $c9

	ld   [bc], a                                     ; $5562: $02
	cp   c                                           ; $5563: $b9
	ld   b, $4b                                      ; $5564: $06 $4b
	and  b                                           ; $5566: $a0
	ld   [bc], a                                     ; $5567: $02
	sub  l                                           ; $5568: $95
	sbc  d                                           ; $5569: $9a
	adc  h                                           ; $556a: $8c
	ld   h, a                                        ; $556b: $67
	nop                                              ; $556c: $00
	ld   [bc], a                                     ; $556d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $556e: $cf
	dec  b                                           ; $556f: $05
	ld   a, [de]                                     ; $5570: $1a
	and  l                                           ; $5571: $a5
	jp   c, $c9f5                                    ; $5572: $da $f5 $c9

	inc  bc                                          ; $5575: $03
	ld   h, d                                        ; $5576: $62
	nop                                              ; $5577: $00
	ld   [bc], a                                     ; $5578: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5579: $cf
	dec  b                                           ; $557a: $05
	ld   a, [de]                                     ; $557b: $1a
	ld   a, h                                        ; $557c: $7c
	and  l                                           ; $557d: $a5
	jp   c, $c9f5                                    ; $557e: $da $f5 $c9

	ld   [bc], a                                     ; $5581: $02
	cp   c                                           ; $5582: $b9
	ld   b, $4b                                      ; $5583: $06 $4b
	and  b                                           ; $5585: $a0
	ld   [bc], a                                     ; $5586: $02
	sub  l                                           ; $5587: $95
	sbc  d                                           ; $5588: $9a
	adc  h                                           ; $5589: $8c
	ld   h, a                                        ; $558a: $67
	nop                                              ; $558b: $00
	xor  h                                           ; $558c: $ac
	push af                                          ; $558d: $f5
	res  4, l                                        ; $558e: $cb $a5
	jp   c, $c9f5                                    ; $5590: $da $f5 $c9

	inc  bc                                          ; $5593: $03
	ld   h, d                                        ; $5594: $62
	nop                                              ; $5595: $00
	xor  h                                           ; $5596: $ac
	push af                                          ; $5597: $f5
	bit  7, h                                        ; $5598: $cb $7c
	and  l                                           ; $559a: $a5
	jp   c, $c9f5                                    ; $559b: $da $f5 $c9

	ld   [bc], a                                     ; $559e: $02
	cp   c                                           ; $559f: $b9
	ld   b, $4b                                      ; $55a0: $06 $4b
	and  b                                           ; $55a2: $a0
	ld   [bc], a                                     ; $55a3: $02
	sub  l                                           ; $55a4: $95
	sbc  d                                           ; $55a5: $9a
	adc  h                                           ; $55a6: $8c
	ld   h, a                                        ; $55a7: $67
	nop                                              ; $55a8: $00
	ld   l, e                                        ; $55a9: $6b
	ld   a, h                                        ; $55aa: $7c
	inc  b                                           ; $55ab: $04
	ld   e, $a5                                      ; $55ac: $1e $a5
	jp   c, $c9f5                                    ; $55ae: $da $f5 $c9

	inc  bc                                          ; $55b1: $03
	ld   h, d                                        ; $55b2: $62
	nop                                              ; $55b3: $00
	ld   l, e                                        ; $55b4: $6b
	ld   a, h                                        ; $55b5: $7c
	inc  b                                           ; $55b6: $04
	ld   e, $7c                                      ; $55b7: $1e $7c
	and  l                                           ; $55b9: $a5
	jp   c, $c9f5                                    ; $55ba: $da $f5 $c9

	ld   [bc], a                                     ; $55bd: $02
	cp   c                                           ; $55be: $b9
	ld   b, $4b                                      ; $55bf: $06 $4b
	and  b                                           ; $55c1: $a0
	ld   [bc], a                                     ; $55c2: $02
	sub  l                                           ; $55c3: $95
	sbc  d                                           ; $55c4: $9a
	adc  h                                           ; $55c5: $8c
	ld   h, a                                        ; $55c6: $67
	nop                                              ; $55c7: $00
	pop  de                                          ; $55c8: $d1
	cp   d                                           ; $55c9: $ba
	ld   b, $de                                      ; $55ca: $06 $de
	ld   b, $df                                      ; $55cc: $06 $df
	ld   b, $e0                                      ; $55ce: $06 $e0
	inc  bc                                          ; $55d0: $03
	ld   h, d                                        ; $55d1: $62
	nop                                              ; $55d2: $00
	pop  de                                          ; $55d3: $d1
	cp   d                                           ; $55d4: $ba
	ld   b, $de                                      ; $55d5: $06 $de
	ld   b, $df                                      ; $55d7: $06 $df
	ld   b, $e0                                      ; $55d9: $06 $e0
	ld   [bc], a                                     ; $55db: $02
	cp   c                                           ; $55dc: $b9
	ld   b, $4b                                      ; $55dd: $06 $4b
	sub  d                                           ; $55df: $92
	dec  b                                           ; $55e0: $05
	ld   d, e                                        ; $55e1: $53
	ld   [bc], a                                     ; $55e2: $02
	ld   h, c                                        ; $55e3: $61
	ld   [bc], a                                     ; $55e4: $02
	cp   c                                           ; $55e5: $b9
	ld   b, $4b                                      ; $55e6: $06 $4b
	and  b                                           ; $55e8: $a0
	ld   [bc], a                                     ; $55e9: $02
	sub  l                                           ; $55ea: $95
	sbc  d                                           ; $55eb: $9a
	adc  h                                           ; $55ec: $8c
	ld   h, a                                        ; $55ed: $67
	nop                                              ; $55ee: $00
	ld   h, e                                        ; $55ef: $63
	ld   e, l                                        ; $55f0: $5d
	sub  a                                           ; $55f1: $97
	pop  de                                          ; $55f2: $d1
	cp   d                                           ; $55f3: $ba
	ld   b, $de                                      ; $55f4: $06 $de
	ld   b, $df                                      ; $55f6: $06 $df
	ld   b, $e0                                      ; $55f8: $06 $e0
	inc  bc                                          ; $55fa: $03
	ld   h, d                                        ; $55fb: $62
	nop                                              ; $55fc: $00
	ld   h, e                                        ; $55fd: $63
	ld   e, l                                        ; $55fe: $5d
	sub  a                                           ; $55ff: $97
	ld   a, h                                        ; $5600: $7c
	pop  de                                          ; $5601: $d1
	cp   d                                           ; $5602: $ba
	ld   b, $de                                      ; $5603: $06 $de
	ld   b, $df                                      ; $5605: $06 $df
	ld   b, $e0                                      ; $5607: $06 $e0
	ld   [bc], a                                     ; $5609: $02
	cp   c                                           ; $560a: $b9
	ld   b, $4b                                      ; $560b: $06 $4b
	and  b                                           ; $560d: $a0
	ld   [bc], a                                     ; $560e: $02
	sub  l                                           ; $560f: $95
	sbc  d                                           ; $5610: $9a
	adc  h                                           ; $5611: $8c
	ld   h, a                                        ; $5612: $67
	nop                                              ; $5613: $00
	ld   h, a                                        ; $5614: $67
	adc  l                                           ; $5615: $8d
	sbc  d                                           ; $5616: $9a
	pop  de                                          ; $5617: $d1
	cp   d                                           ; $5618: $ba
	ld   b, $de                                      ; $5619: $06 $de
	ld   b, $df                                      ; $561b: $06 $df
	ld   b, $e0                                      ; $561d: $06 $e0
	inc  bc                                          ; $561f: $03
	ld   h, d                                        ; $5620: $62
	nop                                              ; $5621: $00
	ld   h, a                                        ; $5622: $67
	adc  l                                           ; $5623: $8d
	sbc  d                                           ; $5624: $9a
	ld   a, h                                        ; $5625: $7c
	pop  de                                          ; $5626: $d1
	cp   d                                           ; $5627: $ba
	ld   b, $de                                      ; $5628: $06 $de
	ld   b, $df                                      ; $562a: $06 $df
	ld   b, $e0                                      ; $562c: $06 $e0
	ld   [bc], a                                     ; $562e: $02
	cp   c                                           ; $562f: $b9
	ld   b, $4b                                      ; $5630: $06 $4b
	and  b                                           ; $5632: $a0
	ld   [bc], a                                     ; $5633: $02
	sub  l                                           ; $5634: $95
	sbc  d                                           ; $5635: $9a
	adc  h                                           ; $5636: $8c
	ld   h, a                                        ; $5637: $67
	nop                                              ; $5638: $00
	rst  JumpTable                                         ; $5639: $df
	db   $ec                                         ; $563a: $ec
	and  e                                           ; $563b: $a3
	pop  de                                          ; $563c: $d1
	cp   d                                           ; $563d: $ba
	ld   b, $de                                      ; $563e: $06 $de
	ld   b, $df                                      ; $5640: $06 $df
	ld   b, $e0                                      ; $5642: $06 $e0
	inc  bc                                          ; $5644: $03
	ld   h, d                                        ; $5645: $62
	nop                                              ; $5646: $00
	rst  JumpTable                                         ; $5647: $df
	db   $ec                                         ; $5648: $ec
	and  e                                           ; $5649: $a3
	ld   a, h                                        ; $564a: $7c
	pop  de                                          ; $564b: $d1
	cp   d                                           ; $564c: $ba
	ld   b, $de                                      ; $564d: $06 $de
	ld   b, $df                                      ; $564f: $06 $df
	ld   b, $e0                                      ; $5651: $06 $e0
	ld   [bc], a                                     ; $5653: $02
	cp   c                                           ; $5654: $b9
	ld   b, $4b                                      ; $5655: $06 $4b
	and  b                                           ; $5657: $a0
	ld   [bc], a                                     ; $5658: $02
	sub  l                                           ; $5659: $95
	sbc  d                                           ; $565a: $9a
	adc  h                                           ; $565b: $8c
	ld   h, a                                        ; $565c: $67
	nop                                              ; $565d: $00
	and  e                                           ; $565e: $a3
	and  l                                           ; $565f: $a5
	db   $ec                                         ; $5660: $ec
	cp   d                                           ; $5661: $ba
	pop  de                                          ; $5662: $d1
	cp   d                                           ; $5663: $ba
	ld   b, $de                                      ; $5664: $06 $de
	ld   b, $df                                      ; $5666: $06 $df
	ld   b, $e0                                      ; $5668: $06 $e0
	inc  bc                                          ; $566a: $03
	ld   h, d                                        ; $566b: $62
	nop                                              ; $566c: $00
	and  e                                           ; $566d: $a3
	and  l                                           ; $566e: $a5
	db   $ec                                         ; $566f: $ec
	cp   d                                           ; $5670: $ba
	ld   a, h                                        ; $5671: $7c
	pop  de                                          ; $5672: $d1
	cp   d                                           ; $5673: $ba
	ld   b, $de                                      ; $5674: $06 $de
	ld   b, $df                                      ; $5676: $06 $df
	ld   b, $e0                                      ; $5678: $06 $e0
	ld   [bc], a                                     ; $567a: $02
	cp   c                                           ; $567b: $b9
	ld   b, $4b                                      ; $567c: $06 $4b
	and  b                                           ; $567e: $a0
	ld   [bc], a                                     ; $567f: $02
	sub  l                                           ; $5680: $95
	sbc  d                                           ; $5681: $9a
	adc  h                                           ; $5682: $8c
	ld   h, a                                        ; $5683: $67
	nop                                              ; $5684: $00
	ld   [bc], a                                     ; $5685: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5686: $cf
	dec  b                                           ; $5687: $05
	ld   a, [de]                                     ; $5688: $1a
	pop  de                                          ; $5689: $d1
	cp   d                                           ; $568a: $ba
	ld   b, $de                                      ; $568b: $06 $de
	ld   b, $df                                      ; $568d: $06 $df
	ld   b, $e0                                      ; $568f: $06 $e0
	inc  bc                                          ; $5691: $03
	ld   h, d                                        ; $5692: $62
	nop                                              ; $5693: $00
	ld   [bc], a                                     ; $5694: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5695: $cf
	dec  b                                           ; $5696: $05
	ld   a, [de]                                     ; $5697: $1a
	ld   a, h                                        ; $5698: $7c
	pop  de                                          ; $5699: $d1
	cp   d                                           ; $569a: $ba
	ld   b, $de                                      ; $569b: $06 $de
	ld   b, $df                                      ; $569d: $06 $df
	ld   b, $e0                                      ; $569f: $06 $e0
	ld   [bc], a                                     ; $56a1: $02
	cp   c                                           ; $56a2: $b9
	ld   b, $4b                                      ; $56a3: $06 $4b
	and  b                                           ; $56a5: $a0
	ld   [bc], a                                     ; $56a6: $02
	sub  l                                           ; $56a7: $95
	sbc  d                                           ; $56a8: $9a
	adc  h                                           ; $56a9: $8c
	ld   h, a                                        ; $56aa: $67
	nop                                              ; $56ab: $00
	xor  h                                           ; $56ac: $ac
	push af                                          ; $56ad: $f5
	set  2, c                                        ; $56ae: $cb $d1
	cp   d                                           ; $56b0: $ba
	ld   b, $de                                      ; $56b1: $06 $de
	ld   b, $df                                      ; $56b3: $06 $df
	ld   b, $e0                                      ; $56b5: $06 $e0
	inc  bc                                          ; $56b7: $03
	ld   h, d                                        ; $56b8: $62
	nop                                              ; $56b9: $00
	xor  h                                           ; $56ba: $ac
	push af                                          ; $56bb: $f5
	bit  7, h                                        ; $56bc: $cb $7c
	pop  de                                          ; $56be: $d1
	cp   d                                           ; $56bf: $ba
	ld   b, $de                                      ; $56c0: $06 $de
	ld   b, $df                                      ; $56c2: $06 $df
	ld   b, $e0                                      ; $56c4: $06 $e0
	ld   [bc], a                                     ; $56c6: $02
	cp   c                                           ; $56c7: $b9
	ld   b, $4b                                      ; $56c8: $06 $4b
	and  b                                           ; $56ca: $a0
	ld   [bc], a                                     ; $56cb: $02
	sub  l                                           ; $56cc: $95
	sbc  d                                           ; $56cd: $9a
	adc  h                                           ; $56ce: $8c
	ld   h, a                                        ; $56cf: $67
	nop                                              ; $56d0: $00
	ld   l, e                                        ; $56d1: $6b
	ld   a, h                                        ; $56d2: $7c
	inc  b                                           ; $56d3: $04
	ld   e, $d1                                      ; $56d4: $1e $d1
	cp   d                                           ; $56d6: $ba
	ld   b, $de                                      ; $56d7: $06 $de
	ld   b, $df                                      ; $56d9: $06 $df
	ld   b, $e0                                      ; $56db: $06 $e0
	inc  bc                                          ; $56dd: $03
	ld   h, d                                        ; $56de: $62
	nop                                              ; $56df: $00
	ld   l, e                                        ; $56e0: $6b
	ld   a, h                                        ; $56e1: $7c
	inc  b                                           ; $56e2: $04
	ld   e, $7c                                      ; $56e3: $1e $7c
	pop  de                                          ; $56e5: $d1
	cp   d                                           ; $56e6: $ba
	ld   b, $de                                      ; $56e7: $06 $de
	ld   b, $df                                      ; $56e9: $06 $df
	ld   b, $e0                                      ; $56eb: $06 $e0
	ld   [bc], a                                     ; $56ed: $02
	cp   c                                           ; $56ee: $b9
	ld   b, $4b                                      ; $56ef: $06 $4b
	and  b                                           ; $56f1: $a0
	ld   [bc], a                                     ; $56f2: $02
	sub  l                                           ; $56f3: $95
	sbc  d                                           ; $56f4: $9a
	adc  h                                           ; $56f5: $8c
	ld   h, a                                        ; $56f6: $67
	nop                                              ; $56f7: $00
	inc  bc                                          ; $56f8: $03
	xor  l                                           ; $56f9: $ad
	inc  b                                           ; $56fa: $04
	xor  l                                           ; $56fb: $ad
	ld   a, h                                        ; $56fc: $7c
	ld   [bc], a                                     ; $56fd: $02
	cp   h                                           ; $56fe: $bc
	dec  b                                           ; $56ff: $05
	and  e                                           ; $5700: $a3
	ld   bc, $0017                                   ; $5701: $01 $17 $00
	ldh  [$cc], a                                    ; $5704: $e0 $cc
	or   e                                           ; $5706: $b3
	ei                                               ; $5707: $fb
	ldh  [c], a                                      ; $5708: $e2
	ld   [hl], l                                     ; $5709: $75
	inc  b                                           ; $570a: $04
	ld   a, [hl-]                                    ; $570b: $3a
	ld   h, l                                        ; $570c: $65
	ld   d, d                                        ; $570d: $52
	db   $e4                                         ; $570e: $e4
	ei                                               ; $570f: $fb
	jp   z, $045a                                    ; $5710: $ca $5a $04

	ldh  a, [c]                                      ; $5713: $f2
	add  a                                           ; $5714: $87
	adc  h                                           ; $5715: $8c
	ld   h, a                                        ; $5716: $67
	nop                                              ; $5717: $00
	ld   [bc], a                                     ; $5718: $02
	jr   c, @+$06                                    ; $5719: $38 $04

	ld   d, d                                        ; $571b: $52
	db   $eb                                         ; $571c: $eb
	push af                                          ; $571d: $f5
	call z, $b1f5                                    ; $571e: $cc $f5 $b1
	ld   bc, $0017                                   ; $5721: $01 $17 $00
	ldh  [$cc], a                                    ; $5724: $e0 $cc
	or   e                                           ; $5726: $b3
	ei                                               ; $5727: $fb
	ldh  [c], a                                      ; $5728: $e2
	ld   [hl], l                                     ; $5729: $75
	inc  b                                           ; $572a: $04
	ld   a, [hl-]                                    ; $572b: $3a
	ld   h, l                                        ; $572c: $65
	ld   d, d                                        ; $572d: $52
	db   $e4                                         ; $572e: $e4
	ei                                               ; $572f: $fb
	jp   z, $045a                                    ; $5730: $ca $5a $04

	ldh  a, [c]                                      ; $5733: $f2
	add  a                                           ; $5734: $87
	adc  h                                           ; $5735: $8c
	ld   h, a                                        ; $5736: $67
	nop                                              ; $5737: $00
	ld   [bc], a                                     ; $5738: $02
	dec  hl                                          ; $5739: $2b
	halt                                             ; $573a: $76
	inc  bc                                          ; $573b: $03
	ld   a, [bc]                                     ; $573c: $0a
	inc  bc                                          ; $573d: $03
	ld   [hl], d                                     ; $573e: $72
	ld   a, h                                        ; $573f: $7c
	inc  bc                                          ; $5740: $03
	ld   [hl], b                                     ; $5741: $70
	ld   [bc], a                                     ; $5742: $02
	sub  c                                           ; $5743: $91
	ld   l, a                                        ; $5744: $6f
	ld   bc, $0017                                   ; $5745: $01 $17 $00
	ldh  [$cc], a                                    ; $5748: $e0 $cc
	or   e                                           ; $574a: $b3
	ei                                               ; $574b: $fb
	ldh  [c], a                                      ; $574c: $e2
	ld   [hl], l                                     ; $574d: $75
	inc  b                                           ; $574e: $04
	ld   a, [hl-]                                    ; $574f: $3a
	ld   h, l                                        ; $5750: $65
	ld   d, d                                        ; $5751: $52
	db   $e4                                         ; $5752: $e4
	ei                                               ; $5753: $fb
	jp   z, $045a                                    ; $5754: $ca $5a $04

	ldh  a, [c]                                      ; $5757: $f2
	add  a                                           ; $5758: $87
	adc  h                                           ; $5759: $8c
	ld   h, a                                        ; $575a: $67
	nop                                              ; $575b: $00
	jp   z, $caae                                    ; $575c: $ca $ae $ca

	xor  [hl]                                        ; $575f: $ae
	di                                               ; $5760: $f3
	xor  $c4                                         ; $5761: $ee $c4
	cp   d                                           ; $5763: $ba
	push af                                          ; $5764: $f5
	ld   bc, $0017                                   ; $5765: $01 $17 $00
	ldh  [$cc], a                                    ; $5768: $e0 $cc
	or   e                                           ; $576a: $b3
	ei                                               ; $576b: $fb
	ldh  [c], a                                      ; $576c: $e2
	ld   [hl], l                                     ; $576d: $75
	inc  b                                           ; $576e: $04
	ld   a, [hl-]                                    ; $576f: $3a
	ld   h, l                                        ; $5770: $65
	ld   d, d                                        ; $5771: $52
	db   $e4                                         ; $5772: $e4
	ei                                               ; $5773: $fb
	jp   z, $045a                                    ; $5774: $ca $5a $04

	ldh  a, [c]                                      ; $5777: $f2
	add  a                                           ; $5778: $87
	adc  h                                           ; $5779: $8c
	ld   h, a                                        ; $577a: $67
	nop                                              ; $577b: $00
	ld   b, $4c                                      ; $577c: $06 $4c
	inc  bc                                          ; $577e: $03
	sub  l                                           ; $577f: $95
	ld   e, d                                        ; $5780: $5a
	ld   d, d                                        ; $5781: $52
	ld   [hl], c                                     ; $5782: $71
	ld   a, a                                        ; $5783: $7f
	ld   d, d                                        ; $5784: $52
	ld   bc, $0017                                   ; $5785: $01 $17 $00
	ldh  [$cc], a                                    ; $5788: $e0 $cc
	or   e                                           ; $578a: $b3
	ei                                               ; $578b: $fb
	ldh  [c], a                                      ; $578c: $e2
	ld   [hl], l                                     ; $578d: $75
	inc  b                                           ; $578e: $04
	ld   a, [hl-]                                    ; $578f: $3a
	ld   h, l                                        ; $5790: $65
	ld   d, d                                        ; $5791: $52
	db   $e4                                         ; $5792: $e4
	ei                                               ; $5793: $fb
	jp   z, $045a                                    ; $5794: $ca $5a $04

	ldh  a, [c]                                      ; $5797: $f2
	add  a                                           ; $5798: $87
	adc  h                                           ; $5799: $8c
	ld   h, a                                        ; $579a: $67
	nop                                              ; $579b: $00
	ld   e, b                                        ; $579c: $58
	ld   [hl], a                                     ; $579d: $77
	sbc  c                                           ; $579e: $99
	xor  h                                           ; $579f: $ac
	db   $eb                                         ; $57a0: $eb
	rst  ToBoot                                         ; $57a1: $c7
	xor  h                                           ; $57a2: $ac
	ld   bc, $0017                                   ; $57a3: $01 $17 $00
	ldh  [$cc], a                                    ; $57a6: $e0 $cc
	or   e                                           ; $57a8: $b3
	ei                                               ; $57a9: $fb
	ldh  [c], a                                      ; $57aa: $e2
	ld   [hl], l                                     ; $57ab: $75
	inc  b                                           ; $57ac: $04
	ld   a, [hl-]                                    ; $57ad: $3a
	ld   h, l                                        ; $57ae: $65
	ld   d, d                                        ; $57af: $52
	db   $e4                                         ; $57b0: $e4
	ei                                               ; $57b1: $fb
	jp   z, $045a                                    ; $57b2: $ca $5a $04

	ldh  a, [c]                                      ; $57b5: $f2
	add  a                                           ; $57b6: $87
	adc  h                                           ; $57b7: $8c
	ld   h, a                                        ; $57b8: $67
	nop                                              ; $57b9: $00
	inc  bc                                          ; $57ba: $03
	adc  a                                           ; $57bb: $8f
	ld   a, h                                        ; $57bc: $7c
	ld   [bc], a                                     ; $57bd: $02
	sbc  b                                           ; $57be: $98
	add  c                                           ; $57bf: $81
	sub  a                                           ; $57c0: $97
	xor  h                                           ; $57c1: $ac
	ei                                               ; $57c2: $fb
	cp   [hl]                                        ; $57c3: $be
	db   $ed                                         ; $57c4: $ed
	nop                                              ; $57c5: $00
	ld   b, $61                                      ; $57c6: $06 $61
	ld   [bc], a                                     ; $57c8: $02
	ld   d, b                                        ; $57c9: $50
	xor  h                                           ; $57ca: $ac
	ei                                               ; $57cb: $fb
	cp   [hl]                                        ; $57cc: $be
	db   $ed                                         ; $57cd: $ed
	ld   [hl], l                                     ; $57ce: $75
	ld   h, a                                        ; $57cf: $67
	dec  c                                           ; $57d0: $0d
	ld   bc, $ab03                                   ; $57d1: $01 $03 $ab
	ret  c                                           ; $57d4: $d8

	cp   b                                           ; $57d5: $b8
	jp   hl                                          ; $57d6: $e9


	push af                                          ; $57d7: $f5
	ld   [hl], l                                     ; $57d8: $75
	dec  b                                           ; $57d9: $05
	add  $03                                         ; $57da: $c6 $03
	call nc, $0401                                   ; $57dc: $d4 $01 $04
	nop                                              ; $57df: $00
	xor  [hl]                                        ; $57e0: $ae
	push hl                                          ; $57e1: $e5
	push af                                          ; $57e2: $f5
	ret  z                                           ; $57e3: $c8

	and  h                                           ; $57e4: $a4
	xor  h                                           ; $57e5: $ac
	ei                                               ; $57e6: $fb
	cp   [hl]                                        ; $57e7: $be
	db   $ed                                         ; $57e8: $ed
	nop                                              ; $57e9: $00
	ld   b, $61                                      ; $57ea: $06 $61
	ld   [bc], a                                     ; $57ec: $02
	ld   d, b                                        ; $57ed: $50
	xor  h                                           ; $57ee: $ac
	ei                                               ; $57ef: $fb
	cp   [hl]                                        ; $57f0: $be
	db   $ed                                         ; $57f1: $ed
	ld   [hl], l                                     ; $57f2: $75
	ld   h, a                                        ; $57f3: $67
	dec  c                                           ; $57f4: $0d
	ld   bc, $ab03                                   ; $57f5: $01 $03 $ab
	ret  c                                           ; $57f8: $d8

	cp   b                                           ; $57f9: $b8
	jp   hl                                          ; $57fa: $e9


	push af                                          ; $57fb: $f5
	ld   [hl], l                                     ; $57fc: $75
	dec  b                                           ; $57fd: $05
	add  $03                                         ; $57fe: $c6 $03
	call nc, $0401                                   ; $5800: $d4 $01 $04
	nop                                              ; $5803: $00
	ld   h, e                                        ; $5804: $63
	ld   e, l                                        ; $5805: $5d
	sub  a                                           ; $5806: $97
	ld   a, h                                        ; $5807: $7c
	dec  b                                           ; $5808: $05
	ld   e, a                                        ; $5809: $5f
	inc  bc                                          ; $580a: $03
	call nc, $1806                                   ; $580b: $d4 $06 $18
	nop                                              ; $580e: $00
	ld   h, e                                        ; $580f: $63
	ld   e, l                                        ; $5810: $5d
	sub  a                                           ; $5811: $97
	ld   a, h                                        ; $5812: $7c
	ld   [bc], a                                     ; $5813: $02
	ld   [hl], d                                     ; $5814: $72
	and  e                                           ; $5815: $a3
	and  l                                           ; $5816: $a5
	or   h                                           ; $5817: $b4
	push af                                          ; $5818: $f5
	and  b                                           ; $5819: $a0
	add  hl, hl                                      ; $581a: $29
	jr   z, jr_090_5896                              ; $581b: $28 $79

	ld   [hl], l                                     ; $581d: $75
	ld   e, e                                        ; $581e: $5b
	adc  h                                           ; $581f: $8c
	ld   h, a                                        ; $5820: $67
	dec  c                                           ; $5821: $0d
	ld   bc, $ab03                                   ; $5822: $01 $03 $ab
	ret  c                                           ; $5825: $d8

	cp   b                                           ; $5826: $b8
	jp   hl                                          ; $5827: $e9


	push af                                          ; $5828: $f5
	ld   [hl], l                                     ; $5829: $75
	dec  b                                           ; $582a: $05
	add  $03                                         ; $582b: $c6 $03
	call nc, $0401                                   ; $582d: $d4 $01 $04
	nop                                              ; $5830: $00
	ld   h, a                                        ; $5831: $67
	adc  l                                           ; $5832: $8d
	sbc  d                                           ; $5833: $9a
	ld   a, h                                        ; $5834: $7c
	dec  b                                           ; $5835: $05
	ld   e, a                                        ; $5836: $5f
	inc  bc                                          ; $5837: $03
	call nc, $1806                                   ; $5838: $d4 $06 $18
	nop                                              ; $583b: $00
	ld   h, a                                        ; $583c: $67
	adc  l                                           ; $583d: $8d
	sbc  d                                           ; $583e: $9a
	ld   a, h                                        ; $583f: $7c
	ld   [bc], a                                     ; $5840: $02
	ld   [hl], d                                     ; $5841: $72
	and  e                                           ; $5842: $a3
	and  l                                           ; $5843: $a5
	or   h                                           ; $5844: $b4
	push af                                          ; $5845: $f5
	and  b                                           ; $5846: $a0
	add  hl, hl                                      ; $5847: $29
	jr   z, @+$7b                                    ; $5848: $28 $79

	ld   [hl], l                                     ; $584a: $75
	ld   e, e                                        ; $584b: $5b
	adc  h                                           ; $584c: $8c
	ld   h, a                                        ; $584d: $67
	dec  c                                           ; $584e: $0d
	ld   bc, $ab03                                   ; $584f: $01 $03 $ab
	ret  c                                           ; $5852: $d8

	cp   b                                           ; $5853: $b8
	jp   hl                                          ; $5854: $e9


	push af                                          ; $5855: $f5
	ld   [hl], l                                     ; $5856: $75
	dec  b                                           ; $5857: $05
	add  $03                                         ; $5858: $c6 $03
	call nc, $0401                                   ; $585a: $d4 $01 $04
	nop                                              ; $585d: $00
	rst  JumpTable                                         ; $585e: $df
	db   $ec                                         ; $585f: $ec
	and  e                                           ; $5860: $a3
	ld   a, h                                        ; $5861: $7c
	dec  b                                           ; $5862: $05
	ld   e, a                                        ; $5863: $5f
	inc  bc                                          ; $5864: $03
	call nc, $1806                                   ; $5865: $d4 $06 $18
	nop                                              ; $5868: $00
	rst  JumpTable                                         ; $5869: $df
	db   $ec                                         ; $586a: $ec
	and  e                                           ; $586b: $a3
	ld   a, h                                        ; $586c: $7c
	ld   [bc], a                                     ; $586d: $02
	ld   [hl], d                                     ; $586e: $72
	and  e                                           ; $586f: $a3
	and  l                                           ; $5870: $a5
	or   h                                           ; $5871: $b4
	push af                                          ; $5872: $f5
	and  b                                           ; $5873: $a0
	add  hl, hl                                      ; $5874: $29
	jr   z, jr_090_58f0                              ; $5875: $28 $79

	ld   [hl], l                                     ; $5877: $75
	ld   e, e                                        ; $5878: $5b
	adc  h                                           ; $5879: $8c
	ld   h, a                                        ; $587a: $67
	dec  c                                           ; $587b: $0d
	ld   bc, $ab03                                   ; $587c: $01 $03 $ab
	ret  c                                           ; $587f: $d8

	cp   b                                           ; $5880: $b8
	jp   hl                                          ; $5881: $e9


	push af                                          ; $5882: $f5
	ld   [hl], l                                     ; $5883: $75
	dec  b                                           ; $5884: $05
	add  $03                                         ; $5885: $c6 $03
	call nc, $0401                                   ; $5887: $d4 $01 $04
	nop                                              ; $588a: $00
	and  e                                           ; $588b: $a3
	and  l                                           ; $588c: $a5
	db   $ec                                         ; $588d: $ec
	cp   d                                           ; $588e: $ba
	ld   a, h                                        ; $588f: $7c
	dec  b                                           ; $5890: $05
	ld   e, a                                        ; $5891: $5f
	inc  bc                                          ; $5892: $03
	call nc, $1806                                   ; $5893: $d4 $06 $18

jr_090_5896:
	nop                                              ; $5896: $00
	and  e                                           ; $5897: $a3
	and  l                                           ; $5898: $a5
	db   $ec                                         ; $5899: $ec
	cp   d                                           ; $589a: $ba
	ld   a, h                                        ; $589b: $7c
	ld   [bc], a                                     ; $589c: $02
	ld   [hl], d                                     ; $589d: $72
	and  e                                           ; $589e: $a3
	and  l                                           ; $589f: $a5
	or   h                                           ; $58a0: $b4
	push af                                          ; $58a1: $f5
	and  b                                           ; $58a2: $a0
	add  hl, hl                                      ; $58a3: $29
	jr   z, jr_090_591f                              ; $58a4: $28 $79

	ld   [hl], l                                     ; $58a6: $75
	ld   e, e                                        ; $58a7: $5b
	adc  h                                           ; $58a8: $8c
	ld   h, a                                        ; $58a9: $67
	dec  c                                           ; $58aa: $0d
	ld   bc, $ab03                                   ; $58ab: $01 $03 $ab
	ret  c                                           ; $58ae: $d8

	cp   b                                           ; $58af: $b8
	jp   hl                                          ; $58b0: $e9


	push af                                          ; $58b1: $f5
	ld   [hl], l                                     ; $58b2: $75
	dec  b                                           ; $58b3: $05
	add  $03                                         ; $58b4: $c6 $03
	call nc, $0401                                   ; $58b6: $d4 $01 $04
	nop                                              ; $58b9: $00
	ld   [bc], a                                     ; $58ba: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58bb: $cf
	dec  b                                           ; $58bc: $05
	ld   a, [de]                                     ; $58bd: $1a
	ld   a, h                                        ; $58be: $7c
	dec  b                                           ; $58bf: $05
	ld   e, a                                        ; $58c0: $5f
	inc  bc                                          ; $58c1: $03
	call nc, $1806                                   ; $58c2: $d4 $06 $18
	nop                                              ; $58c5: $00
	ld   [bc], a                                     ; $58c6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c7: $cf
	dec  b                                           ; $58c8: $05
	ld   a, [de]                                     ; $58c9: $1a
	ld   a, h                                        ; $58ca: $7c
	ld   [bc], a                                     ; $58cb: $02
	ld   [hl], d                                     ; $58cc: $72
	and  e                                           ; $58cd: $a3
	and  l                                           ; $58ce: $a5
	or   h                                           ; $58cf: $b4
	push af                                          ; $58d0: $f5
	and  b                                           ; $58d1: $a0
	add  hl, hl                                      ; $58d2: $29
	jr   z, jr_090_594e                              ; $58d3: $28 $79

	ld   [hl], l                                     ; $58d5: $75
	ld   e, e                                        ; $58d6: $5b
	adc  h                                           ; $58d7: $8c
	ld   h, a                                        ; $58d8: $67
	dec  c                                           ; $58d9: $0d
	ld   bc, $ab03                                   ; $58da: $01 $03 $ab
	ret  c                                           ; $58dd: $d8

	cp   b                                           ; $58de: $b8
	jp   hl                                          ; $58df: $e9


	push af                                          ; $58e0: $f5
	ld   [hl], l                                     ; $58e1: $75
	dec  b                                           ; $58e2: $05
	add  $03                                         ; $58e3: $c6 $03
	call nc, $0401                                   ; $58e5: $d4 $01 $04
	nop                                              ; $58e8: $00
	xor  h                                           ; $58e9: $ac
	push af                                          ; $58ea: $f5
	bit  7, h                                        ; $58eb: $cb $7c
	dec  b                                           ; $58ed: $05
	ld   e, a                                        ; $58ee: $5f
	inc  bc                                          ; $58ef: $03

jr_090_58f0:
	call nc, $1806                                   ; $58f0: $d4 $06 $18
	nop                                              ; $58f3: $00
	xor  h                                           ; $58f4: $ac
	push af                                          ; $58f5: $f5
	bit  7, h                                        ; $58f6: $cb $7c
	ld   [bc], a                                     ; $58f8: $02
	ld   [hl], d                                     ; $58f9: $72
	and  e                                           ; $58fa: $a3
	and  l                                           ; $58fb: $a5
	or   h                                           ; $58fc: $b4
	push af                                          ; $58fd: $f5
	and  b                                           ; $58fe: $a0
	add  hl, hl                                      ; $58ff: $29
	jr   z, jr_090_597b                              ; $5900: $28 $79

	ld   [hl], l                                     ; $5902: $75
	ld   e, e                                        ; $5903: $5b
	adc  h                                           ; $5904: $8c
	ld   h, a                                        ; $5905: $67
	dec  c                                           ; $5906: $0d
	ld   bc, $ab03                                   ; $5907: $01 $03 $ab
	ret  c                                           ; $590a: $d8

	cp   b                                           ; $590b: $b8
	jp   hl                                          ; $590c: $e9


	push af                                          ; $590d: $f5
	ld   [hl], l                                     ; $590e: $75
	dec  b                                           ; $590f: $05
	add  $03                                         ; $5910: $c6 $03
	call nc, $0401                                   ; $5912: $d4 $01 $04
	nop                                              ; $5915: $00
	inc  b                                           ; $5916: $04
	rst  ToBoot                                         ; $5917: $c7
	ld   [bc], a                                     ; $5918: $02
	ld   sp, hl                                      ; $5919: $f9
	nop                                              ; $591a: $00
	inc  b                                           ; $591b: $04
	rst  ToBoot                                         ; $591c: $c7
	inc  bc                                          ; $591d: $03
	ld   c, a                                        ; $591e: $4f

jr_090_591f:
	and  b                                           ; $591f: $a0
	ld   d, d                                        ; $5920: $52
	ld   [hl], d                                     ; $5921: $72
	ld   [hl], l                                     ; $5922: $75
	sub  b                                           ; $5923: $90
	inc  b                                           ; $5924: $04
	adc  h                                           ; $5925: $8c
	ld   [bc], a                                     ; $5926: $02
	ld   h, b                                        ; $5927: $60
	ld   [hl], l                                     ; $5928: $75
	ld   e, e                                        ; $5929: $5b
	adc  h                                           ; $592a: $8c
	ld   h, a                                        ; $592b: $67
	dec  c                                           ; $592c: $0d
	ld   bc, $0303                                   ; $592d: $01 $03 $03
	ld   l, b                                        ; $5930: $68
	ld   [bc], a                                     ; $5931: $02
	sub  e                                           ; $5932: $93
	ret  c                                           ; $5933: $d8

	xor  $a5                                         ; $5934: $ee $a5
	ld   a, c                                        ; $5936: $79
	inc  b                                           ; $5937: $04
	ld   e, h                                        ; $5938: $5c
	ld   [bc], a                                     ; $5939: $02
	inc  h                                           ; $593a: $24
	ld   bc, $0004                                   ; $593b: $01 $04 $00
	ld   [bc], a                                     ; $593e: $02
	sub  e                                           ; $593f: $93
	inc  b                                           ; $5940: $04
	ld   a, h                                        ; $5941: $7c
	jp   z, $f5ec                                    ; $5942: $ca $ec $f5

	or   b                                           ; $5945: $b0
	nop                                              ; $5946: $00
	inc  b                                           ; $5947: $04
	dec  c                                           ; $5948: $0d
	dec  b                                           ; $5949: $05
	ld   a, [bc]                                     ; $594a: $0a
	and  b                                           ; $594b: $a0
	inc  bc                                          ; $594c: $03
	ld   d, a                                        ; $594d: $57

jr_090_594e:
	dec  b                                           ; $594e: $05
	sbc  d                                           ; $594f: $9a
	ld   h, l                                        ; $5950: $65
	adc  h                                           ; $5951: $8c
	ld   h, a                                        ; $5952: $67
	dec  c                                           ; $5953: $0d
	ld   bc, $0303                                   ; $5954: $01 $03 $03
	ld   l, b                                        ; $5957: $68
	ld   [bc], a                                     ; $5958: $02
	sub  e                                           ; $5959: $93
	ret  c                                           ; $595a: $d8

	xor  $a5                                         ; $595b: $ee $a5
	ld   a, c                                        ; $595d: $79
	inc  b                                           ; $595e: $04
	ld   e, h                                        ; $595f: $5c
	ld   [bc], a                                     ; $5960: $02
	inc  h                                           ; $5961: $24
	ld   bc, $0004                                   ; $5962: $01 $04 $00
	add  b                                           ; $5965: $80
	sub  a                                           ; $5966: $97
	adc  a                                           ; $5967: $8f
	ld   e, e                                        ; $5968: $5b
	ld   a, h                                        ; $5969: $7c
	inc  bc                                          ; $596a: $03
	ld   a, [hl+]                                    ; $596b: $2a
	dec  b                                           ; $596c: $05
	inc  e                                           ; $596d: $1c
	nop                                              ; $596e: $00
	inc  bc                                          ; $596f: $03
	ld   l, l                                        ; $5970: $6d
	dec  b                                           ; $5971: $05
	add  hl, de                                      ; $5972: $19
	ld   [hl], l                                     ; $5973: $75
	inc  b                                           ; $5974: $04
	dec  hl                                          ; $5975: $2b
	dec  b                                           ; $5976: $05
	ld   a, [bc]                                     ; $5977: $0a
	ld   e, d                                        ; $5978: $5a
	inc  b                                           ; $5979: $04
	rrca                                             ; $597a: $0f

jr_090_597b:
	ld   e, l                                        ; $597b: $5d
	inc  bc                                          ; $597c: $03
	ld   h, l                                        ; $597d: $65
	ld   e, d                                        ; $597e: $5a
	sbc  c                                           ; $597f: $99
	ld   e, d                                        ; $5980: $5a
	inc  b                                           ; $5981: $04
	ld   a, e                                        ; $5982: $7b
	sbc  d                                           ; $5983: $9a
	sub  d                                           ; $5984: $92
	ld   h, a                                        ; $5985: $67
	ld   d, d                                        ; $5986: $52
	dec  c                                           ; $5987: $0d
	ld   bc, $0303                                   ; $5988: $01 $03 $03
	ld   l, b                                        ; $598b: $68
	ld   [bc], a                                     ; $598c: $02
	sub  e                                           ; $598d: $93
	ret  c                                           ; $598e: $d8

	xor  $a5                                         ; $598f: $ee $a5
	ld   a, c                                        ; $5991: $79
	inc  b                                           ; $5992: $04
	ld   e, h                                        ; $5993: $5c
	ld   [bc], a                                     ; $5994: $02
	inc  h                                           ; $5995: $24
	ld   bc, $0004                                   ; $5996: $01 $04 $00
	inc  b                                           ; $5999: $04
	and  b                                           ; $599a: $a0
	dec  b                                           ; $599b: $05
	pop  de                                          ; $599c: $d1
	dec  b                                           ; $599d: $05
	halt                                             ; $599e: $76
	ld   a, b                                        ; $599f: $78
	ld   e, b                                        ; $59a0: $58
	inc  bc                                          ; $59a1: $03
	sub  e                                           ; $59a2: $93
	sbc  b                                           ; $59a3: $98
	nop                                              ; $59a4: $00
	inc  bc                                          ; $59a5: $03
	ld   l, l                                        ; $59a6: $6d
	dec  b                                           ; $59a7: $05
	add  hl, de                                      ; $59a8: $19
	ld   [hl], l                                     ; $59a9: $75
	dec  b                                           ; $59aa: $05
	add  hl, bc                                      ; $59ab: $09
	dec  b                                           ; $59ac: $05
	ld   a, [bc]                                     ; $59ad: $0a
	ld   e, d                                        ; $59ae: $5a
	inc  b                                           ; $59af: $04
	rrca                                             ; $59b0: $0f
	ld   e, l                                        ; $59b1: $5d
	inc  bc                                          ; $59b2: $03
	ld   h, l                                        ; $59b3: $65
	ld   e, d                                        ; $59b4: $5a
	sbc  c                                           ; $59b5: $99
	ld   e, d                                        ; $59b6: $5a
	inc  b                                           ; $59b7: $04
	ld   a, e                                        ; $59b8: $7b
	sbc  d                                           ; $59b9: $9a
	sub  d                                           ; $59ba: $92
	ld   h, a                                        ; $59bb: $67
	ld   d, d                                        ; $59bc: $52
	dec  c                                           ; $59bd: $0d
	ld   bc, $0303                                   ; $59be: $01 $03 $03
	ld   l, b                                        ; $59c1: $68
	ld   [bc], a                                     ; $59c2: $02
	sub  e                                           ; $59c3: $93
	ret  c                                           ; $59c4: $d8

	xor  $a5                                         ; $59c5: $ee $a5
	ld   a, c                                        ; $59c7: $79
	inc  b                                           ; $59c8: $04
	ld   e, h                                        ; $59c9: $5c
	ld   [bc], a                                     ; $59ca: $02
	inc  h                                           ; $59cb: $24
	ld   bc, $0004                                   ; $59cc: $01 $04 $00
	ld   [bc], a                                     ; $59cf: $02
	ld   e, l                                        ; $59d0: $5d
	ld   [bc], a                                     ; $59d1: $02
	db   $fc                                         ; $59d2: $fc
	ret  nc                                          ; $59d3: $d0

	jp   nz, $aedf                                   ; $59d4: $c2 $df $ae

	nop                                              ; $59d7: $00
	inc  bc                                          ; $59d8: $03
	ld   l, l                                        ; $59d9: $6d
	dec  b                                           ; $59da: $05
	add  hl, de                                      ; $59db: $19
	ld   [hl], l                                     ; $59dc: $75
	ld   [bc], a                                     ; $59dd: $02
	and  c                                           ; $59de: $a1
	ld   [bc], a                                     ; $59df: $02
	ld   a, e                                        ; $59e0: $7b
	ld   d, d                                        ; $59e1: $52
	ld   e, d                                        ; $59e2: $5a
	inc  b                                           ; $59e3: $04
	rrca                                             ; $59e4: $0f
	ld   e, l                                        ; $59e5: $5d
	inc  bc                                          ; $59e6: $03
	ld   h, l                                        ; $59e7: $65
	ld   e, d                                        ; $59e8: $5a
	sbc  c                                           ; $59e9: $99
	ld   e, d                                        ; $59ea: $5a
	inc  b                                           ; $59eb: $04
	ld   a, e                                        ; $59ec: $7b
	sbc  d                                           ; $59ed: $9a
	sub  d                                           ; $59ee: $92
	ld   h, a                                        ; $59ef: $67
	ld   d, d                                        ; $59f0: $52
	dec  c                                           ; $59f1: $0d
	ld   bc, $0303                                   ; $59f2: $01 $03 $03
	ld   l, b                                        ; $59f5: $68
	ld   [bc], a                                     ; $59f6: $02
	sub  e                                           ; $59f7: $93
	ret  c                                           ; $59f8: $d8

	xor  $a5                                         ; $59f9: $ee $a5
	ld   a, c                                        ; $59fb: $79
	inc  b                                           ; $59fc: $04
	ld   e, h                                        ; $59fd: $5c
	ld   [bc], a                                     ; $59fe: $02
	inc  h                                           ; $59ff: $24
	ld   bc, $0004                                   ; $5a00: $01 $04 $00
	ld   [bc], a                                     ; $5a03: $02
	ld   [hl], $92                                   ; $5a04: $36 $92
	ld   e, c                                        ; $5a06: $59
	ld   a, b                                        ; $5a07: $78
	or   b                                           ; $5a08: $b0
	push bc                                          ; $5a09: $c5
	nop                                              ; $5a0a: $00
	inc  bc                                          ; $5a0b: $03
	ld   l, l                                        ; $5a0c: $6d
	dec  b                                           ; $5a0d: $05
	add  hl, de                                      ; $5a0e: $19
	ld   [hl], l                                     ; $5a0f: $75
	inc  bc                                          ; $5a10: $03
	and  [hl]                                        ; $5a11: $a6
	inc  bc                                          ; $5a12: $03
	ld   [hl], b                                     ; $5a13: $70
	ld   h, e                                        ; $5a14: $63
	ld   e, d                                        ; $5a15: $5a
	inc  b                                           ; $5a16: $04
	rrca                                             ; $5a17: $0f
	ld   e, l                                        ; $5a18: $5d
	inc  bc                                          ; $5a19: $03
	ld   h, l                                        ; $5a1a: $65
	ld   e, d                                        ; $5a1b: $5a
	sbc  c                                           ; $5a1c: $99
	ld   e, d                                        ; $5a1d: $5a
	inc  b                                           ; $5a1e: $04
	ld   a, e                                        ; $5a1f: $7b
	sbc  d                                           ; $5a20: $9a
	sub  d                                           ; $5a21: $92
	ld   h, a                                        ; $5a22: $67
	ld   d, d                                        ; $5a23: $52
	dec  c                                           ; $5a24: $0d
	ld   bc, $0303                                   ; $5a25: $01 $03 $03
	ld   l, b                                        ; $5a28: $68
	ld   [bc], a                                     ; $5a29: $02
	sub  e                                           ; $5a2a: $93
	ret  c                                           ; $5a2b: $d8

	xor  $a5                                         ; $5a2c: $ee $a5
	ld   a, c                                        ; $5a2e: $79
	inc  b                                           ; $5a2f: $04
	ld   e, h                                        ; $5a30: $5c
	ld   [bc], a                                     ; $5a31: $02
	inc  h                                           ; $5a32: $24
	ld   bc, $0004                                   ; $5a33: $01 $04 $00
	or   b                                           ; $5a36: $b0
	call nz, $ecae                                   ; $5a37: $c4 $ae $ec
	xor  $f5                                         ; $5a3a: $ee $f5
	cp   e                                           ; $5a3c: $bb
	nop                                              ; $5a3d: $00
	inc  bc                                          ; $5a3e: $03
	ld   l, l                                        ; $5a3f: $6d
	dec  b                                           ; $5a40: $05
	add  hl, de                                      ; $5a41: $19
	ld   [hl], l                                     ; $5a42: $75
	ld   b, $25                                      ; $5a43: $06 $25
	inc  b                                           ; $5a45: $04
	dec  bc                                          ; $5a46: $0b
	ld   b, $80                                      ; $5a47: $06 $80
	ld   e, d                                        ; $5a49: $5a
	inc  b                                           ; $5a4a: $04
	rrca                                             ; $5a4b: $0f
	ld   e, l                                        ; $5a4c: $5d
	inc  bc                                          ; $5a4d: $03
	ld   h, l                                        ; $5a4e: $65
	ld   e, d                                        ; $5a4f: $5a
	sbc  c                                           ; $5a50: $99
	ld   e, d                                        ; $5a51: $5a
	inc  b                                           ; $5a52: $04
	ld   a, e                                        ; $5a53: $7b
	sbc  d                                           ; $5a54: $9a
	sub  d                                           ; $5a55: $92
	ld   h, a                                        ; $5a56: $67
	ld   d, d                                        ; $5a57: $52
	dec  c                                           ; $5a58: $0d
	ld   bc, $0303                                   ; $5a59: $01 $03 $03
	ld   l, b                                        ; $5a5c: $68
	ld   [bc], a                                     ; $5a5d: $02
	sub  e                                           ; $5a5e: $93
	ret  c                                           ; $5a5f: $d8

	xor  $a5                                         ; $5a60: $ee $a5
	ld   a, c                                        ; $5a62: $79
	inc  b                                           ; $5a63: $04
	ld   e, h                                        ; $5a64: $5c
	ld   [bc], a                                     ; $5a65: $02
	inc  h                                           ; $5a66: $24
	ld   bc, $0004                                   ; $5a67: $01 $04 $00
	ld   d, h                                        ; $5a6a: $54
	ld   [hl], l                                     ; $5a6b: $75
	ld   l, l                                        ; $5a6c: $6d
	ld   [hl], h                                     ; $5a6d: $74
	add  e                                           ; $5a6e: $83
	ld   l, c                                        ; $5a6f: $69
	nop                                              ; $5a70: $00
	ld   d, h                                        ; $5a71: $54
	ld   [hl], l                                     ; $5a72: $75
	ld   l, l                                        ; $5a73: $6d
	ld   [hl], h                                     ; $5a74: $74
	add  e                                           ; $5a75: $83
	ld   l, c                                        ; $5a76: $69
	ld   e, d                                        ; $5a77: $5a
	inc  b                                           ; $5a78: $04
	ldh  a, [c]                                      ; $5a79: $f2
	add  a                                           ; $5a7a: $87
	adc  h                                           ; $5a7b: $8c
	ld   h, a                                        ; $5a7c: $67
	nop                                              ; $5a7d: $00
	ld   l, [hl]                                     ; $5a7e: $6e
	sbc  c                                           ; $5a7f: $99
	adc  h                                           ; $5a80: $8c
	ld   h, e                                        ; $5a81: $63
	and  c                                           ; $5a82: $a1
	ld   e, d                                        ; $5a83: $5a
	ld   h, c                                        ; $5a84: $61
	sbc  e                                           ; $5a85: $9b
	and  c                                           ; $5a86: $a1
	ld   l, [hl]                                     ; $5a87: $6e
	nop                                              ; $5a88: $00
	ld   l, [hl]                                     ; $5a89: $6e
	sbc  c                                           ; $5a8a: $99
	adc  h                                           ; $5a8b: $8c
	ld   h, e                                        ; $5a8c: $63
	and  c                                           ; $5a8d: $a1
	ld   e, d                                        ; $5a8e: $5a
	ld   h, c                                        ; $5a8f: $61
	sbc  e                                           ; $5a90: $9b
	and  c                                           ; $5a91: $a1
	ld   l, [hl]                                     ; $5a92: $6e
	ld   e, d                                        ; $5a93: $5a
	inc  b                                           ; $5a94: $04
	ldh  a, [c]                                      ; $5a95: $f2
	add  a                                           ; $5a96: $87
	adc  h                                           ; $5a97: $8c
	ld   h, a                                        ; $5a98: $67
	nop                                              ; $5a99: $00
	ld   b, $a5                                      ; $5a9a: $06 $a5
	ld   b, $a6                                      ; $5a9c: $06 $a6
	inc  bc                                          ; $5a9e: $03
	xor  b                                           ; $5a9f: $a8
	dec  b                                           ; $5aa0: $05
	rst  $38                                         ; $5aa1: $ff
	nop                                              ; $5aa2: $00
	ld   b, $a5                                      ; $5aa3: $06 $a5
	ld   b, $a6                                      ; $5aa5: $06 $a6
	inc  bc                                          ; $5aa7: $03
	xor  b                                           ; $5aa8: $a8
	dec  b                                           ; $5aa9: $05
	rst  $38                                         ; $5aaa: $ff
	ld   e, d                                        ; $5aab: $5a
	inc  b                                           ; $5aac: $04
	ldh  a, [c]                                      ; $5aad: $f2
	add  a                                           ; $5aae: $87
	adc  h                                           ; $5aaf: $8c
	ld   h, a                                        ; $5ab0: $67
	nop                                              ; $5ab1: $00
	and  e                                           ; $5ab2: $a3
	and  l                                           ; $5ab3: $a5
	rst  ToBoot                                         ; $5ab4: $c7
	ldh  [c], a                                      ; $5ab5: $e2
	ld   l, b                                        ; $5ab6: $68
	ld   e, c                                        ; $5ab7: $59
	and  c                                           ; $5ab8: $a1
	nop                                              ; $5ab9: $00
	and  l                                           ; $5aba: $a5
	jp   c, $c9f5                                    ; $5abb: $da $f5 $c9

	and  e                                           ; $5abe: $a3
	and  l                                           ; $5abf: $a5
	rst  ToBoot                                         ; $5ac0: $c7
	ldh  [c], a                                      ; $5ac1: $e2
	and  b                                           ; $5ac2: $a0
	ld   [bc], a                                     ; $5ac3: $02
	sub  l                                           ; $5ac4: $95
	sbc  d                                           ; $5ac5: $9a
	adc  h                                           ; $5ac6: $8c
	ld   h, a                                        ; $5ac7: $67
	nop                                              ; $5ac8: $00


Data_90_5ac9::
	ld   b, [hl]                                     ; $5ac9: $46
	nop                                              ; $5aca: $00
	ld   h, c                                        ; $5acb: $61
	nop                                              ; $5acc: $00
	halt                                             ; $5acd: $76
	nop                                              ; $5ace: $00
	adc  e                                           ; $5acf: $8b
	nop                                              ; $5ad0: $00
	and  b                                           ; $5ad1: $a0
	nop                                              ; $5ad2: $00
	xor  a                                           ; $5ad3: $af
	nop                                              ; $5ad4: $00
	cp   d                                           ; $5ad5: $ba
	nop                                              ; $5ad6: $00
	add  $00                                         ; $5ad7: $c6 $00
	ret  nc                                          ; $5ad9: $d0

	nop                                              ; $5ada: $00
	db   $eb                                         ; $5adb: $eb
	nop                                              ; $5adc: $00
	ld   a, [$0200]                                  ; $5add: $fa $00 $02
	ld   bc, $0117                                   ; $5ae0: $01 $17 $01
	ld   h, $01                                      ; $5ae3: $26 $01
	ld   [hl], $01                                   ; $5ae5: $36 $01
	ld   b, h                                        ; $5ae7: $44
	ld   bc, $0152                                   ; $5ae8: $01 $52 $01
	ld   e, a                                        ; $5aeb: $5f
	ld   bc, $016e                                   ; $5aec: $01 $6e $01
	adc  c                                           ; $5aef: $89
	ld   bc, $0196                                   ; $5af0: $01 $96 $01
	sbc  a                                           ; $5af3: $9f
	ld   bc, $01a6                                   ; $5af4: $01 $a6 $01
	or   d                                           ; $5af7: $b2
	ld   bc, $01bd                                   ; $5af8: $01 $bd $01
	ret  z                                           ; $5afb: $c8

	ld   bc, $01d7                                   ; $5afc: $01 $d7 $01
	rst  JumpTable                                         ; $5aff: $df
	ld   bc, $01ed                                   ; $5b00: $01 $ed $01
	ld   a, [$0901]                                  ; $5b03: $fa $01 $09
	ld   [bc], a                                     ; $5b06: $02
	jr   jr_090_5b0b                                 ; $5b07: $18 $02

	daa                                              ; $5b09: $27
	ld   [bc], a                                     ; $5b0a: $02

jr_090_5b0b:
	scf                                              ; $5b0b: $37
	ld   [bc], a                                     ; $5b0c: $02
	ld   b, a                                        ; $5b0d: $47
	ld   [bc], a                                     ; $5b0e: $02
	inc  bc                                          ; $5b0f: $03
	sub  h                                           ; $5b10: $94
	inc  b                                           ; $5b11: $04
	pop  hl                                          ; $5b12: $e1
	inc  bc                                          ; $5b13: $03
	ld   l, a                                        ; $5b14: $6f
	ld   [bc], a                                     ; $5b15: $02
	xor  c                                           ; $5b16: $a9
	ld   a, c                                        ; $5b17: $79
	inc  b                                           ; $5b18: $04
	ld   [$9202], sp                                 ; $5b19: $08 $02 $92
	and  b                                           ; $5b1c: $a0
	inc  bc                                          ; $5b1d: $03
	sub  [hl]                                        ; $5b1e: $96
	inc  b                                           ; $5b1f: $04
	sbc  a                                           ; $5b20: $9f
	ld   h, l                                        ; $5b21: $65
	ld   [hl], h                                     ; $5b22: $74
	ld   [bc], a                                     ; $5b23: $02
	rst  $20                                         ; $5b24: $e7
	ld   h, d                                        ; $5b25: $62
	ld   h, l                                        ; $5b26: $65
	adc  h                                           ; $5b27: $8c
	ld   h, a                                        ; $5b28: $67
	nop                                              ; $5b29: $00
	inc  bc                                          ; $5b2a: $03
	ld   l, l                                        ; $5b2b: $6d
	dec  b                                           ; $5b2c: $05
	add  hl, de                                      ; $5b2d: $19
	and  b                                           ; $5b2e: $a0
	inc  bc                                          ; $5b2f: $03
	and  a                                           ; $5b30: $a7
	adc  l                                           ; $5b31: $8d
	inc  b                                           ; $5b32: $04
	dec  c                                           ; $5b33: $0d
	dec  b                                           ; $5b34: $05
	ld   a, [bc]                                     ; $5b35: $0a
	and  b                                           ; $5b36: $a0
	ld   [bc], a                                     ; $5b37: $02
	sub  e                                           ; $5b38: $93
	inc  b                                           ; $5b39: $04
	ld   a, h                                        ; $5b3a: $7c
	ld   h, l                                        ; $5b3b: $65
	adc  h                                           ; $5b3c: $8c
	ld   h, a                                        ; $5b3d: $67
	nop                                              ; $5b3e: $00
	ld   [bc], a                                     ; $5b3f: $02
	and  l                                           ; $5b40: $a5
	inc  bc                                          ; $5b41: $03
	ld   a, c                                        ; $5b42: $79
	ld   a, h                                        ; $5b43: $7c
	cp   d                                           ; $5b44: $ba
	or   d                                           ; $5b45: $b2
	cp   c                                           ; $5b46: $b9
	rst  $20                                         ; $5b47: $e7
	ei                                               ; $5b48: $fb
	db   $ed                                         ; $5b49: $ed
	and  b                                           ; $5b4a: $a0
	ld   [bc], a                                     ; $5b4b: $02
	sbc  a                                           ; $5b4c: $9f
	inc  b                                           ; $5b4d: $04
	dec  sp                                          ; $5b4e: $3b
	ld   [hl], l                                     ; $5b4f: $75
	ld   e, e                                        ; $5b50: $5b
	adc  h                                           ; $5b51: $8c
	ld   h, a                                        ; $5b52: $67
	nop                                              ; $5b53: $00
	inc  bc                                          ; $5b54: $03
	and  b                                           ; $5b55: $a0
	ld   l, a                                        ; $5b56: $6f
	inc  b                                           ; $5b57: $04
	sub  d                                           ; $5b58: $92
	ld   a, h                                        ; $5b59: $7c
	ld   [bc], a                                     ; $5b5a: $02
	sbc  a                                           ; $5b5b: $9f
	inc  b                                           ; $5b5c: $04
	dec  sp                                          ; $5b5d: $3b
	sub  d                                           ; $5b5e: $92
	inc  bc                                          ; $5b5f: $03
	xor  [hl]                                        ; $5b60: $ae
	inc  b                                           ; $5b61: $04
	di                                               ; $5b62: $f3
	ld   e, d                                        ; $5b63: $5a
	ld   [hl], l                                     ; $5b64: $75
	ld   e, e                                        ; $5b65: $5b
	adc  h                                           ; $5b66: $8c
	ld   h, a                                        ; $5b67: $67
	nop                                              ; $5b68: $00
	dec  b                                           ; $5b69: $05
	and  l                                           ; $5b6a: $a5
	dec  b                                           ; $5b6b: $05
	ld   a, $05                                      ; $5b6c: $3e $05
	add  $03                                         ; $5b6e: $c6 $03
	call nc, $025a                                   ; $5b70: $d4 $5a $02
	ld   a, a                                        ; $5b73: $7f
	ld   d, [hl]                                     ; $5b74: $56
	adc  h                                           ; $5b75: $8c
	ld   h, a                                        ; $5b76: $67
	nop                                              ; $5b77: $00
	inc  bc                                          ; $5b78: $03
	ld   l, l                                        ; $5b79: $6d
	dec  b                                           ; $5b7a: $05
	add  hl, de                                      ; $5b7b: $19
	and  b                                           ; $5b7c: $a0
	ld   [bc], a                                     ; $5b7d: $02
	ld   a, a                                        ; $5b7e: $7f
	ld   d, d                                        ; $5b7f: $52
	adc  h                                           ; $5b80: $8c
	ld   h, a                                        ; $5b81: $67
	nop                                              ; $5b82: $00
	ld   [bc], a                                     ; $5b83: $02
	sub  l                                           ; $5b84: $95
	ld   [bc], a                                     ; $5b85: $02
	sub  e                                           ; $5b86: $93
	sbc  b                                           ; $5b87: $98
	ld   a, c                                        ; $5b88: $79
	ld   [hl], l                                     ; $5b89: $75
	ld   e, c                                        ; $5b8a: $59
	ld   e, a                                        ; $5b8b: $5f
	adc  h                                           ; $5b8c: $8c
	ld   h, a                                        ; $5b8d: $67
	nop                                              ; $5b8e: $00
	cp   h                                           ; $5b8f: $bc
	ei                                               ; $5b90: $fb
	rst  $10                                         ; $5b91: $d7
	ld   e, d                                        ; $5b92: $5a
	ld   [bc], a                                     ; $5b93: $02
	ld   a, a                                        ; $5b94: $7f
	ld   d, [hl]                                     ; $5b95: $56
	adc  h                                           ; $5b96: $8c
	ld   h, a                                        ; $5b97: $67
	nop                                              ; $5b98: $00
	inc  bc                                          ; $5b99: $03
	sub  h                                           ; $5b9a: $94
	inc  b                                           ; $5b9b: $04
	pop  hl                                          ; $5b9c: $e1
	inc  bc                                          ; $5b9d: $03
	ld   l, a                                        ; $5b9e: $6f
	ld   [bc], a                                     ; $5b9f: $02
	xor  c                                           ; $5ba0: $a9
	ld   a, c                                        ; $5ba1: $79
	dec  b                                           ; $5ba2: $05
	and  l                                           ; $5ba3: $a5
	dec  b                                           ; $5ba4: $05
	ld   a, $02                                      ; $5ba5: $3e $02
	ld   e, $03                                      ; $5ba7: $1e $03
	ld   [de], a                                     ; $5ba9: $12
	and  b                                           ; $5baa: $a0
	ld   h, l                                        ; $5bab: $65
	ld   [hl], h                                     ; $5bac: $74
	ld   [bc], a                                     ; $5bad: $02
	rst  $20                                         ; $5bae: $e7
	ld   h, d                                        ; $5baf: $62
	ld   h, l                                        ; $5bb0: $65
	adc  h                                           ; $5bb1: $8c
	ld   h, a                                        ; $5bb2: $67
	nop                                              ; $5bb3: $00
	ld   b, $a5                                      ; $5bb4: $06 $a5
	ld   b, $a6                                      ; $5bb6: $06 $a6
	inc  bc                                          ; $5bb8: $03
	xor  b                                           ; $5bb9: $a8
	dec  b                                           ; $5bba: $05
	rst  $38                                         ; $5bbb: $ff
	and  b                                           ; $5bbc: $a0
	ld   [bc], a                                     ; $5bbd: $02
	ld   a, a                                        ; $5bbe: $7f
	ld   d, d                                        ; $5bbf: $52
	adc  h                                           ; $5bc0: $8c
	ld   h, a                                        ; $5bc1: $67
	nop                                              ; $5bc2: $00
	dec  b                                           ; $5bc3: $05
	jp   nz, Jump_090_4204                           ; $5bc4: $c2 $04 $42

	ld   h, l                                        ; $5bc7: $65
	adc  h                                           ; $5bc8: $8c
	ld   h, a                                        ; $5bc9: $67
	nop                                              ; $5bca: $00
	inc  bc                                          ; $5bcb: $03
	ld   l, l                                        ; $5bcc: $6d
	dec  b                                           ; $5bcd: $05
	add  hl, de                                      ; $5bce: $19
	and  b                                           ; $5bcf: $a0
	inc  bc                                          ; $5bd0: $03
	and  a                                           ; $5bd1: $a7
	adc  l                                           ; $5bd2: $8d
	inc  b                                           ; $5bd3: $04
	dec  c                                           ; $5bd4: $0d
	dec  b                                           ; $5bd5: $05
	ld   a, [bc]                                     ; $5bd6: $0a
	and  b                                           ; $5bd7: $a0
	ld   [bc], a                                     ; $5bd8: $02
	sub  e                                           ; $5bd9: $93
	inc  b                                           ; $5bda: $04
	ld   a, h                                        ; $5bdb: $7c
	ld   h, l                                        ; $5bdc: $65
	adc  h                                           ; $5bdd: $8c
	ld   h, a                                        ; $5bde: $67
	nop                                              ; $5bdf: $00
	ld   [bc], a                                     ; $5be0: $02
	dec  h                                           ; $5be1: $25
	ld   [bc], a                                     ; $5be2: $02
	ld   a, e                                        ; $5be3: $7b
	ld   d, d                                        ; $5be4: $52
	ld   a, h                                        ; $5be5: $7c
	inc  bc                                          ; $5be6: $03
	ld   l, l                                        ; $5be7: $6d
	dec  b                                           ; $5be8: $05
	add  hl, de                                      ; $5be9: $19
	and  b                                           ; $5bea: $a0
	ld   [bc], a                                     ; $5beb: $02
	ld   a, a                                        ; $5bec: $7f
	ld   d, h                                        ; $5bed: $54
	nop                                              ; $5bee: $00
	inc  bc                                          ; $5bef: $03
	jp   nc, $2c04                                   ; $5bf0: $d2 $04 $2c

	inc  bc                                          ; $5bf3: $03
	db   $10                                         ; $5bf4: $10
	ld   a, h                                        ; $5bf5: $7c
	inc  bc                                          ; $5bf6: $03
	ld   l, l                                        ; $5bf7: $6d
	dec  b                                           ; $5bf8: $05
	add  hl, de                                      ; $5bf9: $19
	and  b                                           ; $5bfa: $a0
	ld   [bc], a                                     ; $5bfb: $02

jr_090_5bfc:
	ld   a, a                                        ; $5bfc: $7f
	ld   d, h                                        ; $5bfd: $54
	nop                                              ; $5bfe: $00
	inc  bc                                          ; $5bff: $03
	daa                                              ; $5c00: $27
	ld   [bc], a                                     ; $5c01: $02
	sub  c                                           ; $5c02: $91
	ld   a, h                                        ; $5c03: $7c
	inc  bc                                          ; $5c04: $03
	ld   l, l                                        ; $5c05: $6d
	dec  b                                           ; $5c06: $05
	add  hl, de                                      ; $5c07: $19
	and  b                                           ; $5c08: $a0
	ld   [bc], a                                     ; $5c09: $02
	ld   a, a                                        ; $5c0a: $7f
	ld   d, h                                        ; $5c0b: $54
	nop                                              ; $5c0c: $00
	dec  b                                           ; $5c0d: $05
	add  hl, bc                                      ; $5c0e: $09
	dec  b                                           ; $5c0f: $05
	ld   a, [bc]                                     ; $5c10: $0a
	ld   a, h                                        ; $5c11: $7c
	inc  bc                                          ; $5c12: $03
	ld   l, l                                        ; $5c13: $6d
	dec  b                                           ; $5c14: $05
	add  hl, de                                      ; $5c15: $19
	and  b                                           ; $5c16: $a0
	ld   [bc], a                                     ; $5c17: $02

jr_090_5c18:
	ld   a, a                                        ; $5c18: $7f
	ld   d, h                                        ; $5c19: $54
	nop                                              ; $5c1a: $00
	ld   b, $58                                      ; $5c1b: $06 $58
	inc  b                                           ; $5c1d: $04
	ld   h, c                                        ; $5c1e: $61
	inc  bc                                          ; $5c1f: $03
	cp   $02                                         ; $5c20: $fe $02
	ld   a, e                                        ; $5c22: $7b
	and  b                                           ; $5c23: $a0
	ld   [bc], a                                     ; $5c24: $02
	ld   a, a                                        ; $5c25: $7f
	ld   d, h                                        ; $5c26: $54
	nop                                              ; $5c27: $00
	ld   [bc], a                                     ; $5c28: $02
	ld   l, e                                        ; $5c29: $6b
	dec  b                                           ; $5c2a: $05
	ld   a, [bc]                                     ; $5c2b: $0a
	ret                                              ; $5c2c: $c9


	xor  $fb                                         ; $5c2d: $ee $fb
	call z, $b1f5                                    ; $5c2f: $cc $f5 $b1
	and  b                                           ; $5c32: $a0
	ld   [bc], a                                     ; $5c33: $02
	ld   a, a                                        ; $5c34: $7f
	ld   d, h                                        ; $5c35: $54
	nop                                              ; $5c36: $00
	inc  bc                                          ; $5c37: $03
	sub  h                                           ; $5c38: $94
	inc  b                                           ; $5c39: $04
	pop  hl                                          ; $5c3a: $e1
	inc  bc                                          ; $5c3b: $03
	ld   l, a                                        ; $5c3c: $6f
	ld   [bc], a                                     ; $5c3d: $02
	xor  c                                           ; $5c3e: $a9
	ld   a, c                                        ; $5c3f: $79
	inc  b                                           ; $5c40: $04
	ld   [$9202], sp                                 ; $5c41: $08 $02 $92
	and  b                                           ; $5c44: $a0
	inc  bc                                          ; $5c45: $03
	sub  [hl]                                        ; $5c46: $96
	inc  b                                           ; $5c47: $04
	sbc  a                                           ; $5c48: $9f
	ld   h, l                                        ; $5c49: $65
	ld   [hl], h                                     ; $5c4a: $74
	ld   [bc], a                                     ; $5c4b: $02
	rst  $20                                         ; $5c4c: $e7
	ld   h, d                                        ; $5c4d: $62
	ld   h, l                                        ; $5c4e: $65
	adc  h                                           ; $5c4f: $8c
	ld   h, a                                        ; $5c50: $67
	nop                                              ; $5c51: $00
	or   [hl]                                        ; $5c52: $b6
	db   $dd                                         ; $5c53: $dd
	rst  ToBoot                                         ; $5c54: $c7
	push af                                          ; $5c55: $f5
	ld   a, h                                        ; $5c56: $7c
	inc  bc                                          ; $5c57: $03
	add  hl, de                                      ; $5c58: $19
	dec  b                                           ; $5c59: $05
	jr   nz, jr_090_5bfc                             ; $5c5a: $20 $a0

	ld   h, a                                        ; $5c5c: $67
	sbc  c                                           ; $5c5d: $99
	nop                                              ; $5c5e: $00
	ret  nc                                          ; $5c5f: $d0

	ei                                               ; $5c60: $fb
	rst  $10                                         ; $5c61: $d7
	and  b                                           ; $5c62: $a0
	ld   [bc], a                                     ; $5c63: $02
	ld   e, $74                                      ; $5c64: $1e $74
	sbc  c                                           ; $5c66: $99
	nop                                              ; $5c67: $00
	inc  b                                           ; $5c68: $04
	adc  a                                           ; $5c69: $8f
	and  b                                           ; $5c6a: $a0
	inc  b                                           ; $5c6b: $04
	ld   de, $008e                                   ; $5c6c: $11 $8e $00
	rst  JumpTable                                         ; $5c6f: $df
	db   $ec                                         ; $5c70: $ec
	ei                                               ; $5c71: $fb
	ld   a, h                                        ; $5c72: $7c
	inc  bc                                          ; $5c73: $03
	add  hl, de                                      ; $5c74: $19
	dec  b                                           ; $5c75: $05
	jr   nz, jr_090_5c18                             ; $5c76: $20 $a0

	ld   h, a                                        ; $5c78: $67
	sbc  c                                           ; $5c79: $99
	nop                                              ; $5c7a: $00
	cp   c                                           ; $5c7b: $b9
	or   c                                           ; $5c7c: $b1
	cp   [hl]                                        ; $5c7d: $be
	ei                                               ; $5c7e: $fb
	jp   nc, $edbb                                   ; $5c7f: $d2 $bb $ed

	and  b                                           ; $5c82: $a0
	ld   h, a                                        ; $5c83: $67
	sbc  c                                           ; $5c84: $99
	nop                                              ; $5c85: $00
	inc  bc                                          ; $5c86: $03
	inc  h                                           ; $5c87: $24
	ld   [bc], a                                     ; $5c88: $02
	halt                                             ; $5c89: $76
	inc  b                                           ; $5c8a: $04
	ld   [hl], h                                     ; $5c8b: $74
	and  b                                           ; $5c8c: $a0
	ld   [bc], a                                     ; $5c8d: $02
	halt                                             ; $5c8e: $76
	sbc  c                                           ; $5c8f: $99
	nop                                              ; $5c90: $00
	ld   b, $a5                                      ; $5c91: $06 $a5
	ld   b, $a6                                      ; $5c93: $06 $a6
	inc  bc                                          ; $5c95: $03
	xor  b                                           ; $5c96: $a8
	dec  b                                           ; $5c97: $05
	rst  $38                                         ; $5c98: $ff
	and  b                                           ; $5c99: $a0
	ld   [bc], a                                     ; $5c9a: $02
	ld   a, a                                        ; $5c9b: $7f
	ld   d, d                                        ; $5c9c: $52
	adc  h                                           ; $5c9d: $8c
	ld   h, a                                        ; $5c9e: $67
	nop                                              ; $5c9f: $00
	dec  b                                           ; $5ca0: $05
	jp   nz, Jump_090_4204                           ; $5ca1: $c2 $04 $42

	ld   h, l                                        ; $5ca4: $65
	adc  h                                           ; $5ca5: $8c
	ld   h, a                                        ; $5ca6: $67
	nop                                              ; $5ca7: $00
	ld   [bc], a                                     ; $5ca8: $02
	or   [hl]                                        ; $5ca9: $b6
	inc  bc                                          ; $5caa: $03
	ld   l, e                                        ; $5cab: $6b
	ld   a, h                                        ; $5cac: $7c
	inc  bc                                          ; $5cad: $03
	ld   l, l                                        ; $5cae: $6d
	dec  b                                           ; $5caf: $05
	add  hl, de                                      ; $5cb0: $19
	and  b                                           ; $5cb1: $a0
	ld   [bc], a                                     ; $5cb2: $02
	ld   a, a                                        ; $5cb3: $7f
	ld   d, h                                        ; $5cb4: $54
	nop                                              ; $5cb5: $00
	inc  bc                                          ; $5cb6: $03
	sub  h                                           ; $5cb7: $94
	inc  b                                           ; $5cb8: $04
	sbc  [hl]                                        ; $5cb9: $9e
	ld   [hl], l                                     ; $5cba: $75
	inc  bc                                          ; $5cbb: $03
	ld   c, [hl]                                     ; $5cbc: $4e
	inc  bc                                          ; $5cbd: $03
	ld   l, e                                        ; $5cbe: $6b
	ld   a, c                                        ; $5cbf: $79
	sub  d                                           ; $5cc0: $92
	sbc  c                                           ; $5cc1: $99
	nop                                              ; $5cc2: $00
	ld   h, e                                        ; $5cc3: $63
	ld   e, l                                        ; $5cc4: $5d
	sub  a                                           ; $5cc5: $97
	ld   e, c                                        ; $5cc6: $59
	sub  a                                           ; $5cc7: $97
	inc  bc                                          ; $5cc8: $03
	ld   l, l                                        ; $5cc9: $6d
	dec  b                                           ; $5cca: $05
	add  hl, de                                      ; $5ccb: $19
	and  b                                           ; $5ccc: $a0
	ld   [bc], a                                     ; $5ccd: $02
	rst  $38                                         ; $5cce: $ff
	ld   e, a                                        ; $5ccf: $5f
	sbc  c                                           ; $5cd0: $99
	nop                                              ; $5cd1: $00
	ld   h, a                                        ; $5cd2: $67
	adc  l                                           ; $5cd3: $8d
	sbc  d                                           ; $5cd4: $9a
	ld   e, c                                        ; $5cd5: $59
	sub  a                                           ; $5cd6: $97
	inc  bc                                          ; $5cd7: $03
	ld   l, l                                        ; $5cd8: $6d
	dec  b                                           ; $5cd9: $05
	add  hl, de                                      ; $5cda: $19
	and  b                                           ; $5cdb: $a0
	ld   [bc], a                                     ; $5cdc: $02
	rst  $38                                         ; $5cdd: $ff
	ld   e, a                                        ; $5cde: $5f
	sbc  c                                           ; $5cdf: $99
	nop                                              ; $5ce0: $00
	rst  JumpTable                                         ; $5ce1: $df
	db   $ec                                         ; $5ce2: $ec
	and  e                                           ; $5ce3: $a3
	ld   e, c                                        ; $5ce4: $59
	sub  a                                           ; $5ce5: $97
	inc  bc                                          ; $5ce6: $03
	ld   l, l                                        ; $5ce7: $6d
	dec  b                                           ; $5ce8: $05
	add  hl, de                                      ; $5ce9: $19
	and  b                                           ; $5cea: $a0
	ld   [bc], a                                     ; $5ceb: $02
	rst  $38                                         ; $5cec: $ff
	ld   e, a                                        ; $5ced: $5f
	sbc  c                                           ; $5cee: $99
	nop                                              ; $5cef: $00
	and  e                                           ; $5cf0: $a3
	and  l                                           ; $5cf1: $a5
	db   $ec                                         ; $5cf2: $ec
	cp   d                                           ; $5cf3: $ba
	ld   e, c                                        ; $5cf4: $59
	sub  a                                           ; $5cf5: $97
	inc  bc                                          ; $5cf6: $03
	ld   l, l                                        ; $5cf7: $6d
	dec  b                                           ; $5cf8: $05
	add  hl, de                                      ; $5cf9: $19
	and  b                                           ; $5cfa: $a0
	ld   [bc], a                                     ; $5cfb: $02
	rst  $38                                         ; $5cfc: $ff
	ld   e, a                                        ; $5cfd: $5f
	sbc  c                                           ; $5cfe: $99
	nop                                              ; $5cff: $00
	ld   [bc], a                                     ; $5d00: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d01: $cf
	dec  b                                           ; $5d02: $05
	ld   a, [de]                                     ; $5d03: $1a
	ld   e, c                                        ; $5d04: $59
	sub  a                                           ; $5d05: $97
	inc  bc                                          ; $5d06: $03
	ld   l, l                                        ; $5d07: $6d
	dec  b                                           ; $5d08: $05
	add  hl, de                                      ; $5d09: $19
	and  b                                           ; $5d0a: $a0
	ld   [bc], a                                     ; $5d0b: $02
	rst  $38                                         ; $5d0c: $ff
	ld   e, a                                        ; $5d0d: $5f
	sbc  c                                           ; $5d0e: $99
	nop                                              ; $5d0f: $00
	xor  h                                           ; $5d10: $ac
	push af                                          ; $5d11: $f5
	bit  3, c                                        ; $5d12: $cb $59
	sub  a                                           ; $5d14: $97
	inc  bc                                          ; $5d15: $03
	ld   l, l                                        ; $5d16: $6d
	dec  b                                           ; $5d17: $05
	add  hl, de                                      ; $5d18: $19
	and  b                                           ; $5d19: $a0
	ld   [bc], a                                     ; $5d1a: $02
	rst  $38                                         ; $5d1b: $ff
	ld   e, a                                        ; $5d1c: $5f
	sbc  c                                           ; $5d1d: $99
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	nop                                              ; $5d20: $00
	nop                                              ; $5d21: $00
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	nop                                              ; $5d27: $00
	nop                                              ; $5d28: $00
	nop                                              ; $5d29: $00
	nop                                              ; $5d2a: $00
	nop                                              ; $5d2b: $00
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	nop                                              ; $5d30: $00
	nop                                              ; $5d31: $00
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	nop                                              ; $5d36: $00
	nop                                              ; $5d37: $00
	nop                                              ; $5d38: $00
	nop                                              ; $5d39: $00
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	nop                                              ; $5d3d: $00
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	nop                                              ; $5d44: $00
	nop                                              ; $5d45: $00
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	nop                                              ; $5d4c: $00
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	nop                                              ; $5d56: $00
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00
	nop                                              ; $5d5c: $00
	nop                                              ; $5d5d: $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	nop                                              ; $5d62: $00
	nop                                              ; $5d63: $00
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	nop                                              ; $5d66: $00
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	nop                                              ; $5d69: $00
	nop                                              ; $5d6a: $00
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	nop                                              ; $5d99: $00
	nop                                              ; $5d9a: $00
	nop                                              ; $5d9b: $00
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	nop                                              ; $5da4: $00
	nop                                              ; $5da5: $00
	nop                                              ; $5da6: $00
	nop                                              ; $5da7: $00
	nop                                              ; $5da8: $00
	nop                                              ; $5da9: $00
	nop                                              ; $5daa: $00
	nop                                              ; $5dab: $00
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	nop                                              ; $5db0: $00
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	nop                                              ; $5db4: $00
	nop                                              ; $5db5: $00
	nop                                              ; $5db6: $00
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	nop                                              ; $5db9: $00
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	nop                                              ; $5dc1: $00
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	nop                                              ; $5dc6: $00
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	nop                                              ; $5dc9: $00
	nop                                              ; $5dca: $00
	nop                                              ; $5dcb: $00
	nop                                              ; $5dcc: $00
	nop                                              ; $5dcd: $00
	nop                                              ; $5dce: $00
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	nop                                              ; $5dd5: $00
	nop                                              ; $5dd6: $00
	nop                                              ; $5dd7: $00
	nop                                              ; $5dd8: $00
	nop                                              ; $5dd9: $00
	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	nop                                              ; $5df9: $00
	nop                                              ; $5dfa: $00
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	nop                                              ; $5e18: $00
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	nop                                              ; $5e1c: $00
	nop                                              ; $5e1d: $00
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	nop                                              ; $5e39: $00
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	nop                                              ; $5e3d: $00
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
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
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	nop                                              ; $5e55: $00
	nop                                              ; $5e56: $00
	nop                                              ; $5e57: $00
	nop                                              ; $5e58: $00
	nop                                              ; $5e59: $00
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	nop                                              ; $5e7a: $00
	nop                                              ; $5e7b: $00
	nop                                              ; $5e7c: $00
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	nop                                              ; $5eab: $00
	nop                                              ; $5eac: $00
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	nop                                              ; $5eb7: $00
	nop                                              ; $5eb8: $00
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00
	nop                                              ; $5ec1: $00
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	nop                                              ; $5ec4: $00
	nop                                              ; $5ec5: $00
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
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
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	nop                                              ; $5ed6: $00
	nop                                              ; $5ed7: $00
	nop                                              ; $5ed8: $00
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	nop                                              ; $5f35: $00
	nop                                              ; $5f36: $00
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	nop                                              ; $5f3b: $00
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	nop                                              ; $5f46: $00
	nop                                              ; $5f47: $00
	nop                                              ; $5f48: $00
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
	nop                                              ; $5f56: $00
	nop                                              ; $5f57: $00
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
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	nop                                              ; $5f74: $00
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	nop                                              ; $5f79: $00
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	nop                                              ; $5fa9: $00
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	nop                                              ; $5fb0: $00
	nop                                              ; $5fb1: $00
	nop                                              ; $5fb2: $00
	nop                                              ; $5fb3: $00
	nop                                              ; $5fb4: $00
	nop                                              ; $5fb5: $00
	nop                                              ; $5fb6: $00
	nop                                              ; $5fb7: $00
	nop                                              ; $5fb8: $00
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
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
	nop                                              ; $5fc8: $00
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	nop                                              ; $600a: $00
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	nop                                              ; $6011: $00
	nop                                              ; $6012: $00
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	nop                                              ; $6020: $00
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	nop                                              ; $602c: $00
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	nop                                              ; $602f: $00
	nop                                              ; $6030: $00
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
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
	nop                                              ; $6056: $00
	nop                                              ; $6057: $00
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	nop                                              ; $608d: $00
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	nop                                              ; $60a9: $00
	nop                                              ; $60aa: $00
	nop                                              ; $60ab: $00
	nop                                              ; $60ac: $00
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	nop                                              ; $60be: $00
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	nop                                              ; $60cc: $00
	nop                                              ; $60cd: $00
	nop                                              ; $60ce: $00
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	nop                                              ; $60d5: $00
	nop                                              ; $60d6: $00
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	nop                                              ; $60ef: $00
	nop                                              ; $60f0: $00
	nop                                              ; $60f1: $00
	nop                                              ; $60f2: $00
	nop                                              ; $60f3: $00
	nop                                              ; $60f4: $00
	nop                                              ; $60f5: $00
	nop                                              ; $60f6: $00
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	nop                                              ; $60fa: $00
	nop                                              ; $60fb: $00
	nop                                              ; $60fc: $00
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	nop                                              ; $6107: $00
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
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	nop                                              ; $6116: $00
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	nop                                              ; $6119: $00
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	nop                                              ; $6126: $00
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	nop                                              ; $6129: $00
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	nop                                              ; $612c: $00
	nop                                              ; $612d: $00
	nop                                              ; $612e: $00
	nop                                              ; $612f: $00
	nop                                              ; $6130: $00
	nop                                              ; $6131: $00
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	nop                                              ; $6136: $00
	nop                                              ; $6137: $00
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	nop                                              ; $613e: $00
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00
	nop                                              ; $6147: $00
	nop                                              ; $6148: $00
	nop                                              ; $6149: $00
	nop                                              ; $614a: $00
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	nop                                              ; $6168: $00
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	nop                                              ; $6196: $00
	nop                                              ; $6197: $00
	nop                                              ; $6198: $00
	nop                                              ; $6199: $00
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	nop                                              ; $61c8: $00
	nop                                              ; $61c9: $00
	nop                                              ; $61ca: $00
	nop                                              ; $61cb: $00
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	nop                                              ; $61ce: $00
	nop                                              ; $61cf: $00
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	nop                                              ; $61d2: $00
	nop                                              ; $61d3: $00
	nop                                              ; $61d4: $00
	nop                                              ; $61d5: $00
	nop                                              ; $61d6: $00
	nop                                              ; $61d7: $00
	nop                                              ; $61d8: $00
	nop                                              ; $61d9: $00
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	nop                                              ; $61fc: $00
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	nop                                              ; $624c: $00
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	nop                                              ; $6275: $00
	nop                                              ; $6276: $00
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	nop                                              ; $6286: $00
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	nop                                              ; $6292: $00
	nop                                              ; $6293: $00
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	nop                                              ; $6296: $00
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	nop                                              ; $62a6: $00
	nop                                              ; $62a7: $00
	nop                                              ; $62a8: $00
	nop                                              ; $62a9: $00
	nop                                              ; $62aa: $00
	nop                                              ; $62ab: $00
	nop                                              ; $62ac: $00
	nop                                              ; $62ad: $00
	nop                                              ; $62ae: $00
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	nop                                              ; $62b1: $00
	nop                                              ; $62b2: $00
	nop                                              ; $62b3: $00
	nop                                              ; $62b4: $00
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	nop                                              ; $62b9: $00
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	nop                                              ; $62c2: $00
	nop                                              ; $62c3: $00
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	nop                                              ; $62c6: $00
	nop                                              ; $62c7: $00
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
	nop                                              ; $62d6: $00
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

Jump_090_6300:
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
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
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	nop                                              ; $632b: $00
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	nop                                              ; $6332: $00
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	nop                                              ; $6337: $00
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	nop                                              ; $6386: $00
	nop                                              ; $6387: $00
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	nop                                              ; $63b6: $00
	nop                                              ; $63b7: $00
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	nop                                              ; $63ba: $00
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
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
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	nop                                              ; $6430: $00
	nop                                              ; $6431: $00
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	nop                                              ; $6436: $00
	nop                                              ; $6437: $00
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	nop                                              ; $643b: $00
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	nop                                              ; $6457: $00
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	nop                                              ; $64aa: $00
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	nop                                              ; $64ba: $00
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
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
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	nop                                              ; $652a: $00
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
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
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	nop                                              ; $65b9: $00
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
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
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
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
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00

Jump_090_6700:
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
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
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00

Jump_090_6775:
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
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
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
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
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	nop                                              ; $6ac5: $00
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
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
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	nop                                              ; $6bb9: $00
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	nop                                              ; $6bc6: $00
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
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
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
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
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	nop                                              ; $6c29: $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
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
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
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
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
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
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
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
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
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
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
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
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
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
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
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
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
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
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
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
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
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
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
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
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
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
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
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
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
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
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
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
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
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
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
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
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
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
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
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
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
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
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
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
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
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
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
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
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
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
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
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
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
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
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
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
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
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
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
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
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
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
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
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
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
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
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
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
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
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
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00

Jump_090_755a:
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
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
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
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
