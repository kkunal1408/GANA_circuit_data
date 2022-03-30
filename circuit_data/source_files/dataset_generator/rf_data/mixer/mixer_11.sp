************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 11_single_balanced_active_mixer_cap_at_output
* View Name:     schematic
* Netlisted on:  Apr  4 10:06:13 2019
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
* Cell Name:    11_single_balanced_active_mixer_cap_at_output
* View Name:    schematic
************************************************************************

.SUBCKT 11_single_balanced_active_mixer_cap_at_output Vbiasn1 Vbiasn2 Voutn Voutp Vrf vlon vlop
*.PININFO Vbiasn1:I Vbiasn2:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM1 Voutp net015 net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net017 net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net17 net20 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC2 vlop net015 1p
CC4 vlon net017 1p
CC3 Voutp gnd! 1p
CC0 Voutn gnd! 1p
CC1 Vrf net20 1p
RR6 net017 Vbiasn2 res=1K
RR2 Voutp vdd! res=1K
RR0 Voutn vdd! res=1K
RR5 net015 Vbiasn2 res=1K
RR4 net20 Vbiasn1 res=1K
.ENDS

