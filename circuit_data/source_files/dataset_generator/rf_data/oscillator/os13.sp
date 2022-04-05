************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_ctap
* View Name:     schematic
* Netlisted on:  Jul  5 12:22:13 2019
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
* Cell Name:    cross_coupled_oscillator_ctap
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_ctap vbiasp vlon vlop
*.PININFO vbiasp:I vlon:O vlop:O
XL2 vlon vlop vdd! spiral_std_mu_a w=30u rad=60u nr=3 lay=6 spacing=2u gdis=50u m=1
MM1 vlon vlop net11 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon net11 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net7 net7 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net11 net7 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net7 vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

