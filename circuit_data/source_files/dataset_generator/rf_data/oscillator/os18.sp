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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: oscillator
* Cell Name:    negative_resistance_oscillator
* View Name:    schematic
************************************************************************

.SUBCKT negative_resistance_oscillator Voutn Voutp
*.PININFO Voutn:O Voutp:O
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC1 Voutp net10 1p
CC0 Voutn net11 1p
LL1 Voutn Voutp 1n
LL0 net11 net10 1n
RR1 vdd! Voutn 1K
RR0 vdd! Voutp 1K
.ENDS

