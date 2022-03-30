** Generated for: hspiceD
** Generated on: Feb 22 18:43:15 2022
** Design library name: ALIGN_testcircuits
** Design cell name: top_mixer_rx_with_osc
** Design view name: schematic


** Library name: ALIGN_testcircuits
** Cell name: mixer_top_plate
** View name: schematic
.subckt mixer_top_plate clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias
xm3 rf_in clk270 v4 v4 nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm2 rf_in clk180 v3 v3 nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm1 rf_in clk90 v2 v2 nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm0 rf_in clk0 v1 v1 nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xc3 v4 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3 mf=1 mismatchflag=0
xc2 v3 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3 mf=1 mismatchflag=0
xc1 v1 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3 mf=1 mismatchflag=0
xc0 v2 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3 mf=1 mismatchflag=0
.ends mixer_top_plate
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: PMOS_BasebandAmp_1
** View name: schematic
.subckt PMOS_BasebandAmp_1 ibias in1 in2 out1 out2 vdd vss
xc0 out1 vss mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
xc1 out2 vss mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
xm6 out1 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 sigma=1 m=1 mismatchflag=0
xm1 out2 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 sigma=1 m=1 mismatchflag=0
xm5 ibias ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=8 sigma=1 m=1 mismatchflag=0
xm3 out1 in1 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm2 out2 in2 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm4 net07 ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
**Series configuration of R3
xr3_1__dmy0  out1 xr3_1__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_2__dmy0  xr3_1__dmy0 xr3_2__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_3__dmy0  xr3_2__dmy0 xr3_3__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_4__dmy0  xr3_3__dmy0 xr3_4__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_5__dmy0  xr3_4__dmy0 xr3_5__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_6__dmy0  xr3_5__dmy0 xr3_6__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_7__dmy0  xr3_6__dmy0 xr3_7__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_8__dmy0  xr3_7__dmy0 xr3_8__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_9__dmy0  xr3_8__dmy0 xr3_9__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr3_10__dmy0  xr3_9__dmy0 in1  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
**End of R3

**Series configuration of R1
xr1_1__dmy0  net011 xr1_1__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_2__dmy0  xr1_1__dmy0 xr1_2__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_3__dmy0  xr1_2__dmy0 xr1_3__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_4__dmy0  xr1_3__dmy0 xr1_4__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_5__dmy0  xr1_4__dmy0 xr1_5__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_6__dmy0  xr1_5__dmy0 xr1_6__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_7__dmy0  xr1_6__dmy0 xr1_7__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_8__dmy0  xr1_7__dmy0 xr1_8__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_9__dmy0  xr1_8__dmy0 xr1_9__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_10__dmy0  xr1_9__dmy0 xr1_10__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_11__dmy0  xr1_10__dmy0 xr1_11__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_12__dmy0  xr1_11__dmy0 xr1_12__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_13__dmy0  xr1_12__dmy0 xr1_13__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_14__dmy0  xr1_13__dmy0 xr1_14__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_15__dmy0  xr1_14__dmy0 xr1_15__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_16__dmy0  xr1_15__dmy0 xr1_16__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_17__dmy0  xr1_16__dmy0 xr1_17__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_18__dmy0  xr1_17__dmy0 xr1_18__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_19__dmy0  xr1_18__dmy0 xr1_19__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr1_20__dmy0  xr1_19__dmy0 out2  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
**End of R1

**Series configuration of R0
xr0_1__dmy0  out1 xr0_1__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_2__dmy0  xr0_1__dmy0 xr0_2__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_3__dmy0  xr0_2__dmy0 xr0_3__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_4__dmy0  xr0_3__dmy0 xr0_4__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_5__dmy0  xr0_4__dmy0 xr0_5__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_6__dmy0  xr0_5__dmy0 xr0_6__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_7__dmy0  xr0_6__dmy0 xr0_7__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_8__dmy0  xr0_7__dmy0 xr0_8__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_9__dmy0  xr0_8__dmy0 xr0_9__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_10__dmy0  xr0_9__dmy0 xr0_10__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_11__dmy0  xr0_10__dmy0 xr0_11__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_12__dmy0  xr0_11__dmy0 xr0_12__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_13__dmy0  xr0_12__dmy0 xr0_13__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_14__dmy0  xr0_13__dmy0 xr0_14__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_15__dmy0  xr0_14__dmy0 xr0_15__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_16__dmy0  xr0_15__dmy0 xr0_16__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_17__dmy0  xr0_16__dmy0 xr0_17__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_18__dmy0  xr0_17__dmy0 xr0_18__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_19__dmy0  xr0_18__dmy0 xr0_19__dmy0  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr0_20__dmy0  xr0_19__dmy0 net011  rppolys l=20e-6 w=600e-9 m=1 mf=1 mismatchflag=0
**End of R0

**Series configuration of R2
xr2_1__dmy0  out2 xr2_1__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_2__dmy0  xr2_1__dmy0 xr2_2__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_3__dmy0  xr2_2__dmy0 xr2_3__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_4__dmy0  xr2_3__dmy0 xr2_4__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_5__dmy0  xr2_4__dmy0 xr2_5__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_6__dmy0  xr2_5__dmy0 xr2_6__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_7__dmy0  xr2_6__dmy0 xr2_7__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_8__dmy0  xr2_7__dmy0 xr2_8__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_9__dmy0  xr2_8__dmy0 xr2_9__dmy0  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
xr2_10__dmy0  xr2_9__dmy0 in2  rppolys l=10e-6 w=600e-9 m=1 mf=1 mismatchflag=0
**End of R2

.ends PMOS_BasebandAmp_1
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: mixer_BBamp
** View name: schematic
.subckt mixer_BBamp clk0 clk180 clk270 clk90 _net3 _net2 ibias1 ibias2 _net1 _net0 rf_in vcmbias vdda vssa
xi0 clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias mixer_top_plate
xi2 ibias2 v2 v4 _net0 _net1 vdda vssa PMOS_BasebandAmp_1
xi1 ibias1 v1 v3 _net2 _net3 vdda vssa PMOS_BasebandAmp_1
.ends mixer_BBamp
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: OTA_IBIAS
** View name: schematic
.subckt OTA_IBIAS vdd vinn vinp vout vss
xm11 net023 vdd vss vss nmos_rf lr=240e-9 wr=600e-9 nr=1 sigma=1 m=1 mismatchflag=0
xm8 vout net014 vss vss nmos_rf lr=240e-9 wr=600e-9 nr=4 sigma=1 m=1 mismatchflag=0
xm6 net8 net8 vss vss nmos_rf lr=240e-9 wr=600e-9 nr=2 sigma=1 m=1 mismatchflag=0
xm5 net014 net8 vss vss nmos_rf lr=240e-9 wr=600e-9 nr=2 sigma=1 m=1 mismatchflag=0
xm10 net6 vdd net023 vss nmos_rf lr=240e-9 wr=600e-9 nr=1 sigma=1 m=1 mismatchflag=0
xm7 vout net6 vdd vdd pmos_rf lr=120e-9 wr=1e-6 nr=10 sigma=1 m=1 mismatchflag=0
xm0 net8 vinn net10 vdd pmos_rf lr=120e-9 wr=600e-9 nr=1 sigma=1 m=1 mismatchflag=0
xm3 net014 vinp net10 vdd pmos_rf lr=120e-9 wr=600e-9 nr=1 sigma=1 m=1 mismatchflag=0
xm1 net10 net6 vdd vdd pmos_rf lr=120e-9 wr=1e-6 nr=10 sigma=1 m=1 mismatchflag=0
xm2 net6 net6 vdd vdd pmos_rf lr=120e-9 wr=1e-6 nr=10 sigma=1 m=1 mismatchflag=0
xc0 vout net014 mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
.ends OTA_IBIAS
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: OTA_IBIAS_LCVCO_TOP
** View name: schematic
.subckt OTA_IBIAS_LCVCO_TOP lcvco_ibias<2> lcvco_ibias<1> lcvco_p1 lcvco_vbias vdd vpbias_rc vss
xi0 vdd lcvco_p1 lcvco_vbias vout1 vss OTA_IBIAS
**Series configuration of R2
xr2_1__dmy0  net026 xr2_1__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_2__dmy0  xr2_1__dmy0 xr2_2__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_3__dmy0  xr2_2__dmy0 xr2_3__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_4__dmy0  xr2_3__dmy0 xr2_4__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_5__dmy0  xr2_4__dmy0 xr2_5__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_6__dmy0  xr2_5__dmy0 xr2_6__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_7__dmy0  xr2_6__dmy0 xr2_7__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_8__dmy0  xr2_7__dmy0 xr2_8__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_9__dmy0  xr2_8__dmy0 xr2_9__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_10__dmy0  xr2_9__dmy0 xr2_10__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_11__dmy0  xr2_10__dmy0 xr2_11__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_12__dmy0  xr2_11__dmy0 xr2_12__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_13__dmy0  xr2_12__dmy0 xr2_13__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_14__dmy0  xr2_13__dmy0 xr2_14__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_15__dmy0  xr2_14__dmy0 xr2_15__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_16__dmy0  xr2_15__dmy0 xr2_16__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_17__dmy0  xr2_16__dmy0 xr2_17__dmy0  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
xr2_18__dmy0  xr2_17__dmy0 vpbias_rc  rppolys l=12.465e-6 w=400e-9 m=1 mf=1 mismatchflag=0
**End of R2

xm3 net026 vout1 lcvco_p1 vss nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm5 lcvco_ibias<1> vpbias_rc vdd vdd pmos_rf lr=120e-9 wr=6e-6 nr=26 sigma=1 m=1 mismatchflag=0
xm1 lcvco_ibias<2> vpbias_rc vdd vdd pmos_rf lr=120e-9 wr=6e-6 nr=24 sigma=1 m=1 mismatchflag=0
xm4 net026 net026 vdd vdd pmos_rf lr=120e-9 wr=6e-6 nr=24 sigma=1 m=2 mismatchflag=0
xc1 vpbias_rc vdd mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
.ends OTA_IBIAS_LCVCO_TOP
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: RF_MOSCapSwitch
** View name: schematic
.subckt RF_MOSCapSwitch c<2> c<3> c<4> c<5> c<6> c<7> c<8> in1 in2 vdd_tap vss
xm103 net022 c<2> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm101 net024 c<3> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm90 net036 c<5> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=3 sigma=1 m=1 mismatchflag=0
xm100 net025 c<8> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm89 net038 c<2> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm86 net011 c<8> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm88 net027 c<4> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm91 net035 c<6> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=6 sigma=1 m=1 mismatchflag=0
xm106 net019 c<7> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=10 sigma=1 m=1 mismatchflag=0
xm104 net021 c<5> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=3 sigma=1 m=1 mismatchflag=0
xm87 net028 c<3> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm92 net037 c<7> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=10 sigma=1 m=1 mismatchflag=0
xm102 net023 c<4> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm105 net020 c<6> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=6 sigma=1 m=1 mismatchflag=0
xc36 in1 net020 nmoscap lr=2e-6 wr=2e-6 m=1
xc39 in1 net025 nmoscap lr=4e-6 wr=4e-6 m=1
xc38 in1 net019 nmoscap lr=1e-6 wr=1e-6 m=8
xc29 in1 net021 nmoscap lr=1e-6 wr=1e-6 m=2
xc2 in2 net038 nmoscap lr=1e-6 wr=1e-6 m=1
xc1 in2 net027 nmoscap lr=1e-6 wr=1e-6 m=1
xc15 in2 net035 nmoscap lr=2e-6 wr=2e-6 m=1
xc25 in1 net023 nmoscap lr=1e-6 wr=1e-6 m=1
xc14 in2 net011 nmoscap lr=4e-6 wr=4e-6 m=1
xc6 in2 net036 nmoscap lr=1e-6 wr=1e-6 m=2
xc0 in2 net028 nmoscap lr=1e-6 wr=1e-6 m=1
xc26 in1 net022 nmoscap lr=1e-6 wr=1e-6 m=1
xc16 in2 net037 nmoscap lr=1e-6 wr=1e-6 m=8
xc24 in1 net024 nmoscap lr=1e-6 wr=1e-6 m=1
.ends RF_MOSCapSwitch
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: RF_LCVCO_new
** View name: schematic
.subckt RF_LCVCO_new c<2> c<3> c<4> c<5> c<6> c<7> c<8> ibias ind_ctrl inj_minus inj_plus in_m in_p out_m out_p vddd vssa vssd
xc0 out_m net031 mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
xc1 out_p net030 mimcap_sin lt=10e-6 wt=10e-6 mimflag=3 mf=1 mismatchflag=0
xl1 out_m out_p vssa spiral_sym_mu_z w=10e-6 nr=1 rad=90e-6 lay=9 spacing=2e-6 gdis=21e-6 m=1
xm8 out_p inj_minus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 sigma=1 m=1 mismatchflag=0
xm23 out_m out_p vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 sigma=1 m=1 mismatchflag=0
xm18 out_p out_m vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 sigma=1 m=1 mismatchflag=0
xm9 out_m inj_plus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 sigma=1 m=1 mismatchflag=0
xm21 out_m out_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 sigma=1 m=1 mismatchflag=0
xm35 out_m in_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm22 out_p out_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 sigma=1 m=1 mismatchflag=0
xm36 out_p in_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 sigma=1 m=1 mismatchflag=0
xm0 net031 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 sigma=1 m=1 mismatchflag=0
xm1 net030 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 sigma=1 m=1 mismatchflag=0
xi3 c<2> c<3> c<4> c<5> c<6> c<7> c<8> out_m out_p vddd vssd RF_MOSCapSwitch
.ends RF_LCVCO_new
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: Dual_LCVCO
** View name: schematic
.subckt Dual_LCVCO c<2> c<3> c<4> c<5> c<6> c<7> c<8> clk0 clk180 clk270 clk90 ind_ctrl inj_minus inj_plus vco_ibias<1> vco_ibias<2> vddd vssa vssd
xi1 c<2> c<3> c<4> c<5> c<6> c<7> c<8> vco_ibias<2> ind_ctrl vssd vssd clk180 clk0 clk90 clk270 vddd vssa vssd RF_LCVCO_new
xi0 c<2> c<3> c<4> c<5> c<6> c<7> c<8> vco_ibias<1> ind_ctrl inj_minus inj_plus clk90 clk270 clk0 clk180 vddd vssa vssd RF_LCVCO_new
.ends Dual_LCVCO
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: CML_Buffer_inverters
** View name: schematic
.subckt CML_Buffer_inverters ibiasdiff in inbar out outbar vdd vss
m14 b_0 a_0 net54 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m33 h_180 g_180 net92 vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m31 net92 ibiasdiff vss vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m32 h_0 g_0 net92 vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m23 e_0 d_0 net60 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m16 net38 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m17 c_0 b_0 net38 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m13 net114 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m22 net60 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m24 e_180 d_180 net60 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m27 f_180 e_180 net65 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m25 net65 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m26 f_0 e_0 net65 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m18 c_180 b_180 net38 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m21 d_0 c_0 net69 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m20 net69 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m15 net54 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m3 s_0 r_0 net112 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m28 g_180 f_180 net79 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m8 a_180 t_180 net35 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m29 net79 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m10 net35 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m30 g_0 f_0 net79 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m34 net115 ibiasdiff vss vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m6 t_0 s_0 net113 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m19 d_180 c_180 net69 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m5 t_180 s_180 net113 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m35 out h_0 net115 vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m7 net113 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m0 r_0 in net114 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m1 r_180 inbar net114 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m11 b_180 a_180 net54 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m4 s_180 r_180 net112 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m36 outbar h_180 net115 vss nch_lvt l=60e-9 w=16e-6 m=1 nf=8 sd=200e-9 ad=1.6e-12 as=1.9e-12 pd=17.6e-6 ps=21.9e-6 nrd=6.25e-3 nrs=6.25e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m9 a_0 t_0 net35 vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m2 net112 ibiasdiff vss vss nch_lvt l=60e-9 w=8e-6 m=1 nf=4 sd=200e-9 ad=800e-15 as=1.1e-12 pd=8.8e-6 ps=13.1e-6 nrd=12.5e-3 nrs=12.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
**Series configuration of R30
xr30_1__dmy0  vdd xr30_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr30_2__dmy0  xr30_1__dmy0 xr30_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr30_3__dmy0  xr30_2__dmy0 xr30_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr30_4__dmy0  xr30_3__dmy0 xr30_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr30_5__dmy0  xr30_4__dmy0 xr30_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr30_6__dmy0  xr30_5__dmy0 f_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R30

**Series configuration of R23
xr23_1__dmy0  vdd xr23_1__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr23_2__dmy0  xr23_1__dmy0 xr23_2__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr23_3__dmy0  xr23_2__dmy0 xr23_3__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr23_4__dmy0  xr23_3__dmy0 xr23_4__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr23_5__dmy0  xr23_4__dmy0 xr23_5__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr23_6__dmy0  xr23_5__dmy0 h_0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R23

**Series configuration of R22
xr22_1__dmy0  vdd xr22_1__dmy0  rppolyl l=20.445e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr22_2__dmy0  xr22_1__dmy0 h_180  rppolyl l=20.445e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R22

**Series configuration of R31
xr31_1__dmy0  vdd xr31_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr31_2__dmy0  xr31_1__dmy0 xr31_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr31_3__dmy0  xr31_2__dmy0 xr31_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr31_4__dmy0  xr31_3__dmy0 xr31_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr31_5__dmy0  xr31_4__dmy0 xr31_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr31_6__dmy0  xr31_5__dmy0 f_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R31

**Series configuration of R32
xr32_1__dmy0  vdd xr32_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr32_2__dmy0  xr32_1__dmy0 xr32_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr32_3__dmy0  xr32_2__dmy0 xr32_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr32_4__dmy0  xr32_3__dmy0 xr32_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr32_5__dmy0  xr32_4__dmy0 xr32_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr32_6__dmy0  xr32_5__dmy0 g_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R32

**Series configuration of R33
xr33_1__dmy0  vdd xr33_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr33_2__dmy0  xr33_1__dmy0 xr33_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr33_3__dmy0  xr33_2__dmy0 xr33_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr33_4__dmy0  xr33_3__dmy0 xr33_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr33_5__dmy0  xr33_4__dmy0 xr33_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr33_6__dmy0  xr33_5__dmy0 g_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R33

**Series configuration of R26
xr26_1__dmy0  vdd xr26_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr26_2__dmy0  xr26_1__dmy0 xr26_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr26_3__dmy0  xr26_2__dmy0 xr26_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr26_4__dmy0  xr26_3__dmy0 xr26_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr26_5__dmy0  xr26_4__dmy0 xr26_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr26_6__dmy0  xr26_5__dmy0 d_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R26

**Series configuration of R27
xr27_1__dmy0  vdd xr27_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr27_2__dmy0  xr27_1__dmy0 xr27_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr27_3__dmy0  xr27_2__dmy0 xr27_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr27_4__dmy0  xr27_3__dmy0 xr27_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr27_5__dmy0  xr27_4__dmy0 xr27_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr27_6__dmy0  xr27_5__dmy0 d_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R27

**Series configuration of R28
xr28_1__dmy0  vdd xr28_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr28_2__dmy0  xr28_1__dmy0 xr28_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr28_3__dmy0  xr28_2__dmy0 xr28_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr28_4__dmy0  xr28_3__dmy0 xr28_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr28_5__dmy0  xr28_4__dmy0 xr28_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr28_6__dmy0  xr28_5__dmy0 e_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R28

**Series configuration of R24
xr24_1__dmy0  vdd xr24_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr24_2__dmy0  xr24_1__dmy0 xr24_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr24_3__dmy0  xr24_2__dmy0 xr24_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr24_4__dmy0  xr24_3__dmy0 xr24_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr24_5__dmy0  xr24_4__dmy0 xr24_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr24_6__dmy0  xr24_5__dmy0 c_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R24

**Series configuration of R25
xr25_1__dmy0  vdd xr25_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr25_2__dmy0  xr25_1__dmy0 xr25_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr25_3__dmy0  xr25_2__dmy0 xr25_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr25_4__dmy0  xr25_3__dmy0 xr25_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr25_5__dmy0  xr25_4__dmy0 xr25_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr25_6__dmy0  xr25_5__dmy0 c_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R25

**Series configuration of R11
xr11_1__dmy0  vdd xr11_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr11_2__dmy0  xr11_1__dmy0 xr11_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr11_3__dmy0  xr11_2__dmy0 xr11_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr11_4__dmy0  xr11_3__dmy0 xr11_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr11_5__dmy0  xr11_4__dmy0 xr11_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr11_6__dmy0  xr11_5__dmy0 b_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R11

**Series configuration of R8
xr8_1__dmy0  vdd xr8_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr8_2__dmy0  xr8_1__dmy0 xr8_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr8_3__dmy0  xr8_2__dmy0 xr8_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr8_4__dmy0  xr8_3__dmy0 xr8_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr8_5__dmy0  xr8_4__dmy0 xr8_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr8_6__dmy0  xr8_5__dmy0 a_0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R8

**Series configuration of R9
xr9_1__dmy0  vdd xr9_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr9_2__dmy0  xr9_1__dmy0 xr9_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr9_3__dmy0  xr9_2__dmy0 xr9_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr9_4__dmy0  xr9_3__dmy0 xr9_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr9_5__dmy0  xr9_4__dmy0 xr9_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr9_6__dmy0  xr9_5__dmy0 a_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R9

**Series configuration of R10
xr10_1__dmy0  vdd xr10_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr10_2__dmy0  xr10_1__dmy0 xr10_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr10_3__dmy0  xr10_2__dmy0 xr10_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr10_4__dmy0  xr10_3__dmy0 xr10_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr10_5__dmy0  xr10_4__dmy0 xr10_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr10_6__dmy0  xr10_5__dmy0 b_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R10

**Series configuration of R29
xr29_1__dmy0  vdd xr29_1__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr29_2__dmy0  xr29_1__dmy0 xr29_2__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr29_3__dmy0  xr29_2__dmy0 xr29_3__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr29_4__dmy0  xr29_3__dmy0 xr29_4__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr29_5__dmy0  xr29_4__dmy0 xr29_5__dmy0  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr29_6__dmy0  xr29_5__dmy0 e_180  rppolyl l=13.615e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R29

**Series configuration of R4
xr4_1__dmy0  vdd xr4_1__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr4_2__dmy0  xr4_1__dmy0 xr4_2__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr4_3__dmy0  xr4_2__dmy0 xr4_3__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr4_4__dmy0  xr4_3__dmy0 s_180  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R4

**Series configuration of R1
xr1_1__dmy0  vdd xr1_1__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr1_2__dmy0  xr1_1__dmy0 xr1_2__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr1_3__dmy0  xr1_2__dmy0 xr1_3__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr1_4__dmy0  xr1_3__dmy0 xr1_4__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr1_5__dmy0  xr1_4__dmy0 xr1_5__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr1_6__dmy0  xr1_5__dmy0 outbar  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R1

**Series configuration of R0
xr0_1__dmy0  vdd xr0_1__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr0_2__dmy0  xr0_1__dmy0 xr0_2__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr0_3__dmy0  xr0_2__dmy0 xr0_3__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr0_4__dmy0  xr0_3__dmy0 xr0_4__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr0_5__dmy0  xr0_4__dmy0 xr0_5__dmy0  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr0_6__dmy0  xr0_5__dmy0 out  rppolyl l=6.815e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R0

**Series configuration of R3
xr3_1__dmy0  vdd xr3_1__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr3_2__dmy0  xr3_1__dmy0 xr3_2__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr3_3__dmy0  xr3_2__dmy0 xr3_3__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr3_4__dmy0  xr3_3__dmy0 t_0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R3

**Series configuration of R2
xr2_1__dmy0  vdd xr2_1__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr2_2__dmy0  xr2_1__dmy0 xr2_2__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr2_3__dmy0  xr2_2__dmy0 xr2_3__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr2_4__dmy0  xr2_3__dmy0 t_180  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R2

**Series configuration of R6
xr6_1__dmy0  vdd xr6_1__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr6_2__dmy0  xr6_1__dmy0 xr6_2__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr6_3__dmy0  xr6_2__dmy0 xr6_3__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr6_4__dmy0  xr6_3__dmy0 xr6_4__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr6_5__dmy0  xr6_4__dmy0 xr6_5__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr6_6__dmy0  xr6_5__dmy0 r_180  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R6

**Series configuration of R5
xr5_1__dmy0  vdd xr5_1__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr5_2__dmy0  xr5_1__dmy0 xr5_2__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr5_3__dmy0  xr5_2__dmy0 xr5_3__dmy0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr5_4__dmy0  xr5_3__dmy0 s_0  rppolyl l=20.42e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R5

**Series configuration of R7
xr7_1__dmy0  vdd xr7_1__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr7_2__dmy0  xr7_1__dmy0 xr7_2__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr7_3__dmy0  xr7_2__dmy0 xr7_3__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr7_4__dmy0  xr7_3__dmy0 xr7_4__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr7_5__dmy0  xr7_4__dmy0 xr7_5__dmy0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
xr7_6__dmy0  xr7_5__dmy0 r_0  rppolyl l=18.155e-6 w=2e-6 m=1 mf=1 mismatchflag=0
**End of R7

.ends CML_Buffer_inverters
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: nand_lo_rf
** View name: schematic
.subckt nand_lo_rf a b out vdd vss
m1 out a vdd vdd pch_lvt l=60e-9 w=1.6e-6 m=1 nf=8 sd=200e-9 ad=160e-15 as=190e-15 pd=3.2e-6 ps=3.9e-6 nrd=62.5e-3 nrs=62.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m0 out b vdd vdd pch_lvt l=60e-9 w=800e-9 m=1 nf=4 sd=200e-9 ad=80e-15 as=110e-15 pd=1.6e-6 ps=2.3e-6 nrd=125e-3 nrs=125e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m5 net5 a vss vss nch_lvt l=60e-9 w=1.6e-6 m=1 nf=8 sd=200e-9 ad=160e-15 as=190e-15 pd=3.2e-6 ps=3.9e-6 nrd=62.5e-3 nrs=62.5e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
m4 out b net5 vss nch_lvt l=60e-9 w=800e-9 m=1 nf=4 sd=200e-9 ad=80e-15 as=110e-15 pd=1.6e-6 ps=2.3e-6 nrd=125e-3 nrs=125e-3 sa=175e-9 sb=175e-9 sca=0 scb=0 scc=0
.ends nand_lo_rf
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: RF_INV
** View name: schematic
.subckt RF_INV a vddd vssd y
xm0 y a vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
xm1 y a vddd vddd pmos_rf lr=60e-9 wr=2e-6 nr=16 sigma=1 m=1 mismatchflag=0
.ends RF_INV
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: CLOCK_GEN_BLOCK
** View name: schematic
.subckt CLOCK_GEN_BLOCK c<2> c<3> c<4> c<5> c<6> c<7> c<8> clk0_buf clk180_buf clk270_buf clk90_buf ind_ctrl inj_minus inj_plus lcvco_p1 lcvco_vbias vddd vssa vssd
xi0 lcvco_ibias<2> lcvco_ibias<1> lcvco_p1 lcvco_vbias vddd vpbias_rc vssd OTA_IBIAS_LCVCO_TOP
xi1 c<2> c<3> c<4> c<5> c<6> c<7> c<8> clk0 clk180 clk270 clk90 ind_ctrl inj_minus inj_plus lcvco_ibias<1> lcvco_ibias<2> vddd vssa vssd Dual_LCVCO
xi4 ibiasdiff clk270 clk90 clk270_cml clk90_cml vddd vssd CML_Buffer_inverters
xi3 ibiasdiff clk180 clk0 clk180_cml clk0_cml vddd vssd CML_Buffer_inverters
xi8 clk270_cml clk180_cml clkb270 vddd vssd nand_lo_rf
xi7 clk90_cml clk0_cml clkb90 vddd vssd nand_lo_rf
xi6 clk180_cml clk90_cml clkb180 vddd vssd nand_lo_rf
xi5 clk0_cml clk270_cml clkb0 vddd vssd nand_lo_rf
xi12 clkb270 vddd vssd clk270_buf RF_INV
xi11 clkb180 vddd vssd clk180_buf RF_INV
xi10 clkb90 vddd vssd clk90_buf RF_INV
xi9 clkb0 vddd vssd clk0_buf RF_INV
.ends CLOCK_GEN_BLOCK
** End of subcircuit definition.

** Library name: ALIGN_testcircuits
** Cell name: top_mixer_rx_with_osc
** View name: schematic
.subckt top_mixer_rx_with_osc c<2> c<3> c<4> c<5> c<6> c<7> c<8> _net0 _net1 ibias1 ibias2 ind_ctrl inj_minus inj_plus lcvco_p1 lcvco_vbias _net2 _net3 rf_in vcmbias vdda vddd vssa vssd
xi0 clk0 clk180 clk270 clk90 _net0 _net1 ibias1 ibias2 _net2 _net3 rf_in vcmbias vdda vssa mixer_BBamp
xi1 c<2> c<3> c<4> c<5> c<6> c<7> c<8> clk0 clk180 clk270 clk90 ind_ctrl inj_minus inj_plus lcvco_p1 lcvco_vbias vddd vssa vssd CLOCK_GEN_BLOCK
.ends top_mixer_rx_with_osc
** End of subcircuit definition.
.END
