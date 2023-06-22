import numpy as np
from .tools import rri_diff, segmentation, std, rri_format
from stqdm import stqdm

def rmssd(rr):
    # rrd = rr
    rrd = rri_diff(rr)
    # print(rrd)
    # _rmssd = np.sum([x**2 for x in rrd])
    _rmssd = np.sum([x**2 for x in stqdm(rrd, desc='Calculate RMSSD')])
    _rmssd = np.sqrt(1 / (rrd.size - 1) * _rmssd)
    return _rmssd
#N = 75000
# DWT sampe level 3

def nnXX(rr, threshold):
    rr = rri_format(rr)
    rrd = rri_diff(rr)
    # nnxx = np.sum(i > threshold for i in rrd)
    nnxx = np.sum(i > threshold for i in stqdm(rrd, desc= 'Calculate NN50 and pNN50'))
    pnnxx = ((nnxx) / (rrd.size - 1)) * 100
    return nnxx, pnnxx

def nn50(rr):
    return nnXX(rr, 50)

def sdann(rr):
    segments = segmentation(rr)
    if len(segments) != 0:
        # mean_values = [np.mean(x) for x in segments]
        mean_values = [np.mean(x) for x in stqdm(segments, desc='Calculate SDANN')]
        sdann_ = std(mean_values, 1)
    else:
        sdann_ = -1000
    return sdann_
