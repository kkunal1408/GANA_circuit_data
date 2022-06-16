# -*- coding: utf-8 -*-
"""
Created on Wed Oct 10 13:04:45 2018

@author: kunal
"""

# %% Parser

from zipfile import ZipFile
import networkx as nx
import os
import argparse
import logging
import json
import shutil
from networkx.readwrite import json_graph

#import re
from collections import defaultdict
from BasicElement import BasicElement

logging.basicConfig(filename='logfile.log', level=logging.DEBUG)


class spiceParser:
    def __init__(self, netlistPath, top_ckt_name='__top__', FLAT=1):
        self.netlist = netlistPath
        self.designTree = {}
        self.subckts = {}
        self.circuit_graph = nx.Graph()
        self.params = []
        self._global = []
        self.option = []
        self.top_insts = []
        self.include = []
        self.nets = defaultdict(list)
        self.top_ckt_name = top_ckt_name
        self.FLAT = FLAT
        logging.info('creating an instance of spiceParser')

    def sp_parser(self):
        if not os.path.isfile(self.netlist):
            print("File doesn't exist")
        else:
            print("Reading file: ", self.netlist)
            fp = open(self.netlist, "r")
            line = fp.readline()
            while ".END" not in line:
                if line.strip().startswith('*'):
                    line = fp.readline()
                    continue
                while line.strip().endswith('\\'):
                    line += fp.readline().strip()
                if any(c in line.lower() for c in ("//", "**")):
                    pass
                elif not line.strip():
                    pass
                elif "global" in line.lower():
                    self._parse_global(line, fp)
                elif ".temp" in line.lower():
                    temp_line = line
                elif ".option" in line.lower():
                    self._parse_option(line, fp)
                elif "subckt" in line.lower():
                    self._parse_subckt_info(line, fp)
                elif ".param" in line.lower():
                    self._parse_param(line, fp)
                elif "include" in line.lower() or "info" in line.lower():
                    self._parse_include(line, fp)
                    line = fp.readline()
                    continue
                else:
                    node1 = self._parse_inst(line)
                    if node1 != None:
                        self.top_insts.append(node1)
                line = fp.readline()
                if not line:
                    break
            if self.params:
                self.params = filter(lambda a: a != '+', self.params)
            elif self.option:
                self.option = filter(lambda a: a != '+', self.option)
            elif self._global:
                self._global = filter(lambda a: a != '+', self._global)

            if self.top_ckt_name == '__top__':
                top = os.path.basename(self.netlist).split('.')[0]
                logging.info(
                    'NO subckt defined, checking for any instance at top')

                if not self.top_insts:
                    if top in self.subckts.keys():
                        self.top_ckt_name = top
                        logging.info(
                            'No top instances found. Picking filename as top: '+self.top_ckt_name)

                    elif self.subckts.keys():
                        self.top_ckt_name = list(self.subckts.keys())[0]
                        logging.info(
                            'No top instances found. Picking 1st cirucit as top: '+self.top_ckt_name)
                    else:
                        logging.info(
                            'No subckt found in design. Please check file format')
                        return 0
                else:
                    logging.info(
                        'Instances found at top, creating a dummy __top__ subckt')
                    self.top_ckt_name = top
                    self.subckts[self.top_ckt_name] = {"ports": ["gnd!", "vdd"],
                                                       "nodes": self.top_insts}

            logging.info("List of subckts in design "+" ".join(self.subckts))

            if self.FLAT:
                Design = self._flatten_circuit(self.top_ckt_name)
            else:
                Design = self._hier_circuit(self.top_ckt_name)
            subckt_ports = self.subckts[self.top_ckt_name]["ports"]

            self.circuit_graph = self._create_bipartite_circuit_graph(
                Design, subckt_ports)
            return self.circuit_graph

    def _parse_subckt_info(self, line, fp):
        logging.info('started reading subckt: '+line)
        subckt_nodes = line.strip().split()
        subckt_name = subckt_nodes[1]
        line = fp.readline()
        while line.strip().endswith('\\'):
            line += fp.readline().strip()
        self.subckts[subckt_name] = {"ports": subckt_nodes[2:],
                                     "nodes": self._parse_subckt(line, fp)
                                     }
        logging.info('Finished reading subckt '+subckt_name)

    def _parse_subckt(self, line, fp):
        insts = []
        while not (line.lower().startswith('end') or line.lower().startswith('.end')):
            if any(c in line.lower() for c in ("//", '*')):
                line = fp.readline()
                continue
            node1 = self._parse_inst(line)
            if node1:
                insts.append(node1)
            line = fp.readline()
            while line.strip().endswith('\\'):
                line += fp.readline().strip()
        return insts

    def _parse_param(self, line, fp):
        while line.strip():
            self.params += line.strip().split()
            line = fp.readline()

    def _parse_global(self, line, fp):
        while line.strip():
            self._global += line.strip().split()
            line = fp.readline()

    def _parse_include(self, line, fp):
        self.include.append(line.strip())
        line = fp.readline()

    def _parse_option(self, line, fp):
        while line.strip():
            self.option += line.strip().split()
            line = fp.readline()

    def _parse_inst(self, line):
        element = BasicElement(line)
        #logging.info('READ line:'+line)
        device = None
        if not line.strip():
            return device
        elif line.strip().lower().startswith('m') or line.strip().lower().startswith('n') or line.strip().lower().startswith('p') or line.strip().lower().startswith('t'):
            logging.info('FOUND transistor')
            device = element.Transistor()
        elif line.strip().lower().startswith('c'):
            logging.info('FOUND cap')
            device = element.Capacitor()
        elif line.strip().lower().startswith('xc'):
            logging.info('FOUND cap')
            device = element.Capacitor_3t()
        elif line.strip().lower().startswith('r'):
            logging.info('FOUND resistor')
            logging.debug("resistance:" + line)
            device = element.Resistor()
        elif line.strip().lower().startswith('l'):
            logging.info('FOUND inductor')
            logging.debug("inductance:" + line)
            device = element.Inductor()
        elif line.strip().lower().startswith('xl'):
            logging.info('FOUND 4t inductor')
            logging.debug("inductance:" + line)
            device = element.Inductor_4t()
        elif line.strip().lower().startswith('x'):
            if ' / ' in line:
                line = line.replace(' / ', ' ')
            elif '(' in line:
                line = line.replace('(', ' ').replace(')', ' ')

            hier_nodes = line.strip().split()
            device = {"inst": hier_nodes[0][0:],
                      "inst_type": hier_nodes[-1],
                      "ports": hier_nodes[1:-1],
                      "edge_weight": list(range(len(hier_nodes[1:-1]))),
                      "values": None}
            logging.info('FOUND subckt instance: '+device["inst_type"])
        else:
            assert False, f"FOUND  unidentified Device: {line}"
        return device

    def _calc_edge_weight(self, subckt_name):
        edge_weight = []
        for port in self.subckts[subckt_name]["ports"]:
            weight = 0
            for node in self.subckts[subckt_name]["nodes"]:
                for i, sub_port in enumerate(node["ports"]):
                    if port == sub_port:
                        # print(sub_node)
                        weight += sub_port["edge_weight"][i]
            edge_weight.append(weight)

    def _flatten_circuit(self, subckt_name, subckt_inst="", connected_nets=""):
        flatDesign = []
        logging.info("flattening the circuit "+subckt_name)
        for node in self.subckts[subckt_name]["nodes"]:
            modified_ports = []
            for net_name in node["ports"]:
                if net_name not in self.subckts[subckt_name]["ports"]:
                    logging.info(f"Net {net_name} internal to subckt")
                    net_name = subckt_inst+subckt_name+'_'+net_name
                elif connected_nets:
                    logging.info(
                        f"Net {net_name} is part of higher level subckt")
                    net_name = connected_nets[self.subckts[subckt_name]["ports"].index(
                        net_name)]
                else:
                    logging.info(f"Net {net_name} existing in top level")
                modified_ports.append(net_name)

            if node["inst_type"] in self.subckts:
                flatDesign.extend(self._flatten_circuit(node["inst_type"],subckt_inst+node["inst"]+'|', list(modified_ports))
                )
            else:
                flat_node = {"inst": subckt_inst+subckt_name+"_"+node["inst"],
                             "inst_type": node["inst_type"],
                             "ports": modified_ports,
                             "values": node["values"],
                             "edge_weight": node["edge_weight"]}

                flatDesign.append(flat_node)
                logging.debug(
                    "Node name "+flat_node["inst"]+" type: "+flat_node["inst_type"])

        logging.info("Total no of nodes in design " +
                     subckt_name + "= "+str(len(flatDesign)))
        return flatDesign

    def _hier_circuit(self, subckt_name):
        hierDesign = []
        logging.info("making hierarchical circuits: "+subckt_name)
        for node in self.subckts[subckt_name]["nodes"]:
            if node["inst_type"] in self.subckts:
                logging.info("FOUND hier_node: "+node["inst_type"])
                hier_node = {"inst": node["inst"],
                             "inst_type": node["inst_type"],
                             "ports": node["ports"],
                             "values": None,
                             "edge_weight": node["edge_weight"],
                             "hier_nodes": self._hier_circuit(node["inst_type"])}
                hierDesign.append(hier_node)
            else:
                hierDesign.append(node)
        return hierDesign

    def _create_bipartite_circuit_graph(self, all_nodes, inout_ports):
        logging.info(
            "Creating bipartitie graph with Total no of devices " + str(len(all_nodes)))
        circuit_graph = nx.Graph()
        for node in all_nodes:
            if "hier_nodes" in node.keys():
                subgraph = self._create_bipartite_circuit_graph(node["hier_nodes"],self.subckts[node["inst_type"]]["ports"])
            else:
                subgraph = None
            circuit_graph.add_node(node["inst"],
                                   inst_type=node["inst_type"],
                                   ports=node['ports'],
                                   edge_weight=node['edge_weight'],
                                   values=node['values'],
                                   sub_graph=subgraph
                                   )
            wt_index = 0
            for net in node["ports"]:
                if "edge_weight" in node.keys():
                    wt = node["edge_weight"][wt_index]
                else:
                    wt = 2 ^ wt_index
                if net not in circuit_graph:
                    if net in inout_ports:
                        circuit_graph.add_node(
                            net, inst_type="net", net_type="external")
                    else:
                        circuit_graph.add_node(
                            net, inst_type="net", net_type="internal")
                elif circuit_graph.has_edge(node["inst"], net):
                    node_name = node["inst"]
                    wt += circuit_graph.get_edge_data(node_name, net)['weight']
                circuit_graph.add_edge(node["inst"], net, weight=wt)
                wt_index += 1
        return circuit_graph


def _write_circuit_graph(out_dir, data_type, filename, graph):
    if not os.path.exists(out_dir):
        os.mkdir(out_dir)
    sub_dir = out_dir+"/"+data_type
    if not os.path.exists(sub_dir):
        os.mkdir(sub_dir)
    with open(sub_dir+"/" +filename+".json", 'w') as f:
        f.write(json.dumps(json_graph.node_link_data(graph)))
    logging.info("Graph saved in circuit_graphs directory")


# %% main
if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description="directory path for input circuits")
    parser.add_argument("-zip", "--input_zip", type=str)
    parser.add_argument("-flat", "--flat", type=int, default=1)
    args = parser.parse_args()
    spice_files = args.input_zip
    output_dir = os.path.dirname(spice_files) + '/graphs'
    output_path = spice_files.split(".")[0]
    assert not os.path.exists(
        output_path), f"please delete existing directory {output_path}"
    assert not os.path.exists(
        output_dir), f"please delete existing directory {output_dir}"
    with ZipFile(spice_files, 'r') as zip:
        # extract all files
        zip.extractall(os.path.dirname(output_path))
    for data_type in ['train', 'test', 'valid']:
        split_dir = output_path + '/' + data_type
        assert os.path.exists(split_dir), f"No {data_type} data found"
        for netlist in os.listdir(split_dir):
            if netlist.endswith('.sp'):
                logging.info("READ file: "+split_dir+'/'+netlist)
                sp = spiceParser(split_dir+'/'+netlist, FLAT=args.flat)
                circuit_graph = sp.sp_parser()
                if circuit_graph:
                    _write_circuit_graph(output_dir, data_type, netlist.split('.')[0], circuit_graph)
            else:
                print("Not a valid file type (.sp).Skipping this file")
    #Remove extracted zip file
    shutil.rmtree(output_path)

