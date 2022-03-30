************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 5_CG_current_source
* View Name:     schematic
* Netlisted on:  Apr  4 10:12:21 2019
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
*+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    5_CG_current_source
* View Name:    schematic
************************************************************************

.SUBCKT 5_CG_current_source Vbiasn1 Vbiasn2 Vin Vout
*.PININFO Vbiasn1:I Vbiasn2:I Vin:I Vout:O
CC1 Vin net13 1p
RR2 gnd! net13 res=1K
MM0 Vout Vbiasn2 net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net13 Vbiasn1 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout ind=1n
.ENDS

