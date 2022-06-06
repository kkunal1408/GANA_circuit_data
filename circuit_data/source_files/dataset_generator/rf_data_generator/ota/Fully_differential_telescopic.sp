************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_telescopic
* view Name:     schematic
* Netlisted on:  Sep 11 21:03:54 2019
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
* Cell Name:    Fully_differential_telescopic
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_telescopic vbiasn vbiasp1 vbiasp2 votan votap voutn voutp
*.PININFO vbiasn:I vbiasp1:I vbiasp2:I votan:I votap:I voutn:O voutp:O
MM5 voutp vbiasp2 net18 net18 pmos w=WA l=LA nfin=nA
MM6 voutn vbiasp2 net13 net13 pmos w=WA l=LA nfin=nA
MM1 net18 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net13 vbiasp1 vdd! vdd! pmos w=WA l=LA nfin=nA
MM3 voutp votap net16 gnd! nmos w=WA l=LA nfin=nA
MM0 voutn votan net16 gnd! nmos w=WA l=LA nfin=nA
MM4 net16 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
.ENDS

