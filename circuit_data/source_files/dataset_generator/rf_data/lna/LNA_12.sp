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
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    12_CS_inductive_degenerate_with_pads
* View Name:    schematic
************************************************************************

.SUBCKT 12_CS_inductive_degenerate_with_pads Vbiasn Vout Vpad
*.PININFO Vbiasn:I Vpad:I Vout:O
LL0 vdd! Vout ind=1n
LL1 net18 gnd! ind=1n
MM0 Vout vdd! net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net17 Vpad net18 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 Vbiasn gnd! 1p
CC0 vdd! Vout 1p
RR0 Vout vdd! res=1K
RR1 Vbiasn Vpad res=1K
.ENDS

