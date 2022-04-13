************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 15_lna_cs_load_switching
* View Name:     schematic
* Netlisted on:  Apr  4 12:20:15 2019
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

*.GLOBAL vdd!
* *+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    15_lna_cs_load_switching
* View Name:    schematic
************************************************************************

.SUBCKT 15_lna_cs_load_switching GS1 GS2 vbiasn vantenna vrf
*.PININFO GS1:I GS2:I Vb:I vantenna:I vrf:O
RR0 vrf vdd! res=1K
RRb gnd! net15 res=1K
CC1 vantenna net15 1p
MM0 vrf vbiasn net15 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! vrf ind=1n
MM2 vrf GS2 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM1 vrf GS1 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

