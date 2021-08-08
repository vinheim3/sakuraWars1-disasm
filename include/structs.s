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
ASSI_ADDR rw 1 ; 0
ASSI_CURR_FRAME_CTR rb 1 ; 2
ASSI_COND_LOOP_CTR rb 1 ; 3
ASSI_X rb 1 ; 4
ASSI_Y rb 1 ; 5
ASSI_SIZEOF rb