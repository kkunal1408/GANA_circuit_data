************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 16_capacitive_degenerate_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:08:27 2019
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
* Cell Name:    16_capacitive_degenerate_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 16_capacitive_degenerate_mixer vbiasn0 vbiasn1 vbiasn2 votan votap vrf vlon vlop
*.PININFO vbiasn0:I vbiasn1:I vbiasn2:I vrf:I vlon:I vlop:I votan:O votap:O
MM0 votan net018 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net016 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM4 net22 vbiasn0 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net24 net27 net22 gnd! nmos_rvt w=27n l=20n nfin=1
CC0 net22 gnd! 1p
CC3 vlon net018 1p
CC2 vlop net016 1p
CC1 vrf net27 1p
RR5 net016 vbiasn2 res=1K
RR6 net018 vbiasn2 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
RR4 net27 vbiasn1 res=1K
.ENDS

