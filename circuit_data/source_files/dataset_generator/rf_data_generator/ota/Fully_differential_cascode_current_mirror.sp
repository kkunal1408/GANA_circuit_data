************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_cascode_current_mirror
* view Name:     schematic
* Netlisted on:  Sep 11 21:02:16 2019
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

*.GLOBAL gnd!
*+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: OTA_class
* Cell Name:    Fully_differential_cascode_current_mirror
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_cascode_current_mirror vbiasn vbiasn1 vbiasn2  vbiasp1 vbiasp2 votan votap voutn voutp
*.PININFO vbiasn:I vbiasn1:I vbiasn2:I vbiasp1:I vbiasp2:I votan:I votap:I
*.PININFO voutn:O voutp:O
MM3 net22 votap net9 gnd! nmos w=WA l=LA nfin=nA
MM0 net31 votan net9 gnd! nmos w=WA l=LA nfin=nA
MM4 net9 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM14 voutp vbiasn2 net34 gnd! nmos w=WA l=LA nfin=nA
MM13 voutn vbiasn2 net21 gnd! nmos w=WA l=LA nfin=nA
MM8 net34 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM7 net21 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM2 net32 vbiasp2 vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 net23 vbiasp2 vdd! vdd! pmos w=WA l=LA nfin=nA
MM6 net33 vbiasp2 vdd! vdd! pmos w=WA l=LA nfin=nA
MM5 net20 vbiasp2 vdd! vdd! pmos w=WA l=LA nfin=nA
MM12 net31 vbiasp1 net32 vdd! pmos w=WA l=LA nfin=nA
MM11 net22 vbiasp1 net23 vdd! pmos w=WA l=LA nfin=nA
MM10 voutp vbiasp1 net33 vdd! pmos w=WA l=LA nfin=nA
MM9 voutn vbiasp1 net20 vdd! pmos w=WA l=LA nfin=nA
.ENDS

