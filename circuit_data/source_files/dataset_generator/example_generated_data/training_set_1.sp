************************************************************************
* auCdl Netlist:
*
* Library Name:  training_set
* Top Cell Name: biased_lna_1_1
* View Name:     schematic
* Netlisted on:  Mar 31 23:58:01 2019
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
* Cell Name:    1_lna_cs_inductive_load
* View Name:    schematic
************************************************************************

.SUBCKT 1_lna_cs_inductive_load Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
LL0 vdd! Vout 2m
MM0 Vout net5 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RR0 Vbiasp net5 5K
CC1 Vin net5 10f
.ENDS

************************************************************************
* Library Name: training_set
* Cell Name:    biased_lna_1_1
* View Name:    schematic
************************************************************************

.SUBCKT biased_lna_1_1 Vin Vout
*.PININFO Vin:I Vout:O
XI0 net1 / CR1_1
XI1 net1 Vin Vout / 1_lna_cs_inductive_load
.ENDS

