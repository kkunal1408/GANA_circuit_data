************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 1_single_balanced_passive
* View Name:     schematic
* Netlisted on:  Apr  4 10:00:41 2019
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
* Cell Name:    1_single_balanced_passive
* View Name:    schematic
************************************************************************

.SUBCKT 1_single_balanced_passive Vbiasn Vrf vifm vifp vlom vlop
*.PININFO Vbiasn:I Vrf:I vlom:I vlop:I vifm:O vifp:O
MM1 Vrf net14 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vrf net16 vifm gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlop net16 1p
CC1 net14 vlom 1p
RR3 gnd! vifp 1K
RR2 vifm gnd! 1K
RR0 net14 Vbiasn 1K
RR1 net16 Vbiasn 1K
.ENDS

