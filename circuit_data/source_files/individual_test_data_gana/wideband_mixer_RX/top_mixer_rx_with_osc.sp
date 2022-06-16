.subckt mixer_top_plate clk0 clk180 clk270 clk90 rf_in vss1 vss2 vss3 vss4 vcmbias
m3 rf_in clk270 vss4 vss4 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m2 rf_in clk180 vss3 vss3 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m1 rf_in clk90 vss2 vss2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m0 rf_in clk0 vss1 vss1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
c3 vss4 vcmbias cap=10pF
c2 vss3 vcmbias cap=10pF
c1 vss1 vcmbias cap=10pF
c0 vss2 vcmbias cap=10pF
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

.subckt RF_LCVCO_new ibias bias_minus bias_plus in_m in_p out_m out_p vddd vssa vssd
Xl1 out_m out_p vddd vssa spiral_sym_mu_z w=10e-6 nr=1 rad=90e-6 lay=9 m=1
m8 out_p bias_minus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
m23 out_m out_p vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
m18 out_p out_m vssd vssd nmos_rf lr=60e-9 wr=2e-6 nr=4 m=1
m9 out_m bias_plus vssd vssd nmos_rf lr=60e-9 wr=600e-9 nr=2 m=1
m21 out_m out_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
m35 out_m in_p ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
m22 out_p out_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=12 m=1
m36 out_p in_m ibias vddd pmos_rf lr=60e-9 wr=2e-6 nr=2 m=1
.ends RF_LCVCO_new

.subckt top_mixer_rx_with_osc vout_net0 vout_net1 ibias1 ibias2 bias_minus bias_plus lcvco_ibias1 lcvco_ibias2 vout_net2 vout_net3 antenna vcmbias vdda vddd vssa vssd
xi0 clk0 clk180 clk270 clk90 antenna vss1 vss2 vss3 vss4 vcmbias mixer_top_plate
xi2ota ibias2 vss2 vss4 vout_net0 vout_net1 vdda vssa PMOS_BasebandAmp_1
xi1ota ibias1 vss1 vss3 vout_net2 vout_net3 vdda vssa PMOS_BasebandAmp_1
xi3vlo vco_ibias2 vssd vssd clk180 clk0 clk90 clk270 vddd vssa vssd RF_LCVCO_new
xi4vlo vco_ibias1 bias_minus bias_plus clk90 clk270 clk0 clk180 vddd vssa vssd RF_LCVCO_new
.ends top_mixer_rx_with_osc