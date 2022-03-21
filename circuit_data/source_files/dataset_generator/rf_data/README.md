# RF receiver topologies

There are several RF receiver topologies that can potentially be used in analog design.
This directory aims to act as a one-top-shop by compiling various commonly used RF receiver topologies compiled from different literature sources into one location. These topologies vary from each other in the structure of *LNA (low noise amplifier), mixer, or oscillator*.
All these structures are provided in SPICE netlist format.


## Directory structure
- *lna*: contains different *low noise amplifier* topologies which provide voltage reference to local generators (15 circuits)
- *mixer*: contains various mixer circuits used for RF receivers
- *oscillator*: contains oscillators topologies
- *merge_circuit.py*: utilizes *lnas, mixer, oscillator* subcircuits to generate full RF receiver circuits
