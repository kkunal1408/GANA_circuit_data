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

.SUBCKT cross_coupled_oscillator_ctap Vbiasp Voutn Voutp
*.PININFO Vbiasp:I Voutn:O Voutp:O
XL2 Voutn Voutp vdd! spiral_std_mu_a w=30u rad=60u nr=3 lay=6 spacing=2u gdis=50u m=1
MM1 Voutn Voutp net11 gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutp Voutn net11 gnd! nmos_rvt w=27n l=20n nfin=1
MM7 net7 net7 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 net11 net7 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net7 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

