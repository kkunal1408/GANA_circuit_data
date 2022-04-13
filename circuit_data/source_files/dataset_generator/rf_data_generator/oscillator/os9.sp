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

.SUBCKT cross_coupled_oscillator_tail_current_variable_cap vbias_a vbias_b vbiasp Vdigital vlon vlop
*.PININFO vbias_a:I vbias_b:I vbiasp:I Vdigital:I vlon:O vlop:O
MM3 net14 Vdigital net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net10 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net15 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
RR3 vbias_b net17 res=5K
RR2 vbias_a net14 res=5K
CC2 vlon net14 cap=10f
CC3 vlop net17 cap=10f
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

