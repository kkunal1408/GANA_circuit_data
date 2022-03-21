************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 18_CS_differential
* View Name:     schematic
* Netlisted on:  Apr  4 10:17:01 2019
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
* Cell Name:    18_CS_differential
* View Name:    schematic
************************************************************************

.SUBCKT 18_CS_differential Vbiasn Vin1 Vin2 Vout1 Vout2
*.PININFO Vbiasn:I Vin1:I Vin2:I Vout1:O Vout2:O
LL0 vdd! Vout2 1n $[LP]
LL1 net33 gnd! 1n $[LP]
LL3 vdd! Vout1 1n $[LP]
LL4 net34 gnd! 1n $[LP]
MM0 Vout2 vdd! net31 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net31 net30 net33 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net32 net29 net34 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vout1 vdd! net32 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 Vin2 net30 1p $[CP]
CC0 Vin1 net29 1p $[CP]
RR1 Vbiasn net30 1K $[RP]
RR0 Vbiasn net29 1K $[RP]
.ENDS

