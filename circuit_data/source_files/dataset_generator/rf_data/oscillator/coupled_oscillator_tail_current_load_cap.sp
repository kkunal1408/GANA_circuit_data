************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: Simple_cross-coupled_oscillator_tail_current_load_cap
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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: oscillator
* Cell Name:    Simple_cross-coupled_oscillator_tail_current_load_cap
* View Name:    schematic
************************************************************************

.SUBCKT Simple_cross-coupled_oscillator_tail_current_load_cap Vbiasp Vdigital
+ Vdigital_a Vdigital_b Voutn Voutp Vtune
*.PININFO Vbiasp:I Vdigital:I Vtune:I Vdigital_a:O Vdigital_b:O Voutn:O Voutp:O
MM4 net29 Vdigital_a gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net32 Vdigital_b gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net12 net12 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net12 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net12 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
+ spacing=2u gdis=50u m=1
CC3 Voutn net32 10f
CC2 Voutp net29 10f
XC4 Voutn Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune Voutp Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
.ENDS

