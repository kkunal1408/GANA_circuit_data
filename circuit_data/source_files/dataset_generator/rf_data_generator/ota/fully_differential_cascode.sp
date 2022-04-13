************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential_cascode
* view Name:     schematic
* Netlisted on:  Sep 11 21:04:46 2019
************************************************************************

*.BIPOLAR
*.RESI = 2000
*.RESvAL
*.CAPvAL
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
* Library Name: OTA_class
* Cell Name:    fully_differential_cascode
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential_cascode vbiasn vbiasp1 vbiasp2 votan votap voutn voutp
*.PININFO vbiasn:I vbiasp1:I vbiasp2:I votan:I votap:I voutn:O voutp:O
MM3 voutn votap net16 gnd! nmos w=WA l=LA nfin=nA
MM0 voutp votan net16 gnd! nmos w=WA l=LA nfin=nA
MM4 net16 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM6 voutp vbiasp2 net22 vdd! pmos w=WA l=LA nfin=nA
MM5 voutn vbiasp2 net21 vdd! pmos w=WA l=LA nfin=nA
MM1 net21 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net22 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
.ENDS

