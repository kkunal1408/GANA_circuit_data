************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_tail_current_variable_cap
* View Name:     schematic
* Netlisted on:  Jul  5 12:20:13 2019
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
* Cell Name:    cross_coupled_oscillator_tail_current_variable_cap
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tail_current_variable_cap Vbias_a Vbias_b Vbiasp Vdigital Voutn Voutp
*.PININFO Vbias_a:I Vbias_b:I Vbiasp:I Vdigital:I Voutn:O Voutp:O
MM3 net14 Vdigital net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net10 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net15 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
RR3 Vbias_b net17 res=5K
RR2 Vbias_a net14 res=5K
CC2 Voutn net14 cap=10f
CC3 Voutp net17 cap=10f
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

