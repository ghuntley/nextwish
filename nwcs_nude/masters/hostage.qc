$modelname "C:\Projects\NWcs_Nude\Masters\hostage.mdl"
$cd "\Projects\NWcs_Nude\Masters\"
$cdtexture "\Projects\NWcs_Nude\Masters\"
$cliptotextures

$scale 1.0

// 3 attachments
$attachment 0 "Bip01 R Hand" 20.000000 2.000000 5.000000 
$attachment 1 "Bip01 R Hand" 15.000000 1.500000 3.750000 
$attachment 2 "Bip01 R Hand" 30.000000 3.000000 7.500000 

// 0 bone controllers

// 20 hit boxes
$hbox 3 "Bip01 Pelvis" -4.690000 -4.440000 -6.750000  4.000000 5.560000 6.750000
$hbox 6 "Bip01 L Leg" 2.660000 -3.690000 -3.090000  18.160000 4.880000 3.310000
$hbox 6 "Bip01 L Leg1" 0.380000 -3.970000 -2.840000  17.600000 4.000000 2.940000
$hbox 6 "Bip01 L Foot" -0.590000 -2.340000 -2.630000  3.790000 8.000000 2.190000
$hbox 7 "Bip01 R Leg" 2.470000 -3.690000 -3.160000  18.129999 4.880000 3.380000
$hbox 7 "Bip01 R Leg1" 0.310000 -3.970000 -2.840000  17.600000 3.940000 2.970000
$hbox 7 "Bip01 R Foot" -0.560000 -2.340000 -2.190000  3.810000 8.000000 2.660000
$hbox 3 "Bip01 Spine1" -3.250000 -5.500000 -5.500000  4.830000 5.500000 5.500000
$hbox 2 "Bip01 Spine2" -0.060000 -5.530000 -7.590000  8.000000 7.000000 7.590000
$hbox 2 "Bip01 Spine3" -2.250000 -6.810000 -6.310000  6.500000 5.090000 6.310000
$hbox 2 "Bip01 Neck" -3.110000 -1.500000 -3.000000  2.050000 3.500000 3.000000
$hbox 1 "Bip01 Head" 0.090000 -3.660000 -3.000000  8.410000 5.090000 3.000000
$hbox 4 "Bip01 L Arm" 0.940000 -2.880000 -4.130000  5.440000 4.280000 3.500000
$hbox 4 "Bip01 L Arm1" -2.160000 -2.340000 -2.560000  11.560000 3.410000 2.380000
$hbox 4 "Bip01 L Arm2" 0.590000 -1.810000 -2.190000  10.750000 2.840000 2.410000
$hbox 4 "Bip01 L Hand" 0.000000 -1.000000 -2.000000  3.000000 1.500000 3.500000
$hbox 5 "Bip01 R Arm" 1.380000 -2.840000 -3.560000  5.690000 4.310000 4.310000
$hbox 5 "Bip01 R Arm1" -1.880000 -2.470000 -2.160000  11.810000 3.280000 2.810000
$hbox 5 "Bip01 R Arm2" 0.440000 -1.970000 -2.340000  10.590000 2.720000 2.220000
$hbox 5 "Bip01 R Hand" 0.000000 -1.000000 -2.000000  3.000000 1.500000 3.500000

$bodygroup body
{
studio "woman"
}

// 37 sequences
$sequence walk "walk" LX loop fps 30 ACT_WALK 1 
$sequence walk "walk" LX loop fps 30 ACT_WALK_SCARED 1 
$sequence run "run" LX loop fps 30 ACT_RUN 1 
$sequence run1 "run1" LX loop fps 30 ACT_RUN_SCARED 1 
$sequence run2 "run2" LX loop fps 30 ACT_RUN_SCARED 1 
$sequence 180_Left "180_Left" LX loop fps 30 ACT_TURN_LEFT 1 
$sequence 180_Right "180_Right" LX loop fps 15 ACT_TURN_RIGHT 1 
$sequence flinch "flinch" fps 30 ACT_BIG_FLINCH 1 
$sequence flinch1 "flinch1" fps 30 ACT_SMALL_FLINCH 1 
$sequence laflinch "laflinch" fps 30 ACT_FLINCH_LEFTARM 1 
$sequence raflinch "raflinch" fps 30 ACT_FLINCH_RIGHTARM 1 
$sequence llflinch "llflinch" fps 30 ACT_FLINCH_LEFTLEG 1 
$sequence rlflinch "rlflinch" fps 30 ACT_FLINCH_RIGHTLEG 1 
$sequence idle1 "idle1" loop fps 6 ACT_IDLE 50 
$sequence idle3 "idle3" loop fps 6 ACT_IDLE 1 
$sequence idle4 "idle4" loop fps 6 ACT_IDLE 2 
$sequence idle5 "idle5" loop fps 6 ACT_IDLE 1 
$sequence idle6 "idle6" loop fps 6 ACT_IDLE 1 
$sequence idle7 "idle7" loop fps 6 ACT_IDLE 10 
$sequence crouchstand "crouchstand" fps 18 ACT_STAND 1 
$sequence crouch_idle "crouch_idle" loop fps 18 ACT_CROUCHIDLE 1 
$sequence crouch_idle2 "crouch_idle2" loop fps 18 ACT_CROUCHIDLE 1 
$sequence crouch_idle3 "crouch_idle3" loop fps 18 ACT_CROUCHIDLE 1 
$sequence crouch_idle3 "crouch_idle3" loop fps 18 ACT_CROUCHIDLE 1 
$sequence panic "panic" fps 18 ACT_EXCITED 1 
$sequence fear1 "fear1" fps 18 ACT_FEAR_DISPLAY 1 
$sequence fear2 "fear2" fps 18 ACT_FEAR_DISPLAY 1 
$sequence eye_wipe "eye_wipe" fps 18 ACT_FEAR_DISPLAY 1 
$sequence pull_needle "pull_needle" fps 15 ACT_ARM 1 { event 2 25 } 
$sequence return_needle "return_needle" fps 15 ACT_DISARM 1 { event 3 11 } 
$sequence give_shot "give_shot" fps 15 ACT_MELEE_ATTACK1 1 { event 1 17 } 
$sequence diesimple "diesimple" fps 30 ACT_DIESIMPLE 1 { event 11 3 } { event 2001 8 } 
$sequence dieforward "dieforward" fps 30 ACT_DIE_HEADSHOT 1 { event 11 3 } { event 2001 26 } 
$sequence dieforward1 "dieforward1" fps 30 ACT_DIEFORWARD 1 { event 11 3 } { event 2001 11 } 
$sequence diebackward "diebackward" fps 30 ACT_DIEBACKWARD 1 { event 11 6 } { event 2001 8 } 
$sequence headshot "headshot" fps 30 ACT_DIE_HEADSHOT 20 { event 11 1 } { event 2001 18 } 
$sequence gutshot "gutshot" fps 30 ACT_DIE_GUTSHOT 1 { event 11 0 } { event 2001 16 } 
