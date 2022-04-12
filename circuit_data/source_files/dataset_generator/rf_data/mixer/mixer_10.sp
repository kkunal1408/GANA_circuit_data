************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 10_two_single_balanced_active_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:05:51 2019
************************************************************************

*.BIPOLAR
*.RESI = 2000
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL vdd!
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    10_two_single_balanced_active_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 10_two_single_balanced_active_mixer vbiasn1 vbiasn2 votan votap vrfn vrfp vlon vlop
*.PININFO vbiasn1:I vbiasn2:I vrfn:I vrfp:I vlon:I vlop:I votan:O votap:O
MM5 net29 net33 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 votan net023 net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 votap net011 net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net020 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 votan net011 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net24 net32 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC0 vrfp net33 1p
CC2 vlop net020 1p
CC3 vlop net023 1p
CC1 vrfn net32 1p
CC4 vlon net011 1p
RR10 net011 vbiasn2 res=1K
RR9 net011 vbiasn2 res=1K
RR5 net33 vbiasn1 res=1K
RR7 net023 vbiasn2 res=1K
RR6 net020 vbiasn2 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
RR4 net32 vbiasn1 res=1K
.ENDS

