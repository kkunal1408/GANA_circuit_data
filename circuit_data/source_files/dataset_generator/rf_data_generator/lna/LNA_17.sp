************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 18_lna_cs_differential
* View Name:     schematic
* Netlisted on:  Apr  4 10:17:01 2019
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
* Cell Name:    18_lna_cs_differential
* View Name:    schematic
************************************************************************

.SUBCKT 17_lna_cs_differential vbiasn vantenna1 vantenna2 vrfn vrfp
*.PININFO vbiasn:I vantenna1:I vantenna2:I vrfn:O vrfp:O
LL0 vdd! vrfp ind=1n
LL1 net33 gnd! ind=1n
LL3 vdd! vrfn ind=1n
LL4 net34 gnd! ind=1n
MM0 vrfp vdd! net31 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net31 net30 net33 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net32 net29 net34 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vrfn vdd! net32 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 vantenna2 net30 1p
CC0 vantenna1 net29 1p
RR1 vbiasn net30 res=1K
RR0 vbiasn net29 res=1K
.ENDS

