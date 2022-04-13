************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_folded_cascode_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:03:18 2019
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
* Cell Name:    Fully_differential_folded_cascode_pmos
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_folded_cascode_pmos vbiasn1 vbiasn2 vbiasp vbiasp1 vbiasp2 votan votap voutn voutp
*.PININFO vbiasn1:I vbiasn2:I vbiasp:I vbiasp1:I vbiasp2:I votan:I votap:I
*.PININFO voutn:O voutp:O
MM8 voutn vbiasn2 net23 gnd! nmos w=WA l=LA nfin=nA
MM7 voutp vbiasn2 net22 gnd! nmos w=WA l=LA nfin=nA
MM10 net23 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM9 net22 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM0 net12 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net26 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 net24 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM4 net22 votan net12 net27 pmos w=WA l=LA nfin=nA
MM3 net23 votap net12 net27 pmos w=WA l=LA nfin=nA
MM6 voutn vbiasp2 net26 vdd! pmos w=WA l=LA nfin=nA
MM5 voutp vbiasp2 net24 vdd! pmos w=WA l=LA nfin=nA
.ENDS

