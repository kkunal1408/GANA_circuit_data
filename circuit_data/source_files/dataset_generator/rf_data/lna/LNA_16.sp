************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 15_resistance_cancelling_lna
* View Name:     schematic
* Netlisted on:  Apr  4 12:18:51 2019
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
* *+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    15_resistance_cancelling_lna
* View Name:    schematic
************************************************************************

.SUBCKT 16_resistance_cancelling_lna Vbiasn Vin vout1 vout2
*.PININFO Vbiasn:I Vin:I vout1:O vout2:O
RR3 vout1 vdd! res=1K
RR0 net9 vdd! res=1K
RR4 vout2 vdd! res=1K
CC1 Vin vout2 1p
MM8 vout2 vout1 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM7 vout1 net9 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 vout2 Vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 net9 vout2 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

