************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 4_CG_stage
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:54 2019
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
* Cell Name:    4_CG_stage
* View Name:    schematic
************************************************************************

.SUBCKT 4_CG_stage Vbiasn Vin Vout
*.PININFO Vbiasn:I Vin:I Vout:O
MM0 Vout Vbiasn net10 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout ind=1n
RRb gnd! net10 res=1K
RR1 vdd! Vout res=1K
CC1 Vin net10 1p
.ENDS

