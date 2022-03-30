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

.SUBCKT 9_single_balanced_active_mixer Vbiasn1 Vbiasn2 Voutn Voutp Vrf vlon vlop
*.PININFO Vbiasn1:I Vbiasn2:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
RR6 net016 Vbiasn2 res=1K
RR4 net19 Vbiasn1 res=1K
RR5 net014 Vbiasn2 res=1K
RR2 Voutp vdd! res=1K
RR0 Voutn vdd! res=1K
MM2 net13 net19 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net014 net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net016 net13 gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlon net016 1p
CC2 vlop net014 1p
CC1 Vrf net19 1p
.ENDS

