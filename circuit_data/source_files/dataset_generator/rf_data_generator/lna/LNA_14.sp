************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 14_lna_cs_noise_cancelling
* View Name:     schematic
* Netlisted on:  Apr  4 12:19:20 2019
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
* Cell Name:    14_lna_cs_noise_cancelling
* View Name:    schematic
************************************************************************

.SUBCKT 14_lna_cs_noise_cancelling vbiasp vantenna vrf
*.PININFO vbiasp:I vantenna:I vrf:O
MM4 vrf net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM0 net8 gnd! net9 vdd! pmos_rvt w=27n l=20n nfin=1
MM3 net9 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
CC0 vdd! net9 1p
CC3 net8 net10 1p
CC2 vantenna gnd! 1p
RR0 net10 vdd! res=1K
RR1 gnd! net8 res=1K
MM1 net8 gnd! gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vrf gnd! gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

