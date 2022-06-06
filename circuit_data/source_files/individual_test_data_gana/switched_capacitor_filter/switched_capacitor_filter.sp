.subckt telescopic_ota d1 vinn vinp vbiasn vbiasp1 vbiasp2 voutn voutp
m9 voutn vbiasn net8 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=9 nf=4
m8 voutp vbiasn net014 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=9 nf=4
m5 d1 d1 gnd! gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=4
m4 net10 d1 gnd! gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=6
m3 net014 vinn net10 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=12 nf=6
m0 net8 vinp net10 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=12 nf=6
m7 voutp vbiasp2 net012 net012 pmos_rvt w=270e-9 l=20e-9 nfin=12 nf=2
m6 voutn vbiasp2 net06 net06 pmos_rvt w=270e-9 l=20e-9 nfin=12 nf=2
m2 net012 vbiasp1 vdd! vdd! pmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m1 net06 vbiasp1 vdd! vdd! pmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
.ends telescopic_ota
.subckt switched_capacitor_filter voutn voutp vinp vinn ibias
m0 voutn phi1 net67 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m7 net66 phi1 net63 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m6 net72 phi1 vinn gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m3 gnd! phi2 net67 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m5 gnd! phi2 net63 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m4 net72 phi2 gnd! gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m8 net60 phi2 gnd! gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m11 gnd! phi2 net68 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m9 gnd! phi2 net62 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m10 net64 phi1 net62 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m12 net60 phi1 vinp gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
m14 voutp phi1 net68 gnd! nmos_rvt w=270e-9 l=20e-9 nfin=6 nf=2
XIOTA ibias net64 net66 vbiasn vbiasp1 vbiasp2 voutn voutp telescopic_ota
c9 voutp gnd! cap=60e-15
c8 voutn gnd! cap=60e-15
c7 net62 net68 cap=30e-15
c6 net64 voutp cap=60e-15
c5 vinn net64 cap=30e-15
c4 net60 net62 cap=60e-15
c3 net66 voutn cap=60e-15
c2 vinp net66 cap=30e-15
c1 net63 net67 cap=30e-15
c0 net72 net63 cap=60e-15
.ends switched_capacitor_filter
