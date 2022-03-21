************************************************************************
* auCdl Netlist:
* 
* Library Name:  oscillator
* Top Cell Name: Simple_cross-coupled_oscillator_nmos_cap_vbias_momcap
* View Name:     schematic
* Netlisted on:  Jul  5 12:17:52 2019
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
* Cell Name:    Simple_cross-coupled_oscillator_nmos_cap_vbias_momcap
* View Name:    schematic
************************************************************************

.SUBCKT Simple_cross-coupled_oscillator_nmos_cap_vbias_momcap Vbiasn Vcontrol 
+ Voutn Voutp
*.PININFO Vbiasn:I Vcontrol:I Voutn:O Voutp:O
XC0 Voutn gnd! Vcontrol moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 Voutp gnd! Vcontrol moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 Voutn Voutp gnd! net21 spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9 
+ spacing=2u gdis=50u m=1
MM1 Voutn Voutp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 Vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net21 net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 net10 net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

