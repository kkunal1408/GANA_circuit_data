************************************************************************
* auCdl Netlist:
* 
* Library Name:  oscillator
* Top Cell Name: negative_resistance_oscillator_2
* View Name:     schematic
* Netlisted on:  Sep  9 08:08:53 2019
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
+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: oscillator
* Cell Name:    negative_resistance_oscillator_2
* View Name:    schematic
************************************************************************

.SUBCKT negative_resistance_oscillator_2 Voutn Voutp
*.PININFO Voutn:O Voutp:O
LL1 Voutn Voutp 1n $[LP]
MM3 Voutn Voutp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM2 Voutp Voutn net13 net13 pmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

