.subckt test_passive_mixer clk0 clk90 clk180 clk270 vrfp vrfn vcmbias
c7 n5 vrfn cap=13pF
c8 n6 vrfn cap=13pF
c9 n7 vrfn cap=13pF
c10 n8 vrfn cap=13pF
c3 n1 vrfp cap=13pF
c4 n2 vrfp cap=13pF
c5 n3 vrfp cap=13pF
c6 n4 vrfp cap=13pF
M0 n1 clk0 n5 vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M1 n2 clk90 n6 vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M2 n3 clk180 n7 vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M3 n4 clk270 n8 vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M4 n1 clk0 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M5 n2 clk90 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M6 n3 clk180 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M7 n4 clk270 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M8 n5 clk0 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M9 n6 clk90 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M10 n7 clk180 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
M11 n8 clk270 vcmbias vcmbias nmos_rf lr=60e-9 wr=4e-6 nr=16
.ends test_passive_mixer