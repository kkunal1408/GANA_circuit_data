************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: Simple_cross-coupled_oscillator_nmos_cap
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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: oscillator
* Cell Name:    Simple_cross-coupled_oscillator_nmos_cap
* View Name:    schematic
************************************************************************

.SUBCKT Simple_cross-coupled_oscillator_nmos_cap Voutn Voutp
*.PININFO Voutn:O Voutp:O
LL1 vdd! Voutp 2m $[LP]
LL0 vdd! Voutn 2m $[LP]
RR1 vdd! Voutp 5K $[RP]
RR0 vdd! Voutn 5K $[RP]
CC0 vdd! Voutp 10f
CC1 vdd! Voutn 10f
MM3 gnd! Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 gnd! Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

