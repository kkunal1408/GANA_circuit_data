************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 13_CS_transformer_feedforward
* View Name:     schematic
* Netlisted on:  Apr  4 12:21:32 2019
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
* Cell Name:    13_CS_transformer_feedforward
* View Name:    schematic
************************************************************************

.SUBCKT 13_CS_transformer_feedforward Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
CC2 vdd! gnd! 1p $[CP]
CC0 vdd! Vout 1p $[CP]
CC1 Vin net21 1p $[CP]
RR0 Vout vdd! 1K $[RP]
MM2 net28 vdd! gnd! net28 nmos_rvt w=27n l=20n nfin=1
MM1 Vout net012 net21 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n $[LP]
LL2 vdd! net012 1n $[LP]
LL1 net21 gnd! 1n $[LP]
MM3 net28 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

