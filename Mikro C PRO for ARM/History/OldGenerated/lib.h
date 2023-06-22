#define N            75251
#define N_DISPLAY_ECG    400
#define N_RR         2000
#define N_FFT        4096
#define N_FFT_2      2048
#define N_RR_INTER   3000
#define N_POWER_B    3000



void bingkai_black(int X1, int Y1, int X2, int Y2, float dat)
{
    TFT_Set_Pen(CL_BLACK, 1);
    TFT_Set_Brush(1, 0, 0, LEFT_TO_RIGHT, CL_BLACK, CL_BLACK);
    TFT_Rectangle(X1, Y1, X2, Y2);
    TFT_Set_Font(Times_New_Roman19x23_Regular, CL_WHITE, FO_HORIZONTAL);
    FloatToStr(dat, text);
    TFT_Write_Text(text, X1, Y1);
    Delay_ms(10);
}

// ----------------------------------- GLOBAL VARIABLE ----------------------------------- //

/*typedef struct complex{
    float real;
    float imag;
} complex_t;

complex_t fft_temp[N_FFT];
complex_t fft_input[N_FFT];
complex_t fft_input_conjugated[N_FFT];*/

//float power_ecg[N_FFT_2], freq_ecg[N_FFT_2];
const float qj1[2] = {-2.0, 2.0};
const float qj2[6] = {-0.25, -0.75, -0.5, 0.5, 0.75, 0.25};
const float qj3[14] = {-0.03125, -0.09375, -0.1875, -0.3125, -0.34375, -0.28125, -0.125, 0.125, 0.28125, 0.34375, 0.3125, 0.1875, 0.09375, 0.03125};

int second_to_milisecond = 1000;
float phi_t = 3.14159265358979323846;

// --------------------------------------- UTILITY --------------------------------------- //

float get_index(float *array, int n){
      if(n < 0) {
           return array[0];
      }
      return array[n];
}

float get_rotating_index(float *array, int max, int n) {
    if(n < 0) {
        return array[max + n];
    }
    return array[n];
}

int get_rotating_index_int(int *array, int max, int n) {
    if (n < 0) {
        return array[max + n];
    }
    return array[n];
}


float std(float *input, float p, float dof) {
    int i;
    double result;
    float array_sum = 0.0, array_sum1, mean;

    for(i = 0; i < p; i++) {
        array_sum += input[i];
    }
    mean = array_sum / (float)(p);
    array_sum1 = 0.0;
    for(i = 0; i < p; i++) {
        array_sum1 += ((input[i] - mean) * (input[i] - mean));
    }
    result = sqrt((float)(array_sum1)/(float)(p-dof));
    return result;
}

// ------------------------------------ CUBIC SPLICE ------------------------------------- //
// source: https://gist.github.com/svdamani/1015c5c4b673c3297309

/*typedef struct cubic_spline {
    float x[N_RR], a[N_RR], l[N_RR], u[N_RR], z[N_RR], c[N_RR];
    float h[N_RR-1], Y[N_RR-1], b[N_RR-1], d[N_RR-1];
} cubic_t;

void cubic_spline_init(cubic_t* cubic, int n, float* x, float *a) {
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
}*/

// new_x must be more detail other than cubic->x in order this function to be work
// and in the correct order
// ex:
//   cubic->x = 0  .  .  .  .  .  . 1 .  .  .  .  .  .  2
//   new_x    = 0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2
/*void cubic_spline_interpolate(cubic_t* cubic, float* new_x, float* new_y, float new_n) {
    int index = 0, i;
    float x;
    sprintf(sendText, "a");
    UART3_Write_Text(sendText);

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

// declaration of global variables
/*cubic_t cubic;
cubic_t* cubic_ptr = (cubic_t*) &cubic;*/

// ----------------------------------------- FFT ----------------------------------------- //

/*complex_t multiply(complex_t a, complex_t b) {
    complex_t result;
    result.real = (a.real * b.real) - (a.imag * b.imag);
    result.imag = (a.real * b.imag) + (a.imag * b.real);
    return result;
}

void fft(complex_t *v, int n, complex_t *tmp){
    if (n > 1) {
        int k, m;
        complex_t z, w, *vo, *ve;
        ve = tmp; vo = tmp + n/2;
        for(k = 0; k < n/2; k++) {
            ve[k] = v[2*k];
            vo[k] = v[2*k + 1];
        }
        fft(ve, n/2, v);
        fft(vo, n/2, v);
        for(m=0; m<n/2; m++) {
            w.real = cos(2*phi_t*m/(double)n);
            w.imag = -sin(2*phi_t*m/(double)n);
            z.real = w.real*vo[m].real - w.imag*vo[m].imag;
            z.imag = w.real*vo[m].imag + w.imag*vo[m].real;
            v[  m  ].real = ve[m].real + z.real;
            v[  m  ].imag = ve[m].imag + z.imag;
            v[m+n/2].real = ve[m].real - z.real;
            v[m+n/2].imag = ve[m].imag - z.imag;
        }
    }
}*/


/*void psd_fft_hann_window(int n, int n_fft, float *input, float *psd, float fs) {
    int i;
    float input_mean = 0.0, enbw = 0.0, scale = 0.0;
    float hanning_window[N_RR_INTER + 1];

    // detrend
    for(i = 0; i < n; i++) {
        input_mean += input[i];
    }
    input_mean /= (float) n;
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);
    for(i = 0; i < n; i++) {
        input[i] -= input_mean;
    }
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);
    // calculate hanning window
    for(i = 0; i < n; i++) {
        hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
        enbw += hanning_window[i] * hanning_window[i];
    }
    scale = 1.0 / (fs * enbw);
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);

    for(i = 0; i < N_FFT; i++) {
        fft_input[i].real = 0.0;
        fft_input[i].imag = 0.0;
    }

    // fft asuming window = length of input or n
    for(i = 0; i < n; i++) {
        fft_input[i].real = hanning_window[i] * input[i];
    }
    fft(fft_input, n_fft, fft_temp);
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);

    memcpy(fft_input_conjugated, fft_input, sizeof(complex_t) * n_fft);
    for(i = 0; i < n_fft; i++) {
        fft_input_conjugated[i].imag *= -1.0;
        fft_input[i] = multiply(fft_input[i], fft_input_conjugated[i]);
        fft_input[i].real *= scale;
        if (i != 0) fft_input[i].real *= 2;
    }

    for(i = 0; i < N_FFT_2; i++) {
        psd[i] = fft_input[i].real;
    }
}*/

// ----------------------------------------- ECG ----------------------------------------- //

typedef struct ECG_Instance {
    // variable for signal
    float signal[N_DISPLAY_ECG];
    int length;
    int current_index;
    float fs;

    // private variable
    float w2fb1[N_DISPLAY_ECG];
    float w2fb2[N_DISPLAY_ECG];
    float w2fb3[N_DISPLAY_ECG];
    int qrs_result[N_DISPLAY_ECG];

    // private variable for rr
    float rr_index[N_RR];
    float rr[N_RR];
    float bpm[N_RR];
    int rr_length;
    int bpm_length;
    int rr_index_length;
    float sum_data;

    // time domain variable
    float rmssd;
//    float nn50;
//    float pnn50;
//    float sdann;

    // non-linear variable
    float sd1;
    float sd2;

    // frequency domain
    /*float vlf_power;
    float lf_power;
    float hf_power;
    float total_power;
    float lf_hf;*/

    // threshold variable
    float threshold1;
    float threshold2;
    float threshold3;
} ECG_Instance_t;
//int downsampling = 0;
ECG_Instance_t ecg;
ECG_Instance_t* ecg_ptr = (ECG_Instance_t*) &ecg;

void ecg_init(ECG_Instance_t* ecg, float fs, float threshold1, float threshold2, float threshold3) {
    ecg->threshold1 = threshold1;
    ecg->threshold2 = threshold2;
    ecg->threshold3 = threshold3;
    ecg->fs = fs;
    ecg->length = 0;
    ecg->current_index = 0;
    ecg->rr_length = 0;
    ecg->bpm_length = 0;
    ecg->rr_index_length = 0;
    ecg->sum_data = 0;

    memset(ecg->signal, 0, sizeof(ecg->signal));
    memset(ecg->w2fb1, 0, sizeof(ecg->w2fb1));
    memset(ecg->w2fb2, 0, sizeof(ecg->w2fb2));
    memset(ecg->w2fb3, 0, sizeof(ecg->w2fb3));
    memset(ecg->qrs_result, 0, sizeof(ecg->qrs_result));
    memset(ecg->rr_index, 0, sizeof(ecg->rr_index));
    memset(ecg->rr, 0, sizeof(ecg->rr));
    memset(ecg->bpm, 0, sizeof(ecg->bpm));
}

void ecg_baseline_restore(ECG_Instance_t* ecg){
     int i = ecg->current_index % N_DISPLAY_ECG;
     
     ecg->sum_data += ecg->signal[i];
     
     ecg->signal[i] = ecg->signal[i] - (ecg->sum_data / ecg->length);
}

void ecg_dwt_decomposition(ECG_Instance_t* ecg) {
    int i = ecg->current_index % N_DISPLAY_ECG;
    int last_qrs_result;
    float gradient1, gradient2, gradient3, t;
    ecg->w2fb1[i] = qj1[0] * get_index(ecg->signal, i) + qj1[1] * get_index(ecg->signal, i - 1);
    ecg->w2fb2[i] = qj2[0] * get_index(ecg->signal, i) + qj2[1] * get_index(ecg->signal, i - 1) + qj2[2] * get_index(ecg->signal, i - 2) + qj2[3] * get_index(ecg->signal, i - 3) + qj2[4] * get_index(ecg->signal, i - 4) + qj2[5] * get_index(ecg->signal, i - 5);
    ecg->w2fb3[i] = qj3[0] * get_index(ecg->signal, i) + qj3[1] * get_index(ecg->signal, i - 1) + qj3[2] * get_index(ecg->signal, i - 2) + qj3[3] * get_index(ecg->signal, i - 3) + qj3[4] * get_index(ecg->signal, i - 4) + qj3[5] * get_index(ecg->signal, i - 5) + qj3[6] * get_index(ecg->signal, i - 6) + qj3[7] * get_index(ecg->signal, i - 7) + qj3[8] * get_index(ecg->signal, i - 8) + qj3[9] * get_index(ecg->signal, i - 9) + qj3[10] * get_index(ecg->signal, i - 10) + qj3[11] * get_index(ecg->signal, i - 11) + qj3[12] * get_index(ecg->signal, i - 12) + qj3[13] * get_index(ecg->signal, i - 13);

    gradient1 = ecg->w2fb1[i] - get_rotating_index(ecg->w2fb1, N_DISPLAY_ECG, i - 1);
    gradient2 = ecg->w2fb2[i] - get_rotating_index(ecg->w2fb2, N_DISPLAY_ECG, i - 2);
    gradient3 = ecg->w2fb3[i] - get_rotating_index(ecg->w2fb3, N_DISPLAY_ECG, i - 3);

    if (gradient1 > ecg->threshold1 && gradient2 > ecg->threshold2 && gradient3 > ecg->threshold3) {
       ecg->qrs_result[i] = 1;
    } else {
        ecg->qrs_result[i] = 0;
    }

    last_qrs_result = get_rotating_index_int(ecg->qrs_result, N_DISPLAY_ECG, i - 1);
    if (last_qrs_result == 0 && ecg->qrs_result[i] == 1) {
        ecg->rr_index[ecg->rr_index_length] = ecg->current_index - 1;

        if (ecg->rr_index_length >= 2) {
            t = 1.0 / ecg->fs;
            ecg->rr[ecg->rr_length] =  fabs(((ecg->rr_index[ecg->rr_index_length]) * t) - ((ecg->rr_index[ecg->rr_index_length - 1]) * t));
//            printf("%.6f => %.6f %.6f\n", ecg->rr[ecg->rr_length], ecg->rr_index[ecg->rr_index_length], ecg->rr_index[ecg->rr_index_length -1]);
            ecg->bpm[ecg->bpm_length] = (float) 60.0 / ecg->rr[ecg->rr_length];
            bingkai_black(680, 17, 800, 45, ecg->bpm[ecg->bpm_length]);
/*sprintf(sendText, "%f %f %f %f\r\n",  633.000000 * 0.004, ecg->rr_index[ecg->rr_index_length], ecg->rr_index[ecg->rr_index_length]*t, ecg->rr[ecg->rr_length]);
            UART3_Write_Text(sendText);*/
            ecg->rr_length++;
            ecg->bpm_length++;
        }
        ecg->rr_index_length++;
    }
}

void ecg_time_domain_calculation(ECG_Instance_t *ecg) {
    float rrd[N_RR - 1];
    int i, segment_duration = 300000, limit = 2, current_index = 0;
    float _rmssd = 0.0;
    float max_duration = 0.0;
    float segment_mean[2];

    for (i = 0; i < ecg->rr_length - 1; i++) {
        rrd[i] = fabs(ecg->rr[i+1] - ecg->rr[i]);
    }

    // calculate rmssd
    for(i = 0; i < ecg->rr_length - 1; i++) {
        _rmssd += rrd[i] * rrd[i];
    }
    ecg->rmssd = sqrt(_rmssd / (float)(ecg->rr_length - 1));


    /*// calculate nn50 and pnn50
    ecg->nn50 = 0;
    for (i = 0; i < ecg->rr_length - 1; i++){
        if (rrd[i] > 0.05){
            ecg->nn50 += 1;
        }
    }
    ecg->pnn50 = (ecg->nn50 / (ecg->rr_length - 1)) * 100;

    // calculate sdann
    for(i = 0; i < ecg->rr_length; i++) {
        max_duration += ecg->rr[i];
    }
    max_duration *= second_to_milisecond; // to miliseconds

    if (max_duration < segment_duration) {
        ecg->sdann = 0.0;
        return;
    }


    for(i = 0; i < limit; i++) {
        float current_segment_sum = 0.0;
        int current_segment_count = 0;
        while(current_segment_sum < (float)segment_duration) {
            current_segment_sum += ecg->rr[current_index] * second_to_milisecond;
            current_segment_count ++;

            if (current_index < ecg->rr_length - 1) {
                current_index++;
            } else {
                break;
            }
        }

        if (current_segment_sum > segment_duration) {
            current_index --;
            current_segment_sum -= (ecg->rr[current_index - 1] * second_to_milisecond);
            current_segment_count --;
        }

        segment_mean[i] = current_segment_sum / (float) current_segment_count;
    }
    ecg->sdann = std(segment_mean, limit, 1);*/
}

void ecg_non_linear_calculation(ECG_Instance_t *ecg) {
    float x1[N_RR - 1];
    float x2[N_RR - 1];
    float sd1_array[N_RR - 1];
    float sd2_array[N_RR - 1];
    int i;
    float sqrt2 = sqrt(2);

    for(i = 0; i < ecg->rr_length - 1; i++) {
        x1[i] = ecg->rr[i];
        x2[i] = ecg->rr[i + 1];
    }
    for(i = 0; i < ecg->rr_length - 1; i++) {
        sd1_array[i] = x1[i] - x2[i];
        sd1_array[i] /= sqrt2;

        sd2_array[i] = x1[i] + x2[i];
        sd2_array[i] /= sqrt2;
     }

    ecg->sd1 = std(sd1_array, ecg->rr_length - 1, 0) * second_to_milisecond;
    ecg->sd2 = std(sd2_array, ecg->rr_length - 1, 0) * second_to_milisecond;
}

/*void ecg_frequency_domain_calculation(ECG_Instance_t *ecg) {
    int i = 0, n_fft;
    float fs = 4.0;
    float step = (1000.0 / fs);
    float t[N_RR];
    float rr_ins[N_RR];
    int new_x_size;
    float new_x[N_RR_INTER];
    float new_rr[N_RR_INTER];
    float new_rr_mean, val, df;
    int vlf_count = 0, lf_count = 0, hf_count = 0;
    int vlf_index[N_POWER_B];
    int lf_index[N_POWER_B];
    int hf_index[N_POWER_B];
    t[0] = 0.0;
    rr_ins[0] = ecg->rr[0] * 1000;
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);
    for(i = 1; i < ecg->rr_length; i++) {
        t[i] = t[i - 1] + ecg->rr[i] * 1000;
        rr_ins[i] = ecg->rr[i] * 1000;
    }
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);
    new_x_size = (int) ceil(t[ecg->rr_length - 1] / step);
    for(i = 0; i < new_x_size; i++) { new_x[i] = (float)i * step; }
    /*sprintf(sendText, "bf spli");
    UART3_Write_Text(sendText);*/
//    cubic_spline_init(cubic_ptr, ecg->rr_length, t, rr_ins);
//    cubic_spline_interpolate(cubic_ptr, new_x, new_rr, new_x_size);
    /*sprintf(sendText, "after splinee");
    UART3_Write_Text(sendText);*/
    // detrend
    /*new_rr_mean = 0.0;
    for(i = 0; i < new_x_size; i++) {
        new_rr_mean += new_rr[i];
    }
    new_rr_mean /= (float) new_x_size;
    sprintf(sendText, "8");
    UART3_Write_Text(sendText);
    for(i = 0; i < new_x_size; i++) {
        new_rr[i] -= new_rr_mean;
    }
    n_fft = 1<<12;
    val = 1.0 / ((float)n_fft * (1.0 / fs));
//    val = 0.061035;

     sprintf(sendText, "f");
    UART3_Write_Text(sendText);
    psd_fft_hann_window(new_x_size, n_fft, new_rr, power_ecg, fs);

    for(i = 0; i < N_FFT_2; i++) {
        freq_ecg[i] = i * val;
    }

    // fbands
    // vlf = 0.000 - 0.04
    // lf = 0.04 - 0.15
    // hf = 0.15 - 0.4

    for(i = 0; i < N_FFT_2 / 4; i++) {
        if (0.000 <= freq_ecg[i] && freq_ecg[i] <= 0.04) {
            vlf_index[vlf_count++] = i;
        }
        if (0.04 <= freq_ecg[i] && freq_ecg[i] <= 0.15) {
            lf_index[lf_count++] = i;
        }
        if (0.15 <= freq_ecg[i] && freq_ecg[i] <= 0.4) {
            hf_index[hf_count++] = i;
        }
    }

    df = (freq_ecg[1] - freq_ecg[0]);

    ecg->vlf_power = 0.0;
    for(i = 0; i < vlf_count; i++) {
        ecg->vlf_power += power_ecg[vlf_index[i]];
    }
    ecg->vlf_power *= df;

    ecg->lf_power = 0.0;
    for(i = 0; i < lf_count; i++) {
        ecg->lf_power += power_ecg[lf_index[i]];
    }
    ecg->lf_power *= df;

    ecg->hf_power = 0.0;
    for(i = 0; i < hf_count; i++) {
        ecg->hf_power += power_ecg[hf_index[i]];
    }
    ecg->hf_power *= df;
    /*sprintf(sendText, "%f %f %f\r\n", ecg->vlf_power, ecg->lf_power, ecg->hf_power);
    UART3_Write_Text(sendText);*/

    /*ecg->total_power = ecg->vlf_power + ecg->lf_power + ecg->hf_power;
    ecg->lf_hf = ecg->lf_power / ecg->hf_power;
}*/

int ecg_process(ECG_Instance_t* ecg, float ecg_value) {
    ecg->signal[ecg->length % N_DISPLAY_ECG] = ecg_value;
    ecg->current_index = ecg->length;
    ecg->length++;

    /*if (ecg->length > N) {
        return 1;
    }*/
//    ecg_baseline_restore(ecg);
    ecg_dwt_decomposition(ecg);
    // ecg_time_domain_calculation(ecg);
    // ecg_non_linear_calculation(ecg);
    // ecg_frequency_domain_calculation(ecg_ptr);

    return 0;
}