//typedef struct cubic_spline{
//        float x[400], a[400], l[400], u[400], z[400], c[400];
//        float h[400-1], Y[400-1], b[400-1], d[400-1];
//} cubic_t;

/*void cubic_spline_init(cubic_t* cubic, int n, float* x, float *a) {
    int i, j;

    memcpy(cubic->x, x, sizeof(float) * n);
    memcpy(cubic->a, a, sizeof(float) * n);

    // step 1
    for(i = 0; i <= n - 1; i++) {
        cubic->h[i] = cubic->x[i + 1] - cubic->x[i];
    }

    // step 2
    for(i = 1; i <= n - 1; i++) {
        cubic->Y[i] = 3.0 * (cubic->a[i + 1] - cubic->a[i]) / cubic->h[i] - 3.0 * (cubic->a[i] - cubic->a[i - 1]) / cubic->h[i - 1];
    }

    // step 3
    cubic->l[0] = 1.0;
    cubic->u[0] = 0.0;
    cubic->z[0] = 0.0;

    // step 4
    for(i = 1; i <= n - 1; i++) {
        cubic->l[i] = 2.0 * (cubic->x[i + 1] - cubic->x[i - 1]) - cubic->h[i - 1] * cubic->u[i - 1];
        cubic->u[i] = cubic->h[i] / cubic->l[i];
        cubic->z[i] = (cubic->Y[i] - cubic->h[i - 1] * cubic->z[i - 1]) / cubic->l[i];
    }

    // step 5
    cubic->l[n] = 1.0;
    cubic->z[n] = 0.0;
    cubic->c[n] = 0.0;

    // step 6
    for (j = n - 1; j >= 0; --j) {
        cubic->c[j] = cubic->z[j] - cubic->u[j] * cubic->c[j + 1];
        cubic->b[j] = (cubic->a[j + 1] - cubic->a[j]) / cubic->h[j] - cubic->h[j] * (cubic->c[j + 1] + 2.0 * cubic->c[j]) / 3.0;
        cubic->d[j] = (cubic->c[j + 1] - cubic->c[j]) / (3.0 * cubic->h[j]);
    }
}

void cubic_spline_interpolate(cubic_t* cubic, float* new_x, float* new_y, float new_n) {
    int index = 0, i;
    float x;
    for(i = 0; i < new_n; i++) {
        if (!(new_x[i] >= cubic->x[index] && new_x[i] <= cubic->x[index + 1])) {
            index++;
        }
        x = new_x[i] - cubic->x[index];
        // yi = ai + bi x + ci x^2 + di x^3
        new_y[i] = cubic->a[index]
                + cubic->b[index] * x
                + cubic->c[index] * x * x
                + cubic->d[index] * x * x * x;

    }
}*/

float power[N_FFT/2], freq2[N_FFT/2];

void eeg_frequency_domain_calculation() {
    // interpolate rri to fs = 4
    int i = 0, n = 5;
    int n_fft = 1<<12;
    float fs_fft = 4.0;
    float step = (1000.0 / fs_fft);
    float t[400];
    float rr_ins[400];
    int new_x_size;
    float delta_power;
    float teta_power;
    float alpha_power;
    float beta_power;
    float gamma_power;
    float total_power;
    float new_x[1200];
    float new_rr[1200];
    float new_rr_mean, val_fft, df, temp_new_rr_mean;
    int delta_count = 0, teta_count = 0, alpha_count = 0, beta_count = 0, gamma_count = 0;
    int delta_index[300];
    int teta_index[300];
    int alpha_index[300];
    int beta_index[300];
    int gamma_index[300];
//    cubic_t cubic;
//    cubic_t* cubic_ptr = (cubic_t*) &cubic;
    t[0] = 0.0;
    for(i = 1; i <= n; i++) {
        t[i] = t[i - 1] + rri[i] * 1000;
        rr_ins[i] = rri[i] * 1000;
    }
    new_x_size = (int) ceil(t[n - 1] / step);

    for(i = 0; i < new_x_size; i++) {
          new_x[i] = (float)i * step;
    }
//    cubic_spline_init(cubic_ptr, n, t, rr_ins);
//    cubic_spline_interpolate(cubic_ptr, new_x, new_rr, new_x_size);

    // detrend
    temp_new_rr_mean = 0.0;
    for(i = 0; i < new_x_size; i++) {
        temp_new_rr_mean += new_rr[i];
    }
    new_rr_mean = (float)temp_new_rr_mean / (float) new_x_size;

    for(i = 0; i < new_x_size; i++) {
        new_rr[i] -= new_rr_mean;
    }

    val_fft = 1.0 / ((float)n_fft * (1.0 / fs_fft));

    psd_fft_recta_window(new_x_size, n_fft, new_rr, power, fs_fft);

    for(i = 0; i < N_FFT/2; i++) {
        freq2[i] = i * val_fft;
    }

    // fbands
    // delta = 0.2 - 3
    // teta = 3 - 8
    // alpha = 8 - 13
    // beta = 13 - 30
    // gamma = 30 - 35

    for(i = 0; i < N_FFT / 8; i++) { //N_FFT/2/4
        if (0.2 <= freq2[i] && freq2[i] <= 3.0) {
            delta_index[delta_count++] = i;
        }
        if (3.0 <= freq2[i] && freq2[i] <= 8.0) {
            teta_index[teta_count++] = i;
        }
        if (8.0 <= freq2[i] && freq2[i] <= 13.0) {
            alpha_index[alpha_count++] = i;
        }
        if (13.0 <= freq2[i] && freq2[i] <= 30.0) {
            beta_index[beta_count++] = i;
        }
        if (30.0 <= freq2[i] && freq2[i] <= 35.0) {
            gamma_index[gamma_count++] = i;
        }
    }

    df = (freq2[1] - freq2[0]);

    delta_power = 0.0;
    for(i = 0; i < delta_count; i++) {
        delta_power += power[delta_index[i]];
    }
    delta_power *= df;

    teta_power = 0.0;
    for(i = 0; i < teta_count; i++) {
        teta_power += power[teta_index[i]];
    }
    teta_power *= df;

    alpha_power = 0.0;
    for(i = 0; i < alpha_count; i++) {
        alpha_power += power[alpha_index[i]];
    }
    alpha_power *= df;
    
    beta_power = 0.0;
    for(i = 0; i < beta_count; i++) {
        beta_power += power[beta_index[i]];
    }
    beta_power *= df;
    
    gamma_power = 0.0;
    for(i = 0; i < gamma_count; i++) {
        gamma_power += power[gamma_index[i]];
    }
    gamma_power *= df;

    total_power = delta_power + teta_power + alpha_power, beta_power, gamma_power;
}