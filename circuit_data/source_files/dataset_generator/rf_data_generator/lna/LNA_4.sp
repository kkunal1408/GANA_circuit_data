************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 4_lna_cg_stage
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:54 2019
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
* Cell Name:    4_lna_cg_stage
* View Name:    schematic
************************************************************************

.SUBCKT 4_lna_cg_stage vbiasn vantenna vrf
*.PININFO vbiasn:I vantenna:I vrf:O
MM0 vrf vbiasn net10 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
RRb gnd! net10 res=1K
RR1 vdd! vrf res=1K
CC1 vantenna net10 1p
.ENDS

