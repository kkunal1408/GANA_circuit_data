************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 15_resistance_cancelling_lna
* View Name:     schematic
* Netlisted on:  Apr  4 12:18:51 2019
************************************************************************

*.BIPOLAR
*.RESI = 2000
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL gnd!
* **+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    15_resistance_cancelling_lna
* View Name:    schematic
************************************************************************

.SUBCKT 16_resistance_cancelling_lna vbiasn vantenna vrfn vrfp
*.PININFO vbiasn:I vantenna:I vrfn:O vrfp:O
RR3 vrfn vdd! res=1K
RR0 net9 vdd! res=1K
RR4 vrfp vdd! res=1K
CC1 vantenna vrfp 1p
MM8 vrfp vrfn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM7 vrfn net9 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM6 vrfp vbiasn gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 net9 vrfp gnd! gnd! nmos_rvt w=27n l=20n nfin=1
.ENDS

