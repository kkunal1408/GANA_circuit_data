************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 1_CS_inductive_load
* View Name:     schematic
* Netlisted on:  Apr  4 11:53:55 2019
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
* Cell Name:    1_CS_inductive_load
* View Name:    schematic
************************************************************************

.SUBCKT 1_CS_inductive_load Vbiasn Vin Vout
*.PININFO Vbiasn:I Vin:I Vout:O
LL0 vdd! Vout 2m $[LP]
MM0 Vout net5 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RR0 Vbiasn net5 5K $[RP]
CC1 Vin net5 10f $[CP]
.ENDS

