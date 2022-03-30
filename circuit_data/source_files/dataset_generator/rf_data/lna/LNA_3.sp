************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 3_CS_active_load
* View Name:     schematic
* Netlisted on:  Apr  4 10:11:33 2019
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
* Cell Name:    3_CS_active_load
* View Name:    schematic
************************************************************************

.SUBCKT 3_CS_active_load Vbiasp Vin Vout
*.PININFO Vbiasp:I Vin:I Vout:O
MM2 net21 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM1 Vout Vout net21 net21 pmos_rvt w=27n l=20n nfin=1
RRF Vout net23 res=1K
CC2 gnd! net21 1p
CC1 Vin net23 1p
MM0 Vout net23 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

