************************************************************************
* auCdl Netlist:
* 
* Library Name:  oscillator
* Top Cell Name: Simple_cross-coupled_oscillator_nmos_cap_vbias
* View Name:     schematic
* Netlisted on:  Jul  5 12:17:32 2019
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
* Cell Name:    Simple_cross-coupled_oscillator_nmos_cap_vbias
* View Name:    schematic
************************************************************************

.SUBCKT Simple_cross-coupled_oscillator_nmos_cap_vbias Vbiasn Vdigital Voutn 
+ Voutp Vtune
*.PININFO Vbiasn:I Vdigital:I Vtune:I Voutn:O Voutp:O
XL0 Voutn Voutp gnd! net14 spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9 
+ spacing=2u gdis=50u m=1
MM6 net8 Vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 gnd! Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 gnd! Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net14 net8 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 net8 net8 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XC4 Voutn Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune Voutp Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
.ENDS

