************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential_cascode_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:05:09 2019
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
* Cell Name:    fully_differential_cascode_pmos
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential_cascode_pmos vbiasn1 vbiasn2 vbiasp votan votap voutp1 voutp2
*.PININFO vbiasp:I votan:I votap:I vbiasn1:O vbiasn2:O voutp1:O voutp2:O
MM1 voutp2 vbiasn2 net17 gnd! nmos w=WA l=LA nfin=nA
MM0 voutp1 vbiasn2 net18 gnd! nmos w=WA l=LA nfin=nA
MM9 net18 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 net17 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM5 net13 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM7 voutp1 votan net13 net20 pmos w=WA l=LA nfin=nA
MM6 voutp2 votap net13 net20 pmos w=WA l=LA nfin=nA
.ENDS

