************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 15_single_capacitive_coupling_resonance
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
* Cell Name:    15_single_capacitive_coupling_resonance
* View Name:    schematic
************************************************************************

.SUBCKT 15_single_capacitive_coupling_resonance Vbiasn0 Vbiasn1 Vbiasn2 Voutn Voutp Vrf vlon vlop
*.PININFO Vb:I Vbiasn1:I Vbiasn2:I Vrf:I vlon:I vlop:I Voutn:O Voutp:O
MM4 net22 Vbiasn0 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net021 net22 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net020 net22 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vbiasn2 net27 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC2 net22 Vbiasn2 1p
CC4 vlon net021 1p
CC3 vlop net020 1p
CC1 Vrf net27 1p
RR5 net020 Vbiasn2 res=1K
RR6 net021 Vbiasn2 res=1K
RR2 Voutp vdd! res=1K
RR0 Voutn vdd! res=1K
RR4 net27 Vbiasn1 res=1K
LL1 Vbiasn2 vdd! ind=1n
.ENDS
