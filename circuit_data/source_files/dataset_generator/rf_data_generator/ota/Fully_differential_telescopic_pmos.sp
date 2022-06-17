************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_telescopic_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:04:07 2019
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
* Cell Name:    Fully_differential_telescopic_pmos
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_telescopic_pmos vbiasn1 vbiasn2 vbiasp votan votap voutn voutp
*.PININFO vbiasn1:I vbiasn2:I vbiasp:I votan:I votap:I voutn:O voutp:O
MM0 voutp vbiasn2 net12 net12 nmos w=WA l=LA nfin=nA
MM1 voutn vbiasn2 net17 net17 nmos w=WA l=LA nfin=nA
MM8 net17 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM9 net12 vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM5 net14 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM7 voutp votan net14 net18 pmos w=WA l=LA nfin=nA
MM6 voutn votap net14 net18 pmos w=WA l=LA nfin=nA
.ENDS

