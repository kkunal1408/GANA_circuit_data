************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 3_single_balanced_sampling_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:02:03 2019
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
* Cell Name:    3_single_balanced_sampling_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 3_single_balanced_sampling_mixer vbiasn vrf votan votap vlon vlop
*.PININFO vbiasn:I vrf:I vlon:I vlop:I votan:O votap:O
MM1 vrf net40 votap gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vrf net42 votan gnd! nmos_rvt w=27n l=20n nfin=1
CC2 votap gnd! 1p
CC4 votan gnd! 1p
CC3 vlop net42 1p
CC1 net40 vlon 1p
RR0 net40 vbiasn res=1K
RR1 net42 vbiasn res=1K
.ENDS

