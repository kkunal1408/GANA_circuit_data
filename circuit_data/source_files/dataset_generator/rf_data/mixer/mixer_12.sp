************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_mixer
* Top Cell Name: 12_single_balanced_load_current_source
* View Name:     schematic
* Netlisted on:  Apr  4 10:06:33 2019
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
* Cell Name:    12_single_balanced_load_current_source
* View Name:    schematic
************************************************************************

.SUBCKT 12_single_balanced_load_current_source Vb Vbiasn1 Vbiasn2 Vbiasp Voutn 
+ Voutp Vrf vlon vlop
*.PININFO Vb:I Vbiasn1:I Vbiasn2:I Vbiasp:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM1 Voutp net017 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net019 net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net25 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC2 vlop net017 1p $[CP]
CC3 vlon net019 1p $[CP]
CC1 Vrf net25 1p $[CP]
RR2 Voutp vdd! 1K $[RP]
RR0 Voutn vdd! 1K $[RP]
RR6 net019 Vbiasn2 1K $[RP]
RR5 net017 Vbiasn2 1K $[RP]
RR4 net25 Vbiasn1 1K $[RP]
MM4 Voutp Vb vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM3 Voutn Vb vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

