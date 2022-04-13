************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential_gain_boosting
* view Name:     schematic
* Netlisted on:  Sep 11 21:05:36 2019
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

.SUBCKT fully_differential votan votap voutn voutp
*.PININFO votan:I votap:I voutn:O voutp:O
MM1 voutn vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 voutp vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM4 net14 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM3 voutn votap net14 gnd! nmos w=WA l=LA nfin=nA
MM0 voutp votan net14 gnd! nmos w=WA l=LA nfin=nA
.ENDS

************************************************************************
* Library Name: OTA_class
* Cell Name:    fully_differential_gain_boosting
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential_gain_boosting vbiasn vbiasp votan votap voutn voutp
*.PININFO vbiasn:I votan:I votap:I vbiasp:O voutn:O voutp:O
MM8 voutn net22 net23 gnd! nmos w=WA l=LA nfin=nA
MM7 voutp net19 net21 gnd! nmos w=WA l=LA nfin=nA
MM3 net23 votap net15 gnd! nmos w=WA l=LA nfin=nA
MM0 net21 votan net15 gnd! nmos w=WA l=LA nfin=nA
MM4 net15 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM6 voutn net24 net25 vdd pmos w=WA l=LA nfin=nA
MM5 voutp net20 net12 vdd pmos w=WA l=LA nfin=nA
MM1 net25 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net12 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
XI3 net12 net25 net24 net20 / fully_differential
XI1 net23 net21 net19 net22 / fully_differential
.ENDS

