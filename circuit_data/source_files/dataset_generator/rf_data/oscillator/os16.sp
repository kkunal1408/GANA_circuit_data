************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_tuned_trim_cap_switched
* View Name:     schematic
* Netlisted on:  Jul  5 21:57:38 2019
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
* Cell Name:    cross_coupled_oscillator_tuned_trim_cap_switched
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tuned_trim_cap_switched Vbiasp Vdigital_a Vdigital_b Voutn Voutp Vtune
*.PININFO Vbiasp:I Vtune:I Vdigital_a:O Vdigital_b:O Voutn:O Voutp:O
MM3 net27 Vdigital_b gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 net28 Vdigital_a gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net14 net14 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net14 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net14 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
CC3 Voutn net27 cap=10f
CC1 Voutp net28 cap=10f
CC0 Voutp Vtune cap=10f
CC2 Voutn Vtune cap=10f
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

