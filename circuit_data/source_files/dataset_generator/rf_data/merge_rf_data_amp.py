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
if not os.path.exists("./LOG"):
    os.mkdir("./LOG")
elif os.path.exists("./LOG/read_netlist.log"):
    os.rename("./LOG/read_netlist.log", "./LOG/read_netlist.log1")
random.seed(1)
logging.basicConfig(filename='./LOG/read_netlist.log', level=logging.DEBUG)

LNA_DIR = Path("./lna")
MIXER_DIR = Path("./mixer")
LO_DIR = Path("./oscillator")
OTA_DIR = Path("./ota")
LNA_NETLIST = list(LNA_DIR.glob('*.sp'))
MIXER_NETLIST = list(MIXER_DIR.glob('*.sp'))
LO_NETLIST = list(LO_DIR.glob('*.sp'))
OTA_NETLIST = list(OTA_DIR.glob('*.sp'))


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
            elif 'ota' in str(file_path):
                self.class_type = 'ota'
            assert self.class_type in ['lna', 'mixer', 'lo', 'ota'], f"unidentified file {file_path}"
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

    def write(self):
        logging.info(f"writing file combined/{self.name}")
        os.makedirs('combined', exist_ok=True)
        fo = open(f"combined/{self.name}.sp", "w")
        for line in self.module_def:
            fo.write(line)
            fo.write('\n')
        fo.close

count = 420


class create_combination:

    def __init__(self, module1, module2, module3, module4):
        self.module1 = module1
        self.module2 = module2
        self.module3 = module3
        self.module4 = module4
        self.merged_module = module()
        global count
        count += 1
        self.merged_module.name = f"{count}"
        for mod in [self.module1, self.module2, self.module3, self.module4]:
            self.merged_module.name += '_'+mod.name
            self.merged_module.module_def.extend(mod.module_def)
        # logging.debug(f"new name {self.merged_module.name}")
    def merge_pins(self):
        if self.module1.class_type == 'lna':
            lna_out = [pin for pin in self.module1.pins if 'rf' in pin]
        if self.module2.class_type == 'mixer':
            mixer_lna_in = [pin for pin in self.module2.pins if 'rf' in pin]
            mixer_lo_in = [pin for pin in self.module2.pins if 'vlo' in pin]
            mixer_ota_out = [pin for pin in self.module2.pins if 'vota' in pin]
            if 'passive_mixer' in self.module2.name:
                mixer_lo_in = [
                    pin for pin in self.module2.pins if 'clk' in pin]
        if self.module3.class_type == 'lo':
            lo_out = [pin for pin in self.module3.pins if 'vlo' in pin]
        if self.module4.class_type == 'ota':
            ota_in = [pin for pin in self.module4.pins if 'vota' in pin]
        assert lna_out, f"no lna output pin found {self.module1.name}"
        assert mixer_lna_in, f"no mixer input pin found {self.module2.name}"
        assert mixer_lo_in, f"no mixer input from oscillator pin found {self.module2.name}"
        assert lo_out, f"no oscillator output found {self.module3.name} {self.module3.pins}"
        assert ota_in, f"no ota input pin found {self.module4.name} {self.module4.pins}"
        if set(lna_out) != set(mixer_lna_in):
            logging.info(
                 f"mismatch in lna ios found {lna_out} {mixer_lna_in} {self.module1.name} {self.module1.pins} {self.module2.name}")
            return False
        elif set(lo_out) != set(mixer_lo_in) and not 'passive_mixer' in self.module2.name:
            logging.info(f"mismatch in lo ios found {lo_out} {mixer_lo_in} {self.module3.name} {self.module3.pins} {self.module2.name} {self.module2.pins}")
            return False
        elif set(mixer_ota_out) != set(ota_in) and not 'passive_mixer' in self.module2.name:
            logging.info(
                f"mismatch in mixer ota interface found {ota_in} {self.module4.name} {self.module4.pins} {self.module2.name} {self.module2.pins} {mixer_ota_out}")
            return False
        else:
            logging.debug(f"matching ios found")
        self.merged_module.pins = set(
            self.module1.pins).symmetric_difference(self.module2.pins).symmetric_difference(self.module3.pins).symmetric_difference(self.module4.pins)
        for pin in self.merged_module.pins:
            assert [True for x in ['bias','vout', 'vota', 'antenna', 'control', 'tune', 'digital', 'gs1', 'gs2', 'clk', 'vlo'] if x in pin], f'unidentified pin found {pin} {self.merged_module.name}'
        return True

    def merge_module(self, write=False):
        if not self.merge_pins() and 'passive_mixer' in self.module2.name:
            return
        def_line = f'.SUBCKT {self.merged_module.name} {" ".join(self.merged_module.pins)}'
        self.merged_module.module_def.append(def_line)
        for i, mod in enumerate([self.module1, self.module2, self.module3, self.module4]):
            inst = f"XI{i} {' '.join(mod.pins)} {mod.name}"
            self.merged_module.module_def.append(inst)
        end_line = f'.ENDS {self.merged_module.name}'
        self.merged_module.module_def.append(end_line)
        if write:
            self.merged_module.write()

    def merge_module_passive_mixer(self, write=False):
        if not self.merge_pins():
            return
        def_line = f'.SUBCKT {self.merged_module.name} {" ".join(self.merged_module.pins)}'
        self.merged_module.module_def.append(def_line)
        count = 0
        for i, mod in enumerate([self.module1, self.module2, self.module3, self.module4, self.module3,self.module4]):
            inst = f"XI{i} {' '.join(mod.pins)} {mod.name}"
            if mod.class_type == 'lo':
                inst = inst.replace('vlon', 'clk'+str(count*90))
                inst = inst.replace('vlop', 'clk'+str(count*90+180))
                logging.debug(f"modified inst {inst}")
            elif mod.class_type == 'ota':
                inst = inst.replace('votan', 'votan'+str(count+1))
                inst = inst.replace('votap', 'votap'+str(count+1))
                count +=1
                logging.debug(f"modified inst {inst}")
            else:
                assert mod.class_type in ['mixer', 'lna'], f"{mod.class_type}"

            self.merged_module.module_def.append(inst)
        end_line = f'.ENDS {self.merged_module.name}'
        self.merged_module.module_def.append(end_line)
        if write:
            self.merged_module.write()

for file1 in LNA_NETLIST:
    module1 = module()
    module1.read(file1)
    for file2 in MIXER_NETLIST:
        if random.random() < 0.7:
            # print("skipping mixer")
            continue
        module2 = module()
        module2.read(file2)
        for file3 in LO_NETLIST:
            module3 = module()
            module3.read(file3)
            if random.random() < 0.7:
                # print("skipping lo")
                continue
            for file4 in OTA_NETLIST:
                if random.random()<0.7:
                    # print("skipping ota")
                    continue
                module4 = module()
                module4.read(file4)
                logging.debug(f"merging files {file1} {file2} {file3} {file4}")
                logging.debug(f"merging modules {module1.name} {module2.name} {module3.name} {module4.name}")
                comb = create_combination(module1, module2, module3, module4)
                if 'passive_mixer' in module2.name:
                    comb.merge_module_passive_mixer(True)
                else:
                    comb.merge_module(True)
