import numpy as np
import math

from .tools import get_index

def lpf(data, cutoff, fs=512):
    t = 1/fs
    temp = np.zeros(data.shape)
    ret = np.zeros(data.shape)
    for i in range (len(data)) :
        temp[i] = ((24/(t**3)+8*cutoff/(t**2)-4*(cutoff**2)/t-3*(cutoff**3))*get_index(temp, i-1)-(24/(t**3)-8*cutoff/(t**2)-4*(cutoff**2)/t+3*(cutoff**3))*get_index(temp, i-2)+(8/(t**3)-8*cutoff/(t**2)+4*(cutoff**2)/t-(cutoff**3))*get_index(temp, i-3)+(cutoff**3)*data[i]+(cutoff**3)*3*get_index(temp, i-1)+(cutoff**3)*3*get_index(data, i-2)+(cutoff**3)*get_index(data, i-3))/(8/(t**3)+8*cutoff/(t**2)+4*(cutoff**2)/t+(cutoff**3))

    for i in range (len(data)-1,0, -1) :
        ret[i] = ((24/(t**3)+8*cutoff/(t**2)-4*(cutoff**2)/t-3*(cutoff**3))*get_index(temp, i+1)-(24/(t**3)-8*cutoff/(t**2)-4*(cutoff**2)/t+3*(cutoff**3))*get_index(temp, i+2)+(8/(t**3)-8*cutoff/(t**2)+4*(cutoff**2)/t-(cutoff**3))*get_index(temp, i+3)+(cutoff**3)*temp[i]+(cutoff**3)*3*get_index(temp, i+1)+(cutoff**3)*3*get_index(temp, i+2)+(cutoff**3)*get_index(temp, i+3))/(8/(t**3)+8*cutoff/(t**2)+4*(cutoff**2)/t+(cutoff**3))
    return ret

def hpf(data, cutoff, fs=512):
    t = 1/fs
    temp = np.zeros(data.shape)
    ret = np.zeros(data.shape)
    for i in range(len(data)):
        temp[i] = (((8-2 * cutoff**2 * t**2) * get_index(temp, i-1)) - (4 - 2*t * cutoff * math.sqrt(2) + cutoff**2 * t**2) * get_index(temp, i-2) + 4 * data[i]- 8 * get_index(data, i-1) + 4 * get_index(data, i-2)) / (4 + 2*t * cutoff * (math.sqrt(2)) + cutoff**2 * t**2)
        
    for i in range (len(data) -1, 0, -1) :
        ret[i] = (((8-2 * cutoff**2 * t**2) * get_index(temp, i+1)) - (4 - 2*t * cutoff * math.sqrt(2) + cutoff**2 * t**2) * get_index(temp, i+2) + 4 * temp[i] - 8 * get_index(temp, i+1) + 4 * get_index(temp, i+2)) / (4 + 2*t * cutoff * (math.sqrt(2)) + cutoff**2 * t**2)
    return ret