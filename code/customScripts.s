include "includes.s"


SECTION "Custom misc", ROMX[$4000], BANK[$3]

if def(VWF)

Gfx_EnTitleMenuScreenOpts::
	INCBIN "en_titleMenuScreenOpts.2bpp"


LoadSettingsEnTileData::
	ld   bc, $c0
	ld   de, $d1a0
	ld   hl, Gfx_EnSettings
	call MemCopy

	ld   bc, $240
	ld   de, $d6e0
	ld   hl, Gfx_EnSettings+$c0
	call MemCopy

	ld   bc, $280
	ld   de, $d9a0
	ld   hl, Gfx_EnSettings+$c0+$240
	call MemCopy

	ld   bc, $80
	ld   de, $ddc0
	ld   hl, Gfx_EnSettings+$c0+$240+$280
	call MemCopy

	ld   bc, $140
	ld   de, $dec0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80
	call MemCopy

	ld   bc, $60
	ld   de, $d0a0
	ld   hl, Gfx_EnSettings+$c0+$240+$280+$80+$140
	call MemCopy
	ret


Gfx_EnSettings:
	INCBIN "en_settings.2bpp"


ChangeSettingsTileMap::
	ld   a, BANK(TileMap_SettingsMainBit)
	ldbc $0e, $0a
	ld   de, TileMap_SettingsMainBit
	ld   hl, $d8a3
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d814
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d854
	call FarCopyLayout

	ld   a, BANK(TileMap_SlowNormalFast)
	ldbc $0c, $02
	ld   de, TileMap_SlowNormalFast
	ld   hl, $d894
	call FarCopyLayout

	ld   a, BANK(TileMap_CursorType)
	ldbc $08, $02
	ld   de, TileMap_CursorType
	ld   hl, $d954
	call FarCopyLayout

	ld   a, BANK(TileMap_FaceIcon)
	ldbc $07, $02
	ld   de, TileMap_FaceIcon
	ld   hl, $d994
	call FarCopyLayout

	ld   a, BANK(TileMap_SettingsText)
	ldbc $06, $03
	ld   de, TileMap_SettingsText
	ld   hl, $d822
	call FarCopyLayout
	ret


TileMap_SettingsMainBit::
	db $fa, $fc, $fe, $00, $02, $04, $06, $08, $b3, $b3, $b3, $b3, $b3, $b3
	db $fb, $fd, $ff, $01, $03, $05, $07, $09, $c3, $c3, $c3, $c3, $c3, $c3
	db $0a, $0c, $0e, $10, $1a, $1c, $1e, $20, $b3, $b3, $b3, $b3, $b3, $b3
	db $0b, $0d, $0f, $11, $1b, $1d, $1f, $21, $c3, $c3, $c3, $c3, $c3, $c3
	db $22, $24, $26, $28, $2a, $2c, $2e, $30, $b3, $b3, $b3, $b3, $b3, $b3
	db $23, $25, $27, $29, $2b, $2d, $2f, $31, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3
	db $b3, $b3, $b3, $ca, $cb, $cc, $cd, $b3, $b3, $b3, $b3, $b3, $b3, $b3
	db $c3, $c3, $c3, $da, $db, $dc, $dd, $c3, $c3, $c3, $c3, $c3, $c3, $c3


TileMap_SlowNormalFast::
	db $f2, $f4, $f6, $f8, $a2, $a4, $ee, $f0, $9a, $9c, $9e, $a0
	db $f3, $f5, $f7, $f9, $a3, $a5, $ef, $f1, $9b, $9d, $9f, $a1


TileMap_CursorType::
	db $32, $34, $36, $38, $3a, $3c, $3e, $b3
	db $33, $35, $37, $39, $3b, $3d, $3f, $c3


TileMap_FaceIcon::
	db $40, $5c, $5e, $60, $62, $6c, $b3
	db $41, $5d, $5f, $61, $63, $6d, $c3


TileMap_SettingsText::
	db $6e, $70, $72, $74, $76, $78
	db $6f, $71, $73, $75, $77, $79
	db $7a, $7c, $7e, $8a, $8c, $8e


ChangeSettingsTileAttr::
	ld   a, $07
	ld   [$d822], a
	ld   a, $05
	ld   [$d827], a
	ret


Gfx_EnSaveScreen::
	INCBIN "en_saveScreen.2bpp"

endc