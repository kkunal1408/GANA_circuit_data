************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 9_CG_cascode_stage_biasing
* View Name:     schematic
* Netlisted on:  Apr  4 10:13:47 2019
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

*.GLOBAL gnd!
+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    9_CG_cascode_stage_biasing
* View Name:    schematic
************************************************************************

.SUBCKT 9_CG_cascode_stage_biasing Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
CC2 net31 gnd! 1p $[CP]
CC0 vdd! Vout 1p $[CP]
CC1 Vin net23 1p $[CP]
RR1 gnd! net28 1K $[RP]
RR0 Vout vdd! 1K $[RP]
RR2 gnd! net23 1K $[RP]
MM0 Vout vdd! net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net29 net31 net23 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n $[LP]
MM3 net31 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM2 net28 net31 net31 gnd! pmos_rvt w=27n l=20n nfin=1
.ENDS

