************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: negative_resistance_oscillator
* View Name:     schematic
* Netlisted on:  Sep  9 08:06:49 2019
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
* Cell Name:    negative_resistance_oscillator
* View Name:    schematic
************************************************************************

.SUBCKT negative_resistance_oscillator vlon vlop
*.PININFO vlon:O vlop:O
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC1 vlop net10 1p
CC0 vlon net11 1p
LL1 vlon vlop ind=1n
LL0 net11 net10 ind=1n
RR1 vdd! vlon res=1K
RR0 vdd! vlop res=1K
.ENDS

