************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 8_lna_cg_cascode_stage
* View Name:     schematic
* Netlisted on:  Apr  4 10:13:28 2019
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
* Cell Name:    8_lna_cg_cascode_stage
* View Name:    schematic
************************************************************************

.SUBCKT 8_lna_cg_cascode_stage vbiasn1 vbiasn2 vantenna vrf
*.PININFO vbiasn1:I vbiasn2:I vantenna:I vrf:O
CC0 vdd! vrf 1p
CC1 vantenna net17 1p
RR0 vrf vdd! res=1K
RR2 gnd! net17 res=1K
MM1 net21 vbiasn1 net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vrf vbiasn2 net21 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
.ENDS

