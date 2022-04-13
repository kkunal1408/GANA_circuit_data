# -*- coding: utf-8 -*-
"""
Created on Sat Mar 23 18:05:39 2019

@author: kunal001
"""

import numpy as np
import matplotlib.pylab as plt
import networkx as nx
from networkx.algorithms import bipartite


def FC_layer(n1,n2):
    G=nx.Graph()
    color_map = []

    for n in range(1,n1):
        G.add_node(n)
    for n in range(1,n2):
        G.add_node(n1+n)
    for fc1 in range(1,n1):
        for fc2 in range(n1,n1+n2):
            G.add_edge(fc1,fc2)
    X, Y = bipartite.sets(G)

    pos = dict()
    pos.update( (n, (1, i)) for i, n in enumerate(X) ) # put nodes from X at x=1
    pos.update( (n, (2, i+0.5)) for i, n in enumerate(Y) ) # put nodes from Y at x=2
    nx.draw(G, pos=pos,node_size=600,node_color="blue")
    return G



plt.figure(figsize=(2, 6))
fc_graph= FC_layer(5,3)
plt.show()