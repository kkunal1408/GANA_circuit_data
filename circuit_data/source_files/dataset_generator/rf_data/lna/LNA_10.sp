************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 10_CG_cascode_stage_full
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:12 2019
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
* Cell Name:    10_CG_cascode_stage_full
* View Name:    schematic
************************************************************************

.SUBCKT 10_CG_cascode_stage_full Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
CC3 net49 gnd! 1p $[CP]
CC0 vdd! Vout 1p $[CP]
CC2 net55 gnd! 1p $[CP]
CC1 Vin net49 1p $[CP]
RR0 Vout vdd! 1K $[RP]
RR2 gnd! net49 1K $[RP]
RR1 gnd! net52 1K $[RP]
MM3 net55 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM2 net52 net55 net55 gnd! pmos_rvt w=27n l=20n nfin=1
MM0 Vout vdd! net51 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net51 net55 net49 gnd! nmos_rvt w=27n l=20n nfin=1
LL1 net49 gnd! 1n $[LP]
LL0 vdd! Vout 1n $[LP]
.ENDS

