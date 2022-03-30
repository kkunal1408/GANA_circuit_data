************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_nmos_cap
* View Name:     schematic
* Netlisted on:  Jul  5 12:16:40 2019
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
* Library Name: oscillator
* Cell Name:    cross_coupled_oscillator_nmos_cap
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_nmos_cap Voutn Voutp
*.PININFO Voutn:O Voutp:O
LL1 vdd! Voutp ind=2m
LL0 vdd! Voutn ind=2m
RR1 vdd! Voutp res=5K
RR0 vdd! Voutn res=5K
CC0 vdd! Voutp cap=10f
CC1 vdd! Voutn cap=10f
MM3 gnd! Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 gnd! Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

