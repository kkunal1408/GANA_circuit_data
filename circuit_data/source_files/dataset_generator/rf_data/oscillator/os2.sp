************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_ind
* View Name:     schematic
* Netlisted on:  Jul  5 12:15:47 2019
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
* Cell Name:    cross_coupled_oscillator_ind
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_ind Voutn Voutp
*.PININFO Voutn:O Voutp:O
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
+ spacing=2u gdis=50u m=1
.ENDS

