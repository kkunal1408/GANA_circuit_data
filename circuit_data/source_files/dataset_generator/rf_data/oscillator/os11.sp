************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name:
+ cross_coupled_oscillator_tail_current_variable_cap_trim_cap_switched
* View Name:     schematic
* Netlisted on:  Jul  5 12:21:33 2019
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
* Cell Name:    sub0
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tail_current_variable_cap_trim_cap_switched Vbias_a Vbias_b Vbiasp Vcontrol Vdigital Vdigital_a Vdigital_b
+ Vidgital Voutn Voutp
*.PININFO Vbias_a:I Vbias_b:I Vbiasp:I Vcontrol:I Vdigital:I Vdigital_a:I
*.PININFO Vdigital_b:I Vidgital:I Voutn:O Voutp:O
MM3 net14 Vcontrol net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net10 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net15 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
RR3 Vbias_b net17 5K
RR2 Vbias_a net14 5K
XC2 gnd! Voutn Vdigital_b moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC1 Voutp gnd! Vdigital_a moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC0 net17 Voutp Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 Voutn net14 Vidgital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
+ spacing=2u gdis=50u m=1
.ENDS

