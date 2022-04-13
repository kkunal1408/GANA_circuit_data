************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: test_circuit
* View Name:     schematic
* Netlisted on:  Jul  5 12:24:45 2019
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
* Cell Name:    test_circuit
* View Name:    schematic
************************************************************************

.SUBCKT test_circuit Vdigital vlon vlop Vtune
*.PININFO Vdigital:I Vtune:I vlon:O vlop:O
XC3 Vtune vlop Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC2 vlon Vtune Vdigital moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
XL0 vlop vlon gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

