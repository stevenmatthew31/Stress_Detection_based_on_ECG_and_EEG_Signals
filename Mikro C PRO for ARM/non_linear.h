float std(float *array_input, float p, float dof) {
    int i;
    float mean;
    double result;
    float array_sum = 0.0;
    float array_sum1 = 0.0;
    for(i = 1; i < p; i++) {
        array_sum += array_input[i];
    }
    mean = array_sum / (float)(p-1);

    for(i = 1; i < p; i++) {
        array_sum1 += ((array_input[i] - mean) * (array_input[i] - mean));
    }
    result = sqrt((float)(array_sum1)/(float)(p-dof));
    return result;
}

void non_linear_calculation(){
     int i;
     float sd1, sd2, x1[10], x2[10], sd1_array[10], sd2_array[10];
     float sqrt2 = sqrt(2);
     for(i = 0; i < n-1; i++) {
           x1[i] = rri[i];
           x2[i] = rri[i + 1];
     }
     for(i = 0; i < n-1; i++) {
           sd1_array[i] = x1[i] - x2[i];
           sd1_array[i] /= (float) sqrt2;

           sd2_array[i] = x1[i] + x2[i];
           sd2_array[i] /= (float) sqrt2;
     }
     sd1 = std(sd1_array, (n - 1), 1);
     sd2 = std(sd2_array, (n - 1), 1);
     value_sd1 =  sd1*1000;
     value_sd2 =  sd2*1000;
}