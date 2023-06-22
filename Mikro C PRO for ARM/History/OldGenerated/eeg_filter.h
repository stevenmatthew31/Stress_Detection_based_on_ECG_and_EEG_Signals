/*typedef struct EEG_Instance {
    // variable for signal
    float eef_fp1_signal[N_DISPLAY];
    float eef_f3_signal[N_DISPLAY];
    int length;
    int current_index;
    float fs;

    // private variable
    float w2fb1[N_DISPLAY];
    float w2fb2[N_DISPLAY];
    float w2fb3[N_DISPLAY];
    int qrs_result[N_DISPLAY];

    // private variable for rr
    float rr_index[N_RR];
    float rr[N_RR];
    int rr_length;
    int rr_index_length;

    // time domain variable
    float rmssd;
    float nn50;
    float pnn50;
    float sdann;

    // non-linear variable
    float sd1;
    float sd2;

    // frequency domain
    float vlf_power;
    float lf_power;
    float hf_power;
    float total_power;

    // threshold variable
    float threshold1;
    float threshold2;
    float threshold3;
} ECG_Instance_t;

ECG_Instance_t ecg;
ECG_Instance_t* ecg_ptr = (ECG_Instance_t*) &ecg;*/

void filter(){
     int i;
     if (i == 1){
        lpf_eeg[i] = 0.0350849*eeg_sign[i];
     } else if (i == 2){
       lpf_eeg[i] = 0.0350849*eeg_sign[i]+0.0701698*eeg_sign[i-1]+(1.404706*lpf_eeg[i-1]);
     } else {
       lpf_eeg[i] = 0.0350849*eeg_sign[i]+0.0701698*eeg_sign[i-1]+0.0350849*eeg_sign[i-2]+(1.404706*lpf_eeg[i-1]) - 0.54504561*lpf_eeg[i-2];
     }

     if (i == 1){
        hpf_eeg[i] = 0.99136003*lpf_eeg[i];
     } else if (i == 2){
       hpf_eeg[i] = 0.99136003*lpf_eeg[i]-(1.98272007*lpf_eeg[i-1])+(1.98264542*hpf_eeg[i-1]);
     } else {
       hpf_eeg[i] = 0.99136003*lpf_eeg[i]-(1.98272007*lpf_eeg[i-1])+0.99136003*lpf_eeg[i-2]+(1.98264542*hpf_eeg[i-1]) - 0.98279472*hpf_eeg[i-2];
     }
}

/*void filterdq(){
     int i, j;
     for (i = 0; i <= 1250; i++){
         if (i == 1){
            lpf_eeg[i] = 0.0350849*eeg_sign[i];
         } else if (i == 2){
           lpf_eeg[i] = 0.0350849*eeg_sign[i]+0.0701698*eeg_sign[i-1]-(-1.404706*lpf_eeg[i-1]);
         } else {
           lpf_eeg[i] = 0.0350849*eeg_sign[i]+0.0701698*eeg_sign[i-1]+0.0350849*eeg_sign[i-2]-(-1.404706*lpf_eeg[i-1]) - 0.54504561*lpf_eeg[i-2];
         }
//     }
//     for (j = 0; j <= 1250; j++){
          if (i == 1){
            hpf_eeg[i] = 0.99136003*lpf_eeg[i];
         } else if (i == 2){
           hpf_eeg[i] = 0.99136003*lpf_eeg[i]+(-1.98272007*lpf_eeg[i-1])-(-1.98264542*hpf_eeg[i-1]);
         } else {
           hpf_eeg[i] = 0.99136003*lpf_eeg[i]+(-1.98272007*lpf_eeg[i-1])+0.99136003*lpf_eeg[i-2]-(-1.98264542*hpf_eeg[i-1]) - 0.98279472*hpf_eeg[i-2];
         }
     }
} */