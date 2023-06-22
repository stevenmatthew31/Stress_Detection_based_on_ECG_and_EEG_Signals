import numpy as np
from stqdm import stqdm

def recta(n):
    t = np.arange(n)
    return 1*t

def hanning_new(n):
    # n = min(1198, (len(rri)))
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
    'Delta': (0.2, 3),
    'Theta': (3, 8),
    'Alpha': (8, 13),
    'Beta' : (13, 30),
    'Gamma' : (30, 35)
}

def welch(data_eeg, window, win, nfft):
    data_eeg = np.asarray(data_eeg).astype(np.float32)

    fs = 256

    shift = int(window/2)

    lenght_eeg = len(data_eeg)

    start = np.arange(0, lenght_eeg + 1)[0:(lenght_eeg + 1) - window:shift]
    end = np.arange(0, lenght_eeg + 1)[window:lenght_eeg + 1:shift]
    if start[-1] != lenght_eeg - window:
        start = np.append(start, lenght_eeg - window)
        end = np.append(end, lenght_eeg)
    
    data_eegs = []
    for i in stqdm(range(len(start)), 'Normalize Signal'):
    # for i in range(len(start)):
        data_eeg_temp = data_eeg[start[i]:end[i]]
        mean_data_eeg = np.mean(data_eeg_temp)
        data_eeg_norm = data_eeg_temp - mean_data_eeg
        data_eegs.append(win * data_eeg_norm)

    scale = 1.0 / (fs)

    x = np.fft.fft(data_eegs, n=nfft)
    x = np.conjugate(x) * x
    x *= scale
    x[..., 1:] *= 2
    x = x.mean(axis=0)
    x_real = x.real

    N = (nfft-1)//2 + 1
    freq = fftfreq(nfft, 1/fs)[:N]
    power = x_real[:N]
    power /= np.max(power)

    indices = []
    for key in stqdm(fbands.keys(), desc= 'Calculate Brain Waves and Total Power'):
    # for key in fbands.keys():
        indices.append(np.where((fbands[key][0] <= freq) & (freq <= fbands[key][1])))
    
    df = (freq[1] - freq[0])
    d_i, t_i, a_i, b_i, g_i = indices[0][0], indices[1][0], indices[2][0], indices[3][0], indices[4][0]
    
    d_power = np.sum(power[d_i]) * df
    t_power = np.sum(power[t_i]) * df
    a_power = np.sum(power[a_i]) * df
    b_power = np.sum(power[b_i]) * df
    g_power = np.sum(power[g_i]) * df

    total_power = np.sum((d_power, t_power, a_power, b_power, g_power))

    return d_power, t_power, a_power,b_power, g_power, total_power, freq, power