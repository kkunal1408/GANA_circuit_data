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
* **+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: oscillator
* Cell Name:    negative_resistance_oscillator_2
* View Name:    schematic
************************************************************************

.SUBCKT negative_resistance_oscillator_2 vlon vlop
*.PININFO vlon:O vlop:O
LL1 vlon vlop ind=1n
MM3 vlon vlop vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM2 vlop vlon net13 net13 pmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

