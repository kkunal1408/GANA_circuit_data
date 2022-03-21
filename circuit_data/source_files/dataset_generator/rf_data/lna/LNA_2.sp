************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_LNA
* Top Cell Name: 2_CS_resistive_feedback
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:07 2019
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
* Cell Name:    2_CS_resistive_feedback
* View Name:    schematic
************************************************************************

.SUBCKT 2_CS_resistive_feedback Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
MM1 Vout Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM0 Vout net6 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
RRF Vout net6 1K $[RP]
CC1 Vin net6 1p $[CP]
.ENDS

