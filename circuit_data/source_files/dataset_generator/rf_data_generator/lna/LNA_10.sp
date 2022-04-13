************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 10_lna_cg_cascode_stage_full
* View Name:     schematic
* Netlisted on:  Apr  4 10:14:12 2019
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
* Cell Name:    10_lna_cg_cascode_stage_full
* View Name:    schematic
************************************************************************

.SUBCKT 10_lna_cg_cascode_stage_full vbiasn1 vbiasn2 vantenna vrf
*.PININFO vbiasp:I vantenna:I vrf:O
CC3 net49 gnd! 1p
CC0 vdd! vrf 1p
CC1 vantenna net49 1p
RR0 vrf vdd! res=1K
RR2 gnd! net49 res=1K
MM0 vrf vbiasn2 net51 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 net51 vbiasn1 net49 gnd! nmos_rvt w=27n l=20n nfin=1
LL1 net49 gnd! ind=1n
LL0 vdd! vrf ind=1n
.ENDS

