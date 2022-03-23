************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 13_single_balanced_current_source
* View Name:     schematic
* Netlisted on:  Apr  4 10:06:55 2019
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
* Cell Name:    13_single_balanced_current_source
* View Name:    schematic
************************************************************************

.SUBCKT 13_single_balanced_current_source Vbiasn1 Vbiasn2 Vbiasp Voutn Voutp
+ Vrf vlon vlop
*.PININFO Vbiasn1:I Vbiasn2:I Vbiasp:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM0 Voutn net018 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net016 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net24 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlon net018 1p
CC2 vlop net016 1p
CC1 Vrf net24 1p
RR5 net016 Vbiasn2 1K $[RP]
RR6 net018 Vbiasn2 1K $[RP]
RR2 Voutp vdd! 1K $[RP]
RR0 Voutn vdd! 1K $[RP]
RR4 net24 Vbiasn1 1K $[RP]
MM3 net21 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

