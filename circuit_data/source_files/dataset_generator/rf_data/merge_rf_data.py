#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 22 21:06:36 2019

@author: kunal001
"""

import os
import logging
from pathlib import Path

if not os.path.exists("./LOG"):
    os.mkdir("./LOG")
elif os.path.exists("./LOG/read_netlist.log"):
    os.rename("./LOG/read_netlist.log", "./LOG/read_netlist.log1")

logging.basicConfig(filename='./LOG/read_netlist.log', level=logging.DEBUG)

LNA_DIR = Path("./lna")
MIXER_DIR = Path("./mixer")
OSC_DIR = Path("./oscillator")

LNA_NETLIST = list(LNA_DIR.glob('*.sp'))
MIXER_NETLIST = list(MIXER_DIR.glob('*.sp'))
OSC_NETLIST = list(OSC_DIR.glob('*.sp'))
class module():
    def __init__(self):
        self.module_def = []
        self.pins = []
        self.name = ''

    def read(self, file_path):
        with open(file_path, "r") as file:
            FLAG = 0
            for line in file:
                if 'SUBCKT' in line.upper():
                    self.name = line.split()[1]
                    self.pins = line.split()[2:]
                    self.module_def.append(line.strip())
                    FLAG = 1
                elif '.ENDS' in line.upper():
                    FLAG = 0
                    self.module_def.append(line)
                elif FLAG:
                    self.module_def.append(line.strip())
    def write(self):
        os.makedirs('combined', exist_ok=True)
        fo = open(f"combined/{self.name}.sp", "w")
        for line in self.module_def:
            fo.write(line)
            fo.write('\n')
        fo.close


count = 0

class create_combination:

    def __init__(self, module1, module2):
        self.module1 = module1
        self.module2 = module2
        self.merged_module = module()
        self.merged_module.module_def.extend(module1.module_def)
        self.merged_module.module_def.extend(module2.module_def)
        self.rename_bias()
    def rename_bias(self):
        self.module1.pins = [pin+'m1' for pin in self.module1.pins
                            if 'bias' in pin.lower()]
        self.module2.pins = [pin+'m2' for pin in self.module2.pins
                             if 'bias' in pin.lower()]

    def merge_module(self, write=False):
        global count
        count += 1
        self.merged_module.name = f"{count}_{self.module1.name}_{self.module2.name}"
        self.merged_module.pins= set(self.module1.pins) | set(self.module2.pins)
        def_line = f'.SUBCKT {self.merged_module.name} {" ".join(self.merged_module.pins)}'
        inst1 = 'XI0 ' + ' '.join(self.module1.pins) + self.module1.name
        inst2 = 'XI1 ' + ' '.join(self.module2.pins) + self.module2.name
        end_line = f'.ENDS {self.merged_module.name}'
        self.merged_module.module_def.append(def_line)
        self.merged_module.module_def.append(inst1)
        self.merged_module.module_def.append(inst2)
        self.merged_module.module_def.append(end_line)
        if write:
            self.merged_module.write()


for file1 in LNA_NETLIST:
    module1 = module()
    module1.read(file1)
    print(f"LNA: {file1}")
    for file2 in MIXER_NETLIST:
        module2 = module()
        module2.read(file2)
        print(f"merging files {file1} {file2}")
        comb = create_combination(module1, module2)
        comb.merge_module(True)
        break


