void dwt_decomposition(){
     int i, j, k;
//     float w2fb2[1250], w2fb2[1248], w2fb3[1244], gradien1[1250], gradien2[1250], gradien3[1250];
//     float w2fb1[1250], w2fb2[1248], w2fb3[1244];
     float flag[10], t;

     for (i = 0; i <= 1250; i++){
        w2fb1[i - delay[1]] = 0.0;
        w2fb2[i - delay[2]] = 0.0;
        w2fb3[i - delay[3]] = 0.0;
        for (j = 1; j <=3; j++){
            if (j == 1){
                for (k = 0; k < 2; k++){
                    w2fb1[i - delay[1]] += qj1[k] * sign_ecg[i - k];
                }
            } else if (j == 2){
                for (k = 0; k < 6; k++){
                    w2fb2[i - delay[2]] += qj2[k] * sign_ecg[i - k];
                }
            } else if (j == 3){
                for (k = 0; k < 14; k++){
                    w2fb3[i - delay[3]] += qj3[k] * sign_ecg[i - k];
                }
            }
        }
     }
     for (i = 0; i <= 1250; i++){
//        gradien1[i] = w2fb1[i] - w2fb1[i - 1];
//        gradien2[i] = w2fb2[i] - w2fb2[i - 2];
//        gradien3[i] = w2fb3[i] - w2fb3[i - 3];
//         if (gradien1[i] > 0.07 && gradien2[i] > 0.04 && gradien3[i] > 0.05){
         if ((w2fb1[i] - w2fb1[i - 1]) > 0.5 && (w2fb2[i] - w2fb2[i - 2]) > 1.2 && (w2fb3[i] - w2fb3[i - 3]) > 2.0){
//         if ((w2fb1[i] - w2fb1[i - 1]) > 0.01 && (w2fb2[i] - w2fb2[i - 2]) > 0.01 && (w2fb3[i] - w2fb3[i - 3]) > 0.085){
            hasilqrs[i] = 1;
         } else {
            hasilqrs[i] = 0;
         }
     }
     n = 0;
     for (i = 0; i <= 1250; i++){
       if (i != 0 && hasilqrs[i] == 1 && hasilqrs[i-1] == 0){
              flag[n++] = i;
           }
     }
     fs = 250.0;
     t = 1.0 / (float)fs;
     for (i = 1; i <= n; i++){
         rri[i] = fabs(flag[i]*t - flag[i-1]*t);
     }
}