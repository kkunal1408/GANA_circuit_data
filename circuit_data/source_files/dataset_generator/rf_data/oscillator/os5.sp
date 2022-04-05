************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_nmos_cap_vbias
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
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: oscillator
* Cell Name:    cross_coupled_oscillator_nmos_cap_vbias
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_nmos_cap_vbias vbiasn Vdigital vlon vlop Vtune
*.PININFO vbiasn:I Vdigital:I Vtune:I vlon:O vlop:O
XL0 vlon vlop gnd! net14 spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
MM6 net8 vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM3 gnd! vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 gnd! vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net14 net8 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 net8 net8 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
XC4 vlon Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC5 Vtune vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
.ENDS

