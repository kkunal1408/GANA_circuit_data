************************************************************************
* auCdl Netlist:
*
* Library Name:  oscillator
* Top Cell Name: cross_coupled_oscillator_nmos_cap_vbias_momcap
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
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: oscillator
* Cell Name:    cross_coupled_oscillator_nmos_cap_vbias_momcap
* View Name:    schematic
************************************************************************

.SUBCKT cross_coupled_oscillator_nmos_cap_vbias_momcap vbiasn Vcontrol vlon vlop
*.PININFO vbiasn:I Vcontrol:I vlon:O vlop:O
XC0 vlon gnd! Vcontrol moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XC4 vlop gnd! Vcontrol moscap_rf wr=1.6u lr=400n br=4 gr=3 m=1
XL0 vlon vlop gnd! net21 spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
MM1 vlon vlop gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 vlop vlon gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 net10 vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net21 net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 net10 net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

