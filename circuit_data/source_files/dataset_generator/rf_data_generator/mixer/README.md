# Mixer dataset
It consists of 16 *mixer* topologies. These circuits are commonly used in receiver paths. Mixers perform frequency translation by multiplying two waveforms (one from lna other from oscillator). These circuits are not sized and drawn in ASAP 7nm PDK.

These are the list of Mixers available here. In some cases image and SPICE may not match perfectly.

1. single balanced passive - [image](../../../images/mixer/mixer_1.png) - [SPICE](./mixer_1.sp)
2. double balanced passive mixer - [image](../../../images/mixer/mixer_2.png) -[SPICE](./mixer_2.sp)
3. single balanced sampling mixer - [image](../../../images/mixer/mixer_3.png) - [SPICE](./mixer_3.sp)
4. double balanced sampling mixer - [image](../../../images/mixer/mixer_4.png) - [SPICE](./mixer_4.sp)
5. output combining single balanced sampling mixer
6. passive with gain stage
7. passive with gain stage bias bath RF
8. passive with gain stage bias bath baseband output
9. single balanced active mixer
10. two single balanced active mixer
11. single balanced active mixer cap at output
12. single balanced load current source
13. single balanced current source
14. single helper current source
15. single capacitive coupling resonance
16. capacitive degenerate


# Features
These topologies can be classified broadly in three categories (Common-Source (CS), Common-Gate (cg), Broadband).
1. The input signals from LNA is named as "vrf" or "vrfn" and "Vrfp" in case of double mixers
2. The input signals from two oscillators are marked as "vlon" and "vlop"
3. The bias signals are marked as "Vbiasn/Vbiasp". In some cases there would be two bias signals "Vbiasn1/Vbiasn2" where Vbiasn2 > Vbiasn1. In some cases there are three bias signals Vbiasn0, Vbiasn1 and Vbiasn2 where Vbiasn0 < Vbiasn1 < Vbiasn2
4. The output signal is "votan" and "votap" which will go to an amplifier

# sources
1. RF Microelectronics, 2nd Edition, Behzad Razavi
2. https://github.com/The-OpenROAD-Project/asap7

