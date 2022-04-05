************************************************************************
* auCdl Netlist:
*
* Library Name:  RF_mixer
* Top Cell Name: 5_output_combining_single_balanced_sampling_mixer
* View Name:     schematic
* Netlisted on:  Apr  4 10:03:58 2019
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
*+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: RF_mixer
* Cell Name:    5_output_combining_single_balanced_sampling_mixer
* View Name:    schematic
************************************************************************

.SUBCKT 5_output_combining_single_balanced_sampling_mixer vbiasn vrfn vrfp vlon vlop voutn voutp
*.PININFO vbiasn:I vrfn:I vrfp:I vlon:I vlop:I
RR5 vbiasn net024 res=1K
RR4 vbiasn net023 res=1K
RR3 vbiasn net026 res=1K
RR1 vbiasn net025 res=1K
RR0 voutn vdd! res=1K
RR2 voutp vdd! res=1K
MM7 vrfp net026 net016 gnd! nmos_rvt w=27n l=20n nfin=1
MM6 vrfp net023 net017 gnd! nmos_rvt w=27n l=20n nfin=1
MM5 vrfn net025 net45 gnd! nmos_rvt w=27n l=20n nfin=1
MM4 vrfn net024 net43 gnd! nmos_rvt w=27n l=20n nfin=1
MM3 voutn net017 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM2 voutp net016 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM1 voutp net43 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
MM0 voutn net45 gnd! gnd! nmos_rvt w=27n l=20n nfin=1
CC7 vlop net023 1p
CC6 net026 vlon 1p
CC5 vlop net024 1p
CC4 net025 vlon 1p
CC2 net45 gnd! 1p
CC0 net017 gnd! 1p
CC3 net016 gnd! 1p
CC1 net43 gnd! 1p
.ENDS

