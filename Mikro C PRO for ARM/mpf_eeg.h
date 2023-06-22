void mpf(){
     float num = 0.0, denum = 0.0;
     int i;
     for (i = 0; i < N_FFT/2; i++){
         num += freq_eeg[i] * power2[i];
         denum += power2[i];
//         sprintf(sendText, "%f %f\r\n", freq2[i], power2[i]);
//         UART2_Write_Text(sendText);
     }
     value_mpf =  num/(float)denum;
}