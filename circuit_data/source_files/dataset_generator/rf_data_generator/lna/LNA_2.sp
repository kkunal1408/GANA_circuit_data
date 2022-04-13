************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 2_lna_cs_resistive_feedback
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:07 2019
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
* Cell Name:    2_lna_cs_resistive_feedback
* View Name:    schematic
************************************************************************

.SUBCKT 2_lna_cs_resistive_feedback vbiasp vantenna vrf
*.PININFO vbiasp:I vantenna:I vrf:O
MM1 vrf vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM0 vrf net6 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RRF vrf net6 res=1K
CC1 vantenna net6 1p
.ENDS

