.subckt passive_mixer clk0 clk180 clk270 clk90 rf_in vbias
m3 rf_in clk270 v4 v4 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m2 rf_in clk180 v3 v3 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m1 rf_in clk90 v2 v2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m0 rf_in clk0 v1 v1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
c3 v4 vbias cap=10pF
c2 v3 vbias cap=10pF
c1 v1 vbias cap=10pF
c0 v2 vbias cap=10pF
.ends passive_mixer