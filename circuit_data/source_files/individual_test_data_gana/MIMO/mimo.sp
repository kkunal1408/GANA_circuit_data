**Author: Kishor Kunal, kunal001@umn.edu
.subckt bottom_plate_4path_mixer_diff_end clk0 clk90 clk180 clk270 _net1 _net0 vcmbias vdda_q
c7 n5 _net0 cap=13pF
c8 n6 _net0 cap=13pF
c9 n7 _net0 cap=13pF
c10 n8 _net0 cap=13pF
c3 n1 _net1 cap=13pF
c4 n2 _net1 cap=13pF
c5 n3 _net1 cap=13pF
c6 n4 _net1 cap=13pF
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
.ends bottom_plate_4path_mixer_diff_end

.subckt MIMO_mixers_bottom_plate clk0 clk180 clk270 clk90 vcmbias vdda_q _net0 _net1 _net2 _net3 _net4 _net5 _net6 _net7
xi0 clk0 clk90 clk180 clk270 _net0 _net1 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi1 clk0 clk90 clk180 clk270 _net2 _net3 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi2 clk0 clk90 clk180 clk270 _net4 _net5 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
xi3 clk0 clk90 clk180 clk270 _net6 _net7 vcmbias vdda_q bottom_plate_4path_mixer_diff_end
.ends MIMO_mixers_bottom_plate

.subckt PMOS_BasebandAmp_1 ibias in1 in2 out1 out2 vdd vss
c0 out1 vss cap=10pF
c1 out2 vss cap=10pF
M6 out1 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12
M1 out2 net011 vss vss nmos_rf lr=240e-9 wr=2e-6 nr=12
M5 ibias ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=8
M3 out1 in1 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16
M2 out2 in2 net07 vdd pmos_rf lr=240e-9 wr=4e-6 nr=16
M4 net07 ibias vdd vdd pmos_rf lr=120e-9 wr=2e-6 nr=16
r3  out1 in1 res=13K
r1  net011 out2res=26K
r0  out1 net011res=26K
r2  out2 in2 res=13K
.ends PMOS_BasebandAmp_1

.subckt bottom_plate_4path_beamforming clk_x1 clk_x1_b clk_x2 clk_x2_b clk_x3 clk_x3_b clk_x4 clk_x4_b ibias _net2 _net3 vcmbias vdda vssa _net15 _net10 _net14 _net8 _net13 _net6 _net12 _net4
xi0 ibias _net0 _net1 _net2 _net3 vdda vssa PMOS_BasebandAmp_1
M15 _net4 clk_x4 _net5 _net5 nmos_rf lr=60e-9 wr=2e-6 nr=16
M14 _net6 clk_x3 _net7 _net7 nmos_rf lr=60e-9 wr=2e-6 nr=16
M13 _net8 clk_x2 _net9 _net9 nmos_rf lr=60e-9 wr=2e-6 nr=16
M12 _net10 clk_x1 _net11 _net11 nmos_rf lr=60e-9 wr=2e-6 nr=16
M11 _net12 clk_x4_b _net5 _net5 nmos_rf lr=60e-9 wr=2e-6 nr=16
M10 _net13 clk_x3_b _net7 _net7 nmos_rf lr=60e-9 wr=2e-6 nr=16
M9 _net14 clk_x2_b _net9 _net9 nmos_rf lr=60e-9 wr=2e-6 nr=16
M8 _net15 clk_x1_b _net11 _net11 nmos_rf lr=60e-9 wr=2e-6 nr=16
M7 _net4 clk_x4_b _net16 _net16 nmos_rf lr=60e-9 wr=2e-6 nr=16
M6 _net6 clk_x3_b net17 net17 nmos_rf lr=60e-9 wr=2e-6 nr=16
M5 _net8 clk_x2_b net18 net18 nmos_rf lr=60e-9 wr=2e-6 nr=16
M4 _net10 clk_x1_b net19 net19 nmos_rf lr=60e-9 wr=2e-6 nr=16
M3 _net12 clk_x4 _net16 _net16 nmos_rf lr=60e-9 wr=2e-6 nr=16
M2 _net13 clk_x3 net17 net17 nmos_rf lr=60e-9 wr=2e-6 nr=16
M1 _net14 clk_x2 net18 net18 nmos_rf lr=60e-9 wr=2e-6 nr=16
M0 _net15 clk_x1 net19 net19 nmos_rf lr=60e-9 wr=2e-6 nr=16
R18  _net1 _net3  res=10K
R16  _net0 _net2  res=10K
R11  _net5 _net0  res=16K
R10  _net7 _net0  res=16K
R9  _net9 _net0  res=16K
R8  _net11 _net0  res=16K
R3  _net16 _net1  res=16K
R2  net17 _net1  res=16K
R1  net18 _net1  res=16K
R0  net19 _net1  res=16K
c8 _net1 _net3 cap=32pF
c9 _net0 _net2 cap=32pF
c4 _net11 vcmbias cap=32pF
c5 _net9 vcmbias cap=32pF
c7 _net5 vcmbias cap=32pF
c6 _net7 vcmbias cap=32pF
c2 net17 vcmbias cap=32pF
c3 _net16 vcmbias cap=32pF
c1 net19 vcmbias cap=32pF
c0 net18 vcmbias cap=32pF
.ends bottom_plate_4path_beamforming

.subckt bottom_plate_4path_BB_beamformer antenna_net18 antenna_net19 _net0 _net1 antenna_net20 _net21 _net2 _net3 antenna_net22 antenna_net23 _net4 _net5 antenna_net24 _net25 vout_net6 _net7 _net27 _net26 _net9 _net8 vcmbias _net10 _net11 _net12 _net13 _net14 _net15 _net16 antenna_net17 ibias<1> ibias<2> vdda_bb vssa_bb
xi1 _net0 _net1 _net2 _net3 _net4 _net5 vout_net6 _net7 ibias<2> _net8 _net9 vcmbias vdda_bb vssa_bb _net10 _net11 _net12 _net13 _net14 _net15 _net16 antenna_net17 bottom_plate_4path_beamforming
xi0 antenna_net18 antenna_net19 antenna_net20 _net21 antenna_net22 antenna_net23 antenna_net24 _net25 ibias<1> _net26 _net27 vcmbias vdda_bb vssa_bb _net10 _net11 _net12 _net13 _net14 _net15 _net16 antenna_net17 bottom_plate_4path_beamforming
.ends bottom_plate_4path_BB_beamformer

.subckt MIMO_Beamformers_CLK_NW2 clk0 clk180 clk270 clk90 _net14 _net15 _net16 antenna_net17 _net2 _net3 _net4 _net5 antenna_net22 antenna_net23 antenna_net24 _net25 antenna_net18 antenna_net19 antenna_net20 _net21 _net0 _net1 set vcmbias vdda_bb vddd vssa_bb vssd vout_net6 _net7 _net8 _net9 _net10 _net11 _net12 _net13 ibias<1> ibias<2> ibias<3> ibias<4> ibias<5> ibias<6> ibias<7> ibias<8>
xi11 clk0 clk180 clk90 clk270 clk90 clk270 clk180 clk0 clk180 clk0 clk270 clk90 clk270 clk90 clk0 clk180 _net2 _net3 _net4 _net5 vcmbias vout_net6 _net7 _net8 _net9 _net10 _net11 _net12 _net13 ibias<3> ibias<4> vdda_bb vssa_bb bottom_plate_4path_BB_beamformer
xi9 clk0 clk180 clk90 clk270 clk0 clk180 clk90 clk270 clk0 clk180 clk90 clk270 clk0 clk180 clk90 clk270 _net14 _net15 _net16 antenna_net17 vcmbias vout_net6 _net7 _net8 _net9 _net10 _net11 _net12 _net13 ibias<1> ibias<2> vdda_bb vssa_bb bottom_plate_4path_BB_beamformer
xi12 clk0 clk180 clk90 clk270 clk270 clk90 clk0 clk180 clk180 clk0 clk270 clk90 clk90 clk270 clk180 clk0 antenna_net18 antenna_net19 antenna_net20 _net21 vcmbias vout_net6 _net7 _net8 _net9 _net10 _net11 _net12 _net13 ibias<7> ibias<8> vdda_bb vssa_bb bottom_plate_4path_BB_beamformer
xi10 clk0 clk180 clk90 clk270 clk180 clk0 clk270 clk90 clk0 clk180 clk90 clk270 clk180 clk0 clk270 clk90 antenna_net22 antenna_net23 antenna_net24 _net25 vcmbias vout_net6 _net7 _net8 _net9 _net10 _net11 _net12 _net13 ibias<5> ibias<6> vdda_bb vssa_bb bottom_plate_4path_BB_beamformer
.ends MIMO_Beamformers_CLK_NW2

ximixer clk0 clk90 clk180 clk270 vcmbias vdda_bb vddd vssd antenna_net17 antenna_net24 antenna_net22 antenna_net23 antenna_net20 antenna_net21 antenna_net18 antenna_net19 MIMO_mixers_bottom_plate
xibeamformer clk0 clk180 clk270 clk90 vout_net7 vout_net25 vout_net11 vout_net10 vout_net9 vout_net14 vout_net13 vout_net12 vout_net6 vout_net5 vout_net4 vout_net3 vout_net2 vout_net1 vout_net0 vout_net8 vout_net16 vout_net15 set vcmbias vdda_bb vddd vssa_bb vssd antenna_net17 antenna_net24 antenna_net22 antenna_net23 antenna_net20 antenna_net21 antenna_net18 antenna_net19 ibias<1> ibias<2> ibias<3> ibias<4> ibias<5> ibias<6> ibias<7> ibias<8> MIMO_Beamformers_CLK_NW2
.END
