************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_miller_compensated_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:03:30 2019
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
* Cell Name:    Fully_differential_miller_compensated_pmos
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_miller_compensated_pmos vbiasn1 vbiasp votan votap voutn voutp
*.PININFO vbiasn1:I vbiasp:I votan:I votap:I voutn:O voutp:O
MM1 voutn net21 gnd! gnd! nmos w=WA l=LA nfin=nA
MM13 voutp net25 gnd! gnd! nmos w=WA l=LA nfin=nA
MM9 net25 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 net21 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM0 voutn vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM12 voutp vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM11 net17 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM10 net25 votan net17 net28 pmos w=WA l=LA nfin=nA
MM7 net21 votap net17 net28 pmos w=WA l=LA nfin=nA
CC0 voutn net21 1p
CC2 voutp net25 1p
.ENDS

