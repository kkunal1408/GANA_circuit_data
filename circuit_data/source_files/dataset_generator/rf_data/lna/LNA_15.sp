************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_LNA
* Top Cell Name: 15_CS_load_switching
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
* +        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_LNA
* Cell Name:    15_CS_load_switching
* View Name:    schematic
************************************************************************

.SUBCKT 15_CS_load_switching GS1 GS2 Vb Vin Vout
*.PININFO GS1:I GS2:I Vb:I Vin:I Vout:O
RR0 Vout vdd! 1K
RRb gnd! net15 1K
CC1 Vin net15 1p
MM0 Vout Vb net15 gnd! nmos_rvt w=27n l=20n nfin=1
LL0 vdd! Vout 1n
MM2 Vout GS2 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM1 Vout GS1 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

