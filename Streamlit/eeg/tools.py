def get_index(data, index):
    if index < 0:
        return 0
    if index > data.size - 1:
        return 0
    return data[index]