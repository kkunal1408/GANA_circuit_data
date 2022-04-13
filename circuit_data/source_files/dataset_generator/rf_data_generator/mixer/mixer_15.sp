************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 15_single_capacitive_coupling_resonance_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:08:08 2019
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
* Cell Name:    15_single_capacitive_coupling_resonance_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 15_single_capacitive_coupling_resonance_mixer vbiasn0 vbiasn1 vbiasn2 votan votap vrf vlon vlop
*.PININFO Vb:I vbiasn1:I vbiasn2:I vrf:I vlon:I vlop:I votan:O votap:O
MM4 net22 vbiasn0 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 votan net021 net22 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 votap net020 net22 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 vbiasn2 net27 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC2 net22 vbiasn2 1p
CC4 vlon net021 1p
CC3 vlop net020 1p
CC1 vrf net27 1p
RR5 net020 vbiasn2 res=1K
RR6 net021 vbiasn2 res=1K
RR2 votap vdd! res=1K
RR0 votan vdd! res=1K
RR4 net27 vbiasn1 res=1K
LL1 vbiasn2 vdd! ind=1n
.ENDS

