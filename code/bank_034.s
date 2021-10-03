; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

Gfx_RedCompany::
	INCBIN "build/redCompany.2bpp", 0, $5e0
.end::
	




	ldh  [rSB], a                                    ; $45e0: $e0 $01
	add  h                                           ; $45e2: $84
	nop                                              ; $45e3: $00
	ld   [bc], a                                     ; $45e4: $02
	inc  e                                           ; $45e5: $1c
	nop                                              ; $45e6: $00
	ld   a, $85                                      ; $45e7: $3e $85
	nop                                              ; $45e9: $00
	nop                                              ; $45ea: $00
	ld   [hl+], a                                    ; $45eb: $22
	add  e                                           ; $45ec: $83
	nop                                              ; $45ed: $00
	inc  b                                           ; $45ee: $04
	ld   [$1000], sp                                 ; $45ef: $08 $00 $10
	nop                                              ; $45f2: $00
	db   $10                                         ; $45f3: $10
	add  e                                           ; $45f4: $83
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	ld   [$0083], sp                                 ; $45f7: $08 $83 $00
	ld   [bc], a                                     ; $45fa: $02
	inc  e                                           ; $45fb: $1c
	nop                                              ; $45fc: $00
	ld   a, $81                                      ; $45fd: $3e $81
	nop                                              ; $45ff: $00
	inc  b                                           ; $4600: $04
	jr   nz, jr_034_4603                             ; $4601: $20 $00

jr_034_4603:
	ld   b, $00                                      ; $4603: $06 $00
	inc  b                                           ; $4605: $04
	add  e                                           ; $4606: $83
	nop                                              ; $4607: $00
	ld   [bc], a                                     ; $4608: $02
	inc  e                                           ; $4609: $1c
	nop                                              ; $460a: $00
	ld   a, $81                                      ; $460b: $3e $81
	nop                                              ; $460d: $00
	inc  b                                           ; $460e: $04
	jr   nz, jr_034_4611                             ; $460f: $20 $00

jr_034_4611:
	ld   e, $00                                      ; $4611: $1e $00
	inc  e                                           ; $4613: $1c
	add  e                                           ; $4614: $83
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	ld   b, $81                                      ; $4617: $06 $81
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	inc  c                                           ; $461b: $0c
	add  c                                           ; $461c: $81
	nop                                              ; $461d: $00
	ld   [bc], a                                     ; $461e: $02
	jr   jr_034_4621                                 ; $461f: $18 $00

jr_034_4621:
	ld   [de], a                                     ; $4621: $12
	add  e                                           ; $4622: $83
	nop                                              ; $4623: $00
	ld   [bc], a                                     ; $4624: $02
	ld   a, $00                                      ; $4625: $3e $00
	ld   e, $83                                      ; $4627: $1e $83
	nop                                              ; $4629: $00
	ld   [bc], a                                     ; $462a: $02
	inc  e                                           ; $462b: $1c
	nop                                              ; $462c: $00
	inc  a                                           ; $462d: $3c
	add  e                                           ; $462e: $83
	nop                                              ; $462f: $00
	inc  b                                           ; $4630: $04
	inc  e                                           ; $4631: $1c
	nop                                              ; $4632: $00
	ld   a, $00                                      ; $4633: $3e $00
	ld   [bc], a                                     ; $4635: $02
	add  c                                           ; $4636: $81
	nop                                              ; $4637: $00
	ld   [bc], a                                     ; $4638: $02
	inc  e                                           ; $4639: $1c
	nop                                              ; $463a: $00
	inc  a                                           ; $463b: $3c
	add  e                                           ; $463c: $83
	nop                                              ; $463d: $00
	ld   [bc], a                                     ; $463e: $02
	ld   a, $00                                      ; $463f: $3e $00
	inc  e                                           ; $4641: $1c
	add  c                                           ; $4642: $81
	nop                                              ; $4643: $00
	inc  b                                           ; $4644: $04
	jr   nz, jr_034_4647                             ; $4645: $20 $00

jr_034_4647:
	ld   b, $00                                      ; $4647: $06 $00
	inc  b                                           ; $4649: $04
	add  e                                           ; $464a: $83
	nop                                              ; $464b: $00
	ld   [bc], a                                     ; $464c: $02
	inc  e                                           ; $464d: $1c
	nop                                              ; $464e: $00
	ld   a, $83                                      ; $464f: $3e $83
	nop                                              ; $4651: $00
	ld   [bc], a                                     ; $4652: $02
	ld   a, $00                                      ; $4653: $3e $00

jr_034_4655:
	inc  e                                           ; $4655: $1c
	add  e                                           ; $4656: $83
	nop                                              ; $4657: $00
	ld   [bc], a                                     ; $4658: $02
	inc  e                                           ; $4659: $1c
	nop                                              ; $465a: $00
	ld   a, $85                                      ; $465b: $3e $85
	nop                                              ; $465d: $00
	dec  b                                           ; $465e: $05
	db   $dd                                         ; $465f: $dd
	nop                                              ; $4660: $00
	ccf                                              ; $4661: $3f
	inc  hl                                          ; $4662: $23
	ld   h, b                                        ; $4663: $60
	ld   e, h                                        ; $4664: $5c
	add  b                                           ; $4665: $80
	ld   e, l                                        ; $4666: $5d
	ld   bc, $6141                                   ; $4667: $01 $41 $61
	add  b                                           ; $466a: $80
	ld   a, a                                        ; $466b: $7f
	add  b                                           ; $466c: $80
	nop                                              ; $466d: $00
	inc  bc                                          ; $466e: $03
	ld   a, [hl]                                     ; $466f: $7e
	ld   e, $60                                      ; $4670: $1e $60
	nop                                              ; $4672: $00
	add  b                                           ; $4673: $80
	add  b                                           ; $4674: $80
	add  b                                           ; $4675: $80
	rst  JumpTable                                         ; $4676: $df
	add  b                                           ; $4677: $80
	ld   h, b                                        ; $4678: $60
	add  b                                           ; $4679: $80
	or   b                                           ; $467a: $b0
	add  b                                           ; $467b: $80
	rra                                              ; $467c: $1f
	dec  b                                           ; $467d: $05
	ld   h, b                                        ; $467e: $60
	nop                                              ; $467f: $00
	sbc  a                                           ; $4680: $9f
	nop                                              ; $4681: $00
	rst  $38                                         ; $4682: $ff
	nop                                              ; $4683: $00
	add  b                                           ; $4684: $80
	ld   bc, $fb80                                   ; $4685: $01 $80 $fb
	add  b                                           ; $4688: $80
	ld   b, $80                                      ; $4689: $06 $80
	dec  c                                           ; $468b: $0d
	add  b                                           ; $468c: $80
	ld   hl, sp+$08                                  ; $468d: $f8 $08
	ld   b, $00                                      ; $468f: $06 $00
	ld   sp, hl                                      ; $4691: $f9
	nop                                              ; $4692: $00
	rst  $38                                         ; $4693: $ff
	nop                                              ; $4694: $00
	db   $fc                                         ; $4695: $fc
	call nz, $8142                                   ; $4696: $c4 $42 $81
	ld   a, [hl-]                                    ; $4699: $3a
	ld   bc, $c282                                   ; $469a: $01 $82 $c2
	add  b                                           ; $469d: $80
	cp   $80                                         ; $469e: $fe $80
	nop                                              ; $46a0: $00
	ld   [bc], a                                     ; $46a1: $02
	ld   a, [hl]                                     ; $46a2: $7e
	ld   e, $1f                                      ; $46a3: $1e $1f
	adc  l                                           ; $46a5: $8d
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	add  c                                           ; $46a8: $81
	adc  l                                           ; $46a9: $8d
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	inc  hl                                          ; $46ac: $23
	add  l                                           ; $46ad: $85
	nop                                              ; $46ae: $00
	ld   [bc], a                                     ; $46af: $02
	ld   a, $00                                      ; $46b0: $3e $00
	inc  e                                           ; $46b2: $1c
	add  e                                           ; $46b3: $83
	nop                                              ; $46b4: $00
	nop                                              ; $46b5: $00
	ld   [$0085], sp                                 ; $46b6: $08 $85 $00
	ld   [bc], a                                     ; $46b9: $02
	inc  d                                           ; $46ba: $14
	nop                                              ; $46bb: $00
	inc  e                                           ; $46bc: $1c
	add  e                                           ; $46bd: $83
	nop                                              ; $46be: $00
	inc  b                                           ; $46bf: $04
	ld   [$1800], sp                                 ; $46c0: $08 $00 $18
	nop                                              ; $46c3: $00
	jr   nc, jr_034_4647                             ; $46c4: $30 $81

	nop                                              ; $46c6: $00
	ld   [bc], a                                     ; $46c7: $02
	ld   e, $00                                      ; $46c8: $1e $00
	ld   a, $83                                      ; $46ca: $3e $83
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	ld   [bc], a                                     ; $46ce: $02
	add  c                                           ; $46cf: $81
	nop                                              ; $46d0: $00
	nop                                              ; $46d1: $00
	jr   nz, jr_034_4655                             ; $46d2: $20 $81

	nop                                              ; $46d4: $00
	ld   [bc], a                                     ; $46d5: $02
	ld   a, $00                                      ; $46d6: $3e $00
	inc  e                                           ; $46d8: $1c
	add  e                                           ; $46d9: $83
	nop                                              ; $46da: $00
	ld   b, $12                                      ; $46db: $06 $12
	nop                                              ; $46dd: $00
	jr   nc, jr_034_46e0                             ; $46de: $30 $00

jr_034_46e0:
	inc  e                                           ; $46e0: $1c
	nop                                              ; $46e1: $00
	inc  a                                           ; $46e2: $3c
	add  c                                           ; $46e3: $81
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	ld   [bc], a                                     ; $46e6: $02
	add  e                                           ; $46e7: $83
	nop                                              ; $46e8: $00
	nop                                              ; $46e9: $00
	ld   [bc], a                                     ; $46ea: $02
	add  e                                           ; $46eb: $83
	nop                                              ; $46ec: $00
	inc  b                                           ; $46ed: $04
	jr   nz, jr_034_46f0                             ; $46ee: $20 $00

jr_034_46f0:
	ld   a, $00                                      ; $46f0: $3e $00
	inc  e                                           ; $46f2: $1c
	add  e                                           ; $46f3: $83
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	ld   [hl+], a                                    ; $46f6: $22
	add  l                                           ; $46f7: $85
	nop                                              ; $46f8: $00
	ld   [bc], a                                     ; $46f9: $02
	ld   a, $00                                      ; $46fa: $3e $00
	inc  e                                           ; $46fc: $1c
	add  e                                           ; $46fd: $83
	nop                                              ; $46fe: $00
	ld   [bc], a                                     ; $46ff: $02
	inc  b                                           ; $4700: $04
	nop                                              ; $4701: $00
	inc  c                                           ; $4702: $0c
	add  l                                           ; $4703: $85
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	ld   [$0083], sp                                 ; $4706: $08 $83 $00
	nop                                              ; $4709: $00
	ld   [hl+], a                                    ; $470a: $22
	add  l                                           ; $470b: $85
	nop                                              ; $470c: $00
	ld   [bc], a                                     ; $470d: $02
	ld   a, $00                                      ; $470e: $3e $00
	inc  e                                           ; $4710: $1c
	add  e                                           ; $4711: $83
	nop                                              ; $4712: $00
	ld   [bc], a                                     ; $4713: $02
	ld   e, $00                                      ; $4714: $1e $00
	inc  e                                           ; $4716: $1c
	add  c                                           ; $4717: $81
	nop                                              ; $4718: $00
	inc  b                                           ; $4719: $04
	jr   nz, jr_034_471c                             ; $471a: $20 $00

jr_034_471c:
	ld   a, $00                                      ; $471c: $3e $00
	inc  e                                           ; $471e: $1c
	add  e                                           ; $471f: $83
	nop                                              ; $4720: $00
	inc  b                                           ; $4721: $04
	add  c                                           ; $4722: $81
	ld   a, $40                                      ; $4723: $3e $40
	nop                                              ; $4725: $00
	inc  a                                           ; $4726: $3c
	adc  c                                           ; $4727: $89
	sbc  h                                           ; $4728: $9c
	ld   [bc], a                                     ; $4729: $02
	and  b                                           ; $472a: $a0
	nop                                              ; $472b: $00
	ld   a, a                                        ; $472c: $7f
	adc  e                                           ; $472d: $8b
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	ld   a, a                                        ; $4730: $7f
	add  c                                           ; $4731: $81
	nop                                              ; $4732: $00
	add  b                                           ; $4733: $80
	rst  $38                                         ; $4734: $ff
	add  d                                           ; $4735: $82
	nop                                              ; $4736: $00
	add  b                                           ; $4737: $80
	rst  $38                                         ; $4738: $ff
	add  b                                           ; $4739: $80
	nop                                              ; $473a: $00
	ld   b, $ff                                      ; $473b: $06 $ff
	nop                                              ; $473d: $00
	add  c                                           ; $473e: $81
	ld   a, $40                                      ; $473f: $3e $40
	nop                                              ; $4741: $00
	inc  a                                           ; $4742: $3c
	adc  c                                           ; $4743: $89
	dec  e                                           ; $4744: $1d
	nop                                              ; $4745: $00
	sbc  $80                                         ; $4746: $de $80
	sbc  a                                           ; $4748: $9f
	nop                                              ; $4749: $00
	rst  $38                                         ; $474a: $ff
	add  c                                           ; $474b: $81
	nop                                              ; $474c: $00
	add  a                                           ; $474d: $87
	rst  $38                                         ; $474e: $ff
	add  l                                           ; $474f: $85
	nop                                              ; $4750: $00
	add  b                                           ; $4751: $80
	ld   b, $80                                      ; $4752: $06 $80
	ld   c, $80                                      ; $4754: $0e $80
	ld   e, $80                                      ; $4756: $1e $80
	ld   a, $80                                      ; $4758: $3e $80
	ld   a, [hl]                                     ; $475a: $7e
	adc  l                                           ; $475b: $8d
	nop                                              ; $475c: $00
	add  b                                           ; $475d: $80
	and  b                                           ; $475e: $a0
	add  b                                           ; $475f: $80
	ret  nz                                          ; $4760: $c0

	add  b                                           ; $4761: $80
	and  b                                           ; $4762: $a0
	add  b                                           ; $4763: $80
	ret  nz                                          ; $4764: $c0

	add  b                                           ; $4765: $80
	and  b                                           ; $4766: $a0
	add  b                                           ; $4767: $80
	ret  nz                                          ; $4768: $c0

	add  b                                           ; $4769: $80
	and  b                                           ; $476a: $a0
	add  b                                           ; $476b: $80
	ret  nz                                          ; $476c: $c0

	ld   [bc], a                                     ; $476d: $02
	rst  $38                                         ; $476e: $ff
	nop                                              ; $476f: $00
	ldh  a, [$83]                                    ; $4770: $f0 $83
	rrca                                             ; $4772: $0f
	add  [hl]                                        ; $4773: $86
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	rst  $38                                         ; $4776: $ff
	add  b                                           ; $4777: $80

jr_034_4778:
	nop                                              ; $4778: $00
	add  e                                           ; $4779: $83
	rst  $38                                         ; $477a: $ff
	add  [hl]                                        ; $477b: $86

jr_034_477c:
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	ldh  a, [$80]                                    ; $477e: $f0 $80
	ld   [hl], b                                     ; $4780: $70
	add  e                                           ; $4781: $83
	ldh  a, [$86]                                    ; $4782: $f0 $86

jr_034_4784:
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	add  b                                           ; $4786: $80
	add  l                                           ; $4787: $85
	nop                                              ; $4788: $00
	sub  [hl]                                        ; $4789: $96
	ld   [hl], b                                     ; $478a: $70
	nop                                              ; $478b: $00
	ld   a, a                                        ; $478c: $7f
	adc  l                                           ; $478d: $8d
	rst  $38                                         ; $478e: $ff
	add  b                                           ; $478f: $80
	xor  d                                           ; $4790: $aa
	add  b                                           ; $4791: $80
	ld   d, l                                        ; $4792: $55
	adc  d                                           ; $4793: $8a
	nop                                              ; $4794: $00
	ld   bc, $00ff                                   ; $4795: $01 $ff $00
	add  b                                           ; $4798: $80
	xor  d                                           ; $4799: $aa
	add  b                                           ; $479a: $80
	ld   d, l                                        ; $479b: $55
	add  b                                           ; $479c: $80
	rst  $38                                         ; $479d: $ff
	ld   a, [bc]                                     ; $479e: $0a
	ld   d, l                                        ; $479f: $55
	rst  $38                                         ; $47a0: $ff
	nop                                              ; $47a1: $00
	rst  $38                                         ; $47a2: $ff
	nop                                              ; $47a3: $00
	rst  $38                                         ; $47a4: $ff
	xor  d                                           ; $47a5: $aa
	rst  $38                                         ; $47a6: $ff
	jp   $9c1c                                       ; $47a7: $c3 $1c $9c


	add  c                                           ; $47aa: $81
	inc  e                                           ; $47ab: $1c
	ld   bc, $00a0                                   ; $47ac: $01 $a0 $00
	add  c                                           ; $47af: $81
	ld   a, [hl]                                     ; $47b0: $7e
	dec  b                                           ; $47b1: $05
	ld   c, $cf                                      ; $47b2: $0e $cf
	rra                                              ; $47b4: $1f
	ld   h, b                                        ; $47b5: $60
	nop                                              ; $47b6: $00
	ccf                                              ; $47b7: $3f
	add  a                                           ; $47b8: $87
	nop                                              ; $47b9: $00
	ld   bc, $00ff                                   ; $47ba: $01 $ff $00
	add  b                                           ; $47bd: $80
	rst  $38                                         ; $47be: $ff
	add  d                                           ; $47bf: $82
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	rst  $38                                         ; $47c2: $ff
	adc  e                                           ; $47c3: $8b
	nop                                              ; $47c4: $00
	ld   [bc], a                                     ; $47c5: $02
	jp   $1d1c                                       ; $47c6: $c3 $1c $1d


	add  c                                           ; $47c9: $81

jr_034_47ca:
	inc  e                                           ; $47ca: $1c
	ld   bc, $0021                                   ; $47cb: $01 $21 $00
	add  c                                           ; $47ce: $81
	ld   a, [hl]                                     ; $47cf: $7e
	ld   b, $0e                                      ; $47d0: $06 $0e
	adc  l                                           ; $47d2: $8d
	call c, $0022                                    ; $47d3: $dc $22 $00
	inc  bc                                          ; $47d6: $03
	nop                                              ; $47d7: $00
	add  b                                           ; $47d8: $80
	rst  $38                                         ; $47d9: $ff
	add  c                                           ; $47da: $81
	nop                                              ; $47db: $00
	add  a                                           ; $47dc: $87
	rst  $38                                         ; $47dd: $ff
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	add  b                                           ; $47e0: $80
	ld   a, [hl]                                     ; $47e1: $7e
	add  b                                           ; $47e2: $80
	ld   a, $80                                      ; $47e3: $3e $80
	ld   e, $80                                      ; $47e5: $1e $80
	ld   c, $80                                      ; $47e7: $0e $80
	ld   b, $87                                      ; $47e9: $06 $87
	nop                                              ; $47eb: $00
	inc  b                                           ; $47ec: $04
	ld   [$1800], sp                                 ; $47ed: $08 $00 $18
	nop                                              ; $47f0: $00
	jr   nc, jr_034_4778                             ; $47f1: $30 $85

	nop                                              ; $47f3: $00
	nop                                              ; $47f4: $00
	jr   nz, jr_034_4778                             ; $47f5: $20 $81

	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	jr   nz, jr_034_477c                             ; $47f9: $20 $81

	nop                                              ; $47fb: $00

jr_034_47fc:
	inc  b                                           ; $47fc: $04
	sbc  $00                                         ; $47fd: $de $00
	xor  $00                                         ; $47ff: $ee $00
	jr   jr_034_4784                                 ; $4801: $18 $81

	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	ld   [$0081], sp                                 ; $4805: $08 $81 $00
	ld   [$0004], sp                                 ; $4808: $08 $04 $00
	inc  c                                           ; $480b: $0c
	nop                                              ; $480c: $00
	jr   jr_034_480f                                 ; $480d: $18 $00

jr_034_480f:
	jr   nc, jr_034_4811                             ; $480f: $30 $00

jr_034_4811:
	ld   h, b                                        ; $4811: $60
	add  c                                           ; $4812: $81
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	ld   b, b                                        ; $4815: $40
	add  c                                           ; $4816: $81
	nop                                              ; $4817: $00
	inc  b                                           ; $4818: $04
	inc  h                                           ; $4819: $24
	nop                                              ; $481a: $00
	ld   b, $00                                      ; $481b: $06 $00
	ld   [bc], a                                     ; $481d: $02
	add  c                                           ; $481e: $81
	nop                                              ; $481f: $00
	inc  b                                           ; $4820: $04
	inc  e                                           ; $4821: $1c
	nop                                              ; $4822: $00
	ld   a, [hl]                                     ; $4823: $7e
	nop                                              ; $4824: $00
	ld   b, d                                        ; $4825: $42
	add  c                                           ; $4826: $81
	nop                                              ; $4827: $00
	nop                                              ; $4828: $00
	db   $10                                         ; $4829: $10
	add  c                                           ; $482a: $81
	nop                                              ; $482b: $00
	ld   [$00ee], sp                                 ; $482c: $08 $ee $00
	xor  $00                                         ; $482f: $ee $00
	ld   h, b                                        ; $4831: $60
	nop                                              ; $4832: $00
	ldh  [rP1], a                                    ; $4833: $e0 $00
	sub  b                                           ; $4835: $90
	add  c                                           ; $4836: $81
	nop                                              ; $4837: $00
	inc  b                                           ; $4838: $04
	ldh  [rP1], a                                    ; $4839: $e0 $00
	ret  nz                                          ; $483b: $c0

	nop                                              ; $483c: $00
	inc  b                                           ; $483d: $04
	add  e                                           ; $483e: $83
	nop                                              ; $483f: $00
	ld   [bc], a                                     ; $4840: $02
	ld   e, b                                        ; $4841: $58
	nop                                              ; $4842: $00
	ld   a, h                                        ; $4843: $7c
	add  c                                           ; $4844: $81
	nop                                              ; $4845: $00
	nop                                              ; $4846: $00
	jr   nz, jr_034_47ca                             ; $4847: $20 $81

	nop                                              ; $4849: $00
	ld   [$00cc], sp                                 ; $484a: $08 $cc $00
	ret  c                                           ; $484d: $d8

	nop                                              ; $484e: $00
	stop                                             ; $484f: $10 $00
	ld   b, b                                        ; $4851: $40
	nop                                              ; $4852: $00
	ld   h, h                                        ; $4853: $64

jr_034_4854:
	add  e                                           ; $4854: $83
	nop                                              ; $4855: $00
	ld   [bc], a                                     ; $4856: $02
	cp   $00                                         ; $4857: $fe $00
	db   $fc                                         ; $4859: $fc
	add  c                                           ; $485a: $81
	nop                                              ; $485b: $00
	inc  b                                           ; $485c: $04
	ld   b, $00                                      ; $485d: $06 $00
	jr   nz, jr_034_4861                             ; $485f: $20 $00

jr_034_4861:
	inc  h                                           ; $4861: $24
	add  c                                           ; $4862: $81
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	ld   b, h                                        ; $4865: $44
	add  a                                           ; $4866: $87
	nop                                              ; $4867: $00
	ld   [bc], a                                     ; $4868: $02
	ld   b, b                                        ; $4869: $40

jr_034_486a:
	nop                                              ; $486a: $00
	inc  b                                           ; $486b: $04
	add  e                                           ; $486c: $83
	nop                                              ; $486d: $00
	ld   [bc], a                                     ; $486e: $02
	cp   $00                                         ; $486f: $fe $00
	db   $fc                                         ; $4871: $fc
	add  c                                           ; $4872: $81
	nop                                              ; $4873: $00
	inc  b                                           ; $4874: $04
	ld   d, $00                                      ; $4875: $16 $00
	inc  c                                           ; $4877: $0c
	nop                                              ; $4878: $00
	jr   jr_034_47fc                                 ; $4879: $18 $81

	nop                                              ; $487b: $00
	inc  l                                           ; $487c: $2c
	ld   [bc], a                                     ; $487d: $02
	nop                                              ; $487e: $00
	ld   b, $00                                      ; $487f: $06 $00
	inc  c                                           ; $4881: $0c
	nop                                              ; $4882: $00
	stop                                             ; $4883: $10 $00
	jr   nc, jr_034_4887                             ; $4885: $30 $00

jr_034_4887:
	ldh  [rP1], a                                    ; $4887: $e0 $00
	ret  z                                           ; $4889: $c8

	nop                                              ; $488a: $00
	jr   nz, jr_034_488d                             ; $488b: $20 $00

jr_034_488d:
	ld   l, [hl]                                     ; $488d: $6e
	nop                                              ; $488e: $00
	jp   c, $7000                            ; $488f: $da $00 $70

	nop                                              ; $4892: $00
	and  b                                           ; $4893: $a0
	nop                                              ; $4894: $00
	ret  nc                                          ; $4895: $d0

	nop                                              ; $4896: $00
	ld   h, b                                        ; $4897: $60
	nop                                              ; $4898: $00
	db   $f4                                         ; $4899: $f4
	nop                                              ; $489a: $00
	ld   b, h                                        ; $489b: $44
	nop                                              ; $489c: $00
	cp   d                                           ; $489d: $ba
	nop                                              ; $489e: $00
	cp   d                                           ; $489f: $ba
	nop                                              ; $48a0: $00
	xor  d                                           ; $48a1: $aa
	nop                                              ; $48a2: $00
	ld   b, h                                        ; $48a3: $44
	nop                                              ; $48a4: $00
	ld   b, h                                        ; $48a5: $44
	nop                                              ; $48a6: $00
	ld   a, h                                        ; $48a7: $7c
	nop                                              ; $48a8: $00
	sub  d                                           ; $48a9: $92
	add  c                                           ; $48aa: $81
	nop                                              ; $48ab: $00
	nop                                              ; $48ac: $00
	jr   nz, @-$7d                                   ; $48ad: $20 $81

	nop                                              ; $48af: $00
	ld   [bc], a                                     ; $48b0: $02
	call c, $d800                                    ; $48b1: $dc $00 $d8
	add  e                                           ; $48b4: $83
	nop                                              ; $48b5: $00
	nop                                              ; $48b6: $00
	inc  h                                           ; $48b7: $24
	add  e                                           ; $48b8: $83
	nop                                              ; $48b9: $00
	inc  b                                           ; $48ba: $04
	ret  nz                                          ; $48bb: $c0

	nop                                              ; $48bc: $00
	ldh  [rP1], a                                    ; $48bd: $e0 $00
	ld   [hl+], a                                    ; $48bf: $22
	add  e                                           ; $48c0: $83
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	ld   [bc], a                                     ; $48c3: $02
	add  c                                           ; $48c4: $81
	nop                                              ; $48c5: $00

jr_034_48c6:
	nop                                              ; $48c6: $00
	ld   [$0081], sp                                 ; $48c7: $08 $81 $00
	ld   [bc], a                                     ; $48ca: $02
	or   $00                                         ; $48cb: $f6 $00
	or   $83                                         ; $48cd: $f6 $83
	nop                                              ; $48cf: $00
	nop                                              ; $48d0: $00
	jr   z, jr_034_4854                              ; $48d1: $28 $81

	nop                                              ; $48d3: $00
	inc  b                                           ; $48d4: $04
	jr   nc, jr_034_48d7                             ; $48d5: $30 $00

jr_034_48d7:
	jr   jr_034_48d9                                 ; $48d7: $18 $00

jr_034_48d9:
	ld   [$0087], sp                                 ; $48d9: $08 $87 $00
	ld   b, $80                                      ; $48dc: $06 $80
	nop                                              ; $48de: $00
	ret  nz                                          ; $48df: $c0

	nop                                              ; $48e0: $00
	ld   a, b                                        ; $48e1: $78
	nop                                              ; $48e2: $00
	jr   c, jr_034_486a                              ; $48e3: $38 $85

	nop                                              ; $48e5: $00
	ld   [$0020], sp                                 ; $48e6: $08 $20 $00
	jr   nc, jr_034_48eb                             ; $48e9: $30 $00

jr_034_48eb:
	jr   jr_034_48ed                                 ; $48eb: $18 $00

jr_034_48ed:
	inc  c                                           ; $48ed: $0c
	nop                                              ; $48ee: $00
	inc  b                                           ; $48ef: $04
	add  l                                           ; $48f0: $85
	nop                                              ; $48f1: $00
	nop                                              ; $48f2: $00
	ld   [bc], a                                     ; $48f3: $02
	add  e                                           ; $48f4: $83
	nop                                              ; $48f5: $00
	ld   [bc], a                                     ; $48f6: $02
	ld   a, $00                                      ; $48f7: $3e $00
	inc  a                                           ; $48f9: $3c
	add  l                                           ; $48fa: $85
	nop                                              ; $48fb: $00
	ld   [$0090], sp                                 ; $48fc: $08 $90 $00
	ldh  [rP1], a                                    ; $48ff: $e0 $00
	ld   h, b                                        ; $4901: $60
	nop                                              ; $4902: $00
	jr   nc, jr_034_4905                             ; $4903: $30 $00

jr_034_4905:
	jr   nz, @-$79                                   ; $4905: $20 $85

	nop                                              ; $4907: $00
	ld   [bc], a                                     ; $4908: $02
	and  [hl]                                        ; $4909: $a6
	nop                                              ; $490a: $00
	ld   [bc], a                                     ; $490b: $02
	add  c                                           ; $490c: $81
	nop                                              ; $490d: $00
	ld   [bc], a                                     ; $490e: $02
	db   $ec                                         ; $490f: $ec
	nop                                              ; $4910: $00
	ld   c, b                                        ; $4911: $48
	add  l                                           ; $4912: $85
	nop                                              ; $4913: $00
	ld   [bc], a                                     ; $4914: $02
	ld   h, h                                        ; $4915: $64
	nop                                              ; $4916: $00
	ret  nz                                          ; $4917: $c0

	add  c                                           ; $4918: $81
	nop                                              ; $4919: $00
	ld   [bc], a                                     ; $491a: $02
	add  [hl]                                        ; $491b: $86
	nop                                              ; $491c: $00
	ld   [hl+], a                                    ; $491d: $22
	add  l                                           ; $491e: $85
	nop                                              ; $491f: $00
	inc  b                                           ; $4920: $04
	jr   jr_034_4923                                 ; $4921: $18 $00

jr_034_4923:
	ld   [$1800], sp                                 ; $4923: $08 $00 $18
	add  c                                           ; $4926: $81
	nop                                              ; $4927: $00
	nop                                              ; $4928: $00
	ld   [$0085], sp                                 ; $4929: $08 $85 $00
	nop                                              ; $492c: $00
	inc  b                                           ; $492d: $04
	add  c                                           ; $492e: $81
	nop                                              ; $492f: $00
	inc  b                                           ; $4930: $04
	inc  c                                           ; $4931: $0c
	nop                                              ; $4932: $00
	jr   jr_034_4935                                 ; $4933: $18 $00

jr_034_4935:
	db   $10                                         ; $4935: $10
	add  l                                           ; $4936: $85
	nop                                              ; $4937: $00
	nop                                              ; $4938: $00
	db   $10                                         ; $4939: $10
	add  e                                           ; $493a: $83
	nop                                              ; $493b: $00
	ld   [bc], a                                     ; $493c: $02
	jr   nc, jr_034_493f                             ; $493d: $30 $00

jr_034_493f:
	jr   nz, jr_034_48c6                             ; $493f: $20 $85

	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	ld   [$0085], sp                                 ; $4943: $08 $85 $00
	nop                                              ; $4946: $00
	ld   [$0085], sp                                 ; $4947: $08 $85 $00
	ld   [bc], a                                     ; $494a: $02
	ld   b, h                                        ; $494b: $44
	nop                                              ; $494c: $00
	sub  b                                           ; $494d: $90
	add  c                                           ; $494e: $81
	nop                                              ; $494f: $00
	ld   [bc], a                                     ; $4950: $02
	sbc  d                                           ; $4951: $9a
	nop                                              ; $4952: $00
	ld   c, [hl]                                     ; $4953: $4e
	add  l                                           ; $4954: $85
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	cp   d                                           ; $4957: $ba
	add  c                                           ; $4958: $81
	nop                                              ; $4959: $00
	inc  b                                           ; $495a: $04
	jr   z, jr_034_495d                              ; $495b: $28 $00

jr_034_495d:
	inc  a                                           ; $495d: $3c
	nop                                              ; $495e: $00
	xor  [hl]                                        ; $495f: $ae
	add  l                                           ; $4960: $85
	nop                                              ; $4961: $00
	ld   [bc], a                                     ; $4962: $02
	inc  h                                           ; $4963: $24
	nop                                              ; $4964: $00
	ld   h, b                                        ; $4965: $60
	add  c                                           ; $4966: $81
	nop                                              ; $4967: $00
	ld   [bc], a                                     ; $4968: $02
	call z, $8800                                    ; $4969: $cc $00 $88
	add  l                                           ; $496c: $85
	nop                                              ; $496d: $00
	nop                                              ; $496e: $00
	inc  b                                           ; $496f: $04
	add  c                                           ; $4970: $81
	nop                                              ; $4971: $00
	inc  b                                           ; $4972: $04
	inc  c                                           ; $4973: $0c
	nop                                              ; $4974: $00
	ld   hl, sp+$00                                  ; $4975: $f8 $00
	ldh  a, [$85]                                    ; $4977: $f0 $85
	nop                                              ; $4979: $00
	ld   [bc], a                                     ; $497a: $02
	ld   [$1800], sp                                 ; $497b: $08 $00 $18
	add  c                                           ; $497e: $81
	nop                                              ; $497f: $00
	ld   [bc], a                                     ; $4980: $02
	ld   [hl], b                                     ; $4981: $70
	nop                                              ; $4982: $00
	ld   h, b                                        ; $4983: $60
	adc  e                                           ; $4984: $8b
	nop                                              ; $4985: $00
	nop                                              ; $4986: $00
	ld   [bc], a                                     ; $4987: $02
	add  b                                           ; $4988: $80
	inc  b                                           ; $4989: $04
	add  b                                           ; $498a: $80
	inc  c                                           ; $498b: $0c
	add  b                                           ; $498c: $80
	inc  e                                           ; $498d: $1c
	add  b                                           ; $498e: $80
	inc  a                                           ; $498f: $3c
	nop                                              ; $4990: $00
	ld   a, h                                        ; $4991: $7c
	add  b                                           ; $4992: $80
	inc  a                                           ; $4993: $3c
	ld   [$1c5c], sp                                 ; $4994: $08 $5c $1c
	inc  l                                           ; $4997: $2c
	inc  c                                           ; $4998: $0c
	inc  d                                           ; $4999: $14
	inc  b                                           ; $499a: $04
	ld   [$0600], sp                                 ; $499b: $08 $00 $06
	add  a                                           ; $499e: $87
	nop                                              ; $499f: $00
	ld   b, $7e                                      ; $49a0: $06 $7e
	nop                                              ; $49a2: $00
	ld   a, [hl]                                     ; $49a3: $7e
	nop                                              ; $49a4: $00
	ld   a, [hl]                                     ; $49a5: $7e
	nop                                              ; $49a6: $00
	ld   a, h                                        ; $49a7: $7c
	add  l                                           ; $49a8: $85
	nop                                              ; $49a9: $00
	ld   b, $06                                      ; $49aa: $06 $06
	nop                                              ; $49ac: $00
	inc  c                                           ; $49ad: $0c
	nop                                              ; $49ae: $00
	jr   c, jr_034_49b1                              ; $49af: $38 $00

jr_034_49b1:
	jr   nc, @-$73                                   ; $49b1: $30 $8b

	nop                                              ; $49b3: $00
	inc  b                                           ; $49b4: $04
	ld   a, [hl]                                     ; $49b5: $7e
	nop                                              ; $49b6: $00
	ld   a, h                                        ; $49b7: $7c
	nop                                              ; $49b8: $00
	ld   b, $81                                      ; $49b9: $06 $81
	nop                                              ; $49bb: $00
	ld   a, [bc]                                     ; $49bc: $0a
	inc  c                                           ; $49bd: $0c
	nop                                              ; $49be: $00
	stop                                             ; $49bf: $10 $00
	inc  a                                           ; $49c1: $3c
	nop                                              ; $49c2: $00
	ld   h, [hl]                                     ; $49c3: $66
	nop                                              ; $49c4: $00

jr_034_49c5:
	ret  nz                                          ; $49c5: $c0

	nop                                              ; $49c6: $00
	add  d                                           ; $49c7: $82
	rst  $38                                         ; $49c8: $ff
	nop                                              ; $49c9: $00
	rst  $38                                         ; $49ca: $ff
	nop                                              ; $49cb: $00
	rst  $38                                         ; $49cc: $ff
	nop                                              ; $49cd: $00
	rst  $38                                         ; $49ce: $ff
	nop                                              ; $49cf: $00
	rst  $38                                         ; $49d0: $ff
	nop                                              ; $49d1: $00
	or   b                                           ; $49d2: $b0
	nop                                              ; $49d3: $00
	inc  b                                           ; $49d4: $04
	ld   a, [de]                                     ; $49d5: $1a
	nop                                              ; $49d6: $00
	inc  bc                                          ; $49d7: $03
	nop                                              ; $49d8: $00
	and  $81                                         ; $49d9: $e6 $81
	nop                                              ; $49db: $00
	jr   jr_034_49c5                                 ; $49dc: $18 $e7

	nop                                              ; $49de: $00
	ld   b, d                                        ; $49df: $42
	nop                                              ; $49e0: $00
	ld   bc, $8000                                   ; $49e1: $01 $00 $80
	nop                                              ; $49e4: $00
	ld   e, b                                        ; $49e5: $58
	nop                                              ; $49e6: $00
	ret  nz                                          ; $49e7: $c0

	nop                                              ; $49e8: $00
	ld   b, h                                        ; $49e9: $44
	nop                                              ; $49ea: $00
	add  hl, bc                                      ; $49eb: $09

jr_034_49ec:
	nop                                              ; $49ec: $00
	ld   [de], a                                     ; $49ed: $12
	nop                                              ; $49ee: $00
	ld   h, b                                        ; $49ef: $60
	nop                                              ; $49f0: $00
	stop                                             ; $49f1: $10 $00
	ld   h, b                                        ; $49f3: $60
	nop                                              ; $49f4: $00
	ld   [hl], e                                     ; $49f5: $73
	add  c                                           ; $49f6: $81
	nop                                              ; $49f7: $00
	nop                                              ; $49f8: $00
	ld   a, h                                        ; $49f9: $7c
	add  c                                           ; $49fa: $81
	nop                                              ; $49fb: $00
	ld   [$0004], sp                                 ; $49fc: $08 $04 $00
	add  hl, bc                                      ; $49ff: $09
	nop                                              ; $4a00: $00
	ld   [de], a                                     ; $4a01: $12
	nop                                              ; $4a02: $00
	ld   [hl+], a                                    ; $4a03: $22
	nop                                              ; $4a04: $00
	ld   b, b                                        ; $4a05: $40
	add  c                                           ; $4a06: $81
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	ld   c, [hl]                                     ; $4a09: $4e
	add  c                                           ; $4a0a: $81
	nop                                              ; $4a0b: $00
	nop                                              ; $4a0c: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a0d: $cf
	add  c                                           ; $4a0e: $81
	nop                                              ; $4a0f: $00
	nop                                              ; $4a10: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a11: $cf
	add  c                                           ; $4a12: $81
	nop                                              ; $4a13: $00
	nop                                              ; $4a14: $00
	jr   nc, @-$79                                   ; $4a15: $30 $85

	nop                                              ; $4a17: $00
	nop                                              ; $4a18: $00
	ld   a, a                                        ; $4a19: $7f
	add  c                                           ; $4a1a: $81
	nop                                              ; $4a1b: $00
	nop                                              ; $4a1c: $00
	ld   a, a                                        ; $4a1d: $7f
	add  c                                           ; $4a1e: $81
	nop                                              ; $4a1f: $00
	inc  b                                           ; $4a20: $04
	ld   l, d                                        ; $4a21: $6a
	nop                                              ; $4a22: $00
	rrca                                             ; $4a23: $0f
	nop                                              ; $4a24: $00
	dec  b                                           ; $4a25: $05
	add  c                                           ; $4a26: $81
	nop                                              ; $4a27: $00
	ld   [$0008], sp                                 ; $4a28: $08 $08 $00
	inc  d                                           ; $4a2b: $14
	nop                                              ; $4a2c: $00
	ld   [de], a                                     ; $4a2d: $12
	nop                                              ; $4a2e: $00
	ld   a, [bc]                                     ; $4a2f: $0a
	nop                                              ; $4a30: $00
	ld   h, h                                        ; $4a31: $64
	adc  l                                           ; $4a32: $8d
	nop                                              ; $4a33: $00
	nop                                              ; $4a34: $00
	ld   b, $81                                      ; $4a35: $06 $81
	nop                                              ; $4a37: $00
	nop                                              ; $4a38: $00
	add  hl, bc                                      ; $4a39: $09
	add  c                                           ; $4a3a: $81
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	add  hl, bc                                      ; $4a3d: $09
	add  c                                           ; $4a3e: $81
	nop                                              ; $4a3f: $00
	nop                                              ; $4a40: $00
	ld   b, $81                                      ; $4a41: $06 $81
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	ld   h, c                                        ; $4a45: $61
	add  c                                           ; $4a46: $81
	nop                                              ; $4a47: $00
	nop                                              ; $4a48: $00
	sbc  [hl]                                        ; $4a49: $9e
	add  c                                           ; $4a4a: $81
	nop                                              ; $4a4b: $00
	ld   [bc], a                                     ; $4a4c: $02
	sub  e                                           ; $4a4d: $93
	nop                                              ; $4a4e: $00
	inc  c                                           ; $4a4f: $0c
	add  c                                           ; $4a50: $81
	nop                                              ; $4a51: $00
	ld   a, [bc]                                     ; $4a52: $0a
	add  b                                           ; $4a53: $80
	nop                                              ; $4a54: $00
	ld   h, b                                        ; $4a55: $60
	nop                                              ; $4a56: $00
	rlca                                             ; $4a57: $07
	nop                                              ; $4a58: $00
	ld   [hl], b                                     ; $4a59: $70
	nop                                              ; $4a5a: $00
	rlca                                             ; $4a5b: $07
	nop                                              ; $4a5c: $00
	ret  nz                                          ; $4a5d: $c0

	add  e                                           ; $4a5e: $83
	nop                                              ; $4a5f: $00
	ld   [bc], a                                     ; $4a60: $02
	ld   b, b                                        ; $4a61: $40
	nop                                              ; $4a62: $00
	halt                                             ; $4a63: $76
	add  c                                           ; $4a64: $81
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	jr   nc, jr_034_49ec                             ; $4a67: $30 $83

	nop                                              ; $4a69: $00
	ld   a, [bc]                                     ; $4a6a: $0a
	ld   bc, $4100                                   ; $4a6b: $01 $00 $41
	nop                                              ; $4a6e: $00
	sub  b                                           ; $4a6f: $90
	nop                                              ; $4a70: $00
	ld   b, c                                        ; $4a71: $41
	nop                                              ; $4a72: $00
	ldh  a, [rP1]                                    ; $4a73: $f0 $00
	ld   d, h                                        ; $4a75: $54
	add  c                                           ; $4a76: $81
	nop                                              ; $4a77: $00
	ld   [$008c], sp                                 ; $4a78: $08 $8c $00
	ld   b, b                                        ; $4a7b: $40
	nop                                              ; $4a7c: $00
	inc  l                                           ; $4a7d: $2c
	nop                                              ; $4a7e: $00
	and  b                                           ; $4a7f: $a0
	nop                                              ; $4a80: $00
	and  e                                           ; $4a81: $a3
	add  c                                           ; $4a82: $81
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	ldh  [$81], a                                    ; $4a85: $e0 $81
	nop                                              ; $4a87: $00
	nop                                              ; $4a88: $00
	rst  $30                                         ; $4a89: $f7
	add  c                                           ; $4a8a: $81
	nop                                              ; $4a8b: $00
	nop                                              ; $4a8c: $00
	rst  $30                                         ; $4a8d: $f7
	add  c                                           ; $4a8e: $81
	nop                                              ; $4a8f: $00
	nop                                              ; $4a90: $00
	ld   b, $85                                      ; $4a91: $06 $85
	nop                                              ; $4a93: $00
	inc  b                                           ; $4a94: $04
	ldh  a, [rP1]                                    ; $4a95: $f0 $00
	ld   bc, $f100                                   ; $4a97: $01 $00 $f1
	add  c                                           ; $4a9a: $81
	nop                                              ; $4a9b: $00
	inc  b                                           ; $4a9c: $04
	and  [hl]                                        ; $4a9d: $a6
	nop                                              ; $4a9e: $00
	ldh  a, [rP1]                                    ; $4a9f: $f0 $00
	ld   d, b                                        ; $4aa1: $50
	add  c                                           ; $4aa2: $81
	nop                                              ; $4aa3: $00
	ld   [$0080], sp                                 ; $4aa4: $08 $80 $00
	ld   b, b                                        ; $4aa7: $40
	nop                                              ; $4aa8: $00
	jr   nz, jr_034_4aab                             ; $4aa9: $20 $00

jr_034_4aab:
	and  b                                           ; $4aab: $a0
	nop                                              ; $4aac: $00
	ld   b, b                                        ; $4aad: $40
	add  a                                           ; $4aae: $87
	nop                                              ; $4aaf: $00
	ld   bc, $00ff                                   ; $4ab0: $01 $ff $00
	add  b                                           ; $4ab3: $80
	rst  $38                                         ; $4ab4: $ff
	add  b                                           ; $4ab5: $80
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	inc  h                                           ; $4ab8: $24
	add  c                                           ; $4ab9: $81
	nop                                              ; $4aba: $00
	nop                                              ; $4abb: $00
	db   $db                                         ; $4abc: $db
	add  e                                           ; $4abd: $83
	nop                                              ; $4abe: $00
	ld   bc, $00ff                                   ; $4abf: $01 $ff $00
	add  b                                           ; $4ac2: $80
	rst  $38                                         ; $4ac3: $ff
	add  b                                           ; $4ac4: $80
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	di                                               ; $4ac7: $f3
	add  c                                           ; $4ac8: $81
	nop                                              ; $4ac9: $00
	nop                                              ; $4aca: $00
	inc  c                                           ; $4acb: $0c
	add  e                                           ; $4acc: $83
	nop                                              ; $4acd: $00
	ld   bc, $00ff                                   ; $4ace: $01 $ff $00
	add  b                                           ; $4ad1: $80
	rst  $38                                         ; $4ad2: $ff
	add  b                                           ; $4ad3: $80
	nop                                              ; $4ad4: $00
	inc  b                                           ; $4ad5: $04
	adc  b                                           ; $4ad6: $88
	nop                                              ; $4ad7: $00
	inc  d                                           ; $4ad8: $14
	nop                                              ; $4ad9: $00
	ld   h, e                                        ; $4ada: $63
	add  e                                           ; $4adb: $83
	nop                                              ; $4adc: $00
	ld   bc, $00ff                                   ; $4add: $01 $ff $00
	add  b                                           ; $4ae0: $80
	rst  $38                                         ; $4ae1: $ff
	add  b                                           ; $4ae2: $80
	nop                                              ; $4ae3: $00
	inc  b                                           ; $4ae4: $04
	ret  nz                                          ; $4ae5: $c0

	nop                                              ; $4ae6: $00
	jr   nz, jr_034_4ae9                             ; $4ae7: $20 $00

jr_034_4ae9:
	rra                                              ; $4ae9: $1f
	add  e                                           ; $4aea: $83
	nop                                              ; $4aeb: $00
	ld   bc, $00ff                                   ; $4aec: $01 $ff $00
	add  b                                           ; $4aef: $80
	rst  $38                                         ; $4af0: $ff
	add  b                                           ; $4af1: $80
	nop                                              ; $4af2: $00
	nop                                              ; $4af3: $00
	rst  $38                                         ; $4af4: $ff
	add  a                                           ; $4af5: $87
	nop                                              ; $4af6: $00
	ld   bc, $00ff                                   ; $4af7: $01 $ff $00
	add  b                                           ; $4afa: $80
	rst  $38                                         ; $4afb: $ff
	add  b                                           ; $4afc: $80
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00
	sbc  a                                           ; $4aff: $9f
	add  c                                           ; $4b00: $81
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	ld   h, b                                        ; $4b03: $60
	add  e                                           ; $4b04: $83
	nop                                              ; $4b05: $00
	ld   bc, $00ff                                   ; $4b06: $01 $ff $00
	add  b                                           ; $4b09: $80
	rst  $38                                         ; $4b0a: $ff
	add  b                                           ; $4b0b: $80
	nop                                              ; $4b0c: $00
	nop                                              ; $4b0d: $00
	rst  $38                                         ; $4b0e: $ff
	add  a                                           ; $4b0f: $87
	nop                                              ; $4b10: $00
	ld   bc, $00ff                                   ; $4b11: $01 $ff $00
	add  b                                           ; $4b14: $80
	rst  $38                                         ; $4b15: $ff
	add  b                                           ; $4b16: $80
	nop                                              ; $4b17: $00
	nop                                              ; $4b18: $00
	cp   $81                                         ; $4b19: $fe $81
	nop                                              ; $4b1b: $00
	nop                                              ; $4b1c: $00
	ld   bc, $0083                                   ; $4b1d: $01 $83 $00
	ld   bc, $00ff                                   ; $4b20: $01 $ff $00
	add  b                                           ; $4b23: $80
	rst  $38                                         ; $4b24: $ff
	add  b                                           ; $4b25: $80
	nop                                              ; $4b26: $00
	inc  b                                           ; $4b27: $04
	ld   a, $00                                      ; $4b28: $3e $00
	ld   b, b                                        ; $4b2a: $40
	nop                                              ; $4b2b: $00
	add  c                                           ; $4b2c: $81
	add  e                                           ; $4b2d: $83
	nop                                              ; $4b2e: $00
	ld   bc, $00ff                                   ; $4b2f: $01 $ff $00
	add  b                                           ; $4b32: $80
	rst  $38                                         ; $4b33: $ff
	add  b                                           ; $4b34: $80
	nop                                              ; $4b35: $00
	inc  b                                           ; $4b36: $04
	jr   jr_034_4b39                                 ; $4b37: $18 $00

jr_034_4b39:
	jr   nz, jr_034_4b3b                             ; $4b39: $20 $00

jr_034_4b3b:
	rst  ToBoot                                         ; $4b3b: $c7
	add  e                                           ; $4b3c: $83
	nop                                              ; $4b3d: $00
	ld   bc, $00ff                                   ; $4b3e: $01 $ff $00
	add  b                                           ; $4b41: $80
	rst  $38                                         ; $4b42: $ff
	add  b                                           ; $4b43: $80
	nop                                              ; $4b44: $00
	inc  b                                           ; $4b45: $04
	add  hl, sp                                      ; $4b46: $39
	nop                                              ; $4b47: $00
	ld   b, b                                        ; $4b48: $40
	nop                                              ; $4b49: $00
	add  [hl]                                        ; $4b4a: $86
	add  e                                           ; $4b4b: $83
	nop                                              ; $4b4c: $00
	ld   bc, $00ff                                   ; $4b4d: $01 $ff $00
	add  b                                           ; $4b50: $80
	rst  $38                                         ; $4b51: $ff
	add  b                                           ; $4b52: $80
	nop                                              ; $4b53: $00
	inc  b                                           ; $4b54: $04
	db   $fc                                         ; $4b55: $fc
	nop                                              ; $4b56: $00
	ld   [bc], a                                     ; $4b57: $02
	nop                                              ; $4b58: $00
	ld   bc, $0083                                   ; $4b59: $01 $83 $00
	ld   bc, $00ff                                   ; $4b5c: $01 $ff $00
	add  b                                           ; $4b5f: $80
	rst  $38                                         ; $4b60: $ff
	add  b                                           ; $4b61: $80
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	rrca                                             ; $4b64: $0f
	add  c                                           ; $4b65: $81
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	ldh  a, [$83]                                    ; $4b68: $f0 $83
	nop                                              ; $4b6a: $00
	ld   bc, $00ff                                   ; $4b6b: $01 $ff $00
	add  b                                           ; $4b6e: $80
	rst  $38                                         ; $4b6f: $ff
	add  b                                           ; $4b70: $80
	nop                                              ; $4b71: $00
	nop                                              ; $4b72: $00
	ld   sp, hl                                      ; $4b73: $f9
	add  c                                           ; $4b74: $81
	nop                                              ; $4b75: $00
	nop                                              ; $4b76: $00
	ld   b, $83                                      ; $4b77: $06 $83
	nop                                              ; $4b79: $00
	ld   bc, $00ff                                   ; $4b7a: $01 $ff $00
	add  b                                           ; $4b7d: $80
	rst  $38                                         ; $4b7e: $ff
	add  b                                           ; $4b7f: $80
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	rst  $38                                         ; $4b82: $ff
	add  a                                           ; $4b83: $87
	nop                                              ; $4b84: $00
	ld   bc, $00ff                                   ; $4b85: $01 $ff $00
	add  b                                           ; $4b88: $80
	rst  $38                                         ; $4b89: $ff
	add  b                                           ; $4b8a: $80
	nop                                              ; $4b8b: $00
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	ld   bc, $0101                                   ; $4b90: $01 $01 $01
	ld   bc, $0101                                   ; $4b93: $01 $01 $01
	ld   bc, $0101                                   ; $4b96: $01 $01 $01
	ld   bc, $0101                                   ; $4b99: $01 $01 $01
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	nop                                              ; $4ba3: $00
	ld   bc, $0101                                   ; $4ba4: $01 $01 $01
	ld   bc, $0101                                   ; $4ba7: $01 $01 $01
	ld   bc, $0101                                   ; $4baa: $01 $01 $01
	ld   bc, $0101                                   ; $4bad: $01 $01 $01
	nop                                              ; $4bb0: $00
	nop                                              ; $4bb1: $00
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	ld   bc, $0101                                   ; $4bb4: $01 $01 $01
	ld   bc, $0101                                   ; $4bb7: $01 $01 $01
	ld   bc, $0101                                   ; $4bba: $01 $01 $01
	ld   bc, $0101                                   ; $4bbd: $01 $01 $01
	ld   bc, $0101                                   ; $4bc0: $01 $01 $01
	ld   bc, $0101                                   ; $4bc3: $01 $01 $01
	ld   hl, $0100                                   ; $4bc6: $21 $00 $01
	ld   bc, $0202                                   ; $4bc9: $01 $02 $02
	ld   [bc], a                                     ; $4bcc: $02
	ld   [bc], a                                     ; $4bcd: $02
	ld   [bc], a                                     ; $4bce: $02
	ld   [bc], a                                     ; $4bcf: $02
	ld   [bc], a                                     ; $4bd0: $02
	ld   [bc], a                                     ; $4bd1: $02
	ld   [bc], a                                     ; $4bd2: $02
	ld   [bc], a                                     ; $4bd3: $02
	ld   [bc], a                                     ; $4bd4: $02
	ld   [bc], a                                     ; $4bd5: $02
	ld   [bc], a                                     ; $4bd6: $02
	ld   [bc], a                                     ; $4bd7: $02
	ld   [bc], a                                     ; $4bd8: $02
	ld   [hl+], a                                    ; $4bd9: $22
	ld   bc, $0100                                   ; $4bda: $01 $00 $01
	ld   bc, $0202                                   ; $4bdd: $01 $02 $02
	ld   [bc], a                                     ; $4be0: $02
	ld   [bc], a                                     ; $4be1: $02
	ld   [bc], a                                     ; $4be2: $02
	ld   [bc], a                                     ; $4be3: $02
	ld   [bc], a                                     ; $4be4: $02
	ld   [bc], a                                     ; $4be5: $02
	ld   [bc], a                                     ; $4be6: $02
	ld   [bc], a                                     ; $4be7: $02
	ld   [bc], a                                     ; $4be8: $02
	ld   [bc], a                                     ; $4be9: $02
	ld   [bc], a                                     ; $4bea: $02
	ld   [hl+], a                                    ; $4beb: $22
	ld   [bc], a                                     ; $4bec: $02
	ld   [hl+], a                                    ; $4bed: $22
	ld   bc, $0100                                   ; $4bee: $01 $00 $01
	ld   bc, $0202                                   ; $4bf1: $01 $02 $02
	ld   [bc], a                                     ; $4bf4: $02
	ld   [bc], a                                     ; $4bf5: $02
	ld   [bc], a                                     ; $4bf6: $02
	ld   [bc], a                                     ; $4bf7: $02
	ld   [bc], a                                     ; $4bf8: $02
	ld   [bc], a                                     ; $4bf9: $02
	ld   [bc], a                                     ; $4bfa: $02
	ld   [bc], a                                     ; $4bfb: $02
	ld   [bc], a                                     ; $4bfc: $02
	ld   [bc], a                                     ; $4bfd: $02
	ld   [bc], a                                     ; $4bfe: $02
	ld   [hl+], a                                    ; $4bff: $22
	ld   [bc], a                                     ; $4c00: $02
	ld   [hl+], a                                    ; $4c01: $22
	ld   bc, $0100                                   ; $4c02: $01 $00 $01
	ld   bc, $0202                                   ; $4c05: $01 $02 $02
	ld   [bc], a                                     ; $4c08: $02
	ld   [bc], a                                     ; $4c09: $02
	ld   [bc], a                                     ; $4c0a: $02
	ld   [bc], a                                     ; $4c0b: $02
	ld   [bc], a                                     ; $4c0c: $02
	ld   [bc], a                                     ; $4c0d: $02
	ld   [bc], a                                     ; $4c0e: $02
	ld   [bc], a                                     ; $4c0f: $02
	ld   [bc], a                                     ; $4c10: $02
	ld   [bc], a                                     ; $4c11: $02
	ld   [bc], a                                     ; $4c12: $02
	ld   [hl+], a                                    ; $4c13: $22
	ld   [bc], a                                     ; $4c14: $02
	ld   [hl+], a                                    ; $4c15: $22
	ld   bc, $0100                                   ; $4c16: $01 $00 $01
	ld   bc, $0202                                   ; $4c19: $01 $02 $02
	ld   [bc], a                                     ; $4c1c: $02
	ld   [bc], a                                     ; $4c1d: $02
	ld   [bc], a                                     ; $4c1e: $02
	ld   [bc], a                                     ; $4c1f: $02
	ld   [bc], a                                     ; $4c20: $02
	ld   [bc], a                                     ; $4c21: $02
	ld   [bc], a                                     ; $4c22: $02
	ld   [bc], a                                     ; $4c23: $02
	ld   [bc], a                                     ; $4c24: $02
	ld   [bc], a                                     ; $4c25: $02
	ld   [bc], a                                     ; $4c26: $02
	ld   [hl+], a                                    ; $4c27: $22
	ld   [bc], a                                     ; $4c28: $02
	ld   [hl+], a                                    ; $4c29: $22
	ld   bc, $0100                                   ; $4c2a: $01 $00 $01
	ld   bc, $0202                                   ; $4c2d: $01 $02 $02
	ld   [bc], a                                     ; $4c30: $02
	ld   [bc], a                                     ; $4c31: $02
	ld   [bc], a                                     ; $4c32: $02
	ld   [bc], a                                     ; $4c33: $02
	ld   [bc], a                                     ; $4c34: $02
	ld   [bc], a                                     ; $4c35: $02
	ld   [bc], a                                     ; $4c36: $02
	ld   [bc], a                                     ; $4c37: $02
	ld   [bc], a                                     ; $4c38: $02
	ld   [bc], a                                     ; $4c39: $02
	ld   [bc], a                                     ; $4c3a: $02
	ld   [hl+], a                                    ; $4c3b: $22
	ld   [bc], a                                     ; $4c3c: $02
	ld   [hl+], a                                    ; $4c3d: $22
	ld   bc, $0100                                   ; $4c3e: $01 $00 $01
	ld   bc, $0202                                   ; $4c41: $01 $02 $02
	ld   [bc], a                                     ; $4c44: $02
	ld   [bc], a                                     ; $4c45: $02
	ld   [bc], a                                     ; $4c46: $02
	ld   [bc], a                                     ; $4c47: $02
	ld   [bc], a                                     ; $4c48: $02
	ld   [bc], a                                     ; $4c49: $02
	ld   [bc], a                                     ; $4c4a: $02
	ld   [bc], a                                     ; $4c4b: $02
	ld   [bc], a                                     ; $4c4c: $02
	ld   [bc], a                                     ; $4c4d: $02
	ld   [bc], a                                     ; $4c4e: $02
	ld   [hl+], a                                    ; $4c4f: $22
	ld   [bc], a                                     ; $4c50: $02
	ld   [hl+], a                                    ; $4c51: $22
	ld   bc, $0100                                   ; $4c52: $01 $00 $01
	ld   bc, $0202                                   ; $4c55: $01 $02 $02
	ld   [bc], a                                     ; $4c58: $02
	ld   [bc], a                                     ; $4c59: $02
	ld   [bc], a                                     ; $4c5a: $02
	ld   [bc], a                                     ; $4c5b: $02
	ld   [bc], a                                     ; $4c5c: $02
	ld   [bc], a                                     ; $4c5d: $02
	ld   [bc], a                                     ; $4c5e: $02
	ld   [bc], a                                     ; $4c5f: $02
	ld   [bc], a                                     ; $4c60: $02
	ld   [bc], a                                     ; $4c61: $02
	ld   [bc], a                                     ; $4c62: $02
	ld   [hl+], a                                    ; $4c63: $22
	ld   [bc], a                                     ; $4c64: $02
	ld   [hl+], a                                    ; $4c65: $22
	ld   bc, $0100                                   ; $4c66: $01 $00 $01
	ld   bc, $0202                                   ; $4c69: $01 $02 $02
	ld   [bc], a                                     ; $4c6c: $02
	ld   [bc], a                                     ; $4c6d: $02
	ld   [bc], a                                     ; $4c6e: $02
	ld   [bc], a                                     ; $4c6f: $02
	ld   [bc], a                                     ; $4c70: $02
	ld   [bc], a                                     ; $4c71: $02
	ld   [bc], a                                     ; $4c72: $02
	ld   [bc], a                                     ; $4c73: $02
	ld   [bc], a                                     ; $4c74: $02
	ld   [bc], a                                     ; $4c75: $02
	ld   [bc], a                                     ; $4c76: $02
	ld   [hl+], a                                    ; $4c77: $22
	ld   [bc], a                                     ; $4c78: $02
	ld   [hl+], a                                    ; $4c79: $22
	ld   bc, $0100                                   ; $4c7a: $01 $00 $01
	ld   bc, $0202                                   ; $4c7d: $01 $02 $02
	ld   [bc], a                                     ; $4c80: $02
	ld   [bc], a                                     ; $4c81: $02
	ld   [bc], a                                     ; $4c82: $02
	ld   [bc], a                                     ; $4c83: $02
	ld   [bc], a                                     ; $4c84: $02
	ld   [bc], a                                     ; $4c85: $02
	ld   [bc], a                                     ; $4c86: $02
	ld   [bc], a                                     ; $4c87: $02
	ld   [bc], a                                     ; $4c88: $02
	ld   [bc], a                                     ; $4c89: $02
	ld   [bc], a                                     ; $4c8a: $02
	ld   [hl+], a                                    ; $4c8b: $22
	ld   [bc], a                                     ; $4c8c: $02
	ld   [hl+], a                                    ; $4c8d: $22
	ld   bc, $0100                                   ; $4c8e: $01 $00 $01
	ld   bc, $0202                                   ; $4c91: $01 $02 $02
	ld   [bc], a                                     ; $4c94: $02
	ld   [bc], a                                     ; $4c95: $02
	ld   [bc], a                                     ; $4c96: $02
	ld   [bc], a                                     ; $4c97: $02
	ld   [bc], a                                     ; $4c98: $02
	ld   [bc], a                                     ; $4c99: $02
	ld   [bc], a                                     ; $4c9a: $02
	ld   [bc], a                                     ; $4c9b: $02
	ld   [bc], a                                     ; $4c9c: $02
	ld   [bc], a                                     ; $4c9d: $02
	ld   [bc], a                                     ; $4c9e: $02
	ld   [hl+], a                                    ; $4c9f: $22
	ld   [bc], a                                     ; $4ca0: $02
	ld   [hl+], a                                    ; $4ca1: $22
	ld   bc, $0100                                   ; $4ca2: $01 $00 $01
	ld   bc, $0202                                   ; $4ca5: $01 $02 $02
	ld   [bc], a                                     ; $4ca8: $02
	ld   [bc], a                                     ; $4ca9: $02
	ld   [bc], a                                     ; $4caa: $02
	ld   [bc], a                                     ; $4cab: $02
	ld   [bc], a                                     ; $4cac: $02
	ld   [bc], a                                     ; $4cad: $02
	ld   [bc], a                                     ; $4cae: $02
	ld   [bc], a                                     ; $4caf: $02
	ld   [bc], a                                     ; $4cb0: $02
	ld   [bc], a                                     ; $4cb1: $02
	ld   [bc], a                                     ; $4cb2: $02
	ld   [hl+], a                                    ; $4cb3: $22
	ld   [bc], a                                     ; $4cb4: $02
	ld   [hl+], a                                    ; $4cb5: $22
	ld   bc, $0100                                   ; $4cb6: $01 $00 $01
	ld   bc, $0202                                   ; $4cb9: $01 $02 $02
	ld   [bc], a                                     ; $4cbc: $02
	ld   [bc], a                                     ; $4cbd: $02
	ld   [bc], a                                     ; $4cbe: $02
	ld   [bc], a                                     ; $4cbf: $02
	ld   [bc], a                                     ; $4cc0: $02
	ld   [bc], a                                     ; $4cc1: $02
	ld   [bc], a                                     ; $4cc2: $02
	ld   [bc], a                                     ; $4cc3: $02
	ld   [bc], a                                     ; $4cc4: $02
	ld   [bc], a                                     ; $4cc5: $02
	ld   [bc], a                                     ; $4cc6: $02
	ld   [hl+], a                                    ; $4cc7: $22
	ld   [bc], a                                     ; $4cc8: $02
	ld   [hl+], a                                    ; $4cc9: $22
	ld   bc, $0100                                   ; $4cca: $01 $00 $01
	ld   bc, $0202                                   ; $4ccd: $01 $02 $02
	ld   [bc], a                                     ; $4cd0: $02
	ld   [bc], a                                     ; $4cd1: $02
	ld   [bc], a                                     ; $4cd2: $02
	ld   [bc], a                                     ; $4cd3: $02
	ld   [bc], a                                     ; $4cd4: $02
	ld   [bc], a                                     ; $4cd5: $02
	ld   [bc], a                                     ; $4cd6: $02
	ld   [bc], a                                     ; $4cd7: $02
	ld   [bc], a                                     ; $4cd8: $02
	ld   [bc], a                                     ; $4cd9: $02
	ld   [bc], a                                     ; $4cda: $02
	ld   [bc], a                                     ; $4cdb: $02
	ld   [bc], a                                     ; $4cdc: $02
	ld   [hl+], a                                    ; $4cdd: $22
	ld   bc, $0100                                   ; $4cde: $01 $00 $01
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	ld   bc, $0301                                   ; $4cf4: $01 $01 $03
	inc  bc                                          ; $4cf7: $03
	inc  bc                                          ; $4cf8: $03
	inc  bc                                          ; $4cf9: $03
	inc  bc                                          ; $4cfa: $03
	inc  bc                                          ; $4cfb: $03
	inc  bc                                          ; $4cfc: $03
	inc  bc                                          ; $4cfd: $03
	inc  bc                                          ; $4cfe: $03
	inc  bc                                          ; $4cff: $03
	inc  bc                                          ; $4d00: $03
	inc  bc                                          ; $4d01: $03
	inc  bc                                          ; $4d02: $03
	inc  hl                                          ; $4d03: $23
	inc  bc                                          ; $4d04: $03
	inc  hl                                          ; $4d05: $23
	ld   bc, $0100                                   ; $4d06: $01 $00 $01
	ld   bc, $0303                                   ; $4d09: $01 $03 $03
	inc  bc                                          ; $4d0c: $03
	inc  bc                                          ; $4d0d: $03
	inc  bc                                          ; $4d0e: $03
	inc  bc                                          ; $4d0f: $03
	inc  bc                                          ; $4d10: $03
	inc  bc                                          ; $4d11: $03
	inc  bc                                          ; $4d12: $03
	inc  bc                                          ; $4d13: $03
	inc  bc                                          ; $4d14: $03
	inc  bc                                          ; $4d15: $03
	inc  bc                                          ; $4d16: $03
	inc  hl                                          ; $4d17: $23
	inc  bc                                          ; $4d18: $03
	inc  hl                                          ; $4d19: $23
	ld   bc, $0100                                   ; $4d1a: $01 $00 $01
	ld   bc, $0303                                   ; $4d1d: $01 $03 $03
	inc  bc                                          ; $4d20: $03
	inc  bc                                          ; $4d21: $03
	inc  bc                                          ; $4d22: $03
	inc  bc                                          ; $4d23: $03
	inc  bc                                          ; $4d24: $03
	inc  bc                                          ; $4d25: $03
	inc  bc                                          ; $4d26: $03
	inc  bc                                          ; $4d27: $03
	inc  bc                                          ; $4d28: $03
	inc  bc                                          ; $4d29: $03
	inc  bc                                          ; $4d2a: $03
	inc  hl                                          ; $4d2b: $23
	inc  bc                                          ; $4d2c: $03
	inc  hl                                          ; $4d2d: $23
	ld   bc, $0100                                   ; $4d2e: $01 $00 $01
	ld   bc, $0303                                   ; $4d31: $01 $03 $03
	inc  bc                                          ; $4d34: $03
	inc  bc                                          ; $4d35: $03
	inc  bc                                          ; $4d36: $03
	inc  bc                                          ; $4d37: $03
	inc  bc                                          ; $4d38: $03
	inc  bc                                          ; $4d39: $03
	inc  bc                                          ; $4d3a: $03
	inc  bc                                          ; $4d3b: $03
	inc  bc                                          ; $4d3c: $03
	inc  bc                                          ; $4d3d: $03
	inc  bc                                          ; $4d3e: $03
	inc  hl                                          ; $4d3f: $23
	inc  bc                                          ; $4d40: $03
	inc  hl                                          ; $4d41: $23
	ld   bc, $0100                                   ; $4d42: $01 $00 $01
	ld   bc, $0303                                   ; $4d45: $01 $03 $03
	inc  bc                                          ; $4d48: $03
	inc  bc                                          ; $4d49: $03
	inc  bc                                          ; $4d4a: $03
	inc  bc                                          ; $4d4b: $03
	inc  bc                                          ; $4d4c: $03
	inc  bc                                          ; $4d4d: $03
	inc  bc                                          ; $4d4e: $03
	inc  bc                                          ; $4d4f: $03
	inc  bc                                          ; $4d50: $03
	inc  bc                                          ; $4d51: $03
	inc  bc                                          ; $4d52: $03
	inc  hl                                          ; $4d53: $23
	inc  bc                                          ; $4d54: $03
	inc  hl                                          ; $4d55: $23
	ld   bc, $0100                                   ; $4d56: $01 $00 $01
	ld   bc, $0303                                   ; $4d59: $01 $03 $03
	inc  bc                                          ; $4d5c: $03
	inc  bc                                          ; $4d5d: $03
	inc  bc                                          ; $4d5e: $03
	inc  bc                                          ; $4d5f: $03
	inc  bc                                          ; $4d60: $03
	inc  bc                                          ; $4d61: $03
	inc  bc                                          ; $4d62: $03
	inc  bc                                          ; $4d63: $03
	inc  bc                                          ; $4d64: $03
	inc  bc                                          ; $4d65: $03
	inc  bc                                          ; $4d66: $03
	inc  hl                                          ; $4d67: $23
	inc  bc                                          ; $4d68: $03
	inc  hl                                          ; $4d69: $23
	ld   bc, $0100                                   ; $4d6a: $01 $00 $01
	ld   bc, $0303                                   ; $4d6d: $01 $03 $03
	inc  bc                                          ; $4d70: $03
	inc  bc                                          ; $4d71: $03
	inc  bc                                          ; $4d72: $03
	inc  bc                                          ; $4d73: $03
	inc  bc                                          ; $4d74: $03
	inc  bc                                          ; $4d75: $03
	inc  bc                                          ; $4d76: $03
	inc  bc                                          ; $4d77: $03
	inc  bc                                          ; $4d78: $03
	inc  bc                                          ; $4d79: $03
	inc  bc                                          ; $4d7a: $03
	inc  hl                                          ; $4d7b: $23
	inc  bc                                          ; $4d7c: $03
	inc  hl                                          ; $4d7d: $23
	ld   bc, $0100                                   ; $4d7e: $01 $00 $01
	ld   bc, $0303                                   ; $4d81: $01 $03 $03
	inc  bc                                          ; $4d84: $03
	inc  bc                                          ; $4d85: $03
	inc  bc                                          ; $4d86: $03
	inc  bc                                          ; $4d87: $03
	inc  bc                                          ; $4d88: $03
	inc  bc                                          ; $4d89: $03
	inc  bc                                          ; $4d8a: $03
	inc  bc                                          ; $4d8b: $03
	inc  bc                                          ; $4d8c: $03
	inc  bc                                          ; $4d8d: $03
	inc  bc                                          ; $4d8e: $03
	inc  hl                                          ; $4d8f: $23
	inc  bc                                          ; $4d90: $03
	inc  hl                                          ; $4d91: $23
	ld   bc, $0100                                   ; $4d92: $01 $00 $01
	ld   bc, $0303                                   ; $4d95: $01 $03 $03
	inc  bc                                          ; $4d98: $03
	inc  bc                                          ; $4d99: $03
	inc  bc                                          ; $4d9a: $03
	inc  bc                                          ; $4d9b: $03
	inc  bc                                          ; $4d9c: $03
	inc  bc                                          ; $4d9d: $03
	inc  bc                                          ; $4d9e: $03
	inc  bc                                          ; $4d9f: $03
	inc  bc                                          ; $4da0: $03
	inc  bc                                          ; $4da1: $03
	inc  bc                                          ; $4da2: $03
	inc  hl                                          ; $4da3: $23
	inc  bc                                          ; $4da4: $03
	inc  hl                                          ; $4da5: $23
	ld   bc, $0100                                   ; $4da6: $01 $00 $01
	ld   bc, $0303                                   ; $4da9: $01 $03 $03
	inc  bc                                          ; $4dac: $03
	inc  bc                                          ; $4dad: $03
	inc  bc                                          ; $4dae: $03
	inc  bc                                          ; $4daf: $03
	inc  bc                                          ; $4db0: $03
	inc  bc                                          ; $4db1: $03
	inc  bc                                          ; $4db2: $03
	inc  bc                                          ; $4db3: $03
	inc  bc                                          ; $4db4: $03
	inc  bc                                          ; $4db5: $03
	inc  bc                                          ; $4db6: $03
	inc  hl                                          ; $4db7: $23
	inc  bc                                          ; $4db8: $03
	inc  hl                                          ; $4db9: $23
	ld   bc, $0100                                   ; $4dba: $01 $00 $01
	ld   bc, $0303                                   ; $4dbd: $01 $03 $03
	inc  bc                                          ; $4dc0: $03
	inc  bc                                          ; $4dc1: $03
	inc  bc                                          ; $4dc2: $03
	inc  bc                                          ; $4dc3: $03
	inc  bc                                          ; $4dc4: $03
	inc  bc                                          ; $4dc5: $03
	inc  bc                                          ; $4dc6: $03
	inc  bc                                          ; $4dc7: $03
	inc  bc                                          ; $4dc8: $03
	inc  bc                                          ; $4dc9: $03
	inc  bc                                          ; $4dca: $03
	inc  hl                                          ; $4dcb: $23
	inc  bc                                          ; $4dcc: $03
	inc  hl                                          ; $4dcd: $23
	ld   bc, $0100                                   ; $4dce: $01 $00 $01
	ld   bc, $0303                                   ; $4dd1: $01 $03 $03
	inc  bc                                          ; $4dd4: $03
	inc  bc                                          ; $4dd5: $03
	inc  bc                                          ; $4dd6: $03
	inc  bc                                          ; $4dd7: $03
	inc  bc                                          ; $4dd8: $03
	inc  bc                                          ; $4dd9: $03
	inc  bc                                          ; $4dda: $03
	inc  bc                                          ; $4ddb: $03
	inc  bc                                          ; $4ddc: $03
	inc  bc                                          ; $4ddd: $03
	inc  bc                                          ; $4dde: $03
	inc  hl                                          ; $4ddf: $23
	inc  bc                                          ; $4de0: $03
	inc  hl                                          ; $4de1: $23
	ld   bc, $0000                                   ; $4de2: $01 $00 $00
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	nop                                              ; $4dea: $00
	nop                                              ; $4deb: $00
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	nop                                              ; $4df0: $00
	nop                                              ; $4df1: $00
	nop                                              ; $4df2: $00
	nop                                              ; $4df3: $00
	nop                                              ; $4df4: $00
	nop                                              ; $4df5: $00
	nop                                              ; $4df6: $00
	nop                                              ; $4df7: $00
	nop                                              ; $4df8: $00
	nop                                              ; $4df9: $00
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	xor  c                                           ; $4e0c: $a9
	xor  c                                           ; $4e0d: $a9
	xor  c                                           ; $4e0e: $a9
	xor  c                                           ; $4e0f: $a9
	adc  d                                           ; $4e10: $8a
	adc  e                                           ; $4e11: $8b
	sbc  h                                           ; $4e12: $9c
	sbc  h                                           ; $4e13: $9c
	sbc  h                                           ; $4e14: $9c
	sbc  h                                           ; $4e15: $9c
	sbc  h                                           ; $4e16: $9c
	sbc  h                                           ; $4e17: $9c
	sbc  h                                           ; $4e18: $9c
	sbc  h                                           ; $4e19: $9c
	adc  h                                           ; $4e1a: $8c
	adc  l                                           ; $4e1b: $8d
	xor  c                                           ; $4e1c: $a9
	xor  c                                           ; $4e1d: $a9
	xor  c                                           ; $4e1e: $a9
	xor  c                                           ; $4e1f: $a9
	xor  b                                           ; $4e20: $a8
	xor  b                                           ; $4e21: $a8
	xor  b                                           ; $4e22: $a8
	xor  b                                           ; $4e23: $a8
	sbc  d                                           ; $4e24: $9a
	and  b                                           ; $4e25: $a0
	nop                                              ; $4e26: $00
	ld   bc, $0302                                   ; $4e27: $01 $02 $03
	inc  b                                           ; $4e2a: $04
	dec  b                                           ; $4e2b: $05
	ld   b, $07                                      ; $4e2c: $06 $07
	and  b                                           ; $4e2e: $a0
	sbc  l                                           ; $4e2f: $9d
	xor  b                                           ; $4e30: $a8
	xor  b                                           ; $4e31: $a8
	xor  b                                           ; $4e32: $a8
	xor  b                                           ; $4e33: $a8
	and  a                                           ; $4e34: $a7
	sbc  e                                           ; $4e35: $9b
	xor  h                                           ; $4e36: $ac
	xor  h                                           ; $4e37: $ac
	xor  d                                           ; $4e38: $aa
	xor  e                                           ; $4e39: $ab
	db   $10                                         ; $4e3a: $10
	ld   de, $1312                                   ; $4e3b: $11 $12 $13
	inc  d                                           ; $4e3e: $14
	dec  d                                           ; $4e3f: $15
	ld   d, $17                                      ; $4e40: $16 $17
	xor  e                                           ; $4e42: $ab
	xor  l                                           ; $4e43: $ad
	xor  h                                           ; $4e44: $ac
	xor  h                                           ; $4e45: $ac
	sbc  e                                           ; $4e46: $9b
	and  l                                           ; $4e47: $a5
	and  a                                           ; $4e48: $a7
	adc  [hl]                                        ; $4e49: $8e
	and  c                                           ; $4e4a: $a1
	and  b                                           ; $4e4b: $a0
	and  b                                           ; $4e4c: $a0
	and  b                                           ; $4e4d: $a0
	and  b                                           ; $4e4e: $a0
	and  b                                           ; $4e4f: $a0
	and  b                                           ; $4e50: $a0
	and  b                                           ; $4e51: $a0
	and  b                                           ; $4e52: $a0
	and  b                                           ; $4e53: $a0
	and  b                                           ; $4e54: $a0
	and  b                                           ; $4e55: $a0
	and  b                                           ; $4e56: $a0
	and  b                                           ; $4e57: $a0
	and  b                                           ; $4e58: $a0
	and  c                                           ; $4e59: $a1
	adc  a                                           ; $4e5a: $8f
	and  [hl]                                        ; $4e5b: $a6
	and  a                                           ; $4e5c: $a7
	adc  [hl]                                        ; $4e5d: $8e
	and  c                                           ; $4e5e: $a1
	and  b                                           ; $4e5f: $a0
	and  b                                           ; $4e60: $a0
	and  b                                           ; $4e61: $a0
	and  b                                           ; $4e62: $a0
	or   c                                           ; $4e63: $b1
	or   d                                           ; $4e64: $b2
	or   e                                           ; $4e65: $b3
	and  b                                           ; $4e66: $a0
	and  b                                           ; $4e67: $a0
	sbc  a                                           ; $4e68: $9f
	add  b                                           ; $4e69: $80
	add  b                                           ; $4e6a: $80
	sbc  a                                           ; $4e6b: $9f
	and  b                                           ; $4e6c: $a0
	and  c                                           ; $4e6d: $a1
	adc  a                                           ; $4e6e: $8f
	and  [hl]                                        ; $4e6f: $a6
	and  a                                           ; $4e70: $a7
	adc  [hl]                                        ; $4e71: $8e
	and  c                                           ; $4e72: $a1
	and  b                                           ; $4e73: $a0
	and  b                                           ; $4e74: $a0
	and  b                                           ; $4e75: $a0
	and  b                                           ; $4e76: $a0
	pop  bc                                          ; $4e77: $c1
	jp   nz, $a0c3                                   ; $4e78: $c2 $c3 $a0

	and  b                                           ; $4e7b: $a0
	xor  a                                           ; $4e7c: $af
	sub  b                                           ; $4e7d: $90
	sub  b                                           ; $4e7e: $90
	xor  a                                           ; $4e7f: $af
	and  b                                           ; $4e80: $a0
	and  c                                           ; $4e81: $a1
	adc  a                                           ; $4e82: $8f
	and  [hl]                                        ; $4e83: $a6
	and  a                                           ; $4e84: $a7
	adc  [hl]                                        ; $4e85: $8e
	and  c                                           ; $4e86: $a1
	and  b                                           ; $4e87: $a0
	and  b                                           ; $4e88: $a0
	and  b                                           ; $4e89: $a0
	and  b                                           ; $4e8a: $a0
	or   h                                           ; $4e8b: $b4
	or   l                                           ; $4e8c: $b5
	or   [hl]                                        ; $4e8d: $b6
	and  b                                           ; $4e8e: $a0
	and  b                                           ; $4e8f: $a0
	sbc  a                                           ; $4e90: $9f
	add  b                                           ; $4e91: $80
	add  b                                           ; $4e92: $80
	sbc  a                                           ; $4e93: $9f
	and  b                                           ; $4e94: $a0
	and  c                                           ; $4e95: $a1
	adc  a                                           ; $4e96: $8f
	and  [hl]                                        ; $4e97: $a6
	and  a                                           ; $4e98: $a7
	adc  [hl]                                        ; $4e99: $8e
	and  c                                           ; $4e9a: $a1
	and  b                                           ; $4e9b: $a0
	and  b                                           ; $4e9c: $a0
	and  b                                           ; $4e9d: $a0
	and  b                                           ; $4e9e: $a0
	call nz, $c6c5                                   ; $4e9f: $c4 $c5 $c6
	and  b                                           ; $4ea2: $a0
	and  b                                           ; $4ea3: $a0
	xor  a                                           ; $4ea4: $af
	sub  b                                           ; $4ea5: $90
	sub  b                                           ; $4ea6: $90
	xor  a                                           ; $4ea7: $af
	and  b                                           ; $4ea8: $a0
	and  c                                           ; $4ea9: $a1
	adc  a                                           ; $4eaa: $8f
	and  [hl]                                        ; $4eab: $a6
	and  a                                           ; $4eac: $a7
	adc  [hl]                                        ; $4ead: $8e
	and  c                                           ; $4eae: $a1
	and  b                                           ; $4eaf: $a0
	and  b                                           ; $4eb0: $a0
	and  b                                           ; $4eb1: $a0
	and  b                                           ; $4eb2: $a0
	or   a                                           ; $4eb3: $b7
	cp   b                                           ; $4eb4: $b8
	cp   c                                           ; $4eb5: $b9
	and  b                                           ; $4eb6: $a0
	and  b                                           ; $4eb7: $a0
	sbc  a                                           ; $4eb8: $9f
	add  b                                           ; $4eb9: $80
	add  b                                           ; $4eba: $80
	sbc  a                                           ; $4ebb: $9f
	and  b                                           ; $4ebc: $a0
	and  c                                           ; $4ebd: $a1
	adc  a                                           ; $4ebe: $8f
	and  [hl]                                        ; $4ebf: $a6
	and  a                                           ; $4ec0: $a7
	adc  [hl]                                        ; $4ec1: $8e
	and  c                                           ; $4ec2: $a1
	and  b                                           ; $4ec3: $a0
	and  b                                           ; $4ec4: $a0
	and  b                                           ; $4ec5: $a0
	and  b                                           ; $4ec6: $a0
	rst  ToBoot                                         ; $4ec7: $c7
	ret  z                                           ; $4ec8: $c8

	ret                                              ; $4ec9: $c9


	and  b                                           ; $4eca: $a0
	and  b                                           ; $4ecb: $a0
	xor  a                                           ; $4ecc: $af
	sub  b                                           ; $4ecd: $90
	sub  b                                           ; $4ece: $90
	xor  a                                           ; $4ecf: $af
	and  b                                           ; $4ed0: $a0
	and  c                                           ; $4ed1: $a1
	adc  a                                           ; $4ed2: $8f
	and  [hl]                                        ; $4ed3: $a6
	and  a                                           ; $4ed4: $a7
	adc  [hl]                                        ; $4ed5: $8e
	and  c                                           ; $4ed6: $a1
	and  b                                           ; $4ed7: $a0
	and  b                                           ; $4ed8: $a0
	and  b                                           ; $4ed9: $a0
	and  b                                           ; $4eda: $a0
	cp   c                                           ; $4edb: $b9
	cp   d                                           ; $4edc: $ba
	cp   b                                           ; $4edd: $b8
	call nc, $9fa0                                   ; $4ede: $d4 $a0 $9f
	add  b                                           ; $4ee1: $80
	add  b                                           ; $4ee2: $80
	sbc  a                                           ; $4ee3: $9f
	and  b                                           ; $4ee4: $a0
	and  c                                           ; $4ee5: $a1
	adc  a                                           ; $4ee6: $8f
	and  [hl]                                        ; $4ee7: $a6
	and  a                                           ; $4ee8: $a7
	adc  [hl]                                        ; $4ee9: $8e
	and  c                                           ; $4eea: $a1
	and  b                                           ; $4eeb: $a0
	and  b                                           ; $4eec: $a0
	and  b                                           ; $4eed: $a0
	and  b                                           ; $4eee: $a0
	ret                                              ; $4eef: $c9


	jp   z, $d5c8                                    ; $4ef0: $ca $c8 $d5

	and  b                                           ; $4ef3: $a0
	xor  a                                           ; $4ef4: $af
	sub  b                                           ; $4ef5: $90
	sub  b                                           ; $4ef6: $90
	xor  a                                           ; $4ef7: $af
	and  b                                           ; $4ef8: $a0
	and  c                                           ; $4ef9: $a1
	adc  a                                           ; $4efa: $8f
	and  [hl]                                        ; $4efb: $a6
	and  a                                           ; $4efc: $a7
	adc  [hl]                                        ; $4efd: $8e
	and  c                                           ; $4efe: $a1
	and  b                                           ; $4eff: $a0
	and  b                                           ; $4f00: $a0
	and  b                                           ; $4f01: $a0
	and  b                                           ; $4f02: $a0
	cp   e                                           ; $4f03: $bb
	cp   h                                           ; $4f04: $bc
	and  b                                           ; $4f05: $a0
	and  b                                           ; $4f06: $a0
	and  b                                           ; $4f07: $a0
	sbc  a                                           ; $4f08: $9f
	add  b                                           ; $4f09: $80
	add  b                                           ; $4f0a: $80
	sbc  a                                           ; $4f0b: $9f
	and  b                                           ; $4f0c: $a0
	and  c                                           ; $4f0d: $a1
	adc  a                                           ; $4f0e: $8f
	and  [hl]                                        ; $4f0f: $a6
	and  a                                           ; $4f10: $a7
	adc  [hl]                                        ; $4f11: $8e
	and  c                                           ; $4f12: $a1
	and  b                                           ; $4f13: $a0
	and  b                                           ; $4f14: $a0
	and  b                                           ; $4f15: $a0
	and  b                                           ; $4f16: $a0
	set  1, h                                        ; $4f17: $cb $cc
	and  b                                           ; $4f19: $a0
	and  b                                           ; $4f1a: $a0
	and  b                                           ; $4f1b: $a0
	xor  a                                           ; $4f1c: $af
	sub  b                                           ; $4f1d: $90
	sub  b                                           ; $4f1e: $90
	xor  a                                           ; $4f1f: $af
	and  b                                           ; $4f20: $a0
	and  c                                           ; $4f21: $a1
	adc  a                                           ; $4f22: $8f
	and  [hl]                                        ; $4f23: $a6
	and  a                                           ; $4f24: $a7
	adc  [hl]                                        ; $4f25: $8e
	and  c                                           ; $4f26: $a1
	and  b                                           ; $4f27: $a0
	and  b                                           ; $4f28: $a0
	and  b                                           ; $4f29: $a0
	and  b                                           ; $4f2a: $a0
	cp   l                                           ; $4f2b: $bd
	cp   [hl]                                        ; $4f2c: $be
	cp   a                                           ; $4f2d: $bf
	and  b                                           ; $4f2e: $a0
	and  b                                           ; $4f2f: $a0
	sbc  a                                           ; $4f30: $9f
	add  b                                           ; $4f31: $80
	add  b                                           ; $4f32: $80
	sbc  a                                           ; $4f33: $9f
	and  b                                           ; $4f34: $a0
	and  c                                           ; $4f35: $a1
	adc  a                                           ; $4f36: $8f
	and  [hl]                                        ; $4f37: $a6
	and  a                                           ; $4f38: $a7
	adc  [hl]                                        ; $4f39: $8e
	and  c                                           ; $4f3a: $a1
	and  b                                           ; $4f3b: $a0
	and  b                                           ; $4f3c: $a0
	and  b                                           ; $4f3d: $a0
	and  b                                           ; $4f3e: $a0
	call $cfce                                       ; $4f3f: $cd $ce $cf
	and  b                                           ; $4f42: $a0
	and  b                                           ; $4f43: $a0
	xor  a                                           ; $4f44: $af
	sub  b                                           ; $4f45: $90
	sub  b                                           ; $4f46: $90
	xor  a                                           ; $4f47: $af
	and  b                                           ; $4f48: $a0
	and  c                                           ; $4f49: $a1
	adc  a                                           ; $4f4a: $8f
	and  [hl]                                        ; $4f4b: $a6
	and  a                                           ; $4f4c: $a7
	adc  [hl]                                        ; $4f4d: $8e
	and  c                                           ; $4f4e: $a1
	and  b                                           ; $4f4f: $a0
	and  b                                           ; $4f50: $a0
	and  b                                           ; $4f51: $a0
	and  b                                           ; $4f52: $a0
	and  b                                           ; $4f53: $a0
	and  b                                           ; $4f54: $a0
	and  b                                           ; $4f55: $a0
	and  b                                           ; $4f56: $a0
	and  b                                           ; $4f57: $a0
	and  b                                           ; $4f58: $a0
	and  b                                           ; $4f59: $a0
	and  b                                           ; $4f5a: $a0
	and  b                                           ; $4f5b: $a0
	and  b                                           ; $4f5c: $a0
	and  c                                           ; $4f5d: $a1
	adc  a                                           ; $4f5e: $8f
	and  [hl]                                        ; $4f5f: $a6
	and  a                                           ; $4f60: $a7
	and  d                                           ; $4f61: $a2
	and  e                                           ; $4f62: $a3
	and  e                                           ; $4f63: $a3
	and  e                                           ; $4f64: $a3
	and  e                                           ; $4f65: $a3
	and  e                                           ; $4f66: $a3
	and  e                                           ; $4f67: $a3
	and  e                                           ; $4f68: $a3
	and  e                                           ; $4f69: $a3
	and  e                                           ; $4f6a: $a3
	and  e                                           ; $4f6b: $a3
	and  e                                           ; $4f6c: $a3
	and  e                                           ; $4f6d: $a3
	and  e                                           ; $4f6e: $a3
	and  e                                           ; $4f6f: $a3
	and  e                                           ; $4f70: $a3
	and  e                                           ; $4f71: $a3
	and  e                                           ; $4f72: $a3
	and  h                                           ; $4f73: $a4
	and  a                                           ; $4f74: $a7
	adc  [hl]                                        ; $4f75: $8e
	and  c                                           ; $4f76: $a1
	and  b                                           ; $4f77: $a0
	and  b                                           ; $4f78: $a0
	and  b                                           ; $4f79: $a0
	and  b                                           ; $4f7a: $a0
	or   c                                           ; $4f7b: $b1
	or   d                                           ; $4f7c: $b2
	or   e                                           ; $4f7d: $b3
	and  b                                           ; $4f7e: $a0
	and  b                                           ; $4f7f: $a0
	sbc  a                                           ; $4f80: $9f
	add  b                                           ; $4f81: $80
	add  b                                           ; $4f82: $80
	sbc  a                                           ; $4f83: $9f
	and  b                                           ; $4f84: $a0
	and  c                                           ; $4f85: $a1
	adc  a                                           ; $4f86: $8f
	and  [hl]                                        ; $4f87: $a6
	and  a                                           ; $4f88: $a7
	adc  [hl]                                        ; $4f89: $8e
	and  c                                           ; $4f8a: $a1
	and  b                                           ; $4f8b: $a0
	and  b                                           ; $4f8c: $a0
	and  b                                           ; $4f8d: $a0
	and  b                                           ; $4f8e: $a0
	pop  bc                                          ; $4f8f: $c1
	jp   nz, $a0c3                                   ; $4f90: $c2 $c3 $a0

	and  b                                           ; $4f93: $a0
	xor  a                                           ; $4f94: $af
	sub  b                                           ; $4f95: $90
	sub  b                                           ; $4f96: $90
	xor  a                                           ; $4f97: $af
	and  b                                           ; $4f98: $a0
	and  c                                           ; $4f99: $a1
	adc  a                                           ; $4f9a: $8f
	and  [hl]                                        ; $4f9b: $a6
	and  a                                           ; $4f9c: $a7
	adc  [hl]                                        ; $4f9d: $8e
	and  c                                           ; $4f9e: $a1
	and  b                                           ; $4f9f: $a0
	and  b                                           ; $4fa0: $a0
	and  b                                           ; $4fa1: $a0
	and  b                                           ; $4fa2: $a0
	or   h                                           ; $4fa3: $b4
	or   l                                           ; $4fa4: $b5
	or   [hl]                                        ; $4fa5: $b6
	and  b                                           ; $4fa6: $a0
	and  b                                           ; $4fa7: $a0
	sbc  a                                           ; $4fa8: $9f
	add  b                                           ; $4fa9: $80
	add  b                                           ; $4faa: $80
	sbc  a                                           ; $4fab: $9f
	and  b                                           ; $4fac: $a0
	and  c                                           ; $4fad: $a1
	adc  a                                           ; $4fae: $8f
	and  [hl]                                        ; $4faf: $a6
	and  a                                           ; $4fb0: $a7
	adc  [hl]                                        ; $4fb1: $8e
	and  c                                           ; $4fb2: $a1
	and  b                                           ; $4fb3: $a0
	and  b                                           ; $4fb4: $a0
	and  b                                           ; $4fb5: $a0
	and  b                                           ; $4fb6: $a0
	call nz, $c6c5                                   ; $4fb7: $c4 $c5 $c6
	and  b                                           ; $4fba: $a0
	and  b                                           ; $4fbb: $a0
	xor  a                                           ; $4fbc: $af
	sub  b                                           ; $4fbd: $90
	sub  b                                           ; $4fbe: $90
	xor  a                                           ; $4fbf: $af
	and  b                                           ; $4fc0: $a0
	and  c                                           ; $4fc1: $a1
	adc  a                                           ; $4fc2: $8f
	and  [hl]                                        ; $4fc3: $a6
	and  a                                           ; $4fc4: $a7
	adc  [hl]                                        ; $4fc5: $8e
	and  c                                           ; $4fc6: $a1
	and  b                                           ; $4fc7: $a0
	and  b                                           ; $4fc8: $a0
	and  b                                           ; $4fc9: $a0
	and  b                                           ; $4fca: $a0
	or   a                                           ; $4fcb: $b7
	cp   b                                           ; $4fcc: $b8
	cp   c                                           ; $4fcd: $b9
	and  b                                           ; $4fce: $a0
	and  b                                           ; $4fcf: $a0
	sbc  a                                           ; $4fd0: $9f
	add  b                                           ; $4fd1: $80
	add  b                                           ; $4fd2: $80
	sbc  a                                           ; $4fd3: $9f
	and  b                                           ; $4fd4: $a0
	and  c                                           ; $4fd5: $a1
	adc  a                                           ; $4fd6: $8f
	and  [hl]                                        ; $4fd7: $a6
	and  a                                           ; $4fd8: $a7
	adc  [hl]                                        ; $4fd9: $8e
	and  c                                           ; $4fda: $a1
	and  b                                           ; $4fdb: $a0
	and  b                                           ; $4fdc: $a0
	and  b                                           ; $4fdd: $a0
	and  b                                           ; $4fde: $a0
	rst  ToBoot                                         ; $4fdf: $c7
	ret  z                                           ; $4fe0: $c8

	ret                                              ; $4fe1: $c9


	and  b                                           ; $4fe2: $a0
	and  b                                           ; $4fe3: $a0
	xor  a                                           ; $4fe4: $af
	sub  b                                           ; $4fe5: $90
	sub  b                                           ; $4fe6: $90
	xor  a                                           ; $4fe7: $af
	and  b                                           ; $4fe8: $a0
	and  c                                           ; $4fe9: $a1
	adc  a                                           ; $4fea: $8f
	and  [hl]                                        ; $4feb: $a6
	and  a                                           ; $4fec: $a7
	adc  [hl]                                        ; $4fed: $8e
	and  c                                           ; $4fee: $a1
	and  b                                           ; $4fef: $a0
	and  b                                           ; $4ff0: $a0
	and  b                                           ; $4ff1: $a0
	and  b                                           ; $4ff2: $a0
	cp   c                                           ; $4ff3: $b9
	cp   d                                           ; $4ff4: $ba
	cp   b                                           ; $4ff5: $b8
	call nc, $9fa0                                   ; $4ff6: $d4 $a0 $9f
	add  b                                           ; $4ff9: $80
	add  b                                           ; $4ffa: $80
	sbc  a                                           ; $4ffb: $9f
	and  b                                           ; $4ffc: $a0
	and  c                                           ; $4ffd: $a1
	adc  a                                           ; $4ffe: $8f
	and  [hl]                                        ; $4fff: $a6
	and  a                                           ; $5000: $a7
	adc  [hl]                                        ; $5001: $8e
	and  c                                           ; $5002: $a1
	and  b                                           ; $5003: $a0
	and  b                                           ; $5004: $a0
	and  b                                           ; $5005: $a0
	and  b                                           ; $5006: $a0
	ret                                              ; $5007: $c9


	jp   z, $d5c8                                    ; $5008: $ca $c8 $d5

	and  b                                           ; $500b: $a0
	xor  a                                           ; $500c: $af
	sub  b                                           ; $500d: $90
	sub  b                                           ; $500e: $90
	xor  a                                           ; $500f: $af
	and  b                                           ; $5010: $a0
	and  c                                           ; $5011: $a1
	adc  a                                           ; $5012: $8f
	and  [hl]                                        ; $5013: $a6
	and  a                                           ; $5014: $a7
	adc  [hl]                                        ; $5015: $8e
	and  c                                           ; $5016: $a1
	and  b                                           ; $5017: $a0
	and  b                                           ; $5018: $a0
	and  b                                           ; $5019: $a0
	and  b                                           ; $501a: $a0
	cp   e                                           ; $501b: $bb
	cp   h                                           ; $501c: $bc
	and  b                                           ; $501d: $a0
	and  b                                           ; $501e: $a0
	and  b                                           ; $501f: $a0
	sbc  a                                           ; $5020: $9f
	add  b                                           ; $5021: $80
	add  b                                           ; $5022: $80
	sbc  a                                           ; $5023: $9f
	and  b                                           ; $5024: $a0
	and  c                                           ; $5025: $a1
	adc  a                                           ; $5026: $8f
	and  [hl]                                        ; $5027: $a6
	and  a                                           ; $5028: $a7
	adc  [hl]                                        ; $5029: $8e
	and  c                                           ; $502a: $a1
	and  b                                           ; $502b: $a0
	and  b                                           ; $502c: $a0
	and  b                                           ; $502d: $a0
	and  b                                           ; $502e: $a0
	set  1, h                                        ; $502f: $cb $cc
	and  b                                           ; $5031: $a0
	and  b                                           ; $5032: $a0
	and  b                                           ; $5033: $a0
	xor  a                                           ; $5034: $af
	sub  b                                           ; $5035: $90
	sub  b                                           ; $5036: $90
	xor  a                                           ; $5037: $af
	and  b                                           ; $5038: $a0
	and  c                                           ; $5039: $a1
	adc  a                                           ; $503a: $8f
	and  [hl]                                        ; $503b: $a6
	and  a                                           ; $503c: $a7
	adc  [hl]                                        ; $503d: $8e
	and  c                                           ; $503e: $a1
	and  b                                           ; $503f: $a0
	and  b                                           ; $5040: $a0
	and  b                                           ; $5041: $a0
	and  b                                           ; $5042: $a0
	cp   l                                           ; $5043: $bd
	cp   [hl]                                        ; $5044: $be
	cp   a                                           ; $5045: $bf
	and  b                                           ; $5046: $a0
	and  b                                           ; $5047: $a0
	sbc  a                                           ; $5048: $9f
	add  b                                           ; $5049: $80
	add  b                                           ; $504a: $80
	sbc  a                                           ; $504b: $9f
	and  b                                           ; $504c: $a0
	and  c                                           ; $504d: $a1
	adc  a                                           ; $504e: $8f
	and  [hl]                                        ; $504f: $a6
	and  a                                           ; $5050: $a7
	adc  [hl]                                        ; $5051: $8e
	and  c                                           ; $5052: $a1
	and  b                                           ; $5053: $a0
	and  b                                           ; $5054: $a0
	and  b                                           ; $5055: $a0
	and  b                                           ; $5056: $a0
	call $cfce                                       ; $5057: $cd $ce $cf
	and  b                                           ; $505a: $a0
	and  b                                           ; $505b: $a0
	xor  a                                           ; $505c: $af
	sub  b                                           ; $505d: $90
	sub  b                                           ; $505e: $90
	xor  a                                           ; $505f: $af
	and  b                                           ; $5060: $a0
	and  c                                           ; $5061: $a1
	adc  a                                           ; $5062: $8f
	and  [hl]                                        ; $5063: $a6
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	nop                                              ; $506b: $00
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	nop                                              ; $506f: $00
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	nop                                              ; $507c: $00
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	adc  b                                           ; $508c: $88
	ld   bc, $ff00                                   ; $508d: $01 $00 $ff
	add  l                                           ; $5090: $85
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	rrca                                             ; $5093: $0f
	add  l                                           ; $5094: $85
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	rrca                                             ; $5097: $0f
	add  l                                           ; $5098: $85
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	rst  $38                                         ; $509b: $ff
	add  l                                           ; $509c: $85
	nop                                              ; $509d: $00
	nop                                              ; $509e: $00
	rst  $38                                         ; $509f: $ff
	add  l                                           ; $50a0: $85
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	rst  $38                                         ; $50a3: $ff
	add  b                                           ; $50a4: $80
	ccf                                              ; $50a5: $3f
	add  b                                           ; $50a6: $80
	ld   a, [hl+]                                    ; $50a7: $2a
	add  c                                           ; $50a8: $81
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	rst  $38                                         ; $50ab: $ff
	add  l                                           ; $50ac: $85
	nop                                              ; $50ad: $00
	add  c                                           ; $50ae: $81
	rst  $38                                         ; $50af: $ff
	add  b                                           ; $50b0: $80
	xor  a                                           ; $50b1: $af
	add  b                                           ; $50b2: $80
	rla                                              ; $50b3: $17
	ld   bc, $fd02                                   ; $50b4: $01 $02 $fd
	add  l                                           ; $50b7: $85
	nop                                              ; $50b8: $00
	ld   [bc], a                                     ; $50b9: $02
	cp   $ff                                         ; $50ba: $fe $ff
	cp   $82                                         ; $50bc: $fe $82
	rst  $38                                         ; $50be: $ff
	ld   bc, $40bf                                   ; $50bf: $01 $bf $40
	add  l                                           ; $50c2: $85
	nop                                              ; $50c3: $00
	inc  b                                           ; $50c4: $04
	xor  d                                           ; $50c5: $aa
	rst  $38                                         ; $50c6: $ff
	xor  b                                           ; $50c7: $a8
	rst  $38                                         ; $50c8: $ff
	db   $fd                                         ; $50c9: $fd
	add  c                                           ; $50ca: $81
	rst  $38                                         ; $50cb: $ff
	add  [hl]                                        ; $50cc: $86
	nop                                              ; $50cd: $00
	rlca                                             ; $50ce: $07
	xor  b                                           ; $50cf: $a8
	rst  $38                                         ; $50d0: $ff
	ld   [bc], a                                     ; $50d1: $02
	rst  $38                                         ; $50d2: $ff
	ld   d, b                                        ; $50d3: $50
	rst  $38                                         ; $50d4: $ff
	ld   a, [$87ff]                                  ; $50d5: $fa $ff $87
	nop                                              ; $50d8: $00
	rlca                                             ; $50d9: $07
	rst  $38                                         ; $50da: $ff
	cp   a                                           ; $50db: $bf
	rst  $38                                         ; $50dc: $ff
	rra                                              ; $50dd: $1f
	rst  $38                                         ; $50de: $ff
	adc  d                                           ; $50df: $8a
	rst  $38                                         ; $50e0: $ff
	ld   a, [hl+]                                    ; $50e1: $2a
	add  [hl]                                        ; $50e2: $86
	nop                                              ; $50e3: $00
	add  e                                           ; $50e4: $83
	rst  $38                                         ; $50e5: $ff
	ld   [bc], a                                     ; $50e6: $02
	xor  a                                           ; $50e7: $af
	rst  $38                                         ; $50e8: $ff
	xor  a                                           ; $50e9: $af
	add  [hl]                                        ; $50ea: $86
	nop                                              ; $50eb: $00
	add  [hl]                                        ; $50ec: $86
	rst  $38                                         ; $50ed: $ff
	add  [hl]                                        ; $50ee: $86
	nop                                              ; $50ef: $00
	add  [hl]                                        ; $50f0: $86
	rst  $38                                         ; $50f1: $ff
	add  [hl]                                        ; $50f2: $86
	nop                                              ; $50f3: $00
	add  [hl]                                        ; $50f4: $86
	rst  $38                                         ; $50f5: $ff
	add  [hl]                                        ; $50f6: $86
	nop                                              ; $50f7: $00
	add  [hl]                                        ; $50f8: $86
	rst  $38                                         ; $50f9: $ff
	add  [hl]                                        ; $50fa: $86
	nop                                              ; $50fb: $00
	add  l                                           ; $50fc: $85
	ldh  a, [rDIV]                                   ; $50fd: $f0 $04
	dec  c                                           ; $50ff: $0d
	rst  $38                                         ; $5100: $ff
	db   $fc                                         ; $5101: $fc
	cp   a                                           ; $5102: $bf
	cp   [hl]                                        ; $5103: $be
	add  b                                           ; $5104: $80
	ld   d, a                                        ; $5105: $57
	add  b                                           ; $5106: $80
	xor  e                                           ; $5107: $ab
	add  b                                           ; $5108: $80
	ld   d, l                                        ; $5109: $55
	add  b                                           ; $510a: $80
	ld   a, [hl+]                                    ; $510b: $2a
	add  b                                           ; $510c: $80
	dec  d                                           ; $510d: $15
	add  hl, bc                                      ; $510e: $09
	ld   a, [bc]                                     ; $510f: $0a
	push af                                          ; $5110: $f5
	ldh  a, [rSVBK]                                  ; $5111: $f0 $70
	ldh  a, [$b0]                                    ; $5113: $f0 $b0
	ldh  a, [$d0]                                    ; $5115: $f0 $d0
	ldh  a, [$e0]                                    ; $5117: $f0 $e0
	add  l                                           ; $5119: $85
	ldh  a, [rP1]                                    ; $511a: $f0 $00
	rrca                                             ; $511c: $0f
	adc  l                                           ; $511d: $8d
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	ldh  a, [$80]                                    ; $5120: $f0 $80
	dec  d                                           ; $5122: $15
	add  b                                           ; $5123: $80
	ld   [bc], a                                     ; $5124: $02
	adc  d                                           ; $5125: $8a
	nop                                              ; $5126: $00
	add  b                                           ; $5127: $80
	ld   e, a                                        ; $5128: $5f
	add  b                                           ; $5129: $80
	xor  d                                           ; $512a: $aa
	add  b                                           ; $512b: $80
	ld   d, l                                        ; $512c: $55
	add  b                                           ; $512d: $80
	ld   a, [bc]                                     ; $512e: $0a
	add  b                                           ; $512f: $80
	ld   bc, $0084                                   ; $5130: $01 $84 $00
	add  d                                           ; $5133: $82
	rst  $38                                         ; $5134: $ff
	add  b                                           ; $5135: $80
	ld   d, a                                        ; $5136: $57
	add  b                                           ; $5137: $80
	xor  d                                           ; $5138: $aa
	add  b                                           ; $5139: $80
	ld   d, l                                        ; $513a: $55
	add  b                                           ; $513b: $80
	ld   a, [bc]                                     ; $513c: $0a
	add  c                                           ; $513d: $81
	nop                                              ; $513e: $00
	ld   [bc], a                                     ; $513f: $02
	ld   bc, $feff                                   ; $5140: $01 $ff $fe
	add  d                                           ; $5143: $82
	rst  $38                                         ; $5144: $ff
	add  b                                           ; $5145: $80
	cp   a                                           ; $5146: $bf
	add  b                                           ; $5147: $80
	ld   d, l                                        ; $5148: $55
	add  b                                           ; $5149: $80
	xor  d                                           ; $514a: $aa
	add  b                                           ; $514b: $80
	dec  d                                           ; $514c: $15
	dec  b                                           ; $514d: $05
	nop                                              ; $514e: $00
	ld   d, l                                        ; $514f: $55
	rst  $38                                         ; $5150: $ff
	and  b                                           ; $5151: $a0
	rst  $38                                         ; $5152: $ff
	push af                                          ; $5153: $f5
	add  h                                           ; $5154: $84
	rst  $38                                         ; $5155: $ff
	add  b                                           ; $5156: $80
	cp   a                                           ; $5157: $bf
	add  b                                           ; $5158: $80
	ld   d, a                                        ; $5159: $57
	add  hl, bc                                      ; $515a: $09
	dec  hl                                          ; $515b: $2b
	ld   [hl], h                                     ; $515c: $74
	rst  $38                                         ; $515d: $ff
	ld   a, [bc]                                     ; $515e: $0a
	rst  $38                                         ; $515f: $ff
	nop                                              ; $5160: $00
	rst  $38                                         ; $5161: $ff
	xor  b                                           ; $5162: $a8
	rst  $38                                         ; $5163: $ff
	db   $fd                                         ; $5164: $fd
	add  l                                           ; $5165: $85
	rst  $38                                         ; $5166: $ff
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	add  c                                           ; $5169: $81
	rst  $38                                         ; $516a: $ff
	inc  c                                           ; $516b: $0c
	ld   e, a                                        ; $516c: $5f
	rst  $38                                         ; $516d: $ff
	dec  bc                                          ; $516e: $0b
	rst  $38                                         ; $516f: $ff
	ld   bc, $80ff                                   ; $5170: $01 $ff $80
	rst  $38                                         ; $5173: $ff
	ret  nc                                          ; $5174: $d0

	rst  $38                                         ; $5175: $ff
	ld   hl, sp-$01                                  ; $5176: $f8 $ff
	ld   [bc], a                                     ; $5178: $02
	adc  c                                           ; $5179: $89
	rst  $38                                         ; $517a: $ff
	ld   [bc], a                                     ; $517b: $02
	ld   a, a                                        ; $517c: $7f
	rst  $38                                         ; $517d: $ff
	ld   a, a                                        ; $517e: $7f
	sub  b                                           ; $517f: $90
	rst  $38                                         ; $5180: $ff
	adc  l                                           ; $5181: $8d
	ldh  a, [rP1]                                    ; $5182: $f0 $00
	rrca                                             ; $5184: $0f
	add  b                                           ; $5185: $80
	dec  d                                           ; $5186: $15
	add  b                                           ; $5187: $80
	ld   a, [bc]                                     ; $5188: $0a
	add  b                                           ; $5189: $80
	dec  b                                           ; $518a: $05
	adc  b                                           ; $518b: $88
	nop                                              ; $518c: $00
	add  d                                           ; $518d: $82
	rst  $38                                         ; $518e: $ff
	add  b                                           ; $518f: $80
	ld   e, a                                        ; $5190: $5f
	add  b                                           ; $5191: $80
	xor  e                                           ; $5192: $ab
	add  b                                           ; $5193: $80
	ld   d, l                                        ; $5194: $55
	add  b                                           ; $5195: $80
	ld   a, [bc]                                     ; $5196: $0a
	add  b                                           ; $5197: $80
	ld   bc, $0007                                   ; $5198: $01 $07 $00
	ld   bc, $fcff                                   ; $519b: $01 $ff $fc
	rst  $38                                         ; $519e: $ff
	db   $fc                                         ; $519f: $fc
	rst  $38                                         ; $51a0: $ff
	cp   $82                                         ; $51a1: $fe $82
	rst  $38                                         ; $51a3: $ff
	add  b                                           ; $51a4: $80
	cp   a                                           ; $51a5: $bf
	add  b                                           ; $51a6: $80
	ld   d, l                                        ; $51a7: $55
	ld   de, $550a                                   ; $51a8: $11 $0a $55
	rst  $38                                         ; $51ab: $ff
	rrca                                             ; $51ac: $0f
	rst  $38                                         ; $51ad: $ff
	rlca                                             ; $51ae: $07
	rst  $38                                         ; $51af: $ff
	inc  bc                                          ; $51b0: $03
	rst  $38                                         ; $51b1: $ff
	ld   b, c                                        ; $51b2: $41
	rst  $38                                         ; $51b3: $ff
	ldh  [rIE], a                                    ; $51b4: $e0 $ff
	db   $f4                                         ; $51b6: $f4
	rst  $38                                         ; $51b7: $ff
	cp   $af                                         ; $51b8: $fe $af
	and  b                                           ; $51ba: $a0
	add  b                                           ; $51bb: $80
	ld   [hl], b                                     ; $51bc: $70
	add  b                                           ; $51bd: $80
	or   b                                           ; $51be: $b0
	add  b                                           ; $51bf: $80
	ld   d, b                                        ; $51c0: $50
	add  b                                           ; $51c1: $80
	or   b                                           ; $51c2: $b0
	add  b                                           ; $51c3: $80
	ld   d, b                                        ; $51c4: $50
	add  b                                           ; $51c5: $80
	or   b                                           ; $51c6: $b0
	add  b                                           ; $51c7: $80
	ld   d, b                                        ; $51c8: $50
	ld   bc, $40b0                                   ; $51c9: $01 $b0 $40
	add  a                                           ; $51cc: $87
	rst  $38                                         ; $51cd: $ff
	ld   b, $bf                                      ; $51ce: $06 $bf
	rst  $38                                         ; $51d0: $ff
	ccf                                              ; $51d1: $3f
	rst  $38                                         ; $51d2: $ff
	cpl                                              ; $51d3: $2f
	rst  $38                                         ; $51d4: $ff
	xor  a                                           ; $51d5: $af
	adc  l                                           ; $51d6: $8d
	ldh  a, [rP1]                                    ; $51d7: $f0 $00
	rrca                                             ; $51d9: $0f
	add  c                                           ; $51da: $81
	nop                                              ; $51db: $00
	dec  c                                           ; $51dc: $0d
	ld   b, $07                                      ; $51dd: $06 $07
	inc  c                                           ; $51df: $0c
	rrca                                             ; $51e0: $0f
	add  hl, bc                                      ; $51e1: $09
	rrca                                             ; $51e2: $0f
	dec  c                                           ; $51e3: $0d
	rrca                                             ; $51e4: $0f
	inc  d                                           ; $51e5: $14
	rra                                              ; $51e6: $1f
	inc  e                                           ; $51e7: $1c
	dec  de                                          ; $51e8: $1b
	ld   a, [bc]                                     ; $51e9: $0a
	nop                                              ; $51ea: $00
	add  b                                           ; $51eb: $80
	ld   hl, sp+$02                                  ; $51ec: $f8 $02
	cp   $c6                                         ; $51ee: $fe $c6
	ld   b, [hl]                                     ; $51f0: $46
	add  b                                           ; $51f1: $80
	di                                               ; $51f2: $f3
	add  b                                           ; $51f3: $80
	ei                                               ; $51f4: $fb
	ld   bc, $fcff                                   ; $51f5: $01 $ff $fc
	add  b                                           ; $51f8: $80
	rst  $38                                         ; $51f9: $ff
	ld   bc, $027f                                   ; $51fa: $01 $7f $02
	add  l                                           ; $51fd: $85
	nop                                              ; $51fe: $00
	add  b                                           ; $51ff: $80
	ret  nz                                          ; $5200: $c0

	add  b                                           ; $5201: $80
	ldh  [rTMA], a                                   ; $5202: $e0 $06
	ldh  a, [$90]                                    ; $5204: $f0 $90
	sbc  b                                           ; $5206: $98
	adc  b                                           ; $5207: $88
	ld   h, d                                        ; $5208: $62
	dec  de                                          ; $5209: $1b
	add  hl, de                                      ; $520a: $19
	add  c                                           ; $520b: $81
	dec  de                                          ; $520c: $1b
	nop                                              ; $520d: $00
	inc  hl                                          ; $520e: $23
	add  b                                           ; $520f: $80
	dec  sp                                          ; $5210: $3b
	add  b                                           ; $5211: $80
	ld   a, [hl-]                                    ; $5212: $3a
	rla                                              ; $5213: $17
	inc  a                                           ; $5214: $3c
	jr   nz, @+$3e                                   ; $5215: $20 $3c

	ld   a, h                                        ; $5217: $7c
	ld   a, [hl]                                     ; $5218: $7e
	ld   sp, $177f                                   ; $5219: $31 $7f $17
	ld   a, a                                        ; $521c: $7f
	dec  bc                                          ; $521d: $0b
	ld   [hl], a                                     ; $521e: $77
	rlca                                             ; $521f: $07
	ld   [hl], a                                     ; $5220: $77
	daa                                              ; $5221: $27
	rst  $28                                         ; $5222: $ef
	db   $e3                                         ; $5223: $e3
	rst  $28                                         ; $5224: $ef
	pop  hl                                          ; $5225: $e1
	rst  JumpTable                                         ; $5226: $df
	jp   nc, $ac5c                                   ; $5227: $d2 $5c $ac

	ret  nz                                          ; $522a: $c0

	call nz, $e480                                   ; $522b: $c4 $80 $e4
	add  b                                           ; $522e: $80
	ldh  [$09], a                                    ; $522f: $e0 $09
	ldh  a, [$fc]                                    ; $5231: $f0 $fc
	cp   $c0                                         ; $5233: $fe $c0
	ldh  a, [rSB]                                    ; $5235: $f0 $01
	ld   sp, hl                                      ; $5237: $f9
	add  hl, sp                                      ; $5238: $39
	ld   hl, sp+$07                                  ; $5239: $f8 $07
	sub  a                                           ; $523b: $97
	nop                                              ; $523c: $00
	add  h                                           ; $523d: $84
	ld   bc, $7620                                   ; $523e: $01 $20 $76
	ld   a, [hl]                                     ; $5241: $7e
	ld   [hl], d                                     ; $5242: $72
	ld   a, a                                        ; $5243: $7f
	cp   $ff                                         ; $5244: $fe $ff
	push af                                          ; $5246: $f5
	db   $fd                                         ; $5247: $fd
	db   $e4                                         ; $5248: $e4
	cp   $e2                                         ; $5249: $fe $e2
	cp   $e2                                         ; $524b: $fe $e2
	rst  $38                                         ; $524d: $ff
	rst  ToBoot                                         ; $524e: $c7
	rst  $38                                         ; $524f: $ff
	ld   l, $33                                      ; $5250: $2e $33
	jr   nc, jr_034_5263                             ; $5252: $30 $0f

	inc  c                                           ; $5254: $0c
	rra                                              ; $5255: $1f
	sbc  [hl]                                        ; $5256: $9e
	xor  a                                           ; $5257: $af
	rst  $28                                         ; $5258: $ef
	ret  nc                                          ; $5259: $d0

	ld   [hl], b                                     ; $525a: $70
	daa                                              ; $525b: $27
	ld   a, a                                        ; $525c: $7f
	add  hl, de                                      ; $525d: $19
	ccf                                              ; $525e: $3f
	cpl                                              ; $525f: $2f
	adc  $81                                         ; $5260: $ce $81
	db   $fc                                         ; $5262: $fc

jr_034_5263:
	inc  c                                           ; $5263: $0c
	ld   a, h                                        ; $5264: $7c
	db   $fc                                         ; $5265: $fc
	inc  a                                           ; $5266: $3c
	db   $fc                                         ; $5267: $fc
	ld   b, h                                        ; $5268: $44
	ld   a, [hl]                                     ; $5269: $7e
	ld   [hl], a                                     ; $526a: $77
	ei                                               ; $526b: $fb
	set  6, c                                        ; $526c: $cb $f1
	jr   nc, @-$1d                                   ; $526e: $30 $e1

	sbc  [hl]                                        ; $5270: $9e
	add  b                                           ; $5271: $80
	add  b                                           ; $5272: $80
	add  h                                           ; $5273: $84
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	add  b                                           ; $5276: $80
	add  h                                           ; $5277: $84
	nop                                              ; $5278: $00
	add  d                                           ; $5279: $82
	inc  bc                                          ; $527a: $03
	ld   [de], a                                     ; $527b: $12
	ld   [bc], a                                     ; $527c: $02
	rlca                                             ; $527d: $07
	dec  c                                           ; $527e: $0d
	rrca                                             ; $527f: $0f
	dec  bc                                          ; $5280: $0b
	rrca                                             ; $5281: $0f
	dec  d                                           ; $5282: $15
	rra                                              ; $5283: $1f
	ld   de, $243c                                   ; $5284: $11 $3c $24
	nop                                              ; $5287: $00
	and  b                                           ; $5288: $a0
	rst  $38                                         ; $5289: $ff
	rra                                              ; $528a: $1f
	rst  $38                                         ; $528b: $ff
	ccf                                              ; $528c: $3f
	cp   $7e                                         ; $528d: $fe $7e
	add  b                                           ; $528f: $80
	ldh  [$80], a                                    ; $5290: $e0 $80
	add  b                                           ; $5292: $80
	add  c                                           ; $5293: $81
	nop                                              ; $5294: $00
	add  b                                           ; $5295: $80
	rlca                                             ; $5296: $07
	inc  b                                           ; $5297: $04
	rrca                                             ; $5298: $0f
	sub  c                                           ; $5299: $91
	sbc  a                                           ; $529a: $9f
	rst  ToBoot                                         ; $529b: $c7
	add  $80                                         ; $529c: $c6 $80
	ld   bc, $0085                                   ; $529e: $01 $85 $00
	add  b                                           ; $52a1: $80
	add  b                                           ; $52a2: $80
	dec  b                                           ; $52a3: $05
	rst  $38                                         ; $52a4: $ff
	pop  bc                                          ; $52a5: $c1
	ret  nz                                          ; $52a6: $c0

	ld   [bc], a                                     ; $52a7: $02
	inc  b                                           ; $52a8: $04
	ld   hl, sp-$59                                  ; $52a9: $f8 $a7
	nop                                              ; $52ab: $00
	ld   bc, $3c07                                   ; $52ac: $01 $07 $3c
	add  c                                           ; $52af: $81
	ccf                                              ; $52b0: $3f
	add  b                                           ; $52b1: $80
	inc  a                                           ; $52b2: $3c
	nop                                              ; $52b3: $00
	inc  b                                           ; $52b4: $04
	add  b                                           ; $52b5: $80
	nop                                              ; $52b6: $00
	add  b                                           ; $52b7: $80
	rst  $38                                         ; $52b8: $ff
	add  b                                           ; $52b9: $80
	nop                                              ; $52ba: $00
	add  b                                           ; $52bb: $80
	jr   c, jr_034_52bf                              ; $52bc: $38 $01

	rst  $38                                         ; $52be: $ff

jr_034_52bf:
	ld   [$ff81], sp                                 ; $52bf: $08 $81 $ff
	nop                                              ; $52c2: $00
	add  hl, bc                                      ; $52c3: $09
	add  b                                           ; $52c4: $80
	ld   bc, $0003                                   ; $52c5: $01 $03 $00
	ld   a, $ff                                      ; $52c8: $3e $ff
	ret  nz                                          ; $52ca: $c0

	add  c                                           ; $52cb: $81
	ld   c, $02                                      ; $52cc: $0e $02
	ld   l, l                                        ; $52ce: $6d
	rst  $28                                         ; $52cf: $ef
	ld   c, h                                        ; $52d0: $4c
	add  c                                           ; $52d1: $81
	ld   b, b                                        ; $52d2: $40
	nop                                              ; $52d3: $00
	add  b                                           ; $52d4: $80
	add  c                                           ; $52d5: $81
	nop                                              ; $52d6: $00
	ld   [bc], a                                     ; $52d7: $02
	rst  $38                                         ; $52d8: $ff
	rlca                                             ; $52d9: $07
	ld   hl, sp-$7f                                  ; $52da: $f8 $81
	nop                                              ; $52dc: $00
	add  b                                           ; $52dd: $80
	rst  $38                                         ; $52de: $ff
	add  [hl]                                        ; $52df: $86
	nop                                              ; $52e0: $00
	ld   [bc], a                                     ; $52e1: $02
	ldh  [rIE], a                                    ; $52e2: $e0 $ff
	rra                                              ; $52e4: $1f
	add  c                                           ; $52e5: $81
	nop                                              ; $52e6: $00
	add  b                                           ; $52e7: $80
	rst  $38                                         ; $52e8: $ff
	adc  h                                           ; $52e9: $8c
	nop                                              ; $52ea: $00
	add  b                                           ; $52eb: $80
	ret  nz                                          ; $52ec: $c0

	nop                                              ; $52ed: $00
	ld   l, a                                        ; $52ee: $6f
	add  b                                           ; $52ef: $80
	ld   h, c                                        ; $52f0: $61
	add  c                                           ; $52f1: $81
	ld   l, a                                        ; $52f2: $6f
	nop                                              ; $52f3: $00
	nop                                              ; $52f4: $00
	add  b                                           ; $52f5: $80
	ld   [bc], a                                     ; $52f6: $02
	add  [hl]                                        ; $52f7: $86
	inc  bc                                          ; $52f8: $03
	add  b                                           ; $52f9: $80
	ld   a, a                                        ; $52fa: $7f
	ld   e, $00                                      ; $52fb: $1e $00
	ld   d, d                                        ; $52fd: $52
	ld   e, a                                        ; $52fe: $5f
	ld   h, h                                        ; $52ff: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5300: $cf
	jp   nc, $2a67                                   ; $5301: $d2 $67 $2a

	or   c                                           ; $5304: $b1
	ld   d, h                                        ; $5305: $54
	reti                                             ; $5306: $d9


	ld   [$f7dd], sp                                 ; $5307: $08 $dd $f7
	rst  $28                                         ; $530a: $ef
	ret  z                                           ; $530b: $c8

	nop                                              ; $530c: $00
	ld   l, [hl]                                     ; $530d: $6e
	rst  $28                                         ; $530e: $ef
	ld   [$01ef], sp                                 ; $530f: $08 $ef $01
	rst  $28                                         ; $5312: $ef
	add  [hl]                                        ; $5313: $86
	rst  $28                                         ; $5314: $ef
	ld   c, b                                        ; $5315: $48
	rst  $28                                         ; $5316: $ef
	ld   hl, $77ef                                   ; $5317: $21 $ef $77
	rst  $38                                         ; $531a: $ff
	add  b                                           ; $531b: $80
	nop                                              ; $531c: $00
	dec  c                                           ; $531d: $0d
	ld   l, e                                        ; $531e: $6b
	rst  $38                                         ; $531f: $ff
	ld   b, c                                        ; $5320: $41
	rst  $38                                         ; $5321: $ff
	rlca                                             ; $5322: $07
	rst  $38                                         ; $5323: $ff
	add  hl, hl                                      ; $5324: $29
	rst  $38                                         ; $5325: $ff
	add  d                                           ; $5326: $82
	rst  $38                                         ; $5327: $ff
	nop                                              ; $5328: $00
	rst  $38                                         ; $5329: $ff
	ld   a, c                                        ; $532a: $79
	rst  $38                                         ; $532b: $ff
	add  b                                           ; $532c: $80
	nop                                              ; $532d: $00
	dec  c                                           ; $532e: $0d
	ld   a, a                                        ; $532f: $7f
	rst  $38                                         ; $5330: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5331: $cf
	rst  $38                                         ; $5332: $ff
	dec  bc                                          ; $5333: $0b
	rst  $38                                         ; $5334: $ff
	inc  hl                                          ; $5335: $23
	rst  $38                                         ; $5336: $ff
	ld   b, c                                        ; $5337: $41
	rst  $38                                         ; $5338: $ff
	nop                                              ; $5339: $00
	rst  $38                                         ; $533a: $ff
	ld   e, c                                        ; $533b: $59
	add  b                                           ; $533c: $80
	add  b                                           ; $533d: $80
	nop                                              ; $533e: $00
	adc  d                                           ; $533f: $8a
	add  b                                           ; $5340: $80
	nop                                              ; $5341: $00
	ldh  a, [$8c]                                    ; $5342: $f0 $8c
	nop                                              ; $5344: $00
	ld   bc, $ff0f                                   ; $5345: $01 $0f $ff
	add  d                                           ; $5348: $82
	inc  bc                                          ; $5349: $03
	add  b                                           ; $534a: $80
	ld   bc, $0280                                   ; $534b: $01 $80 $02
	add  b                                           ; $534e: $80
	nop                                              ; $534f: $00
	add  b                                           ; $5350: $80
	inc  bc                                          ; $5351: $03
	add  b                                           ; $5352: $80
	rlca                                             ; $5353: $07
	add  b                                           ; $5354: $80
	ld   hl, sp+$05                                  ; $5355: $f8 $05
	pop  hl                                          ; $5357: $e1
	ld   [hl], c                                     ; $5358: $71
	rst  $38                                         ; $5359: $ff
	ld   l, d                                        ; $535a: $6a
	rst  $38                                         ; $535b: $ff
	ld   a, [$bf80]                                  ; $535c: $fa $80 $bf
	add  b                                           ; $535f: $80
	nop                                              ; $5360: $00
	add  d                                           ; $5361: $82
	rst  $38                                         ; $5362: $ff
	stop                                             ; $5363: $10 $00
	adc  l                                           ; $5365: $8d
	rst  $28                                         ; $5366: $ef
	ld   hl, $aaef                                   ; $5367: $21 $ef $aa
	rst  $28                                         ; $536a: $ef
	ld   l, h                                        ; $536b: $6c
	rst  $28                                         ; $536c: $ef
	ld   l, d                                        ; $536d: $6a
	nop                                              ; $536e: $00
	daa                                              ; $536f: $27
	rst  $28                                         ; $5370: $ef
	xor  e                                           ; $5371: $ab
	rst  $28                                         ; $5372: $ef
	adc  h                                           ; $5373: $8c
	nop                                              ; $5374: $00
	add  b                                           ; $5375: $80
	ret  nz                                          ; $5376: $c0

	rlca                                             ; $5377: $07
	ld   b, b                                        ; $5378: $40
	ret  nz                                          ; $5379: $c0

	ld   b, b                                        ; $537a: $40
	ret  nz                                          ; $537b: $c0

	sbc  l                                           ; $537c: $9d
	rst  $38                                         ; $537d: $ff
	ld   h, d                                        ; $537e: $62
	nop                                              ; $537f: $00
	add  d                                           ; $5380: $82
	rst  $38                                         ; $5381: $ff
	add  b                                           ; $5382: $80
	nop                                              ; $5383: $00
	ld   [bc], a                                     ; $5384: $02
	dec  bc                                          ; $5385: $0b
	rrca                                             ; $5386: $0f
	add  hl, bc                                      ; $5387: $09
	add  c                                           ; $5388: $81
	rrca                                             ; $5389: $0f
	inc  bc                                          ; $538a: $03
	reti                                             ; $538b: $d9


	rst  $38                                         ; $538c: $ff
	inc  h                                           ; $538d: $24
	nop                                              ; $538e: $00
	add  d                                           ; $538f: $82
	rst  $38                                         ; $5390: $ff
	add  b                                           ; $5391: $80
	nop                                              ; $5392: $00
	add  [hl]                                        ; $5393: $86
	add  b                                           ; $5394: $80
	add  b                                           ; $5395: $80
	nop                                              ; $5396: $00
	add  b                                           ; $5397: $80
	add  b                                           ; $5398: $80
	add  b                                           ; $5399: $80
	ret  nz                                          ; $539a: $c0

	add  b                                           ; $539b: $80
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	rst  $38                                         ; $539e: $ff
	add  b                                           ; $539f: $80
	nop                                              ; $53a0: $00
	adc  h                                           ; $53a1: $8c
	rrca                                             ; $53a2: $0f
	add  b                                           ; $53a3: $80
	nop                                              ; $53a4: $00
	adc  h                                           ; $53a5: $8c
	rst  $38                                         ; $53a6: $ff
	add  b                                           ; $53a7: $80
	nop                                              ; $53a8: $00
	add  l                                           ; $53a9: $85
	rst  $38                                         ; $53aa: $ff
	ld   b, $fd                                      ; $53ab: $06 $fd
	rst  $38                                         ; $53ad: $ff
	xor  b                                           ; $53ae: $a8
	rst  $38                                         ; $53af: $ff
	nop                                              ; $53b0: $00

jr_034_53b1:
	rst  $38                                         ; $53b1: $ff
	ld   d, l                                        ; $53b2: $55
	add  b                                           ; $53b3: $80
	nop                                              ; $53b4: $00
	add  e                                           ; $53b5: $83
	rst  $38                                         ; $53b6: $ff
	rlca                                             ; $53b7: $07
	ld   [$40ff], a                                  ; $53b8: $ea $ff $40
	rst  $38                                         ; $53bb: $ff
	ld   [bc], a                                     ; $53bc: $02
	rst  $38                                         ; $53bd: $ff
	ld   d, a                                        ; $53be: $57
	rst  $38                                         ; $53bf: $ff
	add  c                                           ; $53c0: $81
	nop                                              ; $53c1: $00
	rlca                                             ; $53c2: $07
	rst  $38                                         ; $53c3: $ff
	ld   a, [$50ff]                                  ; $53c4: $fa $ff $50
	rst  $38                                         ; $53c7: $ff
	ld   [bc], a                                     ; $53c8: $02
	rst  $38                                         ; $53c9: $ff
	ld   d, a                                        ; $53ca: $57
	add  e                                           ; $53cb: $83
	rst  $38                                         ; $53cc: $ff
	add  b                                           ; $53cd: $80
	nop                                              ; $53ce: $00
	ld   b, $aa                                      ; $53cf: $06 $aa
	rst  $38                                         ; $53d1: $ff
	nop                                              ; $53d2: $00

jr_034_53d3:
	rst  $38                                         ; $53d3: $ff
	dec  d                                           ; $53d4: $15
	rst  $38                                         ; $53d5: $ff
	cp   a                                           ; $53d6: $bf
	add  l                                           ; $53d7: $85
	rst  $38                                         ; $53d8: $ff
	inc  b                                           ; $53d9: $04
	nop                                              ; $53da: $00
	rra                                              ; $53db: $1f
	or   b                                           ; $53dc: $b0
	rst  $38                                         ; $53dd: $ff
	xor  a                                           ; $53de: $af
	add  h                                           ; $53df: $84
	rst  $38                                         ; $53e0: $ff
	add  b                                           ; $53e1: $80
	db   $fd                                         ; $53e2: $fd

jr_034_53e3:
	add  b                                           ; $53e3: $80
	ld   [$5403], a                                  ; $53e4: $ea $03 $54
	add  c                                           ; $53e7: $81
	rst  $38                                         ; $53e8: $ff
	ld   a, [hl+]                                    ; $53e9: $2a
	add  d                                           ; $53ea: $82
	rst  $38                                         ; $53eb: $ff
	add  b                                           ; $53ec: $80
	db   $fd                                         ; $53ed: $fd
	add  b                                           ; $53ee: $80
	xor  d                                           ; $53ef: $aa
	add  b                                           ; $53f0: $80
	ld   d, l                                        ; $53f1: $55
	add  b                                           ; $53f2: $80
	xor  b                                           ; $53f3: $a8
	add  b                                           ; $53f4: $80
	nop                                              ; $53f5: $00
	add  d                                           ; $53f6: $82
	rst  $38                                         ; $53f7: $ff
	add  b                                           ; $53f8: $80
	ld   [$5580], a                                  ; $53f9: $ea $80 $55
	add  b                                           ; $53fc: $80
	xor  d                                           ; $53fd: $aa

jr_034_53fe:
	add  b                                           ; $53fe: $80
	ld   d, b                                        ; $53ff: $50
	add  d                                           ; $5400: $82
	nop                                              ; $5401: $00
	add  b                                           ; $5402: $80
	cp   $80                                         ; $5403: $fe $80
	ld   d, l                                        ; $5405: $55
	add  b                                           ; $5406: $80
	xor  d                                           ; $5407: $aa
	add  b                                           ; $5408: $80
	ld   d, b                                        ; $5409: $50
	add  b                                           ; $540a: $80
	add  b                                           ; $540b: $80
	add  h                                           ; $540c: $84
	nop                                              ; $540d: $00
	add  b                                           ; $540e: $80
	xor  b                                           ; $540f: $a8
	add  b                                           ; $5410: $80
	ld   b, b                                        ; $5411: $40
	adc  a                                           ; $5412: $8f
	nop                                              ; $5413: $00
	add  b                                           ; $5414: $80
	db   $fc                                         ; $5415: $fc
	add  h                                           ; $5416: $84
	add  $80                                         ; $5417: $c6 $80
	db   $fc                                         ; $5419: $fc
	add  h                                           ; $541a: $84
	nop                                              ; $541b: $00
	add  b                                           ; $541c: $80
	ld   a, h                                        ; $541d: $7c
	add  d                                           ; $541e: $82
	add  $82                                         ; $541f: $c6 $82
	ret  nz                                          ; $5421: $c0

	add  h                                           ; $5422: $84
	nop                                              ; $5423: $00
	add  d                                           ; $5424: $82
	add  $82                                         ; $5425: $c6 $82
	xor  $80                                         ; $5427: $ee $80
	cp   $86                                         ; $5429: $fe $86
	nop                                              ; $542b: $00
	add  d                                           ; $542c: $82
	jr   jr_034_53b1                                 ; $542d: $18 $82

	nop                                              ; $542f: $00
	add  h                                           ; $5430: $84
	add  $80                                         ; $5431: $c6 $80
	db   $fc                                         ; $5433: $fc
	add  [hl]                                        ; $5434: $86
	nop                                              ; $5435: $00
	add  b                                           ; $5436: $80
	adc  $82                                         ; $5437: $ce $82
	add  $80                                         ; $5439: $c6 $80
	ld   a, d                                        ; $543b: $7a
	add  [hl]                                        ; $543c: $86
	nop                                              ; $543d: $00
	add  d                                           ; $543e: $82
	sub  $82                                         ; $543f: $d6 $82
	add  $8a                                         ; $5441: $c6 $8a
	nop                                              ; $5443: $00
	add  d                                           ; $5444: $82
	jr   jr_034_53d3                                 ; $5445: $18 $8c

	nop                                              ; $5447: $00
	add  b                                           ; $5448: $80
	ld   a, $82                                      ; $5449: $3e $82
	ld   h, e                                        ; $544b: $63
	add  b                                           ; $544c: $80
	ld   h, b                                        ; $544d: $60
	add  b                                           ; $544e: $80
	inc  e                                           ; $544f: $1c
	add  h                                           ; $5450: $84
	nop                                              ; $5451: $00
	adc  b                                           ; $5452: $88
	inc  bc                                          ; $5453: $03
	add  h                                           ; $5454: $84
	nop                                              ; $5455: $00
	add  b                                           ; $5456: $80
	ld   hl, sp-$7c                                  ; $5457: $f8 $84
	nop                                              ; $5459: $00
	add  b                                           ; $545a: $80
	ldh  a, [$86]                                    ; $545b: $f0 $86
	nop                                              ; $545d: $00
	add  d                                           ; $545e: $82
	jr   jr_034_53e3                                 ; $545f: $18 $82

	nop                                              ; $5461: $00
	add  b                                           ; $5462: $80
	ld   [bc], a                                     ; $5463: $02
	add  d                                           ; $5464: $82
	ld   h, e                                        ; $5465: $63
	add  b                                           ; $5466: $80
	ld   a, $86                                      ; $5467: $3e $86
	nop                                              ; $5469: $00
	add  d                                           ; $546a: $82
	inc  bc                                          ; $546b: $03
	add  d                                           ; $546c: $82
	inc  sp                                          ; $546d: $33
	adc  h                                           ; $546e: $8c
	nop                                              ; $546f: $00
	add  b                                           ; $5470: $80
	ld   hl, sp-$76                                  ; $5471: $f8 $8a
	nop                                              ; $5473: $00
	add  d                                           ; $5474: $82
	jr   jr_034_53fe                                 ; $5475: $18 $87

	nop                                              ; $5477: $00
	add  b                                           ; $5478: $80
	ld   d, l                                        ; $5479: $55
	add  b                                           ; $547a: $80
	ld   a, [bc]                                     ; $547b: $0a
	add  b                                           ; $547c: $80
	dec  b                                           ; $547d: $05
	add  b                                           ; $547e: $80
	ld   [bc], a                                     ; $547f: $02
	add  b                                           ; $5480: $80
	ld   bc, $0084                                   ; $5481: $01 $84 $00
	add  b                                           ; $5484: $80
	dec  b                                           ; $5485: $05
	add  b                                           ; $5486: $80
	ld   [bc], a                                     ; $5487: $02

jr_034_5488:
	add  b                                           ; $5488: $80
	dec  b                                           ; $5489: $05
	add  b                                           ; $548a: $80
	ld   [bc], a                                     ; $548b: $02
	add  b                                           ; $548c: $80
	ld   bc, $0089                                   ; $548d: $01 $89 $00
	ld   [bc], a                                     ; $5490: $02
	db   $fc                                         ; $5491: $fc
	nop                                              ; $5492: $00
	ld   a, [hl-]                                    ; $5493: $3a
	add  e                                           ; $5494: $83
	nop                                              ; $5495: $00

jr_034_5496:
	ld   [bc], a                                     ; $5496: $02
	ld   a, [hl-]                                    ; $5497: $3a
	nop                                              ; $5498: $00
	db   $fc                                         ; $5499: $fc
	add  e                                           ; $549a: $83
	nop                                              ; $549b: $00
	ld   [bc], a                                     ; $549c: $02
	ld   a, h                                        ; $549d: $7c

jr_034_549e:
	nop                                              ; $549e: $00
	cp   d                                           ; $549f: $ba
	add  c                                           ; $54a0: $81
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	ld   b, $81                                      ; $54a3: $06 $81
	nop                                              ; $54a5: $00

jr_034_54a6:
	nop                                              ; $54a6: $00
	ret  nz                                          ; $54a7: $c0

	add  e                                           ; $54a8: $83
	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	add  $81                                         ; $54ab: $c6 $81
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	jr   z, @-$7d                                    ; $54af: $28 $81

	nop                                              ; $54b1: $00
	ld   [bc], a                                     ; $54b2: $02
	stop                                             ; $54b3: $10 $00
	jr   c, @-$7b                                    ; $54b5: $38 $83

	nop                                              ; $54b7: $00
	ld   [bc], a                                     ; $54b8: $02
	ld   a, [hl-]                                    ; $54b9: $3a
	nop                                              ; $54ba: $00
	db   $fc                                         ; $54bb: $fc
	add  l                                           ; $54bc: $85
	nop                                              ; $54bd: $00
	ld   [bc], a                                     ; $54be: $02
	adc  $00                                         ; $54bf: $ce $00
	ld   [$0081], sp                                 ; $54c1: $08 $81 $00
	ld   [bc], a                                     ; $54c4: $02
	cp   h                                           ; $54c5: $bc
	nop                                              ; $54c6: $00
	ld   a, d                                        ; $54c7: $7a
	add  l                                           ; $54c8: $85
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	sub  $81                                         ; $54cb: $d6 $81
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	db   $10                                         ; $54cf: $10
	add  c                                           ; $54d0: $81
	nop                                              ; $54d1: $00
	nop                                              ; $54d2: $00
	add  $8b                                         ; $54d3: $c6 $8b
	nop                                              ; $54d5: $00
	ld   [bc], a                                     ; $54d6: $02
	ld   a, $00                                      ; $54d7: $3e $00
	ld   e, l                                        ; $54d9: $5d
	add  c                                           ; $54da: $81
	nop                                              ; $54db: $00
	inc  b                                           ; $54dc: $04
	inc  bc                                          ; $54dd: $03
	nop                                              ; $54de: $00
	ld   a, h                                        ; $54df: $7c
	nop                                              ; $54e0: $00
	inc  e                                           ; $54e1: $1c
	add  e                                           ; $54e2: $83
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	inc  bc                                          ; $54e5: $03
	add  a                                           ; $54e6: $87
	nop                                              ; $54e7: $00
	nop                                              ; $54e8: $00
	inc  bc                                          ; $54e9: $03
	add  e                                           ; $54ea: $83
	nop                                              ; $54eb: $00
	ld   [bc], a                                     ; $54ec: $02
	ld   hl, sp+$00                                  ; $54ed: $f8 $00
	ld   hl, sp-$7d                                  ; $54ef: $f8 $83
	nop                                              ; $54f1: $00
	inc  b                                           ; $54f2: $04
	ldh  a, [rP1]                                    ; $54f3: $f0 $00
	ldh  a, [c]                                      ; $54f5: $f2
	nop                                              ; $54f6: $00
	ld   h, c                                        ; $54f7: $61
	add  c                                           ; $54f8: $81
	nop                                              ; $54f9: $00
	ld   [bc], a                                     ; $54fa: $02
	ld   e, l                                        ; $54fb: $5d
	nop                                              ; $54fc: $00
	ld   a, $85                                      ; $54fd: $3e $85
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
	inc  bc                                          ; $5501: $03
	add  c                                           ; $5502: $81
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	jr   nc, jr_034_5488                             ; $5505: $30 $81

	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	inc  sp                                          ; $5509: $33
	adc  e                                           ; $550a: $8b
	nop                                              ; $550b: $00
	ld   [bc], a                                     ; $550c: $02
	ld   hl, sp+$00                                  ; $550d: $f8 $00
	ld   hl, sp-$73                                  ; $550f: $f8 $8d
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	jr   jr_034_5496                                 ; $5513: $18 $81

	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	jr   jr_034_549e                                 ; $5517: $18 $85

	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	jr   jr_034_549e                                 ; $551b: $18 $81

	nop                                              ; $551d: $00
	nop                                              ; $551e: $00
	jr   jr_034_54a6                                 ; $551f: $18 $85

	nop                                              ; $5521: $00


TileAttr_MiniGameSelection::
if def(VWF)
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22

	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22

	db $02, $02, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $20, $02, $22
	db $02, $02, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $20, $02, $22
	db $02, $02, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $20, $02, $22

	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $00, $00, $00, $20, $02, $22

	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $00, $00, $00, $00, $20, $02, $22

	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $00, $00, $00, $00, $20, $02, $22
	
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
else
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $20, $02, $22
	db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $20, $02, $22
endc


TileMap_MiniGameSelection::
if def(VWF)
	db $32, $2c, $2d, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $2d, $2c, $32
	db $32, $2c, $2d, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $38, $38, $2d, $2c, $32

	db $32, $2c, $2d, $38, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $38, $2d, $2c, $32

	db $32, $2c, $2d, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $2d, $2c, $32
	db $32, $2c, $2d, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $2d, $2c, $32
	db $32, $2c, $2d, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $2d, $2c, $32

	db $32, $2c, $2d, $38, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $1c, $1d, $1e, $1f, $20, $21, $22, $38, $38, $38, $2d, $2c, $32

	db $32, $2c, $2d, $38, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $3b, $3c, $3d, $3e, $3f, $40, $41, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $42, $43, $44, $45, $46, $47, $48, $38, $38, $38, $38, $2d, $2c, $32

	db $32, $2c, $2d, $38, $38, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $5d, $5e, $5f, $60, $61, $62, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $63, $64, $65, $66, $67, $68, $38, $38, $38, $38, $2d, $2c, $32

	db $32, $2c, $2d, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $2d, $2c, $32
	db $32, $2c, $2d, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $38, $38, $2d, $2c, $32
else
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $6a, $6b, $6c, $6d, $6e, $6f, $0a, $0b, $0c, $0d, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $7a, $7b, $7c, $7d, $7e, $7f, $1a, $1b, $1c, $1d, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $0e, $0f, $2a, $2b, $2c, $2d, $2e, $2f, $40, $41, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $1e, $1f, $3a, $3b, $3c, $3d, $3e, $3f, $50, $51, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $69, $42, $42, $44, $45, $46, $52, $53, $54, $55, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $60, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $70, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $71, $72, $73, $74, $75, $76, $77, $78, $79, $6f, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $38, $38, $2d, $2c, $32
	db $32, $2c, $2d, $38, $38, $38, $38, $38, $38, $38, $38, $38, $38, $68, $38, $38, $38, $2d, $2c, $32
endc


	dec  b                                           ; $5982: $05

jr_034_5983:
	dec  b                                           ; $5983: $05
	dec  b                                           ; $5984: $05
	dec  b                                           ; $5985: $05
	dec  b                                           ; $5986: $05
	dec  b                                           ; $5987: $05
	dec  b                                           ; $5988: $05
	dec  b                                           ; $5989: $05
	dec  b                                           ; $598a: $05
	dec  b                                           ; $598b: $05
	dec  b                                           ; $598c: $05
	dec  b                                           ; $598d: $05
	dec  b                                           ; $598e: $05

jr_034_598f:
	dec  b                                           ; $598f: $05
	dec  b                                           ; $5990: $05
	dec  b                                           ; $5991: $05
	dec  c                                           ; $5992: $0d
	dec  c                                           ; $5993: $0d
	dec  c                                           ; $5994: $0d
	dec  c                                           ; $5995: $0d
	dec  b                                           ; $5996: $05

jr_034_5997:
	dec  b                                           ; $5997: $05
	dec  b                                           ; $5998: $05

jr_034_5999:
	dec  b                                           ; $5999: $05
	dec  b                                           ; $599a: $05
	ld   b, $06                                      ; $599b: $06 $06
	ld   b, $06                                      ; $599d: $06 $06
	ld   b, $06                                      ; $599f: $06 $06
	ld   b, $05                                      ; $59a1: $06 $05
	dec  b                                           ; $59a3: $05
	dec  b                                           ; $59a4: $05
	dec  b                                           ; $59a5: $05
	dec  c                                           ; $59a6: $0d
	dec  c                                           ; $59a7: $0d
	dec  c                                           ; $59a8: $0d
	dec  c                                           ; $59a9: $0d
	dec  b                                           ; $59aa: $05

jr_034_59ab:
	dec  b                                           ; $59ab: $05
	dec  b                                           ; $59ac: $05

jr_034_59ad:
	dec  b                                           ; $59ad: $05
	dec  b                                           ; $59ae: $05

jr_034_59af:
	ld   b, $06                                      ; $59af: $06 $06

jr_034_59b1:
	ld   b, $07                                      ; $59b1: $06 $07

jr_034_59b3:
	rlca                                             ; $59b3: $07
	rlca                                             ; $59b4: $07
	rlca                                             ; $59b5: $07

jr_034_59b6:
	dec  b                                           ; $59b6: $05
	dec  b                                           ; $59b7: $05
	dec  b                                           ; $59b8: $05
	dec  b                                           ; $59b9: $05
	dec  c                                           ; $59ba: $0d
	dec  c                                           ; $59bb: $0d
	dec  c                                           ; $59bc: $0d
	dec  c                                           ; $59bd: $0d
	dec  b                                           ; $59be: $05
	dec  b                                           ; $59bf: $05
	dec  b                                           ; $59c0: $05
	dec  b                                           ; $59c1: $05
	dec  b                                           ; $59c2: $05
	ld   b, $06                                      ; $59c3: $06 $06
	ld   b, $07                                      ; $59c5: $06 $07
	rlca                                             ; $59c7: $07
	rlca                                             ; $59c8: $07
	rlca                                             ; $59c9: $07
	dec  b                                           ; $59ca: $05
	dec  b                                           ; $59cb: $05
	dec  b                                           ; $59cc: $05
	dec  b                                           ; $59cd: $05
	dec  c                                           ; $59ce: $0d
	dec  c                                           ; $59cf: $0d
	dec  c                                           ; $59d0: $0d
	dec  c                                           ; $59d1: $0d
	dec  b                                           ; $59d2: $05
	dec  b                                           ; $59d3: $05
	dec  b                                           ; $59d4: $05
	dec  b                                           ; $59d5: $05
	dec  b                                           ; $59d6: $05
	ld   b, $06                                      ; $59d7: $06 $06
	ld   b, $07                                      ; $59d9: $06 $07
	rlca                                             ; $59db: $07
	rlca                                             ; $59dc: $07
	rlca                                             ; $59dd: $07
	dec  b                                           ; $59de: $05
	dec  b                                           ; $59df: $05
	dec  b                                           ; $59e0: $05
	dec  b                                           ; $59e1: $05
	dec  c                                           ; $59e2: $0d
	dec  c                                           ; $59e3: $0d
	dec  c                                           ; $59e4: $0d
	dec  c                                           ; $59e5: $0d
	dec  b                                           ; $59e6: $05
	dec  b                                           ; $59e7: $05
	dec  b                                           ; $59e8: $05
	dec  b                                           ; $59e9: $05
	ld   b, $07                                      ; $59ea: $06 $07
	rlca                                             ; $59ec: $07
	rlca                                             ; $59ed: $07
	rlca                                             ; $59ee: $07
	rlca                                             ; $59ef: $07
	rlca                                             ; $59f0: $07
	rlca                                             ; $59f1: $07
	dec  b                                           ; $59f2: $05
	dec  b                                           ; $59f3: $05
	dec  b                                           ; $59f4: $05
	dec  b                                           ; $59f5: $05
	dec  c                                           ; $59f6: $0d
	dec  c                                           ; $59f7: $0d
	dec  c                                           ; $59f8: $0d
	dec  c                                           ; $59f9: $0d
	dec  b                                           ; $59fa: $05
	dec  b                                           ; $59fb: $05
	dec  b                                           ; $59fc: $05
	ld   b, $09                                      ; $59fd: $06 $09
	ld   b, $06                                      ; $59ff: $06 $06
	ld   b, $07                                      ; $5a01: $06 $07
	dec  b                                           ; $5a03: $05
	dec  b                                           ; $5a04: $05
	dec  b                                           ; $5a05: $05
	dec  b                                           ; $5a06: $05
	dec  b                                           ; $5a07: $05
	dec  b                                           ; $5a08: $05
	dec  b                                           ; $5a09: $05
	dec  c                                           ; $5a0a: $0d
	dec  c                                           ; $5a0b: $0d
	dec  c                                           ; $5a0c: $0d
	dec  c                                           ; $5a0d: $0d
	dec  b                                           ; $5a0e: $05
	ld   b, $06                                      ; $5a0f: $06 $06
	ld   a, [bc]                                     ; $5a11: $0a
	ld   a, [bc]                                     ; $5a12: $0a
	ld   a, [bc]                                     ; $5a13: $0a
	ld   b, $06                                      ; $5a14: $06 $06
	ld   b, $05                                      ; $5a16: $06 $05
	dec  b                                           ; $5a18: $05
	dec  b                                           ; $5a19: $05
	dec  b                                           ; $5a1a: $05
	dec  b                                           ; $5a1b: $05
	dec  b                                           ; $5a1c: $05
	dec  b                                           ; $5a1d: $05
	dec  c                                           ; $5a1e: $0d
	dec  c                                           ; $5a1f: $0d
	dec  c                                           ; $5a20: $0d
	dec  c                                           ; $5a21: $0d
	dec  c                                           ; $5a22: $0d
	ld   c, $0e                                      ; $5a23: $0e $0e
	ld   a, [bc]                                     ; $5a25: $0a
	ld   a, [bc]                                     ; $5a26: $0a
	ld   a, [bc]                                     ; $5a27: $0a
	ld   c, $0e                                      ; $5a28: $0e $0e
	dec  c                                           ; $5a2a: $0d
	dec  c                                           ; $5a2b: $0d
	ld   c, $0e                                      ; $5a2c: $0e $0e
	ld   c, $0d                                      ; $5a2e: $0e $0d
	dec  c                                           ; $5a30: $0d
	dec  c                                           ; $5a31: $0d
	dec  c                                           ; $5a32: $0d
	dec  c                                           ; $5a33: $0d
	dec  c                                           ; $5a34: $0d
	dec  c                                           ; $5a35: $0d
	dec  c                                           ; $5a36: $0d
	ld   c, $0e                                      ; $5a37: $0e $0e
	ld   c, $0e                                      ; $5a39: $0e $0e
	ld   c, $0e                                      ; $5a3b: $0e $0e
	ld   c, $0d                                      ; $5a3d: $0e $0d
	dec  c                                           ; $5a3f: $0d
	ld   c, $0e                                      ; $5a40: $0e $0e
	ld   c, $0d                                      ; $5a42: $0e $0d
	dec  c                                           ; $5a44: $0d
	dec  c                                           ; $5a45: $0d
	dec  c                                           ; $5a46: $0d
	dec  c                                           ; $5a47: $0d
	dec  c                                           ; $5a48: $0d
	dec  c                                           ; $5a49: $0d
	ld   c, $0e                                      ; $5a4a: $0e $0e
	ld   c, $0e                                      ; $5a4c: $0e $0e
	ld   c, $0e                                      ; $5a4e: $0e $0e
	ld   c, $0e                                      ; $5a50: $0e $0e
	ld   c, $0e                                      ; $5a52: $0e $0e
	ld   c, $0e                                      ; $5a54: $0e $0e
	ld   c, $0e                                      ; $5a56: $0e $0e
	ld   c, $0e                                      ; $5a58: $0e $0e
	ld   c, $0e                                      ; $5a5a: $0e $0e
	ld   c, $0e                                      ; $5a5c: $0e $0e
	ld   c, $0e                                      ; $5a5e: $0e $0e
	ld   c, $0e                                      ; $5a60: $0e $0e
	ld   c, $0e                                      ; $5a62: $0e $0e
	ld   c, $0e                                      ; $5a64: $0e $0e
	ld   c, $0e                                      ; $5a66: $0e $0e
	ld   c, $0e                                      ; $5a68: $0e $0e
	ld   c, $0e                                      ; $5a6a: $0e $0e
	ld   c, $0e                                      ; $5a6c: $0e $0e
	ld   c, $0e                                      ; $5a6e: $0e $0e
	ld   c, $0e                                      ; $5a70: $0e $0e
	ld   c, $0e                                      ; $5a72: $0e $0e
	ld   c, $0e                                      ; $5a74: $0e $0e
	ld   c, $0e                                      ; $5a76: $0e $0e
	ld   c, $0e                                      ; $5a78: $0e $0e
	ld   c, $0e                                      ; $5a7a: $0e $0e
	ld   c, $0e                                      ; $5a7c: $0e $0e
	ld   c, $0e                                      ; $5a7e: $0e $0e
	ld   c, $0e                                      ; $5a80: $0e $0e
	ld   c, $0e                                      ; $5a82: $0e $0e
	ld   c, $0e                                      ; $5a84: $0e $0e
	ld   c, $0e                                      ; $5a86: $0e $0e
	ld   c, $0e                                      ; $5a88: $0e $0e
	ld   c, $0e                                      ; $5a8a: $0e $0e
	ld   c, $0e                                      ; $5a8c: $0e $0e
	ld   c, $0e                                      ; $5a8e: $0e $0e
	ld   c, $0e                                      ; $5a90: $0e $0e
	ld   c, $0e                                      ; $5a92: $0e $0e
	ld   c, $0e                                      ; $5a94: $0e $0e
	ld   c, $0e                                      ; $5a96: $0e $0e
	ld   c, $0e                                      ; $5a98: $0e $0e
	inc  c                                           ; $5a9a: $0c
	inc  c                                           ; $5a9b: $0c
	inc  c                                           ; $5a9c: $0c
	inc  c                                           ; $5a9d: $0c
	inc  c                                           ; $5a9e: $0c
	inc  c                                           ; $5a9f: $0c
	inc  c                                           ; $5aa0: $0c
	inc  c                                           ; $5aa1: $0c
	inc  c                                           ; $5aa2: $0c
	inc  c                                           ; $5aa3: $0c
	inc  c                                           ; $5aa4: $0c
	inc  c                                           ; $5aa5: $0c
	inc  c                                           ; $5aa6: $0c
	inc  c                                           ; $5aa7: $0c
	inc  c                                           ; $5aa8: $0c
	inc  c                                           ; $5aa9: $0c
	inc  c                                           ; $5aaa: $0c
	inc  c                                           ; $5aab: $0c
	inc  l                                           ; $5aac: $2c
	inc  l                                           ; $5aad: $2c
	inc  c                                           ; $5aae: $0c
	inc  c                                           ; $5aaf: $0c
	inc  bc                                          ; $5ab0: $03
	inc  bc                                          ; $5ab1: $03
	inc  bc                                          ; $5ab2: $03
	inc  bc                                          ; $5ab3: $03
	dec  bc                                          ; $5ab4: $0b
	inc  c                                           ; $5ab5: $0c
	inc  c                                           ; $5ab6: $0c
	inc  c                                           ; $5ab7: $0c
	inc  c                                           ; $5ab8: $0c
	inc  c                                           ; $5ab9: $0c
	inc  c                                           ; $5aba: $0c
	dec  bc                                          ; $5abb: $0b
	dec  bc                                          ; $5abc: $0b
	inc  bc                                          ; $5abd: $03
	inc  bc                                          ; $5abe: $03
	dec  bc                                          ; $5abf: $0b
	inc  l                                           ; $5ac0: $2c
	inc  l                                           ; $5ac1: $2c
	inc  c                                           ; $5ac2: $0c
	inc  c                                           ; $5ac3: $0c
	inc  bc                                          ; $5ac4: $03
	inc  bc                                          ; $5ac5: $03
	inc  bc                                          ; $5ac6: $03
	inc  bc                                          ; $5ac7: $03
	dec  bc                                          ; $5ac8: $0b
	inc  c                                           ; $5ac9: $0c
	inc  c                                           ; $5aca: $0c
	inc  c                                           ; $5acb: $0c
	inc  c                                           ; $5acc: $0c
	inc  c                                           ; $5acd: $0c
	inc  c                                           ; $5ace: $0c
	dec  bc                                          ; $5acf: $0b
	dec  bc                                          ; $5ad0: $0b
	inc  bc                                          ; $5ad1: $03
	inc  bc                                          ; $5ad2: $03
	dec  bc                                          ; $5ad3: $0b
	inc  l                                           ; $5ad4: $2c
	inc  l                                           ; $5ad5: $2c
	inc  c                                           ; $5ad6: $0c
	inc  c                                           ; $5ad7: $0c
	inc  c                                           ; $5ad8: $0c
	inc  c                                           ; $5ad9: $0c
	inc  c                                           ; $5ada: $0c
	inc  c                                           ; $5adb: $0c
	inc  c                                           ; $5adc: $0c
	inc  c                                           ; $5add: $0c
	inc  c                                           ; $5ade: $0c
	inc  c                                           ; $5adf: $0c
	inc  c                                           ; $5ae0: $0c
	inc  c                                           ; $5ae1: $0c
	inc  c                                           ; $5ae2: $0c
	inc  c                                           ; $5ae3: $0c
	inc  c                                           ; $5ae4: $0c
	inc  c                                           ; $5ae5: $0c
	inc  c                                           ; $5ae6: $0c
	inc  c                                           ; $5ae7: $0c
	inc  l                                           ; $5ae8: $2c
	inc  l                                           ; $5ae9: $2c
	dec  b                                           ; $5aea: $05
	dec  b                                           ; $5aeb: $05
	dec  b                                           ; $5aec: $05
	dec  b                                           ; $5aed: $05
	dec  b                                           ; $5aee: $05
	ld   b, $06                                      ; $5aef: $06 $06
	adc  b                                           ; $5af1: $88
	adc  b                                           ; $5af2: $88
	adc  b                                           ; $5af3: $88
	adc  b                                           ; $5af4: $88
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	dec  b                                           ; $5af7: $05
	dec  b                                           ; $5af8: $05
	dec  b                                           ; $5af9: $05
	dec  c                                           ; $5afa: $0d
	dec  c                                           ; $5afb: $0d
	dec  c                                           ; $5afc: $0d
	dec  c                                           ; $5afd: $0d
	dec  b                                           ; $5afe: $05
	dec  b                                           ; $5aff: $05
	dec  b                                           ; $5b00: $05
	dec  b                                           ; $5b01: $05
	ld   b, $07                                      ; $5b02: $06 $07
	rlca                                             ; $5b04: $07
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	dec  b                                           ; $5b0b: $05
	dec  b                                           ; $5b0c: $05
	dec  b                                           ; $5b0d: $05
	dec  c                                           ; $5b0e: $0d
	dec  c                                           ; $5b0f: $0d
	dec  c                                           ; $5b10: $0d
	dec  c                                           ; $5b11: $0d
	dec  b                                           ; $5b12: $05
	dec  b                                           ; $5b13: $05
	dec  b                                           ; $5b14: $05
	ld   b, $09                                      ; $5b15: $06 $09
	ld   b, $06                                      ; $5b17: $06 $06
	adc  b                                           ; $5b19: $88
	adc  b                                           ; $5b1a: $88
	adc  b                                           ; $5b1b: $88
	adc  b                                           ; $5b1c: $88
	adc  b                                           ; $5b1d: $88
	adc  b                                           ; $5b1e: $88
	dec  b                                           ; $5b1f: $05
	dec  b                                           ; $5b20: $05
	dec  b                                           ; $5b21: $05
	dec  c                                           ; $5b22: $0d
	dec  c                                           ; $5b23: $0d
	dec  c                                           ; $5b24: $0d
	dec  c                                           ; $5b25: $0d
	dec  b                                           ; $5b26: $05
	dec  b                                           ; $5b27: $05
	dec  b                                           ; $5b28: $05
	dec  b                                           ; $5b29: $05
	dec  b                                           ; $5b2a: $05
	ld   b, $88                                      ; $5b2b: $06 $88
	adc  b                                           ; $5b2d: $88
	adc  b                                           ; $5b2e: $88
	adc  b                                           ; $5b2f: $88
	adc  b                                           ; $5b30: $88
	adc  b                                           ; $5b31: $88
	adc  b                                           ; $5b32: $88
	adc  b                                           ; $5b33: $88
	dec  b                                           ; $5b34: $05
	dec  b                                           ; $5b35: $05
	dec  c                                           ; $5b36: $0d
	dec  c                                           ; $5b37: $0d
	dec  c                                           ; $5b38: $0d
	dec  c                                           ; $5b39: $0d
	dec  b                                           ; $5b3a: $05
	dec  b                                           ; $5b3b: $05
	dec  b                                           ; $5b3c: $05
	dec  b                                           ; $5b3d: $05
	ld   b, $07                                      ; $5b3e: $06 $07
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
	adc  b                                           ; $5b42: $88
	adc  b                                           ; $5b43: $88
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	adc  b                                           ; $5b46: $88
	adc  b                                           ; $5b47: $88
	dec  b                                           ; $5b48: $05
	dec  b                                           ; $5b49: $05
	dec  c                                           ; $5b4a: $0d
	dec  c                                           ; $5b4b: $0d
	dec  c                                           ; $5b4c: $0d
	dec  c                                           ; $5b4d: $0d
	dec  b                                           ; $5b4e: $05
	dec  b                                           ; $5b4f: $05
	dec  b                                           ; $5b50: $05
	ld   b, $09                                      ; $5b51: $06 $09
	ld   b, $88                                      ; $5b53: $06 $88
	adc  b                                           ; $5b55: $88
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	adc  b                                           ; $5b58: $88
	adc  b                                           ; $5b59: $88
	adc  b                                           ; $5b5a: $88
	adc  b                                           ; $5b5b: $88
	dec  b                                           ; $5b5c: $05
	dec  b                                           ; $5b5d: $05
	dec  c                                           ; $5b5e: $0d
	dec  c                                           ; $5b5f: $0d
	dec  c                                           ; $5b60: $0d
	dec  c                                           ; $5b61: $0d
	dec  b                                           ; $5b62: $05
	dec  b                                           ; $5b63: $05
	dec  b                                           ; $5b64: $05
	dec  b                                           ; $5b65: $05
	dec  b                                           ; $5b66: $05
	ld   b, $88                                      ; $5b67: $06 $88
	adc  b                                           ; $5b69: $88
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	adc  b                                           ; $5b6c: $88
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	adc  b                                           ; $5b6f: $88
	dec  b                                           ; $5b70: $05
	dec  b                                           ; $5b71: $05
	dec  c                                           ; $5b72: $0d
	dec  c                                           ; $5b73: $0d
	dec  c                                           ; $5b74: $0d
	dec  c                                           ; $5b75: $0d
	dec  b                                           ; $5b76: $05
	dec  b                                           ; $5b77: $05
	dec  b                                           ; $5b78: $05
	dec  b                                           ; $5b79: $05
	ld   b, $07                                      ; $5b7a: $06 $07
	adc  b                                           ; $5b7c: $88
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	adc  b                                           ; $5b7f: $88
	adc  b                                           ; $5b80: $88
	adc  b                                           ; $5b81: $88
	adc  b                                           ; $5b82: $88
	adc  b                                           ; $5b83: $88
	dec  b                                           ; $5b84: $05
	dec  b                                           ; $5b85: $05
	dec  c                                           ; $5b86: $0d
	dec  c                                           ; $5b87: $0d
	dec  c                                           ; $5b88: $0d
	dec  c                                           ; $5b89: $0d
	dec  b                                           ; $5b8a: $05
	dec  b                                           ; $5b8b: $05
	dec  b                                           ; $5b8c: $05
	ld   b, $09                                      ; $5b8d: $06 $09
	ld   b, $88                                      ; $5b8f: $06 $88
	adc  b                                           ; $5b91: $88
	adc  b                                           ; $5b92: $88
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	adc  b                                           ; $5b97: $88
	dec  b                                           ; $5b98: $05
	dec  b                                           ; $5b99: $05
	dec  c                                           ; $5b9a: $0d
	dec  c                                           ; $5b9b: $0d
	dec  c                                           ; $5b9c: $0d
	dec  c                                           ; $5b9d: $0d
	nop                                              ; $5b9e: $00
	ld   bc, $0302                                   ; $5b9f: $01 $02 $03
	inc  b                                           ; $5ba2: $04
	dec  b                                           ; $5ba3: $05
	ld   b, $07                                      ; $5ba4: $06 $07
	ld   [$0a09], sp                                 ; $5ba6: $08 $09 $0a
	dec  bc                                          ; $5ba9: $0b
	inc  c                                           ; $5baa: $0c
	dec  c                                           ; $5bab: $0d
	ld   c, $0f                                      ; $5bac: $0e $0f
	nop                                              ; $5bae: $00
	ld   bc, $0302                                   ; $5baf: $01 $02 $03
	db   $10                                         ; $5bb2: $10
	ld   de, $1312                                   ; $5bb3: $11 $12 $13
	inc  d                                           ; $5bb6: $14
	dec  d                                           ; $5bb7: $15
	ld   d, $17                                      ; $5bb8: $16 $17
	jr   @+$1b                                       ; $5bba: $18 $19

	ld   a, [de]                                     ; $5bbc: $1a
	dec  de                                          ; $5bbd: $1b
	inc  e                                           ; $5bbe: $1c
	dec  e                                           ; $5bbf: $1d
	ld   e, $1f                                      ; $5bc0: $1e $1f
	db   $10                                         ; $5bc2: $10
	ld   de, $1312                                   ; $5bc3: $11 $12 $13
	jr   nz, @+$23                                   ; $5bc6: $20 $21

	ld   [hl+], a                                    ; $5bc8: $22
	inc  hl                                          ; $5bc9: $23
	inc  h                                           ; $5bca: $24
	dec  h                                           ; $5bcb: $25
	ld   h, $27                                      ; $5bcc: $26 $27
	jr   z, jr_034_5bf9                              ; $5bce: $28 $29

	ld   a, [hl+]                                    ; $5bd0: $2a
	dec  hl                                          ; $5bd1: $2b
	inc  l                                           ; $5bd2: $2c
	dec  l                                           ; $5bd3: $2d
	ld   l, $2f                                      ; $5bd4: $2e $2f
	jr   nz, jr_034_5bf9                             ; $5bd6: $20 $21

	ld   [hl+], a                                    ; $5bd8: $22
	inc  hl                                          ; $5bd9: $23
	jr   nc, jr_034_5c0d                             ; $5bda: $30 $31

	ld   [hl-], a                                    ; $5bdc: $32
	inc  sp                                          ; $5bdd: $33
	inc  [hl]                                        ; $5bde: $34
	dec  [hl]                                        ; $5bdf: $35
	ld   [hl], $37                                   ; $5be0: $36 $37
	jr   c, jr_034_5c1d                              ; $5be2: $38 $39

	ld   a, [hl-]                                    ; $5be4: $3a
	dec  sp                                          ; $5be5: $3b
	inc  a                                           ; $5be6: $3c
	dec  a                                           ; $5be7: $3d
	ld   a, $3f                                      ; $5be8: $3e $3f
	jr   nc, jr_034_5c1d                             ; $5bea: $30 $31

	ld   [hl-], a                                    ; $5bec: $32
	inc  sp                                          ; $5bed: $33
	ld   b, b                                        ; $5bee: $40
	ld   b, c                                        ; $5bef: $41
	ld   b, d                                        ; $5bf0: $42
	ld   b, e                                        ; $5bf1: $43
	ld   b, h                                        ; $5bf2: $44
	ld   b, l                                        ; $5bf3: $45
	ld   b, [hl]                                     ; $5bf4: $46
	ld   b, a                                        ; $5bf5: $47
	ld   c, b                                        ; $5bf6: $48
	ld   c, c                                        ; $5bf7: $49
	ld   c, d                                        ; $5bf8: $4a

jr_034_5bf9:
	ld   c, e                                        ; $5bf9: $4b
	ld   c, h                                        ; $5bfa: $4c
	ld   c, l                                        ; $5bfb: $4d
	ld   c, [hl]                                     ; $5bfc: $4e
	ld   c, a                                        ; $5bfd: $4f
	ld   b, b                                        ; $5bfe: $40
	ld   b, c                                        ; $5bff: $41
	ld   b, d                                        ; $5c00: $42
	ld   b, e                                        ; $5c01: $43
	ld   d, b                                        ; $5c02: $50
	ld   d, c                                        ; $5c03: $51
	ld   d, d                                        ; $5c04: $52
	ld   d, e                                        ; $5c05: $53
	ld   d, h                                        ; $5c06: $54
	ld   d, l                                        ; $5c07: $55
	ld   d, [hl]                                     ; $5c08: $56
	ld   d, a                                        ; $5c09: $57
	ld   e, b                                        ; $5c0a: $58
	ld   e, c                                        ; $5c0b: $59
	ld   e, d                                        ; $5c0c: $5a

jr_034_5c0d:
	ld   e, e                                        ; $5c0d: $5b
	ld   e, h                                        ; $5c0e: $5c
	ld   e, l                                        ; $5c0f: $5d
	ld   e, [hl]                                     ; $5c10: $5e
	ld   e, a                                        ; $5c11: $5f
	ld   d, b                                        ; $5c12: $50
	ld   d, c                                        ; $5c13: $51
	ld   d, d                                        ; $5c14: $52
	ld   d, e                                        ; $5c15: $53
	ld   h, b                                        ; $5c16: $60
	ld   h, c                                        ; $5c17: $61
	ld   h, d                                        ; $5c18: $62
	ld   h, e                                        ; $5c19: $63
	ld   e, [hl]                                     ; $5c1a: $5e
	ld   h, l                                        ; $5c1b: $65
	ld   h, [hl]                                     ; $5c1c: $66

jr_034_5c1d:
	ld   h, a                                        ; $5c1d: $67
	ld   l, b                                        ; $5c1e: $68
	ld   l, c                                        ; $5c1f: $69
	ld   l, d                                        ; $5c20: $6a
	ld   l, e                                        ; $5c21: $6b
	ld   l, h                                        ; $5c22: $6c
	ld   l, l                                        ; $5c23: $6d
	ld   l, [hl]                                     ; $5c24: $6e
	ld   l, a                                        ; $5c25: $6f
	ld   h, b                                        ; $5c26: $60
	ld   h, c                                        ; $5c27: $61
	ld   h, d                                        ; $5c28: $62
	ld   h, e                                        ; $5c29: $63
	ld   [hl], b                                     ; $5c2a: $70
	ld   [hl], c                                     ; $5c2b: $71
	ld   [hl], d                                     ; $5c2c: $72
	ld   e, a                                        ; $5c2d: $5f
	ld   h, h                                        ; $5c2e: $64
	ld   h, l                                        ; $5c2f: $65
	halt                                             ; $5c30: $76
	ld   [hl], a                                     ; $5c31: $77
	ld   a, b                                        ; $5c32: $78
	ld   a, c                                        ; $5c33: $79
	ld   a, d                                        ; $5c34: $7a
	ld   a, e                                        ; $5c35: $7b
	ld   a, h                                        ; $5c36: $7c
	ld   a, l                                        ; $5c37: $7d
	ld   a, [hl]                                     ; $5c38: $7e
	ld   a, a                                        ; $5c39: $7f
	ld   [hl], b                                     ; $5c3a: $70
	ld   [hl], c                                     ; $5c3b: $71
	ld   [hl], d                                     ; $5c3c: $72
	ld   [hl], e                                     ; $5c3d: $73
	inc  h                                           ; $5c3e: $24
	dec  h                                           ; $5c3f: $25
	ld   h, $66                                      ; $5c40: $26 $66
	ld   h, a                                        ; $5c42: $67
	ld   l, b                                        ; $5c43: $68
	ld   a, [hl+]                                    ; $5c44: $2a
	dec  hl                                          ; $5c45: $2b
	inc  l                                           ; $5c46: $2c
	dec  l                                           ; $5c47: $2d
	ld   l, $2f                                      ; $5c48: $2e $2f
	ld   b, h                                        ; $5c4a: $44
	ld   b, l                                        ; $5c4b: $45
	ld   b, [hl]                                     ; $5c4c: $46
	ld   b, a                                        ; $5c4d: $47
	ld   c, b                                        ; $5c4e: $48
	ld   c, c                                        ; $5c4f: $49
	ld   c, d                                        ; $5c50: $4a
	ld   c, e                                        ; $5c51: $4b
	inc  [hl]                                        ; $5c52: $34
	dec  [hl]                                        ; $5c53: $35
	ld   [hl], $37                                   ; $5c54: $36 $37
	jr   c, jr_034_5c91                              ; $5c56: $38 $39

	ld   a, [hl-]                                    ; $5c58: $3a
	dec  sp                                          ; $5c59: $3b
	inc  a                                           ; $5c5a: $3c
	dec  a                                           ; $5c5b: $3d
	ld   a, $3f                                      ; $5c5c: $3e $3f
	ld   d, h                                        ; $5c5e: $54
	ld   d, l                                        ; $5c5f: $55
	ld   d, [hl]                                     ; $5c60: $56
	ld   d, a                                        ; $5c61: $57
	ld   e, b                                        ; $5c62: $58
	ld   e, c                                        ; $5c63: $59
	ld   e, d                                        ; $5c64: $5a
	ld   e, e                                        ; $5c65: $5b
	inc  b                                           ; $5c66: $04
	dec  b                                           ; $5c67: $05
	ld   b, $07                                      ; $5c68: $06 $07
	ld   [$0a09], sp                                 ; $5c6a: $08 $09 $0a
	dec  bc                                          ; $5c6d: $0b
	inc  c                                           ; $5c6e: $0c
	dec  c                                           ; $5c6f: $0d
	dec  e                                           ; $5c70: $1d
	dec  e                                           ; $5c71: $1d
	dec  e                                           ; $5c72: $1d
	ld   d, $17                                      ; $5c73: $16 $17
	jr   jr_034_5c90                                 ; $5c75: $18 $19

	ld   a, [de]                                     ; $5c77: $1a
	dec  de                                          ; $5c78: $1b
	inc  e                                           ; $5c79: $1c
	inc  d                                           ; $5c7a: $14
	dec  d                                           ; $5c7b: $15
	dec  e                                           ; $5c7c: $1d
	dec  e                                           ; $5c7d: $1d
	dec  e                                           ; $5c7e: $1d
	dec  e                                           ; $5c7f: $1d
	dec  e                                           ; $5c80: $1d
	dec  e                                           ; $5c81: $1d
	dec  e                                           ; $5c82: $1d
	dec  e                                           ; $5c83: $1d
	dec  e                                           ; $5c84: $1d
	dec  e                                           ; $5c85: $1d
	dec  e                                           ; $5c86: $1d
	dec  e                                           ; $5c87: $1d
	dec  e                                           ; $5c88: $1d
	dec  e                                           ; $5c89: $1d
	dec  e                                           ; $5c8a: $1d
	dec  e                                           ; $5c8b: $1d
	ld   c, $0f                                      ; $5c8c: $0e $0f
	dec  e                                           ; $5c8e: $1d
	dec  e                                           ; $5c8f: $1d

jr_034_5c90:
	dec  e                                           ; $5c90: $1d

jr_034_5c91:
	dec  e                                           ; $5c91: $1d
	dec  e                                           ; $5c92: $1d
	dec  e                                           ; $5c93: $1d
	dec  e                                           ; $5c94: $1d
	dec  e                                           ; $5c95: $1d
	dec  e                                           ; $5c96: $1d
	dec  e                                           ; $5c97: $1d
	dec  e                                           ; $5c98: $1d
	dec  e                                           ; $5c99: $1d
	dec  e                                           ; $5c9a: $1d
	dec  e                                           ; $5c9b: $1d
	dec  e                                           ; $5c9c: $1d
	dec  e                                           ; $5c9d: $1d
	dec  e                                           ; $5c9e: $1d
	dec  e                                           ; $5c9f: $1d
	dec  e                                           ; $5ca0: $1d
	dec  e                                           ; $5ca1: $1d
	dec  e                                           ; $5ca2: $1d
	dec  e                                           ; $5ca3: $1d
	dec  e                                           ; $5ca4: $1d
	dec  e                                           ; $5ca5: $1d
	dec  e                                           ; $5ca6: $1d
	dec  e                                           ; $5ca7: $1d
	dec  e                                           ; $5ca8: $1d
	dec  e                                           ; $5ca9: $1d
	dec  e                                           ; $5caa: $1d
	dec  e                                           ; $5cab: $1d
	dec  e                                           ; $5cac: $1d
	dec  e                                           ; $5cad: $1d
	dec  e                                           ; $5cae: $1d
	dec  e                                           ; $5caf: $1d
	dec  e                                           ; $5cb0: $1d
	dec  e                                           ; $5cb1: $1d
	dec  e                                           ; $5cb2: $1d
	dec  e                                           ; $5cb3: $1d
	dec  e                                           ; $5cb4: $1d
	dec  e                                           ; $5cb5: $1d
	and  h                                           ; $5cb6: $a4
	add  c                                           ; $5cb7: $81
	add  d                                           ; $5cb8: $82
	add  e                                           ; $5cb9: $83
	add  h                                           ; $5cba: $84
	add  l                                           ; $5cbb: $85
	add  [hl]                                        ; $5cbc: $86
	add  a                                           ; $5cbd: $87
	and  l                                           ; $5cbe: $a5
	and  l                                           ; $5cbf: $a5
	and  l                                           ; $5cc0: $a5
	and  l                                           ; $5cc1: $a5
	adc  b                                           ; $5cc2: $88
	adc  c                                           ; $5cc3: $89
	adc  d                                           ; $5cc4: $8a
	adc  e                                           ; $5cc5: $8b
	adc  h                                           ; $5cc6: $8c
	add  d                                           ; $5cc7: $82
	add  c                                           ; $5cc8: $81
	and  h                                           ; $5cc9: $a4
	sub  b                                           ; $5cca: $90
	sub  c                                           ; $5ccb: $91
	ldh  [$e0], a                                    ; $5ccc: $e0 $e0
	ldh  [$e0], a                                    ; $5cce: $e0 $e0
	ld   c, h                                        ; $5cd0: $4c
	sub  d                                           ; $5cd1: $92
	sub  e                                           ; $5cd2: $93
	sub  h                                           ; $5cd3: $94
	sub  l                                           ; $5cd4: $95
	sub  [hl]                                        ; $5cd5: $96
	sub  a                                           ; $5cd6: $97
	ld   e, h                                        ; $5cd7: $5c
	ld   c, h                                        ; $5cd8: $4c
	ldh  [$e0], a                                    ; $5cd9: $e0 $e0
	ld   c, h                                        ; $5cdb: $4c
	sub  c                                           ; $5cdc: $91
	sub  b                                           ; $5cdd: $90
	sub  b                                           ; $5cde: $90
	sub  c                                           ; $5cdf: $91
	ldh  a, [$f0]                                    ; $5ce0: $f0 $f0
	ldh  a, [$f0]                                    ; $5ce2: $f0 $f0
	ld   c, [hl]                                     ; $5ce4: $4e
	adc  a                                           ; $5ce5: $8f
	sbc  l                                           ; $5ce6: $9d
	sbc  [hl]                                        ; $5ce7: $9e
	sbc  a                                           ; $5ce8: $9f
	and  b                                           ; $5ce9: $a0
	and  c                                           ; $5cea: $a1
	ld   e, l                                        ; $5ceb: $5d
	ld   c, h                                        ; $5cec: $4c
	ldh  a, [$f0]                                    ; $5ced: $f0 $f0
	ld   c, a                                        ; $5cef: $4f
	sub  c                                           ; $5cf0: $91
	sub  b                                           ; $5cf1: $90
	sbc  b                                           ; $5cf2: $98
	sbc  c                                           ; $5cf3: $99
	sbc  d                                           ; $5cf4: $9a
	sbc  d                                           ; $5cf5: $9a
	sbc  d                                           ; $5cf6: $9a
	sbc  d                                           ; $5cf7: $9a
	sbc  e                                           ; $5cf8: $9b
	sbc  h                                           ; $5cf9: $9c
	and  l                                           ; $5cfa: $a5
	and  l                                           ; $5cfb: $a5
	and  l                                           ; $5cfc: $a5
	and  l                                           ; $5cfd: $a5
	and  d                                           ; $5cfe: $a2
	and  e                                           ; $5cff: $a3
	sbc  d                                           ; $5d00: $9a
	sbc  d                                           ; $5d01: $9a
	sbc  d                                           ; $5d02: $9a
	sbc  d                                           ; $5d03: $9a
	sbc  c                                           ; $5d04: $99
	sbc  b                                           ; $5d05: $98
	ld   b, b                                        ; $5d06: $40
	ld   b, c                                        ; $5d07: $41
	ld   b, d                                        ; $5d08: $42
	ld   b, e                                        ; $5d09: $43
	ld   b, h                                        ; $5d0a: $44
	ld   b, l                                        ; $5d0b: $45
	ld   b, [hl]                                     ; $5d0c: $46
	and  [hl]                                        ; $5d0d: $a6
	and  a                                           ; $5d0e: $a7
	xor  b                                           ; $5d0f: $a8
	xor  c                                           ; $5d10: $a9
	xor  d                                           ; $5d11: $aa
	xor  e                                           ; $5d12: $ab
	ld   c, l                                        ; $5d13: $4d
	ld   c, [hl]                                     ; $5d14: $4e
	ld   c, a                                        ; $5d15: $4f
	ld   b, b                                        ; $5d16: $40
	ld   b, c                                        ; $5d17: $41
	ld   b, d                                        ; $5d18: $42
	ld   b, e                                        ; $5d19: $43
	ld   d, b                                        ; $5d1a: $50
	ld   d, c                                        ; $5d1b: $51
	ld   d, d                                        ; $5d1c: $52
	ld   d, e                                        ; $5d1d: $53
	ld   d, h                                        ; $5d1e: $54
	ld   d, l                                        ; $5d1f: $55
	ld   d, [hl]                                     ; $5d20: $56
	or   [hl]                                        ; $5d21: $b6
	or   a                                           ; $5d22: $b7
	cp   b                                           ; $5d23: $b8
	cp   c                                           ; $5d24: $b9
	cp   d                                           ; $5d25: $ba
	cp   e                                           ; $5d26: $bb
	ld   e, l                                        ; $5d27: $5d
	ld   e, [hl]                                     ; $5d28: $5e
	ld   e, a                                        ; $5d29: $5f
	ld   d, b                                        ; $5d2a: $50
	ld   d, c                                        ; $5d2b: $51
	ld   d, d                                        ; $5d2c: $52
	ld   d, e                                        ; $5d2d: $53
	ld   h, b                                        ; $5d2e: $60
	ld   h, c                                        ; $5d2f: $61
	ld   h, d                                        ; $5d30: $62
	ld   h, e                                        ; $5d31: $63
	ld   e, [hl]                                     ; $5d32: $5e
	ld   h, l                                        ; $5d33: $65
	ld   h, [hl]                                     ; $5d34: $66
	add  $c7                                         ; $5d35: $c6 $c7
	ret  z                                           ; $5d37: $c8

	ret                                              ; $5d38: $c9


	jp   z, $6dcb                            ; $5d39: $ca $cb $6d

	ld   l, [hl]                                     ; $5d3c: $6e
	ld   l, a                                        ; $5d3d: $6f
	ld   h, b                                        ; $5d3e: $60
	ld   h, c                                        ; $5d3f: $61
	ld   h, d                                        ; $5d40: $62
	ld   h, e                                        ; $5d41: $63
	ld   b, b                                        ; $5d42: $40
	ld   b, c                                        ; $5d43: $41
	ld   b, d                                        ; $5d44: $42
	ld   b, e                                        ; $5d45: $43
	ld   b, h                                        ; $5d46: $44
	ld   b, l                                        ; $5d47: $45
	or   h                                           ; $5d48: $b4
	or   l                                           ; $5d49: $b5
	call c, $dedd                                    ; $5d4a: $dc $dd $de
	rst  JumpTable                                         ; $5d4d: $df
	ldh  [$e1], a                                    ; $5d4e: $e0 $e1
	ld   c, [hl]                                     ; $5d50: $4e
	ld   c, a                                        ; $5d51: $4f
	ld   b, b                                        ; $5d52: $40
	ld   b, c                                        ; $5d53: $41
	ld   b, d                                        ; $5d54: $42
	ld   b, e                                        ; $5d55: $43
	ld   d, b                                        ; $5d56: $50
	ld   d, c                                        ; $5d57: $51
	ld   d, d                                        ; $5d58: $52
	ld   d, e                                        ; $5d59: $53
	ld   d, h                                        ; $5d5a: $54
	ld   d, l                                        ; $5d5b: $55
	call nz, $e2c5                                   ; $5d5c: $c4 $c5 $e2
	db   $e3                                         ; $5d5f: $e3
	db   $e4                                         ; $5d60: $e4
	push hl                                          ; $5d61: $e5
	and  $e7                                         ; $5d62: $e6 $e7
	ld   e, [hl]                                     ; $5d64: $5e
	ld   e, a                                        ; $5d65: $5f
	ld   d, b                                        ; $5d66: $50
	ld   d, c                                        ; $5d67: $51
	ld   d, d                                        ; $5d68: $52
	ld   d, e                                        ; $5d69: $53
	ld   h, b                                        ; $5d6a: $60
	ld   h, c                                        ; $5d6b: $61
	ld   h, d                                        ; $5d6c: $62
	ld   h, e                                        ; $5d6d: $63
	ld   e, [hl]                                     ; $5d6e: $5e
	ld   h, l                                        ; $5d6f: $65
	call nc, $d6d5                                   ; $5d70: $d4 $d5 $d6
	rst  $10                                         ; $5d73: $d7
	ret  c                                           ; $5d74: $d8

	reti                                             ; $5d75: $d9


	jp   c, $6edb                            ; $5d76: $da $db $6e

	ld   l, a                                        ; $5d79: $6f
	ld   h, b                                        ; $5d7a: $60
	ld   h, c                                        ; $5d7b: $61
	ld   h, d                                        ; $5d7c: $62
	ld   h, e                                        ; $5d7d: $63
	ld   b, b                                        ; $5d7e: $40
	ld   b, c                                        ; $5d7f: $41
	ld   b, d                                        ; $5d80: $42
	ld   b, e                                        ; $5d81: $43
	ld   b, h                                        ; $5d82: $44
	ld   b, l                                        ; $5d83: $45
	xor  h                                           ; $5d84: $ac
	xor  l                                           ; $5d85: $ad
	xor  [hl]                                        ; $5d86: $ae
	xor  a                                           ; $5d87: $af
	or   b                                           ; $5d88: $b0
	or   c                                           ; $5d89: $b1
	or   d                                           ; $5d8a: $b2
	or   e                                           ; $5d8b: $b3
	ld   c, [hl]                                     ; $5d8c: $4e
	ld   c, a                                        ; $5d8d: $4f
	ld   b, b                                        ; $5d8e: $40
	ld   b, c                                        ; $5d8f: $41
	ld   b, d                                        ; $5d90: $42
	ld   b, e                                        ; $5d91: $43
	ld   d, b                                        ; $5d92: $50
	ld   d, c                                        ; $5d93: $51
	ld   d, d                                        ; $5d94: $52
	ld   d, e                                        ; $5d95: $53
	ld   d, h                                        ; $5d96: $54
	ld   d, l                                        ; $5d97: $55
	cp   h                                           ; $5d98: $bc
	cp   l                                           ; $5d99: $bd
	cp   [hl]                                        ; $5d9a: $be
	cp   a                                           ; $5d9b: $bf
	ret  nz                                          ; $5d9c: $c0

	pop  bc                                          ; $5d9d: $c1
	jp   nz, Jump_034_5ec3                           ; $5d9e: $c2 $c3 $5e

	ld   e, a                                        ; $5da1: $5f
	ld   d, b                                        ; $5da2: $50
	ld   d, c                                        ; $5da3: $51
	ld   d, d                                        ; $5da4: $52
	ld   d, e                                        ; $5da5: $53
	ld   h, b                                        ; $5da6: $60
	ld   h, c                                        ; $5da7: $61
	ld   h, d                                        ; $5da8: $62
	ld   h, e                                        ; $5da9: $63
	ld   e, [hl]                                     ; $5daa: $5e
	ld   h, l                                        ; $5dab: $65
	call z, $cecd                                    ; $5dac: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5daf: $cf
	ret  nc                                          ; $5db0: $d0

	pop  de                                          ; $5db1: $d1
	jp   nc, $6ed3                           ; $5db2: $d2 $d3 $6e

	ld   l, a                                        ; $5db5: $6f
	ld   h, b                                        ; $5db6: $60
	ld   h, c                                        ; $5db7: $61
	ld   h, d                                        ; $5db8: $62
	ld   h, e                                        ; $5db9: $63
	dec  b                                           ; $5dba: $05
	dec  b                                           ; $5dbb: $05
	dec  b                                           ; $5dbc: $05
	dec  b                                           ; $5dbd: $05
	dec  c                                           ; $5dbe: $0d
	dec  c                                           ; $5dbf: $0d
	dec  c                                           ; $5dc0: $0d
	dec  c                                           ; $5dc1: $0d
	dec  c                                           ; $5dc2: $0d
	dec  c                                           ; $5dc3: $0d
	dec  c                                           ; $5dc4: $0d
	dec  c                                           ; $5dc5: $0d
	dec  c                                           ; $5dc6: $0d
	dec  c                                           ; $5dc7: $0d
	dec  c                                           ; $5dc8: $0d
	dec  c                                           ; $5dc9: $0d
	dec  b                                           ; $5dca: $05
	dec  b                                           ; $5dcb: $05
	dec  b                                           ; $5dcc: $05
	dec  b                                           ; $5dcd: $05
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
	dec  b                                           ; $5dda: $05
	dec  b                                           ; $5ddb: $05
	dec  b                                           ; $5ddc: $05
	dec  b                                           ; $5ddd: $05
	dec  c                                           ; $5dde: $0d
	dec  c                                           ; $5ddf: $0d
	dec  c                                           ; $5de0: $0d
	dec  c                                           ; $5de1: $0d
	dec  c                                           ; $5de2: $0d
	dec  c                                           ; $5de3: $0d
	dec  c                                           ; $5de4: $0d
	dec  c                                           ; $5de5: $0d
	dec  c                                           ; $5de6: $0d
	dec  c                                           ; $5de7: $0d
	dec  c                                           ; $5de8: $0d
	dec  c                                           ; $5de9: $0d
	dec  b                                           ; $5dea: $05
	dec  b                                           ; $5deb: $05
	dec  b                                           ; $5dec: $05
	dec  b                                           ; $5ded: $05
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
	dec  b                                           ; $5dfa: $05
	dec  b                                           ; $5dfb: $05
	dec  b                                           ; $5dfc: $05
	dec  b                                           ; $5dfd: $05
	dec  c                                           ; $5dfe: $0d
	dec  c                                           ; $5dff: $0d
	dec  c                                           ; $5e00: $0d
	dec  c                                           ; $5e01: $0d
	dec  c                                           ; $5e02: $0d
	dec  c                                           ; $5e03: $0d
	dec  c                                           ; $5e04: $0d
	dec  c                                           ; $5e05: $0d
	dec  c                                           ; $5e06: $0d
	dec  c                                           ; $5e07: $0d
	dec  c                                           ; $5e08: $0d
	dec  c                                           ; $5e09: $0d
	dec  b                                           ; $5e0a: $05
	dec  b                                           ; $5e0b: $05
	dec  b                                           ; $5e0c: $05
	dec  b                                           ; $5e0d: $05
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
	dec  b                                           ; $5e1a: $05
	dec  b                                           ; $5e1b: $05
	dec  b                                           ; $5e1c: $05
	dec  b                                           ; $5e1d: $05
	dec  c                                           ; $5e1e: $0d
	dec  c                                           ; $5e1f: $0d
	dec  c                                           ; $5e20: $0d
	dec  c                                           ; $5e21: $0d
	dec  c                                           ; $5e22: $0d
	dec  c                                           ; $5e23: $0d
	dec  c                                           ; $5e24: $0d
	dec  c                                           ; $5e25: $0d
	dec  c                                           ; $5e26: $0d
	dec  c                                           ; $5e27: $0d
	dec  c                                           ; $5e28: $0d
	dec  c                                           ; $5e29: $0d
	dec  b                                           ; $5e2a: $05
	dec  b                                           ; $5e2b: $05
	dec  b                                           ; $5e2c: $05
	dec  b                                           ; $5e2d: $05
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
	dec  b                                           ; $5e3a: $05
	dec  b                                           ; $5e3b: $05
	dec  b                                           ; $5e3c: $05
	dec  b                                           ; $5e3d: $05
	dec  c                                           ; $5e3e: $0d
	dec  c                                           ; $5e3f: $0d
	dec  c                                           ; $5e40: $0d
	dec  c                                           ; $5e41: $0d
	dec  c                                           ; $5e42: $0d
	dec  c                                           ; $5e43: $0d
	dec  c                                           ; $5e44: $0d
	dec  c                                           ; $5e45: $0d
	dec  c                                           ; $5e46: $0d
	dec  c                                           ; $5e47: $0d
	dec  c                                           ; $5e48: $0d
	dec  c                                           ; $5e49: $0d
	dec  b                                           ; $5e4a: $05
	dec  b                                           ; $5e4b: $05
	dec  b                                           ; $5e4c: $05
	dec  b                                           ; $5e4d: $05
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
	dec  b                                           ; $5e5a: $05
	dec  b                                           ; $5e5b: $05
	dec  b                                           ; $5e5c: $05
	dec  b                                           ; $5e5d: $05
	dec  c                                           ; $5e5e: $0d
	dec  c                                           ; $5e5f: $0d
	dec  c                                           ; $5e60: $0d
	dec  c                                           ; $5e61: $0d
	dec  c                                           ; $5e62: $0d
	dec  c                                           ; $5e63: $0d
	dec  c                                           ; $5e64: $0d
	dec  c                                           ; $5e65: $0d
	dec  c                                           ; $5e66: $0d
	dec  c                                           ; $5e67: $0d
	dec  c                                           ; $5e68: $0d
	dec  c                                           ; $5e69: $0d
	dec  b                                           ; $5e6a: $05
	dec  b                                           ; $5e6b: $05
	dec  b                                           ; $5e6c: $05
	dec  b                                           ; $5e6d: $05
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
	dec  b                                           ; $5e7a: $05
	dec  b                                           ; $5e7b: $05
	dec  b                                           ; $5e7c: $05
	dec  b                                           ; $5e7d: $05
	dec  c                                           ; $5e7e: $0d
	dec  c                                           ; $5e7f: $0d
	dec  c                                           ; $5e80: $0d
	dec  c                                           ; $5e81: $0d
	dec  c                                           ; $5e82: $0d
	dec  c                                           ; $5e83: $0d
	dec  c                                           ; $5e84: $0d
	dec  c                                           ; $5e85: $0d
	dec  c                                           ; $5e86: $0d
	dec  c                                           ; $5e87: $0d
	dec  c                                           ; $5e88: $0d
	dec  c                                           ; $5e89: $0d
	dec  b                                           ; $5e8a: $05
	dec  b                                           ; $5e8b: $05
	dec  b                                           ; $5e8c: $05
	dec  b                                           ; $5e8d: $05
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
	dec  b                                           ; $5e9a: $05
	dec  b                                           ; $5e9b: $05
	dec  b                                           ; $5e9c: $05
	dec  b                                           ; $5e9d: $05
	dec  c                                           ; $5e9e: $0d
	dec  c                                           ; $5e9f: $0d
	dec  c                                           ; $5ea0: $0d
	dec  c                                           ; $5ea1: $0d
	dec  c                                           ; $5ea2: $0d
	dec  c                                           ; $5ea3: $0d
	dec  c                                           ; $5ea4: $0d
	dec  c                                           ; $5ea5: $0d
	dec  c                                           ; $5ea6: $0d
	dec  c                                           ; $5ea7: $0d
	dec  c                                           ; $5ea8: $0d
	dec  c                                           ; $5ea9: $0d
	dec  b                                           ; $5eaa: $05
	dec  b                                           ; $5eab: $05
	dec  b                                           ; $5eac: $05
	dec  b                                           ; $5ead: $05
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
	dec  b                                           ; $5eba: $05
	dec  b                                           ; $5ebb: $05
	dec  b                                           ; $5ebc: $05
	dec  b                                           ; $5ebd: $05
	dec  c                                           ; $5ebe: $0d
	dec  c                                           ; $5ebf: $0d
	dec  c                                           ; $5ec0: $0d
	dec  c                                           ; $5ec1: $0d
	dec  c                                           ; $5ec2: $0d

Jump_034_5ec3:
	dec  c                                           ; $5ec3: $0d
	dec  c                                           ; $5ec4: $0d
	dec  c                                           ; $5ec5: $0d
	dec  c                                           ; $5ec6: $0d
	dec  c                                           ; $5ec7: $0d
	dec  c                                           ; $5ec8: $0d
	dec  c                                           ; $5ec9: $0d
	dec  b                                           ; $5eca: $05
	dec  b                                           ; $5ecb: $05
	dec  b                                           ; $5ecc: $05
	dec  b                                           ; $5ecd: $05
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
	dec  b                                           ; $5eda: $05
	dec  b                                           ; $5edb: $05
	dec  b                                           ; $5edc: $05
	dec  b                                           ; $5edd: $05
	dec  c                                           ; $5ede: $0d
	dec  c                                           ; $5edf: $0d
	dec  c                                           ; $5ee0: $0d
	dec  c                                           ; $5ee1: $0d
	dec  c                                           ; $5ee2: $0d
	dec  c                                           ; $5ee3: $0d
	dec  c                                           ; $5ee4: $0d
	dec  c                                           ; $5ee5: $0d
	dec  c                                           ; $5ee6: $0d
	dec  c                                           ; $5ee7: $0d
	dec  c                                           ; $5ee8: $0d
	dec  c                                           ; $5ee9: $0d
	dec  b                                           ; $5eea: $05
	dec  b                                           ; $5eeb: $05
	dec  b                                           ; $5eec: $05
	dec  b                                           ; $5eed: $05
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

Jump_034_6100:
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
	add  [hl]                                        ; $61ba: $86
	nop                                              ; $61bb: $00
	ld   a, a                                        ; $61bc: $7f
	add  c                                           ; $61bd: $81
	nop                                              ; $61be: $00
	ret  nz                                          ; $61bf: $c0

	nop                                              ; $61c0: $00
	ld   h, b                                        ; $61c1: $60
	nop                                              ; $61c2: $00
	jr   nc, jr_034_61c5                             ; $61c3: $30 $00

jr_034_61c5:
	jr   jr_034_61c7                                 ; $61c5: $18 $00

jr_034_61c7:
	inc  c                                           ; $61c7: $0c
	nop                                              ; $61c8: $00
	ld   b, $00                                      ; $61c9: $06 $00
	db   $fc                                         ; $61cb: $fc
	nop                                              ; $61cc: $00
	ld   a, [hl]                                     ; $61cd: $7e
	nop                                              ; $61ce: $00
	ret  nz                                          ; $61cf: $c0

	nop                                              ; $61d0: $00
	ld   h, b                                        ; $61d1: $60
	nop                                              ; $61d2: $00
	jr   nc, jr_034_61d5                             ; $61d3: $30 $00

jr_034_61d5:
	jr   jr_034_61d7                                 ; $61d5: $18 $00

jr_034_61d7:
	inc  c                                           ; $61d7: $0c
	nop                                              ; $61d8: $00
	ld   b, $00                                      ; $61d9: $06 $00
	db   $fc                                         ; $61db: $fc
	nop                                              ; $61dc: $00
	ld   a, [hl]                                     ; $61dd: $7e
	nop                                              ; $61de: $00
	ret  nz                                          ; $61df: $c0

	nop                                              ; $61e0: $00
	ld   h, b                                        ; $61e1: $60
	nop                                              ; $61e2: $00
	jr   nc, jr_034_61e5                             ; $61e3: $30 $00

jr_034_61e5:
	jr   jr_034_61e7                                 ; $61e5: $18 $00

jr_034_61e7:
	inc  c                                           ; $61e7: $0c
	nop                                              ; $61e8: $00
	ld   b, $00                                      ; $61e9: $06 $00
	db   $fc                                         ; $61eb: $fc
	nop                                              ; $61ec: $00
	ld   a, [hl]                                     ; $61ed: $7e
	nop                                              ; $61ee: $00
	ret  nz                                          ; $61ef: $c0

	nop                                              ; $61f0: $00
	ld   h, b                                        ; $61f1: $60
	nop                                              ; $61f2: $00
	jr   nc, jr_034_61f5                             ; $61f3: $30 $00

jr_034_61f5:
	jr   jr_034_61f7                                 ; $61f5: $18 $00

jr_034_61f7:
	inc  c                                           ; $61f7: $0c
	nop                                              ; $61f8: $00
	ld   b, $00                                      ; $61f9: $06 $00
	db   $fc                                         ; $61fb: $fc
	nop                                              ; $61fc: $00
	ld   a, [hl]                                     ; $61fd: $7e
	nop                                              ; $61fe: $00
	ret  nz                                          ; $61ff: $c0

	nop                                              ; $6200: $00
	ld   h, b                                        ; $6201: $60
	nop                                              ; $6202: $00
	jr   nc, jr_034_6205                             ; $6203: $30 $00

jr_034_6205:
	jr   jr_034_6207                                 ; $6205: $18 $00

jr_034_6207:
	inc  c                                           ; $6207: $0c
	nop                                              ; $6208: $00
	ld   b, $00                                      ; $6209: $06 $00
	db   $fc                                         ; $620b: $fc
	nop                                              ; $620c: $00
	ld   a, [hl]                                     ; $620d: $7e
	nop                                              ; $620e: $00
	ret  nz                                          ; $620f: $c0

	nop                                              ; $6210: $00
	ld   h, b                                        ; $6211: $60
	nop                                              ; $6212: $00
	jr   nc, jr_034_6215                             ; $6213: $30 $00

jr_034_6215:
	jr   jr_034_6217                                 ; $6215: $18 $00

jr_034_6217:
	inc  c                                           ; $6217: $0c
	nop                                              ; $6218: $00
	ld   b, $00                                      ; $6219: $06 $00
	db   $fc                                         ; $621b: $fc
	nop                                              ; $621c: $00
	ld   a, [hl]                                     ; $621d: $7e
	nop                                              ; $621e: $00
	ret  nz                                          ; $621f: $c0

	nop                                              ; $6220: $00
	ld   h, b                                        ; $6221: $60
	nop                                              ; $6222: $00
	jr   nc, jr_034_6225                             ; $6223: $30 $00

jr_034_6225:
	jr   jr_034_6227                                 ; $6225: $18 $00

jr_034_6227:
	inc  c                                           ; $6227: $0c
	nop                                              ; $6228: $00
	ld   b, $00                                      ; $6229: $06 $00
	db   $fc                                         ; $622b: $fc
	nop                                              ; $622c: $00
	ld   a, [hl]                                     ; $622d: $7e
	nop                                              ; $622e: $00
	ret  nz                                          ; $622f: $c0

	nop                                              ; $6230: $00
	ld   h, b                                        ; $6231: $60
	nop                                              ; $6232: $00
	jr   nc, jr_034_6235                             ; $6233: $30 $00

jr_034_6235:
	jr   jr_034_6237                                 ; $6235: $18 $00

jr_034_6237:
	inc  c                                           ; $6237: $0c
	nop                                              ; $6238: $00
	ld   b, $00                                      ; $6239: $06 $00
	db   $fc                                         ; $623b: $fc
	nop                                              ; $623c: $00
	ld   h, b                                        ; $623d: $60
	ld   a, [hl]                                     ; $623e: $7e
	nop                                              ; $623f: $00
	ret  nz                                          ; $6240: $c0

	nop                                              ; $6241: $00
	ld   h, b                                        ; $6242: $60
	nop                                              ; $6243: $00
	jr   nc, jr_034_6246                             ; $6244: $30 $00

jr_034_6246:
	jr   jr_034_6248                                 ; $6246: $18 $00

jr_034_6248:
	inc  c                                           ; $6248: $0c
	nop                                              ; $6249: $00
	ld   b, $00                                      ; $624a: $06 $00
	db   $fc                                         ; $624c: $fc
	nop                                              ; $624d: $00
	ld   a, [hl]                                     ; $624e: $7e
	nop                                              ; $624f: $00
	ret  nz                                          ; $6250: $c0

	nop                                              ; $6251: $00
	ld   h, b                                        ; $6252: $60
	nop                                              ; $6253: $00
	jr   nc, jr_034_6256                             ; $6254: $30 $00

jr_034_6256:
	jr   jr_034_6258                                 ; $6256: $18 $00

jr_034_6258:
	inc  c                                           ; $6258: $0c
	nop                                              ; $6259: $00
	ld   b, $00                                      ; $625a: $06 $00
	db   $fc                                         ; $625c: $fc
	nop                                              ; $625d: $00
	ld   a, [hl]                                     ; $625e: $7e
	nop                                              ; $625f: $00
	ret  nz                                          ; $6260: $c0

	nop                                              ; $6261: $00
	ld   h, b                                        ; $6262: $60
	nop                                              ; $6263: $00
	jr   nc, jr_034_6266                             ; $6264: $30 $00

jr_034_6266:
	jr   jr_034_6268                                 ; $6266: $18 $00

jr_034_6268:
	inc  c                                           ; $6268: $0c
	nop                                              ; $6269: $00
	ld   b, $00                                      ; $626a: $06 $00
	db   $fc                                         ; $626c: $fc
	nop                                              ; $626d: $00
	ld   a, [hl]                                     ; $626e: $7e
	nop                                              ; $626f: $00
	ret  nz                                          ; $6270: $c0

	nop                                              ; $6271: $00
	ld   h, b                                        ; $6272: $60
	nop                                              ; $6273: $00
	jr   nc, jr_034_6276                             ; $6274: $30 $00

jr_034_6276:
	jr   jr_034_6278                                 ; $6276: $18 $00

jr_034_6278:
	inc  c                                           ; $6278: $0c
	nop                                              ; $6279: $00
	ld   b, $00                                      ; $627a: $06 $00
	db   $fc                                         ; $627c: $fc
	nop                                              ; $627d: $00
	ld   a, [hl]                                     ; $627e: $7e
	nop                                              ; $627f: $00
	ret  nz                                          ; $6280: $c0

	nop                                              ; $6281: $00
	ld   h, b                                        ; $6282: $60
	nop                                              ; $6283: $00
	jr   nc, jr_034_6286                             ; $6284: $30 $00

jr_034_6286:
	jr   jr_034_6288                                 ; $6286: $18 $00

jr_034_6288:
	inc  c                                           ; $6288: $0c
	nop                                              ; $6289: $00
	ld   b, $00                                      ; $628a: $06 $00
	db   $fc                                         ; $628c: $fc
	nop                                              ; $628d: $00
	ld   a, [hl]                                     ; $628e: $7e
	nop                                              ; $628f: $00
	ret  nz                                          ; $6290: $c0

	nop                                              ; $6291: $00
	ld   h, b                                        ; $6292: $60
	nop                                              ; $6293: $00
	jr   nc, jr_034_6296                             ; $6294: $30 $00

jr_034_6296:
	jr   jr_034_6298                                 ; $6296: $18 $00

jr_034_6298:
	inc  c                                           ; $6298: $0c
	nop                                              ; $6299: $00
	ld   b, $00                                      ; $629a: $06 $00
	db   $fc                                         ; $629c: $fc
	nop                                              ; $629d: $00
	rst  $38                                         ; $629e: $ff
	adc  c                                           ; $629f: $89
	nop                                              ; $62a0: $00
	inc  b                                           ; $62a1: $04
	stop                                             ; $62a2: $10 $00
	ld   l, b                                        ; $62a4: $68
	nop                                              ; $62a5: $00
	ld   a, b                                        ; $62a6: $78
	adc  c                                           ; $62a7: $89
	nop                                              ; $62a8: $00
	nop                                              ; $62a9: $00
	ld   b, b                                        ; $62aa: $40
	add  c                                           ; $62ab: $81
	nop                                              ; $62ac: $00
	db   $10                                         ; $62ad: $10
	ld   h, b                                        ; $62ae: $60
	nop                                              ; $62af: $00
	inc  c                                           ; $62b0: $0c
	nop                                              ; $62b1: $00
	ld   l, d                                        ; $62b2: $6a
	nop                                              ; $62b3: $00
	ld   [bc], a                                     ; $62b4: $02
	nop                                              ; $62b5: $00
	ld   e, b                                        ; $62b6: $58
	nop                                              ; $62b7: $00
	ld   a, [hl-]                                    ; $62b8: $3a
	nop                                              ; $62b9: $00
	ld   a, [hl-]                                    ; $62ba: $3a
	nop                                              ; $62bb: $00
	inc  e                                           ; $62bc: $1c
	nop                                              ; $62bd: $00
	ld   b, b                                        ; $62be: $40
	add  e                                           ; $62bf: $83
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	inc  b                                           ; $62c2: $04
	add  e                                           ; $62c3: $83
	nop                                              ; $62c4: $00
	ld   [de], a                                     ; $62c5: $12
	ld   a, h                                        ; $62c6: $7c
	nop                                              ; $62c7: $00
	jr   c, jr_034_62ca                              ; $62c8: $38 $00

jr_034_62ca:
	stop                                             ; $62ca: $10 $00
	ld   [$0400], sp                                 ; $62cc: $08 $00 $04
	nop                                              ; $62cf: $00
	ld   [bc], a                                     ; $62d0: $02
	nop                                              ; $62d1: $00
	ld   [bc], a                                     ; $62d2: $02
	nop                                              ; $62d3: $00
	inc  b                                           ; $62d4: $04
	nop                                              ; $62d5: $00
	ld   [$1000], sp                                 ; $62d6: $08 $00 $10
	sub  l                                           ; $62d9: $95
	nop                                              ; $62da: $00
	ld   [$0010], sp                                 ; $62db: $08 $10 $00
	jr   z, jr_034_62e0                              ; $62de: $28 $00

jr_034_62e0:
	ld   b, h                                        ; $62e0: $44
	nop                                              ; $62e1: $00
	add  d                                           ; $62e2: $82
	nop                                              ; $62e3: $00
	cp   $ad                                         ; $62e4: $fe $ad
	nop                                              ; $62e6: $00
	ld   [bc], a                                     ; $62e7: $02
	ld   l, h                                        ; $62e8: $6c
	nop                                              ; $62e9: $00
	ld   l, h                                        ; $62ea: $6c
	add  e                                           ; $62eb: $83
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	ld   de, $0083                                   ; $62ee: $11 $83 $00
	inc  b                                           ; $62f1: $04
	ld   bc, $3800                                   ; $62f2: $01 $00 $38
	nop                                              ; $62f5: $00
	jr   z, @-$7b                                    ; $62f6: $28 $83

	nop                                              ; $62f8: $00
	ld   a, [bc]                                     ; $62f9: $0a
	jr   nz, jr_034_62fc                             ; $62fa: $20 $00

jr_034_62fc:
	sbc  h                                           ; $62fc: $9c
	nop                                              ; $62fd: $00
	adc  b                                           ; $62fe: $88
	nop                                              ; $62ff: $00
	ldh  [rP1], a                                    ; $6300: $e0 $00
	ld   b, b                                        ; $6302: $40
	nop                                              ; $6303: $00
	sub  h                                           ; $6304: $94
	add  c                                           ; $6305: $81
	nop                                              ; $6306: $00
	ld   [$0004], sp                                 ; $6307: $08 $04 $00
	ld   l, $00                                      ; $630a: $2e $00
	ld   c, $00                                      ; $630c: $0e $00
	call c, $d800                                    ; $630e: $dc $00 $d8
	add  c                                           ; $6311: $81
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	jr   nz, @-$7d                                   ; $6314: $20 $81

	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	inc  d                                           ; $6318: $14
	add  c                                           ; $6319: $81
	nop                                              ; $631a: $00
	ld   [bc], a                                     ; $631b: $02
	ld   l, h                                        ; $631c: $6c
	nop                                              ; $631d: $00
	ld   [hl], b                                     ; $631e: $70
	add  e                                           ; $631f: $83
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	ld   [$0083], sp                                 ; $6322: $08 $83 $00
	ld   a, [bc]                                     ; $6325: $0a
	stop                                             ; $6326: $10 $00
	ld   l, h                                        ; $6328: $6c
	nop                                              ; $6329: $00
	ld   l, h                                        ; $632a: $6c
	nop                                              ; $632b: $00
	ld   l, h                                        ; $632c: $6c
	nop                                              ; $632d: $00
	ld   l, l                                        ; $632e: $6d
	nop                                              ; $632f: $00
	ld   de, $0083                                   ; $6330: $11 $83 $00
	ld   a, [bc]                                     ; $6333: $0a
	sub  b                                           ; $6334: $90
	nop                                              ; $6335: $00
	inc  l                                           ; $6336: $2c
	nop                                              ; $6337: $00
	inc  l                                           ; $6338: $2c
	nop                                              ; $6339: $00
	inc  l                                           ; $633a: $2c
	nop                                              ; $633b: $00
	ld   a, h                                        ; $633c: $7c
	nop                                              ; $633d: $00
	ret  nz                                          ; $633e: $c0

	add  e                                           ; $633f: $83
	nop                                              ; $6340: $00
	ld   a, [bc]                                     ; $6341: $0a
	ld   [bc], a                                     ; $6342: $02
	nop                                              ; $6343: $00
	inc  c                                           ; $6344: $0c
	nop                                              ; $6345: $00
	inc  c                                           ; $6346: $0c
	nop                                              ; $6347: $00
	inc  c                                           ; $6348: $0c
	nop                                              ; $6349: $00
	add  hl, bc                                      ; $634a: $09
	nop                                              ; $634b: $00
	rlca                                             ; $634c: $07
	add  e                                           ; $634d: $83
	nop                                              ; $634e: $00
	inc  c                                           ; $634f: $0c
	adc  a                                           ; $6350: $8f
	nop                                              ; $6351: $00
	ld   h, a                                        ; $6352: $67
	nop                                              ; $6353: $00
	ld   h, a                                        ; $6354: $67
	nop                                              ; $6355: $00
	ld   l, l                                        ; $6356: $6d
	nop                                              ; $6357: $00
	dec  a                                           ; $6358: $3d
	nop                                              ; $6359: $00
	or   $00                                         ; $635a: $f6 $00
	ld   l, l                                        ; $635c: $6d
	add  c                                           ; $635d: $81
	nop                                              ; $635e: $00
	ld   [bc], a                                     ; $635f: $02
	add  $00                                         ; $6360: $c6 $00
	add  d                                           ; $6362: $82
	add  l                                           ; $6363: $85
	nop                                              ; $6364: $00
	ld   [bc], a                                     ; $6365: $02
	call nc, $4000                           ; $6366: $d4 $00 $40
	add  c                                           ; $6369: $81
	nop                                              ; $636a: $00
	ld   [bc], a                                     ; $636b: $02
	jr   c, jr_034_636e                              ; $636c: $38 $00

jr_034_636e:
	xor  h                                           ; $636e: $ac
	add  l                                           ; $636f: $85
	nop                                              ; $6370: $00
	ld   [bc], a                                     ; $6371: $02
	xor  e                                           ; $6372: $ab
	nop                                              ; $6373: $00
	inc  bc                                          ; $6374: $03
	add  e                                           ; $6375: $83
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	xor  b                                           ; $6378: $a8
	add  l                                           ; $6379: $85
	nop                                              ; $637a: $00
	ld   [$0090], sp                                 ; $637b: $08 $90 $00
	add  b                                           ; $637e: $80
	nop                                              ; $637f: $00
	jr   c, jr_034_6382                              ; $6380: $38 $00

jr_034_6382:
	ld   h, b                                        ; $6382: $60
	nop                                              ; $6383: $00
	ld   c, b                                        ; $6384: $48
	add  l                                           ; $6385: $85
	nop                                              ; $6386: $00
	ld   [$0021], sp                                 ; $6387: $08 $21 $00
	push af                                          ; $638a: $f5
	nop                                              ; $638b: $00
	sbc  h                                           ; $638c: $9c
	nop                                              ; $638d: $00
	ld   l, $00                                      ; $638e: $2e $00
	ld   h, [hl]                                     ; $6390: $66
	add  l                                           ; $6391: $85
	nop                                              ; $6392: $00
	ld   [$00bc], sp                                 ; $6393: $08 $bc $00
	jr   jr_034_6398                                 ; $6396: $18 $00

jr_034_6398:
	jr   jr_034_639a                                 ; $6398: $18 $00

jr_034_639a:
	jr   jr_034_639c                                 ; $639a: $18 $00

jr_034_639c:
	and  h                                           ; $639c: $a4
	add  l                                           ; $639d: $85
	nop                                              ; $639e: $00
	ld   [$0004], sp                                 ; $639f: $08 $04 $00
	inc  bc                                          ; $63a2: $03
	nop                                              ; $63a3: $00
	inc  bc                                          ; $63a4: $03
	nop                                              ; $63a5: $00
	inc  c                                           ; $63a6: $0c
	nop                                              ; $63a7: $00
	ld   [$0085], sp                                 ; $63a8: $08 $85 $00
	ld   [$0048], sp                                 ; $63ab: $08 $48 $00
	add  a                                           ; $63ae: $87
	nop                                              ; $63af: $00
	sbc  l                                           ; $63b0: $9d
	nop                                              ; $63b1: $00
	inc  b                                           ; $63b2: $04
	nop                                              ; $63b3: $00
	ld   d, [hl]                                     ; $63b4: $56
	adc  e                                           ; $63b5: $8b
	nop                                              ; $63b6: $00
	nop                                              ; $63b7: $00
	add  b                                           ; $63b8: $80
	add  e                                           ; $63b9: $83
	nop                                              ; $63ba: $00
	inc  b                                           ; $63bb: $04
	add  b                                           ; $63bc: $80
	nop                                              ; $63bd: $00
	ret  nz                                          ; $63be: $c0

	nop                                              ; $63bf: $00
	ld   b, b                                        ; $63c0: $40
	add  c                                           ; $63c1: $81
	nop                                              ; $63c2: $00

jr_034_63c3:
	nop                                              ; $63c3: $00
	ret  nz                                          ; $63c4: $c0

	add  c                                           ; $63c5: $81
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	ld   b, b                                        ; $63c8: $40

jr_034_63c9:
	add  l                                           ; $63c9: $85
	nop                                              ; $63ca: $00
	inc  b                                           ; $63cb: $04
	stop                                             ; $63cc: $10 $00
	jr   z, jr_034_63d0                              ; $63ce: $28 $00

jr_034_63d0:
	ld   d, h                                        ; $63d0: $54

jr_034_63d1:
	add  c                                           ; $63d1: $81
	nop                                              ; $63d2: $00
	ld   [bc], a                                     ; $63d3: $02
	stop                                             ; $63d4: $10 $00
	db   $10                                         ; $63d6: $10
	add  c                                           ; $63d7: $81
	nop                                              ; $63d8: $00
	ld   a, [bc]                                     ; $63d9: $0a
	ld   l, h                                        ; $63da: $6c
	nop                                              ; $63db: $00
	adc  b                                           ; $63dc: $88
	nop                                              ; $63dd: $00
	sub  $00                                         ; $63de: $d6 $00
	ld   d, h                                        ; $63e0: $54
	nop                                              ; $63e1: $00
	or   h                                           ; $63e2: $b4
	nop                                              ; $63e3: $00
	or   $81                                         ; $63e4: $f6 $81
	nop                                              ; $63e6: $00
	ld   d, $fe                                      ; $63e7: $16 $fe
	nop                                              ; $63e9: $00
	or   [hl]                                        ; $63ea: $b6
	nop                                              ; $63eb: $00
	stop                                             ; $63ec: $10 $00
	xor  $00                                         ; $63ee: $ee $00
	ld   a, h                                        ; $63f0: $7c
	nop                                              ; $63f1: $00
	cp   $00                                         ; $63f2: $fe $00
	db   $ec                                         ; $63f4: $ec
	nop                                              ; $63f5: $00
	ld   b, b                                        ; $63f6: $40
	nop                                              ; $63f7: $00
	ld   l, [hl]                                     ; $63f8: $6e
	nop                                              ; $63f9: $00
	cp   [hl]                                        ; $63fa: $be

jr_034_63fb:
	nop                                              ; $63fb: $00
	inc  a                                           ; $63fc: $3c
	nop                                              ; $63fd: $00
	ld   a, [bc]                                     ; $63fe: $0a
	add  c                                           ; $63ff: $81
	nop                                              ; $6400: $00
	ld   [bc], a                                     ; $6401: $02
	ld   a, [bc]                                     ; $6402: $0a
	nop                                              ; $6403: $00
	ld   a, [bc]                                     ; $6404: $0a
	add  c                                           ; $6405: $81
	nop                                              ; $6406: $00
	ld   [hl+], a                                    ; $6407: $22
	ld   a, [bc]                                     ; $6408: $0a
	nop                                              ; $6409: $00
	inc  a                                           ; $640a: $3c
	nop                                              ; $640b: $00
	ccf                                              ; $640c: $3f
	nop                                              ; $640d: $00
	ld   hl, $3f00                                   ; $640e: $21 $00 $3f
	nop                                              ; $6411: $00
	ld   e, $00                                      ; $6412: $1e $00
	dec  de                                          ; $6414: $1b
	nop                                              ; $6415: $00
	ld   c, $00                                      ; $6416: $0e $00
	ld   a, e                                        ; $6418: $7b
	nop                                              ; $6419: $00
	ld   d, c                                        ; $641a: $51
	nop                                              ; $641b: $00
	ld   a, $00                                      ; $641c: $3e $00
	ld   a, [hl-]                                    ; $641e: $3a
	nop                                              ; $641f: $00
	inc  c                                           ; $6420: $0c
	nop                                              ; $6421: $00
	inc  d                                           ; $6422: $14
	nop                                              ; $6423: $00
	ld   a, $00                                      ; $6424: $3e $00
	jr   c, jr_034_6428                              ; $6426: $38 $00

jr_034_6428:
	ld   b, $00                                      ; $6428: $06 $00
	inc  e                                           ; $642a: $1c
	adc  e                                           ; $642b: $8b
	nop                                              ; $642c: $00
	ld   [bc], a                                     ; $642d: $02
	jr   c, jr_034_6430                              ; $642e: $38 $00

jr_034_6430:
	ld   a, h                                        ; $6430: $7c
	adc  e                                           ; $6431: $8b
	nop                                              ; $6432: $00
	ld   [bc], a                                     ; $6433: $02
	ld   a, h                                        ; $6434: $7c
	nop                                              ; $6435: $00
	jr   c, jr_034_63c3                              ; $6436: $38 $8b

	nop                                              ; $6438: $00
	inc  b                                           ; $6439: $04
	stop                                             ; $643a: $10 $00
	jr   nz, jr_034_643e                             ; $643c: $20 $00

jr_034_643e:
	jr   nz, jr_034_63c9                             ; $643e: $20 $89

	nop                                              ; $6440: $00
	ld   [bc], a                                     ; $6441: $02
	jr   z, jr_034_6444                              ; $6442: $28 $00

jr_034_6444:
	jr   c, jr_034_63d1                              ; $6444: $38 $8b

	nop                                              ; $6446: $00
	inc  c                                           ; $6447: $0c
	jr   c, jr_034_644a                              ; $6448: $38 $00

jr_034_644a:
	ld   a, h                                        ; $644a: $7c
	nop                                              ; $644b: $00
	ld   b, b                                        ; $644c: $40
	nop                                              ; $644d: $00
	inc  c                                           ; $644e: $0c
	nop                                              ; $644f: $00
	jr   jr_034_6452                                 ; $6450: $18 $00

jr_034_6452:
	jr   nc, jr_034_6454                             ; $6452: $30 $00

jr_034_6454:
	ld   h, b                                        ; $6454: $60
	add  c                                           ; $6455: $81
	nop                                              ; $6456: $00
	ld   [bc], a                                     ; $6457: $02
	inc  a                                           ; $6458: $3c

jr_034_6459:
	nop                                              ; $6459: $00
	ld   a, h                                        ; $645a: $7c

jr_034_645b:
	adc  e                                           ; $645b: $8b
	nop                                              ; $645c: $00
	ld   [$0038], sp                                 ; $645d: $08 $38 $00
	ld   a, h                                        ; $6460: $7c
	nop                                              ; $6461: $00
	ld   b, b                                        ; $6462: $40
	nop                                              ; $6463: $00
	inc  e                                           ; $6464: $1c
	nop                                              ; $6465: $00
	inc  e                                           ; $6466: $1c
	add  e                                           ; $6467: $83
	nop                                              ; $6468: $00
	inc  b                                           ; $6469: $04
	ld   b, b                                        ; $646a: $40
	nop                                              ; $646b: $00
	ld   a, h                                        ; $646c: $7c
	nop                                              ; $646d: $00
	jr   c, jr_034_63fb                              ; $646e: $38 $8b

	nop                                              ; $6470: $00
	ld   [bc], a                                     ; $6471: $02
	ld   [$1000], sp                                 ; $6472: $08 $00 $10
	add  c                                           ; $6475: $81
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	jr   nc, jr_034_63fb                             ; $6478: $30 $81

	nop                                              ; $647a: $00
	inc  b                                           ; $647b: $04
	ld   h, b                                        ; $647c: $60
	nop                                              ; $647d: $00
	inc  [hl]                                        ; $647e: $34
	nop                                              ; $647f: $00
	ld   [hl], h                                     ; $6480: $74
	add  c                                           ; $6481: $81
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	ld   [$008b], sp                                 ; $6484: $08 $8b $00
	ld   [bc], a                                     ; $6487: $02
	ld   a, h                                        ; $6488: $7c
	nop                                              ; $6489: $00
	inc  a                                           ; $648a: $3c
	add  c                                           ; $648b: $81
	nop                                              ; $648c: $00
	ld   [bc], a                                     ; $648d: $02
	jr   c, jr_034_6490                              ; $648e: $38 $00

jr_034_6490:
	ld   a, h                                        ; $6490: $7c
	add  e                                           ; $6491: $83
	nop                                              ; $6492: $00
	inc  b                                           ; $6493: $04
	ld   b, b                                        ; $6494: $40
	nop                                              ; $6495: $00
	ld   a, h                                        ; $6496: $7c
	nop                                              ; $6497: $00
	jr   c, @-$73                                    ; $6498: $38 $8b

	nop                                              ; $649a: $00
	ld   [$0038], sp                                 ; $649b: $08 $38 $00
	ld   a, h                                        ; $649e: $7c
	nop                                              ; $649f: $00
	inc  b                                           ; $64a0: $04
	nop                                              ; $64a1: $00
	jr   c, jr_034_64a4                              ; $64a2: $38 $00

jr_034_64a4:
	inc  a                                           ; $64a4: $3c
	add  l                                           ; $64a5: $85
	nop                                              ; $64a6: $00
	ld   [bc], a                                     ; $64a7: $02
	ld   a, h                                        ; $64a8: $7c
	nop                                              ; $64a9: $00
	jr   c, @-$73                                    ; $64aa: $38 $8b

	nop                                              ; $64ac: $00
	inc  b                                           ; $64ad: $04
	ld   a, h                                        ; $64ae: $7c
	nop                                              ; $64af: $00
	jr   c, jr_034_64b2                              ; $64b0: $38 $00

jr_034_64b2:
	ld   c, h                                        ; $64b2: $4c
	add  c                                           ; $64b3: $81
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	jr   @-$77                                       ; $64b6: $18 $87

	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	db   $10                                         ; $64ba: $10
	adc  e                                           ; $64bb: $8b
	nop                                              ; $64bc: $00
	ld   [bc], a                                     ; $64bd: $02
	jr   c, jr_034_64c0                              ; $64be: $38 $00

jr_034_64c0:
	ld   a, h                                        ; $64c0: $7c
	add  c                                           ; $64c1: $81
	nop                                              ; $64c2: $00
	ld   [bc], a                                     ; $64c3: $02
	ld   a, h                                        ; $64c4: $7c
	nop                                              ; $64c5: $00
	ld   a, h                                        ; $64c6: $7c
	add  l                                           ; $64c7: $85
	nop                                              ; $64c8: $00
	ld   [bc], a                                     ; $64c9: $02
	ld   a, h                                        ; $64ca: $7c
	nop                                              ; $64cb: $00
	jr   c, jr_034_6459                              ; $64cc: $38 $8b

	nop                                              ; $64ce: $00
	ld   [bc], a                                     ; $64cf: $02
	jr   c, jr_034_64d2                              ; $64d0: $38 $00

jr_034_64d2:
	ld   a, h                                        ; $64d2: $7c
	add  e                                           ; $64d3: $83
	nop                                              ; $64d4: $00
	ld   [bc], a                                     ; $64d5: $02
	ld   a, h                                        ; $64d6: $7c
	nop                                              ; $64d7: $00
	jr   nc, jr_034_645b                             ; $64d8: $30 $81

	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	jr   @-$7d                                       ; $64dc: $18 $81

	nop                                              ; $64de: $00
	ld   bc, $0010                                   ; $64df: $01 $10 $00
	dec  b                                           ; $64e2: $05
	dec  b                                           ; $64e3: $05
	dec  b                                           ; $64e4: $05
	dec  b                                           ; $64e5: $05
	dec  b                                           ; $64e6: $05
	dec  b                                           ; $64e7: $05
	dec  b                                           ; $64e8: $05
	dec  b                                           ; $64e9: $05
	dec  b                                           ; $64ea: $05
	dec  b                                           ; $64eb: $05
	dec  b                                           ; $64ec: $05
	dec  b                                           ; $64ed: $05
	dec  b                                           ; $64ee: $05
	dec  b                                           ; $64ef: $05
	dec  b                                           ; $64f0: $05
	dec  b                                           ; $64f1: $05
	dec  b                                           ; $64f2: $05
	dec  b                                           ; $64f3: $05
	dec  b                                           ; $64f4: $05
	dec  b                                           ; $64f5: $05
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
	ld   [hl+], a                                    ; $6502: $22
	ld   [hl+], a                                    ; $6503: $22
	ld   [hl+], a                                    ; $6504: $22
	ld   [hl+], a                                    ; $6505: $22
	ld   [hl+], a                                    ; $6506: $22
	ld   [hl+], a                                    ; $6507: $22
	ld   [hl+], a                                    ; $6508: $22
	ld   [hl+], a                                    ; $6509: $22
	ld   [bc], a                                     ; $650a: $02
	ld   [bc], a                                     ; $650b: $02
	ld   [bc], a                                     ; $650c: $02
	ld   [bc], a                                     ; $650d: $02
	ld   [bc], a                                     ; $650e: $02
	ld   [bc], a                                     ; $650f: $02
	ld   [bc], a                                     ; $6510: $02
	ld   [bc], a                                     ; $6511: $02
	ld   [bc], a                                     ; $6512: $02
	ld   [bc], a                                     ; $6513: $02
	ld   [bc], a                                     ; $6514: $02
	ld   [bc], a                                     ; $6515: $02
	ld   [hl+], a                                    ; $6516: $22
	ld   [hl+], a                                    ; $6517: $22
	ld   [hl+], a                                    ; $6518: $22
	ld   [hl+], a                                    ; $6519: $22
	ld   [hl+], a                                    ; $651a: $22
	ld   [hl+], a                                    ; $651b: $22
	ld   [hl+], a                                    ; $651c: $22
	ld   [hl+], a                                    ; $651d: $22
	ld   [bc], a                                     ; $651e: $02
	ld   [bc], a                                     ; $651f: $02
	ld   [bc], a                                     ; $6520: $02
	ld   [bc], a                                     ; $6521: $02
	ld   [bc], a                                     ; $6522: $02
	ld   [bc], a                                     ; $6523: $02
	ld   [bc], a                                     ; $6524: $02
	ld   [bc], a                                     ; $6525: $02
	ld   [bc], a                                     ; $6526: $02
	ld   [bc], a                                     ; $6527: $02
	ld   [bc], a                                     ; $6528: $02
	ld   [bc], a                                     ; $6529: $02
	ld   [hl+], a                                    ; $652a: $22
	ld   [hl+], a                                    ; $652b: $22
	ld   [hl+], a                                    ; $652c: $22
	ld   [hl+], a                                    ; $652d: $22
	ld   [hl+], a                                    ; $652e: $22
	ld   [hl+], a                                    ; $652f: $22
	ld   [hl+], a                                    ; $6530: $22
	ld   [hl+], a                                    ; $6531: $22
	ld   [bc], a                                     ; $6532: $02
	ld   [bc], a                                     ; $6533: $02
	ld   [bc], a                                     ; $6534: $02
	ld   [bc], a                                     ; $6535: $02
	ld   [bc], a                                     ; $6536: $02
	ld   [bc], a                                     ; $6537: $02
	ld   [bc], a                                     ; $6538: $02
	ld   [bc], a                                     ; $6539: $02
	ld   [bc], a                                     ; $653a: $02
	ld   [bc], a                                     ; $653b: $02
	ld   [hl+], a                                    ; $653c: $22
	ld   [hl+], a                                    ; $653d: $22
	ld   [bc], a                                     ; $653e: $02
	ld   [bc], a                                     ; $653f: $02
	ld   [bc], a                                     ; $6540: $02
	ld   [bc], a                                     ; $6541: $02
	ld   [bc], a                                     ; $6542: $02
	ld   [hl+], a                                    ; $6543: $22
	ld   [hl+], a                                    ; $6544: $22
	ld   [hl+], a                                    ; $6545: $22
	ld   [bc], a                                     ; $6546: $02
	ld   [bc], a                                     ; $6547: $02
	ld   [bc], a                                     ; $6548: $02
	ld   [bc], a                                     ; $6549: $02
	ld   [bc], a                                     ; $654a: $02
	ld   [bc], a                                     ; $654b: $02
	ld   [bc], a                                     ; $654c: $02
	ld   [bc], a                                     ; $654d: $02
	ld   [bc], a                                     ; $654e: $02
	ld   [bc], a                                     ; $654f: $02
	ld   [bc], a                                     ; $6550: $02
	ld   [bc], a                                     ; $6551: $02
	ld   [bc], a                                     ; $6552: $02
	ld   [bc], a                                     ; $6553: $02
	ld   [bc], a                                     ; $6554: $02
	ld   [bc], a                                     ; $6555: $02
	ld   [bc], a                                     ; $6556: $02
	ld   [bc], a                                     ; $6557: $02
	ld   [hl+], a                                    ; $6558: $22
	ld   [hl+], a                                    ; $6559: $22
	ld   [bc], a                                     ; $655a: $02
	ld   [bc], a                                     ; $655b: $02
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
	jr   nz, jr_034_656f                             ; $656b: $20 $02

	ld   [hl+], a                                    ; $656d: $22
	ld   [bc], a                                     ; $656e: $02

jr_034_656f:
	ld   [bc], a                                     ; $656f: $02
	ld   b, b                                        ; $6570: $40
	ld   b, b                                        ; $6571: $40
	ld   b, b                                        ; $6572: $40
	ld   b, b                                        ; $6573: $40
	ld   b, b                                        ; $6574: $40
	ld   b, b                                        ; $6575: $40
	ld   b, b                                        ; $6576: $40
	ld   b, b                                        ; $6577: $40
	ld   b, b                                        ; $6578: $40
	ld   b, b                                        ; $6579: $40
	ld   b, b                                        ; $657a: $40
	ld   b, b                                        ; $657b: $40
	ld   b, b                                        ; $657c: $40
	ld   b, b                                        ; $657d: $40
	ld   b, b                                        ; $657e: $40
	ld   h, b                                        ; $657f: $60
	nop                                              ; $6580: $00
	ld   [hl+], a                                    ; $6581: $22
	ld   [bc], a                                     ; $6582: $02
	ld   [bc], a                                     ; $6583: $02
	ld   [bc], a                                     ; $6584: $02
	ld   [bc], a                                     ; $6585: $02
	ld   [bc], a                                     ; $6586: $02
	ld   [bc], a                                     ; $6587: $02
	ld   [bc], a                                     ; $6588: $02
	ld   [bc], a                                     ; $6589: $02
	ld   [bc], a                                     ; $658a: $02
	ld   [bc], a                                     ; $658b: $02
	ld   [bc], a                                     ; $658c: $02
	ld   [bc], a                                     ; $658d: $02
	ld   [bc], a                                     ; $658e: $02
	ld   [bc], a                                     ; $658f: $02
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	ld   [hl+], a                                    ; $6595: $22
	ld   [bc], a                                     ; $6596: $02
	ld   [bc], a                                     ; $6597: $02
	ld   [bc], a                                     ; $6598: $02
	ld   [bc], a                                     ; $6599: $02
	ld   [bc], a                                     ; $659a: $02
	ld   [bc], a                                     ; $659b: $02
	ld   [bc], a                                     ; $659c: $02
	ld   [bc], a                                     ; $659d: $02
	ld   [bc], a                                     ; $659e: $02
	ld   [bc], a                                     ; $659f: $02
	ld   [bc], a                                     ; $65a0: $02
	ld   [bc], a                                     ; $65a1: $02
	ld   [bc], a                                     ; $65a2: $02
	ld   [bc], a                                     ; $65a3: $02
	ld   [bc], a                                     ; $65a4: $02
	ld   [bc], a                                     ; $65a5: $02
	ld   [bc], a                                     ; $65a6: $02
	ld   [bc], a                                     ; $65a7: $02
	ld   [bc], a                                     ; $65a8: $02
	ld   [hl+], a                                    ; $65a9: $22
	ld   [bc], a                                     ; $65aa: $02
	ld   [bc], a                                     ; $65ab: $02
	ld   [bc], a                                     ; $65ac: $02
	ld   [bc], a                                     ; $65ad: $02
	ld   [bc], a                                     ; $65ae: $02
	ld   [bc], a                                     ; $65af: $02
	ld   [bc], a                                     ; $65b0: $02
	ld   [bc], a                                     ; $65b1: $02
	ld   [bc], a                                     ; $65b2: $02
	ld   [bc], a                                     ; $65b3: $02
	ld   [bc], a                                     ; $65b4: $02
	ld   [bc], a                                     ; $65b5: $02
	ld   [bc], a                                     ; $65b6: $02
	ld   [bc], a                                     ; $65b7: $02
	ld   [bc], a                                     ; $65b8: $02
	ld   [bc], a                                     ; $65b9: $02
	ld   [bc], a                                     ; $65ba: $02
	ld   [bc], a                                     ; $65bb: $02
	ld   [bc], a                                     ; $65bc: $02
	ld   [hl+], a                                    ; $65bd: $22
	ld   [bc], a                                     ; $65be: $02
	ld   [bc], a                                     ; $65bf: $02
	ld   [bc], a                                     ; $65c0: $02
	ld   [bc], a                                     ; $65c1: $02
	ld   [bc], a                                     ; $65c2: $02
	ld   [bc], a                                     ; $65c3: $02
	ld   [bc], a                                     ; $65c4: $02
	ld   [bc], a                                     ; $65c5: $02
	ld   [bc], a                                     ; $65c6: $02
	ld   [bc], a                                     ; $65c7: $02
	ld   [bc], a                                     ; $65c8: $02
	ld   [bc], a                                     ; $65c9: $02
	ld   [bc], a                                     ; $65ca: $02
	ld   [bc], a                                     ; $65cb: $02
	ld   [bc], a                                     ; $65cc: $02
	ld   [bc], a                                     ; $65cd: $02
	ld   [bc], a                                     ; $65ce: $02
	ld   [bc], a                                     ; $65cf: $02
	ld   [bc], a                                     ; $65d0: $02
	ld   [hl+], a                                    ; $65d1: $22
	inc  b                                           ; $65d2: $04
	inc  b                                           ; $65d3: $04
	inc  b                                           ; $65d4: $04
	inc  b                                           ; $65d5: $04
	inc  b                                           ; $65d6: $04
	inc  b                                           ; $65d7: $04
	inc  b                                           ; $65d8: $04
	inc  b                                           ; $65d9: $04
	inc  b                                           ; $65da: $04
	inc  b                                           ; $65db: $04
	inc  b                                           ; $65dc: $04
	inc  b                                           ; $65dd: $04
	inc  b                                           ; $65de: $04
	inc  b                                           ; $65df: $04
	inc  b                                           ; $65e0: $04
	inc  b                                           ; $65e1: $04
	inc  b                                           ; $65e2: $04
	inc  b                                           ; $65e3: $04
	inc  b                                           ; $65e4: $04
	inc  c                                           ; $65e5: $0c
	inc  b                                           ; $65e6: $04
	inc  b                                           ; $65e7: $04
	inc  b                                           ; $65e8: $04
	inc  b                                           ; $65e9: $04
	inc  b                                           ; $65ea: $04
	inc  b                                           ; $65eb: $04
	inc  b                                           ; $65ec: $04
	inc  b                                           ; $65ed: $04
	inc  b                                           ; $65ee: $04
	inc  b                                           ; $65ef: $04
	inc  b                                           ; $65f0: $04
	inc  b                                           ; $65f1: $04
	inc  b                                           ; $65f2: $04
	inc  b                                           ; $65f3: $04
	inc  b                                           ; $65f4: $04
	inc  b                                           ; $65f5: $04
	inc  b                                           ; $65f6: $04
	inc  b                                           ; $65f7: $04
	inc  b                                           ; $65f8: $04
	inc  b                                           ; $65f9: $04
	ld   [bc], a                                     ; $65fa: $02
	ld   [bc], a                                     ; $65fb: $02
	ld   [bc], a                                     ; $65fc: $02
	ld   [bc], a                                     ; $65fd: $02
	ld   [bc], a                                     ; $65fe: $02
	ld   [bc], a                                     ; $65ff: $02
	ld   [bc], a                                     ; $6600: $02
	ld   [bc], a                                     ; $6601: $02
	ld   [bc], a                                     ; $6602: $02
	ld   [bc], a                                     ; $6603: $02
	ld   [bc], a                                     ; $6604: $02
	ld   [bc], a                                     ; $6605: $02
	ld   [bc], a                                     ; $6606: $02
	ld   [bc], a                                     ; $6607: $02
	inc  bc                                          ; $6608: $03
	inc  bc                                          ; $6609: $03
	inc  hl                                          ; $660a: $23
	inc  hl                                          ; $660b: $23
	ld   [bc], a                                     ; $660c: $02
	ld   [hl+], a                                    ; $660d: $22
	ld   [bc], a                                     ; $660e: $02
	ld   [bc], a                                     ; $660f: $02
	ld   [bc], a                                     ; $6610: $02
	ld   [bc], a                                     ; $6611: $02
	ld   [bc], a                                     ; $6612: $02
	ld   [bc], a                                     ; $6613: $02
	ld   [bc], a                                     ; $6614: $02
	ld   [bc], a                                     ; $6615: $02
	ld   [bc], a                                     ; $6616: $02
	ld   [bc], a                                     ; $6617: $02
	ld   [bc], a                                     ; $6618: $02
	ld   [bc], a                                     ; $6619: $02
	nop                                              ; $661a: $00
	inc  bc                                          ; $661b: $03
	inc  bc                                          ; $661c: $03
	inc  bc                                          ; $661d: $03
	inc  bc                                          ; $661e: $03
	inc  hl                                          ; $661f: $23
	inc  hl                                          ; $6620: $23
	ld   [hl+], a                                    ; $6621: $22
	ld   [bc], a                                     ; $6622: $02
	ld   [bc], a                                     ; $6623: $02
	ld   [bc], a                                     ; $6624: $02
	ld   [bc], a                                     ; $6625: $02
	ld   [bc], a                                     ; $6626: $02
	ld   [bc], a                                     ; $6627: $02
	ld   [bc], a                                     ; $6628: $02
	ld   [bc], a                                     ; $6629: $02
	ld   [bc], a                                     ; $662a: $02
	ld   [bc], a                                     ; $662b: $02
	ld   [bc], a                                     ; $662c: $02
	ld   [bc], a                                     ; $662d: $02
	ld   [bc], a                                     ; $662e: $02
	inc  bc                                          ; $662f: $03
	inc  bc                                          ; $6630: $03
	inc  bc                                          ; $6631: $03
	inc  bc                                          ; $6632: $03
	inc  bc                                          ; $6633: $03
	inc  bc                                          ; $6634: $03
	ld   [hl+], a                                    ; $6635: $22
	inc  b                                           ; $6636: $04
	inc  b                                           ; $6637: $04
	inc  b                                           ; $6638: $04
	inc  b                                           ; $6639: $04
	inc  b                                           ; $663a: $04
	inc  b                                           ; $663b: $04
	inc  b                                           ; $663c: $04
	inc  b                                           ; $663d: $04
	inc  b                                           ; $663e: $04
	inc  b                                           ; $663f: $04
	inc  b                                           ; $6640: $04
	inc  b                                           ; $6641: $04
	inc  b                                           ; $6642: $04
	inc  bc                                          ; $6643: $03
	inc  bc                                          ; $6644: $03
	inc  bc                                          ; $6645: $03
	inc  bc                                          ; $6646: $03
	inc  bc                                          ; $6647: $03
	inc  bc                                          ; $6648: $03
	inc  c                                           ; $6649: $0c
	inc  b                                           ; $664a: $04
	inc  b                                           ; $664b: $04
	inc  b                                           ; $664c: $04
	inc  b                                           ; $664d: $04
	inc  b                                           ; $664e: $04
	inc  b                                           ; $664f: $04
	inc  b                                           ; $6650: $04
	inc  b                                           ; $6651: $04
	inc  b                                           ; $6652: $04
	inc  b                                           ; $6653: $04
	inc  b                                           ; $6654: $04
	inc  b                                           ; $6655: $04
	inc  b                                           ; $6656: $04
	inc  b                                           ; $6657: $04
	inc  b                                           ; $6658: $04
	inc  b                                           ; $6659: $04
	inc  b                                           ; $665a: $04
	inc  b                                           ; $665b: $04
	inc  b                                           ; $665c: $04
	inc  b                                           ; $665d: $04
	ld   l, $2e                                      ; $665e: $2e $2e
	ld   l, $2e                                      ; $6660: $2e $2e
	ld   l, $2e                                      ; $6662: $2e $2e
	ld   l, $2e                                      ; $6664: $2e $2e
	ld   l, $2e                                      ; $6666: $2e $2e
	ld   l, $2e                                      ; $6668: $2e $2e
	ld   l, $2e                                      ; $666a: $2e $2e
	ld   l, $2e                                      ; $666c: $2e $2e
	ld   l, $2e                                      ; $666e: $2e $2e
	ld   l, $2e                                      ; $6670: $2e $2e
	ld   bc, $0302                                   ; $6672: $01 $02 $03
	inc  b                                           ; $6675: $04
	dec  b                                           ; $6676: $05
	ld   b, $07                                      ; $6677: $06 $07
	ld   [$0a09], sp                                 ; $6679: $08 $09 $0a
	dec  bc                                          ; $667c: $0b
	inc  c                                           ; $667d: $0c
	ld   [$0607], sp                                 ; $667e: $08 $07 $06
	dec  b                                           ; $6681: $05
	inc  b                                           ; $6682: $04
	inc  bc                                          ; $6683: $03
	ld   [bc], a                                     ; $6684: $02
	ld   bc, $0e0d                                   ; $6685: $01 $0d $0e
	rrca                                             ; $6688: $0f
	db   $10                                         ; $6689: $10
	ld   de, $1312                                   ; $668a: $11 $12 $13
	inc  d                                           ; $668d: $14
	dec  d                                           ; $668e: $15
	ld   d, $17                                      ; $668f: $16 $17
	jr   @+$16                                       ; $6691: $18 $14

	inc  de                                          ; $6693: $13
	ld   [de], a                                     ; $6694: $12
	ld   de, $0f10                                   ; $6695: $11 $10 $0f
	ld   c, $0d                                      ; $6698: $0e $0d
	add  hl, de                                      ; $669a: $19
	ld   a, [de]                                     ; $669b: $1a
	dec  de                                          ; $669c: $1b
	inc  e                                           ; $669d: $1c
	dec  e                                           ; $669e: $1d
	ld   e, $1f                                      ; $669f: $1e $1f
	jr   nz, jr_034_66c4                             ; $66a1: $20 $21

	ld   [hl+], a                                    ; $66a3: $22
	inc  hl                                          ; $66a4: $23
	inc  h                                           ; $66a5: $24
	jr   nz, jr_034_66c7                             ; $66a6: $20 $1f

	ld   e, $1d                                      ; $66a8: $1e $1d
	inc  e                                           ; $66aa: $1c
	dec  de                                          ; $66ab: $1b
	ld   a, [de]                                     ; $66ac: $1a
	add  hl, de                                      ; $66ad: $19
	dec  h                                           ; $66ae: $25
	ld   h, $27                                      ; $66af: $26 $27
	inc  l                                           ; $66b1: $2c
	inc  l                                           ; $66b2: $2c
	inc  l                                           ; $66b3: $2c
	inc  l                                           ; $66b4: $2c
	inc  l                                           ; $66b5: $2c
	ld   h, b                                        ; $66b6: $60
	ld   h, c                                        ; $66b7: $61
	ld   h, c                                        ; $66b8: $61
	ld   h, b                                        ; $66b9: $60
	inc  l                                           ; $66ba: $2c
	inc  l                                           ; $66bb: $2c
	inc  l                                           ; $66bc: $2c
	inc  l                                           ; $66bd: $2c
	inc  l                                           ; $66be: $2c
	daa                                              ; $66bf: $27
	ld   h, $25                                      ; $66c0: $26 $25
	jr   z, jr_034_66ed                              ; $66c2: $28 $29

jr_034_66c4:
	inc  l                                           ; $66c4: $2c
	inc  l                                           ; $66c5: $2c
	inc  l                                           ; $66c6: $2c

jr_034_66c7:
	inc  l                                           ; $66c7: $2c
	inc  l                                           ; $66c8: $2c
	inc  l                                           ; $66c9: $2c
	inc  l                                           ; $66ca: $2c
	inc  l                                           ; $66cb: $2c
	inc  l                                           ; $66cc: $2c
	inc  l                                           ; $66cd: $2c
	inc  l                                           ; $66ce: $2c
	inc  l                                           ; $66cf: $2c
	inc  l                                           ; $66d0: $2c
	inc  l                                           ; $66d1: $2c
	inc  l                                           ; $66d2: $2c
	inc  l                                           ; $66d3: $2c
	add  hl, hl                                      ; $66d4: $29
	jr   z, jr_034_6709                              ; $66d5: $28 $32

	inc  l                                           ; $66d7: $2c
	ld   a, [hl+]                                    ; $66d8: $2a
	dec  hl                                          ; $66d9: $2b
	dec  hl                                          ; $66da: $2b
	dec  hl                                          ; $66db: $2b
	dec  hl                                          ; $66dc: $2b
	dec  hl                                          ; $66dd: $2b
	dec  hl                                          ; $66de: $2b
	dec  hl                                          ; $66df: $2b
	dec  hl                                          ; $66e0: $2b
	dec  hl                                          ; $66e1: $2b
	dec  hl                                          ; $66e2: $2b
	dec  hl                                          ; $66e3: $2b
	dec  hl                                          ; $66e4: $2b
	dec  hl                                          ; $66e5: $2b
	dec  hl                                          ; $66e6: $2b
	ld   a, [hl+]                                    ; $66e7: $2a
	inc  l                                           ; $66e8: $2c
	ld   [hl-], a                                    ; $66e9: $32
	ld   sp, $2a2c                                   ; $66ea: $31 $2c $2a

jr_034_66ed:
	dec  hl                                          ; $66ed: $2b
	dec  hl                                          ; $66ee: $2b
	dec  hl                                          ; $66ef: $2b
	dec  hl                                          ; $66f0: $2b
	dec  hl                                          ; $66f1: $2b
	dec  hl                                          ; $66f2: $2b
	dec  hl                                          ; $66f3: $2b
	dec  hl                                          ; $66f4: $2b
	dec  hl                                          ; $66f5: $2b
	dec  hl                                          ; $66f6: $2b
	dec  hl                                          ; $66f7: $2b
	dec  hl                                          ; $66f8: $2b
	dec  hl                                          ; $66f9: $2b
	dec  hl                                          ; $66fa: $2b
	ld   a, [hl+]                                    ; $66fb: $2a
	inc  l                                           ; $66fc: $2c
	ld   [hl-], a                                    ; $66fd: $32
	ld   sp, $2c2c                                   ; $66fe: $31 $2c $2c
	inc  l                                           ; $6701: $2c
	inc  l                                           ; $6702: $2c
	inc  l                                           ; $6703: $2c
	inc  l                                           ; $6704: $2c
	inc  l                                           ; $6705: $2c
	inc  l                                           ; $6706: $2c
	inc  l                                           ; $6707: $2c
	inc  l                                           ; $6708: $2c

jr_034_6709:
	inc  l                                           ; $6709: $2c
	inc  l                                           ; $670a: $2c
	inc  l                                           ; $670b: $2c
	inc  l                                           ; $670c: $2c
	inc  l                                           ; $670d: $2c
	inc  l                                           ; $670e: $2c
	inc  l                                           ; $670f: $2c
	inc  l                                           ; $6710: $2c
	ld   sp, $2c30                                   ; $6711: $31 $30 $2c
	inc  l                                           ; $6714: $2c
	inc  l                                           ; $6715: $2c
	inc  l                                           ; $6716: $2c
	inc  l                                           ; $6717: $2c
	inc  l                                           ; $6718: $2c
	inc  l                                           ; $6719: $2c
	inc  l                                           ; $671a: $2c
	inc  l                                           ; $671b: $2c
	inc  l                                           ; $671c: $2c
	inc  l                                           ; $671d: $2c
	inc  l                                           ; $671e: $2c
	inc  l                                           ; $671f: $2c
	inc  l                                           ; $6720: $2c
	inc  l                                           ; $6721: $2c
	inc  l                                           ; $6722: $2c
	inc  l                                           ; $6723: $2c
	inc  l                                           ; $6724: $2c
	jr   nc, jr_034_675b                             ; $6725: $30 $34

	inc  l                                           ; $6727: $2c
	inc  l                                           ; $6728: $2c
	inc  l                                           ; $6729: $2c
	inc  l                                           ; $672a: $2c
	inc  l                                           ; $672b: $2c
	inc  l                                           ; $672c: $2c
	inc  l                                           ; $672d: $2c
	inc  l                                           ; $672e: $2c
	inc  l                                           ; $672f: $2c
	inc  l                                           ; $6730: $2c
	inc  l                                           ; $6731: $2c
	inc  l                                           ; $6732: $2c
	inc  l                                           ; $6733: $2c
	inc  l                                           ; $6734: $2c
	inc  l                                           ; $6735: $2c
	inc  l                                           ; $6736: $2c
	inc  l                                           ; $6737: $2c
	inc  l                                           ; $6738: $2c
	inc  [hl]                                        ; $6739: $34
	inc  sp                                          ; $673a: $33
	inc  l                                           ; $673b: $2c
	inc  l                                           ; $673c: $2c
	inc  l                                           ; $673d: $2c
	inc  l                                           ; $673e: $2c
	inc  l                                           ; $673f: $2c
	inc  l                                           ; $6740: $2c
	inc  l                                           ; $6741: $2c
	inc  l                                           ; $6742: $2c
	inc  l                                           ; $6743: $2c
	inc  l                                           ; $6744: $2c
	inc  l                                           ; $6745: $2c
	inc  l                                           ; $6746: $2c
	inc  l                                           ; $6747: $2c
	inc  l                                           ; $6748: $2c
	inc  l                                           ; $6749: $2c
	inc  l                                           ; $674a: $2c
	inc  l                                           ; $674b: $2c
	inc  l                                           ; $674c: $2c
	inc  sp                                          ; $674d: $33
	ld   c, b                                        ; $674e: $48
	ld   c, a                                        ; $674f: $4f
	ld   d, b                                        ; $6750: $50
	ld   d, c                                        ; $6751: $51
	ld   d, d                                        ; $6752: $52
	ld   d, e                                        ; $6753: $53
	ld   d, h                                        ; $6754: $54
	ld   d, l                                        ; $6755: $55
	ld   d, [hl]                                     ; $6756: $56
	ld   d, a                                        ; $6757: $57
	ld   e, b                                        ; $6758: $58
	ld   e, c                                        ; $6759: $59
	ld   e, d                                        ; $675a: $5a

jr_034_675b:
	ld   e, e                                        ; $675b: $5b
	ld   e, h                                        ; $675c: $5c
	ld   e, [hl]                                     ; $675d: $5e
	ld   e, a                                        ; $675e: $5f
	ld   h, h                                        ; $675f: $64
	ld   h, l                                        ; $6760: $65
	ld   a, d                                        ; $6761: $7a
	ld   h, a                                        ; $6762: $67
	ld   h, a                                        ; $6763: $67
	ld   h, a                                        ; $6764: $67
	ld   h, a                                        ; $6765: $67
	ld   h, a                                        ; $6766: $67
	ld   h, a                                        ; $6767: $67
	ld   h, a                                        ; $6768: $67
	ld   h, a                                        ; $6769: $67
	ld   h, a                                        ; $676a: $67
	ld   h, a                                        ; $676b: $67
	ld   h, a                                        ; $676c: $67
	ld   h, a                                        ; $676d: $67
	ld   h, a                                        ; $676e: $67
	ld   h, a                                        ; $676f: $67
	ld   h, a                                        ; $6770: $67
	ld   h, a                                        ; $6771: $67
	ld   h, a                                        ; $6772: $67
	ld   h, a                                        ; $6773: $67
	ld   h, a                                        ; $6774: $67
	ld   h, a                                        ; $6775: $67
	jr   nc, jr_034_67a4                             ; $6776: $30 $2c

	inc  l                                           ; $6778: $2c
	inc  l                                           ; $6779: $2c
	inc  l                                           ; $677a: $2c
	inc  l                                           ; $677b: $2c
	inc  l                                           ; $677c: $2c
	inc  l                                           ; $677d: $2c
	inc  l                                           ; $677e: $2c
	inc  l                                           ; $677f: $2c
	inc  l                                           ; $6780: $2c
	inc  l                                           ; $6781: $2c
	inc  l                                           ; $6782: $2c
	inc  l                                           ; $6783: $2c
	add  hl, sp                                      ; $6784: $39
	ld   a, [hl-]                                    ; $6785: $3a
	ld   a, [hl-]                                    ; $6786: $3a
	add  hl, sp                                      ; $6787: $39
	inc  l                                           ; $6788: $2c
	jr   nc, jr_034_67bf                             ; $6789: $30 $34

	inc  l                                           ; $678b: $2c
	inc  l                                           ; $678c: $2c
	inc  l                                           ; $678d: $2c
	inc  l                                           ; $678e: $2c
	inc  l                                           ; $678f: $2c
	inc  l                                           ; $6790: $2c
	inc  l                                           ; $6791: $2c
	inc  l                                           ; $6792: $2c
	inc  l                                           ; $6793: $2c
	inc  l                                           ; $6794: $2c
	inc  l                                           ; $6795: $2c
	inc  l                                           ; $6796: $2c
	dec  sp                                          ; $6797: $3b
	inc  a                                           ; $6798: $3c
	inc  a                                           ; $6799: $3c
	inc  a                                           ; $679a: $3c
	inc  a                                           ; $679b: $3c
	dec  sp                                          ; $679c: $3b
	inc  [hl]                                        ; $679d: $34
	inc  sp                                          ; $679e: $33
	inc  l                                           ; $679f: $2c
	inc  l                                           ; $67a0: $2c
	inc  l                                           ; $67a1: $2c
	inc  l                                           ; $67a2: $2c
	inc  l                                           ; $67a3: $2c

jr_034_67a4:
	inc  l                                           ; $67a4: $2c
	inc  l                                           ; $67a5: $2c
	inc  l                                           ; $67a6: $2c
	inc  l                                           ; $67a7: $2c
	inc  l                                           ; $67a8: $2c
	inc  l                                           ; $67a9: $2c
	inc  l                                           ; $67aa: $2c
	dec  a                                           ; $67ab: $3d
	ld   a, $3e                                      ; $67ac: $3e $3e
	ld   a, $3e                                      ; $67ae: $3e $3e
	ccf                                              ; $67b0: $3f
	inc  sp                                          ; $67b1: $33
	ld   c, b                                        ; $67b2: $48
	ld   c, a                                        ; $67b3: $4f
	ld   d, b                                        ; $67b4: $50
	ld   d, c                                        ; $67b5: $51
	ld   d, d                                        ; $67b6: $52
	ld   d, e                                        ; $67b7: $53
	ld   d, h                                        ; $67b8: $54
	ld   d, l                                        ; $67b9: $55
	ld   d, [hl]                                     ; $67ba: $56
	ld   d, a                                        ; $67bb: $57
	ld   e, b                                        ; $67bc: $58
	ld   e, c                                        ; $67bd: $59
	ld   e, l                                        ; $67be: $5d

jr_034_67bf:
	ld   e, e                                        ; $67bf: $5b
	ld   e, h                                        ; $67c0: $5c
	ld   e, [hl]                                     ; $67c1: $5e
	ld   e, a                                        ; $67c2: $5f
	ld   h, h                                        ; $67c3: $64
	ld   h, l                                        ; $67c4: $65
	ld   a, e                                        ; $67c5: $7b
	ld   h, a                                        ; $67c6: $67
	ld   h, a                                        ; $67c7: $67
	ld   h, a                                        ; $67c8: $67
	ld   h, a                                        ; $67c9: $67
	ld   h, a                                        ; $67ca: $67
	ld   h, a                                        ; $67cb: $67
	ld   h, a                                        ; $67cc: $67
	ld   h, a                                        ; $67cd: $67
	ld   h, a                                        ; $67ce: $67
	ld   h, a                                        ; $67cf: $67
	ld   h, a                                        ; $67d0: $67
	ld   h, a                                        ; $67d1: $67
	ld   h, a                                        ; $67d2: $67
	ld   h, a                                        ; $67d3: $67
	ld   h, a                                        ; $67d4: $67
	ld   h, a                                        ; $67d5: $67
	ld   h, a                                        ; $67d6: $67
	ld   h, a                                        ; $67d7: $67
	ld   h, a                                        ; $67d8: $67
	ld   h, a                                        ; $67d9: $67


TileAttr_Jupiter::
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $a0, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $a0, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80


TileMap_Jupiter::
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $81, $80, $80, $80, $82, $82, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $83, $84, $84, $85, $86, $87, $80, $88, $87, $89, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $81, $8a, $8a, $8b, $8c, $8d, $8e, $8f, $8d, $90, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $81, $8a, $8a, $91, $92, $8d, $93, $94, $95, $96, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $81, $97, $8a, $98, $99, $8d, $9a, $9b, $81, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $a5, $80, $80, $81, $80, $a6, $a7, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $a8, $80, $80, $a9, $80, $aa, $ab, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80


	
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
	ld   [bc], a                                     ; $6ac1: $02
	ld   [bc], a                                     ; $6ac2: $02
	ld   [bc], a                                     ; $6ac3: $02
	ld   [bc], a                                     ; $6ac4: $02
	ld   [bc], a                                     ; $6ac5: $02
	ld   [bc], a                                     ; $6ac6: $02
	ld   [bc], a                                     ; $6ac7: $02
	ld   [bc], a                                     ; $6ac8: $02
	ld   [bc], a                                     ; $6ac9: $02
	ld   [bc], a                                     ; $6aca: $02
	ld   [bc], a                                     ; $6acb: $02
	ld   [bc], a                                     ; $6acc: $02
	ld   [bc], a                                     ; $6acd: $02
	ld   [bc], a                                     ; $6ace: $02
	ld   [bc], a                                     ; $6acf: $02
	ld   [bc], a                                     ; $6ad0: $02
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	ld   [bc], a                                     ; $6ad5: $02
	ld   [bc], a                                     ; $6ad6: $02
	ld   [bc], a                                     ; $6ad7: $02
	ld   [bc], a                                     ; $6ad8: $02
	ld   [bc], a                                     ; $6ad9: $02
	ld   [bc], a                                     ; $6ada: $02
	ld   [bc], a                                     ; $6adb: $02
	ld   [bc], a                                     ; $6adc: $02
	ld   [bc], a                                     ; $6add: $02
	ld   [bc], a                                     ; $6ade: $02
	ld   [bc], a                                     ; $6adf: $02
	ld   [bc], a                                     ; $6ae0: $02
	ld   [bc], a                                     ; $6ae1: $02
	ld   [bc], a                                     ; $6ae2: $02
	ld   [bc], a                                     ; $6ae3: $02
	ld   [bc], a                                     ; $6ae4: $02
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
	dec  c                                           ; $6b23: $0d
	dec  c                                           ; $6b24: $0d
	dec  c                                           ; $6b25: $0d
	dec  c                                           ; $6b26: $0d
	dec  c                                           ; $6b27: $0d
	dec  c                                           ; $6b28: $0d
	dec  c                                           ; $6b29: $0d
	dec  c                                           ; $6b2a: $0d
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
	dec  c                                           ; $6b37: $0d
	dec  c                                           ; $6b38: $0d
	dec  c                                           ; $6b39: $0d
	dec  c                                           ; $6b3a: $0d
	dec  c                                           ; $6b3b: $0d
	dec  c                                           ; $6b3c: $0d
	dec  c                                           ; $6b3d: $0d
	dec  c                                           ; $6b3e: $0d
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
	dec  c                                           ; $6b4b: $0d
	dec  c                                           ; $6b4c: $0d
	dec  c                                           ; $6b4d: $0d
	dec  c                                           ; $6b4e: $0d
	dec  c                                           ; $6b4f: $0d
	dec  c                                           ; $6b50: $0d
	dec  c                                           ; $6b51: $0d
	dec  c                                           ; $6b52: $0d
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
	dec  c                                           ; $6b5f: $0d
	dec  c                                           ; $6b60: $0d
	dec  c                                           ; $6b61: $0d
	dec  c                                           ; $6b62: $0d
	dec  c                                           ; $6b63: $0d
	dec  c                                           ; $6b64: $0d
	dec  c                                           ; $6b65: $0d
	dec  c                                           ; $6b66: $0d
	nop                                              ; $6b67: $00
	ld   bc, $0101                                   ; $6b68: $01 $01 $01
	ld   bc, $0101                                   ; $6b6b: $01 $01 $01
	ld   bc, $0101                                   ; $6b6e: $01 $01 $01
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	dec  c                                           ; $6b73: $0d
	dec  c                                           ; $6b74: $0d
	dec  c                                           ; $6b75: $0d
	dec  c                                           ; $6b76: $0d
	dec  c                                           ; $6b77: $0d
	dec  c                                           ; $6b78: $0d
	dec  c                                           ; $6b79: $0d
	dec  c                                           ; $6b7a: $0d
	nop                                              ; $6b7b: $00
	ld   bc, $0101                                   ; $6b7c: $01 $01 $01
	ld   bc, $0101                                   ; $6b7f: $01 $01 $01
	ld   bc, $0101                                   ; $6b82: $01 $01 $01
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	dec  c                                           ; $6b87: $0d
	dec  c                                           ; $6b88: $0d
	dec  c                                           ; $6b89: $0d
	dec  c                                           ; $6b8a: $0d
	dec  c                                           ; $6b8b: $0d
	dec  c                                           ; $6b8c: $0d
	dec  c                                           ; $6b8d: $0d
	dec  c                                           ; $6b8e: $0d
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
	dec  c                                           ; $6b9b: $0d
	dec  c                                           ; $6b9c: $0d
	dec  c                                           ; $6b9d: $0d
	dec  c                                           ; $6b9e: $0d
	dec  c                                           ; $6b9f: $0d
	dec  c                                           ; $6ba0: $0d
	dec  c                                           ; $6ba1: $0d
	dec  c                                           ; $6ba2: $0d
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
	dec  c                                           ; $6baf: $0d
	dec  c                                           ; $6bb0: $0d
	dec  c                                           ; $6bb1: $0d
	dec  c                                           ; $6bb2: $0d
	dec  c                                           ; $6bb3: $0d
	dec  c                                           ; $6bb4: $0d
	dec  c                                           ; $6bb5: $0d
	dec  c                                           ; $6bb6: $0d
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
	dec  c                                           ; $6bc3: $0d
	dec  c                                           ; $6bc4: $0d
	dec  c                                           ; $6bc5: $0d
	dec  c                                           ; $6bc6: $0d
	dec  c                                           ; $6bc7: $0d
	dec  c                                           ; $6bc8: $0d
	dec  c                                           ; $6bc9: $0d
	dec  c                                           ; $6bca: $0d
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
	rst  JumpTable                                         ; $6c12: $df
	rst  JumpTable                                         ; $6c13: $df
	rst  JumpTable                                         ; $6c14: $df
	rst  JumpTable                                         ; $6c15: $df
	rst  JumpTable                                         ; $6c16: $df
	rst  JumpTable                                         ; $6c17: $df
	rst  JumpTable                                         ; $6c18: $df
	rst  JumpTable                                         ; $6c19: $df
	rst  JumpTable                                         ; $6c1a: $df
	rst  JumpTable                                         ; $6c1b: $df
	rst  JumpTable                                         ; $6c1c: $df
	rst  JumpTable                                         ; $6c1d: $df
	rst  JumpTable                                         ; $6c1e: $df
	rst  JumpTable                                         ; $6c1f: $df
	rst  JumpTable                                         ; $6c20: $df
	rst  JumpTable                                         ; $6c21: $df
	rst  JumpTable                                         ; $6c22: $df
	rst  JumpTable                                         ; $6c23: $df
	rst  JumpTable                                         ; $6c24: $df
	rst  JumpTable                                         ; $6c25: $df
	rst  JumpTable                                         ; $6c26: $df
	rst  JumpTable                                         ; $6c27: $df
	rst  JumpTable                                         ; $6c28: $df
	ldh  [$e2], a                                    ; $6c29: $e0 $e2
	db   $e4                                         ; $6c2b: $e4
	and  $e8                                         ; $6c2c: $e6 $e8
	ld   [$eeec], a                                  ; $6c2e: $ea $ec $ee
	ldh  a, [$f2]                                    ; $6c31: $f0 $f2
	db   $f4                                         ; $6c33: $f4
	or   $f8                                         ; $6c34: $f6 $f8
	ld   a, [$fefc]                                  ; $6c36: $fa $fc $fe
	rst  JumpTable                                         ; $6c39: $df
	rst  JumpTable                                         ; $6c3a: $df
	rst  JumpTable                                         ; $6c3b: $df
	rst  JumpTable                                         ; $6c3c: $df
	pop  hl                                          ; $6c3d: $e1
	db   $e3                                         ; $6c3e: $e3
	push hl                                          ; $6c3f: $e5
	rst  $20                                         ; $6c40: $e7
	jp   hl                                          ; $6c41: $e9


	db   $eb                                         ; $6c42: $eb
	db   $ed                                         ; $6c43: $ed
	rst  $28                                         ; $6c44: $ef
	pop  af                                          ; $6c45: $f1
	di                                               ; $6c46: $f3
	push af                                          ; $6c47: $f5
	rst  $30                                         ; $6c48: $f7
	ld   sp, hl                                      ; $6c49: $f9
	ei                                               ; $6c4a: $fb
	db   $fd                                         ; $6c4b: $fd
	rst  $38                                         ; $6c4c: $ff
	rst  JumpTable                                         ; $6c4d: $df
	rst  JumpTable                                         ; $6c4e: $df
	rst  JumpTable                                         ; $6c4f: $df
	rst  JumpTable                                         ; $6c50: $df
	rst  JumpTable                                         ; $6c51: $df
	rst  JumpTable                                         ; $6c52: $df
	rst  JumpTable                                         ; $6c53: $df
	rst  JumpTable                                         ; $6c54: $df
	rst  JumpTable                                         ; $6c55: $df
	rst  JumpTable                                         ; $6c56: $df
	rst  JumpTable                                         ; $6c57: $df
	rst  JumpTable                                         ; $6c58: $df
	rst  JumpTable                                         ; $6c59: $df
	rst  JumpTable                                         ; $6c5a: $df
	rst  JumpTable                                         ; $6c5b: $df
	rst  JumpTable                                         ; $6c5c: $df
	rst  JumpTable                                         ; $6c5d: $df
	rst  JumpTable                                         ; $6c5e: $df
	rst  JumpTable                                         ; $6c5f: $df
	rst  JumpTable                                         ; $6c60: $df
	rst  JumpTable                                         ; $6c61: $df
	rst  JumpTable                                         ; $6c62: $df
	rst  JumpTable                                         ; $6c63: $df
	rst  JumpTable                                         ; $6c64: $df
	rst  JumpTable                                         ; $6c65: $df
	rst  JumpTable                                         ; $6c66: $df
	rst  JumpTable                                         ; $6c67: $df
	rst  JumpTable                                         ; $6c68: $df
	rst  JumpTable                                         ; $6c69: $df
	rst  JumpTable                                         ; $6c6a: $df
	rst  JumpTable                                         ; $6c6b: $df
	rst  JumpTable                                         ; $6c6c: $df
	rst  JumpTable                                         ; $6c6d: $df
	rst  JumpTable                                         ; $6c6e: $df
	rst  JumpTable                                         ; $6c6f: $df
	rst  JumpTable                                         ; $6c70: $df
	rst  JumpTable                                         ; $6c71: $df
	rst  JumpTable                                         ; $6c72: $df
	rst  JumpTable                                         ; $6c73: $df
	rst  JumpTable                                         ; $6c74: $df
	rst  JumpTable                                         ; $6c75: $df
	rst  JumpTable                                         ; $6c76: $df
	rst  JumpTable                                         ; $6c77: $df
	rst  JumpTable                                         ; $6c78: $df
	rst  JumpTable                                         ; $6c79: $df
	rst  JumpTable                                         ; $6c7a: $df
	rst  JumpTable                                         ; $6c7b: $df
	rst  JumpTable                                         ; $6c7c: $df
	rst  JumpTable                                         ; $6c7d: $df
	rst  JumpTable                                         ; $6c7e: $df
	rst  JumpTable                                         ; $6c7f: $df
	rst  JumpTable                                         ; $6c80: $df
	rst  JumpTable                                         ; $6c81: $df
	rst  JumpTable                                         ; $6c82: $df
	rst  JumpTable                                         ; $6c83: $df
	rst  JumpTable                                         ; $6c84: $df
	rst  JumpTable                                         ; $6c85: $df
	rst  JumpTable                                         ; $6c86: $df
	rst  JumpTable                                         ; $6c87: $df
	rst  JumpTable                                         ; $6c88: $df
	rst  JumpTable                                         ; $6c89: $df
	rst  JumpTable                                         ; $6c8a: $df
	ld   c, $0f                                      ; $6c8b: $0e $0f
	db   $10                                         ; $6c8d: $10
	ld   de, $1312                                   ; $6c8e: $11 $12 $13
	inc  d                                           ; $6c91: $14
	dec  d                                           ; $6c92: $15
	rst  JumpTable                                         ; $6c93: $df
	rst  JumpTable                                         ; $6c94: $df
	rst  JumpTable                                         ; $6c95: $df
	rst  JumpTable                                         ; $6c96: $df
	rst  JumpTable                                         ; $6c97: $df
	rst  JumpTable                                         ; $6c98: $df
	rst  JumpTable                                         ; $6c99: $df
	rst  JumpTable                                         ; $6c9a: $df
	rst  JumpTable                                         ; $6c9b: $df
	rst  JumpTable                                         ; $6c9c: $df
	rst  JumpTable                                         ; $6c9d: $df
	rst  JumpTable                                         ; $6c9e: $df
	ld   a, [de]                                     ; $6c9f: $1a
	dec  de                                          ; $6ca0: $1b
	inc  e                                           ; $6ca1: $1c
	dec  e                                           ; $6ca2: $1d
	ld   e, $1f                                      ; $6ca3: $1e $1f
	jr   nz, jr_034_6cc8                             ; $6ca5: $20 $21

	rst  JumpTable                                         ; $6ca7: $df
	rst  JumpTable                                         ; $6ca8: $df
	rst  JumpTable                                         ; $6ca9: $df
	rst  JumpTable                                         ; $6caa: $df
	rst  JumpTable                                         ; $6cab: $df
	rst  JumpTable                                         ; $6cac: $df
	rst  JumpTable                                         ; $6cad: $df
	rst  JumpTable                                         ; $6cae: $df
	rst  JumpTable                                         ; $6caf: $df
	rst  JumpTable                                         ; $6cb0: $df
	rst  JumpTable                                         ; $6cb1: $df
	rst  JumpTable                                         ; $6cb2: $df
	ld   h, $27                                      ; $6cb3: $26 $27
	jr   z, jr_034_6ce0                              ; $6cb5: $28 $29

	ld   a, [hl+]                                    ; $6cb7: $2a
	dec  hl                                          ; $6cb8: $2b
	inc  l                                           ; $6cb9: $2c
	dec  l                                           ; $6cba: $2d
	rst  JumpTable                                         ; $6cbb: $df
	rst  JumpTable                                         ; $6cbc: $df
	rst  JumpTable                                         ; $6cbd: $df
	rst  JumpTable                                         ; $6cbe: $df
	rst  JumpTable                                         ; $6cbf: $df
	rst  JumpTable                                         ; $6cc0: $df
	rst  JumpTable                                         ; $6cc1: $df
	rst  JumpTable                                         ; $6cc2: $df
	rst  JumpTable                                         ; $6cc3: $df
	rst  JumpTable                                         ; $6cc4: $df
	rst  JumpTable                                         ; $6cc5: $df
	rst  JumpTable                                         ; $6cc6: $df
	ld   [hl-], a                                    ; $6cc7: $32

jr_034_6cc8:
	inc  sp                                          ; $6cc8: $33
	inc  [hl]                                        ; $6cc9: $34
	dec  [hl]                                        ; $6cca: $35
	ld   [hl], $37                                   ; $6ccb: $36 $37
	jr   c, jr_034_6d08                              ; $6ccd: $38 $39

	rst  JumpTable                                         ; $6ccf: $df
	add  b                                           ; $6cd0: $80
	add  d                                           ; $6cd1: $82
	add  h                                           ; $6cd2: $84
	add  [hl]                                        ; $6cd3: $86
	adc  b                                           ; $6cd4: $88
	adc  d                                           ; $6cd5: $8a
	adc  h                                           ; $6cd6: $8c
	adc  [hl]                                        ; $6cd7: $8e
	sub  b                                           ; $6cd8: $90
	rst  JumpTable                                         ; $6cd9: $df
	rst  JumpTable                                         ; $6cda: $df
	ld   a, $3f                                      ; $6cdb: $3e $3f
	ld   b, b                                        ; $6cdd: $40
	ld   b, c                                        ; $6cde: $41
	ld   b, d                                        ; $6cdf: $42

jr_034_6ce0:
	ld   b, e                                        ; $6ce0: $43
	ld   b, h                                        ; $6ce1: $44
	ld   b, l                                        ; $6ce2: $45
	rst  JumpTable                                         ; $6ce3: $df
	add  c                                           ; $6ce4: $81
	add  e                                           ; $6ce5: $83
	add  l                                           ; $6ce6: $85
	add  a                                           ; $6ce7: $87
	adc  c                                           ; $6ce8: $89
	adc  e                                           ; $6ce9: $8b
	adc  l                                           ; $6cea: $8d
	adc  a                                           ; $6ceb: $8f
	sub  c                                           ; $6cec: $91
	rst  JumpTable                                         ; $6ced: $df
	rst  JumpTable                                         ; $6cee: $df
	ld   c, d                                        ; $6cef: $4a
	ld   c, e                                        ; $6cf0: $4b
	ld   c, h                                        ; $6cf1: $4c
	ld   c, l                                        ; $6cf2: $4d
	ld   c, [hl]                                     ; $6cf3: $4e
	ld   c, a                                        ; $6cf4: $4f
	ld   d, b                                        ; $6cf5: $50
	ld   d, c                                        ; $6cf6: $51
	rst  JumpTable                                         ; $6cf7: $df
	rst  JumpTable                                         ; $6cf8: $df
	rst  JumpTable                                         ; $6cf9: $df
	rst  JumpTable                                         ; $6cfa: $df
	rst  JumpTable                                         ; $6cfb: $df
	rst  JumpTable                                         ; $6cfc: $df
	rst  JumpTable                                         ; $6cfd: $df
	rst  JumpTable                                         ; $6cfe: $df
	rst  JumpTable                                         ; $6cff: $df
	rst  JumpTable                                         ; $6d00: $df
	rst  JumpTable                                         ; $6d01: $df
	rst  JumpTable                                         ; $6d02: $df
	ld   d, [hl]                                     ; $6d03: $56
	ld   d, a                                        ; $6d04: $57
	ld   e, b                                        ; $6d05: $58
	ld   e, c                                        ; $6d06: $59
	ld   e, d                                        ; $6d07: $5a

jr_034_6d08:
	ld   e, e                                        ; $6d08: $5b
	ld   e, h                                        ; $6d09: $5c
	ld   e, l                                        ; $6d0a: $5d
	rst  JumpTable                                         ; $6d0b: $df
	rst  JumpTable                                         ; $6d0c: $df
	rst  JumpTable                                         ; $6d0d: $df
	rst  JumpTable                                         ; $6d0e: $df
	rst  JumpTable                                         ; $6d0f: $df
	rst  JumpTable                                         ; $6d10: $df
	rst  JumpTable                                         ; $6d11: $df
	rst  JumpTable                                         ; $6d12: $df
	rst  JumpTable                                         ; $6d13: $df
	rst  JumpTable                                         ; $6d14: $df
	rst  JumpTable                                         ; $6d15: $df
	rst  JumpTable                                         ; $6d16: $df
	ld   h, d                                        ; $6d17: $62
	ld   h, e                                        ; $6d18: $63
	ld   h, h                                        ; $6d19: $64
	ld   h, l                                        ; $6d1a: $65
	ld   h, [hl]                                     ; $6d1b: $66
	ld   h, a                                        ; $6d1c: $67
	ld   l, b                                        ; $6d1d: $68
	ld   l, c                                        ; $6d1e: $69
	rst  JumpTable                                         ; $6d1f: $df
	rst  JumpTable                                         ; $6d20: $df
	rst  JumpTable                                         ; $6d21: $df
	rst  JumpTable                                         ; $6d22: $df
	rst  JumpTable                                         ; $6d23: $df
	rst  JumpTable                                         ; $6d24: $df
	rst  JumpTable                                         ; $6d25: $df
	rst  JumpTable                                         ; $6d26: $df
	rst  JumpTable                                         ; $6d27: $df
	rst  JumpTable                                         ; $6d28: $df
	rst  JumpTable                                         ; $6d29: $df
	rst  JumpTable                                         ; $6d2a: $df
	ld   l, [hl]                                     ; $6d2b: $6e
	ld   l, a                                        ; $6d2c: $6f
	ld   [hl], b                                     ; $6d2d: $70
	ld   [hl], c                                     ; $6d2e: $71
	ld   [hl], d                                     ; $6d2f: $72
	ld   [hl], e                                     ; $6d30: $73
	ld   [hl], h                                     ; $6d31: $74
	ld   [hl], l                                     ; $6d32: $75
	rst  JumpTable                                         ; $6d33: $df
	rst  JumpTable                                         ; $6d34: $df
	rst  JumpTable                                         ; $6d35: $df
	rst  JumpTable                                         ; $6d36: $df
	rst  JumpTable                                         ; $6d37: $df
	rst  JumpTable                                         ; $6d38: $df
	rst  JumpTable                                         ; $6d39: $df
	rst  JumpTable                                         ; $6d3a: $df
	rst  JumpTable                                         ; $6d3b: $df
	rst  JumpTable                                         ; $6d3c: $df
	rst  JumpTable                                         ; $6d3d: $df
	rst  JumpTable                                         ; $6d3e: $df
	rst  JumpTable                                         ; $6d3f: $df
	rst  JumpTable                                         ; $6d40: $df
	rst  JumpTable                                         ; $6d41: $df
	rst  JumpTable                                         ; $6d42: $df
	rst  JumpTable                                         ; $6d43: $df
	rst  JumpTable                                         ; $6d44: $df
	rst  JumpTable                                         ; $6d45: $df
	rst  JumpTable                                         ; $6d46: $df
	rst  JumpTable                                         ; $6d47: $df
	rst  JumpTable                                         ; $6d48: $df
	rst  JumpTable                                         ; $6d49: $df
	rst  JumpTable                                         ; $6d4a: $df
	rst  JumpTable                                         ; $6d4b: $df
	rst  JumpTable                                         ; $6d4c: $df
	rst  JumpTable                                         ; $6d4d: $df
	rst  JumpTable                                         ; $6d4e: $df
	rst  JumpTable                                         ; $6d4f: $df
	rst  JumpTable                                         ; $6d50: $df
	rst  JumpTable                                         ; $6d51: $df
	rst  JumpTable                                         ; $6d52: $df
	rst  JumpTable                                         ; $6d53: $df
	rst  JumpTable                                         ; $6d54: $df
	rst  JumpTable                                         ; $6d55: $df
	rst  JumpTable                                         ; $6d56: $df
	rst  JumpTable                                         ; $6d57: $df
	rst  JumpTable                                         ; $6d58: $df
	rst  JumpTable                                         ; $6d59: $df
	rst  JumpTable                                         ; $6d5a: $df
	rst  JumpTable                                         ; $6d5b: $df
	rst  JumpTable                                         ; $6d5c: $df
	rst  JumpTable                                         ; $6d5d: $df
	rst  JumpTable                                         ; $6d5e: $df
	rst  JumpTable                                         ; $6d5f: $df
	rst  JumpTable                                         ; $6d60: $df
	rst  JumpTable                                         ; $6d61: $df
	rst  JumpTable                                         ; $6d62: $df
	rst  JumpTable                                         ; $6d63: $df
	rst  JumpTable                                         ; $6d64: $df
	rst  JumpTable                                         ; $6d65: $df
	rst  JumpTable                                         ; $6d66: $df
	rst  JumpTable                                         ; $6d67: $df
	rst  JumpTable                                         ; $6d68: $df
	rst  JumpTable                                         ; $6d69: $df
	rst  JumpTable                                         ; $6d6a: $df
	rst  JumpTable                                         ; $6d6b: $df
	rst  JumpTable                                         ; $6d6c: $df
	rst  JumpTable                                         ; $6d6d: $df
	rst  JumpTable                                         ; $6d6e: $df
	rst  JumpTable                                         ; $6d6f: $df
	rst  JumpTable                                         ; $6d70: $df
	rst  JumpTable                                         ; $6d71: $df
	rst  JumpTable                                         ; $6d72: $df
	rst  JumpTable                                         ; $6d73: $df
	rst  JumpTable                                         ; $6d74: $df
	rst  JumpTable                                         ; $6d75: $df
	rst  JumpTable                                         ; $6d76: $df
	rst  JumpTable                                         ; $6d77: $df
	rst  JumpTable                                         ; $6d78: $df
	rst  JumpTable                                         ; $6d79: $df


TileAttr_RedCompany::
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00


TileMap_RedCompany::
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $01, $02, $03, $04, $05, $06, $07, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $27, $27, $27, $27, $27
	db $27, $27, $28, $29, $2a, $2a, $2b, $2c, $2d, $2e, $2f, $2a, $2a, $30, $2a, $2a, $2a, $31, $27, $27
	db $27, $27, $32, $33, $34, $35, $33, $36, $37, $33, $38, $39, $3a, $3b, $33, $3c, $33, $3d, $27, $27
	db $27, $27, $3e, $33, $3f, $40, $33, $41, $42, $43, $44, $45, $46, $47, $48, $49, $33, $4a, $27, $27
	db $27, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $50, $50, $50, $53, $50, $50, $50, $54, $55, $27, $27
	db $27, $27, $27, $27, $27, $27, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27
	db $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27, $27


TileAttr_MediaFactory::
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00


TileMap_MediaFactory::
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $03, $04, $05, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $06, $07, $08, $00, $00, $09, $0a, $0b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $0c, $0d, $00, $00, $00, $0e, $0b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $0f, $10, $00, $00, $00, $0e, $0b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $11, $12, $13, $00, $00, $0e, $0b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $14, $15, $16, $00, $0e, $0b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $17, $18, $19, $00, $1a, $1b, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00


	
	ld   a, b                                        ; $731a: $78
	nop                                              ; $731b: $00
	cp   $00                                         ; $731c: $fe $00
	ld   a, a                                        ; $731e: $7f
	add  c                                           ; $731f: $81
	nop                                              ; $7320: $00
	ret  nz                                          ; $7321: $c0

	nop                                              ; $7322: $00
	ld   h, b                                        ; $7323: $60
	nop                                              ; $7324: $00
	jr   nc, jr_034_7327                             ; $7325: $30 $00

jr_034_7327:
	jr   jr_034_7329                                 ; $7327: $18 $00

jr_034_7329:
	inc  c                                           ; $7329: $0c
	nop                                              ; $732a: $00
	ld   b, $00                                      ; $732b: $06 $00
	db   $fc                                         ; $732d: $fc
	nop                                              ; $732e: $00
	ld   a, [hl]                                     ; $732f: $7e
	nop                                              ; $7330: $00
	ret  nz                                          ; $7331: $c0

	nop                                              ; $7332: $00
	ld   h, b                                        ; $7333: $60
	nop                                              ; $7334: $00
	jr   nc, jr_034_7337                             ; $7335: $30 $00

jr_034_7337:
	jr   jr_034_7339                                 ; $7337: $18 $00

jr_034_7339:
	inc  c                                           ; $7339: $0c
	nop                                              ; $733a: $00
	ld   b, $00                                      ; $733b: $06 $00
	db   $fc                                         ; $733d: $fc
	nop                                              ; $733e: $00
	ld   a, [hl]                                     ; $733f: $7e
	nop                                              ; $7340: $00
	ret  nz                                          ; $7341: $c0

	nop                                              ; $7342: $00
	ld   h, b                                        ; $7343: $60
	nop                                              ; $7344: $00
	jr   nc, jr_034_7347                             ; $7345: $30 $00

jr_034_7347:
	jr   jr_034_7349                                 ; $7347: $18 $00

jr_034_7349:
	inc  c                                           ; $7349: $0c
	nop                                              ; $734a: $00
	ld   b, $00                                      ; $734b: $06 $00
	db   $fc                                         ; $734d: $fc
	nop                                              ; $734e: $00
	ld   a, [hl]                                     ; $734f: $7e
	nop                                              ; $7350: $00
	ret  nz                                          ; $7351: $c0

	nop                                              ; $7352: $00
	ld   h, b                                        ; $7353: $60
	nop                                              ; $7354: $00
	jr   nc, jr_034_7357                             ; $7355: $30 $00

jr_034_7357:
	jr   jr_034_7359                                 ; $7357: $18 $00

jr_034_7359:
	inc  c                                           ; $7359: $0c
	nop                                              ; $735a: $00
	ld   b, $00                                      ; $735b: $06 $00
	db   $fc                                         ; $735d: $fc
	nop                                              ; $735e: $00
	ld   a, [hl]                                     ; $735f: $7e
	nop                                              ; $7360: $00
	ret  nz                                          ; $7361: $c0

	nop                                              ; $7362: $00
	ld   h, b                                        ; $7363: $60
	nop                                              ; $7364: $00
	jr   nc, jr_034_7367                             ; $7365: $30 $00

jr_034_7367:
	jr   jr_034_7369                                 ; $7367: $18 $00

jr_034_7369:
	inc  c                                           ; $7369: $0c
	nop                                              ; $736a: $00
	ld   b, $00                                      ; $736b: $06 $00
	db   $fc                                         ; $736d: $fc
	nop                                              ; $736e: $00
	ld   a, [hl]                                     ; $736f: $7e
	nop                                              ; $7370: $00
	ret  nz                                          ; $7371: $c0

	nop                                              ; $7372: $00
	ld   h, b                                        ; $7373: $60
	nop                                              ; $7374: $00
	jr   nc, jr_034_7377                             ; $7375: $30 $00

jr_034_7377:
	jr   jr_034_7379                                 ; $7377: $18 $00

jr_034_7379:
	inc  c                                           ; $7379: $0c
	nop                                              ; $737a: $00
	ld   b, $00                                      ; $737b: $06 $00
	db   $fc                                         ; $737d: $fc
	nop                                              ; $737e: $00
	ld   a, [hl]                                     ; $737f: $7e
	nop                                              ; $7380: $00
	ret  nz                                          ; $7381: $c0

	nop                                              ; $7382: $00
	ld   h, b                                        ; $7383: $60
	nop                                              ; $7384: $00
	jr   nc, jr_034_7387                             ; $7385: $30 $00

jr_034_7387:
	jr   jr_034_7389                                 ; $7387: $18 $00

jr_034_7389:
	inc  c                                           ; $7389: $0c
	nop                                              ; $738a: $00
	ld   b, $00                                      ; $738b: $06 $00
	db   $fc                                         ; $738d: $fc
	nop                                              ; $738e: $00
	ld   a, [hl]                                     ; $738f: $7e
	nop                                              ; $7390: $00
	ret  nz                                          ; $7391: $c0

	nop                                              ; $7392: $00
	ld   h, b                                        ; $7393: $60
	nop                                              ; $7394: $00
	jr   nc, jr_034_7397                             ; $7395: $30 $00

jr_034_7397:
	jr   jr_034_7399                                 ; $7397: $18 $00

jr_034_7399:
	inc  c                                           ; $7399: $0c
	nop                                              ; $739a: $00
	ld   b, $00                                      ; $739b: $06 $00
	db   $fc                                         ; $739d: $fc
	nop                                              ; $739e: $00
	ld   h, b                                        ; $739f: $60
	ld   a, [hl]                                     ; $73a0: $7e
	nop                                              ; $73a1: $00
	ret  nz                                          ; $73a2: $c0

	nop                                              ; $73a3: $00
	ld   h, b                                        ; $73a4: $60
	nop                                              ; $73a5: $00
	jr   nc, jr_034_73a8                             ; $73a6: $30 $00

jr_034_73a8:
	jr   jr_034_73aa                                 ; $73a8: $18 $00

jr_034_73aa:
	inc  c                                           ; $73aa: $0c
	nop                                              ; $73ab: $00
	ld   b, $00                                      ; $73ac: $06 $00
	db   $fc                                         ; $73ae: $fc
	nop                                              ; $73af: $00
	ld   a, [hl]                                     ; $73b0: $7e
	nop                                              ; $73b1: $00
	ret  nz                                          ; $73b2: $c0

	nop                                              ; $73b3: $00
	ld   h, b                                        ; $73b4: $60
	nop                                              ; $73b5: $00
	jr   nc, jr_034_73b8                             ; $73b6: $30 $00

jr_034_73b8:
	jr   jr_034_73ba                                 ; $73b8: $18 $00

jr_034_73ba:
	inc  c                                           ; $73ba: $0c
	nop                                              ; $73bb: $00
	ld   b, $00                                      ; $73bc: $06 $00
	db   $fc                                         ; $73be: $fc
	nop                                              ; $73bf: $00
	ld   a, [hl]                                     ; $73c0: $7e
	nop                                              ; $73c1: $00
	ret  nz                                          ; $73c2: $c0

	nop                                              ; $73c3: $00
	ld   h, b                                        ; $73c4: $60
	nop                                              ; $73c5: $00
	jr   nc, jr_034_73c8                             ; $73c6: $30 $00

jr_034_73c8:
	jr   jr_034_73ca                                 ; $73c8: $18 $00

jr_034_73ca:
	inc  c                                           ; $73ca: $0c
	nop                                              ; $73cb: $00
	ld   b, $00                                      ; $73cc: $06 $00
	db   $fc                                         ; $73ce: $fc
	nop                                              ; $73cf: $00
	ld   a, [hl]                                     ; $73d0: $7e
	nop                                              ; $73d1: $00
	ret  nz                                          ; $73d2: $c0

	nop                                              ; $73d3: $00
	ld   h, b                                        ; $73d4: $60
	nop                                              ; $73d5: $00
	jr   nc, jr_034_73d8                             ; $73d6: $30 $00

jr_034_73d8:
	jr   jr_034_73da                                 ; $73d8: $18 $00

jr_034_73da:
	inc  c                                           ; $73da: $0c
	nop                                              ; $73db: $00
	ld   b, $00                                      ; $73dc: $06 $00
	db   $fc                                         ; $73de: $fc
	nop                                              ; $73df: $00
	ld   a, [hl]                                     ; $73e0: $7e
	nop                                              ; $73e1: $00
	ret  nz                                          ; $73e2: $c0

	nop                                              ; $73e3: $00
	ld   h, b                                        ; $73e4: $60
	nop                                              ; $73e5: $00
	jr   nc, jr_034_73e8                             ; $73e6: $30 $00

jr_034_73e8:
	jr   jr_034_73ea                                 ; $73e8: $18 $00

jr_034_73ea:
	inc  c                                           ; $73ea: $0c
	nop                                              ; $73eb: $00
	ld   b, $00                                      ; $73ec: $06 $00
	db   $fc                                         ; $73ee: $fc

jr_034_73ef:
	nop                                              ; $73ef: $00
	ld   a, [hl]                                     ; $73f0: $7e
	nop                                              ; $73f1: $00
	ret  nz                                          ; $73f2: $c0

	nop                                              ; $73f3: $00
	ld   h, b                                        ; $73f4: $60
	nop                                              ; $73f5: $00
	jr   nc, jr_034_73f8                             ; $73f6: $30 $00

jr_034_73f8:
	jr   jr_034_73fa                                 ; $73f8: $18 $00

jr_034_73fa:
	inc  c                                           ; $73fa: $0c
	nop                                              ; $73fb: $00
	ld   b, $00                                      ; $73fc: $06 $00
	db   $fc                                         ; $73fe: $fc
	nop                                              ; $73ff: $00
	rst  $38                                         ; $7400: $ff
	sbc  e                                           ; $7401: $9b
	nop                                              ; $7402: $00
	ld   [bc], a                                     ; $7403: $02
	ld   l, h                                        ; $7404: $6c
	nop                                              ; $7405: $00
	ld   l, h                                        ; $7406: $6c
	add  e                                           ; $7407: $83
	nop                                              ; $7408: $00
	ld   [$0010], sp                                 ; $7409: $08 $10 $00
	jr   z, jr_034_740e                              ; $740c: $28 $00

jr_034_740e:
	ld   b, h                                        ; $740e: $44
	nop                                              ; $740f: $00
	add  d                                           ; $7410: $82
	nop                                              ; $7411: $00
	cp   $b3                                         ; $7412: $fe $b3
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	ld   [$0081], sp                                 ; $7416: $08 $81 $00
	ld   [bc], a                                     ; $7419: $02
	ld   [hl], $00                                   ; $741a: $36 $00
	ld   [hl], $81                                   ; $741c: $36 $81
	nop                                              ; $741e: $00
	ld   [bc], a                                     ; $741f: $02
	ld   [hl], $00                                   ; $7420: $36 $00
	ld   a, $83                                      ; $7422: $3e $83
	nop                                              ; $7424: $00
	ld   a, [bc]                                     ; $7425: $0a
	rra                                              ; $7426: $1f
	nop                                              ; $7427: $00
	rra                                              ; $7428: $1f
	nop                                              ; $7429: $00
	rra                                              ; $742a: $1f
	nop                                              ; $742b: $00
	ld   e, $00                                      ; $742c: $1e $00
	add  b                                           ; $742e: $80
	nop                                              ; $742f: $00
	add  c                                           ; $7430: $81
	add  e                                           ; $7431: $83
	nop                                              ; $7432: $00
	ld   b, $3c                                      ; $7433: $06 $3c
	nop                                              ; $7435: $00
	jr   jr_034_7438                                 ; $7436: $18 $00

jr_034_7438:
	ld   h, c                                        ; $7438: $61
	nop                                              ; $7439: $00
	ld   b, c                                        ; $743a: $41
	add  c                                           ; $743b: $81
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	inc  b                                           ; $743e: $04
	add  e                                           ; $743f: $83
	nop                                              ; $7440: $00
	inc  c                                           ; $7441: $0c
	ldh  a, [rP1]                                    ; $7442: $f0 $00
	ld   h, b                                        ; $7444: $60
	nop                                              ; $7445: $00
	ret  nz                                          ; $7446: $c0

	nop                                              ; $7447: $00
	ld   h, b                                        ; $7448: $60
	nop                                              ; $7449: $00
	daa                                              ; $744a: $27
	nop                                              ; $744b: $00
	ld   e, $00                                      ; $744c: $1e $00
	ld   bc, $0081                                   ; $744e: $01 $81 $00
	nop                                              ; $7451: $00
	ld   [$0087], sp                                 ; $7452: $08 $87 $00
	ld   b, $e2                                      ; $7455: $06 $e2
	nop                                              ; $7457: $00
	ld   b, [hl]                                     ; $7458: $46
	nop                                              ; $7459: $00
	inc  l                                           ; $745a: $2c
	nop                                              ; $745b: $00
	adc  b                                           ; $745c: $88
	add  a                                           ; $745d: $87
	nop                                              ; $745e: $00
	ld   b, $04                                      ; $745f: $06 $04
	nop                                              ; $7461: $00
	inc  c                                           ; $7462: $0c
	nop                                              ; $7463: $00
	jr   c, jr_034_7466                              ; $7464: $38 $00

jr_034_7466:
	jr   nc, jr_034_73ef                             ; $7466: $30 $87

	nop                                              ; $7468: $00
	ld   b, $10                                      ; $7469: $06 $10
	nop                                              ; $746b: $00
	jr   nc, jr_034_746e                             ; $746c: $30 $00

jr_034_746e:
	ldh  [rP1], a                                    ; $746e: $e0 $00
	ret  nz                                          ; $7470: $c0

	add  a                                           ; $7471: $87
	nop                                              ; $7472: $00
	ld   [$0021], sp                                 ; $7473: $08 $21 $00
	push af                                          ; $7476: $f5
	nop                                              ; $7477: $00
	sbc  h                                           ; $7478: $9c
	nop                                              ; $7479: $00
	ld   l, $00                                      ; $747a: $2e $00
	ld   h, [hl]                                     ; $747c: $66
	add  l                                           ; $747d: $85
	nop                                              ; $747e: $00
	ld   [$00bc], sp                                 ; $747f: $08 $bc $00
	jr   jr_034_7484                                 ; $7482: $18 $00

jr_034_7484:
	jr   jr_034_7486                                 ; $7484: $18 $00

jr_034_7486:
	jr   jr_034_7488                                 ; $7486: $18 $00

jr_034_7488:
	and  h                                           ; $7488: $a4
	add  l                                           ; $7489: $85
	nop                                              ; $748a: $00
	ld   [$0004], sp                                 ; $748b: $08 $04 $00
	inc  bc                                          ; $748e: $03
	nop                                              ; $748f: $00
	inc  bc                                          ; $7490: $03
	nop                                              ; $7491: $00
	inc  c                                           ; $7492: $0c
	nop                                              ; $7493: $00
	ld   [$0085], sp                                 ; $7494: $08 $85 $00
	ld   [$0048], sp                                 ; $7497: $08 $48 $00
	add  a                                           ; $749a: $87
	nop                                              ; $749b: $00
	sbc  l                                           ; $749c: $9d
	nop                                              ; $749d: $00
	inc  b                                           ; $749e: $04
	nop                                              ; $749f: $00
	ld   d, [hl]                                     ; $74a0: $56
	adc  e                                           ; $74a1: $8b
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	add  b                                           ; $74a4: $80
	add  e                                           ; $74a5: $83
	nop                                              ; $74a6: $00
	inc  b                                           ; $74a7: $04
	add  b                                           ; $74a8: $80
	nop                                              ; $74a9: $00
	ret  nz                                          ; $74aa: $c0

	nop                                              ; $74ab: $00
	ld   b, b                                        ; $74ac: $40
	add  c                                           ; $74ad: $81
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	ret  nz                                          ; $74b0: $c0

	add  c                                           ; $74b1: $81
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	ld   b, b                                        ; $74b4: $40
	add  l                                           ; $74b5: $85
	nop                                              ; $74b6: $00

jr_034_74b7:
	inc  b                                           ; $74b7: $04
	stop                                             ; $74b8: $10 $00
	jr   z, jr_034_74bc                              ; $74ba: $28 $00

jr_034_74bc:
	ld   d, h                                        ; $74bc: $54
	add  c                                           ; $74bd: $81
	nop                                              ; $74be: $00
	ld   [bc], a                                     ; $74bf: $02
	stop                                             ; $74c0: $10 $00
	db   $10                                         ; $74c2: $10
	add  c                                           ; $74c3: $81
	nop                                              ; $74c4: $00
	ld   a, [bc]                                     ; $74c5: $0a
	ld   l, h                                        ; $74c6: $6c
	nop                                              ; $74c7: $00
	adc  b                                           ; $74c8: $88
	nop                                              ; $74c9: $00
	sub  $00                                         ; $74ca: $d6 $00
	ld   d, h                                        ; $74cc: $54
	nop                                              ; $74cd: $00
	or   h                                           ; $74ce: $b4
	nop                                              ; $74cf: $00
	or   $81                                         ; $74d0: $f6 $81
	nop                                              ; $74d2: $00
	ld   d, $fe                                      ; $74d3: $16 $fe
	nop                                              ; $74d5: $00
	or   [hl]                                        ; $74d6: $b6
	nop                                              ; $74d7: $00
	stop                                             ; $74d8: $10 $00
	xor  $00                                         ; $74da: $ee $00
	ld   a, h                                        ; $74dc: $7c
	nop                                              ; $74dd: $00
	cp   $00                                         ; $74de: $fe $00
	db   $ec                                         ; $74e0: $ec
	nop                                              ; $74e1: $00
	ld   b, b                                        ; $74e2: $40
	nop                                              ; $74e3: $00
	ld   l, [hl]                                     ; $74e4: $6e
	nop                                              ; $74e5: $00
	cp   [hl]                                        ; $74e6: $be
	nop                                              ; $74e7: $00
	inc  a                                           ; $74e8: $3c

jr_034_74e9:
	nop                                              ; $74e9: $00
	ld   a, [bc]                                     ; $74ea: $0a
	add  c                                           ; $74eb: $81
	nop                                              ; $74ec: $00

jr_034_74ed:
	ld   [bc], a                                     ; $74ed: $02
	ld   a, [bc]                                     ; $74ee: $0a
	nop                                              ; $74ef: $00
	ld   a, [bc]                                     ; $74f0: $0a
	add  c                                           ; $74f1: $81
	nop                                              ; $74f2: $00
	ld   [hl+], a                                    ; $74f3: $22
	ld   a, [bc]                                     ; $74f4: $0a
	nop                                              ; $74f5: $00
	inc  a                                           ; $74f6: $3c
	nop                                              ; $74f7: $00
	ccf                                              ; $74f8: $3f
	nop                                              ; $74f9: $00
	ld   hl, $3f00                                   ; $74fa: $21 $00 $3f
	nop                                              ; $74fd: $00
	ld   e, $00                                      ; $74fe: $1e $00
	dec  de                                          ; $7500: $1b
	nop                                              ; $7501: $00
	ld   c, $00                                      ; $7502: $0e $00
	ld   a, e                                        ; $7504: $7b
	nop                                              ; $7505: $00
	ld   d, c                                        ; $7506: $51
	nop                                              ; $7507: $00
	ld   a, $00                                      ; $7508: $3e $00
	ld   a, [hl-]                                    ; $750a: $3a
	nop                                              ; $750b: $00
	inc  c                                           ; $750c: $0c
	nop                                              ; $750d: $00
	inc  d                                           ; $750e: $14
	nop                                              ; $750f: $00
	ld   a, $00                                      ; $7510: $3e $00
	jr   c, jr_034_7514                              ; $7512: $38 $00

jr_034_7514:
	ld   b, $00                                      ; $7514: $06 $00
	inc  e                                           ; $7516: $1c
	add  e                                           ; $7517: $83
	nop                                              ; $7518: $00
	ld   [bc], a                                     ; $7519: $02
	inc  a                                           ; $751a: $3c
	nop                                              ; $751b: $00
	ld   a, [hl]                                     ; $751c: $7e
	adc  l                                           ; $751d: $8d
	nop                                              ; $751e: $00
	ld   [bc], a                                     ; $751f: $02
	ld   a, [hl]                                     ; $7520: $7e
	nop                                              ; $7521: $00
	inc  a                                           ; $7522: $3c
	adc  c                                           ; $7523: $89
	nop                                              ; $7524: $00
	inc  b                                           ; $7525: $04
	stop                                             ; $7526: $10 $00
	jr   nz, jr_034_752a                             ; $7528: $20 $00

jr_034_752a:
	jr   nz, jr_034_74b7                             ; $752a: $20 $8b

	nop                                              ; $752c: $00
	ld   [bc], a                                     ; $752d: $02
	jr   z, jr_034_7530                              ; $752e: $28 $00

jr_034_7530:
	jr   c, @-$75                                    ; $7530: $38 $89

	nop                                              ; $7532: $00
	inc  b                                           ; $7533: $04
	inc  a                                           ; $7534: $3c
	nop                                              ; $7535: $00
	ld   a, [hl]                                     ; $7536: $7e
	nop                                              ; $7537: $00
	ld   b, b                                        ; $7538: $40
	add  c                                           ; $7539: $81
	nop                                              ; $753a: $00
	inc  c                                           ; $753b: $0c
	ld   b, $00                                      ; $753c: $06 $00
	inc  c                                           ; $753e: $0c
	nop                                              ; $753f: $00
	jr   jr_034_7542                                 ; $7540: $18 $00

jr_034_7542:
	jr   nc, jr_034_7544                             ; $7542: $30 $00

jr_034_7544:
	ld   h, b                                        ; $7544: $60
	nop                                              ; $7545: $00
	ld   a, $00                                      ; $7546: $3e $00
	ld   a, [hl]                                     ; $7548: $7e
	adc  c                                           ; $7549: $89
	nop                                              ; $754a: $00
	inc  b                                           ; $754b: $04
	inc  a                                           ; $754c: $3c
	nop                                              ; $754d: $00
	ld   a, [hl]                                     ; $754e: $7e
	nop                                              ; $754f: $00
	ld   b, b                                        ; $7550: $40
	add  c                                           ; $7551: $81
	nop                                              ; $7552: $00

jr_034_7553:
	ld   [bc], a                                     ; $7553: $02
	ld   a, $00                                      ; $7554: $3e $00
	ld   a, $83                                      ; $7556: $3e $83
	nop                                              ; $7558: $00
	inc  b                                           ; $7559: $04
	ld   b, b                                        ; $755a: $40
	nop                                              ; $755b: $00
	ld   a, [hl]                                     ; $755c: $7e
	nop                                              ; $755d: $00
	inc  a                                           ; $755e: $3c
	adc  c                                           ; $755f: $89
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	inc  c                                           ; $7562: $0c
	add  c                                           ; $7563: $81
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	jr   jr_034_74e9                                 ; $7566: $18 $81

	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	jr   nc, jr_034_74ed                             ; $756a: $30 $81

	nop                                              ; $756c: $00
	inc  b                                           ; $756d: $04
	ld   h, b                                        ; $756e: $60
	nop                                              ; $756f: $00
	ld   a, [hl-]                                    ; $7570: $3a
	nop                                              ; $7571: $00
	ld   a, d                                        ; $7572: $7a
	add  c                                           ; $7573: $81
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	inc  b                                           ; $7576: $04
	adc  c                                           ; $7577: $89
	nop                                              ; $7578: $00
	ld   [bc], a                                     ; $7579: $02
	ld   a, h                                        ; $757a: $7c
	nop                                              ; $757b: $00
	inc  a                                           ; $757c: $3c
	add  e                                           ; $757d: $83
	nop                                              ; $757e: $00
	inc  b                                           ; $757f: $04
	inc  a                                           ; $7580: $3c
	nop                                              ; $7581: $00
	ld   a, $00                                      ; $7582: $3e $00
	ld   b, b                                        ; $7584: $40
	add  c                                           ; $7585: $81
	nop                                              ; $7586: $00
	inc  b                                           ; $7587: $04
	ld   b, b                                        ; $7588: $40
	nop                                              ; $7589: $00
	ld   a, [hl]                                     ; $758a: $7e
	nop                                              ; $758b: $00
	inc  a                                           ; $758c: $3c
	adc  c                                           ; $758d: $89
	nop                                              ; $758e: $00
	inc  b                                           ; $758f: $04
	inc  a                                           ; $7590: $3c
	nop                                              ; $7591: $00
	ld   a, [hl]                                     ; $7592: $7e
	nop                                              ; $7593: $00
	ld   [bc], a                                     ; $7594: $02
	add  c                                           ; $7595: $81
	nop                                              ; $7596: $00
	ld   [bc], a                                     ; $7597: $02
	inc  a                                           ; $7598: $3c
	nop                                              ; $7599: $00
	ld   a, $85                                      ; $759a: $3e $85
	nop                                              ; $759c: $00
	ld   [bc], a                                     ; $759d: $02
	ld   a, [hl]                                     ; $759e: $7e
	nop                                              ; $759f: $00
	inc  a                                           ; $75a0: $3c
	adc  c                                           ; $75a1: $89
	nop                                              ; $75a2: $00
	ld   [bc], a                                     ; $75a3: $02
	ld   a, [hl]                                     ; $75a4: $7e
	nop                                              ; $75a5: $00
	inc  a                                           ; $75a6: $3c
	add  c                                           ; $75a7: $81
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	ld   b, [hl]                                     ; $75aa: $46
	add  c                                           ; $75ab: $81
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	inc  c                                           ; $75ae: $0c
	add  a                                           ; $75af: $87
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	ld   [$0089], sp                                 ; $75b2: $08 $89 $00
	ld   [bc], a                                     ; $75b5: $02
	inc  a                                           ; $75b6: $3c
	nop                                              ; $75b7: $00
	ld   a, [hl]                                     ; $75b8: $7e
	add  e                                           ; $75b9: $83
	nop                                              ; $75ba: $00
	ld   [bc], a                                     ; $75bb: $02
	ld   a, [hl]                                     ; $75bc: $7e
	nop                                              ; $75bd: $00
	ld   a, [hl]                                     ; $75be: $7e
	add  l                                           ; $75bf: $85
	nop                                              ; $75c0: $00
	ld   [bc], a                                     ; $75c1: $02
	ld   a, [hl]                                     ; $75c2: $7e
	nop                                              ; $75c3: $00
	inc  a                                           ; $75c4: $3c
	adc  c                                           ; $75c5: $89
	nop                                              ; $75c6: $00
	ld   [bc], a                                     ; $75c7: $02
	inc  a                                           ; $75c8: $3c
	nop                                              ; $75c9: $00
	ld   a, [hl]                                     ; $75ca: $7e
	add  l                                           ; $75cb: $85
	nop                                              ; $75cc: $00
	ld   [bc], a                                     ; $75cd: $02
	ld   a, [hl]                                     ; $75ce: $7e
	nop                                              ; $75cf: $00
	jr   c, jr_034_7553                              ; $75d0: $38 $81

	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	inc  c                                           ; $75d4: $0c
	add  c                                           ; $75d5: $81
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	ld   [$0085], sp                                 ; $75d8: $08 $85 $00


TileAttr_SoundMode::
	db $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
if def(VWF)
	db $03, $03, $03, $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $04, $04, $04, $04, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $03, $03, $03, $04, $04, $04
else
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04
endc
	db $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05, $03, $03, $04, $04, $03, $03, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05, $03, $03, $04, $04, $03, $03, $03, $23
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $23
	db $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05, $03, $03, $04, $04, $03, $03, $03, $23
	db $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $05, $05, $03, $03, $04, $04, $03, $03, $03, $23
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $23


	inc  bc                                          ; $76a3: $03
	inc  bc                                          ; $76a4: $03
	inc  bc                                          ; $76a5: $03
	inc  bc                                          ; $76a6: $03
	inc  bc                                          ; $76a7: $03
	inc  bc                                          ; $76a8: $03
	inc  bc                                          ; $76a9: $03
	inc  bc                                          ; $76aa: $03
	dec  b                                           ; $76ab: $05
	dec  b                                           ; $76ac: $05
	dec  b                                           ; $76ad: $05
	dec  b                                           ; $76ae: $05
	inc  bc                                          ; $76af: $03
	inc  bc                                          ; $76b0: $03
	dec  b                                           ; $76b1: $05
	dec  b                                           ; $76b2: $05
	inc  bc                                          ; $76b3: $03
	inc  bc                                          ; $76b4: $03
	inc  b                                           ; $76b5: $04
	inc  b                                           ; $76b6: $04
	inc  bc                                          ; $76b7: $03
	inc  bc                                          ; $76b8: $03
	inc  bc                                          ; $76b9: $03
	inc  bc                                          ; $76ba: $03
	inc  bc                                          ; $76bb: $03
	inc  bc                                          ; $76bc: $03
	inc  bc                                          ; $76bd: $03
	inc  bc                                          ; $76be: $03
	dec  b                                           ; $76bf: $05
	dec  b                                           ; $76c0: $05
	dec  b                                           ; $76c1: $05
	dec  b                                           ; $76c2: $05
	inc  bc                                          ; $76c3: $03
	inc  bc                                          ; $76c4: $03
	dec  b                                           ; $76c5: $05
	dec  b                                           ; $76c6: $05
	inc  bc                                          ; $76c7: $03
	inc  bc                                          ; $76c8: $03
	inc  bc                                          ; $76c9: $03
	inc  hl                                          ; $76ca: $23
	inc  bc                                          ; $76cb: $03
	inc  bc                                          ; $76cc: $03
	inc  bc                                          ; $76cd: $03
	inc  bc                                          ; $76ce: $03
	inc  bc                                          ; $76cf: $03
	inc  bc                                          ; $76d0: $03
	inc  bc                                          ; $76d1: $03
	inc  bc                                          ; $76d2: $03
	dec  b                                           ; $76d3: $05
	dec  b                                           ; $76d4: $05
	dec  b                                           ; $76d5: $05
	dec  b                                           ; $76d6: $05
	inc  bc                                          ; $76d7: $03
	inc  bc                                          ; $76d8: $03
	dec  b                                           ; $76d9: $05
	dec  b                                           ; $76da: $05
	inc  bc                                          ; $76db: $03
	inc  bc                                          ; $76dc: $03
	inc  bc                                          ; $76dd: $03
	inc  hl                                          ; $76de: $23
	inc  bc                                          ; $76df: $03
	inc  bc                                          ; $76e0: $03
	inc  bc                                          ; $76e1: $03
	inc  bc                                          ; $76e2: $03
	inc  bc                                          ; $76e3: $03
	inc  bc                                          ; $76e4: $03
	inc  bc                                          ; $76e5: $03
	inc  bc                                          ; $76e6: $03
	dec  b                                           ; $76e7: $05
	dec  b                                           ; $76e8: $05
	dec  b                                           ; $76e9: $05
	dec  b                                           ; $76ea: $05
	inc  bc                                          ; $76eb: $03
	inc  bc                                          ; $76ec: $03
	dec  b                                           ; $76ed: $05
	dec  b                                           ; $76ee: $05
	inc  bc                                          ; $76ef: $03
	inc  bc                                          ; $76f0: $03
	inc  bc                                          ; $76f1: $03
	inc  hl                                          ; $76f2: $23


TileMap_SoundMode::
	db $00, $01, $01, $01, $01, $01, $01, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d
	db $10, $32, $32, $32, $32, $32, $32, $80, $82, $84, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a
if def(VWF)
	db $10, $32, $32, $22, $23, $24, $32, $98, $9a, $9c, $9e, $a0, $a2, $a4, $1b, $1c, $1d, $1e, $20, $21
	db $10, $32, $32, $25, $26, $27, $28, $99, $9b, $9d, $9f, $a1, $a3, $a5, $32, $32, $32, $61, $0e, $0f
else
	db $10, $32, $32, $22, $23, $24, $32,  $81, $83, $85, $32, $32, $32, $32, $1b, $1c, $1d, $1e, $20, $21
	db $10, $32, $32, $25, $26, $27, $28, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $61, $0e, $0f
endc
	db $10, $32, $29, $2a, $2b, $2c, $2d, $32, $51, $52, $53, $54, $32, $32, $a2, $a2, $32, $32, $62, $1f
	db $10, $32, $2e, $2f, $30, $31, $32, $32, $55, $56, $57, $58, $32, $32, $b2, $b2, $32, $32, $32, $10
	db $10, $33, $34, $35, $36, $37, $38, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $32, $10
	db $10, $39, $3a, $3b, $3c, $3d, $3e, $32, $59, $5a, $5b, $5c, $32, $32, $a2, $a2, $32, $32, $32, $10
	db $3f, $40, $41, $42, $43, $44, $45, $32, $5d, $5e, $5f, $60, $32, $32, $b2, $b2, $32, $32, $32, $10
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $32, $32, $32, $32, $32, $32, $32, $32, $32, $10


	db   $10                                         ; $77bb: $10
	ld   [hl-], a                                    ; $77bc: $32
	add  hl, hl                                      ; $77bd: $29
	ld   a, [hl+]                                    ; $77be: $2a
	dec  hl                                          ; $77bf: $2b
	inc  l                                           ; $77c0: $2c
	dec  l                                           ; $77c1: $2d
	ld   [hl-], a                                    ; $77c2: $32
	ld   h, e                                        ; $77c3: $63
	ld   h, h                                        ; $77c4: $64
	ld   h, l                                        ; $77c5: $65
	ld   l, a                                        ; $77c6: $6f
	ld   [hl-], a                                    ; $77c7: $32
	ld   [hl-], a                                    ; $77c8: $32
	and  d                                           ; $77c9: $a2
	and  d                                           ; $77ca: $a2
	ld   [hl-], a                                    ; $77cb: $32
	ld   [hl-], a                                    ; $77cc: $32
	ld   h, d                                        ; $77cd: $62
	rra                                              ; $77ce: $1f
	db   $10                                         ; $77cf: $10
	ld   [hl-], a                                    ; $77d0: $32
	ld   l, $2f                                      ; $77d1: $2e $2f
	jr   nc, jr_034_7806                             ; $77d3: $30 $31

	ld   [hl-], a                                    ; $77d5: $32
	ld   [hl-], a                                    ; $77d6: $32
	ld   h, [hl]                                     ; $77d7: $66
	ld   h, a                                        ; $77d8: $67
	ld   l, b                                        ; $77d9: $68
	ld   [hl], b                                     ; $77da: $70
	ld   [hl-], a                                    ; $77db: $32
	ld   [hl-], a                                    ; $77dc: $32
	or   d                                           ; $77dd: $b2
	or   d                                           ; $77de: $b2

jr_034_77df:
	ld   [hl-], a                                    ; $77df: $32
	ld   [hl-], a                                    ; $77e0: $32
	ld   [hl-], a                                    ; $77e1: $32
	db   $10                                         ; $77e2: $10

jr_034_77e3:
	db   $10                                         ; $77e3: $10
	add  hl, sp                                      ; $77e4: $39
	ld   a, [hl-]                                    ; $77e5: $3a
	dec  sp                                          ; $77e6: $3b
	inc  a                                           ; $77e7: $3c
	dec  a                                           ; $77e8: $3d
	ld   a, $32                                      ; $77e9: $3e $32
	ld   l, c                                        ; $77eb: $69
	ld   l, d                                        ; $77ec: $6a
	ld   l, e                                        ; $77ed: $6b
	ld   l, a                                        ; $77ee: $6f
	ld   [hl-], a                                    ; $77ef: $32
	ld   [hl-], a                                    ; $77f0: $32
	and  d                                           ; $77f1: $a2
	and  d                                           ; $77f2: $a2
	ld   [hl-], a                                    ; $77f3: $32
	ld   [hl-], a                                    ; $77f4: $32
	ld   [hl-], a                                    ; $77f5: $32
	db   $10                                         ; $77f6: $10
	ccf                                              ; $77f7: $3f
	ld   b, b                                        ; $77f8: $40
	ld   b, c                                        ; $77f9: $41
	ld   b, d                                        ; $77fa: $42
	ld   b, e                                        ; $77fb: $43
	ld   b, h                                        ; $77fc: $44
	ld   b, l                                        ; $77fd: $45
	ld   [hl-], a                                    ; $77fe: $32
	ld   l, h                                        ; $77ff: $6c
	ld   l, l                                        ; $7800: $6d
	ld   l, [hl]                                     ; $7801: $6e
	ld   [hl], b                                     ; $7802: $70
	ld   [hl-], a                                    ; $7803: $32
	ld   [hl-], a                                    ; $7804: $32
	or   d                                           ; $7805: $b2

jr_034_7806:
	or   d                                           ; $7806: $b2
	ld   [hl-], a                                    ; $7807: $32
	ld   [hl-], a                                    ; $7808: $32
	ld   [hl-], a                                    ; $7809: $32
	db   $10                                         ; $780a: $10
	xor  e                                           ; $780b: $ab
	nop                                              ; $780c: $00
	ldh  [c], a                                      ; $780d: $e2
	nop                                              ; $780e: $00
	ld   [bc], a                                     ; $780f: $02
	inc  a                                           ; $7810: $3c
	nop                                              ; $7811: $00
	ld   a, [hl]                                     ; $7812: $7e
	adc  l                                           ; $7813: $8d
	nop                                              ; $7814: $00
	ld   [bc], a                                     ; $7815: $02
	ld   a, [hl]                                     ; $7816: $7e
	nop                                              ; $7817: $00
	inc  a                                           ; $7818: $3c
	adc  c                                           ; $7819: $89
	nop                                              ; $781a: $00
	inc  b                                           ; $781b: $04
	stop                                             ; $781c: $10 $00
	jr   nz, jr_034_7820                             ; $781e: $20 $00

jr_034_7820:
	db $20, $8b

	nop                                              ; $7822: $00
	ld   [bc], a                                     ; $7823: $02
	jr   z, jr_034_7826                              ; $7824: $28 $00

jr_034_7826:
	db $38, $89

	nop                                              ; $7828: $00
	inc  b                                           ; $7829: $04
	inc  a                                           ; $782a: $3c
	nop                                              ; $782b: $00
	ld   a, [hl]                                     ; $782c: $7e
	nop                                              ; $782d: $00
	ld   b, b                                        ; $782e: $40
	add  c                                           ; $782f: $81
	nop                                              ; $7830: $00
	inc  c                                           ; $7831: $0c
	ld   b, $00                                      ; $7832: $06 $00
	inc  c                                           ; $7834: $0c
	nop                                              ; $7835: $00
	jr   jr_034_7838                                 ; $7836: $18 $00

jr_034_7838:
	jr   nc, jr_034_783a                             ; $7838: $30 $00

jr_034_783a:
	ld   h, b                                        ; $783a: $60
	nop                                              ; $783b: $00
	ld   a, $00                                      ; $783c: $3e $00
	ld   a, [hl]                                     ; $783e: $7e
	adc  c                                           ; $783f: $89
	nop                                              ; $7840: $00
	inc  b                                           ; $7841: $04
	inc  a                                           ; $7842: $3c
	nop                                              ; $7843: $00
	ld   a, [hl]                                     ; $7844: $7e
	nop                                              ; $7845: $00
	ld   b, b                                        ; $7846: $40
	add  c                                           ; $7847: $81
	nop                                              ; $7848: $00
	ld   [bc], a                                     ; $7849: $02
	ld   a, $00                                      ; $784a: $3e $00
	ld   a, $83                                      ; $784c: $3e $83
	nop                                              ; $784e: $00
	inc  b                                           ; $784f: $04
	ld   b, b                                        ; $7850: $40
	nop                                              ; $7851: $00
	ld   a, [hl]                                     ; $7852: $7e
	nop                                              ; $7853: $00
	inc  a                                           ; $7854: $3c
	adc  c                                           ; $7855: $89
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	inc  c                                           ; $7858: $0c
	add  c                                           ; $7859: $81
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	jr   jr_034_77df                                 ; $785c: $18 $81

	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	jr   nc, jr_034_77e3                             ; $7860: $30 $81

	nop                                              ; $7862: $00
	inc  b                                           ; $7863: $04
	ld   h, b                                        ; $7864: $60
	nop                                              ; $7865: $00
	ld   a, [hl-]                                    ; $7866: $3a
	nop                                              ; $7867: $00
	ld   a, d                                        ; $7868: $7a
	add  c                                           ; $7869: $81
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	inc  b                                           ; $786c: $04
	adc  c                                           ; $786d: $89
	nop                                              ; $786e: $00
	ld   [bc], a                                     ; $786f: $02
	ld   a, h                                        ; $7870: $7c
	nop                                              ; $7871: $00
	inc  a                                           ; $7872: $3c
	add  e                                           ; $7873: $83
	nop                                              ; $7874: $00
	inc  b                                           ; $7875: $04
	inc  a                                           ; $7876: $3c
	nop                                              ; $7877: $00
	ld   a, $00                                      ; $7878: $3e $00
	ld   b, b                                        ; $787a: $40
	add  c                                           ; $787b: $81
	nop                                              ; $787c: $00
	inc  b                                           ; $787d: $04
	ld   b, b                                        ; $787e: $40
	nop                                              ; $787f: $00
	ld   a, [hl]                                     ; $7880: $7e
	nop                                              ; $7881: $00
	inc  a                                           ; $7882: $3c
	adc  c                                           ; $7883: $89
	nop                                              ; $7884: $00
	inc  b                                           ; $7885: $04
	inc  a                                           ; $7886: $3c
	nop                                              ; $7887: $00
	ld   a, [hl]                                     ; $7888: $7e
	nop                                              ; $7889: $00
	ld   [bc], a                                     ; $788a: $02
	add  c                                           ; $788b: $81
	nop                                              ; $788c: $00
	ld   [bc], a                                     ; $788d: $02
	inc  a                                           ; $788e: $3c
	nop                                              ; $788f: $00
	ld   a, $85                                      ; $7890: $3e $85
	nop                                              ; $7892: $00
	ld   [bc], a                                     ; $7893: $02
	ld   a, [hl]                                     ; $7894: $7e
	nop                                              ; $7895: $00
	inc  a                                           ; $7896: $3c
	adc  c                                           ; $7897: $89
	nop                                              ; $7898: $00

jr_034_7899:
	ld   [bc], a                                     ; $7899: $02
	ld   a, [hl]                                     ; $789a: $7e
	nop                                              ; $789b: $00
	inc  a                                           ; $789c: $3c
	add  c                                           ; $789d: $81
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	ld   b, [hl]                                     ; $78a0: $46
	add  c                                           ; $78a1: $81
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	inc  c                                           ; $78a4: $0c
	add  a                                           ; $78a5: $87
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	ld   [$0089], sp                                 ; $78a8: $08 $89 $00
	ld   [bc], a                                     ; $78ab: $02
	inc  a                                           ; $78ac: $3c
	nop                                              ; $78ad: $00
	ld   a, [hl]                                     ; $78ae: $7e
	add  e                                           ; $78af: $83
	nop                                              ; $78b0: $00
	ld   [bc], a                                     ; $78b1: $02
	ld   a, [hl]                                     ; $78b2: $7e
	nop                                              ; $78b3: $00
	ld   a, [hl]                                     ; $78b4: $7e
	add  l                                           ; $78b5: $85
	nop                                              ; $78b6: $00
	ld   [bc], a                                     ; $78b7: $02
	ld   a, [hl]                                     ; $78b8: $7e
	nop                                              ; $78b9: $00
	inc  a                                           ; $78ba: $3c
	adc  e                                           ; $78bb: $8b
	nop                                              ; $78bc: $00
	ld   [bc], a                                     ; $78bd: $02
	stop                                             ; $78be: $10 $00
	db   $10                                         ; $78c0: $10

jr_034_78c1:
	adc  e                                           ; $78c1: $8b
	nop                                              ; $78c2: $00
	ld   [bc], a                                     ; $78c3: $02
	stop                                             ; $78c4: $10 $00
	db   $10                                         ; $78c6: $10
	adc  e                                           ; $78c7: $8b
	nop                                              ; $78c8: $00
	ld   [bc], a                                     ; $78c9: $02
	stop                                             ; $78ca: $10 $00
	db   $10                                         ; $78cc: $10
	adc  e                                           ; $78cd: $8b
	nop                                              ; $78ce: $00
	ld   [bc], a                                     ; $78cf: $02
	stop                                             ; $78d0: $10 $00
	db   $10                                         ; $78d2: $10
	adc  e                                           ; $78d3: $8b
	nop                                              ; $78d4: $00
	ld   [bc], a                                     ; $78d5: $02
	stop                                             ; $78d6: $10 $00
	db   $10                                         ; $78d8: $10
	adc  e                                           ; $78d9: $8b
	nop                                              ; $78da: $00
	ld   [bc], a                                     ; $78db: $02
	stop                                             ; $78dc: $10 $00
	db   $10                                         ; $78de: $10
	adc  e                                           ; $78df: $8b
	nop                                              ; $78e0: $00
	ld   [bc], a                                     ; $78e1: $02
	stop                                             ; $78e2: $10 $00
	db   $10                                         ; $78e4: $10
	adc  e                                           ; $78e5: $8b
	nop                                              ; $78e6: $00
	ld   [bc], a                                     ; $78e7: $02
	stop                                             ; $78e8: $10 $00
	db   $10                                         ; $78ea: $10
	adc  e                                           ; $78eb: $8b
	nop                                              ; $78ec: $00
	ld   [de], a                                     ; $78ed: $12
	ld   bc, $0200                                   ; $78ee: $01 $00 $02
	nop                                              ; $78f1: $00
	inc  b                                           ; $78f2: $04
	nop                                              ; $78f3: $00
	ld   [$1000], sp                                 ; $78f4: $08 $00 $10
	nop                                              ; $78f7: $00
	stop                                             ; $78f8: $10 $00
	ld   [$0400], sp                                 ; $78fa: $08 $00 $04
	nop                                              ; $78fd: $00
	ld   [bc], a                                     ; $78fe: $02
	nop                                              ; $78ff: $00
	ld   bc, $0089                                   ; $7900: $01 $89 $00
	ld   [bc], a                                     ; $7903: $02
	inc  a                                           ; $7904: $3c
	nop                                              ; $7905: $00
	ld   a, [hl]                                     ; $7906: $7e
	add  a                                           ; $7907: $87
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	ld   b, d                                        ; $790a: $42
	add  c                                           ; $790b: $81
	nop                                              ; $790c: $00
	inc  b                                           ; $790d: $04
	stop                                             ; $790e: $10 $00
	jr   nz, jr_034_7912                             ; $7910: $20 $00

jr_034_7912:
	jr   nz, jr_034_7899                             ; $7912: $20 $85

	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	db   $10                                         ; $7916: $10
	add  c                                           ; $7917: $81
	nop                                              ; $7918: $00
	inc  b                                           ; $7919: $04
	inc  a                                           ; $791a: $3c
	nop                                              ; $791b: $00
	ld   a, [hl]                                     ; $791c: $7e
	nop                                              ; $791d: $00
	ld   b, b                                        ; $791e: $40
	add  c                                           ; $791f: $81
	nop                                              ; $7920: $00
	inc  b                                           ; $7921: $04
	ld   b, $00                                      ; $7922: $06 $00
	inc  c                                           ; $7924: $0c
	nop                                              ; $7925: $00
	ld   [$0081], sp                                 ; $7926: $08 $81 $00
	inc  b                                           ; $7929: $04
	inc  a                                           ; $792a: $3c
	nop                                              ; $792b: $00
	ld   a, [hl]                                     ; $792c: $7e
	nop                                              ; $792d: $00
	ld   b, b                                        ; $792e: $40
	add  c                                           ; $792f: $81
	nop                                              ; $7930: $00
	inc  b                                           ; $7931: $04
	ld   a, $00                                      ; $7932: $3e $00
	ld   a, $00                                      ; $7934: $3e $00
	ld   [bc], a                                     ; $7936: $02
	add  c                                           ; $7937: $81
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	inc  c                                           ; $793a: $0c
	add  c                                           ; $793b: $81
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	jr   jr_034_78c1                                 ; $793e: $18 $81

	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	jr   nc, @-$7d                                   ; $7942: $30 $81

	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	inc  h                                           ; $7946: $24
	add  c                                           ; $7947: $81
	nop                                              ; $7948: $00
	ld   [bc], a                                     ; $7949: $02
	ld   a, h                                        ; $794a: $7c
	nop                                              ; $794b: $00
	inc  a                                           ; $794c: $3c

jr_034_794d:
	add  e                                           ; $794d: $83
	nop                                              ; $794e: $00
	inc  b                                           ; $794f: $04
	inc  a                                           ; $7950: $3c
	nop                                              ; $7951: $00
	ld   a, $00                                      ; $7952: $3e $00
	ld   b, d                                        ; $7954: $42
	add  c                                           ; $7955: $81
	nop                                              ; $7956: $00
	inc  b                                           ; $7957: $04
	inc  a                                           ; $7958: $3c
	nop                                              ; $7959: $00
	ld   a, [hl]                                     ; $795a: $7e
	nop                                              ; $795b: $00
	ld   [bc], a                                     ; $795c: $02
	add  c                                           ; $795d: $81
	nop                                              ; $795e: $00
	inc  b                                           ; $795f: $04
	inc  a                                           ; $7960: $3c
	nop                                              ; $7961: $00
	ld   a, $00                                      ; $7962: $3e $00
	ld   b, d                                        ; $7964: $42
	add  c                                           ; $7965: $81
	nop                                              ; $7966: $00
	ld   [bc], a                                     ; $7967: $02
	ld   a, [hl]                                     ; $7968: $7e
	nop                                              ; $7969: $00
	inc  a                                           ; $796a: $3c
	add  c                                           ; $796b: $81
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	ld   b, [hl]                                     ; $796e: $46
	add  c                                           ; $796f: $81
	nop                                              ; $7970: $00
	ld   [bc], a                                     ; $7971: $02
	inc  c                                           ; $7972: $0c
	nop                                              ; $7973: $00
	ld   [$0081], sp                                 ; $7974: $08 $81 $00
	ld   [bc], a                                     ; $7977: $02
	inc  a                                           ; $7978: $3c
	nop                                              ; $7979: $00
	ld   a, [hl]                                     ; $797a: $7e
	add  e                                           ; $797b: $83
	nop                                              ; $797c: $00
	inc  b                                           ; $797d: $04
	ld   a, [hl]                                     ; $797e: $7e
	nop                                              ; $797f: $00
	ld   a, [hl]                                     ; $7980: $7e
	nop                                              ; $7981: $00
	ld   b, d                                        ; $7982: $42
	add  c                                           ; $7983: $81
	nop                                              ; $7984: $00
	ld   [bc], a                                     ; $7985: $02
	inc  a                                           ; $7986: $3c
	nop                                              ; $7987: $00
	ld   a, [hl]                                     ; $7988: $7e
	add  l                                           ; $7989: $85
	nop                                              ; $798a: $00
	ld   [bc], a                                     ; $798b: $02
	ld   a, [hl]                                     ; $798c: $7e
	nop                                              ; $798d: $00
	inc  a                                           ; $798e: $3c
	add  e                                           ; $798f: $83
	nop                                              ; $7990: $00
	ld   [bc], a                                     ; $7991: $02
	stop                                             ; $7992: $10 $00
	db   $10                                         ; $7994: $10
	adc  e                                           ; $7995: $8b
	nop                                              ; $7996: $00
	ld   [bc], a                                     ; $7997: $02
	stop                                             ; $7998: $10 $00
	db   $10                                         ; $799a: $10
	adc  e                                           ; $799b: $8b
	nop                                              ; $799c: $00
	ld   [bc], a                                     ; $799d: $02
	stop                                             ; $799e: $10 $00
	db   $10                                         ; $79a0: $10
	adc  e                                           ; $79a1: $8b
	nop                                              ; $79a2: $00
	ld   [bc], a                                     ; $79a3: $02
	stop                                             ; $79a4: $10 $00
	db   $10                                         ; $79a6: $10
	adc  e                                           ; $79a7: $8b
	nop                                              ; $79a8: $00
	ld   [bc], a                                     ; $79a9: $02
	stop                                             ; $79aa: $10 $00
	db   $10                                         ; $79ac: $10
	adc  e                                           ; $79ad: $8b
	nop                                              ; $79ae: $00
	ld   [bc], a                                     ; $79af: $02
	stop                                             ; $79b0: $10 $00
	db   $10                                         ; $79b2: $10
	add  l                                           ; $79b3: $85
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	ld   b, d                                        ; $79b6: $42
	add  e                                           ; $79b7: $83
	nop                                              ; $79b8: $00
	ld   [bc], a                                     ; $79b9: $02
	ld   a, [hl]                                     ; $79ba: $7e
	nop                                              ; $79bb: $00
	inc  a                                           ; $79bc: $3c
	add  l                                           ; $79bd: $85
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	db   $10                                         ; $79c0: $10
	add  e                                           ; $79c1: $83
	nop                                              ; $79c2: $00
	ld   [bc], a                                     ; $79c3: $02
	jr   z, jr_034_79c6                              ; $79c4: $28 $00

jr_034_79c6:
	jr   c, jr_034_794d                              ; $79c6: $38 $85

	nop                                              ; $79c8: $00
	ld   [$0010], sp                                 ; $79c9: $08 $10 $00
	jr   nc, jr_034_79ce                             ; $79cc: $30 $00

jr_034_79ce:
	ld   h, b                                        ; $79ce: $60
	nop                                              ; $79cf: $00
	ld   a, $00                                      ; $79d0: $3e $00
	ld   a, [hl]                                     ; $79d2: $7e
	add  l                                           ; $79d3: $85
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	ld   [bc], a                                     ; $79d6: $02
	add  c                                           ; $79d7: $81
	nop                                              ; $79d8: $00
	inc  b                                           ; $79d9: $04
	ld   b, b                                        ; $79da: $40
	nop                                              ; $79db: $00
	ld   a, [hl]                                     ; $79dc: $7e
	nop                                              ; $79dd: $00
	inc  a                                           ; $79de: $3c
	add  l                                           ; $79df: $85
	nop                                              ; $79e0: $00
	inc  b                                           ; $79e1: $04
	ld   b, h                                        ; $79e2: $44
	nop                                              ; $79e3: $00
	ld   a, [hl-]                                    ; $79e4: $3a
	nop                                              ; $79e5: $00
	ld   a, d                                        ; $79e6: $7a
	add  c                                           ; $79e7: $81
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	inc  b                                           ; $79ea: $04
	add  l                                           ; $79eb: $85
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	ld   [bc], a                                     ; $79ee: $02
	add  c                                           ; $79ef: $81
	nop                                              ; $79f0: $00
	inc  b                                           ; $79f1: $04
	ld   b, b                                        ; $79f2: $40
	nop                                              ; $79f3: $00
	ld   a, [hl]                                     ; $79f4: $7e
	nop                                              ; $79f5: $00
	inc  a                                           ; $79f6: $3c
	add  l                                           ; $79f7: $85
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	ld   b, d                                        ; $79fa: $42
	add  e                                           ; $79fb: $83
	nop                                              ; $79fc: $00
	ld   [bc], a                                     ; $79fd: $02
	ld   a, [hl]                                     ; $79fe: $7e
	nop                                              ; $79ff: $00
	inc  a                                           ; $7a00: $3c
	add  l                                           ; $7a01: $85
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	ld   [$0085], sp                                 ; $7a04: $08 $85 $00
	nop                                              ; $7a07: $00
	ld   [$0085], sp                                 ; $7a08: $08 $85 $00
	nop                                              ; $7a0b: $00
	ld   b, d                                        ; $7a0c: $42
	add  e                                           ; $7a0d: $83
	nop                                              ; $7a0e: $00
	ld   [bc], a                                     ; $7a0f: $02
	ld   a, [hl]                                     ; $7a10: $7e
	nop                                              ; $7a11: $00
	inc  a                                           ; $7a12: $3c
	add  l                                           ; $7a13: $85
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	inc  b                                           ; $7a16: $04
	add  c                                           ; $7a17: $81
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	inc  c                                           ; $7a1a: $0c
	add  c                                           ; $7a1b: $81
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	ld   [$0085], sp                                 ; $7a1e: $08 $85 $00


Gfx_MediaFactorySmallText::
	INCBIN "build/mediaFactorySmallText.2bpp", 0, $1c0
.end::
	

Gfx_MediaFactoryBigLogo::
	INCBIN "build/mediaFactoryBigLogo.2bpp", 0, $1c0
.end::

	


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
	dec  c                                           ; $7db6: $0d
	dec  c                                           ; $7db7: $0d
	dec  c                                           ; $7db8: $0d
	dec  c                                           ; $7db9: $0d
	dec  c                                           ; $7dba: $0d
	dec  c                                           ; $7dbb: $0d
	dec  c                                           ; $7dbc: $0d
	dec  c                                           ; $7dbd: $0d
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
	dec  c                                           ; $7dca: $0d
	dec  c                                           ; $7dcb: $0d
	dec  c                                           ; $7dcc: $0d
	dec  c                                           ; $7dcd: $0d
	dec  c                                           ; $7dce: $0d
	dec  c                                           ; $7dcf: $0d
	dec  c                                           ; $7dd0: $0d
	dec  c                                           ; $7dd1: $0d
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
	dec  c                                           ; $7dde: $0d
	dec  c                                           ; $7ddf: $0d
	dec  c                                           ; $7de0: $0d
	dec  c                                           ; $7de1: $0d
	dec  c                                           ; $7de2: $0d
	dec  c                                           ; $7de3: $0d
	dec  c                                           ; $7de4: $0d
	dec  c                                           ; $7de5: $0d
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
	dec  c                                           ; $7df2: $0d
	dec  c                                           ; $7df3: $0d
	dec  c                                           ; $7df4: $0d
	dec  c                                           ; $7df5: $0d
	dec  c                                           ; $7df6: $0d
	dec  c                                           ; $7df7: $0d
	dec  c                                           ; $7df8: $0d
	dec  c                                           ; $7df9: $0d
	nop                                              ; $7dfa: $00
	ld   bc, $0101                                   ; $7dfb: $01 $01 $01
	ld   bc, $0101                                   ; $7dfe: $01 $01 $01
	ld   bc, $0101                                   ; $7e01: $01 $01 $01
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	dec  c                                           ; $7e06: $0d
	dec  c                                           ; $7e07: $0d
	dec  c                                           ; $7e08: $0d
	dec  c                                           ; $7e09: $0d
	dec  c                                           ; $7e0a: $0d
	dec  c                                           ; $7e0b: $0d
	dec  c                                           ; $7e0c: $0d
	dec  c                                           ; $7e0d: $0d
	nop                                              ; $7e0e: $00
	ld   bc, $0101                                   ; $7e0f: $01 $01 $01
	ld   bc, $0101                                   ; $7e12: $01 $01 $01
	ld   bc, $0101                                   ; $7e15: $01 $01 $01
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	dec  c                                           ; $7e1a: $0d
	dec  c                                           ; $7e1b: $0d
	dec  c                                           ; $7e1c: $0d
	dec  c                                           ; $7e1d: $0d
	dec  c                                           ; $7e1e: $0d
	dec  c                                           ; $7e1f: $0d
	dec  c                                           ; $7e20: $0d
	dec  c                                           ; $7e21: $0d
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
	dec  c                                           ; $7e2e: $0d
	dec  c                                           ; $7e2f: $0d
	dec  c                                           ; $7e30: $0d
	dec  c                                           ; $7e31: $0d
	dec  c                                           ; $7e32: $0d
	dec  c                                           ; $7e33: $0d
	dec  c                                           ; $7e34: $0d
	dec  c                                           ; $7e35: $0d
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
	dec  c                                           ; $7e42: $0d
	dec  c                                           ; $7e43: $0d
	dec  c                                           ; $7e44: $0d
	dec  c                                           ; $7e45: $0d
	dec  c                                           ; $7e46: $0d
	dec  c                                           ; $7e47: $0d
	dec  c                                           ; $7e48: $0d
	dec  c                                           ; $7e49: $0d
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
	dec  c                                           ; $7e56: $0d
	dec  c                                           ; $7e57: $0d
	dec  c                                           ; $7e58: $0d
	dec  c                                           ; $7e59: $0d
	dec  c                                           ; $7e5a: $0d
	dec  c                                           ; $7e5b: $0d
	dec  c                                           ; $7e5c: $0d
	dec  c                                           ; $7e5d: $0d
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
	rst  JumpTable                                         ; $7e7d: $df
	rst  JumpTable                                         ; $7e7e: $df
	rst  JumpTable                                         ; $7e7f: $df
	rst  JumpTable                                         ; $7e80: $df
	rst  JumpTable                                         ; $7e81: $df
	rst  JumpTable                                         ; $7e82: $df
	rst  JumpTable                                         ; $7e83: $df
	rst  JumpTable                                         ; $7e84: $df
	rst  JumpTable                                         ; $7e85: $df
	rst  JumpTable                                         ; $7e86: $df
	rst  JumpTable                                         ; $7e87: $df
	rst  JumpTable                                         ; $7e88: $df
	rst  JumpTable                                         ; $7e89: $df
	rst  JumpTable                                         ; $7e8a: $df
	rst  JumpTable                                         ; $7e8b: $df
	rst  JumpTable                                         ; $7e8c: $df
	rst  JumpTable                                         ; $7e8d: $df
	rst  JumpTable                                         ; $7e8e: $df
	rst  JumpTable                                         ; $7e8f: $df
	rst  JumpTable                                         ; $7e90: $df
	rst  JumpTable                                         ; $7e91: $df
	ld   c, $0f                                      ; $7e92: $0e $0f
	db   $10                                         ; $7e94: $10
	ld   de, $1312                                   ; $7e95: $11 $12 $13
	inc  d                                           ; $7e98: $14
	dec  d                                           ; $7e99: $15
	rst  JumpTable                                         ; $7e9a: $df
	rst  JumpTable                                         ; $7e9b: $df
	rst  JumpTable                                         ; $7e9c: $df
	rst  JumpTable                                         ; $7e9d: $df
	rst  JumpTable                                         ; $7e9e: $df
	rst  JumpTable                                         ; $7e9f: $df
	rst  JumpTable                                         ; $7ea0: $df
	rst  JumpTable                                         ; $7ea1: $df
	rst  JumpTable                                         ; $7ea2: $df
	rst  JumpTable                                         ; $7ea3: $df
	rst  JumpTable                                         ; $7ea4: $df
	rst  JumpTable                                         ; $7ea5: $df
	ld   a, [de]                                     ; $7ea6: $1a
	dec  de                                          ; $7ea7: $1b
	inc  e                                           ; $7ea8: $1c
	dec  e                                           ; $7ea9: $1d
	ld   e, $1f                                      ; $7eaa: $1e $1f
	jr   nz, jr_034_7ecf                             ; $7eac: $20 $21

	rst  JumpTable                                         ; $7eae: $df
	rst  JumpTable                                         ; $7eaf: $df
	rst  JumpTable                                         ; $7eb0: $df
	rst  JumpTable                                         ; $7eb1: $df
	rst  JumpTable                                         ; $7eb2: $df
	rst  JumpTable                                         ; $7eb3: $df
	rst  JumpTable                                         ; $7eb4: $df
	rst  JumpTable                                         ; $7eb5: $df
	rst  JumpTable                                         ; $7eb6: $df
	rst  JumpTable                                         ; $7eb7: $df
	rst  JumpTable                                         ; $7eb8: $df
	rst  JumpTable                                         ; $7eb9: $df
	ld   h, $27                                      ; $7eba: $26 $27
	jr   z, jr_034_7ee7                              ; $7ebc: $28 $29

	ld   a, [hl+]                                    ; $7ebe: $2a
	dec  hl                                          ; $7ebf: $2b
	inc  l                                           ; $7ec0: $2c
	dec  l                                           ; $7ec1: $2d
	rst  JumpTable                                         ; $7ec2: $df
	rst  JumpTable                                         ; $7ec3: $df
	rst  JumpTable                                         ; $7ec4: $df
	rst  JumpTable                                         ; $7ec5: $df
	rst  JumpTable                                         ; $7ec6: $df
	rst  JumpTable                                         ; $7ec7: $df
	rst  JumpTable                                         ; $7ec8: $df
	rst  JumpTable                                         ; $7ec9: $df
	rst  JumpTable                                         ; $7eca: $df
	rst  JumpTable                                         ; $7ecb: $df
	rst  JumpTable                                         ; $7ecc: $df
	rst  JumpTable                                         ; $7ecd: $df
	ld   [hl-], a                                    ; $7ece: $32

jr_034_7ecf:
	inc  sp                                          ; $7ecf: $33
	inc  [hl]                                        ; $7ed0: $34
	dec  [hl]                                        ; $7ed1: $35
	ld   [hl], $37                                   ; $7ed2: $36 $37
	jr   c, jr_034_7f0f                              ; $7ed4: $38 $39

	rst  JumpTable                                         ; $7ed6: $df
	add  b                                           ; $7ed7: $80
	add  d                                           ; $7ed8: $82
	add  h                                           ; $7ed9: $84
	add  [hl]                                        ; $7eda: $86
	adc  b                                           ; $7edb: $88
	adc  d                                           ; $7edc: $8a
	adc  h                                           ; $7edd: $8c
	adc  [hl]                                        ; $7ede: $8e
	sub  b                                           ; $7edf: $90
	rst  JumpTable                                         ; $7ee0: $df
	rst  JumpTable                                         ; $7ee1: $df
	ld   a, $3f                                      ; $7ee2: $3e $3f
	ld   b, b                                        ; $7ee4: $40
	ld   b, c                                        ; $7ee5: $41
	ld   b, d                                        ; $7ee6: $42

jr_034_7ee7:
	ld   b, e                                        ; $7ee7: $43
	ld   b, h                                        ; $7ee8: $44
	ld   b, l                                        ; $7ee9: $45
	rst  JumpTable                                         ; $7eea: $df
	add  c                                           ; $7eeb: $81
	add  e                                           ; $7eec: $83
	add  l                                           ; $7eed: $85
	add  a                                           ; $7eee: $87
	adc  c                                           ; $7eef: $89
	adc  e                                           ; $7ef0: $8b
	adc  l                                           ; $7ef1: $8d
	adc  a                                           ; $7ef2: $8f
	sub  c                                           ; $7ef3: $91
	rst  JumpTable                                         ; $7ef4: $df
	rst  JumpTable                                         ; $7ef5: $df
	ld   c, d                                        ; $7ef6: $4a
	ld   c, e                                        ; $7ef7: $4b
	ld   c, h                                        ; $7ef8: $4c
	ld   c, l                                        ; $7ef9: $4d
	ld   c, [hl]                                     ; $7efa: $4e
	ld   c, a                                        ; $7efb: $4f
	ld   d, b                                        ; $7efc: $50
	ld   d, c                                        ; $7efd: $51
	rst  JumpTable                                         ; $7efe: $df
	rst  JumpTable                                         ; $7eff: $df
	rst  JumpTable                                         ; $7f00: $df
	rst  JumpTable                                         ; $7f01: $df
	rst  JumpTable                                         ; $7f02: $df
	rst  JumpTable                                         ; $7f03: $df
	rst  JumpTable                                         ; $7f04: $df
	rst  JumpTable                                         ; $7f05: $df
	rst  JumpTable                                         ; $7f06: $df
	rst  JumpTable                                         ; $7f07: $df
	rst  JumpTable                                         ; $7f08: $df
	rst  JumpTable                                         ; $7f09: $df
	ld   d, [hl]                                     ; $7f0a: $56
	ld   d, a                                        ; $7f0b: $57
	ld   e, b                                        ; $7f0c: $58
	ld   e, c                                        ; $7f0d: $59
	ld   e, d                                        ; $7f0e: $5a

jr_034_7f0f:
	ld   e, e                                        ; $7f0f: $5b
	ld   e, h                                        ; $7f10: $5c
	ld   e, l                                        ; $7f11: $5d
	rst  JumpTable                                         ; $7f12: $df
	rst  JumpTable                                         ; $7f13: $df
	rst  JumpTable                                         ; $7f14: $df
	rst  JumpTable                                         ; $7f15: $df
	rst  JumpTable                                         ; $7f16: $df
	rst  JumpTable                                         ; $7f17: $df
	rst  JumpTable                                         ; $7f18: $df
	rst  JumpTable                                         ; $7f19: $df
	rst  JumpTable                                         ; $7f1a: $df
	rst  JumpTable                                         ; $7f1b: $df
	rst  JumpTable                                         ; $7f1c: $df
	rst  JumpTable                                         ; $7f1d: $df
	ld   h, d                                        ; $7f1e: $62
	ld   h, e                                        ; $7f1f: $63
	ld   h, h                                        ; $7f20: $64
	ld   h, l                                        ; $7f21: $65
	ld   h, [hl]                                     ; $7f22: $66
	ld   h, a                                        ; $7f23: $67
	ld   l, b                                        ; $7f24: $68
	ld   l, c                                        ; $7f25: $69
	rst  JumpTable                                         ; $7f26: $df
	rst  JumpTable                                         ; $7f27: $df
	rst  JumpTable                                         ; $7f28: $df
	rst  JumpTable                                         ; $7f29: $df
	rst  JumpTable                                         ; $7f2a: $df
	rst  JumpTable                                         ; $7f2b: $df
	rst  JumpTable                                         ; $7f2c: $df
	rst  JumpTable                                         ; $7f2d: $df
	rst  JumpTable                                         ; $7f2e: $df
	rst  JumpTable                                         ; $7f2f: $df
	rst  JumpTable                                         ; $7f30: $df
	rst  JumpTable                                         ; $7f31: $df
	ld   l, [hl]                                     ; $7f32: $6e
	ld   l, a                                        ; $7f33: $6f
	ld   [hl], b                                     ; $7f34: $70
	ld   [hl], c                                     ; $7f35: $71
	ld   [hl], d                                     ; $7f36: $72
	ld   [hl], e                                     ; $7f37: $73
	ld   [hl], h                                     ; $7f38: $74
	ld   [hl], l                                     ; $7f39: $75
	rst  JumpTable                                         ; $7f3a: $df
	rst  JumpTable                                         ; $7f3b: $df
	rst  JumpTable                                         ; $7f3c: $df
	rst  JumpTable                                         ; $7f3d: $df
	rst  JumpTable                                         ; $7f3e: $df
	rst  JumpTable                                         ; $7f3f: $df
	rst  JumpTable                                         ; $7f40: $df
	rst  JumpTable                                         ; $7f41: $df
	rst  JumpTable                                         ; $7f42: $df
	rst  JumpTable                                         ; $7f43: $df
	rst  JumpTable                                         ; $7f44: $df
	rst  JumpTable                                         ; $7f45: $df
	rst  JumpTable                                         ; $7f46: $df
	rst  JumpTable                                         ; $7f47: $df
	rst  JumpTable                                         ; $7f48: $df
	rst  JumpTable                                         ; $7f49: $df
	rst  JumpTable                                         ; $7f4a: $df
	rst  JumpTable                                         ; $7f4b: $df
	rst  JumpTable                                         ; $7f4c: $df
	rst  JumpTable                                         ; $7f4d: $df
	rst  JumpTable                                         ; $7f4e: $df
	rst  JumpTable                                         ; $7f4f: $df
	rst  JumpTable                                         ; $7f50: $df
	rst  JumpTable                                         ; $7f51: $df
	rst  JumpTable                                         ; $7f52: $df
	rst  JumpTable                                         ; $7f53: $df
	rst  JumpTable                                         ; $7f54: $df
	rst  JumpTable                                         ; $7f55: $df
	rst  JumpTable                                         ; $7f56: $df
	rst  JumpTable                                         ; $7f57: $df
	rst  JumpTable                                         ; $7f58: $df
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
	rst  $38                                         ; $7f67: $ff
	ld   a, a                                        ; $7f68: $7f
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	cp   d                                           ; $7f6d: $ba
	ld   c, [hl]                                     ; $7f6e: $4e
	rst  $38                                         ; $7f6f: $ff
	ld   a, a                                        ; $7f70: $7f
	ccf                                              ; $7f71: $3f
	ld   e, a                                        ; $7f72: $5f
	ld   [hl], $3e                                   ; $7f73: $36 $3e
	ld   [hl], b                                     ; $7f75: $70
	dec  h                                           ; $7f76: $25
	db   $ed                                         ; $7f77: $ed
	inc  d                                           ; $7f78: $14
	ccf                                              ; $7f79: $3f
	ld   e, a                                        ; $7f7a: $5f
	ld   [hl], $3e                                   ; $7f7b: $36 $3e
	ld   [hl], b                                     ; $7f7d: $70
	dec  h                                           ; $7f7e: $25
	db   $ed                                         ; $7f7f: $ed
	inc  d                                           ; $7f80: $14
	ccf                                              ; $7f81: $3f
	ld   e, a                                        ; $7f82: $5f
	ld   [hl], $3e                                   ; $7f83: $36 $3e
	ld   [hl], b                                     ; $7f85: $70
	dec  h                                           ; $7f86: $25
	db   $ed                                         ; $7f87: $ed
	inc  d                                           ; $7f88: $14
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
	ccf                                              ; $7f99: $3f
	ld   e, a                                        ; $7f9a: $5f
	ld   [hl], $3e                                   ; $7f9b: $36 $3e
	ld   [hl], b                                     ; $7f9d: $70
	dec  h                                           ; $7f9e: $25
	db   $ed                                         ; $7f9f: $ed
	inc  d                                           ; $7fa0: $14
	ccf                                              ; $7fa1: $3f
	ld   e, a                                        ; $7fa2: $5f
	ld   [hl], b                                     ; $7fa3: $70
	dec  h                                           ; $7fa4: $25
	ld   [hl], b                                     ; $7fa5: $70
	dec  h                                           ; $7fa6: $25
	db   $ed                                         ; $7fa7: $ed
	inc  d                                           ; $7fa8: $14
	ccf                                              ; $7fa9: $3f
	ld   e, a                                        ; $7faa: $5f
	ccf                                              ; $7fab: $3f
	ld   e, a                                        ; $7fac: $5f
	ld   [hl], b                                     ; $7fad: $70
	dec  h                                           ; $7fae: $25
	db   $ed                                         ; $7faf: $ed
	inc  d                                           ; $7fb0: $14
	ccf                                              ; $7fb1: $3f
	ld   e, a                                        ; $7fb2: $5f
	ld   [hl], b                                     ; $7fb3: $70
	dec  h                                           ; $7fb4: $25
	ccf                                              ; $7fb5: $3f
	ld   e, a                                        ; $7fb6: $5f
	db   $ed                                         ; $7fb7: $ed
	inc  d                                           ; $7fb8: $14
	ccf                                              ; $7fb9: $3f
	ld   e, a                                        ; $7fba: $5f
	ld   [hl], $3e                                   ; $7fbb: $36 $3e
	ld   [hl], $3e                                   ; $7fbd: $36 $3e
	db   $ed                                         ; $7fbf: $ed
	inc  d                                           ; $7fc0: $14
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
