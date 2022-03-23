************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 14_CS_noise_cancelling
* View Name:     schematic
* Netlisted on:  Apr  4 12:19:20 2019
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
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    14_CS_noise_cancelling
* View Name:    schematic
************************************************************************

.SUBCKT 14_CS_noise_cancelling Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
MM4 Vout net10 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM0 net8 gnd! net9 vdd! pmos_rvt w=27n l=20n nfin=1
MM3 net9 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
CC0 vdd! net9 1p
CC3 net8 net10 1p
CC2 Vin gnd! 1p
RR0 net10 vdd! 1K $[RP]
RR1 gnd! net8 1K $[RP]
MM1 net8 gnd! gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 Vout gnd! gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

