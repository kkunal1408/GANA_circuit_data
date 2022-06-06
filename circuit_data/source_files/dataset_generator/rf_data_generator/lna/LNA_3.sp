************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 3_lna_cs_active_load
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:33 2019
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
* Cell Name:    3_lna_cs_active_load
* View Name:    schematic
************************************************************************

.SUBCKT 3_lna_cs_active_load vbiasp vantenna vrf
*.PININFO vbiasp:I vantenna:I vrf:O
MM2 net21 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM1 vrf vrf net21 net21 pmos_rvt w=27n l=20n nfin=1
RRF vrf net23 res=1K
CC2 gnd! net21 1p
CC1 vantenna net23 1p
MM0 vrf net23 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

