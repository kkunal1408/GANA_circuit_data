# oscillator dataset
It consists of 16 *oscillator* topologies. These circuits are commonly used in receiver paths. oscillators perform frequency translation by multiplying two waveforms (one from lna other from oscillator). These circuits are not sized and drawn in ASAP 7nm PDK.

These are the list of oscillators available here. In some cases image and SPICE may not match perfectly.

1. cross_coupled_oscillator - [image](../../../images/oscillator/os1.png) - [SPICE](./cross_coupled_oscillator.sp)
2. cross_coupled_oscillator_ind - [image](../../../images/oscillator/os2.png) -[SPICE](./cross_coupled_oscillator_ind.sp)
3. cross_coupled_oscillator_nmos_cap - [image](../../../images/oscillator/os3.png) - [SPICE](./Simple_cros_coupled_oscillator_nmos_cap.sp)
4. cross_coupled_oscillator_nmos_cap_ind - [image](../../../images/oscillator/os4.png) - [SPICE](./cross_coupled_oscillator_nmos_cap_ind.sp)
5. cross_coupled_oscillator_nmos_cap_vbias
6. cross_coupled_oscillator_nmos_cap_vbias_momcap
7. cross_coupled_oscillator_tail_current
8. cross_coupled_oscillator_tail_current_load_cap
9. cross_coupled_oscillator_tail_current_variable_cap
10. cross_coupled_oscillator_tail_current_variable_cap_trim_cap_mos
11. cross_coupled_oscillator_tail_current_variable_cap_trim_cap_switched
12. cross_coupled_oscillator_tail_current_variable_cap_trim_cap_varactor
13. cross_coupled_oscillator_ctap
14. cross_coupled_oscillator_tuned
15. cross_coupled_oscillator_tuned_trim_cap_mos
16. cross_coupled_oscillator_tuned_trim_cap_switched
17. cross_coupled_oscillator_tuned_trim_cap_varactor
18. negative_resistance_oscillator
19. negative_resistance_oscillator_2
20. test_circuit


# Features
These topologies consist these net features
1. Some oscillators do not need an input signal and run at a fixed frequency. Some can be controlled using a three terminal cap with third terminal as marked as "Vdigital/Vdigital_a/Vdigital_b" (enable). The center point needs to be tuned in this case and tuned using a signal "Vtune/Vcontrol" (enable). In some cases we use a resitor to bias the middle point which is biased using a signal "Vbias_a/Vbias_b" (enable).
2. The output signals to two oscillators are marked as "vlon" and "vlop".
3. The bias signals are marked as "Vbiasn/Vbiasp" which are used to bias the inductor. In some cases there would be two bias signals "Vbiasn1/Vbiasn2" where Vbiasn2 > Vbiasn1. In some cases there are three bias signals Vbiasn0, Vbiasn1 and Vbiasn2 where Vbiasn0 < Vbiasn1 < Vbiasn2


# sources
1. RF Microelectronics, 2nd Edition, Behzad Razavi
2. https://github.com/The-OpenROAD-Project/asap7

