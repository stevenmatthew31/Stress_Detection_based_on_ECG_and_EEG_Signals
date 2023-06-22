import numpy as np
from .filter import lpf, hpf

def eeg(signal, fs = 512):
    signal = lpf(signal, 2*np.pi*35, fs)
    signal = hpf(signal, 2*np.pi*1, fs)
    return signal