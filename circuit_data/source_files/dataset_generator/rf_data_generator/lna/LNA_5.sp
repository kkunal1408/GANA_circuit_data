************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 5_lna_cg_current_source
* View Name:     schematic
* Netlisted on:  Apr  4 10:12:21 2019
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
* Cell Name:    5_lna_cg_current_source
* View Name:    schematic
************************************************************************

.SUBCKT 5_lna_cg_current_source vbiasn1 vbiasn2 vantenna vrf
*.PININFO vbiasn1:I vbiasn2:I vantenna:I vrf:O
CC1 vantenna net13 1p
RR2 gnd! net13 res=1K
MM0 vrf vbiasn2 net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net13 vbiasn1 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
.ENDS

