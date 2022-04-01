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
xr3  out1 in1  rppolys l=10e-6 w=600e-9 m=10 mf=1 mismatchflag=0
xr1  net011 out2  rppolys l=20e-6 w=600e-9 m=20 mf=1 mismatchflag=0
xr0  out1 net011  rppolys l=20e-6 w=600e-9 m=20 mf=1 mismatchflag=0
xr2  out2 in2  rppolys l=10e-6 w=600e-9 m=10 mf=1 mismatchflag=0
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
xr2  net026 vpbias_rc  rppolys l=12.465e-6 w=400e-9 m=18 mf=1 mismatchflag=0
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
xr30  vdd f_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr23  vdd h_0  rppolyl l=6.815e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr22  vdd h_180  rppolyl l=20.445e-6 w=2e-6 m=2 mf=1 mismatchflag=0
xr31  vdd f_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr32  vdd g_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr33  vdd g_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr26  vdd d_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr27  vdd d_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr28  vdd e_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr24  vdd c_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr25  vdd c_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr11  vdd b_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr8  vdd a_0  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr9  vdd a_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr10  vdd b_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr29  vdd e_180  rppolyl l=13.615e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr4  vdd s_180  rppolyl l=20.42e-6 w=2e-6 m=4 mf=1 mismatchflag=0
xr1  vdd outbar  rppolyl l=6.815e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr0  vdd out  rppolyl l=6.815e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr3  vdd t_0  rppolyl l=20.42e-6 w=2e-6 m=4 mf=1 mismatchflag=0
xr2  vdd t_180  rppolyl l=20.42e-6 w=2e-6 m=4 mf=1 mismatchflag=0
xr6  vdd r_180  rppolyl l=18.155e-6 w=2e-6 m=6 mf=1 mismatchflag=0
xr5  vdd s_0  rppolyl l=20.42e-6 w=2e-6 m=4 mf=1 mismatchflag=0
xr7  vdd r_0  rppolyl l=18.155e-6 w=2e-6 m=6 mf=1 mismatchflag=0
**End of R7
.ends CML_Buffer_inverters


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
