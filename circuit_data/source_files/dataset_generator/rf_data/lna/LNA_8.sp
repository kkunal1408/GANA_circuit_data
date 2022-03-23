************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 8_CG_cascode_stage
* View Name:     schematic
* Netlisted on:  Apr  4 10:13:28 2019
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
* Cell Name:    8_CG_cascode_stage
* View Name:    schematic
************************************************************************

.SUBCKT 8_CG_cascode_stage Vbiasn1 Vbiasn2 Vin Vout
*.PININFO Vbiasn1:I Vbiasn2:I Vin:I Vout:O
CC0 vdd! Vout 1p
CC1 Vin net17 1p
RR0 Vout vdd! 1K $[RP]
RR2 gnd! net17 1K $[RP]
MM1 net21 Vbiasn1 net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vout Vbiasn2 net21 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n $[LP]
.ENDS

