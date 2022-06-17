************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_nmos_cap_ind
* View Name:     schematic
* Netlisted on:  Jul  5 12:17:04 2019
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
**+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: oscillator
* Cell Name:    cross_coupled_oscillator_nmos_cap_ind
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_nmos_cap_ind Vdigital vlon vlop Vtune
*.PININFO Vdigital:I Vtune:I vlon:O vlop:O
MM3 gnd! vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 gnd! vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
XC5 Vtune vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 vlon Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
.ENDS

