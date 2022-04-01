subckt vcobuf50 INM INP OUTM OUTP VDD VSS
    M1 (OUTP INM VSS VSS) nmos_rf lr=60n wr=2u nr=16
    M0 (OUTM INP VSS VSS) nmos_rf lr=60n wr=2u nr=16
    R1 (VDD OUTP VSS) rppolyl_rf l=12.915u w=4u m=1
    R0 (VDD OUTM VSS) rppolyl_rf l=12.915u w=4u m=1
ends vcobuf50

subckt VCO_BUFF_LIN_2OUTS_v2_FINAL I625U IN OUT1 OUT2 VDD VSS
    M5 (OUT2 net11 VDD VDD) pmos_rf lr=60n wr=2u nr=16
    M15 (OUT1 net11 VDD VDD) pmos_rf lr=60n wr=2u nr=16
    M3 (OUT2 net11 VSS VSS) nmos_rf lr=60n wr=2u nr=8
    M17 (VDD net7 net023 net023) nmos_rf lr=60n wr=2u nr=16 sigma=1 m=4
    M20 (net023 I625U VSS VSS) nmos_rf lr=120.0n wr=2u nr=4 sigma=1 m=8
    M21 (I625U I625U VSS VSS) nmos_rf lr=120.0n wr=2u nr=4
    M14 (OUT1 net11 VSS VSS) nmos_rf lr=60n wr=2u nr=8
    R3 (net11 OUT2 VSS) rppolywo_rf l=10.5u w=4u m=1
    R0 (net11 OUT1 VSS) rppolywo_rf l=10.5u w=4u m=1
    C2 (VDD VSS) nmoscap lr=12.0u wr=16.0u m=2
    C0 (IN net7 VSS) mimcap_woum_sin_rf lt=40u wt=10u lay=7 m=1
    C1 (net023 net11 VSS) mimcap_woum_sin_rf lt=40u wt=10u lay=7 m=1
    R0 (net7 VSS) res=80K
ends VCO_BUFF_LIN_2OUTS_v2_FINAL


subckt capbank_gp_lowC_noLSB_BPF B\<3\> B\<2\> B\<1\> B\<0\> LEFT RIGHT VDD VSS
    C5 (RIGHT net07 VSS) mimcap_woum_sin_rf lt=10u wt=10u lay=7 m=1
    C4 (LEFT net010 VSS) mimcap_woum_sin_rf lt=10u wt=10u lay=7 m=1
    C3 (RIGHT net3 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=2
    C2 (LEFT net1 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=2
    C1 (RIGHT net4 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=1
    C0 (LEFT net2 VSS) mimcap_woum_sin_rf lt=5u wt=5u lay=7 m=1
    M2 (net010 b2_buf net07 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=5
    M1 (net1 b1_buf net3 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=2
    M0 (net2 b0_buf net4 VSS) nmos_rf lr=60n wr=2u nr=20
    M44 (net0155 net0120 VSS VSS) nch l=60n w=1u m=1 nf=1
    M40 (net0120 B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M37 (net0159 net0104 VSS VSS) nch l=60n w=1u m=1 nf=1
    M36 (net0158 net0105 VSS VSS) nch l=60n w=1u m=1 nf=1
    M35 (net0157 net0106 VSS VSS) nch l=60n w=1u m=1 nf=1
    M31 (net0104 B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M30 (net0105 B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M29 (net0106 B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M18 (b3_buf b3_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M16 (b3_inv B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M15 (b2_inv B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M13 (b2_buf b2_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M11 (b1_buf b1_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M9 (b1_inv B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M7 (b0_buf b0_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M4 (b0_inv B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M42 (net0155 net0120 VDD VDD) pch l=60n w=1u m=1 nf=1
    M38 (net0120 B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M34 (net0159 net0104 VDD VDD) pch l=60n w=1u m=1 nf=1
    M33 (net0158 net0105 VDD VDD) pch l=60n w=1u m=1 nf=1
    M32 (net0157 net0106 VDD VDD) pch l=60n w=1u m=1 nf=1
    M28 (net0104 B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M27 (net0105 B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M26 (net0106 B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M19 (b3_inv B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M17 (b3_buf b3_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M14 (b2_buf b2_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M12 (b2_inv B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M10 (b1_buf b1_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M8 (b1_inv B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M6 (b0_buf b0_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M5 (b0_inv B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1
    R14 (b2_inv net010) res=24K
    R15 (b2_inv net07) res=24K
    R16 (b1_inv net3) res=24K
    R17 (b1_inv net1) res=24K
    R18 (b0_inv net2) res=24K
    R19 (b0_inv net4) res=24K
ends capbank_gp_lowC_noLSB_BPF

subckt BPF4 DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> INM INP OUTM OUTP VDDSW VDD_BPF0P5 VSS
    M2 (OUTP INM VSS VSS) nmos_rf lr=120.0n wr=2.5u nr=32
    M8 (OUTM INP VSS VSS) nmos_rf lr=120.0n wr=2.5u nr=32
    I5 (DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> OUTM OUTP VDDSW VSS) capbank_gp_lowC_noLSB_BPF
    L4 (OUTM OUTP VSS VDD_BPF0P5) spiral_sym_ct_mu_z w=7u nr=3 rad=24.0u lay=9 spacing=3u gdis=10u m=1
ends BPF4

subckt capbank_gp_lowC_noLSB B\<3\> B\<2\> B\<1\> B\<0\> LEFT RIGHT VDD VSS
    C9 (LEFT net06 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=2
    C8 (RIGHT net08 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=2
    C5 (RIGHT net07 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=1
    C4 (LEFT net010 VSS) mimcap_woum_sin_rf lt=16.0u wt=16.0u lay=7 m=1
    C3 (RIGHT net3 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=2
    C2 (LEFT net1 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=2
    C1 (RIGHT net4 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=1
    C0 (LEFT net2 VSS) mimcap_woum_sin_rf lt=8u wt=8u lay=7 m=1
    M3 (net08 b3_buf net06 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=10
    M2 (net010 b2_buf net07 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=5
    M1 (net1 b1_buf net3 VSS) nmos_rf lr=60n wr=2u nr=20 sigma=1 m=2
    M0 (net2 b0_buf net4 VSS) nmos_rf lr=60n wr=2u nr=20
    M44 (net0155 net0120 VSS VSS) nch l=60n w=1u m=1 nf=1
    M40 (net0120 B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M37 (net0159 net0104 VSS VSS) nch l=60n w=1u m=1 nf=1
    M36 (net0158 net0105 VSS VSS) nch l=60n w=1u m=1 nf=1
    M35 (net0157 net0106 VSS VSS) nch l=60n w=1u m=1 nf=1
    M31 (net0104 B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M30 (net0105 B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M29 (net0106 B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M18 (b3_buf b3_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M16 (b3_inv B\<3\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M15 (b2_inv B\<2\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M13 (b2_buf b2_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M11 (b1_buf b1_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M9 (b1_inv B\<1\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M7 (b0_buf b0_inv VSS VSS) nch l=60n w=1u m=1 nf=1
    M4 (b0_inv B\<0\> VSS VSS) nch l=60n w=1u m=1 nf=1
    M42 (net0155 net0120 VDD VDD) pch l=60n w=1u m=1 nf=1
    M38 (net0120 B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M34 (net0159 net0104 VDD VDD) pch l=60n w=1u m=1 nf=1
    M33 (net0158 net0105 VDD VDD) pch l=60n w=1u m=1 nf=1
    M32 (net0157 net0106 VDD VDD) pch l=60n w=1u m=1 nf=1
    M28 (net0104 B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M27 (net0105 B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M26 (net0106 B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M19 (b3_inv B\<3\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M17 (b3_buf b3_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M14 (b2_buf b2_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M12 (b2_inv B\<2\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M10 (b1_buf b1_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M8 (b1_inv B\<1\> VDD VDD) pch l=60n w=1u m=1 nf=1
    M6 (b0_buf b0_inv VDD VDD) pch l=60n w=1u m=1 nf=1
    M5 (b0_inv B\<0\> VDD VDD) pch l=60n w=1u m=1 nf=1
    R12 (b3_inv net08) res=24K
    R13 (b3_inv net06) res=24K
    R14 (b2_inv net010) res=24K
    R15 (b2_inv net07) res=24K
    R16 (b1_inv net3) res=24K
    R17 (b1_inv net1) res=24K
    R18 (b0_inv net2) res=24K
    R19 (b0_inv net4) res=24K
ends capbank_gp_lowC_noLSB

subckt VCO DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VDD_VCO0P5 VSS
    M0 (OUTP OUTM VSS VSS) nmos_rf lr=60n wr=1u nr=25 sigma=1 m=2
    M1 (OUTM OUTP VSS VSS) nmos_rf lr=60n wr=1u nr=25 sigma=1 m=2
    I10 (DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VSS) capbank_gp_lowC_noLSB
    L4 (OUTP OUTM VSS VDD_VCO0P5) spiral_sym_ct_mu_z w=9u nr=2 rad=27.0u lay=9 spacing=3u gdis=10u m=1
ends VCO

subckt ILO_IN IN OUT VDDSW VSS
    C2 (IN net7 VSS) mimcap_woum_sin_rf lt=20u wt=20u lay=7 m=1
    R3 (VSS net7 VSS) rppolywo_rf l=12.0u w=1u m=1
    R2 (net7 VDDSW VSS) rppolywo_rf l=12.0u w=1u m=1
    M3 (OUT net7 VSS VSS) nmos_rf lr=60n wr=1u nr=32
ends ILO_IN

subckt ILO DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> INM INP OUTM OUTP VDDSW VDD_VCO0P5 VSS
    I11 (DIG_VCO\<3\> DIG_VCO\<2\> DIG_VCO\<1\> DIG_VCO\<0\> OUTM OUTP VDDSW VDD_VCO0P5 VSS) VCO
    L0 (OUTM net5) inductor l=pind_in_ILO
    L1 (OUTP net6) inductor l=pind_in_ILO
    I12 (INP net5 VDDSW VSS) ILO_IN
    I13 (INM net6 VDDSW VSS) ILO_IN
ends ILO

subckt LO_1CHNB_ALT AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> IBUF625U\<0\> IBUF625U\<1\> LOM_BPF2G LOP_BPF2G LO_OUTM_INT LO_OUTP_INT LO_OUTP_TST LO_OUTM_TST
    I4 (IBUF625U\<0\> net61 LO_OUTP_INT LO_OUTP_TST AVDD_LO1V AVSS) VCO_BUFF_LIN_2OUTS_v2_FINAL
    I5 (IBUF625U\<1\> net60 LO_OUTM_INT LO_OUTM_TST AVDD_LO1V AVSS) VCO_BUFF_LIN_2OUTS_v2_FINAL
    I0 (DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> LOM_BPF2G LOP_BPF2G net013 net014 AVDD_LO1V AVDD_BPF0P5 AVSS) BPF4
    I14 (net013 net014 net022 net021 AVDD_LO1V AVSS) vcobuf50
    I3 (DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> net013 net014 net60 net61 AVDD_LO1V AVDD_ILO0P5 AVSS) ILO
ends LO_1CHNB_ALT

subckt MIXER_LOSWBIAS_RES MIXER_LOBIAS VDD VSS
R5 (VDD  MIXER_LOBIAS) rppolywo l=4u w=1u m=1 mf=(1)
R8 (MIXER_LOBIAS VSS ) rppolywo l=4u w=1u m=1 mf=(1)
ends MIXER_LOSWBIAS_RES

subckt MIXER_LOAD_RES A B
R4 (net03 B ) rppolys l=13.0u w=1u m=1 mf=(1)
R0 (A net06 ) rppolys l=13.0u w=1u m=1 mf=(1)
R1 (net06 net05 ) rppolys l=13.0u w=1u m=1 mf=(1)
R3 (net05 net03 ) rppolys l=13.0u w=1u m=1 mf=(1)
ends MIXER_LOAD_RES

subckt Mixer IFM IFP LOM LOP MIXER_TAIL_IIN OUTM OUTP RFM RFP VDD VSS
    M35 (net051 tailm VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=12
    M34 (net039 tailp VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=12
    M44\<1\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<2\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<3\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<4\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<5\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<6\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<7\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M44\<8\> (VSS MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M43 (VSS VSS VSS VSS) nmos_rf lr=60n wr=2u nr=4 sigma=1 m=2
    M38 (MIXER_TAIL_IIN MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M39 (pbias MIXER_TAIL_IIN VSS VSS) nmos_rf lr=240.0n wr=3.6u nr=2
    M7 (IFM Oscp net039 net039) nmos_rf lr=60n wr=2u nr=4
    M13 (IFP Oscp net051 net051) nmos_rf lr=60n wr=2u nr=4
    M12 (IFM Oscm net051 net051) nmos_rf lr=60n wr=2u nr=4
    M11 (IFP Oscm net039 net039) nmos_rf lr=60n wr=2u nr=4
    M29 (VDD VDD VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=8 sigma=1 m=2
    M16 (pbias pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=8 sigma=1 m=2
    M24 (IFP pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=32 sigma=1 m=2
    M23 (IFM pbias VDD VDD) pmos_rf lr=240.0n wr=2.05u nr=32 sigma=1 m=2
    R29 (tailm tailp ) rppolywo l=6u w=1u m=1 mf=(1)
    I12 (Oscp VDD VSS) MIXER_LOSWBIAS_RES
    I21 (Oscm VDD VSS) MIXER_LOSWBIAS_RES
    R18 (IFP VDD) rppolys l=13.0u w=1u m=4 mf=(1)
    R17 (IFM VDD) rppolys l=13.0u w=1u m=4 mf=(1)
R1\<1\> (VSS net040\<0\> ) rppolys l=13.0u w=1u m=1 mf=(1)
R1\<2\> (VSS net040\<1\> ) rppolys l=13.0u w=1u m=1 mf=(1)
R1\<3\> (VSS net040\<2\> ) rppolys l=13.0u w=1u m=1 mf=(1)
R1\<4\> (VSS net040\<3\> ) rppolys l=13.0u w=1u m=1 mf=(1)
    C15 (LOP Oscp VSS) mimcap_woum_sin_rf lt=32.0u wt=16.0u lay=7 m=1
    C6 (RFM tailm VSS) mimcap_woum_sin_rf lt=22.0u wt=22.0u lay=7 m=1
    C7 (RFP tailp VSS) mimcap_woum_sin_rf lt=22.0u wt=22.0u lay=7 m=1
    C14 (LOM Oscm VSS) mimcap_woum_sin_rf lt=32.0u wt=16.0u lay=7 m=1
R2 (IFP OUTP ) rppolywo l=6u w=1u m=1 mf=(1)
R5\<1\> (VSS net043\<0\> ) rppolywo l=6u w=1u m=1 mf=(1)
R5\<2\> (VSS net043\<1\> ) rppolywo l=6u w=1u m=1 mf=(1)
R5\<3\> (VSS net043\<2\> ) rppolywo l=6u w=1u m=1 mf=(1)
R5\<4\> (VSS net043\<3\> ) rppolywo l=6u w=1u m=1 mf=(1)
R0 (OUTM IFM ) rppolywo l=6u w=1u m=1 mf=(1)
ends Mixer

subckt LO_MIXER_1CHNB AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> EN_BBTST EN_ILOTST IBUF625\<1\> IBUF625\<0\> IFM IFP LOM_BPF2G LOP_BPF2G MIXER_BIAS RFM RFP
    I22 (net027 net032 net034 net033 AVDD_TBUF1V AVSS) vcobuf50
    I12 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVSS DIG_BPF\<3\> DIG_BPF\<2\> DIG_BPF\<1\> DIG_BPF\<0\> DIG_ILO\<3\> DIG_ILO\<2\> DIG_ILO\<1\> DIG_ILO\<0\> IBUF625\<0\> IBUF625\<1\> LOM_BPF2G LOP_BPF2G net042 net041 net020 net019) LO_1CHNB_ALT
    I14 (IFM IFP net042 net041 MIXER_BIAS net031 net030 RFM RFP AVDD_MIXER AVSS) Mixer
ends LO_MIXER_1CHNB

subckt LO_MIXER_1CHWB AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0\<3\> GC_BPF_F0\<2\> GC_BPF_F0\<1\> GC_BPF_F0\<0\> GC_BPF_F1\<3\> GC_BPF_F1\<2\> GC_BPF_F1\<1\> GC_BPF_F1\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE GC_ILO_F0\<3\> GC_ILO_F0\<2\> GC_ILO_F0\<1\> GC_ILO_F0\<0\> GC_ILO_F1\<3\> GC_ILO_F1\<2\> GC_ILO_F1\<1\> GC_ILO_F1\<0\> GC_INTP_I\<2\> GC_INTP_I\<1\> GC_INTP_I\<0\> GC_INTP_Q\<2\> GC_INTP_Q\<1\> GC_INTP_Q\<0\> IF_OUTM_F0 IF_OUTM_F1 IF_OUTP_F0 IF_OUTP_F1 ILO_IBUF625\<3\> ILO_IBUF625\<2\> ILO_IBUF625\<1\> ILO_IBUF625\<0\> INTP_DCB INTP_IB LOINM_2G LOINP_2G MIXER_BIAS\<1\> MIXER_BIAS\<0\> PSOUT RFM_MIXER RFP_MIXER VPSLIM_H VPSLIM_L
    I6 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS GC_BPF_F1\<3\> GC_BPF_F1\<2\> GC_BPF_F1\<1\> GC_BPF_F1\<0\> GC_ILO_F1\<3\> GC_ILO_F1\<2\> GC_ILO_F1\<1\> GC_ILO_F1\<0\> GC_ENBBTST GC_ENILOTST ILO_IBUF625\<3\> ILO_IBUF625\<2\> IF_OUTM_F1 IF_OUTP_F1 net34 net33 MIXER_BIAS\<1\> RFM_MIXER RFP_MIXER) LO_MIXER_1CHNB
    I1 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_TBUF1V AVSS GC_BPF_F0\<3\> GC_BPF_F0\<2\> GC_BPF_F0\<1\> GC_BPF_F0\<0\> GC_ILO_F0\<3\> GC_ILO_F0\<2\> GC_ILO_F0\<1\> GC_ILO_F0\<0\> GC_ENBBTST GC_ENILOTST ILO_IBUF625\<1\> ILO_IBUF625\<0\> IF_OUTM_F0 IF_OUTP_F0 net34 net33 MIXER_BIAS\<0\> RFM_MIXER RFP_MIXER) LO_MIXER_1CHNB
ends LO_MIXER_1CHWB

subckt LNA_QM_CORE net059 OUTN IN_INT
R5 (net011 VAUX VDD) rppolywo_rf l=6u w=500n m=1
R4 (net063 SF_BIAS VDD) rppolywo_rf l=6u w=500n m=1
R10 (net0252 VMAIN VDD) rppolywo_rf l=6u w=500n m=1
R3 (net033 SF_BIAS VDD) rppolywo_rf l=6u w=500n m=1
C12 (net0252 VSS VSS) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3
C9 (net0252 VSS VSS) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3
C6 (OUTN net063 VDD) mimcap_um_sin_rf lt=20u wt=20u m=1 mimflag=3
C43 (IN_INT net011 VDD) mimcap_um_sin_rf lt=16.0u wt=16.0u m=1 mimflag=3
C5 (OUTP net033 VDD) mimcap_um_sin_rf lt=20u wt=20u m=1 mimflag=3
C11 (net059 VDD VDD) mimcap_um_sin_rf lt=100.0000u wt=50u m=1 mimflag=3
C8 (net047 VDD VDD) mimcap_um_sin_rf lt=100.0000u wt=50u m=1 mimflag=3
M10 (VDD net033 VOUTP VOUTP) nmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=1
M12 (VDD net063 VOUTN VOUTN) nmos_rf lr=120.0n wr=2u nr=32 sigma=1 m=1
M4 (OUTN net011 VSS VSS) nmos_rf lr=60n wr=1u nr=10 sigma=1 m=4
M13 (OUTP net0252 IN_INT IN_INT) nmos_rf lr=60n wr=1u nr=10 sigma=1 m=1
R38 (net058 net057 VDD) rppolyl_rf l=24.0u w=3u m=1
R0 (VOUTP VSS VDD) rppolys_rf l=20u w=1u m=1
R36 (net042 net056 VDD) rppolyl_rf l=24.0u w=3u m=1
R35 (net056 net055 VDD) rppolyl_rf l=24.0u w=3u m=1
R34 (net055 net054 VDD) rppolyl_rf l=24.0u w=3u m=1
R33 (net054 net060 VDD) rppolyl_rf l=24.0u w=3u m=1
R41 (OUTN net032 VDD) rppolyl_rf l=24.0u w=3u m=1
R32 (net060 OUTP VDD) rppolyl_rf l=24.0u w=3u m=1
R1 (VOUTN VSS VDD) rppolys_rf l=20u w=1u m=1
R40 (net032 VDD VDD) rppolyl_rf l=24.0u w=3u m=1
R37 (net057 net042 VDD) rppolyl_rf l=24.0u w=3u m=1
R39 (VDD net058 VDD) rppolyl_rf l=24.0u w=3u m=1
L8 (net047 OUTP VSS) spiral_std_mu_z w=3u rad=41.0u nr=3.75 lay=9
L9 (net059 OUTN VSS) spiral_std_mu_z w=3u rad=39.0u nr=3.75 lay=9
ends LNA_QM_CORE

I9 (GC_BPF_F0_C1\<0\> IB_MIXER  AVDD_BPF0P5 ) LNA_QM_CORE
I1 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0_C1\<3\> GC_BPF_F0_C1\<2\> GC_BPF_F0_C1\<1\> GC_BPF_F0_C1\<0\> GC_BPF_F1_C1\<3\> GC_BPF_F1_C1\<2\> GC_BPF_F1_C1\<1\> GC_BPF_F1_C1\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE_C1 GC_ILO_F0_C1\<3\> GC_ILO_F0_C1\<2\> GC_ILO_F0_C1\<1\> GC_ILO_F0_C1\<0\> GC_ILO_F1_C1\<3\> GC_ILO_F1_C1\<2\> GC_ILO_F1_C1\<1\> GC_ILO_F1_C1\<0\> GC_PS_I_C1\<2\> GC_PS_I_C1\<1\> GC_PS_I_C1\<0\> GC_PS_Q_C1\<2\> GC_PS_Q_C1\<1\> GC_PS_Q_C1\<0\> IF_OUTM_F0_C1 IF_OUTM_F1_C1 IF_OUTP_F0_C1 IF_OUTP_F1_C1 IBUF625_ILO\<7\> IBUF625_ILO\<6\> IBUF625_ILO\<5\> IBUF625_ILO\<4\> VDCB_PS_C1 IB_PS_I_C1 LOINM_2G LOINP_2G IBIAS_MIXER\<3\> IBIAS_MIXER\<2\> net052 RFM_MIXER_C1 RFP_MIXER_C1 VPSLIM_H_C1 VPSLIM_L_C1) LO_MIXER_1CHWB
I0 (AVDD_BPF0P5 AVDD_ILO0P5 AVDD_LO1V AVDD_MIXER AVDD_PS AVDD_TBUF1V AVSS DVDD_PSLM DVSS_PSLM GC_BPF_F0_C0\<3\> GC_BPF_F0_C0\<2\> GC_BPF_F0_C0\<1\> GC_BPF_F0_C0\<0\> GC_BPF_F1_C0\<3\> GC_BPF_F1_C0\<2\> GC_BPF_F1_C0\<1\> GC_BPF_F1_C0\<0\> GC_ENBBTST GC_ENILOTST GC_ENPSBRE_C0 GC_ILO_F0_C0\<3\> GC_ILO_F0_C0\<2\> GC_ILO_F0_C0\<1\> GC_ILO_F0_C0\<0\> GC_ILO_F1_C0\<3\> GC_ILO_F1_C0\<2\> GC_ILO_F1_C0\<1\> GC_ILO_F1_C0\<0\> GC_PS_I_C0\<2\> GC_PS_I_C0\<1\> GC_PS_I_C0\<0\> GC_PS_Q_C0\<2\> GC_PS_Q_C0\<1\> GC_PS_Q_C0\<0\> IF_OUTM_F0_C0 IF_OUTM_F1_C0 IF_OUTP_F0_C0 IF_OUTP_F1_C0 IBUF625_ILO\<3\> IBUF625_ILO\<2\> IBUF625_ILO\<1\> IBUF625_ILO\<0\> VDCB_PS_C0 IB_PS_C0 LOINM_2G LOINP_2G IBIAS_MIXER\<1\> IBIAS_MIXER\<0\> net065 RFM_MIXER_C0 RFP_MIXER_C0 VPSLIM_H_C0 VPSLIM_L_C0) LO_MIXER_1CHWB