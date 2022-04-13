************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 4_double_balanced_sampling_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:03:30 2019
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
* Cell Name:    4_double_balanced_sampling_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 4_double_balanced_sampling_mixer vbiasn vrfn vrfp votan votap vlon vlop
*.PININFO vbiasn:I vrfn:I vrfp:I vlon:I vlop:I votan:O votap:O
MM3 vrfn net78 votap gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vrfn net80 votan gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vrfp net81 votap gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vrfp net83 votan gnd! nmos_rvt w=27n l=20n nfin=1
CC5 votap gnd! 1p
CC2 vlon net80 1p
CC0 net78 vlop 1p
CC4 votan gnd! 1p
CC3 vlop net83 1p
CC1 net81 vlon 1p
RR5 net78 vbiasn res=1K
RR4 net80 vbiasn res=1K
RR0 net81 vbiasn res=1K
RR1 net83 vbiasn res=1K
.ENDS

