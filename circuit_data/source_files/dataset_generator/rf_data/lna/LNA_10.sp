************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 10_CG_cascode_stage_full
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:12 2019
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
* Cell Name:    10_CG_cascode_stage_full
* View Name:    schematic
************************************************************************

.SUBCKT 10_CG_cascode_stage_full Vbiasn1 Vbiasn2 Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
CC3 net49 gnd! 1p
CC0 vdd! Vout 1p
CC1 Vin net49 1p
RR0 Vout vdd! 1K
RR2 gnd! net49 1K
MM0 Vout Vbiasn2 net51 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net51 Vbiasn1 net49 gnd! nmos_rvt w=27n l=20n nfin=1
LL1 net49 gnd! 1n
LL0 vdd! Vout 1n
.ENDS

