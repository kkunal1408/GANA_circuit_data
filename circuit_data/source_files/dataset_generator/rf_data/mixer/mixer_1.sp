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

.SUBCKT 1_single_balanced_passive vbiasn vrf voutn voutp vlon vlop
*.PININFO vbiasn:I vrf:I vlon:I vlop:I voutn:O voutp:O
MM1 vrf net14 voutp gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vrf net16 voutn gnd! nmos_rvt w=27n l=20n nfin=1
CC3 vlop net16 1p
CC1 net14 vlon 1p
RR3 gnd! voutp res=1K
RR2 voutn gnd! res=1K
RR0 net14 vbiasn res=1K
RR1 net16 vbiasn res=1K
.ENDS

