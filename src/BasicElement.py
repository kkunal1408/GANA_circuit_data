# -*- coding: utf-8 -*-
"""
Created on Wed Oct 10 13:18:49 2018

@author: kunal
"""
#%% creating basic element

class BasicElement:
    def __init__(self,line):
        line=line.replace(')',"").replace('(',"")
        self.line = line
    def total_size(self, values):
        total = 1
        for value in values:
            if '='in value:
                total = total*self.is_float(value.split('=')[1])
            elif value.endswith('p'):
                total = total*self.is_float(value.replace('p',''))
            else:
                assert False,f"undefined value {value} for {self.line}"
        return total
    def is_float(self, st):
        try:
            return float(st)
        except ValueError:
            return 1

    def Capacitor(self):
        #cap: c7 net7 vinp c1
        [capacitance, plus, minus]=self.line.strip().split()[0:3]
        value = self.line.strip().split()[3:]
        edges = [plus,minus]
        edge_weight = [8,8]
        return {"inst":capacitance, "inst_type":"cap" , "ports":edges , "edge_weight":edge_weight, "values":self.total_size(value)}

    def Capacitor_3t(self):
        #cap: c7 net7 vinp c1
        [capacitance, plus, minus, level] = self.line.strip().split()[0:4]
        value = self.line.strip().split()[5:]
        edges = [plus, minus, level]
        edge_weight = [8, 8, 8]
        return {"inst": capacitance, "inst_type": "cap", "ports": edges, "edge_weight": edge_weight, "values": self.total_size(value)}

    def Resistor(self):
        #Res: c7 net7 vinp c1
        [resistance, plus, minus]=self.line.strip().split()[0:3]
        value = self.line.strip().split()[3:]

        edges = [plus,minus]
        edge_weight = [8,8]
        return {"inst": resistance, "inst_type": "res", "ports": edges, "edge_weight": edge_weight, "values": self.total_size(value)}

    def Inductor(self):
        #Res: c7 net7 vinp c1
        [inductance, plus, minus]=self.line.strip().split()[0:3]
        value = self.line.strip().split()[3:]
        edges = [plus,minus]
        edge_weight = [8,8]
        return {"inst": inductance, "inst_type": "inductor", "ports": edges, "edge_weight": edge_weight, "values": self.total_size(value)}

    def Inductor_4t(self):
        #XL0 Voutp Voutn gnd! vdd! spiral_sym_ct_mu_z w=15u nr=3 rad=60u lay=9
        [inductance, plus, minus, gnd, vdd] = self.line.strip().split()[0:5]
        value = self.line.strip().split()[6:]

        edges = [plus, minus, gnd, vdd]
        edge_weight = [8, 8, 8, 8]
        return {"inst": inductance, "inst_type": "inductor", "ports": edges, "edge_weight": edge_weight, "values": self.total_size(value)}

    def Transistor(self):
        #transistor: m5 net5 phi2 0 0 nmos_rvt w=81e-9 l=20e-9 nfin=3
        [inst, drain, gate, source, body, inst_type]=self.line.strip().split()[0:6]
        edges = [drain, gate, source]
        edge_weight = [1,2,4]
        value = self.line.strip().split()[6:]
        if 'n' in inst_type.lower():
            inst_type = "nmos"
        elif 'p' in inst_type.lower():
            inst_type = "pmos"
        return {"inst": inst, "inst_type": inst_type, "ports": edges, "edge_weight": edge_weight, "values": self.total_size(value)}
