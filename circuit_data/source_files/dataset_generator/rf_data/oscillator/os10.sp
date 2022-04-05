************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name:
* + Simple_
* View Name:     schematic
* Netlisted on:  Jul  5 12:21:03 2019
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
* Cell Name:    sub0
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_tail_current_variable_cap_trim_cap_mos vbias_a vbias_b vbiasp Vcontrol Vdigital vlon vlop
*.PININFO vbias_a:I vbias_b:I vbiasp:I Vcontrol:I Vdigital:I Vdigital:I
*.PININFO vlon:O vlop:O
MM5 gnd! vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 gnd! vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 net14 Vcontrol net17 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon net15 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net10 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net15 net10 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
RR3 vbias_b net17 res=5K
RR2 vbias_a net14 res=5K
XC0 net17 vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 vlon net14 Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

