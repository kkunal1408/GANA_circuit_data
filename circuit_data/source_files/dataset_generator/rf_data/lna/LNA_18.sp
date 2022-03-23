************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 19_CG_differential
* View Name:     schematic
* Netlisted on:  Apr  4 11:55:47 2019
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
* Cell Name:    19_CG_differential
* View Name:    schematic
************************************************************************

.SUBCKT 19_CG_differential Vbiasn Vin1 Vin2 Vout1 Vout2
*.PININFO Vbiasn:I Vin1:I Vin2:I Vout1:O Vout2:O
LL0 vdd! Vout2 1n $[LP]
LL3 vdd! Vout1 1n $[LP]
LL4 net07 gnd! 1n $[LP]
LL1 net012 gnd! 1n $[LP]
MM0 Vout2 vdd! net16 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net17 Vbiasn net07 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net16 Vbiasn net012 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vout1 vdd! net17 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 Vin2 net012 1p
CC0 Vin1 net07 1p
.ENDS

