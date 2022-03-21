# OTA topologies

There are several operational transconductance amplifier (OTA) topologies that can potentially be used in analog design.
This directory aims to act as a one-top-shop by compiling various commonly used OTA topolgies compiled from different literature sources into one location.
These OTA topologies can differ from each other in the OTA signal path (such as telescopic/ two-stage), or in the local bias structure (nmos source/pmos source), or in the bias circuit.
All these structures are provided in SPICE netlist format.


## Directory structure
- *bias*: contains different bias topologies which provide voltage reference to local generators (15 circuits)
- *local_generation*: contains various local current/voltage biasing used for OTA circuits
- *OTA*: contains OTA signal path topologies
- *merge_OTA.py*: utilizes *bias, local_generation, OTA* subcircuits to generate full OTA circuits with proper biasing
