import numpy as np
from .tools import get_index
from stqdm import stqdm

def decomposition(data):
    n_data = len(data)
    w2fb1 = np.zeros(n_data)
    w2fb2 = np.zeros(n_data)
    w2fb3 = np.zeros(n_data)
    qj1 = [-2.0, 2.0]
    qj2 = [-0.25, -0.75, -0.5, 0.5, 0.75, 0.25]
    qj3 = [-0.03125, -0.09375, -0.1875, -0.3125, -0.34375, -0.28125, -0.125, 0.125, 0.28125, 0.34375, 0.3125, 0.1875, 0.09375, 0.03125]
 
    for n in stqdm(range(n_data - 1), desc='Calculate Decomposition Level 1 - 3'):
    # for n in range(n_data - 1):
        w2fb1[n] = qj1[0] * get_index(data, n) + qj1[1] * get_index(data, n - 1)
        w2fb2[n] = qj2[0] * get_index(data, n) + qj2[1] * get_index(data, n - 1) + qj2[2] * get_index(data, n - 2) + qj2[3] * get_index(data, n - 3) + qj2[4] * get_index(data, n - 4) + qj2[5] * get_index(data, n - 5)
        w2fb3[n] = qj3[0] * get_index(data, n) + qj3[1] * get_index(data, n - 1) + qj3[2] * get_index(data, n - 2) + qj3[3] * get_index(data, n - 3) + qj3[4] * get_index(data, n - 4) + qj3[5] * get_index(data, n - 5) + qj3[6] * get_index(data, n - 6) + qj3[7] * get_index(data, n - 7) + qj3[8] * get_index(data, n - 8) + qj3[9] * get_index(data, n - 9) + qj3[10] * get_index(data, n - 10) + qj3[11] * get_index(data, n - 11) + qj3[12] * get_index(data, n - 12) + qj3[13] * get_index(data, n - 13)

    return w2fb1, w2fb2, w2fb3