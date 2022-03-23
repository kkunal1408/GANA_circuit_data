************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 2_double_balanced_passive_mixer
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
* Cell Name:    2_double_balanced_passive_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 2_double_balanced_passive_mixer Vbiasn Vrfn Vrfp vifm vifp vlom vlop
*.PININFO Vbiasn:I Vrfn:I Vrfp:I vlom:I vlop:I vifm:O vifp:O
MM3 Vrfn net70 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vrfn net72 vifm gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Vrfp net73 vifp gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vrfp net75 vifm gnd! nmos_rvt w=27n l=20n nfin=1
CC2 vlom net72 1p
CC0 net70 vlop 1p
CC3 vlop net75 1p
CC1 net73 vlom 1p
RR7 gnd! vifp 1K $[RP]
RR5 net70 Vbiasn 1K $[RP]
RR4 net72 Vbiasn 1K $[RP]
RR2 vifm gnd! 1K $[RP]
RR0 net73 Vbiasn 1K $[RP]
RR1 net75 Vbiasn 1K $[RP]
.ENDS

