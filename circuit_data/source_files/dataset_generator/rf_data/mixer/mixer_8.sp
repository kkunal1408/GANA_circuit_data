************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 8_passive_with_gain_stage_bias_bath_baseband_output
* View Name:     schematic
* Netlisted on:  Apr  4 10:05:04 2019
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
+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    8_passive_with_gain_stage_bias_bath_baseband_output
* View Name:    schematic
************************************************************************

.SUBCKT 8_passive_with_gain_stage_bias_bath_baseband_output Vbiasp Vinn Voutn
+ Voutp vlom vlop
*.PININFO Vbiasp:I Vinn:I vlom:I vlop:I Voutn:O Voutp:O
CC0 Vinn net26 1p
CC1 net40 gnd! 1p
CC5 vlop net37 1p
CC4 vlom net38 1p
MM2 net40 net40 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM4 net26 net37 net30 gnd! nmos_rvt w=27n l=20n nfin=1
MM1 Voutp net30 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 Voutn net29 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM5 net26 net38 net29 gnd! nmos_rvt w=27n l=20n nfin=1
RR5 net40 net30 1K $[RP]
RR4 net40 net29 1K $[RP]
RR2 Voutp vdd! 1K $[RP]
RR0 Voutn vdd! 1K $[RP]
RR1 net37 net30 1K $[RP]
RR3 net38 net29 1K $[RP]
MM3 net40 Vbiasp vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

