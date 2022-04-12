************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential
* view Name:     schematic
* Netlisted on:  Sep 11 21:04:32 2019
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
* Cell Name:    fully_differential
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential vbiasn vbiasp votan votap voutn voutp
*.PININFO vbiasn:I vbiasp:I votan:I votap:I voutn:O voutp:O
MM1 voutn vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 voutp vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM4 net14 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM3 voutn votap net14 gnd! nmos w=WA l=LA nfin=nA
MM0 voutp votan net14 gnd! nmos w=WA l=LA nfin=nA
.ENDS

