************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 6_lna_cg_biasing_with_resistor
* View Name:     schematic
* Netlisted on:  Apr  4 10:12:50 2019
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
* Cell Name:    6_lna_cg_biasing_with_resistor
* View Name:    schematic
************************************************************************

.SUBCKT 6_lna_cg_biasing_with_resistor vbiasn vantenna vrf
*.PININFO vbiasn:I vantenna:I vrf:O
CC1 vantenna net14 1p
RRb gnd! net14 res=1K
MM0 vrf vbiasn net14 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
.ENDS

