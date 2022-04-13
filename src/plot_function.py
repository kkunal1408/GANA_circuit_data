# -*- coding: utf-8 -*-
"""
Created on Sat Mar 23 17:53:50 2019

@author: kunal001
"""

import numpy as np
import matplotlib.pylab as plt


def step(x):
    return np.array(x > 0, dtype=np.int)

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def relu(x):
    return np.maximum(0, x)

x = np.arange(-2.0, 2.0, 0.1)
#y_step = step(x)
#y_sigmoid = sigmoid(x)
y_relu = relu(x)
plt.figure(figsize=(1, 0.5))

#plt.plot(x, y_step, label='Step', color='k', lw=1, linestyle=None)
#plt.plot(x, y_sigmoid, label='Sigmoid', color='k', lw=1, ls='--')
plt.plot(x, y_relu, label='ReLU', color='k', lw=1, linestyle=None)
plt.ylim(-0.1, 1.1)
#plt.legend()
plt.show()