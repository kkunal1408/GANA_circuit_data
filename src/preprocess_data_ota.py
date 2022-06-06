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


def write_results(df, graph_id, graph, results_dir_path, status='test'):
    dir = results_dir_path
    if not os.path.exists(dir):
        os.mkdir(dir)
    labels = np.array(df.label, dtype=np.int64)
    mod_label = np.zeros((labels.size, labels.max()+1))
    mod_label[np.arange(labels.size), labels] = 1
    for row in mod_label:
        assert np.sum(row) == 1
    # size =pd.get_dummies(df['values'])
    # size = df['values']
    # print(size)
    feat = df.drop(['name', 'label', 'values'], axis=1)
    assert feat.shape[1] ==15, f"{feat.shape}"
    np.save(dir+status+'_feats.npy', np.array(feat, dtype=np.int64))
    np.save(dir+status+'_labels.npy', np.array(mod_label, dtype=np.int64))
    np.save(dir+status+'_graph_id.npy', graph_id)
    with open(dir+status+"_graph.json", 'w') as f:
        f.write(json.dumps(json_graph.node_link_data(graph)))
    with open(dir+status+"_name_map.json", 'w') as f:
        json.dump(df.to_json(), f, indent=2)
    print(f"results written in dir: {dir}")


features_name = ["name", "nmos", "pmos", "cap", "res",
                 "inductor", 'net', 'power', 'gnd', 'bias',
                 'antenna', 'in', 'clk', 'out', 'enable', 'port', 'values', "label"]


def merge_nodes(G, nodes, new_node, attr_dict):
    """
    Merges the selected `nodes` of the graph G into one `new_node`,
    meaning that all the edges that pointed to or from one of these
    `nodes` will point to or from the `new_node`.
    attr_dict and **attr are defined as in `G.add_node`.
    """
    assert new_node not in G.nodes(), f" node {new_node} already existing"
    # print(attr_dict)
    G.add_node(new_node, **attr_dict)  # Add the 'merged' node
    # print(G.nodes[new_node])
    new_edges = []
    for n1, n2, data in G.edges(data=True):
        # print(f"added node {n1} {n2}")
        # For all edges related to one of the nodes to merge,
        # make an edge going to or coming from the `new gene`.
        if n1 in nodes:
            new_edges.append((new_node, n2, data))
        elif n2 in nodes:
            new_edges.append((n1, new_node, data))
    for edge in new_edges:
        G.add_edge(edge[0],edge[1],**edge[2])
    # print(G.nodes["vdd!"],G.edges("vdd!", n1))

    for n in nodes:  # remove the merged nodes
        G.remove_node(n)
def read_inputs(dir_path, results_dir_path, data_type, num_of_designs):
    input_files = os.listdir(dir_path)
    assert len(input_files) > 0, f"No graphs found in directory {dir_path}"
    if not results_dir_path.endswith('/'):
        results_dir_path = results_dir_path +'/'
    design_no = 0
    graph_id = []
    node_count = 0
    merged_graph = None
    df = pd.DataFrame()
    for file in input_files:
        if file.endswith("json"):
            design_no += 1
            if design_no > num_of_designs:
                print(f'Reading {num_of_designs} designs done!')
                break
            print("reading file", dir_path+'/'+file)
            hier_graph = json_graph.node_link_graph(
                json.load(open(dir_path+'/'+file)))
            feature_matrix = []
            if not os.path.exists(results_dir_path):
                os.mkdir(results_dir_path)
            mapping = {}
            #connect_global_signals
            vdd_nodes = [
                node for node in hier_graph.nodes if node.endswith('vdd!')]
            merge_nodes(hier_graph, vdd_nodes, 'vdd!',
                        {'inst_type': 'net', 'net_type': 'external'})
            gnd_nodes = [
                node for node in hier_graph.nodes if node.endswith('gnd!')]
            merge_nodes(hier_graph, gnd_nodes, 'gnd!',
                        {'inst_type': 'net', 'net_type': 'external'})
            for node, attr in hier_graph.nodes(data=True):
                graph_id.append(design_no)
                mapping[node] = node_count
                feature = []
                feature.append(node)
                node_count += 1
                if 'inst_type' in attr:
                    assert attr['inst_type'] in [
                        "nmos", "pmos", "cap", "res", "inductor", 'net']
                    for itype in ["nmos", "pmos", "cap", "res", "inductor", 'net']:
                        if itype in attr['inst_type']:
                            feature.append(1)
                        else:
                            feature.append(0)
                if 'net' == attr['inst_type'] and 'vdd' in node.lower():
                    feature.append(1)
                else:
                    feature.append(0)
                if 'net' == attr['inst_type'] and ('gnd' in node.lower() or node.endswith('|0')):
                    feature.append(1)
                else:
                    feature.append(0)
                if 'net' == attr['inst_type'] and attr['net_type'] == 'external':
                    if 'bias' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'antenna' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'in' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'clk' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'out' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'gs' in node.lower() or 'digital' in node.lower() or 'tune' in node.lower() or 'control' in node.lower():
                        #enable
                        feature.append(1)
                    else:
                        feature.append(0)
                    feature.append(1)
                else:
                    feature.extend([0,0,0,0,0,0,0])
                if 'net' != attr['inst_type'] and 'values' in attr:
                    feature.append(attr['values'])
                else:
                    feature.append(0) #no sizing information
                if 'net' == attr['inst_type']:
                    feature.append(int(np.round(np.mean(['XIOTA' in nbr.upper() for nbr in hier_graph.neighbors(node)]))))
                elif 'XIOTA' in node.upper():
                    feature.append(1)
                else:
                    feature.append(0)

                feature_matrix.append(feature)
            if df.empty:
                df = pd.DataFrame(feature_matrix, columns=features_name)
            else:
                df = df.append(pd.DataFrame(
                    feature_matrix, columns=features_name), ignore_index=True)
            hier_graph_int = nx.relabel_nodes(hier_graph, mapping)

            if merged_graph:
                merged_graph = nx.compose(merged_graph, hier_graph_int)
            else:
                merged_graph = hier_graph_int
    write_results(df, graph_id=graph_id, graph=merged_graph,
                  results_dir_path=results_dir_path, status = data_type)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="folder paths")
    parser.add_argument("-d", "--dir", type=str)
    parser.add_argument("-c", "--count", type=str, default=10000)
    args = parser.parse_args()
    input_dir_path = args.dir+'/graphs'
    assert os.path.exists(
        input_dir_path), f"directory does not exist {input_dir_path}"
    output_dir_path = args.dir +'/processed'
    assert not os.path.exists(output_dir_path), f"please remove directory {output_dir_path} to save processed data"

    for data_type in ['train', 'test', 'valid']:
        split_dir = input_dir_path + '/' + data_type + '/'
        assert os.path.exists(split_dir), f"no directory found {split_dir}"
        input_dict = read_inputs(split_dir, output_dir_path, data_type, int(args.count))
