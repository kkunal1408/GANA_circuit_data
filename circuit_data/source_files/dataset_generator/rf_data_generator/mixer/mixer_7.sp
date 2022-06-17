************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 7_single_balanced_passive__bias_bath_rf_mixer_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:04:40 2019
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
* Library Name: RF_mixer
* Cell Name:    7_single_balanced_passive__bias_bath_rf_mixer_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 7_single_balanced_passive__bias_bath_rf_mixer_mixer vbiasp vrfn votan votap vlon vlop
*.PININFO vbiasp:I vrf:I vlon:I vlop:I votan:O votap:O
CC0 vrfn net36 1p
CC1 net40 gnd! 1p
CC5 vlop net38 1p
CC4 vlon net39 1p
MM2 net40 net40 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 net36 net38 net30 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net30 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 votan net29 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net36 net39 net29 gnd! nmos_rvt w=27n l=20n nfin=1
RR4 net40 net36 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
RR1 net38 net30 res=1K
RR3 net39 net29 res=1K
MM3 net40 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

