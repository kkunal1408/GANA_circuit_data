************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 7_lna_cg_biasing_with_proper_biasing
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
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    7_lna_cg_biasing_with_proper_biasing
* View Name:    schematic
************************************************************************

.SUBCKT 7_lna_cg_biasing_with_proper_biasing Vb Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
RR0 gnd! net17 res=1K
RRb gnd! net14 res=1K
CC1 Vin net14 1p
CC0 Vbiasn gnd! 1p
MM0 Vout Vbiasn net14 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout ind=1n
MM1 net17 Vbiasn Vbiasn gnd! pmos_rvt w=27n l=20n nfin=1
MM2 Vbiasn Vb vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

