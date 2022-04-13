************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 12_lna_cs_inductive_degenerate_with_pads
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:51 2019
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
* Cell Name:    12_lna_cs_inductive_degenerate_with_pads
* View Name:    schematic
************************************************************************

.SUBCKT 12_lna_cs_inductive_degenerate_with_pads vbiasn vrf vantenna
*.PININFO vbiasn:I vantenna:I vrf:O
LL0 vdd! vrf ind=1n
LL1 net18 gnd! ind=1n
MM0 vrf vdd! net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net17 vantenna net18 gnd! nmos_rvt w=27n l=20n nfin=1
CC1 vbiasn gnd! 1p
CC0 vdd! vrf 1p
RR0 vrf vdd! res=1K
RR1 vbiasn vantenna res=1K
.ENDS

