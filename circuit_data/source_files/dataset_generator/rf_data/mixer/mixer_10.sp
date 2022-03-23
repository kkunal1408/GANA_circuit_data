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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    10_two_single_balanced_active_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 10_two_single_balanced_active_mixer Vbiasn1 Vbiasn2 Voutn Voutp Vrfn
+ Vrfp vlon vlop
*.PININFO Vbiasn1:I Vbiasn2:I Vrfn:I Vrfp:I vlon:I vlop:I Voutn:O Voutp:O
MM5 net29 net33 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 Voutn net023 net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 Voutp net011 net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net020 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net011 net24 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net24 net32 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC0 Vrfp net33 1p
CC2 vlop net020 1p
CC3 vlop net023 1p
CC1 Vrfn net32 1p
CC4 vlon net011 1p
RR10 net011 Vbiasn2 1K $[RP]
RR9 net011 Vbiasn2 1K $[RP]
RR5 net33 Vbiasn1 1K $[RP]
RR7 net023 Vbiasn2 1K $[RP]
RR6 net020 Vbiasn2 1K $[RP]
RR2 Voutp vdd! 1K $[RP]
RR0 Voutn vdd! 1K $[RP]
RR4 net32 Vbiasn1 1K $[RP]
.ENDS

