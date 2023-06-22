int main() {
    ECG_Instance ecg;
    ECG_Instance* ecg_ptr = (ECG_Instance*) &ecg;

    ecg_init(ecg_ptr, sign_ecg, 1233, 250.0);
    ecg_dwt_decomposition(ecg_ptr);
    ecg_time_domain_calculation(ecg_ptr);

    //printf("RR LENGTH = %d\n", ecg_ptr->rr_length);

    //printf("RMSSD = %f\n", ecg_ptr->rmssd);
    //printf("NN50 = %f\n", ecg_ptr->nn50);
    //printf("PNN50 = %f\n", ecg_ptr->pnn50);

    return 0;
}