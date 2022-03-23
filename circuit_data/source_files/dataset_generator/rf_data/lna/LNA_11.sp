************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 11_CS_inductive_degenerate
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:31 2019
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
* Cell Name:    11_CS_inductive_degenerate
* View Name:    schematic
************************************************************************

.SUBCKT 11_CS_inductive_degenerate Vbiasn Vin Vout
*.PININFO Vbiasn:I Vin:I Vout:O
LL0 vdd! Vout 1n $[LP]
LL2 Vin net13 1n $[LP]
LL1 net12 gnd! 1n $[LP]
CC0 vdd! Vout 1p
RR0 Vout vdd! 1K $[RP]
RR1 net13 Vbiasn 1K $[RP]
MM0 Vout vdd! net14 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net14 net13 net12 gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

