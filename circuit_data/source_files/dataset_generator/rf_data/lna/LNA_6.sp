************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 6_CG_biasing_with_resistor
* View Name:     schematic
* Netlisted on:  Apr  4 10:12:50 2019
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
* Cell Name:    6_CG_biasing_with_resistor
* View Name:    schematic
************************************************************************

.SUBCKT 6_CG_biasing_with_resistor Vbiasn Vin Vout
*.PININFO Vbiasn:I Vin:I Vout:O
CC1 Vin net14 1p $[CP]
RRb gnd! net14 1K $[RP]
MM0 Vout Vbiasn net14 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n $[LP]
.ENDS

