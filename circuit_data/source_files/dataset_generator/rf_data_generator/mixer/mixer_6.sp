************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 6_passive_with_gain_stage_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:04:18 2019
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
* Library Name: RF_mixer
* Cell Name:    6_passive_with_gain_stage_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 6_passive_with_gain_stage_mixer vbiasn vrfn votan votap vlon vlop
*.PININFO vbiasn:I vrfn:I vlon:I vlop:I votan:O votap:O
MM5 vrfn net016 net14 gnd! nmos_rvt w=27n l=20n nfin=1
MM4 vrfn net21 net18 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net18 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 votan net14 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC4 vlon net016 1p
CC5 vlop net21 1p
RR3 net016 vbiasn res=1K
RR1 net21 vbiasn res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
.ENDS

