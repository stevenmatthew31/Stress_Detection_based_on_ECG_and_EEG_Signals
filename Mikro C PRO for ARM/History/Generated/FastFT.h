//typedef struct complex{
//        float real;
//        float imag;
//} complex_t;

complex_t fft_temp[N_FFT];
complex_t fft_input[N_FFT];
complex_t fft_input_conjugated[N_FFT];

complex_t multiply(complex_t a, complex_t b) {
    complex_t result;
    result.real = (a.real * b.real) - (a.imag * b.imag);
    result.imag = (a.real * b.imag) + (a.imag * b.real);
    return result;
}

void fft(complex_t *v, int n, complex_t *tmp) {
    if (n > 1) {
        int k, m;
        complex_t z, w, *vo, *ve;
        ve = tmp; 
        vo = tmp + n/2;
        for(k = 0; k < n/2; k++) {
            ve[k] = v[2*k];
            vo[k] = v[2*k + 1];
        }
        fft(ve, n/2, v);
        fft(vo, n/2, v);
        for(m=0; m<n/2; m++) {
            w.real = cos(2*3.14*(double)m/(double)n);
            w.imag = -sin(2*3.14*(double)m/(double)n);
            z.real = w.real*vo[m].real - w.imag*vo[m].imag;
            z.imag = w.real*vo[m].imag + w.imag*vo[m].real;
            v[  m  ].real = ve[m].real + z.real;
            v[  m  ].imag = ve[m].imag + z.imag;
            v[m+n/2].real = ve[m].real - z.real;
            v[m+n/2].imag = ve[m].imag - z.imag;
        }
    }
}

void psd_fft_hann_window(float n, float n_fft, float *input, float *psd, float fs) {
    int i;
    float input_mean = 0.0, enbw = 0.0, scale = 0.0;
    float hanning_window[1200 + 1];

    // detrend
    for(i = 0; i < n; i++) {
        input_mean += input[i];
    }
    input_mean /= (float) n;

    for(i = 0; i < n; i++) {
        input[i] -= input_mean;
    }

    // calculate hanning window
    for(i = 0; i < n; i++) {
        hanning_window[i] = 0.5 - 0.5 * cos((2.0 * 3.14 * i) / ((float) n - 1.0));
        enbw += hanning_window[i] * hanning_window[i];
    }
    scale = 1.0 / (fs * enbw);

    // fft asuming window = length of input or n
    for(i = 0; i < n; i++) {
        fft_input[i].real = hanning_window[i] * input[i];
    }
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