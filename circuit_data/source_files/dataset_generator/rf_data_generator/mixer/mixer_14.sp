************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 14_single_helper_current_source_mixer_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:07:17 2019
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
* Cell Name:    14_single_helper_current_source_mixer_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 14_single_helper_current_source_mixer_mixer vbiasn1 vbiasn2 vbiasp votan votap vrf vlon vlop
*.PININFO vbiasn1:I vbiasn2:I vbiasp:I vrf:I vlon:I vlop:I votan:O votap:O
MM0 votan net020 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net017 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net25 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlon net020 1p
CC0 net24 gnd! 1p
CC2 vlop net017 1p
CC1 vrf net25 1p
RR5 net017 vbiasn2 res=1K
RR6 net020 vbiasn2 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
RR4 net25 vbiasn1 res=1K
MM3 net24 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
LL0 net21 net24 ind=1n
.ENDS

