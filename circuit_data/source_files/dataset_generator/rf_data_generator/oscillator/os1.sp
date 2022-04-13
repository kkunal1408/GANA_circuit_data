************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator
* View Name:     schematic
* Netlisted on:  Jul  5 12:14:45 2019
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
* Cell Name:    cross_coupled_oscillator
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator vlon vlop
*.PININFO vlon:O vlop:O
LL1 vdd! vlop ind=2m
LL0 vdd! vlon ind=2m
RR1 vdd! vlop res=5K
RR0 vdd! vlon res=5K
CC0 vdd! vlop cap=10f
CC1 vdd! vlon cap=10f
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

