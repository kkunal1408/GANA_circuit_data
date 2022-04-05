************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_ind
* View Name:     schematic
* Netlisted on:  Jul  5 12:15:47 2019
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
* Cell Name:    cross_coupled_oscillator_ind
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_ind vlon vlop
*.PININFO vlon:O vlop:O
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
XL0 vlon vlop gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
.ENDS

