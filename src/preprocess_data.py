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
    feat = df.drop(['name', 'label', 'values'], axis=1) #.join(size, rsuffix='value')
    # print(np.array(feat))
    assert feat.shape[1] ==12, f"{feat.shape}"
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
         'in', 'out', 'port', 'values', "label"]
def read_inputs(dir_path, results_dir_path, data_type, num_of_designs, skip, debug=False):
    input_files = os.listdir(dir_path)
    if not results_dir_path.endswith('/'):
        results_dir_path = results_dir_path +'/'
    csv_path = results_dir_path + 'csv/'
    design_no = 0
    graph_id = []
    node_count = 0
    merged_graph = None
    merged_node_map = {}
    df = pd.DataFrame()
    for file in input_files:
        if file.endswith("json"):
            design_no += 1
            if design_no > num_of_designs:
                print(f'Reading {num_of_designs} designs done!')
                break
            if design_no < skip:
                print(f'skipping {skip} designs')
                continue
            print("reading file", dir_path+file)
            hier_graph = json_graph.node_link_graph(
                json.load(open(dir_path+file)))
            feature_matrix = []
            # feature_matrix.append(["node_number","nmos", "pmos", "cap", "res",
            #                        "inductor", 'net', 'power', 'gnd', 'bias',
            #                        'input', 'output', 'port', 'values'])
            if not os.path.exists(results_dir_path):
                os.mkdir(results_dir_path)
            if not os.path.exists(csv_path):
                os.mkdir(csv_path)
            mapping = {}
            for node, attr in hier_graph.nodes(data=True):
                graph_id.append(design_no)
                mapping[node] = node_count
                feature = []
                feature.append(node)
                # feature.append(node_count)
                node_count += 1
                if 'inst_type' in attr:
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
                    if 'in' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    if 'out' in node.lower():
                        feature.append(1)
                    else:
                        feature.append(0)
                    feature.append(1)
                else:
                    feature.extend([0,0,0,0])
                if 'net' != attr['inst_type'] and 'values' in attr:
                    feature.append(attr['values'])
                else:
                    feature.append(0)
                if 'XIOTA' in node.upper():
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
            # labels.extend(list(np.ones(len(feature_matrix))))
            # for name, id in mapping.items():
            #     if not 'XIOTA' in name.upper():
            #         labels[id] = 0

            # for node_key in ['values']:
            #     one_hot = pd.get_dummies(feature_matrix[node_key])
            #     data_pre = data_pre.drop(node_key, axis=1)
            #     data_pre = data_pre.join(one_hot, rsuffix=node_key)
            # for node_key in ['edge_weight', 'values', 'ports']:
            #     data_pre[node_key], _ = pd.factorize(data_pre[node_key])
            # dropped = data_pre.drop(
            #     ['sub_graph', 'source', 'inst_name'], axis=1)
            # dropped.to_csv(csv_path+
            #                file[:-5]+'_updated.csv', sep='\t')
            # feat.extend(list(dropped.to_numpy()))
            if merged_graph:
                merged_graph = nx.compose(merged_graph, hier_graph_int)
            else:
                merged_graph = hier_graph_int
            # merged_node_map.update({v: k for k, v in mapping.items()})
            # print(df)
    write_results(df, graph_id=graph_id, graph=merged_graph,
                  results_dir_path=results_dir_path, status = data_type)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="folder paths")
    parser.add_argument("-od", "--output_dir", type=str)
    parser.add_argument("-id", "--input_dir", type=str)
    parser.add_argument("-type", "--data_type", type=str, default='train')
    args = parser.parse_args()
    input_dir_path = args.input_dir+'/'+args.data_type+'/'
    output_dir_path = args.output_dir
    data_type = args.data_type
    assert os.path.exists(input_dir_path), f"please provide directory path for input graphs e.g. full_ota_graphs/ "
    assert output_dir_path, f"please provide directory path to save processed data e.g., train_data"
    assert data_type in ['train', 'test', 'valid'], f"please select train/test/valid"
    input_dict = read_inputs(input_dir_path, output_dir_path, data_type, 2000, 0)
