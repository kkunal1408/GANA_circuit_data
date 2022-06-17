************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: fully_differential_pmos
* view Name:     schematic
* Netlisted on:  Sep 11 21:06:01 2019
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
* Cell Name:    fully_differential_pmos
* view Name:    schematic
************************************************************************

.SUBCKT fully_differential_pmos vbiasn vbiasp votan votap voutn voutp
*.PININFO vbiasp:I votan:I votap:I vbiasn:O voutn:O voutp:O
MM7 voutp votan net12 net16 pmos w=WA l=LA nfin=nA
MM6 voutn votap net12 net16 pmos w=WA l=LA nfin=nA
MM5 net12 vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM9 voutp vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 voutn vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
.ENDS

