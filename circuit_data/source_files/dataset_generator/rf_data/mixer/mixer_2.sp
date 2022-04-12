************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 2_double_balanced_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:01:35 2019
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

*.PIN gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    2_double_balanced_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 2_double_balanced_mixer vbiasn vrfn vrfp votan votap vlon vlop
*.PININFO vbiasn:I vrfn:I vrfp:I vlon:I vlop:I votan:O votap:O
MM3 vrfn net70 votap gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vrfn net72 votan gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vrfp net73 votap gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vrfp net75 votan gnd! nmos_rvt w=27n l=20n nfin=1
CC2 vlon net72 1p
CC0 net70 vlop 1p
CC3 vlop net75 1p
CC1 net73 vlon 1p
RR7 gnd! votap res=1K
RR5 net70 vbiasn res=1K
RR4 net72 vbiasn res=1K
RR2 votan gnd! res=1K
RR0 net73 vbiasn res=1K
RR1 net75 vbiasn res=1K
.ENDS

