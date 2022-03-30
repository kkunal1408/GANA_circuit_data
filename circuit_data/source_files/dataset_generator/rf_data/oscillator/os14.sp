************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_tuned
* View Name:     schematic
* Netlisted on:  Jul  5 22:13:11 2019
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
* Cell Name:    cross_coupled_oscillator_tuned
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tuned Vbiasp Vdigital Voutn Voutp Vtune
*.PININFO Vbiasp:I Vdigital:I Vtune:I Voutn:O Voutp:O
MM1 Voutn Voutp net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net13 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net9 net9 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net13 net9 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
XC4 Voutn Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune Voutp Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
MM6 net9 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
+ spacing=2u gdis=50u m=1
.ENDS

