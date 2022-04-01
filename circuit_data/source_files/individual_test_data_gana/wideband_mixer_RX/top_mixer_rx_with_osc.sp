.subckt mixer_top_plate clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias
m3 rf_in clk270 v4 v4 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m2 rf_in clk180 v3 v3 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m1 rf_in clk90 v2 v2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m0 rf_in clk0 v1 v1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
c3 v4 vcmbias cap=10pF
c2 v3 vcmbias cap=10pF
c1 v1 vcmbias cap=10pF
c0 v2 vcmbias cap=10pF
.ends mixer_top_plate

.subckt PMOS_BasebandAmp_1 ibias in1 in2 out1 out2 vdd vss
c0 out1 vss cap=10pF
c1 out2 vss cap=10pF
m6 out1 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 m=1
m1 out2 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12 m=1
m5 ibias ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=8 m=1
m3 out1 in1 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 m=1
m2 out2 in2 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16 m=1
m4 net07 ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=16 m=1
r3  out1 in1  res=10K
r1  net011 out2  res=20K
r0  out1 net011  res=20K
r2  out2 in2  res=20K
.ends PMOS_BasebandAmp_1

.subckt RF_LCVCO_new ibias ind_ctrl inj_minus inj_plus in_m in_p out_m out_p vddd vssa vssd
c0 out_m net031 cap=10pF
c1 out_p net030 cap=10pF
Xl1 out_m out_p vddd vssa spiral_sym_mu_z w=10e-6 nr=1 rad=90e-6 lay=9 m=1
m8 out_p inj_minus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
m23 out_m out_p vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
m18 out_p out_m vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
m9 out_m inj_plus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
m21 out_m out_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
m35 out_m in_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
m22 out_p out_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
m36 out_p in_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
m0 net031 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 m=1
m1 net030 ind_ctrl vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=10 m=1
.ends RF_LCVCO_new

.subckt top_mixer_rx_with_osc _net0 _net1 ibias1 ibias2 ind_ctrl inj_minus inj_plus lcvco_ibias1 lcvco_ibias2 _net2 _net3 rf_in vcmbias vdda vddd vssa vssd
xi0 clk0 clk180 clk270 clk90 rf_in v1 v2 v3 v4 vcmbias mixer_top_plate
xi2 ibias2 v2 v4 _net0 _net1 vdda vssa PMOS_BasebandAmp_1
xi1 ibias1 v1 v3 _net2 _net3 vdda vssa PMOS_BasebandAmp_1
xi3 vco_ibias2 ind_ctrl vssd vssd clk180 clk0 clk90 clk270 vddd vssa vssd RF_LCVCO_new
xi4 vco_ibias1 ind_ctrl inj_minus inj_plus clk90 clk270 clk0 clk180 vddd vssa vssd RF_LCVCO_new
.ends top_mixer_rx_with_osc