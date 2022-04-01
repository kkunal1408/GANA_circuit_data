.subckt mixer_top_plate clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias
xm3 rf_in clk270 v4 v4 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
xm2 rf_in clk180 v3 v3 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
xm1 rf_in clk90 v2 v2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
xm0 rf_in clk0 v1 v1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
xc3 v4 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3
xc2 v3 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3
xc1 v1 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3
xc0 v2 vcmbias mimcap_sin lt=100e-6 wt=100e-6 mimflag=3
.ends mixer_top_plate

.subckt PMOS_BasebandAmp_1 ibias in1 in2 out1 out2 vdd vss
xc0 out1 vss mimcap_sin lt=10e-6 wt=10e-6 mimflag=3
xc1 out2 vss mimcap_sin lt=10e-6 wt=10e-6 mimflag=3
xm6 out1 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 m=1
xm1 out2 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 m=1
xm5 ibias ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=8 m=1
xm3 out1 in1 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 m=1
xm2 out2 in2 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 m=1
xm4 net07 ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=16 m=1
xr3  out1 in1  rppolys l=10e-6 w=600e-9 m=10
xr1  net011 out2  rppolys l=20e-6 w=600e-9 m=20
xr0  out1 net011  rppolys l=20e-6 w=600e-9 m=20
xr2  out2 in2  rppolys l=10e-6 w=600e-9 m=10
.ends PMOS_BasebandAmp_1

.subckt RF_MOSCapSwitch c<2> c<3> c<4> c<5> c<6> c<7> c<8> in1 in2 vdd_tap vss
xm103 net022 c<2> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm101 net024 c<3> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm90 net036 c<5> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=3 m=1
xm100 net025 c<8> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=16 m=1
xm89 net038 c<2> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm86 net011 c<8> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=16 m=1
xm88 net027 c<4> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm91 net035 c<6> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=6 m=1
xm106 net019 c<7> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=10 m=1
xm104 net021 c<5> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=3 m=1
xm87 net028 c<3> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm92 net037 c<7> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=10 m=1
xm102 net023 c<4> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=2 m=1
xm105 net020 c<6> vss vss nmos_rf lr=60e-9 wr=4e-6 nr=6 m=1
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

.subckt RF_LCVCO_new c<2> c<3> c<4> c<5> c<6> c<7> c<8> ibias ind_ctrl inj_minus inj_plus in_m in_p out_m out_p vddd vssa vssd
xc0 out_m net031 mimcap_sin lt=10e-6 wt=10e-6 mimflag=3
xc1 out_p net030 mimcap_sin lt=10e-6 wt=10e-6 mimflag=3
xl1 out_m out_p vssa spiral_sym_mu_z w=10e-6 nr=1 rad=90e-6 lay=9 m=1
xm8 out_p inj_minus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
xm23 out_m out_p vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
xm18 out_p out_m vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
xm9 out_m inj_plus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
xm21 out_m out_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
xm35 out_m in_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
xm22 out_p out_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
xm36 out_p in_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
xm0 net031 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 m=1
xm1 net030 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 m=1
xi3 c<2> c<3> c<4> c<5> c<6> c<7> c<8> out_m out_p vddd vssd RF_MOSCapSwitch
.ends RF_LCVCO_new

.subckt top_mixer_rx_with_osc c<2> c<3> c<4> c<5> c<6> c<7> c<8> _net0 _net1 ibias1 ibias2 ind_ctrl inj_minus inj_plus lcvco_ibias1 lcvco_ibias2 _net2 _net3 rf_in vcmbias vdda vddd vssa vssd
xi0 clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias mixer_top_plate
xi2 ibias2 v2 v4 _net0 _net1 vdda vssa PMOS_BasebandAmp_1
xi1 ibias1 v1 v3 _net2 _net3 vdda vssa PMOS_BasebandAmp_1
xi3 c<2> c<3> c<4> c<5> c<6> c<7> c<8> vco_ibias2 ind_ctrl vssd vssd clk180 clk0 clk90 clk270 vddd vssa vssd RF_LCVCO_new
xi4 c<2> c<3> c<4> c<5> c<6> c<7> c<8> vco_ibias1 ind_ctrl inj_minus inj_plus clk90 clk270 clk0 clk180 vddd vssa vssd RF_LCVCO_new
.ends top_mixer_rx_with_osc