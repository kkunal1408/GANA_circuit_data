************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 1_lna_cs_inductive_load
* View Name:     schematic
* Netlisted on:  Apr  4 11:53:55 2019
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
* Cell Name:    1_lna_cs_inductive_load
* View Name:    schematic
************************************************************************

.SUBCKT 1_lna_cs_inductive_load vbiasn vantenna vrf
*.PININFO vbiasn:I vantenna:I vrf:O
LL0 vdd! vrf ind=2m
MM0 vrf net5 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RR0 vbiasn net5 res=5K
CC1 vantenna net5 cap=10f
.ENDS

