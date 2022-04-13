# LNA dataset
It consists of 17 *low noise amplifier* topologies. These circuits are commonly used in receiver paths. As the first stage of receivers, LNAs play a critical role in the overall performance of the receiver. The low noise noise requirement of LNAs limit the number of configurations. The input resistance of LNAs are typically 50 $\Omega$. These circuits are not sized and drawn in ASAP 7nm PDK.

These are the list of LNAs available here

1. CS stage with inductive load - [image](../../../images/lna/1.png) - [SPICE](./LNA_1.sp)
2. CS stage with resistive feedback - [image](../../../images/lna/2.png) -[SPICE](./LNA_2.sp)
3. CS stage with active load - [image](../../../images/lna/3.png) - [SPICE](./LNA_3.sp)
4. cg stage - [image](../../../images/lna/4.png) - [SPICE](./LNA_4.sp)
5. cg current source
6. cg biasing with resistor
7. cg biasing with proper biasing (remove)
8. cg cascode stage
9. cg cascode stage biasing (removed)
10. cg cascode stage full
11. CS inductive degenerate
12. CS inductive degenerate with pads
13. CS transformer feedforward (problem)
14. CS noise cancelling
15. CS load switching
16. Resistance cancelling lna
17. CS differential
18. cg differential
19. test circuit

# Features
These topologies can be classified broadly in three categories (Common-Source (CS), Common-Gate (cg), Broadband).
1. The input signals from antenna named as "Vantenna" (marked as signal) or "Vantenna1" and "Vantenna2" in differential LNA
2. The gain switching signals are named as GS1/GS2 (marked as enable)
3. The bias signals are marked as "Vbiasn/Vbiasp". In some cases there would be two bias signals "Vbiasn1/Vbiasn2" where Vbiasn2 > Vbiasn1
4. The output signal is "Vrf" which goes to the mixer or "Vrfn" and "Vrfp" in differential LNA

# sources
1. RF Microelectronics, 2nd Edition, Behzad Razavi
2. https://github.com/The-OpenROAD-Project/asap7

