************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 11_lna_cs_inductive_degenerate
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:31 2019
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
**+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    11_lna_cs_inductive_degenerate
* View Name:    schematic
************************************************************************

.SUBCKT 11_lna_cs_inductive_degenerate vbiasn vantenna vrf
*.PININFO vbiasn:I vantenna:I vrf:O
LL0 vdd! vrf ind=1n
LL2 vantenna net13 ind=1n
LL1 net12 gnd! ind=1n
CC0 vdd! vrf 1p
RR0 vrf vdd! res=1K
RR1 net13 vbiasn res=1K
MM0 vrf vdd! net14 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net14 net13 net12 gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

