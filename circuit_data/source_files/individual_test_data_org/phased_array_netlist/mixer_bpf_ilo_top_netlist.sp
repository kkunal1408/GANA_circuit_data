
// Library name: PhasedArray_WB_V2
// Cell name: IBIAS250_MIXER
// View name: schematic
subckt IBIAS250_MIXER I200U_IN IB200U_0 IB200U_1 IB200U_2 IB200U_3 vdd vss
    M1 (net4 I200U_IN vss vss) nmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M0 (I200U_IN I200U_IN vss vss) nmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M6 (IB200U_3 net4 vdd vdd) pmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M5 (IB200U_2 net4 vdd vdd) pmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M4 (IB200U_1 net4 vdd vdd) pmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M3 (IB200U_0 net4 vdd vdd) pmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M2 (net4 net4 vdd vdd) pmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
ends IBIAS250_MIXER
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: IBIAS625_ILOBUF
// View name: schematic
subckt IBIAS625_ILOBUF I625U_IN IB625U_0 IB625U_1 IB625U_2 IB625U_3 IB625U_4 IB625U_5 IB625U_6 IB625U_7 vdd vss
    M1 (net4 I625U_IN vss vss) nmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=2 mismatchflag=0
    M0 (I625U_IN I625U_IN vss vss) nmos_rf lr=240.0n wr=2u nr=16 sigma=1 m=2 mismatchflag=0
    M10 (IB625U_7 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M9 (IB625U_6 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M8 (IB625U_5 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M7 (IB625U_4 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M6 (IB625U_3 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M5 (IB625U_2 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M4 (IB625U_1 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M3 (IB625U_0 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
    M2 (net4 net4 vdd vdd) pmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=4 mismatchflag=0
ends IBIAS625_ILOBUF
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: CC_DCAP_SMALL
// View name: schematic
subckt CC_DCAP_SMALL VDD VSS
    C1 (VDD VSS) mimcap_sin lt=50u wt=50u mimflag=3 mf=1 mismatchflag=0
    C2 (VDD VSS) nmoscap lr=50u wr=50u m=1
ends CC_DCAP_SMALL
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: CC_DCAP
// View name: schematic
subckt CC_DCAP VDD VSS
    C1 (VDD VSS) mimcap_sin lt=50u wt=50u mimflag=3 mf=1 mismatchflag=0
    C0 (VDD VSS) mimcap_sin lt=50u wt=30u mimflag=3 mf=1 mismatchflag=0
    C3 (VDD VSS) nmoscap lr=50u wr=30u m=1
    C2 (VDD VSS) nmoscap lr=50u wr=50u m=1
ends CC_DCAP
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: INVX2P4
// View name: schematic
subckt INVX2P4 IN OUT VDD VSS
    M3 (OUT IN VDD VDD) pmos_rf lr=60n wr=600n nr=4 sigma=1 m=1 mismatchflag=0
    M2 (OUT IN VSS VSS) nmos_rf lr=60n wr=600n nr=2 sigma=1 m=1 mismatchflag=0
ends INVX2P4
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: INVX4P8
// View name: schematic
subckt INVX4P8 IN OUT VDD VSS
    M3 (OUT IN VDD VDD) pmos_rf lr=60n wr=1.2u nr=4 sigma=1 m=1 mismatchflag=0
    M2 (OUT IN VSS VSS) nmos_rf lr=60n wr=1.2u nr=2 sigma=1 m=1 mismatchflag=0
ends INVX4P8
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: TGATE_1U
// View name: schematic
subckt TGATE_1U IN OUT VPSLIM_H VPSLIM_L VSS
    M19 (IN VPSLIM_H OUT OUT) nmos_rf lr=60n wr=1u nr=1 sigma=1 m=1 mismatchflag=0
    M18 (OUT VPSLIM_L IN IN) pmos_rf lr=60n wr=1u nr=1 sigma=1 m=1 mismatchflag=0
ends TGATE_1U
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: INVX9P6
// View name: schematic
subckt INVX9P6 IN OUT VDD VSS
    M3 (OUT IN VDD VDD) pmos_rf lr=60n wr=2.4u nr=4 sigma=1 m=1 mismatchflag=0
    M2 (OUT IN VSS VSS) nmos_rf lr=60n wr=2.4u nr=2 sigma=1 m=1 mismatchflag=0
ends INVX9P6
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: S2D
// View name: schematic
subckt S2D LOIN LON_OUT LOP_OUT VDD VSS
    I9 (net036 net042 VDD VSS) INVX2P4
    I2 (net11 net040 VDD VSS) INVX2P4
    I0 (LOIN net06 VDD VSS) INVX2P4
    I8 (LOIN net7 VDD VSS) INVX2P4
    I1 (net06 net11 VDD VSS) INVX2P4
    I3 (net040 net047 VDD VSS) INVX4P8
    I10 (net042 net038 VDD VSS) INVX4P8
    I15 (net7 net036 VDD VSS VSS) TGATE_1U
    I14 (net039 LON_OUT VDD VSS) INVX9P6
    I13 (net049 net039 VDD VSS) INVX9P6
    I7 (net025 LOP_OUT VDD VSS) INVX9P6
    I6 (net045 net025 VDD VSS) INVX9P6
    I5 (net044 net045 VDD VSS) INVX9P6
    I11 (net038 net041 VDD VSS) INVX9P6
    I12 (net041 net049 VDD VSS) INVX9P6
    I4 (net047 net044 VDD VSS) INVX9P6
ends S2D
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: INVX1P2
// View name: schematic
subckt INVX1P2 IN OUT VDD VSS
    M1 (OUT IN VDD VDD) pmos_rf lr=60n wr=600n nr=2 sigma=1 m=1 mismatchflag=0
    M0 (OUT IN VSS VSS) nmos_rf lr=60n wr=600n nr=1 sigma=1 m=1 mismatchflag=0
ends INVX1P2
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: NAND_1P2
// View name: schematic
subckt NAND_1P2 A B OUT VDD VSS
    M11 (OUT B VDD VDD) pmos_rf lr=60n wr=600n nr=2 sigma=1 m=1 mismatchflag=0
    M9 (OUT A VDD VDD) pmos_rf lr=60n wr=600n nr=2 sigma=1 m=1 mismatchflag=0
    M8 (OUT B net14 VSS) nmos_rf lr=60n wr=600n nr=4 sigma=1 m=1 mismatchflag=0
    M10 (net14 A VSS VSS) nmos_rf lr=60n wr=600n nr=4 sigma=1 m=1 mismatchflag=0
ends NAND_1P2
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: TGATE
// View name: schematic
subckt TGATE IN OUT VPSLIM_H VPSLIM_L
    M19 (IN VPSLIM_H OUT OUT) nmos_rf lr=60n wr=600n nr=1 sigma=1 m=1 mismatchflag=0
    M18 (OUT VPSLIM_L IN IN) pmos_rf lr=60n wr=600n nr=1 sigma=1 m=1 mismatchflag=0
ends TGATE
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: PSLIM2TO3G_3INV_L
// View name: schematic
subckt PSLIM2TO3G_3INV_L IN OUT VDD VPSLIM_H VPSLIM_L VSS
    I0 (IN net4 VDD VSS) INVX1P2
    I3 (net015 out1 VDD VSS) INVX2P4
    I7 (nor OUT VDD VSS) INVX2P4
    I1 (net4 net7 VDD VSS) INVX2P4
    I4 (net7 net012 VDD VSS) INVX2P4
    I6 (net013 out2 VDD VSS) INVX2P4
    I2 (net7 net015 VDD VSS) INVX2P4
    I5 (net012 net11 VDD VSS) INVX2P4
    I8 (out2 out1 nor VDD VSS) NAND_1P2
    I10 (net11 net013 VPSLIM_H VPSLIM_L) TGATE
ends PSLIM2TO3G_3INV_L
// End of subcircuit definition.

// Library name: QVCO_GP
// Cell name: cartesian_res
// View name: schematic
subckt cartesian_res p1 p2 vss
    R10 (net5 p2 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
    R11 (net5 p1 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
ends cartesian_res
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: ppf_buffer_alt
// View name: schematic
subckt ppf_buffer_alt LOIN LOOUT VDD VSS
    M63 (net2 net2 VSS VSS) nmos_rf lr=60n wr=1u nr=4 sigma=1 m=1 mismatchflag=0
    M75 (LOOUT net016 VSS VSS) nmos_rf lr=60n wr=1u nr=4 sigma=1 m=1 mismatchflag=0
    M62 (net2 net2 VDD VDD) pmos_rf lr=60n wr=1u nr=8 sigma=1 m=1 mismatchflag=0
    M74 (LOOUT net016 VDD VDD) pmos_rf lr=60n wr=1u nr=8 sigma=1 m=1 mismatchflag=0
    I16 (net016 net2 VSS) cartesian_res
    C9 (LOIN net016 VSS) mimcap_woum_sin_rf lt=22.0u wt=22.0u lay=7 m=1 mimflag=3 mismatchflag=0
ends ppf_buffer_alt
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: PPFBUFFER_WPSLIM
// View name: schematic
subckt PPFBUFFER_WPSLIM IN OUTN OUTP VDD VPSLIM_H VPSLIM_L VSS
    I10 (net07 OUTN OUTP VDD VSS) S2D
    I3 (net09 net07 VDD VPSLIM_H VPSLIM_L VSS) PSLIM2TO3G_3INV_L
    I2 (IN net09 VDD VSS) ppf_buffer_alt
ends PPFBUFFER_WPSLIM
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: vcobuf50
// View name: schematic
subckt vcobuf50 INM INP OUTM OUTP VDD VSS
    M1 (OUTP INM VSS VSS) nmos_rf lr=60n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M0 (OUTM INP VSS VSS) nmos_rf lr=60n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    R1 (VDD OUTP VSS) rppolyl_rf l=12.915u w=4u m=1 mismatchflag=0
    R0 (VDD OUTM VSS) rppolyl_rf l=12.915u w=4u m=1 mismatchflag=0
ends vcobuf50
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: RES80K_BUF
// View name: schematic
subckt RES80K_BUF t1 t2 vss
    R4 (net8 t2 vss) rppolywo_rf l=10u w=500n m=1 mismatchflag=0
    R3 (net8 net7 vss) rppolywo_rf l=10u w=500n m=1 mismatchflag=0
    R2 (net6 net7 vss) rppolywo_rf l=10u w=500n m=1 mismatchflag=0
    R1 (net6 net5 vss) rppolywo_rf l=10u w=500n m=1 mismatchflag=0
    R0 (t1 net5 vss) rppolywo_rf l=10u w=500n m=1 mismatchflag=0
ends RES80K_BUF
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: VCO_BUFF_LIN_2OUTS_v2_FINAL
// View name: schematic
subckt VCO_BUFF_LIN_2OUTS_v2_FINAL I625U IN OUT1 OUT2 VDD VSS
    M5 (OUT2 net11 VDD VDD) pmos_rf lr=60n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M15 (OUT1 net11 VDD VDD) pmos_rf lr=60n wr=2u nr=16 sigma=1 m=1 mismatchflag=0
    M3 (OUT2 net11 VSS VSS) nmos_rf lr=60n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M17 (VDD net7 net023 net023) nmos_rf lr=60n wr=2u nr=16 sigma=1 m=4 mismatchflag=0
    M20 (net023 I625U VSS VSS) nmos_rf lr=120.0n wr=2u nr=4 sigma=1 m=8 mismatchflag=0
    M21 (I625U I625U VSS VSS) nmos_rf lr=120.0n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M14 (OUT1 net11 VSS VSS) nmos_rf lr=60n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    R3 (net11 OUT2 VSS) rppolywo_rf l=10.5u w=4u m=1 mismatchflag=0
    R0 (net11 OUT1 VSS) rppolywo_rf l=10.5u w=4u m=1 mismatchflag=0
    C2 (VDD VSS) nmoscap lr=12.0u wr=16.0u m=2
    C0 (IN net7 VSS) mimcap_woum_sin_rf lt=40u wt=10u lay=7 m=1 mimflag=3 mismatchflag=0
    C1 (net023 net11 VSS) mimcap_woum_sin_rf lt=40u wt=10u lay=7 m=1 mimflag=3 mismatchflag=0
    I0 (VDD net7 VSS) RES80K_BUF
ends VCO_BUFF_LIN_2OUTS_v2_FINAL
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: res_24K
// View name: schematic
subckt res_24K t1 t2 vss
    R4 (t2 net05 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
    R2 (net06 net05 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
    R1 (net06 net6 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
    R0 (t1 net6 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
ends res_24K
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: capbank_gp_lowC_noLSB_BPF
// View name: schematic
subckt capbank_gp_lowC_noLSB_BPF B\<3\> B\<2\> B\<1\> B\<0\> LEFT RIGHT VDD VSS
    C5 (RIGHT net07 VSS) mimcap_woum_sin_rf lt=10u wt=10u lay=7 m=1 mimflag=3 mismatchflag=0
    C4 (LEFT net010 VSS) mimcap_woum_sin_rf lt=10u wt=10u lay=7 m=1 mimflag=3 mismatchflag=0
    C3 (RIGHT net3 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=2 mimflag=3 mismatchflag=0
    C2 (LEFT net1 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=2 mimflag=3 mismatchflag=0
    C1 (RIGHT net4 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=1 mimflag=3 mismatchflag=0
    C0 (LEFT net2 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=1 mimflag=3 mismatchflag=0
    M2 (net010 b2_buf net07 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=5 mismatchflag=0
    M1 (net1 b1_buf net3 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=2 mismatchflag=0
    M0 (net2 b0_buf net4 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=1 mismatchflag=0
    M44 (net0155 net0120 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M40 (net0120 B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M37 (net0159 net0104 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M36 (net0158 net0105 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M35 (net0157 net0106 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M31 (net0104 B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M30 (net0105 B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M29 (net0106 B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M18 (b3_buf b3_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M16 (b3_inv B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M15 (b2_inv B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M13 (b2_buf b2_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M11 (b1_buf b1_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M9 (b1_inv B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M7 (b0_buf b0_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M4 (b0_inv B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M42 (net0155 net0120 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M38 (net0120 B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M34 (net0159 net0104 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M33 (net0158 net0105 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M32 (net0157 net0106 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M28 (net0104 B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M27 (net0105 B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M26 (net0106 B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M19 (b3_inv B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M17 (b3_buf b3_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M14 (b2_buf b2_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M12 (b2_inv B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M10 (b1_buf b1_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M8 (b1_inv B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M6 (b0_buf b0_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M5 (b0_inv B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    I14 (b2_inv net010 VSS) res_24K
    I15 (b2_inv net07 VSS) res_24K
    I16 (b1_inv net3 VSS) res_24K
    I17 (b1_inv net1 VSS) res_24K
    I18 (b0_inv net2 VSS) res_24K
    I19 (b0_inv net4 VSS) res_24K
ends capbank_gp_lowC_noLSB_BPF
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: BPF4
// View name: schematic
subckt BPF4 DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> INM INP OUTM OUTP VDDSW VDD_BPF0P5 VSS
    M2 (OUTP INM VSS VSS) nmos_rf lr=120.0n wr=2.5u nr=32 sigma=1 m=1 mismatchflag=0
    M8 (OUTM INP VSS VSS) nmos_rf lr=120.0n wr=2.5u nr=32 sigma=1 m=1 mismatchflag=0
    I5 (DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> OUTM OUTP VDDSW VSS) capbank_gp_lowC_noLSB_BPF
    L4 (OUTM OUTP VSS VDD_BPF0P5) spiral_sym_ct_mu_z w=7u nr=3 rad=24.0u lay=9 spacing=3u gdis=10u m=1
ends BPF4
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: capbank_gp_lowC_noLSB
// View name: schematic
subckt capbank_gp_lowC_noLSB B\<3\> B\<2\> B\<1\> B\<0\> LEFT RIGHT VDD VSS
    C9 (LEFT net06 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=2 mimflag=3 mismatchflag=0
    C8 (RIGHT net08 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=2 mimflag=3 mismatchflag=0
    C5 (RIGHT net07 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C4 (LEFT net010 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C3 (RIGHT net3 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=2 mimflag=3 mismatchflag=0
    C2 (LEFT net1 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=2 mimflag=3 mismatchflag=0
    C1 (RIGHT net4 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=1 mimflag=3 mismatchflag=0
    C0 (LEFT net2 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=1 mimflag=3 mismatchflag=0
    M3 (net08 b3_buf net06 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=10 mismatchflag=0
    M2 (net010 b2_buf net07 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=5 mismatchflag=0
    M1 (net1 b1_buf net3 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=2 mismatchflag=0
    M0 (net2 b0_buf net4 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=1 mismatchflag=0
    M44 (net0155 net0120 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M40 (net0120 B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M37 (net0159 net0104 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M36 (net0158 net0105 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M35 (net0157 net0106 VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M31 (net0104 B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M30 (net0105 B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M29 (net0106 B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M18 (b3_buf b3_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M16 (b3_inv B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M15 (b2_inv B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M13 (b2_buf b2_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M11 (b1_buf b1_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M9 (b1_inv B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M7 (b0_buf b0_inv VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M4 (b0_inv B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M42 (net0155 net0120 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M38 (net0120 B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M34 (net0159 net0104 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M33 (net0158 net0105 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M32 (net0157 net0106 VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M28 (net0104 B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M27 (net0105 B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M26 (net0106 B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M19 (b3_inv B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M17 (b3_buf b3_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M14 (b2_buf b2_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M12 (b2_inv B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M10 (b1_buf b1_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M8 (b1_inv B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M6 (b0_buf b0_inv VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M5 (b0_inv B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1 sd=200n ad=1.75e-13 as=1.75e-13 pd=2.35u ps=2.35u nrd=0.1 nrs=0.1 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    I12 (b3_inv net08 VSS) res_24K
    I13 (b3_inv net06 VSS) res_24K
    I14 (b2_inv net010 VSS) res_24K
    I15 (b2_inv net07 VSS) res_24K
    I16 (b1_inv net3 VSS) res_24K
    I17 (b1_inv net1 VSS) res_24K
    I18 (b0_inv net2 VSS) res_24K
    I19 (b0_inv net4 VSS) res_24K
ends capbank_gp_lowC_noLSB
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: VCO
// View name: schematic
subckt VCO DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VDD_VCO0P5 VSS
    M0 (OUTP OUTM VSS VSS) nmos_rf lr=60n wr=1u nr=25 sigma=1 m=2 mismatchflag=0
    M1 (OUTM OUTP VSS VSS) nmos_rf lr=60n wr=1u nr=25 sigma=1 m=2 mismatchflag=0
    I10 (DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VSS) capbank_gp_lowC_noLSB
    L4 (OUTP OUTM VSS VDD_VCO0P5) spiral_sym_ct_mu_z w=9u nr=2 rad=27.0u lay=9 spacing=3u gdis=10u m=1
ends VCO
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: ILO_IN
// View name: schematic
subckt ILO_IN IN OUT VDDSW VSS
    C2 (IN net7 VSS) mimcap_woum_sin_rf lt=20u wt=20u lay=7 m=1 mimflag=3 mismatchflag=0
    R3 (VSS net7 VSS) rppolywo_rf l=12.0u w=1u m=1 mismatchflag=0
    R2 (net7 VDDSW VSS) rppolywo_rf l=12.0u w=1u m=1 mismatchflag=0
    M3 (OUT net7 VSS VSS) nmos_rf lr=60n wr=1u nr=32 sigma=1 m=1 mismatchflag=0
ends ILO_IN
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: ILO
// View name: schematic
subckt ILO DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> INM INP OUTM OUTP VDDSW VDD_VCO0P5 VSS
    I11 (DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VDD_VCO0P5 VSS) VCO
    L0 (OUTM net5) inductor l=pind_in_ILO
    L1 (OUTP net6) inductor l=pind_in_ILO
    I12 (INP net5 VDDSW VSS) ILO_IN
    I13 (INM net6 VDDSW VSS) ILO_IN
ends ILO
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: LO_1CHNB_ALT
// View name: schematic
subckt LO_1CHNB_ALT AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> IBUF625U\<0\> IBUF625U\<1\> LOM_BPF2G LOP_BPF2G LO_OUTM_INT LO_OUTP_INT LO_OUTP_TST LO_OUTM_TST
    I4 (IBUF625U\<0\> net61 LO_OUTP_INT LO_OUTP_TST AVDD_LO1V AVSS) VCO_BUFF_LIN_2OUTS_v2_FINAL
    I5 (IBUF625U\<1\> net60 LO_OUTM_INT LO_OUTM_TST AVDD_LO1V AVSS) VCO_BUFF_LIN_2OUTS_v2_FINAL
    I0 (DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> LOM_BPF2G LOP_BPF2G net013 net014 AVDD_LO1V AVDD_BPF0P5 AVSS) BPF4
    I14 (net013 net014 net022 net021 AVDD_LO1V AVSS) vcobuf50
    I3 (DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> net013 net014 net60 net61 AVDD_LO1V AVDD_ILO0P5 AVSS) ILO
ends LO_1CHNB_ALT
// End of subcircuit definition.

// Library name: test_qmeng
// Cell name: MIXER_RFBIAS_RES
// View name: schematic
subckt MIXER_RFBIAS_RES M P tail_bias
R3 (P net9 ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R0 (net9 tail_bias ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R1 (tail_bias net05 ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R2 (net05 M ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

ends MIXER_RFBIAS_RES
// End of subcircuit definition.

// Library name: test_qmeng
// Cell name: MIXER_LOSWBIAS_RES
// View name: schematic
subckt MIXER_LOSWBIAS_RES MIXER_LOBIAS VDD VSS
R5 (VDD net050 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R4 (net031 net034 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R9 (net049 net031 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R6 (net050 net051 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R7 (net051 MIXER_LOBIAS ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R8 (MIXER_LOBIAS net049 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R0 (net039 VSS ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R1 (net033 net039 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R3 (net034 net036 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

R2 (net036 net033 ) rppolywo l=4u w=1u m=1 mf=(1) mismatchflag=0

ends MIXER_LOSWBIAS_RES
// End of subcircuit definition.

// Library name: test_qmeng
// Cell name: MIXER_LOAD_RES
// View name: schematic
subckt MIXER_LOAD_RES A B
R4 (net03 B ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R0 (A net06 ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R1 (net06 net05 ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R3 (net05 net03 ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

ends MIXER_LOAD_RES
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: Mixer
// View name: schematic
subckt Mixer IFM IFP LOM LOP MIXER_TAIL_IIN OUTM OUTP RFM RFP VDD VSS
    M35 (net051 tailm VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=12 sigma=1 m=1 mismatchflag=0
    M34 (net039 tailp VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=12 sigma=1 m=1 mismatchflag=0
    M44\<1\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<2\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<3\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<4\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<5\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<6\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<7\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M44\<8\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M43 (VSS VSS VSS VSS) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=2 mismatchflag=0
    M38 (MIXER_TAIL_IIN MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M39 (pbias MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2 sigma=1 m=1 mismatchflag=0
    M7 (IFM Oscp net039 net039) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M13 (IFP Oscp net051 net051) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M12 (IFM Oscm net051 net051) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M11 (IFP Oscm net039 net039) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M29 (VDD VDD VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=8 sigma=1 m=2 mismatchflag=0
    M16 (pbias pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=8 sigma=1 m=2 mismatchflag=0
    M24 (IFP pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=32 sigma=1 m=2 mismatchflag=0
    M23 (IFM pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=32 sigma=1 m=2 mismatchflag=0
    I29 (tailm tailp MIXER_TAIL_IIN) MIXER_RFBIAS_RES
    I12 (Oscp VDD VSS) MIXER_LOSWBIAS_RES
    I21 (Oscm VDD VSS) MIXER_LOSWBIAS_RES
    I18 (IFP VDD) MIXER_LOAD_RES
    I17 (IFM VDD) MIXER_LOAD_RES
R1\<1\> (VSS net040\<0\> ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R1\<2\> (VSS net040\<1\> ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R1\<3\> (VSS net040\<2\> ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

R1\<4\> (VSS net040\<3\> ) rppolys l=13.0u w=1u m=1 mf=(1) mismatchflag=0

    C15 (LOP Oscp VSS) mimcap_woum_sin_rf lt=32.0u wt=16.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C6 (RFM tailm VSS) mimcap_woum_sin_rf lt=22.0u wt=22.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C7 (RFP tailp VSS) mimcap_woum_sin_rf lt=22.0u wt=22.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C14 (LOM Oscm VSS) mimcap_woum_sin_rf lt=32.0u wt=16.0u lay=7 m=1 mimflag=3 mismatchflag=0
R2 (IFP OUTP ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R5\<1\> (VSS net043\<0\> ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R5\<2\> (VSS net043\<1\> ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R5\<3\> (VSS net043\<2\> ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R5\<4\> (VSS net043\<3\> ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

R0 (OUTM IFM ) rppolywo l=6u w=1u m=1 mf=(1) mismatchflag=0

ends Mixer
// End of subcircuit definition.

// Library name: May2015TP_Qingrui
// Cell name: Inv1
// View name: schematic
subckt Inv1 IN OUT VDD VSS
    M721 (OUT IN VSS VSS) nch l=60n w=2u m=1 nf=2 sd=200n ad=2e-13 as=3.5e-13 pd=2.4u ps=4.7u nrd=0.05 nrs=0.05 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    M720 (OUT IN VDD VDD) pch l=60n w=5u m=1 nf=2 sd=200n ad=5e-13 as=8.75e-13 pd=5.4u ps=10.7u nrd=0.02 nrs=0.02 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
ends Inv1
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: TGATE_LARGER_DIFF
// View name: schematic
subckt TGATE_LARGER_DIFF INM INP OUTM OUTP SEL VDD VSS
    I2 (SEL net017 VDD VSS) Inv1
    I0 (SEL net12 VDD VSS) Inv1
    M4 (INP SEL OUTP VSS) nmos_rf lr=60n wr=1u nr=12 sigma=1 m=1 mismatchflag=0
    M0 (INM SEL OUTM VSS) nmos_rf lr=60n wr=1u nr=12 sigma=1 m=1 mismatchflag=0
    M1 (OUTP net017 INP VDD) pmos_rf lr=60n wr=1u nr=24 sigma=1 m=1 mismatchflag=0
    M2 (OUTM net12 INM VDD) pmos_rf lr=60n wr=1u nr=24 sigma=1 m=1 mismatchflag=0
ends TGATE_LARGER_DIFF
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: IMUX_DIFF
// View name: schematic
subckt IMUX_DIFF EN1 EN2 IN1M IN1P IN2M IN2P OUTM OUTP VDD VSS
    I1 (IN2M IN2P OUTM OUTP EN2 VDD VSS) TGATE_LARGER_DIFF
    I0 (IN1M IN1P OUTM OUTP EN1 VDD VSS) TGATE_LARGER_DIFF
ends IMUX_DIFF
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: LO_MIXER_1CHNB
// View name: schematic
subckt LO_MIXER_1CHNB AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> EN_BBTST EN_ILOTST IBUF625\<1\> IBUF625\<0\> IFM IFP LOM_BPF2G LOP_BPF2G MIXER_BIAS RFM RFP
    I22 (net027 net032 net034 net033 AVDD_TBUF1V AVSS) vcobuf50
    I12 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> IBUF625\<0\> IBUF625\<1\> LOM_BPF2G LOP_BPF2G net042 net041 net020 net019) LO_1CHNB_ALT
    I16 (AVDD_LO1V AVSS) CC_DCAP
    I13\<3\> (AVDD_BPF0P5 AVSS) CC_DCAP
    I13\<2\> (AVDD_BPF0P5 AVSS) CC_DCAP
    I13\<1\> (AVDD_BPF0P5 AVSS) CC_DCAP
    I13\<0\> (AVDD_BPF0P5 AVSS) CC_DCAP
    I17 (AVDD_MIXER AVSS) CC_DCAP
    I15\<3\> (AVDD_ILO0P5 AVSS) CC_DCAP
    I15\<2\> (AVDD_ILO0P5 AVSS) CC_DCAP
    I15\<1\> (AVDD_ILO0P5 AVSS) CC_DCAP
    I15\<0\> (AVDD_ILO0P5 AVSS) CC_DCAP
    I14 (IFM IFP net042 net041 MIXER_BIAS net031 net030 RFM RFP AVDD_MIXER AVSS) Mixer
    I23 (EN_BBTST EN_ILOTST IFM IFP net019 net020 net027 net032 AVDD_LO1V AVSS) IMUX_DIFF
ends LO_MIXER_1CHNB
// End of subcircuit definition.

// Library name: TSMC65_Public2
// Cell name: Inv1x
// View name: schematic
subckt Inv1x In Out VDD VSS
    T22 (Out In VDD VDD) pch l=60n w=330.0n m=1 nf=1 sd=200n ad=5.775e-14 as=5.775e-14 pd=1.01u ps=1.01u nrd=0.30303 nrs=0.30303 sa=175.00n sb=175.00n sca=0 scb=0 scc=0
    T23 (Out In VSS VSS) nch l=60n w=150.0n m=1 nf=1 sd=200n ad=24.0f as=24.0f pd=620.0n ps=620.0n nrd=0.6667 nrs=0.6667 sa=160.0n sb=160.0n sca=0 scb=0 scc=0
ends Inv1x
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: CCunit_w_Switch_Sa
// View name: schematic
subckt CCunit_w_Switch_Sa DCB VDD VSS inm inp outm outp switch tailbias
    M16 (tailbias tailbias VSS VSS) nmos_rf lr=240.0n wr=600n nr=4 sigma=1 m=1 mismatchflag=0
    M4 (vtail switch_b VSS VSS) nmos_rf lr=60n wr=1.2u nr=1 sigma=1 m=1 mismatchflag=0
    M0 (LOp switch_b VSS VSS) nmos_rf lr=60n wr=2u nr=12 sigma=1 m=1 mismatchflag=0
    M9 (LOm switch_b VSS VSS) nmos_rf lr=60n wr=2u nr=12 sigma=1 m=1 mismatchflag=0
    M8 (outp LOm net26 net26) nmos_rf lr=100n wr=900n nr=10 sigma=1 m=1 mismatchflag=0
    M7 (net26 vtail VSS VSS) nmos_rf lr=240.0n wr=600n nr=20 sigma=1 m=1 mismatchflag=0
    M6 (net26 vtail VSS VSS) nmos_rf lr=240.0n wr=600n nr=20 sigma=1 m=1 mismatchflag=0
    M5 (outm LOp net26 net26) nmos_rf lr=100n wr=900n nr=10 sigma=1 m=1 mismatchflag=0
    R3 (net04 tailbias VSS) rppolywo_rf l=6u w=1u m=1 mismatchflag=0
    R4 (DCB net21 VSS) rppolywo_rf l=12.0u w=1u m=1 mismatchflag=0
    R2 (DCB net14 VSS) rppolywo_rf l=12.0u w=1u m=1 mismatchflag=0
    R1 (net38 net26 VSS) rppolywo_rf l=2u w=1u m=1 mismatchflag=0
    R0 (net26 net38 VSS) rppolywo_rf l=2u w=1u m=1 mismatchflag=0
    I0 (switch switch_b VDD VSS) Inv1x
    M3 (vtail switch_b net04 net04) pmos_rf lr=60n wr=1.2u nr=1 sigma=1 m=1 mismatchflag=0
    M11 (LOm switch_b net21 net21) pmos_rf lr=60n wr=2u nr=1 sigma=1 m=1 mismatchflag=0
    M2 (LOp switch_b net14 net14) pmos_rf lr=60n wr=2u nr=1 sigma=1 m=1 mismatchflag=0
    M1 (net37 switch_b inp inp) pmos_rf lr=60n wr=2u nr=3 sigma=1 m=1 mismatchflag=0
    M10 (net36 switch_b inm inm) pmos_rf lr=60n wr=2u nr=3 sigma=1 m=1 mismatchflag=0
    C1 (net37 LOp VSS) mimcap_woum_sin_rf lt=9.5u wt=9.5u lay=7 m=1 mimflag=3 mismatchflag=0
    C0 (net36 LOm VSS) mimcap_woum_sin_rf lt=9.5u wt=9.5u lay=7 m=1 mimflag=3 mismatchflag=0
ends CCunit_w_Switch_Sa
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: VGA
// View name: schematic
subckt VGA DCB I\<2\> I\<1\> I\<0\> LOIM LOIP LOQM LOQP OUTM OUTP Q\<2\> Q\<1\> Q\<0\> VDD VSS tailbias\<0\> tailbias\<1\> tailbias\<2\> tailbias\<3\> tailbias\<4\> tailbias\<5\> tailbias\<6\> tailbias\<7\> tailbias\<8\> tailbias\<9\> tailbias\<10\> tailbias\<11\> tailbias\<12\> tailbias\<13\>
    R3 (VDD OUTM VDD) rppolys_rf l=12.0u w=1u m=1 mismatchflag=0
    R2 (VDD OUTP VDD) rppolys_rf l=12.0u w=1u m=1 mismatchflag=0
    I49\<1\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<1\> tailbias\<8\>) CCunit_w_Switch_Sa
    I49\<0\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<1\> tailbias\<9\>) CCunit_w_Switch_Sa
    I51 (DCB VDD VSS VSS VSS net40 net41 VSS VSS) CCunit_w_Switch_Sa
    I48 (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<0\> tailbias\<7\>) CCunit_w_Switch_Sa
    I52 (DCB VDD VSS VSS VSS net38 net39 VSS VSS) CCunit_w_Switch_Sa
    I50\<3\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<2\> tailbias\<10\>) CCunit_w_Switch_Sa
    I50\<2\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<2\> tailbias\<11\>) CCunit_w_Switch_Sa
    I50\<1\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<2\> tailbias\<12\>) CCunit_w_Switch_Sa
    I50\<0\> (DCB VDD VSS LOQM LOQP OUTM OUTP Q\<2\> tailbias\<13\>) CCunit_w_Switch_Sa
    I46 (DCB VDD VSS LOIM LOIP OUTM OUTP I\<0\> tailbias\<0\>) CCunit_w_Switch_Sa
    I45\<3\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<2\> tailbias\<3\>) CCunit_w_Switch_Sa
    I45\<2\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<2\> tailbias\<4\>) CCunit_w_Switch_Sa
    I45\<1\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<2\> tailbias\<5\>) CCunit_w_Switch_Sa
    I45\<0\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<2\> tailbias\<6\>) CCunit_w_Switch_Sa
    I44\<1\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<1\> tailbias\<1\>) CCunit_w_Switch_Sa
    I44\<0\> (DCB VDD VSS LOIM LOIP OUTM OUTP I\<1\> tailbias\<2\>) CCunit_w_Switch_Sa
ends VGA
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: cartesian_res
// View name: schematic
subckt cartesian_res_schematic p1 p2 vss
    R10 (net5 p2 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
    R11 (net5 p1 vss) rppolywo_rf l=8u w=500n m=1 mismatchflag=0
ends cartesian_res_schematic
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: D2S
// View name: schematic
subckt D2S LOM_IN LOP_IN LO_OUT VDD VSS
    M62 (net08 net08 VDD VDD) pmos_rf lr=60n wr=1u nr=2 sigma=1 m=2 mismatchflag=0
    M19 (net06 net06 VDD VDD) pmos_rf lr=100n wr=1u nr=8 sigma=1 m=1 mismatchflag=0
    M21 (LO_OUT net06 VDD VDD) pmos_rf lr=100n wr=1u nr=8 sigma=1 m=1 mismatchflag=0
    M20 (LO_OUT net011 VSS VSS) nmos_rf lr=100n wr=1u nr=6 sigma=1 m=1 mismatchflag=0
    M12 (net06 net04 VSS VSS) nmos_rf lr=100n wr=1u nr=6 sigma=1 m=1 mismatchflag=0
    M63 (net08 net08 VSS VSS) nmos_rf lr=60n wr=1u nr=1 sigma=1 m=2 mismatchflag=0
    C0 (LOM_IN net011 VSS) mimcap_woum_sin_rf lt=15.0u wt=15.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C4 (LOP_IN net04 VSS) mimcap_woum_sin_rf lt=15.0u wt=15.0u lay=7 m=1 mimflag=3 mismatchflag=0
    I1 (net011 net08 VSS) cartesian_res_schematic
    I16 (net04 net08 VSS) cartesian_res_schematic
ends D2S
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: ppf_buffer_lp_1stg
// View name: schematic
subckt ppf_buffer_lp_1stg LOIN LOOUT VDD VSS
    M25 (LOOUT net12 VSS VSS) nmos_rf lr=60n wr=1u nr=2 sigma=1 m=1 mismatchflag=0
    M26 (LOOUT net12 VDD VDD) pmos_rf lr=60n wr=1u nr=4 sigma=1 m=1 mismatchflag=0
    I21 (net12 LOOUT VSS) cartesian_res_schematic
    C4 (LOIN net12 VSS) mimcap_woum_sin_rf lt=25.0u wt=4u lay=7 m=1 mimflag=3 mismatchflag=0
ends ppf_buffer_lp_1stg
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: ppf_buffer_batch
// View name: schematic
subckt ppf_buffer_batch IN0 IN180 IN270 IN90 OUT0 OUT180 OUT270 OUT90 VDD VSS
    I3 (IN270 OUT270 VDD VSS) ppf_buffer_lp_1stg
    I2 (IN90 OUT90 VDD VSS) ppf_buffer_lp_1stg
    I1 (IN180 OUT180 VDD VSS) ppf_buffer_lp_1stg
    I0 (IN0 OUT0 VDD VSS) ppf_buffer_lp_1stg
ends ppf_buffer_batch
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: PPF4STAGE_BAK
// View name: schematic
subckt PPF4STAGE_BAK INM INP OUT0 OUT90 OUT180 OUT270 VSS
    C21 (net32 VSS VSS) mimcap_woum_sin_rf lt=14.74u wt=14.74u lay=7 m=1 mimflag=3 mismatchflag=0
    C20 (net34 INM VSS) mimcap_woum_sin_rf lt=14.74u wt=14.74u lay=7 m=1 mimflag=3 mismatchflag=0
    C35 (OUT0 net31 VSS) mimcap_woum_sin_rf lt=11.0u wt=11.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C30 (net36 net27 VSS) mimcap_woum_sin_rf lt=12.12u wt=12.12u lay=7 m=1 mimflag=3 mismatchflag=0
    C26 (net27 net35 VSS) mimcap_woum_sin_rf lt=13.4u wt=13.4u lay=7 m=1 mimflag=3 mismatchflag=0
    C33 (OUT180 net36 VSS) mimcap_woum_sin_rf lt=11.0u wt=11.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C24 (net15 net32 VSS) mimcap_woum_sin_rf lt=13.4u wt=13.4u lay=7 m=1 mimflag=3 mismatchflag=0
    C32 (OUT90 net30 VSS) mimcap_woum_sin_rf lt=11.0u wt=11.0u lay=7 m=1 mimflag=3 mismatchflag=0
    C25 (net20 net34 VSS) mimcap_woum_sin_rf lt=13.4u wt=13.4u lay=7 m=1 mimflag=3 mismatchflag=0
    C31 (net37 net24 VSS) mimcap_woum_sin_rf lt=12.12u wt=12.12u lay=7 m=1 mimflag=3 mismatchflag=0
    C27 (net24 net33 VSS) mimcap_woum_sin_rf lt=13.4u wt=13.4u lay=7 m=1 mimflag=3 mismatchflag=0
    C23 (net33 INP VSS) mimcap_woum_sin_rf lt=14.74u wt=14.74u lay=7 m=1 mimflag=3 mismatchflag=0
    C22 (net35 VSS VSS) mimcap_woum_sin_rf lt=14.74u wt=14.74u lay=7 m=1 mimflag=3 mismatchflag=0
    C29 (net30 net20 VSS) mimcap_woum_sin_rf lt=12.12u wt=12.12u lay=7 m=1 mimflag=3 mismatchflag=0
    C28 (net31 net15 VSS) mimcap_woum_sin_rf lt=12.12u wt=12.12u lay=7 m=1 mimflag=3 mismatchflag=0
    C34 (OUT270 net37 VSS) mimcap_woum_sin_rf lt=11.0u wt=11.0u lay=7 m=1 mimflag=3 mismatchflag=0
Rdum\<1\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<2\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<3\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<4\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<5\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<6\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<7\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<8\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<9\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<10\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<11\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<12\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<13\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<14\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<15\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<16\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<17\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<18\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<19\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<20\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<21\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<22\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<23\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<24\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<25\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<26\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<27\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<28\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<29\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<30\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<31\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

Rdum\<32\> (VSS VSS ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

//Series configuration of R11
R11_1__dmy0  (net20 R11_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R11_2__dmy0  (R11_1__dmy0 R11_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R11_3__dmy0  (R11_2__dmy0 R11_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R11_4__dmy0  (R11_3__dmy0 net36 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R11

//Series configuration of R10
R10_1__dmy0  (net15 R10_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R10_2__dmy0  (R10_1__dmy0 R10_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R10_3__dmy0  (R10_2__dmy0 R10_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R10_4__dmy0  (R10_3__dmy0 net30 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R10

//Series configuration of R9
R9_1__dmy0  (net24 R9_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R9_2__dmy0  (R9_1__dmy0 R9_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R9_3__dmy0  (R9_2__dmy0 R9_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R9_4__dmy0  (R9_3__dmy0 net31 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R9

//Series configuration of R8
R8_1__dmy0  (net27 R8_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R8_2__dmy0  (R8_1__dmy0 R8_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R8_3__dmy0  (R8_2__dmy0 R8_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R8_4__dmy0  (R8_3__dmy0 net37 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R8

//Series configuration of R7
R7_1__dmy0  (net35 R7_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R7_2__dmy0  (R7_1__dmy0 net24 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R7

//Series configuration of R13
R13_1__dmy0  (OUT0 R13_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_2__dmy0  (R13_1__dmy0 R13_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_3__dmy0  (R13_2__dmy0 R13_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_4__dmy0  (R13_3__dmy0 R13_4__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_5__dmy0  (R13_4__dmy0 R13_5__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_6__dmy0  (R13_5__dmy0 R13_6__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_7__dmy0  (R13_6__dmy0 R13_7__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R13_8__dmy0  (R13_7__dmy0 net37 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R13

//Series configuration of R12
R12_1__dmy0  (net31 R12_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_2__dmy0  (R12_1__dmy0 R12_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_3__dmy0  (R12_2__dmy0 R12_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_4__dmy0  (R12_3__dmy0 R12_4__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_5__dmy0  (R12_4__dmy0 R12_5__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_6__dmy0  (R12_5__dmy0 R12_6__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_7__dmy0  (R12_6__dmy0 R12_7__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R12_8__dmy0  (R12_7__dmy0 OUT90 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R12

R1 (VSS net34 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

R0 (INP net32 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

R3 (VSS net33 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

//Series configuration of R4
R4_1__dmy0  (net33 R4_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R4_2__dmy0  (R4_1__dmy0 net15 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R4

R2 (INM net35 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0

//Series configuration of R6
R6_1__dmy0  (net34 R6_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R6_2__dmy0  (R6_1__dmy0 net27 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R6

//Series configuration of R5
R5_1__dmy0  (net32 R5_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R5_2__dmy0  (R5_1__dmy0 net20 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R5

//Series configuration of R14
R14_1__dmy0  (net36 R14_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_2__dmy0  (R14_1__dmy0 R14_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_3__dmy0  (R14_2__dmy0 R14_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_4__dmy0  (R14_3__dmy0 R14_4__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_5__dmy0  (R14_4__dmy0 R14_5__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_6__dmy0  (R14_5__dmy0 R14_6__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_7__dmy0  (R14_6__dmy0 R14_7__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R14_8__dmy0  (R14_7__dmy0 OUT270 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R14

//Series configuration of R15
R15_1__dmy0  (OUT180 R15_1__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_2__dmy0  (R15_1__dmy0 R15_2__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_3__dmy0  (R15_2__dmy0 R15_3__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_4__dmy0  (R15_3__dmy0 R15_4__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_5__dmy0  (R15_4__dmy0 R15_5__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_6__dmy0  (R15_5__dmy0 R15_6__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_7__dmy0  (R15_6__dmy0 R15_7__dmy0 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
R15_8__dmy0  (R15_7__dmy0 net30 ) rppolys l=10.5u w=1u m=1 mf=(1) mismatchflag=0
//End of R15

ends PPF4STAGE_BAK
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: Mux
// View name: schematic
subckt Mux IN1 IN2 OUT SEL VDD VSS
    I2 (SEL net017 VDD VSS) Inv1
    I0 (SEL net12 VDD VSS) Inv1
    M4 (IN1 SEL OUT VSS) nmos_rf lr=60n wr=1u nr=12 sigma=1 m=1 mismatchflag=0
    M0 (IN2 net12 OUT VSS) nmos_rf lr=60n wr=1u nr=12 sigma=1 m=1 mismatchflag=0
    M1 (OUT net017 IN1 VDD) pmos_rf lr=60n wr=1u nr=24 sigma=1 m=1 mismatchflag=0
    M2 (OUT SEL IN2 VDD) pmos_rf lr=60n wr=1u nr=24 sigma=1 m=1 mismatchflag=0
ends Mux
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: PS_IBIAS_ALT
// View name: schematic
subckt PS_IBIAS_ALT PS_IBIASIN PS_IBT_I\<0\> PS_IBT_I\<1\> PS_IBT_I\<2\> PS_IBT_I\<3\> PS_IBT_I\<4\> PS_IBT_I\<5\> PS_IBT_I\<6\> PS_IBT_I\<7\> PS_IBT_Q\<0\> PS_IBT_Q\<1\> PS_IBT_Q\<2\> PS_IBT_Q\<3\> PS_IBT_Q\<4\> PS_IBT_Q\<5\> PS_IBT_Q\<6\> PS_IBT_Q\<7\> vdd vss
    M7 (net058 PS_IBIASIN vss vss) nmos_rf lr=240.0n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M1 (net95 PS_IBIASIN vss vss) nmos_rf lr=240.0n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M0 (PS_IBIASIN PS_IBIASIN vss vss) nmos_rf lr=240.0n wr=2u nr=4 sigma=1 m=1 mismatchflag=0
    M20 (PS_IBT_Q\<7\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M19 (PS_IBT_Q\<6\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M14 (PS_IBT_Q\<5\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M13 (PS_IBT_Q\<4\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M12 (PS_IBT_Q\<3\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M11 (PS_IBT_Q\<2\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M10 (PS_IBT_Q\<1\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M9 (PS_IBT_Q\<0\> net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M8 (net058 net058 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M18 (PS_IBT_I\<7\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M17 (PS_IBT_I\<6\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M16 (PS_IBT_I\<5\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M15 (PS_IBT_I\<4\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M6 (PS_IBT_I\<3\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M5 (PS_IBT_I\<2\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M4 (PS_IBT_I\<1\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M3 (PS_IBT_I\<0\> net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    M2 (net95 net95 vdd vdd) pmos_rf lr=240.0n wr=2u nr=8 sigma=1 m=1 mismatchflag=0
    C1 (PS_IBIASIN vss vss) mimcap_woum_sin_rf lt=30u wt=30u lay=7 m=1 mimflag=3 mismatchflag=0
    C0 (PS_IBIASIN vss vss) mimcap_woum_sin_rf lt=30u wt=30u lay=7 m=1 mimflag=3 mismatchflag=0
ends PS_IBIAS_ALT
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: PHASESHIFTER_ALT
// View name: schematic
subckt PHASESHIFTER_ALT AVDD_PS AVSS_PS GC_ENPSBRE GC_PS_I\<2\> GC_PS_I\<1\> GC_PS_I\<0\> GC_PS_Q\<2\> GC_PS_Q\<1\> GC_PS_Q\<0\> PSINM PSINP PSOUT PS_DCB PS_IB
    I15 (PS_DCB GC_PS_I\<2\> GC_PS_I\<1\> GC_PS_I\<0\> net015 net019 net014 net018 INTP_OUTM INTP_OUTP GC_PS_Q\<2\> GC_PS_Q\<1\> GC_PS_Q\<0\> AVDD_PS AVSS_PS PS_IBT_I\<0\> PS_IBT_I\<1\> PS_IBT_I\<2\> PS_IBT_I\<3\> PS_IBT_I\<4\> PS_IBT_I\<5\> PS_IBT_I\<6\> PS_IBT_Q\<0\> PS_IBT_Q\<1\> PS_IBT_Q\<2\> PS_IBT_Q\<3\> PS_IBT_Q\<4\> PS_IBT_Q\<5\> PS_IBT_Q\<6\>) VGA
    I14 (INTP_OUTM INTP_OUTP net031 AVDD_PS AVSS_PS) D2S
    I5 (net25 net27 net24 net26 net019 net015 net014 net018 AVDD_PS AVSS_PS) ppf_buffer_batch
    I11 (PSINM PSINP net25 net26 net27 net24 AVSS_PS) PPF4STAGE_BAK
    I13\<1\> (AVDD_PS AVSS_PS) CC_DCAP
    I13\<0\> (AVDD_PS AVSS_PS) CC_DCAP
    I22 (net031 net021 PSOUT GC_ENPSBRE AVDD_PS AVSS_PS) Mux
    I16 (PS_IB PS_IBT_I\<0\> PS_IBT_I\<1\> PS_IBT_I\<2\> PS_IBT_I\<3\> PS_IBT_I\<4\> PS_IBT_I\<5\> PS_IBT_I\<6\> net020 PS_IBT_Q\<0\> PS_IBT_Q\<1\> PS_IBT_Q\<2\> PS_IBT_Q\<3\> PS_IBT_Q\<4\> PS_IBT_Q\<5\> PS_IBT_Q\<6\> net027 AVDD_PS AVSS_PS) PS_IBIAS_ALT
ends PHASESHIFTER_ALT
// End of subcircuit definition.

// Library name: PhasedArray_WB_V2
// Cell name: LO_MIXER_1CHWB
// View name: schematic
subckt LO_MIXER_1CHWB AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0\<3\> GC_BPF_F0\<2\> GC_BPF_F0\<1\> GC_BPF_F0\<0\> GC_BPF_F1\<3\> GC_BPF_F1\<2\> GC_BPF_F1\<1\> GC_BPF_F1\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE GC_ILO_F0\<3\> GC_ILO_F0\<2\> GC_ILO_F0\<1\> GC_ILO_F0\<0\> GC_ILO_F1\<3\> GC_ILO_F1\<2\> GC_ILO_F1\<1\> GC_ILO_F1\<0\> GC_INTP_I\<2\> GC_INTP_I\<1\> GC_INTP_I\<0\> GC_INTP_Q\<2\> GC_INTP_Q\<1\> GC_INTP_Q\<0\> IF_OUTM_F0 IF_OUTM_F1 IF_OUTP_F0 IF_OUTP_F1 ILO_IBUF625\<3\> ILO_IBUF625\<2\> ILO_IBUF625\<1\> ILO_IBUF625\<0\> INTP_DCB INTP_IB LOINM_2G LOINP_2G MIXER_BIAS\<1\> MIXER_BIAS\<0\> PSOUT RFM_MIXER RFP_MIXER VPSLIM_H VPSLIM_L
    I18 (DVDD_PSLM DVSS_PSLM) CC_DCAP_SMALL
    I17\<3\> (DVDD_PSLM DVSS_PSLM) CC_DCAP
    I17\<2\> (DVDD_PSLM DVSS_PSLM) CC_DCAP
    I17\<1\> (DVDD_PSLM DVSS_PSLM) CC_DCAP
    I17\<0\> (DVDD_PSLM DVSS_PSLM) CC_DCAP
    I2 (PSOUT net34 net33 DVDD_PSLM VPSLIM_H VPSLIM_L DVSS_PSLM) PPFBUFFER_WPSLIM
    I6 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS GC_BPF_F1\<3\> GC_BPF_F1\<2\> GC_BPF_F1\<1\> GC_BPF_F1\<0\> GC_ILO_F1\<3\> GC_ILO_F1\<2\> GC_ILO_F1\<1\> GC_ILO_F1\<0\> GC_ENBBTST GC_ENILOTST ILO_IBUF625\<3\> ILO_IBUF625\<2\> IF_OUTM_F1 IF_OUTP_F1 net34 net33 MIXER_BIAS\<1\> RFM_MIXER RFP_MIXER) LO_MIXER_1CHNB
    I1 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS GC_BPF_F0\<3\> GC_BPF_F0\<2\> GC_BPF_F0\<1\> GC_BPF_F0\<0\> GC_ILO_F0\<3\> GC_ILO_F0\<2\> GC_ILO_F0\<1\> GC_ILO_F0\<0\> GC_ENBBTST GC_ENILOTST ILO_IBUF625\<1\> ILO_IBUF625\<0\> IF_OUTM_F0 IF_OUTP_F0 net34 net33 MIXER_BIAS\<0\> RFM_MIXER RFP_MIXER) LO_MIXER_1CHNB
    I16 (AVDD_PS AVSS GC_ENPSBRE GC_INTP_I\<2\> GC_INTP_I\<1\> GC_INTP_I\<0\> GC_INTP_Q\<2\> GC_INTP_Q\<1\> GC_INTP_Q\<0\> LOINM_2G LOINP_2G PSOUT INTP_DCB INTP_IB) PHASESHIFTER_ALT
ends LO_MIXER_1CHWB
// End of subcircuit definition.

// Library name: LNA_qmeng
// Cell name: LNA_QM_CORE
// View name: schematic
subckt LNA_QM_CORE net059 OUTN IN_INT
R5 (net011 VAUX VDD) rppolywo_rf l=6u w=500n m=1 mismatchflag=0
R4 (net063 SF_BIAS VDD) rppolywo_rf l=6u w=500n m=1 mismatchflag=0
R10 (net0252 VMAIN VDD) rppolywo_rf l=6u w=500n m=1 mismatchflag=0
R3 (net033 SF_BIAS VDD) rppolywo_rf l=6u w=500n m=1 mismatchflag=0
C12 (net0252 VSS VSS) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3 \
        mismatchflag=0
C9 (net0252 VSS VSS) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3 \
        mismatchflag=0
C6 (OUTN net063 VDD) mimcap_um_sin_rf lt=20u wt=20u m=1 mimflag=3 \
        mismatchflag=0
C43 (IN_INT net011 VDD) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3 \
        mismatchflag=0
C5 (OUTP net033 VDD) mimcap_um_sin_rf lt=20u wt=20u m=1 mimflag=3 \
        mismatchflag=0
C11 (net059 VDD VDD) mimcap_um_sin_rf lt=100.0000u wt=50u m=1 mimflag=3 \
        mismatchflag=0
C8 (net047 VDD VDD) mimcap_um_sin_rf lt=100.0000u wt=50u m=1 mimflag=3 \
        mismatchflag=0
M10 (VDD net033 VOUTP VOUTP) nmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=1 \
        mismatchflag=0
M12 (VDD net063 VOUTN VOUTN) nmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=1 \
        mismatchflag=0
M4 (OUTN net011 VSS VSS) nmos_rf lr=60n wr=1u nr=10 sigma=1 m=4 \
        mismatchflag=0
M13 (OUTP net0252 IN_INT IN_INT) nmos_rf lr=60n wr=1u nr=10 sigma=1 m=1 \
        mismatchflag=0
R38 (net058 net057 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R0 (VOUTP VSS VDD) rppolys_rf l=20u w=1u m=1 mismatchflag=0
R36 (net042 net056 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R35 (net056 net055 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R34 (net055 net054 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R33 (net054 net060 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R41 (OUTN net032 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R32 (net060 OUTP VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R1 (VOUTN VSS VDD) rppolys_rf l=20u w=1u m=1 mismatchflag=0
R40 (net032 VDD VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R37 (net057 net042 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
R39 (VDD net058 VDD) rppolyl_rf l=24.0u w=3u m=1 mismatchflag=0
L8 (net047 OUTP VSS) spiral_std_mu_z w=3u rad=41.0u nr=3.75 lay=9 \
        spacing=2u gdis=10u m=1
L9 (net059 OUTN VSS) spiral_std_mu_z w=3u rad=39.0u nr=3.75 lay=9 \
        spacing=2u gdis=10u m=1
ends LNA_QM_CORE

// Library name: PhasedArray_WB_V2
// Cell name: TOP_CORE
// View name: schematic
I9 (GC_BPF_F0_C1\<0\> IB_MIXER  AVDD_BPF0P5 ) LNA_QM_CORE 
I7 (IB_MIXER IBIAS_MIXER\<0\> IBIAS_MIXER\<1\> IBIAS_MIXER\<2\> IBIAS_MIXER\<3\> AVDD_MIXER AVSS) IBIAS250_MIXER
I8 (IB625_ILO IBUF625_ILO\<0\> IBUF625_ILO\<1\> IBUF625_ILO\<2\> IBUF625_ILO\<3\> IBUF625_ILO\<4\> IBUF625_ILO\<5\> IBUF625_ILO\<6\> IBUF625_ILO\<7\> AVDD_LO1V AVSS) IBIAS625_ILOBUF
I1 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0_C1\<3\> GC_BPF_F0_C1\<2\> GC_BPF_F0_C1\<1\> GC_BPF_F0_C1\<0\> GC_BPF_F1_C1\<3\> GC_BPF_F1_C1\<2\> GC_BPF_F1_C1\<1\> GC_BPF_F1_C1\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE_C1 GC_ILO_F0_C1\<3\> GC_ILO_F0_C1\<2\> GC_ILO_F0_C1\<1\> GC_ILO_F0_C1\<0\> GC_ILO_F1_C1\<3\> GC_ILO_F1_C1\<2\> GC_ILO_F1_C1\<1\> GC_ILO_F1_C1\<0\> GC_PS_I_C1\<2\> GC_PS_I_C1\<1\> GC_PS_I_C1\<0\> GC_PS_Q_C1\<2\> GC_PS_Q_C1\<1\> GC_PS_Q_C1\<0\> IF_OUTM_F0_C1 IF_OUTM_F1_C1 IF_OUTP_F0_C1 IF_OUTP_F1_C1 IBUF625_ILO\<7\> IBUF625_ILO\<6\> IBUF625_ILO\<5\> IBUF625_ILO\<4\> VDCB_PS_C1 IB_PS_I_C1 LOINM_2G LOINP_2G IBIAS_MIXER\<3\> IBIAS_MIXER\<2\> net052 RFM_MIXER_C1 RFP_MIXER_C1 VPSLIM_H_C1 VPSLIM_L_C1) LO_MIXER_1CHWB
I0 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0_C0\<3\> GC_BPF_F0_C0\<2\> GC_BPF_F0_C0\<1\> GC_BPF_F0_C0\<0\> GC_BPF_F1_C0\<3\> GC_BPF_F1_C0\<2\> GC_BPF_F1_C0\<1\> GC_BPF_F1_C0\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE_C0 GC_ILO_F0_C0\<3\> GC_ILO_F0_C0\<2\> GC_ILO_F0_C0\<1\> GC_ILO_F0_C0\<0\> GC_ILO_F1_C0\<3\> GC_ILO_F1_C0\<2\> GC_ILO_F1_C0\<1\> GC_ILO_F1_C0\<0\> GC_PS_I_C0\<2\> GC_PS_I_C0\<1\> GC_PS_I_C0\<0\> GC_PS_Q_C0\<2\> GC_PS_Q_C0\<1\> GC_PS_Q_C0\<0\> IF_OUTM_F0_C0 IF_OUTM_F1_C0 IF_OUTP_F0_C0 IF_OUTP_F1_C0 IBUF625_ILO\<3\> IBUF625_ILO\<2\> IBUF625_ILO\<1\> IBUF625_ILO\<0\> VDCB_PS_C0 IB_PS_C0 LOINM_2G LOINP_2G IBIAS_MIXER\<1\> IBIAS_MIXER\<0\> net065 RFM_MIXER_C0 RFP_MIXER_C0 VPSLIM_H_C0 VPSLIM_L_C0) LO_MIXER_1CHWB
