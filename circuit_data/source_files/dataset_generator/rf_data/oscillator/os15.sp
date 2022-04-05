************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_tuned_trim_cap_mos
* View Name:     schematic
* Netlisted on:  Jul  5 22:25:36 2019
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
* Cell Name:    cross_coupled_oscillator_tuned_trim_cap_mos
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tuned_trim_cap_mos vbiasp Vdigital vlon vlop Vtune
*.PININFO vbiasp:I Vdigital:I Vtune:I vlon:O vlop:O
MM4 gnd! vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon net21 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net14 net14 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net21 net14 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 gnd! vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net14 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XC4 vlon Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

