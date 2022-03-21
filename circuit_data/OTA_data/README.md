# OTA topologies
There are several operational transconductance amplifier (OTA) topologies that can potentially be used in analog design.
This directory consist of a compilation of various commonly used OTA topologies compiled from different literature sources.

# Directory structure

## spice:
This directory consists of SPICE files which we have split into three categories train/test/validation.

## graphs:
Graphs are a natural representation of circuit netlist.
This directory consists of a weighted graphs of the SPICE netlist where D/G/S connections of a net are specified as edge property.

## processed:
This directory consists of specific features extracted for the OTA circuits for the GANA paper. The paper uses this extracted data format for classifying the signal and bias paths of the OTA circuit.


