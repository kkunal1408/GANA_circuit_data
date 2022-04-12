#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 22 21:06:36 2019

@author: kunal001
"""

import os
import logging
from pathlib import Path
import random
random.seed(5)
if not os.path.exists("./LOG"):
    os.mkdir("./LOG")
elif os.path.exists("./LOG/read_netlist.log"):
    os.rename("./LOG/read_netlist.log", "./LOG/read_netlist.log1")

logging.basicConfig(filename='./LOG/read_netlist.log', level=logging.DEBUG)

MIXER_DIR = Path("./mixer")
LO_DIR = Path("./oscillator")

MIXER_NETLIST = list(MIXER_DIR.glob('*.sp'))
LO_NETLIST = list(LO_DIR.glob('*.sp'))


class module():
    def __init__(self):
        self.module_def = []
        self.pins = []
        self.name = ''
        self.class_type = ''

    def read(self, file_path):
        with open(file_path, "r") as file:
            if 'osc' in str(file_path):
                self.class_type = 'lo'
            elif 'lna' in str(file_path):
                self.class_type = 'lna'
            elif 'mixer' in str(file_path):
                self.class_type = 'mixer'
            assert self.class_type in ['lna', 'mixer', 'lo'], f"unidentified file {file_path}"
            FLAG = 0
            for line in file:
                line = line.lower()
                if 'subckt' in line:
                    self.name = line.split()[1]
                    self.pins = line.split()[2:]
                    self.module_def.append(line.strip())
                    FLAG = 1
                elif '.ends' in line:
                    FLAG = 0
                    self.module_def.append(line)
                elif FLAG:
                    self.module_def.append(line.strip())
            self.rename_bias()

    def rename_bias(self):
        for i, pin in enumerate(self.pins):
            if 'bias' in pin:
                self.pins[i] = pin+'_'+self.class_type
        if self.class_type == 'mixer':
            for i, pin in enumerate(self.pins):
                if 'vrf' in pin:
                    self.pins[i] = pin.replace('vrf', 'vantenna')
        logging.debug(
            f"modified bias pins {self.class_type} {self.name} {self.pins}")

    def write(self):
        os.makedirs('combined', exist_ok=True)
        fo = open(f"combined/{self.name}.sp", "w")
        for line in self.module_def:
            fo.write(line)
            fo.write('\n')
        fo.close

count = 0


class create_combination:

    def __init__(self, module2, module3):
        self.module2 = module2
        self.module3 = module3
        self.merged_module = module()
        global count
        count += 1
        self.merged_module.name = f"{count}"
        for mod in [self.module2, self.module3]:
            self.merged_module.name += '_'+mod.name
            self.merged_module.module_def.extend(mod.module_def)

    def merge_pins(self):
        if self.module2.class_type == 'mixer':
            mixer_lna_in = [pin for pin in self.module2.pins if 'antenna' in pin]
            mixer_lo_in = [pin for pin in self.module2.pins if 'vlo' in pin]
        if self.module3.class_type == 'lo':
            lo_out = [pin for pin in self.module3.pins if 'vlo' in pin]
        assert mixer_lna_in, f"no mixer input pin found {self.module2.name}"
        assert mixer_lo_in, f"no mixer input from oscillator pin found {self.module2.name}"
        assert lo_out, f"no oscillator output found {self.module3.name}"
        if set(lo_out) != set(mixer_lo_in):
            logging.info(f"mismatch in lo ios found {lo_out} {mixer_lo_in} {self.module3.name} {self.module3.pins} {self.module2.name} {self.module2.pins}")
            return False
        else:
            logging.debug(f"matching ios found")
        self.merged_module.pins = set(
            self.module2.pins).symmetric_difference(self.module3.pins)
        for pin in self.merged_module.pins:
            assert [True for x in ['bias','vota', 'antenna', 'control', 'tune', 'digital', 'gs1', 'gs2'] if x in pin], f'unidentified pin found {pin} {self.merged_module.name}'
        return True

    def merge_module(self, write=False):
        if not self.merge_pins():
            return
        def_line = f'.SUBCKT {self.merged_module.name} {" ".join(self.merged_module.pins)}'
        self.merged_module.module_def.append(def_line)
        for i, mod in enumerate([self.module2, self.module3]):
            inst = f"XI{i} {' '.join(mod.pins)} {mod.name}"
            self.merged_module.module_def.append(inst)
        end_line = f'.ENDS {self.merged_module.name}'
        self.merged_module.module_def.append(end_line)
        if write:
            self.merged_module.write()


for file2 in MIXER_NETLIST:
    if random.random() < 0.7 or 'mixer_17' in str(file2):
        continue
    module2 = module()
    module2.read(file2)
    for file3 in LO_NETLIST:
        if random.random() < 0.7:
            continue
        module3 = module()
        module3.read(file3)
        logging.debug(f"merging files {file2} {file3}")
        comb = create_combination(module2, module3)
        comb.merge_module(True)
