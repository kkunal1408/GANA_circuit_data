************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_tail_current_load_cap
* View Name:     schematic
* Netlisted on:  Jul  5 12:19:50 2019
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
* Cell Name:    cross_coupled_oscillator_tail_current_load_cap
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tail_current_load_cap vbiasp Vdigital Vdigital_a Vdigital_b vlon vlop Vtune
*.PININFO vbiasp:I Vdigital:I Vtune:I Vdigital_a:O Vdigital_b:O vlon:O vlop:O
MM4 net29 Vdigital_a gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net32 Vdigital_b gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net12 net12 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net12 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net12 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
CC3 vlon net32 cap=10f
CC2 vlop net29 cap=10f
XC4 vlon Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
.ENDS

