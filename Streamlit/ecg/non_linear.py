import numpy as np

from .tools import std
from stqdm import stqdm

def sd1(rr):
    x1 = np.asarray(rr[:-1])
    x2 = np.asarray(rr[1:])
    ndata = len(rr)
    substract_std = np.zeros(ndata-1)
    # for i in range(ndata-1):
    for i in stqdm(range(ndata-1), desc = 'Calculate Standard Deviation (SD1)'):
        substract_std[i] = x1[i] - x2[i]
        substract_std[i] /= np.sqrt(2)
    return std(substract_std)
    
def sd2(rr):
    x1 = np.asarray(rr[:-1])
    x2 = np.asarray(rr[1:])
    ndata = len(rr)
    add_std = np.zeros(ndata-1)
    # for j in range(ndata-1):
    for j in stqdm(range(ndata-1), desc ='Calculate Standard Deviation (SD2)' ) :
        add_std[j] = x1[j] + x2[j]
        add_std[j] /= np.sqrt(2)

    return std(add_std)