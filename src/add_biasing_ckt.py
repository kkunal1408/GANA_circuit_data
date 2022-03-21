#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr  4 10:30:13 2019

@author: kunal001
"""
import os
import logging

ckt_dir="MIXER/"
biasing_files = os.listdir("BIASING_CIRCUITS")
ckt_files = os.listdir(ckt_dir)
result_dir = "MERGED/"
logging.basicConfig(filename='logfile_add_bias.log', level=logging.DEBUG)

for bias in biasing_files:
    for ckt in ckt_files:
        if  bias.endswith('sp') and ckt.endswith('sp') :
            merged_fp = open(result_dir+bias[:-3]+'_'+ckt, 'w')
            copy= False
            with open ('BIASING_CIRCUITS/'+bias, "r") as fpb:
                for line in fpb:
                    if line.strip().lower().startswith(".subckt"):
                        p1=line.strip().split()[2:]
                        copy= True
                    elif line.strip().endswith(".END") or line.strip().startswith(".ends"):
                        copy=False
                        merged_fp.write(line)

                    if copy== True:
                        merged_fp.write(line)
                    #if line.strip().startswith("*.PININFO"):
                     #   p1=line.strip()[9:].replace(':I','').replace(':O','')

            copy=False
            with open(ckt_dir+ckt, "r") as fb:
                for line in fb:
                    if line.strip().lower().startswith(".subckt"):
                        p2=line.strip().split()[2:]
                        copy= True
                    elif line.strip().endswith(".END") or line.strip().startswith(".ends"):
                        copy=False
                    if copy==True:
                        merged_fp.write(line)
                    #if line.strip().startswith("*.PININFO"):
                    #    p2=line.strip()[9:].replace(':I','').replace(':O','')
            p1=" ".join(p1)
            p2=" ".join(p2)
            if 'Vbiasn1' in p1.split() and 'Vbiasn' in p2.split():
                print("2 bias found",bias,ckt,p1,';',p2)
                p1=p1.replace('Vbiasn1','Vbiasn')
                print("updated port",p1)
            elif 'Vbiasp1' in p1.split() and 'Vbiasp' in p2.split():
                print("2 bias found",bias,ckt,p1,';',p2)
                p1=p1.replace('Vbiasp1','Vbiasp')
                print("updated port",p1)
            elif 'Vbiasn1' in p2.split() and 'Vbiasn' in p1.split():
                print("2 bias found",bias,ckt,p1,';',p2)
                p2=p2.replace('Vbiasn1','Vbiasn')
                print("updated port",p2)
            elif 'Vbiasp1' in p2.split() and 'Vbiasp' in p1.split():
                print("2 bias found",bias,ckt,p1,';',p2)
                p2=p2.replace('Vbiasp1','Vbiasp')
                print("updated port",p2)
            merged_fp.write('\n************************************************************************')
            merged_fp.write('\n* Library Name: training_set')
            merged_fp.write('\n* Cell Name:    '+bias[:-3]+'_'+ckt[:-3])
            merged_fp.write('\n* View Name:    schematic')
            merged_fp.write('\n************************************************************************')
            merged_fp.write('\n.SUBCKT biased_'+ckt[:-3] +p1+p2)
            merged_fp.write('\nXI0 '+p1 +' / '+bias[:-3])
            merged_fp.write('\nXI1 '+p2+' / '+ ckt[:-3])
            merged_fp.write('\n.ENDS')
            merged_fp.close()
            bias_pins=p1.split()
            ckt_pins=p2.split()
            if not set(bias_pins).intersection(ckt_pins) :
                logging.info("ERROR:pin mismatch, P1="+ p1+" ,P2="+p2)
                logging.info("Removing file: "+result_dir+bias[:-3]+'_'+ckt)
                os.remove(result_dir+bias[:-3]+'_'+ckt)
                