************************************************************************
* auCdl Netlist:
*
* Library Name:  OTA_class
* Top Cell Name: Fully_differential_current_mirror
* view Name:     schematic
* Netlisted on:  Sep 11 21:01:53 2019
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
* Cell Name:    Fully_differential_current_mirror
* view Name:    schematic
************************************************************************

.SUBCKT Fully_differential_current_mirror vbiasn vbiasn1 votan votap voutn voutp
*.PININFO vbiasn:I vbiasn1:I votan:I votap:I voutn:O voutp:O
MM3 net23 votap net19 gnd! nmos w=WA l=LA nfin=nA
MM0 net15 votan net19 gnd! nmos w=WA l=LA nfin=nA
MM4 net19 vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 voutp vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM7 voutn vbiasn1 gnd! gnd! nmos w=WA l=LA nfin=nA
MM6 voutp net15 vdd! vdd! pmos w=WA l=LA nfin=nA
MM5 voutn net23 vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 net23 net23 vdd! vdd! pmos w=WA l=LA nfin=nA
MM2 net15 net15 vdd! vdd! pmos w=WA l=LA nfin=nA
.ENDS

