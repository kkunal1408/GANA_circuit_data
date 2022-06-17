************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 9_lna_cg_cascode_stage_biasing
* View Name:     schematic
* Netlisted on:  Apr  4 10:13:47 2019
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
* **+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    9_lna_cg_cascode_stage_biasing
* View Name:    schematic
************************************************************************

.SUBCKT 9_lna_cg_cascode_stage_biasing Vb Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
CC2 net31 gnd! 1p
CC0 vdd! Vout 1p
CC1 Vin net23 1p
RR1 gnd! net28 res=1K
RR0 Vout vdd! res=1K
RR2 gnd! net23 res=1K
MM0 Vout vdd! net29 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net29 net31 net23 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout ind=1n
MM3 net31 Vb vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM2 net28 net31 net31 gnd! pmos_rvt w=27n l=20n nfin=1
.ENDS

