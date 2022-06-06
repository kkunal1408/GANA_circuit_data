# -*- coding: utf-8 -*-
"""
Created on Fri Dec  7 13:19:45 2018

@author: kunal
"""

import networkx as nx
import numpy as np
import os
import pandas as pd
import csv
from networkx.readwrite import json_graph
import json
import argparse

from scipy.fftpack import ss_diff

# %%


# def write_results(df, graph_id, graph, results_dir_path, status='test'):
#     dir = results_dir_path
#     if not os.path.exists(dir):
#         os.mkdir(dir)
#     labels = np.array(df.label, dtype=np.int64)
#     mod_label = np.zeros((labels.size, labels.max()+1))
#     mod_label[np.arange(labels.size), labels] = 1
#     for row in mod_label:
#         assert np.sum(row) == 1
#     # size =pd.get_dummies(df['values'])
#     # size = df['values']
#     # print(size)
#     feat = df.drop(['name', 'label', 'values'], axis=1)
#     assert feat.shape[1] ==15, f"{feat.shape}"
#     np.save(dir+status+'_feats.npy', np.array(feat, dtype=np.int64))
#     np.save(dir+status+'_labels.npy', np.array(mod_label, dtype=np.int64))
#     np.save(dir+status+'_graph_id.npy', graph_id)
#     with open(dir+status+"_graph.json", 'w') as f:
#         f.write(json.dumps(json_graph.node_link_data(graph)))
#     with open(dir+status+"_name_map.json", 'w') as f:
#         json.dump(df.to_json(), f, indent=2)
#     print(f"results written in dir: {dir}")


features_name = ["name", "nmos", "pmos", "cap", "res",
                 "inductor", 'net', 'power', 'gnd', 'bias',
                 'antenna', 'in', 'clk', 'out', 'enable', 'port', 'values', "label"]


def read_inputs(input_file):
    assert os.path.exists(input_file), f"{input_file}"
    with open(input_file, 'r') as f:
        G = nx.DiGraph(json_graph.node_link_graph(json.load(f)))
    # print(G.nodes(data=True))
    # print(list(G.edges))
    print(f"File: {input_file.split('/')[-1]}, # nodes: {len(G.nodes())}, #devices {len([node for node in G.nodes(data=True) if node[1]['inst_type'] !='net' ])}, # nets: {len([node for node in G.nodes(data=True) if node[1]['inst_type'] =='net' ])} # edges: {len(G.edges())}")
    # for i in range(10 + 1):
    #     mask = i
    #     G_s = G.subgraph(mask)
    #     edge_index = list(G_s.edges)
    #     print(edge_index)




if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="folder paths")
    parser.add_argument("-d", "--dir", type=str)
    args = parser.parse_args()
    graph_dir_path = args.dir
    assert os.path.exists(
        graph_dir_path), f"directory does not exist {graph_dir_path}"

    # for data_type in ['train', 'test', 'valid']:
    #     graph_dir_path = input_dir_path + '/' + data_type
    input_files = os.listdir(graph_dir_path)
    # print(graph_dir_path)
    for file_path in input_files:
        assert os.path.exists(
            graph_dir_path + '/'+file_path), f"no input file found {graph_dir_path + '/'+file_path}"
        read_inputs(graph_dir_path + '/'+file_path)
