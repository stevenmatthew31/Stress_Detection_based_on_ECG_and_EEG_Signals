from eeg import frequency_domain
from stqdm import stqdm

def calculate_band(signal):
    window = len(signal)
    window_function = frequency_domain.hanning_new(window)
    d_power, t_power, a_power,b_power, g_power, total_power, freq, power = frequency_domain.welch(signal, window, window_function, 2**13)
    return d_power, t_power, a_power,b_power, g_power, total_power, freq, power

def mpf(freq, power):
    num = 0
    denum = 0
    # for i in range (len(freq)):
    for i in stqdm(range (len(freq)), 'Calculate MPF'):
        num += freq[i]*power[i]
        denum += power[i]
    return num/denum #.MPF
    