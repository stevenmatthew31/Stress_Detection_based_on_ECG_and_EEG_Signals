#include "MyProject_TA_objects.h"
#include "MyProject_TA_resources.h"

//--------------------- User code ---------------------//

void InitTimer12(){
  RCC_APB1ENR.TIM12EN = 1;
  TIM12_CR1.CEN = 0;
  TIM12_PSC = 7;
  TIM12_ARR = 53999;
  NVIC_IntEnable(IVT_INT_TIM8_BRK_TIM12);
  TIM12_DIER.UIE = 1;
  TIM12_CR1.CEN = 1;
}

/*void InitTimer13(){
  RCC_APB1ENR.TIM13EN = 1;
  TIM13_CR1.CEN = 0;
  TIM13_PSC = 7;
  TIM13_ARR = 54999;
  NVIC_IntEnable(IVT_INT_TIM8_UP_TIM13);
  TIM13_DIER.UIE = 1;
  TIM13_CR1.CEN = 1;
}*/

void InitTimer14(){
  RCC_APB1ENR.TIM14EN = 1;
  TIM14_CR1.CEN = 0;
  TIM14_PSC = 14;
  TIM14_ARR = 57599;
  NVIC_IntEnable(IVT_INT_TIM8_TRG_COM_TIM14);
  TIM14_DIER.UIE = 1;
  TIM14_CR1.CEN = 1;
}

void bingkai(int X1, int Y1, int X2, int Y2, float dat)
{
    TFT_Set_Pen(CL_WHITE, 1);
    TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
    TFT_Rectangle(X1, Y1, X2, Y2);
    TFT_Set_Font(Times_New_Roman15x19_Regular, CL_BLACK, FO_HORIZONTAL);
    FloatToStr(dat, text);
    TFT_Write_Text(text, X1, Y1);
//    Delay_ms(10);
}

void bingkai_blank(){
   x_bingkai = 0;
   y_bingkai = 50;
   TFT_Set_Pen(CL_BLACK, 1);
   TFT_Set_Brush(1, 0, 0, TOP_TO_BOTTOM, CL_BLACK, CL_BLACK);
   TFT_Rectangle(x_bingkai, y_bingkai, x_bingkai + 800, y_bingkai + 350);
}

void systemInit()
{
   UART3_Init_Advanced(115200, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART3_PD89);

   mikrobus_gpioInit( _MIKROBUS1,_MIKROBUS_AN_PIN, _GPIO_INPUT );
   Delay_ms(200);
   ecg_gpioDriverInit( (T_ECG_P)&_MIKROBUS1_GPIO );Delay_ms(200);

   mikrobus_gpioInit( _MIKROBUS2,_MIKROBUS_AN_PIN, _GPIO_INPUT );
   Delay_ms(200);
   eeg_gpioDriverInit( (T_EEG_P)&_MIKROBUS2_GPIO );Delay_ms(200);

   mikrobus_gpioInit( _MIKROBUS4,_MIKROBUS_AN_PIN, _GPIO_INPUT );
   Delay_ms(200);
   eeg_gpioDriverInit( (T_EEG_P)&_MIKROBUS4_GPIO );Delay_ms(200);
}

void applicationInit()
{
   ADC1_Init(); Delay_ms(200);
   ADC_Set_Input_Channel( _ADC_CHANNEL_3 );Delay_ms(200);
   InitTimer14(); interrFlag = 0; interrCnt = 0; Delay_ms(200);
   EnableInterrupts();
   Delay_ms(200);

   ADC2_Init(); Delay_ms(200);
   ADC_Set_Input_Channel( _ADC_CHANNEL_10 );Delay_ms(200);//0?
   InitTimer12(); interrFlag1 = 0; interrCnt1 = 0; Delay_ms(200);
   EnableInterrupts();
   Delay_ms(200);

   ADC3_Init(); Delay_ms(200);
   ADC_Set_Input_Channel( _ADC_CHANNEL_13 );Delay_ms(200);//13?
   InitTimer12(); Delay_ms(200);
   EnableInterrupts();
   Delay_ms(200);
}

void applicationTaskECG() {
    int i, i_qrs, j, k, n = 0, ii = 0, stop;
    int x = 0;
    float t, ecg_value;
    ADC1_value = ADC1_Get_Sample(3);
    ecg_value = (float) ADC1_value * (3.3/(4095)) * 100;
//    sprintf(sendText, "a%e\r\n", ecg_value);
//    UART3_Write_Text(sendText);

    stop = ecg_process(ecg_ptr, ecg_value);

    i = (ecg_ptr->length - 1) % N_DISPLAY_ECG;
    i_qrs = ((ecg_ptr->length - 1) - 7) % N_DISPLAY_ECG; //Delay Scale 3
//    sprintf(sendText, "a%e\r\n", ecg_ptr->signal[i]);
//    UART3_Write_Text(sendText);
    if (i == 0) bingkai_blank();

//    TFT_Set_Pen(CL_BLACK, 1);
//    TFT_V_Line(45, 160, (i*2));
//    TFT_V_Line(45, 160, ((i*2)-1));

    TFT_Set_Pen(CL_RED, 2);
    TFT_Line((i-1)*2, 100 - 0.17*(get_rotating_index(ecg_ptr->signal, N_DISPLAY_ECG, i-1)), (i*2), 100 - 0.17*(ecg_ptr->signal[i]));

    if (i >= 7){
       TFT_Set_Pen(CL_LIME, 2);
       TFT_Line((i_qrs-1)*2, 155 - 35*(ecg_ptr->qrs_result[i-1]), (i_qrs*2), 155 - 35*(ecg_ptr->qrs_result[i]));
    }
}

void applicationTaskEEG(){
     int i, stop, stop1, i_plot, i_plot1;
     float eegfp1_value;
     float eegf3_value;

     ADC2_value = ADC2_Get_Sample(10);
     eegfp1_value = (float) ADC2_value * (3.3/(4095));
     stop = eeg_process(eeg_ptr, eegfp1_value);

     ADC3_value = ADC3_Get_Sample(13);
     eegf3_value = (float) ADC3_value * (3.3/(4095));
     stop1 = eeg_process(eeg_ptr1, eegf3_value);
     
     i = eeg_ptr->length_eeg;
     i_plot = eeg_ptr->length_eeg % N_DISPLAY_EEG;
     /*sprintf(sendText, "%d, %e\r\n", i_plot, eeg_ptr->eeg_signal[j]);
     UART3_Write_Text(sendText);*/
     if ((i_plot)  == 0) bingkai_blank();
//     TFT_Set_Pen(CL_BLACK, 1);
//     TFT_V_Line(170, 410, i_plot + 5);
//     TFT_Set_Pen(CL_WHITE, 1);
//     TFT_V_Line(170, 400, (i_plot));
//     TFT_V_Line(170, 400, ((i*2)-1))
     
     //Fp1
     if (i_plot >= 1) {
        TFT_Set_Pen(CL_FUCHSIA, 2);
        TFT_Line((i_plot - 1), 190 - 10*(eeg_ptr->eeg_signal[i-1]), i_plot , 190 - 10*(eeg_ptr->eeg_signal[i]));

        TFT_Set_Pen(CL_TEAL, 2);
        TFT_Line((i_plot - 1), 230 - 10*(eeg_ptr->lpf_eeg[i-1]), i_plot , 230 - 10*(eeg_ptr->lpf_eeg[i]));

        TFT_Set_Pen(CL_WHITE, 2);
        TFT_Line((i_plot - 1), 270 - 10*(eeg_ptr->hpf_eeg[i-1]), i_plot , 270 - 10*(eeg_ptr->hpf_eeg[i]));
     }
     //F3
     if (i_plot >= 1) {
        TFT_Set_Pen(CL_BLUE, 2);
        TFT_Line((i_plot - 1), 310 - 10*(eeg_ptr1->eeg_signal[i-1]), i_plot, 310 - 10*(eeg_ptr1->eeg_signal[i]));

        TFT_Set_Pen(CL_SILVER, 2);
        TFT_Line((i_plot - 1), 350 - 10*(eeg_ptr1->lpf_eeg[i-1]), i_plot, 350 - 10*(eeg_ptr1->lpf_eeg[i]));

        TFT_Set_Pen(CL_YELLOW, 2);
        TFT_Line((i_plot - 1), 390 - 10*(eeg_ptr1->hpf_eeg[i-1]), i_plot, 390 - 10*(eeg_ptr1->hpf_eeg[i]));
     }
//     if (j == N_EEG - 1){
//        j = 0;
//     }
//     j++;
}

void Timer13_interrupt() iv IVT_INT_TIM8_UP_TIM13 {
  TIM13_SR.UIF = 0;
  //Enter your code here
  /*Check_TP();
  if (buttonFlag1){
//     applicationTaskECG();
     applicationTaskEEG();
  }*/
}

void Timer12_interrupt() iv IVT_INT_TIM8_BRK_TIM12 {
  TIM12_SR.UIF = 0;
  //Enter your code here
  Check_TP();
  if (buttonFlag1){
     applicationTaskEEG();
  }
}

void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
  TIM14_SR.UIF = 0;
  //Enter your code here
//  Check_TP();
  if (buttonFlag1){
     applicationTaskECG();
  }
}

//----------------- End of User code ------------------//

// Event Handlers

void ButtonRound5OnClick() {
     DrawScreen(&Screen3);
     /*ecg_time_domain_calculation(ecg_ptr);
     ecg_non_linear_calculation(ecg_ptr);
     ecg_frequency_domain_calculation(ecg_ptr);

     bingkai(100, 150, 200, 170, ecg_ptr->rmssd);
     bingkai(660, 150, 200, 170, ecg_ptr->pnn50);

     bingkai(75, 340, 300, 360, ecg_ptr->sd1);
     bingkai(355, 340, 300, 360, ecg_ptr->sd2);

     bingkai(90, 240, 200, 360, (ecg_ptr->lf_power / ecg_ptr->hf_power));
     bingkai(410, 240, 200, 360, (ecg_ptr->total_power));*/
}

void ButtonRound2OnClick() {
     DrawScreen(&Screen4);
}

void ButtonRound9OnClick() {
     DrawScreen(&Screen3);

     ecg_time_domain_calculation(ecg_ptr);
     ecg_non_linear_calculation(ecg_ptr);
//     ecg_frequency_domain_calculation(ecg_ptr);
//     sprintf(sendText, "\n ECG= %f %f %f %f %f %f\r\n", ecg_ptr->rmssd, ecg_ptr->pnn50, ecg_ptr->lf_hf, ecg_ptr->total_power, ecg_ptr->sd1, ecg_ptr->sd2);
//     UART3_Write_Text(sendText);

     eeg_frequency_domain_calculation(eeg_ptr);
     eeg_mean_power_freq(eeg_ptr);
//     sprintf(sendText, "\n EEG Fp1= %f %f\r\n", eeg_ptr->lapf_eeg, eeg_ptr->mpf_eeg);
//     UART3_Write_Text(sendText);

     eeg_frequency_domain_calculation(eeg_ptr1);
     eeg_mean_power_freq(eeg_ptr1);
//     sprintf(sendText, "\n EEG F3= %f %f\r\n", eeg_ptr1->lapf_eeg, eeg_ptr1->mpf_eeg);
//     UART3_Write_Text(sendText);*/

     bingkai(110, 110, 210, 160, ecg_ptr->rmssd);
//     bingkai(110, 135, 210, 185, ecg_ptr->sdann);
//     bingkai(110, 160, 210, 210, ecg_ptr->pnn50);

     bingkai(85, 255, 185, 370, ecg_ptr->sd1);
     bingkai(85, 280, 185, 390, ecg_ptr->sd2);

//     bingkai(100, 230, 200, 280, ecg_ptr->lf_hf);
//     bingkai(130, 255, 230, 305, ecg_ptr->total_power);

     bingkai(500, 110, 600, 160, eeg_ptr->lapf_eeg);
     bingkai(475, 135, 575, 180, eeg_ptr->mpf_eeg);

     bingkai(500, 255, 600, 305, eeg_ptr1->lapf_eeg);
     bingkai(477, 280, 575, 320, eeg_ptr1->mpf_eeg);
     /*sprintf(sendText, "\n EEG= %f %f %f %f\r\n", eeg_ptr->lapf_eeg, eeg_ptr->mpf_eeg, eeg_ptr1->lapf_eeg, eeg_ptr1->mpf_eeg);
     UART3_Write_Text(sendText);*/
}
void ButtonRound6OnClick() {
     DrawScreen(&Screen4);
}

void ButtonRound7OnClick() {
     DrawScreen(&Screen1);
}

void ButtonRound8OnClick() {
     buttonFlag1 = ~buttonFlag1;
     if (!buttonFlag1) {
        ButtonRound8.Caption = "STOP";
        ButtonRound8.Color = CL_RED;
     } else {
       ecg_init(ecg_ptr, 125.0, -500.0, -500.0, 100.0);
       eeg_init(eeg_ptr, 512.0);
       eeg_init(eeg_ptr1, 512.0);
       ButtonRound8.Caption = "RUN";
       ButtonRound8.Color = CL_LIME;
     }
     DrawRoundButton(&ButtonRound8);
}

void ButtonRound1OnClick() {
     DrawScreen(&Screen5);
     // Fitur - std / mean
     in[0] = ((ecg_ptr->rmssd - 9.80751103e-02) / 0.09397568);
     in[1] = ((ecg_ptr->sd1 - 6.90862937e+01) / 66.40267096);
     in[2] = ((ecg_ptr->sd2 - 1.05525846e+02) / 61.37620729);
     in[3] = ((eeg_ptr->lapf_eeg - 8.33127000e-02) / 0.10320298);
     in[4] = ((eeg_ptr->mpf_eeg - 9.76651916e+00) / 7.5838905 );
     in[5] = ((eeg_ptr1->lapf_eeg - 9.39778560e-02) / 0.078671);
     in[6] = ((eeg_ptr1->mpf_eeg - 1.03272005e+01) / 7.60291681);
     /*in[0] = ((0.044408 - 9.80751103e-02) / 0.09397568);
     in[1] = ((13.689259  - 6.90862937e+01) / 66.40267096);
     in[2] = ((65.49114 - 1.05525846e+02) / 61.37620729);
     in[3] = ((0.444293 - 8.33127000e-02) / 0.10320298);
     in[4] = ((13.254834  - 9.76651916e+00) / 7.5838905 );
     in[5] = ((0.354868  - 9.39778560e-02) / 0.078671);
     in[6] = ((12.364225 - 1.03272005e+01) / 7.60291681);*/
     Delay_ms(500);
     intohid1();
     hid1tohid2();
     hid2tohid3();
     hid3toout();
     bingkai(85, 355, 760, 40, hid4score[0]); Delay_ms(100);
     bingkai(375, 355, 760, 40, hid4score[1]); Delay_ms(100);
     bingkai(610, 355, 760, 40, hid4score[2]); Delay_ms(100);
     TFT_Set_Pen(CL_WHITE, 1);
     TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
     TFT_Rectangle(20, 20, 760, 440);
     TFT_Set_Font(Times_New_Roman25x31_Regular, CL_BLACK, FO_HORIZONTAL);
     Delay_ms(150);
     predict();
     Delay_ms(10);
}
void ButtonRound10OnClick() {
     DrawScreen(&Screen1);
}