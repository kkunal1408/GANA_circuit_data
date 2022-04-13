************************************************************************
* auCdl Netlist:
*
* Library Name:  training_set
* Top Cell Name: biased_lna_1_2
* View Name:     schematic
* Netlisted on:  Mar 31 23:57:07 2019
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
* Library Name: biasing_circuits
* Cell Name:    CR1_1
* View Name:    schematic
************************************************************************

.SUBCKT CR1_1 Vbiasn
*.PININFO Vbiasn:O
RRF vdd! Vbiasn 1K
MM0 Vbiasn Vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_LNA
* Cell Name:    2_lna_cs_resistive_feedback
* View Name:    schematic
************************************************************************

.SUBCKT 2_lna_cs_resistive_feedback Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
MM1 Vout Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM0 Vout net6 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RRF Vout net6 1K
CC1 Vin net6 1p
.ENDS

************************************************************************
* Library Name: training_set
* Cell Name:    biased_lna_1_2
* View Name:    schematic
************************************************************************

.SUBCKT biased_lna_1_2 Vin Vout
*.PININFO Vin:I Vout:O
XI0 net5 / CR1_1
XI2 net5 Vin Vout / 2_lna_cs_resistive_feedback
.ENDS

