************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 12_CS_inductive_degenerate_with_pads
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:51 2019
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
* Library Name: RF_LNA
* Cell Name:    12_CS_inductive_degenerate_with_pads
* View Name:    schematic
************************************************************************

.SUBCKT 12_CS_inductive_degenerate_with_pads Vbiasn Vout Vpad
*.PININFO Vbiasn:I Vpad:I Vout:O
LL0 vdd! Vout 1n $[LP]
LL1 net18 gnd! 1n $[LP]
MM0 Vout vdd! net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net17 Vpad net18 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 Vbiasn gnd! 1p $[CP]
CC0 vdd! Vout 1p $[CP]
RR0 Vout vdd! 1K $[RP]
RR1 Vbiasn Vpad 1K $[RP]
.ENDS

