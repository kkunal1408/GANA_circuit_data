************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_cascode_current_mirror_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:02:31 2019
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
* Cell Name:    Fully_differential_cascode_current_mirror_pmos
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_cascode_current_mirror_pmos vbiasn1 vbiasn2 vbiasp vbiasp1 vbiasp2 votan votap voutn voutp
*.PININFO vbiasn1:I vbiasn2:I vbiasp:I vbiasp1:I vbiasp2:I votan:I votap:I
*.PININFO voutn:O voutp:O
MM1 voutp vbiasn2 net37 gnd! nmos w=WA l=LA nfin=nA
MM0 voutn vbiasn2 net29 gnd! nmos w=WA l=LA nfin=nA
MM9 net35 vbiasn2 net34 gnd! nmos w=WA l=LA nfin=nA
MM8 net31 vbiasn2 net30 gnd! nmos w=WA l=LA nfin=nA
MM12 net37 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM11 net29 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM10 net34 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM4 net30 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM14 net36 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM13 net28 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM3 voutp vbiasp2 net36 vdd! pmos w=WA l=LA nfin=nA
MM2 voutn vbiasp2 net28 vdd! pmos w=WA l=LA nfin=nA
MM5 net17 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM7 net35 votan net17 net32 pmos w=WA l=LA nfin=nA
MM6 net31 votap net17 net32 pmos w=WA l=LA nfin=nA
.ENDS

