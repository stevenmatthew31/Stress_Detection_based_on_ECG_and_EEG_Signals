import numpy as np
from .decomposition import decomposition
from .tools import get_index
from stqdm import stqdm

def ecg(signal, th1, th2, th3, fs = 125):
    w2fb1, w2fb2, w2fb3 = decomposition(signal)
    ndata = len(signal)
    gradien1 = np.zeros(ndata)
    gradien2 = np.zeros(ndata)
    gradien3 = np.zeros(ndata)

    hasil_qrs = np.zeros(ndata)
    for n in stqdm(range(ndata - 1), desc='Calculate Gradient and R Level 1 - 3'):
    # for n in range(ndata - 1):
        gradien1[n - 1] = w2fb1[n] - w2fb1[n - 1]
        gradien2[n - 2] = w2fb2[n] - w2fb2[n - 2]
        gradien3[n - 3] = w2fb3[n] - w2fb3[n - 3]
        hasil_qrs[n] = (gradien1[n]>th1 and gradien2[n]>th2 and gradien3[n]>th3)*1
        
    return signal, rri(hasil_qrs, fs=fs), hasil_qrs

def rri(tsignal, fs=125):
    t = 1/fs
    k = []
    for i in stqdm(range(len(tsignal-1)), desc='Count RR'):
    # for i in range(len(tsignal-1)):
        if tsignal[i - 1] == 0 and tsignal[i] == 1:
            k.append(i)
    
    rri = []
    if len(k) >= 2:
        # for i in range(1, len(k)):
        for i in stqdm(range(1, len(k)), desc='Calculate RR Interval'):
            rri.append(k[i]*t - k[i-1]*t)
    return np.array(rri)
    
    # mean_rri = np.mean(rri)
    # rri_norm = np.zeros(len(rri))
    # for i in range(len(rri)):
    #     rri_norm[i] = rri[i] - mean_rri

    # return np.array(rri_norm)
