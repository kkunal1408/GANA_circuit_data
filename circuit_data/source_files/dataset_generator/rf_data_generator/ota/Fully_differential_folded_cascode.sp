************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_folded_cascode
* view Name:     schematic
* Netlisted on:  Sep 11 21:03:06 2019
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
* Cell Name:    Fully_differential_folded_cascode
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_folded_cascode vbiasn vbiasn1 vbiasn2 vbiasp1 vbiasp2 votan votap voutn
*.PININFO vbiasn:I vbiasn1:I vbiasn2:I vbiasp1:I vbiasp2:I votan:I votap:I
*.PININFO voutn:O
MM6 net26 vbiasp2 net23 vdd! pmos w=WA l=LA nfin=nA
MM5 voutn vbiasp2 net24 vdd! pmos w=WA l=LA nfin=nA
MM2 net23 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 net24 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM8 net26 vbiasn2 net27 gnd! nmos w=WA l=LA nfin=nA
MM7 voutn vbiasn2 net25 gnd! nmos w=WA l=LA nfin=nA
MM3 net24 votap net13 gnd! nmos w=WA l=LA nfin=nA
MM0 net23 votan net13 gnd! nmos w=WA l=LA nfin=nA
MM10 net27 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM9 net25 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM4 net13 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
.ENDS

