************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 9_single_balanced_active_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:05:27 2019
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
* *+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    9_single_balanced_active_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 9_single_balanced_active_mixer vbiasn1 vbiasn2 votan votap vrf vlon vlop
*.PININFO vbiasn1:I vbiasn2:I vrf:I vlon:I vlop:I votan:O votap:O
RR6 net016 vbiasn2 res=1K
RR4 net19 vbiasn1 res=1K
RR5 net014 vbiasn2 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
MM2 net13 net19 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net014 net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 votan net016 net13 gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlon net016 1p
CC2 vlop net014 1p
CC1 vrf net19 1p
.ENDS

