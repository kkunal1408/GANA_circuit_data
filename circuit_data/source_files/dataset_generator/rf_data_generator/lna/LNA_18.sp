************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 19_lna_cg_differential
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
* *+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    19_lna_cg_differential
* View Name:    schematic
************************************************************************

.SUBCKT 18_lna_cg_differential vbiasn vantenna1 vantenna2 vrfn vrfp
*.PININFO vbiasn:I vantenna1:I vantenna2:I vrfn:O vrfp:O
LL0 vdd! vrfp ind=1n
LL3 vdd! vrfn ind=1n
LL4 net07 gnd! ind=1n
LL1 net012 gnd! ind=1n
MM0 vrfp vdd! net16 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net17 vbiasn net07 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net16 vbiasn net012 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vrfn vdd! net17 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 vantenna2 net012 1p
CC0 vantenna1 net07 1p
.ENDS

