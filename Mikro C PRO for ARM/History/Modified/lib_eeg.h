#define N_EEG           3000
#define N_DISPLAY_EEG   800

typedef struct complex_2{
    float real_2;
    float imag_2;
} complex_t_2;

complex_t_2 fft_temp_2[N_FFT];
complex_t_2 fft_input_2[N_FFT];
complex_t_2 fft_input_conjugated_2[N_FFT];

typedef struct EEG_Instance {
    // variable for signal
    float eeg_signal[N_EEG];
    int length_eeg;
    int current_index_eeg;
    float fs_eeg;

    // private variable
    float lpf_eeg[N_EEG];
    float hpf_eeg[N_EEG];
    float sum_data_eeg;

    // frequency domain
    float delta_power;
    float teta_power;
    float alpha_power;
    float beta_power;
    float gamma_power;
    float total_power;

    // Feature Extraction variable
    float mpf_eeg;
    float lapf_eeg;
} EEG_Instance_t;

float power2[N_FFT_2], freq_eeg[N_FFT_2];

EEG_Instance_t eeg;
EEG_Instance_t* eeg_ptr = (EEG_Instance_t*) &eeg;

EEG_Instance_t eeg1;
EEG_Instance_t* eeg_ptr1 = (EEG_Instance_t*) &eeg1;

void eeg_init(EEG_Instance_t* eeg, float fs_eeg){
     eeg->fs_eeg = fs_eeg;
     eeg->length_eeg = 0;
     eeg->current_index_eeg = 0;
     eeg->sum_data_eeg = 0.0;

     memset(eeg->eeg_signal, 0, sizeof(eeg->eeg_signal));
     memset(eeg->lpf_eeg, 0, sizeof(eeg->lpf_eeg));
     memset(eeg->hpf_eeg, 0, sizeof(eeg->hpf_eeg));
}

void eeg_baseline_restore(EEG_Instance_t* eeg){
     int i = eeg->current_index_eeg & N_DISPLAY_EEG;

     eeg->sum_data_eeg += eeg->eeg_signal[i];

     eeg->eeg_signal[i] = eeg->eeg_signal[i] - (eeg->sum_data_eeg / eeg->length_eeg);
}

void eeg_filter(EEG_Instance_t* eeg){
     int i = eeg->current_index_eeg;
     
     if (i == 0){
        eeg->lpf_eeg[i] = (0.0350849*eeg->eeg_signal[i]);
     } else if (i == 1){
       eeg->lpf_eeg[i] = (0.0350849*eeg->eeg_signal[i]+0.0701698*eeg->eeg_signal[i-1]+(1.404706*eeg->lpf_eeg[i-1]));
     } else{
       eeg->lpf_eeg[i] = (0.0350849*eeg->eeg_signal[i]+0.0701698*eeg->eeg_signal[i-1]+0.0350849*eeg->eeg_signal[i-2]+(1.404706*eeg->lpf_eeg[i-1]) - 0.54504561*eeg->lpf_eeg[i-2]);
     }
     if (i == 0){
        eeg->hpf_eeg[i] = (0.99136003*eeg->lpf_eeg[i]);
     } else if (i == 1){
       eeg->hpf_eeg[i] = (0.99136003*eeg->lpf_eeg[i]-(1.98272007*eeg->lpf_eeg[i-1])+1.98264542*eeg->hpf_eeg[i-1]);
     } else{
       eeg->hpf_eeg[i] = (0.99136003*eeg->lpf_eeg[i]-(1.98272007*eeg->lpf_eeg[i-1])+0.99136003*eeg->lpf_eeg[i-2]+(1.98264542*eeg->hpf_eeg[i-1]) - 0.98279472*eeg->hpf_eeg[i-2]);
     }
}
     
     /*if (i == 0){
        eeg->lpf_eeg[i] = 0.0350849*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-1);
     } else if (i == 1){
       eeg->lpf_eeg[i] = 0.0350849*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i)+0.0701698*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-1)+(1.404706*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1));
     } else {
       eeg->lpf_eeg[i] = 0.0350849*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i)+0.0701698*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-1)+0.0350849*get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-2)+(1.404706*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1)) - 0.54504561*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-2);
     }

     if (i == 0){
        eeg->hpf_eeg[i] = 0.99136003*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i);
     } else if (i == 1){
       eeg->hpf_eeg[i] = 0.99136003*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i)-(1.98272007*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1))+(1.98264542*get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-1));
     } else {
       eeg->hpf_eeg[i] = 0.99136003*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i)-(1.98272007*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1))+0.99136003*get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-2)+(1.98264542*get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-1)) - 0.98279472*get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-2);
     }*/
     /*if (i == 1){
        eeg->lpf_eeg[i] = 0.03657484*eeg->eeg_signal[i];
     } else if (i == 2){
        eeg->lpf_eeg[i] = 0.03657484*eeg->eeg_signal[i]+0.07314967*eeg->eeg_signal[i-1]+(1.39089528*eeg->lpf_eeg[i-1]);
     } else {
       eeg->lpf_eeg[i] = 0.03657484*eeg->eeg_signal[i]+0.07314967*eeg->eeg_signal[i-1]+0.03657484*eeg->eeg_signal[i-2]+(1.39089528*eeg->lpf_eeg[i-1]) - 0.53719462*eeg->lpf_eeg[i-2];
     }

     if (i == 1){
        eeg->hpf_eeg[i] = 0.9911536*eeg->lpf_eeg[i];
     } else if (i == 2){
       eeg->hpf_eeg[i] = 0.9911536*eeg->lpf_eeg[i]-(1.98230719*eeg->lpf_eeg[i-1])+1.98222893*eeg->hpf_eeg[i-1];
     } else {
       eeg->hpf_eeg[i] = 0.9911536*eeg->lpf_eeg[i]-(1.98230719*eeg->lpf_eeg[i-1])+0.9911536*eeg->lpf_eeg[i-2]+(1.98222893*eeg->hpf_eeg[i-1]) - 0.98238545*eeg->hpf_eeg[i-2];
     }*/
//}

complex_t_2 multiply(complex_t_2 a, complex_t_2 b) {
    complex_t_2 result;
    result.real_2 = (a.real_2 * b.real_2) - (a.imag_2 * b.imag_2);
    result.imag_2 = (a.real_2 * b.imag_2) + (a.imag_2 * b.real_2);
    return result;
}

void fft(complex_t_2 *v, int n, complex_t_2 *tmp){
    if (n > 1) {
        int k, m;
        complex_t_2 z, w, *vo, *ve;
        ve = tmp; vo = tmp + n/2;
        for(k = 0; k < n/2; k++) {
            ve[k] = v[2*k];
            vo[k] = v[2*k + 1];
        }
        fft(ve, n/2, v);
        fft(vo, n/2, v);
        for(m=0; m<n/2; m++) {
            w.real_2 = cos(2*phi_t*m/(double)n);
            w.imag_2 = -sin(2*phi_t*m/(double)n);
            z.real_2 = w.real_2*vo[m].real_2 - w.imag_2*vo[m].imag_2;
            z.imag_2 = w.real_2*vo[m].imag_2 + w.imag_2*vo[m].real_2;
            v[  m  ].real_2 = ve[m].real_2 + z.real_2;
            v[  m  ].imag_2 = ve[m].imag_2 + z.imag_2;
            v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
            v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
        }
    }
}

void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
    int i;
    float input_mean = 0.0, enbw = 0.0, scale = 0.0;
    float hanning_window[N_RR_INTER + 1];
//    float scale = 0.002;
    for(i = 0; i < n; i++) {
        hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
        enbw += hanning_window[i] * hanning_window[i];
    }
    scale = 1.0 / (fs * enbw);
    for(i = 0; i < N_FFT; i++) {
        fft_input_2[i].real_2 = 0.0;
        fft_input_2[i].imag_2 = 0.0;
    }

    for(i = 0; i < n; i++) {
        fft_input_2[i].real_2 = input[i];
    }

    //scale = 1.0 / (fs);
    //scale = 0.002;
    for(i = 0; i < n; i++) {
        fft_input_2[i].real_2 = hanning_window[i] * input[i];
    }
    fft(fft_input_2, n_fft, fft_temp_2);

    memcpy(fft_input_conjugated_2, fft_input_2, sizeof(complex_t_2) * n_fft);

    for(i = 0; i < n_fft; i++) {
        fft_input_conjugated_2[i].imag_2 *= -1.0;
        fft_input_2[i] = multiply(fft_input_2[i], fft_input_conjugated_2[i]);
        fft_input_2[i].real_2 *= scale;
        if (i != 0) fft_input_2[i].real_2 *= 2;
    }

    for(i = 0; i < N_FFT_2; i++) {
        psd[i] = fft_input_2[i].real_2;
    }
}

void eeg_frequency_domain_calculation(EEG_Instance_t* eeg) {
    int i = 0;
    int n_fft = 1<<12;
    float fs_fft = 500.0;
    float val_fft, df;
    int delta_count = 0, teta_count = 0, alpha_count = 0, beta_count = 0, gamma_count = 0;
    int delta_index[500];
    int teta_index[500];
    int alpha_index[500];
    int beta_index[500];
    int gamma_index[500];
    // detrend
    /*temp_new_mean = 0.0;
    for (i = 0; i < eeg->length_eeg; i++) {
        temp_new_mean += eeg->hpf_eeg[i];
    }
    new_mean = (float)temp_new_mean / (float) eeg->length_eeg;
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);*/
//    for(i = 0; i < eeg->length_eeg; i++) {
//        eeg->hpf_eeg[i] = eeg->hpf_eeg[i] - new_mean;
//        sprintf(sendText, "eeg = %f\r\n", eeg->hpf_eeg[i]);
//        UART3_Write_Text(sendText);
//    }
    val_fft = 0.12207;
    psd_fft(eeg->length_eeg, n_fft, eeg->hpf_eeg, power2, fs_fft);

    for(i = 0; i < N_FFT_2; i++) {
        freq_eeg[i] = i * val_fft;
    }

    // fbands
    // delta = 0.2 - 3
    // teta = 3 - 8
    // alpha = 8 - 13
    // beta = 13 - 30
    // gamma = 30 - 35

    for(i = 0; i < N_FFT_2 / 5; i++) {
        if (0.2 <= freq_eeg[i] && freq_eeg[i] <= 3.0) {
            delta_index[delta_count++] = i;
        }
        if (3.0 <= freq_eeg[i] && freq_eeg[i] <= 8.0) {
            teta_index[teta_count++] = i;
        }
        if (8.0 <= freq_eeg[i] && freq_eeg[i] <= 13.0) {
            alpha_index[alpha_count++] = i;
        }
        if (13.0 <= freq_eeg[i] && freq_eeg[i] <= 30.0) {
            beta_index[beta_count++] = i;
        }
        if (30.0 <= freq_eeg[i] && freq_eeg[i] <= 35.0) {
            gamma_index[gamma_count++] = i;
        }
    }

    /*df = (freq_eeg[1] - freq_eeg[0]);*/
    df = val_fft;
    eeg->delta_power = 0.0;
    for(i = 0; i < delta_count; i++) {
        eeg->delta_power += power2[delta_index[i]];
    }
    eeg->delta_power *= df;

    eeg->teta_power = 0.0;
    for(i = 0; i < teta_count; i++) {
        eeg->teta_power += power2[teta_index[i]];
    }
    eeg->teta_power *= df;

    eeg->alpha_power = 0.0;
    for(i = 0; i < alpha_count; i++) {
        eeg->alpha_power += power2[alpha_index[i]];
    }
    eeg->alpha_power *= df;

    eeg->beta_power = 0.0;
    for(i = 0; i < beta_count; i++) {
        eeg->beta_power += power2[beta_index[i]];
    }
    eeg->beta_power *= df;

    eeg->gamma_power = 0.0;
    for(i = 0; i < gamma_count; i++) {
        eeg->gamma_power += power2[gamma_index[i]];
    }
    eeg->gamma_power *= df;

    eeg->total_power = eeg->delta_power + eeg->teta_power + eeg->alpha_power + eeg->beta_power + eeg->gamma_power;
    eeg->lapf_eeg = (float) eeg->alpha_power / eeg->total_power;
}

int eeg_process(EEG_Instance_t* eeg, float eeg_value){
    eeg->eeg_signal[eeg->length_eeg] = eeg_value;
    eeg->current_index_eeg = eeg->length_eeg;
    eeg->length_eeg++;

    if (eeg->length_eeg == (N_EEG - 1)) {
        eeg->length_eeg = 0;
    }
    eeg_baseline_restore(eeg);
    eeg_filter(eeg);
    return 0;
}

void eeg_mean_power_freq(EEG_Instance_t* eeg){
     float num = 0.0, denum = 0.0;
     int k;
     for (k = 0; k < N_FFT_2; k++){
         num += freq_eeg[k] * power2[k];
         denum += power2[k];
     }
     eeg->mpf_eeg = (float) num / (float) denum;
}