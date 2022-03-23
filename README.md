# DATA for Approximate matching of subcircuit using Graph Convolution Network for node classification
Base code has been taken from https://github.com/mdeff/cnn_graph
The code in this repository reads multiple OTA circuits graphs from train_graphs directory.
It processses all individual graphs to prepare inputs for Graph convolution network.

# The inputs needed for GCN are:
1. N by N adjacency matrix (N is the number of nodes),
2. N by D feature matrix (D is the number of features per node), and
3. N by E binary label matrix (E is the number of classes).

Since Graph Convolution network need one graph as input, all OTA circuit graphs has been merged in block diagonal fashion.


# to preprocess the data use:
To create graph from spice files:

```
python3 src/read_netlist.py -d circuit_data/OTA_data/spice.zip
```

To extract features from the graphs a  which is used by the classifier

```
python3 src/preprocess_data.py -d circuit_data/OTA_data/
```
This creates a processed file in the circuit_data/OTA_data directory which will be used for subcircuit identification