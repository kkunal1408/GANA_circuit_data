************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name:
+ Simple_cross-coupled_oscillator_tail_current_variable_cap_trim_cap_varactor
* View Name:     schematic
* Netlisted on:  Jul  5 12:21:53 2019
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

.SUBCKT sub0 Vbias_a Vbias_b Vbiasp Vcontrol Vdigital Vdigital_a Vdigital_b
+ Vidgital Voutn Voutp
*.PININFO Vbias_a:I Vbias_b:I Vbiasp:I Vcontrol:I Vdigital:I Vidgital:I
*.PININFO Vdigital_a:O Vdigital_b:O Voutn:O Voutp:O
MM4 net022 Vdigital_a gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM8 net023 Vdigital_b gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net14 Vcontrol net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net10 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net15 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
RR3 Vbias_b net17 5K $[RP]
RR2 Vbias_a net14 5K $[RP]
XC0 net17 Voutp Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 Voutn net14 Vidgital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 Voutn Voutp gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
+ spacing=2u gdis=50u m=1
CC3 Voutp net022 10f
CC5 Voutn net023 10f
.ENDS

