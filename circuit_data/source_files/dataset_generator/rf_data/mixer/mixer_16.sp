************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 16_capacitive_degenerate
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
* Cell Name:    16_capacitive_degenerate
* View Name:    schematic
************************************************************************

.SUBCKT 16_capacitive_degenerate Vbiasn0 Vbiasn1 Vbiasn2 Voutn Voutp Vrf vlon vlop
*.PININFO Vbiasn0:I Vbiasn1:I Vbiasn2:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM0 Voutn net018 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net016 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM4 net22 Vbiasn0 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net24 net27 net22 gnd! nmos_rvt w=27n l=20n nfin=1
CC0 net22 gnd! 1p
CC3 vlon net018 1p
CC2 vlop net016 1p
CC1 Vrf net27 1p
RR5 net016 Vbiasn2 res=1K
RR6 net018 Vbiasn2 res=1K
RR2 Voutp vdd! res=1K
RR0 Voutn vdd! res=1K
RR4 net27 Vbiasn1 res=1K
.ENDS

