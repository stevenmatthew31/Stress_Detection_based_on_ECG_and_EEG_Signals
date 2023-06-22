float power2[N_FFT/2], freq_eeg[N_FFT/2];

void eeg_frequency_domain_calculation() {
    int i = 0, n = 1250;
    int n_fft = 1<<12;
    float fs_fft = 512.0;
    float new_rr_mean, val_fft, df, temp_new_rr_mean;
    int delta_count = 0, teta_count = 0, alpha_count = 0, beta_count = 0, gamma_count = 0;
    int delta_index[1250];
    int teta_index[1250];
    int alpha_index[1250];
    int beta_index[1250];
    int gamma_index[1250];

    // detrend
    temp_new_rr_mean = 0.0;
    hpf_eeg[0] = 0.0;
    for (i = 0; i < n; i++) {
        temp_new_rr_mean += hpf_eeg[i];
    }
    new_rr_mean = (float)temp_new_rr_mean / (float) n;

    for(i = 0; i < n; i++) {
        new_hpf_eeg[i] = hpf_eeg[i] - new_rr_mean;
    }
    val_fft = 1.0 / ((float)n_fft * (1.0 / fs_fft));

    psd_fft_recta_window(n, n_fft, new_hpf_eeg, power2, fs_fft);

    for(i = 0; i < N_FFT/2; i++) {
        freq_eeg[i] = i * val_fft;
    }
      sprintf(sendText, "%.2f\r\n", val_fft);
  UART2_Write_Text(sendText);
    // fbands
    // delta = 0.2 - 3
    // teta = 3 - 8
    // alpha = 8 - 13
    // beta = 13 - 30
    // gamma = 30 - 35

    for(i = 0; i < N_FFT / 8; i++) { //N_FFT/2/4
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

    df = (freq_eeg[1] - freq_eeg[0]);

    delta_power = 0.0;
    for(i = 0; i < delta_count; i++) {
        delta_power += power2[delta_index[i]];
    }
    delta_power *= df;

    teta_power = 0.0;
    for(i = 0; i < teta_count; i++) {
        teta_power += power2[teta_index[i]];
    }
    teta_power *= df;

    alpha_power = 0.0;
    for(i = 0; i < alpha_count; i++) {
        alpha_power += power2[alpha_index[i]];
    }
    alpha_power *= df;

    beta_power = 0.0;
    for(i = 0; i < beta_count; i++) {
        beta_power += power2[beta_index[i]];
    }
    beta_power *= df;

    gamma_power = 0.0;
    for(i = 0; i < gamma_count; i++) {
        gamma_power += power2[gamma_index[i]];
    }
    gamma_power *= df;

    total_power = delta_power + teta_power + alpha_power + beta_power + gamma_power;
}