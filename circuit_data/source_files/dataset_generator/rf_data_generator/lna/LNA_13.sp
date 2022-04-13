************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 13_lna_cs_transformer_feedforward
* View Name:     schematic
* Netlisted on:  Apr  4 12:21:32 2019
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
* Cell Name:    13_lna_cs_transformer_feedforward
* View Name:    schematic
************************************************************************

.SUBCKT 13_lna_cs_transformer_feedforward vbiasp vantenna vrf
*.PININFO vbiasp:I vantenna:I vrf:O
CC2 vdd! gnd! 1p
CC0 vdd! vrf 1p
CC1 vantenna net21 1p
RR0 vrf vdd! res=1K
MM2 net28 vdd! gnd! net28 nmos_rvt w=27n l=20n nfin=1
MM1 vrf net012 net21 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
LL2 vdd! net012 ind=1n
LL1 net21 gnd! ind=1n
MM3 net28 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

