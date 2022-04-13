************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_current_mirror_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:02:54 2019
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
* Cell Name:    Fully_differential_current_mirror_pmos
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_current_mirror_pmos vbiasp vbiasp1 votan votap voutn voutp
*.PININFO vbiasp:I vbiasp1:I votan:I votap:I voutn:O voutp:O
MM1 voutp net13 gnd! gnd! nmos w=WA l=LA nfin=nA
MM9 net13 net13 gnd! gnd! nmos w=WA l=LA nfin=nA
MM0 voutn net19 gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 net19 net19 gnd! gnd! nmos w=WA l=LA nfin=nA
MM3 voutp vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 voutn vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM5 net17 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM7 net13 votan net17 net24 pmos w=WA l=LA nfin=nA
MM6 net19 votap net17 net24 pmos w=WA l=LA nfin=nA
.ENDS

