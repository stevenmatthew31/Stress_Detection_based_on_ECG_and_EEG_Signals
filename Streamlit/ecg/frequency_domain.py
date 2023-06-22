import numpy as np
from .tools import rri_format
from scipy import interpolate
from stqdm import stqdm

def hanning(input_segment):
    n_seg = len(input_segment)
    window = np.zeros(n_seg)
    for i in range(n_seg):
        window[i] = input_segment[i] * (0.5-0.5*np.cos(2*np.pi*i/n_seg))
    return window

def hanning_new(rri):
    n = min(1198, (len(rri)))
    t = np.arange(n)
    return (0.5-0.5*np.cos((2*np.pi*t)/(n-1)))

def fftfreq(n, d=1.0):
    val = 1.0 / (n * d)
    results = np.empty(n, int)
    N = (n-1)//2 + 1
    p1 = np.arange(0, N, dtype=int)
    results[:N] = p1
    p2 = np.arange(-(n//2), 0, dtype=int)
    results[N:] = p2
    return results * val

fbands = {
    'vlf': (0.000, 0.04),
    'lf': (0.04, 0.15),
    'hf': (0.15, 0.4)
}

def welch(rri, win, nfft):
    rri = np.asarray(rri)
    rri = rri_format(rri)

    fs = 4
    t = np.cumsum(rri)
    t -= t[0]
    f_interpol = interpolate.interp1d(t, rri, 'cubic')
    t_interpol = np.arange(t[0], t[-1], 1000./fs)
    rri = f_interpol(t_interpol)
    rri = rri - np.mean(rri)

    window = min(1198, (len(rri)))

    shift = int(window/2)

    start = np.arange(0, len(rri) + 1)[0:(len(rri) + 1) - window:shift]
    end = np.arange(0, len(rri) + 1)[window:len(rri) + 1:shift]
    if start[-1] != len(rri) - window:
        start = np.append(start, len(rri) - window)
        end = np.append(end, len(rri))
    
    rris = []
    for i in stqdm(range(len(start)), desc = 'Multiply the cut segment by Hanning Window'):
    # for i in range(len(start)):
        rri_temp = rri[start[i]:end[i]]
        mean_rri = np.mean(rri_temp)
        rri_norm = rri_temp - mean_rri

        n = len(rri_norm)
        t = np.arange(n)
        win = 0.5-0.5*np.cos((2*np.pi*t)/(n-1))
        rris.append(win * rri_norm)

    scale = 1.0 / (fs * (win**2).sum())

    x = np.fft.fft(rris, n=nfft)
    x = np.conjugate(x) * x
    x *= scale
    x[..., 1:] *= 2
    x = x.mean(axis=0)
    x_real = x.real

    N = (nfft-1)//2 + 1
    freq = fftfreq(nfft, 1/fs)[:N]
    power = x_real[:N]

    indices = []
    for key in stqdm(fbands.keys(), desc= 'Calculate LF, HF and Total Power'):
    # for key in fbands.keys():
        indices.append(np.where((fbands[key][0] <= freq) & (freq <= fbands[key][1])))
    
    df = (freq[1] - freq[0])
    vlf_i, lf_i, hf_i = indices[0][0], indices[1][0], indices[2][0]
    
    vlf_power = np.sum(power[vlf_i]) * df
    lf_power = np.sum(power[lf_i]) * df
    hf_power = np.sum(power[hf_i]) * df

    total_power = np.sum((vlf_power, lf_power, hf_power))

    return vlf_power, lf_power, hf_power, total_power, freq, power

    
