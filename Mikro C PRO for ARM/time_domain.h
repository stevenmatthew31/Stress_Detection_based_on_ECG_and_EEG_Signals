void time_domain_calculation(){
     int i;
     float rrd[10], rmssd_, nn50_;
     for (i = 1; i < (n-1); i++){
         rrd[i] = fabs(rri[i+1] - rri[i]);
     }
     rmssd_ = 0.0;
     for (i = 1; i < (n-1); i++){
         rmssd_ += rrd[i] * rrd[i];
     }
     value_rmssd = sqrt(rmssd_/(float)(n-2));

     nn50_ = 0.0;
     for (i = 1; i < (n-1); i++){
         if (rrd[i] > 0.05){
            nn50_ += 1;
         }
     }
     value_pnn50 = nn50_ / ((float)(n-2)) * 100;
}