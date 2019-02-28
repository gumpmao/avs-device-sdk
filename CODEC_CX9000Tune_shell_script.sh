#!/bin/bash
# Purpose:
#       Shell script for configuration settings of Falcon

# CX9000 parameters 
#@ set audio_sampling_rate 48

#@ set eq_type0 {BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER}
#@ set eq_freq0 {100 280 1250 2200 5000 8000 10000}
#@ set eq_gain0 {0 0 0 0 0 0 0}
#@ set eq_qfactor0 {1.0 1.0 1.0 1.0 1.0 1.0 1.0}
#@ set eq_enable0 0

#@ set eq_type1 {BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER BIQUAD_PEAKING_FILTER}
#@ set eq_freq1 {100 280 1250 2200 5000 8000 10000}
#@ set eq_gain1 {0 0 0 0 0 0 0}
#@ set eq_qfactor1 {1.0 1.0 1.0 1.0 1.0 1.0 1.0}
#@ set eq_enable1 0

# DRC 
#@ set high_input_thresh0 0
#@ set high_input_thresh1 0
#@ set high_input_thresh2 0
#@ set high_input_thresh3 0

#@ set low_input_thresh0 -60
#@ set low_input_thresh1 -60
#@ set low_input_thresh2 -60
#@ set low_input_thresh3 -60

#@ set high_output_thresh0 0
#@ set high_output_thresh1 0
#@ set high_output_thresh2 0
#@ set high_output_thresh3 0

#@ set low_output_thresh0 -96
#@ set low_output_thresh1 -96
#@ set low_output_thresh2 -96
#@ set low_output_thresh3 -96

#@ set low_comp_slope0 2
#@ set low_comp_slope1 2
#@ set low_comp_slope2 2
#@ set low_comp_slope3 2

#@ set mid_comp_slope0 1
#@ set mid_comp_slope1 1
#@ set mid_comp_slope2 1
#@ set mid_comp_slope3 1

#@ set high_comp_slope0 64
#@ set high_comp_slope1 64
#@ set high_comp_slope2 64
#@ set high_comp_slope3 64

#@ set gain_shift0 12.04
#@ set gain_shift1 12.04
#@ set gain_shift2 12.04
#@ set gain_shift3 12.04

#@ set attack_rate0 16
#@ set attack_rate1 16
#@ set attack_rate2 16
#@ set attack_rate3 16

#@ set rel_update0 2048
#@ set rel_update1 2048
#@ set rel_update2 2048
#@ set rel_update3 2048

#@ set rel_delay0 1024
#@ set rel_delay1 1024
#@ set rel_delay2 1024
#@ set rel_delay3 1024

#@ set fast_rel_update0 64
#@ set fast_rel_update1 64
#@ set fast_rel_update2 64
#@ set fast_rel_update3 64

#@ set fast_rel_delay0 32
#@ set fast_rel_delay1 32
#@ set fast_rel_delay2 32
#@ set fast_rel_delay3 32

#@ set release_input_thresh0 0.0
#@ set release_input_thresh1 0.0
#@ set release_input_thresh2 0.0
#@ set release_input_thresh3 0.0

#@ set drc_enable 0

#@ set post_drc_enable 1

#@ set tbdrc_band_mode "Single Band"

#@ set drc_volume_config "Post-DRC Volume"

#@ set left_gain_volume 0.0
#@ set right_gain_volume 0.0

#@ set cross_freq0 600
#@ set cross_freq1 3000

# use to find which sound card is currently in use
CARD=$(aplay -l | grep cxsmartspeaker2 | sed 's/card  *\([0-9]*\).*/\1/')

# EQ parameters
EQL_BD0_B0_LSB=0
EQL_BD0_B0_MSB=64
EQL_BD0_B1_LSB=0
EQL_BD0_B1_MSB=0
EQL_BD0_B2_LSB=0
EQL_BD0_B2_MSB=0
EQL_BD0_A1_LSB=0
EQL_BD0_A1_MSB=0
EQL_BD0_A2_LSB=0
EQL_BD0_A2_MSB=0
EQL_BD0_G_MSB=3

EQL_BD1_B0_LSB=0
EQL_BD1_B0_MSB=64
EQL_BD1_B1_LSB=0
EQL_BD1_B1_MSB=0
EQL_BD1_B2_LSB=0
EQL_BD1_B2_MSB=0
EQL_BD1_A1_LSB=0
EQL_BD1_A1_MSB=0
EQL_BD1_A2_LSB=0
EQL_BD1_A2_MSB=0
EQL_BD1_G_MSB=3

EQL_BD2_B0_LSB=0
EQL_BD2_B0_MSB=64
EQL_BD2_B1_LSB=0
EQL_BD2_B1_MSB=0
EQL_BD2_B2_LSB=0
EQL_BD2_B2_MSB=0
EQL_BD2_A1_LSB=0
EQL_BD2_A1_MSB=0
EQL_BD2_A2_LSB=0
EQL_BD2_A2_MSB=0
EQL_BD2_G_MSB=3

EQL_BD3_B0_LSB=0
EQL_BD3_B0_MSB=64
EQL_BD3_B1_LSB=0
EQL_BD3_B1_MSB=0
EQL_BD3_B2_LSB=0
EQL_BD3_B2_MSB=0
EQL_BD3_A1_LSB=0
EQL_BD3_A1_MSB=0
EQL_BD3_A2_LSB=0
EQL_BD3_A2_MSB=0
EQL_BD3_G_MSB=3

EQL_BD4_B0_LSB=0
EQL_BD4_B0_MSB=64
EQL_BD4_B1_LSB=0
EQL_BD4_B1_MSB=0
EQL_BD4_B2_LSB=0
EQL_BD4_B2_MSB=0
EQL_BD4_A1_LSB=0
EQL_BD4_A1_MSB=0
EQL_BD4_A2_LSB=0
EQL_BD4_A2_MSB=0
EQL_BD4_G_MSB=3

EQL_BD5_B0_LSB=0
EQL_BD5_B0_MSB=64
EQL_BD5_B1_LSB=0
EQL_BD5_B1_MSB=0
EQL_BD5_B2_LSB=0
EQL_BD5_B2_MSB=0
EQL_BD5_A1_LSB=0
EQL_BD5_A1_MSB=0
EQL_BD5_A2_LSB=0
EQL_BD5_A2_MSB=0
EQL_BD5_G_MSB=3

EQL_BD6_B0_LSB=0
EQL_BD6_B0_MSB=64
EQL_BD6_B1_LSB=0
EQL_BD6_B1_MSB=0
EQL_BD6_B2_LSB=0
EQL_BD6_B2_MSB=0
EQL_BD6_A1_LSB=0
EQL_BD6_A1_MSB=0
EQL_BD6_A2_LSB=0
EQL_BD6_A2_MSB=0
EQL_BD6_G_MSB=3

EQR_BD0_B0_LSB=0
EQR_BD0_B0_MSB=64
EQR_BD0_B1_LSB=0
EQR_BD0_B1_MSB=0
EQR_BD0_B2_LSB=0
EQR_BD0_B2_MSB=0
EQR_BD0_A1_LSB=0
EQR_BD0_A1_MSB=0
EQR_BD0_A2_LSB=0
EQR_BD0_A2_MSB=0
EQR_BD0_G_MSB=3

EQR_BD1_B0_LSB=0
EQR_BD1_B0_MSB=64
EQR_BD1_B1_LSB=0
EQR_BD1_B1_MSB=0
EQR_BD1_B2_LSB=0
EQR_BD1_B2_MSB=0
EQR_BD1_A1_LSB=0
EQR_BD1_A1_MSB=0
EQR_BD1_A2_LSB=0
EQR_BD1_A2_MSB=0
EQR_BD1_G_MSB=3

EQR_BD2_B0_LSB=0
EQR_BD2_B0_MSB=64
EQR_BD2_B1_LSB=0
EQR_BD2_B1_MSB=0
EQR_BD2_B2_LSB=0
EQR_BD2_B2_MSB=0
EQR_BD2_A1_LSB=0
EQR_BD2_A1_MSB=0
EQR_BD2_A2_LSB=0
EQR_BD2_A2_MSB=0
EQR_BD2_G_MSB=3

EQR_BD3_B0_LSB=0
EQR_BD3_B0_MSB=64
EQR_BD3_B1_LSB=0
EQR_BD3_B1_MSB=0
EQR_BD3_B2_LSB=0
EQR_BD3_B2_MSB=0
EQR_BD3_A1_LSB=0
EQR_BD3_A1_MSB=0
EQR_BD3_A2_LSB=0
EQR_BD3_A2_MSB=0
EQR_BD3_G_MSB=3

EQR_BD4_B0_LSB=0
EQR_BD4_B0_MSB=64
EQR_BD4_B1_LSB=0
EQR_BD4_B1_MSB=0
EQR_BD4_B2_LSB=0
EQR_BD4_B2_MSB=0
EQR_BD4_A1_LSB=0
EQR_BD4_A1_MSB=0
EQR_BD4_A2_LSB=0
EQR_BD4_A2_MSB=0
EQR_BD4_G_MSB=3

EQR_BD5_B0_LSB=0
EQR_BD5_B0_MSB=64
EQR_BD5_B1_LSB=0
EQR_BD5_B1_MSB=0
EQR_BD5_B2_LSB=0
EQR_BD5_B2_MSB=0
EQR_BD5_A1_LSB=0
EQR_BD5_A1_MSB=0
EQR_BD5_A2_LSB=0
EQR_BD5_A2_MSB=0
EQR_BD5_G_MSB=3

EQR_BD6_B0_LSB=0
EQR_BD6_B0_MSB=64
EQR_BD6_B1_LSB=0
EQR_BD6_B1_MSB=0
EQR_BD6_B2_LSB=0
EQR_BD6_B2_MSB=0
EQR_BD6_A1_LSB=0
EQR_BD6_A1_MSB=0
EQR_BD6_A2_LSB=0
EQR_BD6_A2_MSB=0
EQR_BD6_G_MSB=3

SAMPLE_RATE=48
if [ $SAMPLE_RATE -eq 48 ]
then
	amixer -D hw:$CARD cset name='EQ 48K L Band 0' $EQL_BD0_B0_LSB,$EQL_BD0_B0_MSB,$EQL_BD0_B1_LSB,$EQL_BD0_B1_MSB,$EQL_BD0_B2_LSB,$EQL_BD0_B2_MSB,$EQL_BD0_A1_LSB,$EQL_BD0_A1_MSB,$EQL_BD0_A2_LSB,$EQL_BD0_A2_MSB,$EQL_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 1' $EQL_BD1_B0_LSB,$EQL_BD1_B0_MSB,$EQL_BD1_B1_LSB,$EQL_BD1_B1_MSB,$EQL_BD1_B2_LSB,$EQL_BD1_B2_MSB,$EQL_BD1_A1_LSB,$EQL_BD1_A1_MSB,$EQL_BD1_A2_LSB,$EQL_BD1_A2_MSB,$EQL_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 2' $EQL_BD2_B0_LSB,$EQL_BD2_B0_MSB,$EQL_BD2_B1_LSB,$EQL_BD2_B1_MSB,$EQL_BD2_B2_LSB,$EQL_BD2_B2_MSB,$EQL_BD2_A1_LSB,$EQL_BD2_A1_MSB,$EQL_BD2_A2_LSB,$EQL_BD2_A2_MSB,$EQL_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 3' $EQL_BD3_B0_LSB,$EQL_BD3_B0_MSB,$EQL_BD3_B1_LSB,$EQL_BD3_B1_MSB,$EQL_BD3_B2_LSB,$EQL_BD3_B2_MSB,$EQL_BD3_A1_LSB,$EQL_BD3_A1_MSB,$EQL_BD3_A2_LSB,$EQL_BD3_A2_MSB,$EQL_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 4' $EQL_BD4_B0_LSB,$EQL_BD4_B0_MSB,$EQL_BD4_B1_LSB,$EQL_BD4_B1_MSB,$EQL_BD4_B2_LSB,$EQL_BD4_B2_MSB,$EQL_BD4_A1_LSB,$EQL_BD4_A1_MSB,$EQL_BD4_A2_LSB,$EQL_BD4_A2_MSB,$EQL_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 5' $EQL_BD5_B0_LSB,$EQL_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K L Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB

	amixer -D hw:$CARD cset name='EQ 48K R Band 0' $EQR_BD0_B0_LSB,$EQR_BD0_B0_MSB,$EQR_BD0_B1_LSB,$EQR_BD0_B1_MSB,$EQR_BD0_B2_LSB,$EQR_BD0_B2_MSB,$EQR_BD0_A1_LSB,$EQR_BD0_A1_MSB,$EQR_BD0_A2_LSB,$EQR_BD0_A2_MSB,$EQR_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 1' $EQR_BD1_B0_LSB,$EQR_BD1_B0_MSB,$EQR_BD1_B1_LSB,$EQR_BD1_B1_MSB,$EQR_BD1_B2_LSB,$EQR_BD1_B2_MSB,$EQR_BD1_A1_LSB,$EQR_BD1_A1_MSB,$EQR_BD1_A2_LSB,$EQR_BD1_A2_MSB,$EQR_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 2' $EQR_BD2_B0_LSB,$EQR_BD2_B0_MSB,$EQR_BD2_B1_LSB,$EQR_BD2_B1_MSB,$EQR_BD2_B2_LSB,$EQR_BD2_B2_MSB,$EQR_BD2_A1_LSB,$EQR_BD2_A1_MSB,$EQR_BD2_A2_LSB,$EQR_BD2_A2_MSB,$EQR_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 3' $EQR_BD3_B0_LSB,$EQR_BD3_B0_MSB,$EQR_BD3_B1_LSB,$EQR_BD3_B1_MSB,$EQR_BD3_B2_LSB,$EQR_BD3_B2_MSB,$EQR_BD3_A1_LSB,$EQR_BD3_A1_MSB,$EQR_BD3_A2_LSB,$EQR_BD3_A2_MSB,$EQR_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 4' $EQR_BD4_B0_LSB,$EQR_BD4_B0_MSB,$EQR_BD4_B1_LSB,$EQR_BD4_B1_MSB,$EQR_BD4_B2_LSB,$EQR_BD4_B2_MSB,$EQR_BD4_A1_LSB,$EQR_BD4_A1_MSB,$EQR_BD4_A2_LSB,$EQR_BD4_A2_MSB,$EQR_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 5' $EQR_BD5_B0_LSB,$EQR_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 48K R Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB
elif [ $SAMPLE_RATE -eq 96 ] 
then
	# Include EQ 96K commands
	amixer -D hw:$CARD cset name='EQ 96K L Band 0' $EQL_BD0_B0_LSB,$EQL_BD0_B0_MSB,$EQL_BD0_B1_LSB,$EQL_BD0_B1_MSB,$EQL_BD0_B2_LSB,$EQL_BD0_B2_MSB,$EQL_BD0_A1_LSB,$EQL_BD0_A1_MSB,$EQL_BD0_A2_LSB,$EQL_BD0_A2_MSB,$EQL_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 1' $EQL_BD1_B0_LSB,$EQL_BD1_B0_MSB,$EQL_BD1_B1_LSB,$EQL_BD1_B1_MSB,$EQL_BD1_B2_LSB,$EQL_BD1_B2_MSB,$EQL_BD1_A1_LSB,$EQL_BD1_A1_MSB,$EQL_BD1_A2_LSB,$EQL_BD1_A2_MSB,$EQL_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 2' $EQL_BD2_B0_LSB,$EQL_BD2_B0_MSB,$EQL_BD2_B1_LSB,$EQL_BD2_B1_MSB,$EQL_BD2_B2_LSB,$EQL_BD2_B2_MSB,$EQL_BD2_A1_LSB,$EQL_BD2_A1_MSB,$EQL_BD2_A2_LSB,$EQL_BD2_A2_MSB,$EQL_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 3' $EQL_BD3_B0_LSB,$EQL_BD3_B0_MSB,$EQL_BD3_B1_LSB,$EQL_BD3_B1_MSB,$EQL_BD3_B2_LSB,$EQL_BD3_B2_MSB,$EQL_BD3_A1_LSB,$EQL_BD3_A1_MSB,$EQL_BD3_A2_LSB,$EQL_BD3_A2_MSB,$EQL_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 4' $EQL_BD4_B0_LSB,$EQL_BD4_B0_MSB,$EQL_BD4_B1_LSB,$EQL_BD4_B1_MSB,$EQL_BD4_B2_LSB,$EQL_BD4_B2_MSB,$EQL_BD4_A1_LSB,$EQL_BD4_A1_MSB,$EQL_BD4_A2_LSB,$EQL_BD4_A2_MSB,$EQL_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 5' $EQL_BD5_B0_LSB,$EQL_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K L Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB

	amixer -D hw:$CARD cset name='EQ 96K R Band 0' $EQR_BD0_B0_LSB,$EQR_BD0_B0_MSB,$EQR_BD0_B1_LSB,$EQR_BD0_B1_MSB,$EQR_BD0_B2_LSB,$EQR_BD0_B2_MSB,$EQR_BD0_A1_LSB,$EQR_BD0_A1_MSB,$EQR_BD0_A2_LSB,$EQR_BD0_A2_MSB,$EQR_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 1' $EQR_BD1_B0_LSB,$EQR_BD1_B0_MSB,$EQR_BD1_B1_LSB,$EQR_BD1_B1_MSB,$EQR_BD1_B2_LSB,$EQR_BD1_B2_MSB,$EQR_BD1_A1_LSB,$EQR_BD1_A1_MSB,$EQR_BD1_A2_LSB,$EQR_BD1_A2_MSB,$EQR_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 2' $EQR_BD2_B0_LSB,$EQR_BD2_B0_MSB,$EQR_BD2_B1_LSB,$EQR_BD2_B1_MSB,$EQR_BD2_B2_LSB,$EQR_BD2_B2_MSB,$EQR_BD2_A1_LSB,$EQR_BD2_A1_MSB,$EQR_BD2_A2_LSB,$EQR_BD2_A2_MSB,$EQR_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 3' $EQR_BD3_B0_LSB,$EQR_BD3_B0_MSB,$EQR_BD3_B1_LSB,$EQR_BD3_B1_MSB,$EQR_BD3_B2_LSB,$EQR_BD3_B2_MSB,$EQR_BD3_A1_LSB,$EQR_BD3_A1_MSB,$EQR_BD3_A2_LSB,$EQR_BD3_A2_MSB,$EQR_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 4' $EQR_BD4_B0_LSB,$EQR_BD4_B0_MSB,$EQR_BD4_B1_LSB,$EQR_BD4_B1_MSB,$EQR_BD4_B2_LSB,$EQR_BD4_B2_MSB,$EQR_BD4_A1_LSB,$EQR_BD4_A1_MSB,$EQR_BD4_A2_LSB,$EQR_BD4_A2_MSB,$EQR_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 5' $EQR_BD5_B0_LSB,$EQR_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 96K R Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB
else 
	# Include EQ 192K commands
	amixer -D hw:$CARD cset name='EQ 192K L Band 0' $EQL_BD0_B0_LSB,$EQL_BD0_B0_MSB,$EQL_BD0_B1_LSB,$EQL_BD0_B1_MSB,$EQL_BD0_B2_LSB,$EQL_BD0_B2_MSB,$EQL_BD0_A1_LSB,$EQL_BD0_A1_MSB,$EQL_BD0_A2_LSB,$EQL_BD0_A2_MSB,$EQL_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 1' $EQL_BD1_B0_LSB,$EQL_BD1_B0_MSB,$EQL_BD1_B1_LSB,$EQL_BD1_B1_MSB,$EQL_BD1_B2_LSB,$EQL_BD1_B2_MSB,$EQL_BD1_A1_LSB,$EQL_BD1_A1_MSB,$EQL_BD1_A2_LSB,$EQL_BD1_A2_MSB,$EQL_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 2' $EQL_BD2_B0_LSB,$EQL_BD2_B0_MSB,$EQL_BD2_B1_LSB,$EQL_BD2_B1_MSB,$EQL_BD2_B2_LSB,$EQL_BD2_B2_MSB,$EQL_BD2_A1_LSB,$EQL_BD2_A1_MSB,$EQL_BD2_A2_LSB,$EQL_BD2_A2_MSB,$EQL_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 3' $EQL_BD3_B0_LSB,$EQL_BD3_B0_MSB,$EQL_BD3_B1_LSB,$EQL_BD3_B1_MSB,$EQL_BD3_B2_LSB,$EQL_BD3_B2_MSB,$EQL_BD3_A1_LSB,$EQL_BD3_A1_MSB,$EQL_BD3_A2_LSB,$EQL_BD3_A2_MSB,$EQL_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 4' $EQL_BD4_B0_LSB,$EQL_BD4_B0_MSB,$EQL_BD4_B1_LSB,$EQL_BD4_B1_MSB,$EQL_BD4_B2_LSB,$EQL_BD4_B2_MSB,$EQL_BD4_A1_LSB,$EQL_BD4_A1_MSB,$EQL_BD4_A2_LSB,$EQL_BD4_A2_MSB,$EQL_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 5' $EQL_BD5_B0_LSB,$EQL_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K L Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB

	amixer -D hw:$CARD cset name='EQ 192K R Band 0' $EQR_BD0_B0_LSB,$EQR_BD0_B0_MSB,$EQR_BD0_B1_LSB,$EQR_BD0_B1_MSB,$EQR_BD0_B2_LSB,$EQR_BD0_B2_MSB,$EQR_BD0_A1_LSB,$EQR_BD0_A1_MSB,$EQR_BD0_A2_LSB,$EQR_BD0_A2_MSB,$EQR_BD0_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 1' $EQR_BD1_B0_LSB,$EQR_BD1_B0_MSB,$EQR_BD1_B1_LSB,$EQR_BD1_B1_MSB,$EQR_BD1_B2_LSB,$EQR_BD1_B2_MSB,$EQR_BD1_A1_LSB,$EQR_BD1_A1_MSB,$EQR_BD1_A2_LSB,$EQR_BD1_A2_MSB,$EQR_BD1_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 2' $EQR_BD2_B0_LSB,$EQR_BD2_B0_MSB,$EQR_BD2_B1_LSB,$EQR_BD2_B1_MSB,$EQR_BD2_B2_LSB,$EQR_BD2_B2_MSB,$EQR_BD2_A1_LSB,$EQR_BD2_A1_MSB,$EQR_BD2_A2_LSB,$EQR_BD2_A2_MSB,$EQR_BD2_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 3' $EQR_BD3_B0_LSB,$EQR_BD3_B0_MSB,$EQR_BD3_B1_LSB,$EQR_BD3_B1_MSB,$EQR_BD3_B2_LSB,$EQR_BD3_B2_MSB,$EQR_BD3_A1_LSB,$EQR_BD3_A1_MSB,$EQR_BD3_A2_LSB,$EQR_BD3_A2_MSB,$EQR_BD3_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 4' $EQR_BD4_B0_LSB,$EQR_BD4_B0_MSB,$EQR_BD4_B1_LSB,$EQR_BD4_B1_MSB,$EQR_BD4_B2_LSB,$EQR_BD4_B2_MSB,$EQR_BD4_A1_LSB,$EQR_BD4_A1_MSB,$EQR_BD4_A2_LSB,$EQR_BD4_A2_MSB,$EQR_BD4_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 5' $EQR_BD5_B0_LSB,$EQR_BD5_B0_MSB,$EQL_BD5_B1_LSB,$EQL_BD5_B1_MSB,$EQL_BD5_B2_LSB,$EQL_BD5_B2_MSB,$EQL_BD5_A1_LSB,$EQL_BD5_A1_MSB,$EQL_BD5_A2_LSB,$EQL_BD5_A2_MSB,$EQL_BD5_G_MSB
	amixer -D hw:$CARD cset name='EQ 192K R Band 6' $EQL_BD6_B0_LSB,$EQL_BD6_B0_MSB,$EQL_BD6_B1_LSB,$EQL_BD6_B1_MSB,$EQL_BD6_B2_LSB,$EQL_BD6_B2_MSB,$EQL_BD6_A1_LSB,$EQL_BD6_A1_MSB,$EQL_BD6_A2_LSB,$EQL_BD6_A2_MSB,$EQL_BD6_G_MSB
fi

# EQ enable
EQ_ENABLE_L=0
EQ_ENABLE_R=0
amixer -D hw:$CARD cset name='EQ Switch' $EQ_ENABLE_L,$EQ_ENABLE_R

# DRC Parameters
HP_ATTACK_RATE=3
HP_GAIN_SHIFT=2
HP_FAST_RELEASE_DELAY=6
HP_FAST_RELEASE_RATE=5
HP_HIGH_INPUT_THRESH=0
HP_HIGH_OUTPUT_THRESH=0
HP_LOW_INPUT_THRESH=34
HP_LOW_OUTPUT_THRESH=16
HP_RELEASE_THRESH=0
HP_RELEASE_DELAY=11
HP_RELEASE_RATE=10
HP_EXP_SLOPE=1
HP_MID_SLOPE=0
HP_HIGH_SLOPE=6

MP_ATTACK_RATE=3
MP_GAIN_SHIFT=2
MP_FAST_RELEASE_DELAY=6
MP_FAST_RELEASE_RATE=5
MP_HIGH_INPUT_THRESH=0
MP_HIGH_OUTPUT_THRESH=0
MP_LOW_INPUT_THRESH=34
MP_LOW_OUTPUT_THRESH=16
MP_RELEASE_THRESH=0
MP_RELEASE_DELAY=11
MP_RELEASE_RATE=10
MP_EXP_SLOPE=1
MP_MID_SLOPE=0
MP_HIGH_SLOPE=6

LP_ATTACK_RATE=3
LP_GAIN_SHIFT=2
LP_FAST_RELEASE_DELAY=6
LP_FAST_RELEASE_RATE=5
LP_HIGH_INPUT_THRESH=0
LP_HIGH_OUTPUT_THRESH=0
LP_LOW_INPUT_THRESH=34
LP_LOW_OUTPUT_THRESH=16
LP_RELEASE_THRESH=0
LP_RELEASE_DELAY=11
LP_RELEASE_RATE=10
LP_EXP_SLOPE=1
LP_MID_SLOPE=0
LP_HIGH_SLOPE=6

PD_ATTACK_RATE=3
PD_GAIN_SHIFT=2
PD_FAST_RELEASE_DELAY=6
PD_FAST_RELEASE_RATE=5
PD_HIGH_INPUT_THRESH=0
PD_HIGH_OUTPUT_THRESH=0
PD_LOW_INPUT_THRESH=34
PD_LOW_OUTPUT_THRESH=16
PD_RELEASE_THRESH=0
PD_RELEASE_DELAY=11
PD_RELEASE_RATE=10
PD_EXP_SLOPE=1
PD_MID_SLOPE=0
PD_HIGH_SLOPE=6

amixer -D hw:$CARD cset name='TBDRC HP Attack Rate' $HP_ATTACK_RATE
amixer -D hw:$CARD cset name='TBDRC HP Gain Shift' $HP_GAIN_SHIFT
amixer -D hw:$CARD cset name='TBDRC HP Fast Release Delay' $HP_FAST_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC HP Fast Release Update Rate' $HP_FAST_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC HP High Input Threshold' $HP_HIGH_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC HP High Output Threshold' $HP_HIGH_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC HP Low Input Threshold' $HP_LOW_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC HP Low Output Threshold' $HP_LOW_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC HP Release Rate Input Threshold' $HP_RELEASE_THRESH
amixer -D hw:$CARD cset name='TBDRC HP Release Delay' $HP_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC HP Release Update Rate' $HP_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC HP Expansion Slope' $HP_EXP_SLOPE
amixer -D hw:$CARD cset name='TBDRC HP Middle Compression Slope' $HP_MID_SLOPE
amixer -D hw:$CARD cset name='TBDRC HP High Compression Slope' $HP_HIGH_SLOPE

amixer -D hw:$CARD cset name='TBDRC MP Attack Rate' $MP_ATTACK_RATE
amixer -D hw:$CARD cset name='TBDRC MP Gain Shift' $MP_GAIN_SHIFT
amixer -D hw:$CARD cset name='TBDRC MP Fast Release Delay' $MP_FAST_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC MP Fast Release Update Rate' $MP_FAST_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC MP High Input Threshold' $MP_HIGH_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC MP High Output Threshold' $MP_HIGH_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC MP Low Input Threshold' $MP_LOW_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC MP Low Output Threshold' $MP_LOW_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC MP Release Rate Input Threshold' $MP_RELEASE_THRESH
amixer -D hw:$CARD cset name='TBDRC MP Release Delay' $MP_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC MP Release Update Rate' $MP_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC MP Expansion Slope' $MP_EXP_SLOPE
amixer -D hw:$CARD cset name='TBDRC MP Middle Compression Slope' $MP_MID_SLOPE
amixer -D hw:$CARD cset name='TBDRC MP High Compression Slope' $MP_HIGH_SLOPE

amixer -D hw:$CARD cset name='TBDRC LP Attack Rate' $LP_ATTACK_RATE
amixer -D hw:$CARD cset name='TBDRC LP Gain Shift' $LP_GAIN_SHIFT
amixer -D hw:$CARD cset name='TBDRC LP Fast Release Delay' $LP_FAST_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC LP Fast Release Update Rate' $LP_FAST_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC LP High Input Threshold' $LP_HIGH_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC LP High Output Threshold' $LP_HIGH_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC LP Low Input Threshold' $LP_LOW_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC LP Low Output Threshold' $LP_LOW_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC LP Release Rate Input Threshold' $LP_RELEASE_THRESH
amixer -D hw:$CARD cset name='TBDRC LP Release Delay' $LP_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC LP Release Update Rate' $LP_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC LP Expansion Slope' $LP_EXP_SLOPE
amixer -D hw:$CARD cset name='TBDRC LP Middle Compression Slope' $LP_MID_SLOPE
amixer -D hw:$CARD cset name='TBDRC LP High Compression Slope' $LP_HIGH_SLOPE

amixer -D hw:$CARD cset name='TBDRC PD Attack Rate' $PD_ATTACK_RATE
amixer -D hw:$CARD cset name='TBDRC PD Gain Shift' $PD_GAIN_SHIFT
amixer -D hw:$CARD cset name='TBDRC PD Fast Release Delay' $PD_FAST_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC PD Fast Release Update Rate' $PD_FAST_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC PD High Input Threshold' $PD_HIGH_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC PD High Output Threshold' $PD_HIGH_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC PD Low Input Threshold' $PD_LOW_INPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC PD Low Output Threshold' $PD_LOW_OUTPUT_THRESH
amixer -D hw:$CARD cset name='TBDRC PD Release Rate Input Threshold' $PD_RELEASE_THRESH
amixer -D hw:$CARD cset name='TBDRC PD Release Delay' $PD_RELEASE_DELAY
amixer -D hw:$CARD cset name='TBDRC PD Release Update Rate' $PD_RELEASE_RATE
amixer -D hw:$CARD cset name='TBDRC PD Expansion Slope' $PD_EXP_SLOPE
amixer -D hw:$CARD cset name='TBDRC PD Middle Compression Slope' $PD_MID_SLOPE
amixer -D hw:$CARD cset name='TBDRC PD High Compression Slope' $PD_HIGH_SLOPE

# DRC enable 
DRC_ENABLE=0
amixer -D hw:$CARD cset name='TBDRC Switch' $DRC_ENABLE

LP1_B0_LOW_L=237
LP1_B0_MID_L=23
LP1_B0_HI_L=0
LP1_B1_LOW_L=218
LP1_B1_MID_L=47
LP1_B1_HI_L=0
LP1_B2_LOW_L=237
LP1_B2_MID_L=23
LP1_B2_HI_L=0
LP1_A1_LOW_L=20
LP1_A1_MID_L=26
LP1_A1_HI_L=135
LP1_A2_LOW_L=160
LP1_A2_MID_L=69
LP1_A2_HI_L=57

LP1_B0_LOW_R=237
LP1_B0_MID_R=23
LP1_B0_HI_R=0
LP1_B1_LOW_R=218
LP1_B1_MID_R=47
LP1_B1_HI_R=0
LP1_B2_LOW_R=237
LP1_B2_MID_R=23
LP1_B2_HI_R=0
LP1_A1_LOW_R=20
LP1_A1_MID_R=26
LP1_A1_HI_R=135
LP1_A2_LOW_R=160
LP1_A2_MID_R=69
LP1_A2_HI_R=57

HP1_B0_LOW_L=226
HP1_B0_MID_L=138
HP1_B0_HI_L=60
HP1_B1_LOW_L=59
HP1_B1_MID_L=234
HP1_B1_HI_L=134
HP1_B2_LOW_L=227
HP1_B2_MID_L=138
HP1_B2_HI_L=60
HP1_A1_LOW_L=21
HP1_A1_MID_L=26
HP1_A1_HI_L=135
HP1_A2_LOW_L=159
HP1_A2_MID_L=69
HP1_A2_HI_L=57

HP1_B0_LOW_R=226
HP1_B0_MID_R=138
HP1_B0_HI_R=60
HP1_B1_LOW_R=59
HP1_B1_MID_R=234
HP1_B1_HI_R=134
HP1_B2_LOW_R=227
HP1_B2_MID_R=138
HP1_B2_HI_R=60
HP1_A1_LOW_R=21
HP1_A1_MID_R=26
HP1_A1_HI_R=135
HP1_A2_LOW_R=159
HP1_A2_MID_R=69
HP1_A2_HI_R=57

LP2_B0_LOW_L=199
LP2_B0_MID_L=234
LP2_B0_HI_L=1
LP2_B1_LOW_L=141
LP2_B1_MID_L=213
LP2_B1_HI_L=3
LP2_B2_LOW_L=199
LP2_B2_MID_L=234
LP2_B2_HI_L=1
LP2_A1_LOW_L=173
LP2_A1_MID_L=237
LP2_A1_HI_L=162
LP2_A2_LOW_L=110
LP2_A2_MID_L=189
LP2_A2_HI_L=36

LP2_B0_LOW_R=199
LP2_B0_MID_R=234
LP2_B0_HI_R=1
LP2_B1_LOW_R=141
LP2_B1_MID_R=213
LP2_B1_HI_R=3
LP2_B2_LOW_R=199
LP2_B2_MID_R=234
LP2_B2_HI_R=1
LP2_A1_LOW_R=173
LP2_A1_MID_R=237
LP2_A1_HI_R=162
LP2_A2_LOW_R=110
LP2_A2_MID_R=189
LP2_A2_HI_R=36

HP2_B0_LOW_L=241
HP2_B0_MID_L=115
HP2_B0_HI_L=48
HP2_B1_LOW_L=31
HP2_B1_MID_L=24
HP2_B1_HI_L=159
HP2_B2_LOW_L=240
HP2_B2_MID_L=115
HP2_B2_HI_L=48
HP2_A1_LOW_L=172
HP2_A1_MID_L=237
HP2_A1_HI_L=162
HP2_A2_LOW_L=111
HP2_A2_MID_L=189
HP2_A2_HI_L=36

HP2_B0_LOW_R=241
HP2_B0_MID_R=115
HP2_B0_HI_R=48
HP2_B1_LOW_R=31
HP2_B1_MID_R=24
HP2_B1_HI_R=159
HP2_B2_LOW_R=240
HP2_B2_MID_R=115
HP2_B2_HI_R=48
HP2_A1_LOW_R=172
HP2_A1_MID_R=237
HP2_A1_HI_R=162
HP2_A2_LOW_R=111
HP2_A2_MID_R=189
HP2_A2_HI_R=36

AP_B0_LOW_L=160
AP_B0_MID_L=69
AP_B0_HI_L=57
AP_B1_LOW_L=20
AP_B1_MID_L=26
AP_B1_HI_L=135
AP_B2_LOW_L=0
AP_B2_MID_L=0
AP_B2_HI_L=64
AP_A1_LOW_L=20
AP_A1_MID_L=26
AP_A1_HI_L=135
AP_A2_LOW_L=160
AP_A2_MID_L=69
AP_A2_HI_L=57

AP_B0_LOW_R=160
AP_B0_MID_R=69
AP_B0_HI_R=57
AP_B1_LOW_R=20
AP_B1_MID_R=26
AP_B1_HI_R=135
AP_B2_LOW_R=0
AP_B2_MID_R=0
AP_B2_HI_R=64
AP_A1_LOW_R=20
AP_A1_MID_R=26
AP_A1_HI_R=135
AP_A2_LOW_R=160
AP_A2_MID_R=69
AP_A2_HI_R=57

# DRC Coefficients
# LP1
amixer -D hw:$CARD cset name='TBDRCL COEF LP1' $LP1_B0_LOW_L,$LP1_B0_MID_L,$LP1_B0_HI_L,$LP1_B1_LOW_L,$LP1_B1_MID_L,$LP1_B1_HI_L,$LP1_B2_LOW_L,$LP1_B2_MID_L,$LP1_B2_HI_L,$LP1_A1_LOW_L,$LP1_A1_MID_L,$LP1_A1_HI_L,$LP1_A2_LOW_L,$LP1_A2_MID_L,$LP1_A2_HI_L 
amixer -D hw:$CARD cset name='TBDRCR COEF LP1' $LP1_B0_LOW_R,$LP1_B0_MID_R,$LP1_B0_HI_R,$LP1_B1_LOW_R,$LP1_B1_MID_R,$LP1_B1_HI_R,$LP1_B2_LOW_R,$LP1_B2_MID_R,$LP1_B2_HI_R,$LP1_A1_LOW_R,$LP1_A1_MID_R,$LP1_A1_HI_R,$LP1_A2_LOW_R,$LP1_A2_MID_R,$LP1_A2_HI_R 
# HP1
amixer -D hw:$CARD cset name='TBDRCL COEF HP1' $HP1_B0_LOW_L,$HP1_B0_MID_L,$HP1_B0_HI_L,$HP1_B1_LOW_L,$HP1_B1_MID_L,$HP1_B1_HI_L,$HP1_B2_LOW_L,$HP1_B2_MID_L,$HP1_B2_HI_L,$HP1_A1_LOW_L,$HP1_A1_MID_L,$HP1_A1_HI_L,$HP1_A2_LOW_L,$HP1_A2_MID_L,$HP1_A2_HI_L 
amixer -D hw:$CARD cset name='TBDRCR COEF HP1' $HP1_B0_LOW_R,$HP1_B0_MID_R,$HP1_B0_HI_R,$HP1_B1_LOW_R,$HP1_B1_MID_R,$HP1_B1_HI_R,$HP1_B2_LOW_R,$HP1_B2_MID_R,$HP1_B2_HI_R,$HP1_A1_LOW_R,$HP1_A1_MID_R,$HP1_A1_HI_R,$HP1_A2_LOW_R,$HP1_A2_MID_R,$HP1_A2_HI_R 

# LP2
amixer -D hw:$CARD cset name='TBDRCL COEF LP2' $LP2_B0_LOW_L,$LP2_B0_MID_L,$LP2_B0_HI_L,$LP2_B1_LOW_L,$LP2_B1_MID_L,$LP2_B1_HI_L,$LP2_B2_LOW_L,$LP2_B2_MID_L,$LP2_B2_HI_L,$LP2_A1_LOW_L,$LP2_A1_MID_L,$LP2_A1_HI_L,$LP2_A2_LOW_L,$LP2_A2_MID_L,$LP2_A2_HI_L
amixer -D hw:$CARD cset name='TBDRCR COEF LP2' $LP2_B0_LOW_R,$LP2_B0_MID_R,$LP2_B0_HI_R,$LP2_B1_LOW_R,$LP2_B1_MID_R,$LP2_B1_HI_R,$LP2_B2_LOW_R,$LP2_B2_MID_R,$LP2_B2_HI_R,$LP2_A1_LOW_R,$LP2_A1_MID_R,$LP2_A1_HI_R,$LP2_A2_LOW_R,$LP2_A2_MID_R,$LP2_A2_HI_R

# HP2
amixer -D hw:$CARD cset name='TBDRCL COEF HP2' $HP2_B0_LOW_L,$HP2_B0_MID_L,$HP2_B0_HI_L,$HP2_B1_LOW_L,$HP2_B1_MID_L,$HP2_B1_HI_L,$HP2_B2_LOW_L,$HP2_B2_MID_L,$HP2_B2_HI_L,$HP2_A1_LOW_L,$HP2_A1_MID_L,$HP2_A1_HI_L,$HP2_A2_LOW_L,$HP2_A2_MID_L,$HP2_A2_HI_L 
amixer -D hw:$CARD cset name='TBDRCR COEF HP2' $HP2_B0_LOW_R,$HP2_B0_MID_R,$HP2_B0_HI_R,$HP2_B1_LOW_R,$HP2_B1_MID_R,$HP2_B1_HI_R,$HP2_B2_LOW_R,$HP2_B2_MID_R,$HP2_B2_HI_R,$HP2_A1_LOW_R,$HP2_A1_MID_R,$HP2_A1_HI_R,$HP2_A2_LOW_R,$HP2_A2_MID_R,$HP2_A2_HI_R 

# AP
amixer -D hw:$CARD cset name='TBDRCL COEF AP' $AP_B0_LOW_L,$AP_B0_MID_L,$AP_B0_HI_L,$AP_B1_LOW_L,$AP_B1_MID_L,$AP_B1_HI_L,$AP_B2_LOW_L,$AP_B2_MID_L,$AP_B2_HI_L,$AP_A1_LOW_L,$AP_A1_MID_L,$AP_A1_HI_L,$AP_A2_LOW_L,$AP_A2_MID_L,$AP_A2_HI_L 
amixer -D hw:$CARD cset name='TBDRCR COEF AP' $AP_B0_LOW_L,$AP_B0_MID_L,$AP_B0_HI_L,$AP_B1_LOW_L,$AP_B1_MID_L,$AP_B1_HI_L,$AP_B2_LOW_L,$AP_B2_MID_L,$AP_B2_HI_L,$AP_A1_LOW_L,$AP_A1_MID_L,$AP_A1_HI_L,$AP_A2_LOW_L,$AP_A2_MID_L,$AP_A2_HI_L 

# Pre/Post DRC volume config
VOL_CONFIG=0
amixer -D hw:$CARD cset name='TBDRC Volume Config' $VOL_CONFIG

BAND_MODE=2
# TBDRC band mode
amixer -D hw:$CARD cset name='TBDRC Band Mode Select' $BAND_MODE

POST_DRC_ENABLE=1
# Post-DRC enable
amixer -D hw:$CARD cset name='TBDRC Post-DRC Enable' $POST_DRC_ENABLE

PLAYBACK_VOL_L=148
PLAYBACK_VOL_R=148
# Volume Gain Control
amixer -D hw:$CARD cset name='Playback Volume' $PLAYBACK_VOL_L $PLAYBACK_VOL_R

## Save setting
sudo alsactl store  










