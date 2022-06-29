# Circuit data for GANA
## GANA: Graph Convolutional Network Based Automated Netlist Annotation for Analog Circuits

The code in this repository reads multiple OTA circuits graphs and processs them to prepare inputs for GNN.

[//]: # (Base code has been taken from https://github.com/mdeff/cnn_graph)

# The inputs needed for GNN are:
1. N by N adjacency matrix (N is the number of nodes),
2. N by D feature matrix (D is the number of features per node), and
3. N by E binary label matrix (E is the number of classes).


# Creating the input data for GANA:
To create graph from spice files:

```
python3 src/read_netlist.py -d circuit_data/OTA_data/spice.zip
```

To extract features from the graphs a  which is used by the classifier

```
python3 src/preprocess_data.py -d circuit_data/OTA_data/
```
This creates a processed file in the circuit_data/OTA_data directory which will be used for subcircuit identification

# Cite

Please cite our [paper](https://ieeexplore.ieee.org/document/9116329) if you use our benchmarks in your own work:


```
@INPROCEEDINGS{GANA2020,
  author={Kunal, Kishor and Dhar, Tonmoy and Madhusudan, Meghna and Poojary, Jitesh and Sharma, Arvind and Xu, Wenbin and Burns, Steven M. and Hu, Jiang and Harjani, Ramesh and Sapatnekar, Sachin S.},
  booktitle={2020 Design, Automation & Test in Europe Conference & Exhibition (DATE)}, 
  title={GANA: Graph Convolutional Network Based Automated Netlist Annotation for Analog Circuits}, 
  year={2020},
  pages={55-60}
  }
  ```
