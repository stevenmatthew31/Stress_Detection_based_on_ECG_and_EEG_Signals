void psd_fft_recta_window(float n, float n_fft, float *input, float *psd, float fs) {
    int i;
    float input_mean = 0.0, scale = 0.0;

    // fft asuming window = length of input or n
//    for (i = 0; i < N_FFT; i++){
//        fft_input[i].real = 0.0;
//        fft_input[i].imag = 0.0;
//    }
      // detrend
    for(i = 0; i < n; i++) {
        input_mean += input[i];
    }
    input_mean /= (float) n;

    for(i = 0; i < n; i++) {
        input[i] -= input_mean;
    }
    for(i = 0; i < n; i++) {
        fft_input[i].real = input[i];
    }
    scale = 1.0 / (fs);
    fft(fft_input, n_fft, fft_temp);

    memcpy(fft_input_conjugated, fft_input, sizeof(complex_t) * n_fft);
    for(i = 0; i < n_fft; i++) {
        fft_input_conjugated[i].imag *= -1.0;
        fft_input[i] = multiply(fft_input[i], fft_input_conjugated[i]);
        fft_input[i].real *= scale;
        if (i != 0) fft_input[i].real *= 2;
    }
    for(i = 0; i < N_FFT/2; i++) {
        psd[i] = fft_input[i].real;
    }
}