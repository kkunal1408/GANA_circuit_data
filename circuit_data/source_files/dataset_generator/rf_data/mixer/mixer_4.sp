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

.SUBCKT 4_double_balanced_sampling_mixer Vbiasn Vrfn Vrfp vifm vifp vlom vlop
*.PININFO Vbiasn:I Vrfn:I Vrfp:I vlom:I vlop:I vifm:O vifp:O
MM3 Vrfn net78 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vrfn net80 vifm gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Vrfp net81 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vrfp net83 vifm gnd! nmos_rvt w=27n l=20n nfin=1
CC5 vifp gnd! 1p
CC2 vlom net80 1p
CC0 net78 vlop 1p
CC4 vifm gnd! 1p
CC3 vlop net83 1p
CC1 net81 vlom 1p
RR5 net78 Vbiasn 1K
RR4 net80 Vbiasn 1K
RR0 net81 Vbiasn 1K
RR1 net83 Vbiasn 1K
.ENDS

