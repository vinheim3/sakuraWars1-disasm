rsreset
OAM_Y rb 1 ; 0
OAM_X rb 1 ; 1
OAM_TILE rb 1 ; 2
OAM_ATTR rb 1 ; 3

rsreset
HDMA_SRC_TYPE_AND_VBK rb 1 ; 0
HDMA_SRC_BANK rb 1 ; 1
HDMA_SRC_HI rb 1 ; 2
HDMA_SRC_LO rb 1 ; 3
HDMA_DEST_HI rb 1 ; 4
HDMA_DEST_LO rb 1 ; 5
HDMA_5 rb 1 ; 6
HDMA_SIZEOF rb

rsreset
; bit 0 set - spot in use
; bit 1 set - animatable
BASS_CTRL rb 1 ; 0
BASS_ADDR rw 1 ; 1
BASS_TYPE rb 1 ; 3
BASS_SIZEOF rb

rsreset
; bit 7 set - relative position
; bit 7 clear - absolute position
; non-bit 7 bits - sprite group
ASSI0_CTRL rb ; 0
ASSI0_SPEC_IDX rb ; 1
ASSI0_X rb ; 2
ASSI0_Y rb ; 3

rsreset
ASSI1_ADDR rw 1 ; 0
ASSI1_CURR_FRAME_CTR rb 1 ; 2
ASSI1_COND_LOOP_CTR rb 1 ; 3
ASSI1_X rb 1 ; 4
ASSI1_Y rb 1 ; 5
ASSI1_SIZEOF rb
