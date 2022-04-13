************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential_miller_compensated
* view Name:     schematic
* Netlisted on:  Sep 11 21:05:48 2019
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
* Cell Name:    fully_differential_miller_compensated
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential_miller_compensated vbiasn vbiasp votan votap voutn voutp
*.PININFO vbiasn:I vbiasp:I votan:I votap:I voutn:O voutp:O
MM7 voutp net15 vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 net22 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net15 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM5 voutn net22 vdd! vdd! pmos w=WA l=LA nfin=nA
MM8 voutp vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM3 net22 votap net21 gnd! nmos w=WA l=LA nfin=nA
MM0 net15 votan net21 gnd! nmos w=WA l=LA nfin=nA
MM4 net21 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM6 voutn vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
CC1 voutp net15 1p
CC0 voutn net22 1p
.ENDS

