import networkx as nx
import argparse
import matplotlib.pyplot as plt


parser = argparse.ArgumentParser( description="Path for input circuits")
parser.add_argument( "-f", "--file", type=str, default='NULL')
args = parser.parse_args()
file_name = args.file
if file_name.endswith("yaml"):
    print("reading file",file_name)
    hier_graph=nx.Graph(nx.read_yaml(file_name))
    nx.draw_spectral(hier_graph)
    plt.show()
    
