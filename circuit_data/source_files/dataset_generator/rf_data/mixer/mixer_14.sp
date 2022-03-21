************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_mixer
* Top Cell Name: 14_single_helper_current_source
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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    14_single_helper_current_source
* View Name:    schematic
************************************************************************

.SUBCKT 14_single_helper_current_source Vbiasn1 Vbiasn2 Vbiasp Voutn Voutp Vrf 
+ vlon vlop
*.PININFO Vbiasn1:I Vbiasn2:I Vbiasp:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM0 Voutn net020 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net017 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net25 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlon net020 1p $[CP]
CC0 net24 gnd! 1p $[CP]
CC2 vlop net017 1p $[CP]
CC1 Vrf net25 1p $[CP]
RR5 net017 Vbiasn2 1K $[RP]
RR6 net020 Vbiasn2 1K $[RP]
RR2 Voutp vdd! 1K $[RP]
RR0 Voutn vdd! 1K $[RP]
RR4 net25 Vbiasn1 1K $[RP]
MM3 net24 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
LL0 net21 net24 1n $[LP]
.ENDS

