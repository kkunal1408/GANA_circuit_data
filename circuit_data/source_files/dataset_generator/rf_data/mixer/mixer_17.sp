.subckt passive_mixer clk0 clk180 clk270 clk90 vrf vbias votan1 votan2 votap1 votap2
m3 vrf clk270 votap2 votap2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m2 vrf clk180 votap1 votap1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m1 vrf clk90 votan2 votan2 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
m0 vrf clk0 votan1 votan1 nmos_rf lr=60e-9 wr=2e-6 nr=16 m=1
c3 votap2 vbias cap=10pF
c2 votap1 vbias cap=10pF
c1 votan1 vbias cap=10pF
c0 votan2 vbias cap=10pF
.ends passive_mixer
