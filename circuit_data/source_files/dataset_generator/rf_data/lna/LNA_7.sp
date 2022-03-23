************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 7_CG_biasing_with_proper_biasing
* View Name:     schematic
* Netlisted on:  Apr  4 10:13:09 2019
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
* Cell Name:    7_CG_biasing_with_proper_biasing
* View Name:    schematic
************************************************************************

.SUBCKT 7_CG_biasing_with_proper_biasing Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
RR0 gnd! net17 1K $[RP]
RRb gnd! net14 1K $[RP]
CC1 Vin net14 1p
CC0 net16 gnd! 1p
MM0 Vout net16 net14 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n $[LP]
MM1 net17 net16 net16 gnd! pmos_rvt w=27n l=20n nfin=1
MM2 net16 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

