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

.SUBCKT 3_single_balanced_sampling_mixer Vbiasn Vrf vifm vifp vlom vlop
*.PININFO Vbiasn:I Vrf:I vlom:I vlop:I vifm:O vifp:O
MM1 Vrf net40 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vrf net42 vifm gnd! nmos_rvt w=27n l=20n nfin=1
CC2 vifp gnd! 1p
CC4 vifm gnd! 1p
CC3 vlop net42 1p
CC1 net40 vlom 1p
RR0 net40 Vbiasn 1K
RR1 net42 Vbiasn 1K
.ENDS

