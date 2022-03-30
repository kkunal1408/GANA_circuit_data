************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: test_circuit
* View Name:     schematic
* Netlisted on:  Apr  4 11:57:10 2019
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
*+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    test_circuit
* View Name:    schematic
************************************************************************

.SUBCKT test_circuit Vbiasn Vin Vout1 Vout2
*.PININFO Vbiasn:I Vin:I Vout1:O Vout2:O
RR0 vdd! Vout2 res=1K
RR1 vdd! Vout1 res=1K
RRb gnd! net16 res=1K
CC1 Vin net16 1p
MM1 Vout2 net16 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Vout1 Vbiasn net16 gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

