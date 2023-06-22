import numpy as np

def get_index(data, n):
    if(n < 0) :
        return data[0]
    return data[n]

# def get_index(data, index):
#     if index < 0:
#         return 0
#     if index > len(data) - 1:
#         return 0
#     return data[index]

def rri_diff(rr):
    rrd = np.zeros(rr.size - 1)

    for i in range(rr.size - 1):
        rrd[i] = abs(rr[i] - rr[i - 1])
    
    return rrd

def rri_format(rr):
    if np.max(rr) < 10:
        rr_ = np.asarray(rr, dtype='float64')
        rr_ *= 1000
        return rr_
    return rr

def segmentation(rri, duration=300):
    rri = rri_format(rri)
    max_time = np.sum(rri)
    duration *= 1000 # to miliseconds

    if np.sum(rri) > duration:
        segments = []
        limit = int(np.ceil((max_time + duration)/duration))
        index = 0

        for i, _ in enumerate(range(0, limit - 1)):
            current_segment = []
            while(np.sum(current_segment) < duration):
                current_segment.append(rri[index])
                if index < len(rri) - 1:
                    index += 1
                else:
                    break
            
            # just in case it's more than the duration
            if (np.sum(current_segment) > duration):
                current_segment = current_segment[:-1]
                index -= 1

            segments.append(list(current_segment))
        
        return segments
    else:
        return np.asarray([])

def std(array, dof=1):
    array = np.asarray(array)
    result = np.sum([(x - np.mean(array))**2 for x in array])
    result = np.sqrt(1. / (len(array) - dof) * result)
    return result