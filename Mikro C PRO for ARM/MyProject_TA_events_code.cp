#line 1 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/myproject_ta_objects.h"
typedef enum {_taLeft, _taCenter, _taRight} TTextAlign;
typedef enum {_tavTop, _tavMiddle, _tavBottom} TTextAlignVertical;

typedef struct Screen TScreen;

typedef struct Button_Round {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char *Caption;
 TTextAlign TextAlign;
 TTextAlignVertical TextAlignVertical;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char Corner_Radius;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TButton_Round;

typedef struct Label {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char *Caption;
 const char *FontName;
 unsigned int Font_Color;
 char VerticalText;
 char Visible;
 char Active;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TLabel;

typedef struct Image {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 const char *Picture_Name;
 char Visible;
 char Active;
 char Picture_Type;
 char Picture_Ratio;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TImage;

typedef const struct CImage {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 const char *Picture_Name;
 char Visible;
 char Active;
 char Picture_Type;
 char Picture_Ratio;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TCImage;

typedef struct Box {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TBox;

typedef struct Box_Round {
 TScreen* OwnerScreen;
 char Order;
 unsigned int Left;
 unsigned int Top;
 unsigned int Width;
 unsigned int Height;
 char Pen_Width;
 unsigned int Pen_Color;
 char Visible;
 char Active;
 char Transparent;
 char Gradient;
 char Gradient_Orientation;
 unsigned int Gradient_Start_Color;
 unsigned int Gradient_End_Color;
 unsigned int Color;
 char Corner_Radius;
 char PressColEnabled;
 unsigned int Press_Color;
 void (*OnUpPtr)();
 void (*OnDownPtr)();
 void (*OnClickPtr)();
 void (*OnPressPtr)();
} TBox_Round;

typedef struct Line {
 TScreen* OwnerScreen;
 char Order;
 unsigned int First_Point_X;
 unsigned int First_Point_Y;
 unsigned int Second_Point_X;
 unsigned int Second_Point_Y;
 char Pen_Width;
 char Visible;
 unsigned int Color;
} TLine;

struct Screen {
 unsigned int Color;
 unsigned int Width;
 unsigned int Height;
 unsigned int ObjectsCount;
 unsigned int Buttons_RoundCount;
 TButton_Round * const code *Buttons_Round;
 unsigned int LabelsCount;
 TLabel * const code *Labels;
 unsigned int ImagesCount;
 TImage * const code *Images;
 unsigned int CImagesCount;
 TCImage * const code *CImages;
 unsigned int BoxesCount;
 TBox * const code *Boxes;
 unsigned int Boxes_RoundCount;
 TBox_Round * const code *Boxes_Round;
 unsigned int LinesCount;
 TLine * const code *Lines;
 void (*OnSwipeLeftPtr)();
 void (*OnSwipeRightPtr)();
 void (*OnSwipeUpPtr)();
 void (*OnSwipeDownPtr)();
 void (*OnZoomInPtr)();
 void (*OnZoomOutPtr)();
};

extern TScreen Screen1;
extern TBox Box1;
extern TCImage Image1;
extern TImage Image2;
extern TButton_Round ButtonRound2;
extern TBox_Round BoxRound1;
extern TLabel Label2;
extern TLabel Label3;
extern TLabel Label4;
extern TLabel Label5;
extern TLabel Label6;
extern TLabel Label7;
extern TLabel Label8;
extern TLabel Label9;
extern TLabel Label10;
extern TLabel Label11;
extern TLabel Label12;
extern TLabel Label13;
extern TLabel Label14;
extern TLabel Label27;
extern TButton_Round * const code Screen1_Buttons_Round[1];
extern TLabel * const code Screen1_Labels[14];
extern TImage * const code Screen1_Images[1];
extern TCImage * const code Screen1_CImages[1];
extern TBox * const code Screen1_Boxes[1];
extern TBox_Round * const code Screen1_Boxes_Round[1];

extern TScreen Screen3;
extern TBox Box5;
extern TLabel Label16;
extern TButton_Round ButtonRound6;
extern TBox_Round BoxRound2;
extern TLabel Label20;
extern TLabel Label21;
extern TLabel Label24;
extern TLabel Label25;
extern TLabel Label26;
extern TButton_Round ButtonRound1;
extern TBox_Round BoxRound4;
extern TLabel Label1;
extern TLabel Label15;
extern TLabel Label32;
extern TLabel Label35;
extern TLabel Label36;
extern TLabel Label37;
extern TButton_Round * const code Screen3_Buttons_Round[2];
extern TLabel * const code Screen3_Labels[12];
extern TBox * const code Screen3_Boxes[1];
extern TBox_Round * const code Screen3_Boxes_Round[2];

extern TScreen Screen4;
extern TBox Box7;
extern TLabel Label17;
extern TButton_Round ButtonRound7;
extern TButton_Round ButtonRound8;
extern TButton_Round ButtonRound9;
extern TBox Box9;
extern TLabel Label19;
extern TLabel Label38;
extern TButton_Round * const code Screen4_Buttons_Round[3];
extern TLabel * const code Screen4_Labels[3];
extern TBox * const code Screen4_Boxes[2];

extern TScreen Screen5;
extern TBox Box8;
extern TLabel Label18;
extern TButton_Round ButtonRound10;
extern TBox_Round BoxRound3;
extern TLabel Label31;
extern TLabel Label33;
extern TLabel Label34;
extern TLine Line2;
extern TButton_Round * const code Screen5_Buttons_Round[1];
extern TLabel * const code Screen5_Labels[4];
extern TBox * const code Screen5_Boxes[1];
extern TBox_Round * const code Screen5_Boxes_Round[1];
extern TLine * const code Screen5_Lines[1];




void ButtonRound10OnClick();
void ButtonRound1OnClick();
void ButtonRound2OnClick();
void ButtonRound6OnClick();
void ButtonRound7OnClick();
void ButtonRound8OnClick();
void ButtonRound9OnClick();




extern char Box1_Caption[];
extern const char Image1_Caption[];
extern char Image2_Caption[];
extern char ButtonRound2_Caption[];
extern char BoxRound1_Caption[];
extern char Label2_Caption[];
extern char Label3_Caption[];
extern char Label4_Caption[];
extern char Label5_Caption[];
extern char Label6_Caption[];
extern char Label7_Caption[];
extern char Label8_Caption[];
extern char Label9_Caption[];
extern char Label10_Caption[];
extern char Label11_Caption[];
extern char Label12_Caption[];
extern char Label13_Caption[];
extern char Label14_Caption[];
extern char Label27_Caption[];
extern char Box5_Caption[];
extern char Label16_Caption[];
extern char ButtonRound6_Caption[];
extern char BoxRound2_Caption[];
extern char Label20_Caption[];
extern char Label21_Caption[];
extern char Label24_Caption[];
extern char Label25_Caption[];
extern char Label26_Caption[];
extern char ButtonRound1_Caption[];
extern char BoxRound4_Caption[];
extern char Label1_Caption[];
extern char Label15_Caption[];
extern char Label32_Caption[];
extern char Label35_Caption[];
extern char Label36_Caption[];
extern char Label37_Caption[];
extern char Box7_Caption[];
extern char Label17_Caption[];
extern char ButtonRound7_Caption[];
extern char ButtonRound8_Caption[];
extern char ButtonRound9_Caption[];
extern char Box9_Caption[];
extern char Label19_Caption[];
extern char Label38_Caption[];
extern char Box8_Caption[];
extern char Label18_Caption[];
extern char ButtonRound10_Caption[];
extern char BoxRound3_Caption[];
extern char Label31_Caption[];
extern char Label33_Caption[];
extern char Label34_Caption[];
extern char Line2_Caption[];


void DrawScreen(TScreen *aScreen);
void DrawRoundButton(TButton_Round *Around_button);
void DrawLabel(TLabel *ALabel);
void DrawImage(TImage *AImage);
void DrawCImage(TCImage *ACimage);
void DrawBox(TBox *ABox);
void DrawRoundBox(TBox_Round *Around_box);
void DrawLine(TLine *Aline);
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/myproject_ta_resources.h"
const code char Tahoma26x33_Regular[];
const code char Times_New_Roman15x19_Regular[];
const code char Times_New_Roman15x19_Italic[];
const code char Times_New_Roman18x21_Regular[];
const code char Times_New_Roman17x21_Italic[];
const code char Times_New_Roman19x23_Regular[];
const code char Times_New_Roman19x23_Italic[];
const code char Times_New_Roman25x31_Regular[];
const code char Times_New_Roman25x31_Italic[];
const code char Lambang_ITS_jpg[8514];
const code char logobmeits_jpg[22063];
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/adc_objects.h"
#line 16 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/adc_objects.h"
extern TScreen Screen1;










void DrawScreen(TScreen *aScreen);
void Check_TP();
void Start_TP();
void Process_TP_Press(unsigned int X, unsigned int Y);
void Process_TP_Up(unsigned int X, unsigned int Y);
void Process_TP_Down(unsigned int X, unsigned int Y);
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_ecg_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_ecg_config.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_ecg_types.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_eeg_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_eeg_config.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_eeg_types.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_usb_uart_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_usb_uart_config.h"
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_usb_uart_types.h"
#line 3 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/click_usb_uart_config.h"
const uint32_t _USB_UART_UART_CFG[ 4 ] =
{
 9600,
 _UART_8_BIT_DATA,
 _UART_NOPARITY,
 _UART_ONE_STOPBIT
};
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/variabel.h"
bit buttonFlag, buttonFlag1;
uint32_t interrCnt, interrCnt1, interrCnt2;
uint8_t interrFlag, interrFlag1, interrFlag2;
int x_bingkai, y_bingkai;
char text[25], sendText[50];
float ADC1_value, ADC2_value, ADC3_value;
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"










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
#line 34 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
const float qj1[2] = {-2.0, 2.0};
const float qj2[6] = {-0.25, -0.75, -0.5, 0.5, 0.75, 0.25};
const float qj3[14] = {-0.03125, -0.09375, -0.1875, -0.3125, -0.34375, -0.28125, -0.125, 0.125, 0.28125, 0.34375, 0.3125, 0.1875, 0.09375, 0.03125};

int second_to_milisecond = 1000;
float phi_t = 3.14159265358979323846;



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
#line 248 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
typedef struct ECG_Instance {

 float signal[ 400 ];
 int length;
 int current_index;
 float fs;


 float w2fb1[ 400 ];
 float w2fb2[ 400 ];
 float w2fb3[ 400 ];
 int qrs_result[ 400 ];


 float rr_index[ 2000 ];
 float rr[ 2000 ];
 float bpm[ 2000 ];
 int rr_length;
 int bpm_length;
 int rr_index_length;
 float sum_data;


 float rmssd;





 float sd1;
 float sd2;
#line 288 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
 float threshold1;
 float threshold2;
 float threshold3;
} ECG_Instance_t;

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
 int i = ecg->current_index %  400 ;

 ecg->sum_data += ecg->signal[i];

 ecg->signal[i] = ecg->signal[i] - (ecg->sum_data / ecg->length);
}

void ecg_dwt_decomposition(ECG_Instance_t* ecg) {
 int i = ecg->current_index %  400 ;
 int last_qrs_result;
 float gradient1, gradient2, gradient3, t;
 ecg->w2fb1[i] = qj1[0] * get_index(ecg->signal, i) + qj1[1] * get_index(ecg->signal, i - 1);
 ecg->w2fb2[i] = qj2[0] * get_index(ecg->signal, i) + qj2[1] * get_index(ecg->signal, i - 1) + qj2[2] * get_index(ecg->signal, i - 2) + qj2[3] * get_index(ecg->signal, i - 3) + qj2[4] * get_index(ecg->signal, i - 4) + qj2[5] * get_index(ecg->signal, i - 5);
 ecg->w2fb3[i] = qj3[0] * get_index(ecg->signal, i) + qj3[1] * get_index(ecg->signal, i - 1) + qj3[2] * get_index(ecg->signal, i - 2) + qj3[3] * get_index(ecg->signal, i - 3) + qj3[4] * get_index(ecg->signal, i - 4) + qj3[5] * get_index(ecg->signal, i - 5) + qj3[6] * get_index(ecg->signal, i - 6) + qj3[7] * get_index(ecg->signal, i - 7) + qj3[8] * get_index(ecg->signal, i - 8) + qj3[9] * get_index(ecg->signal, i - 9) + qj3[10] * get_index(ecg->signal, i - 10) + qj3[11] * get_index(ecg->signal, i - 11) + qj3[12] * get_index(ecg->signal, i - 12) + qj3[13] * get_index(ecg->signal, i - 13);

 gradient1 = ecg->w2fb1[i] - get_rotating_index(ecg->w2fb1,  400 , i - 1);
 gradient2 = ecg->w2fb2[i] - get_rotating_index(ecg->w2fb2,  400 , i - 2);
 gradient3 = ecg->w2fb3[i] - get_rotating_index(ecg->w2fb3,  400 , i - 3);

 if (gradient1 > ecg->threshold1 && gradient2 > ecg->threshold2 && gradient3 > ecg->threshold3) {
 ecg->qrs_result[i] = 1;
 } else {
 ecg->qrs_result[i] = 0;
 }

 last_qrs_result = get_rotating_index_int(ecg->qrs_result,  400 , i - 1);
 if (last_qrs_result == 0 && ecg->qrs_result[i] == 1) {
 ecg->rr_index[ecg->rr_index_length] = ecg->current_index - 1;

 if (ecg->rr_index_length >= 2) {
 t = 1.0 / ecg->fs;
 ecg->rr[ecg->rr_length] = fabs(((ecg->rr_index[ecg->rr_index_length]) * t) - ((ecg->rr_index[ecg->rr_index_length - 1]) * t));

 ecg->bpm[ecg->bpm_length] = (float) 60.0 / ecg->rr[ecg->rr_length];
 bingkai_black(680, 17, 800, 45, ecg->bpm[ecg->bpm_length]);
#line 356 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
 ecg->rr_length++;
 ecg->bpm_length++;
 }
 ecg->rr_index_length++;
 }
}

void ecg_time_domain_calculation(ECG_Instance_t *ecg) {
 float rrd[ 2000  - 1];
 int i, segment_duration = 300000, limit = 2, current_index = 0;
 float _rmssd = 0.0;
 float max_duration = 0.0;
 float segment_mean[2];

 for (i = 0; i < ecg->rr_length - 1; i++) {
 rrd[i] = fabs(ecg->rr[i+1] - ecg->rr[i]);
 }


 for(i = 0; i < ecg->rr_length - 1; i++) {
 _rmssd += rrd[i] * rrd[i];
 }
 ecg->rmssd = sqrt(_rmssd / (float)(ecg->rr_length - 1));
#line 425 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
}

void ecg_non_linear_calculation(ECG_Instance_t *ecg) {
 float x1[ 2000  - 1];
 float x2[ 2000  - 1];
 float sd1_array[ 2000  - 1];
 float sd2_array[ 2000  - 1];
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
#line 549 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
int ecg_process(ECG_Instance_t* ecg, float ecg_value) {
 ecg->signal[ecg->length %  400 ] = ecg_value;
 ecg->current_index = ecg->length;
 ecg->length++;
#line 558 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib.h"
 ecg_dwt_decomposition(ecg);




 return 0;
}
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib_eeg.h"



typedef struct complex_2{
 float real_2;
 float imag_2;
} complex_t_2;

complex_t_2 fft_temp_2[ 4096 ];
complex_t_2 fft_input_2[ 4096 ];
complex_t_2 fft_input_conjugated_2[ 4096 ];

typedef struct EEG_Instance {

 float eeg_signal[ 4000 ];
 int length_eeg;
 int current_index_eeg;
 float fs_eeg;


 float lpf_eeg[ 4000 ];
 float hpf_eeg[ 4000 ];
 float sum_data_eeg;


 float delta_power;
 float teta_power;
 float alpha_power;
 float beta_power;
 float gamma_power;
 float total_power;


 float mpf_eeg;
 float lapf_eeg;
} EEG_Instance_t;

float power2[ 2048 ], freq_eeg[ 2048 ];

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
 int i = eeg->current_index_eeg &  800 ;

 eeg->sum_data_eeg += eeg->eeg_signal[i];

 eeg->eeg_signal[i] = eeg->eeg_signal[i] - (eeg->sum_data_eeg / eeg->length_eeg);
}

void eeg_filter(EEG_Instance_t* eeg){
 int i = eeg->current_index_eeg;

 if (i == 0){
 eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal,  800 , i)));
 } else if (i == 1){
 eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal,  800 , i))+0.0701698*(get_rotating_index(eeg->eeg_signal,  800 , i-1))+(1.404706*(get_rotating_index(eeg->lpf_eeg,  800 , i-1))));
 } else{
 eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal,  800 , i))+0.0701698*(get_rotating_index(eeg->eeg_signal,  800 , i-1))+0.0350849*(get_rotating_index(eeg->eeg_signal,  800 , i-2))+(1.404706*(get_rotating_index(eeg->lpf_eeg,  800 , i-1))) - 0.54504561*(get_rotating_index(eeg->lpf_eeg,  800 , i-2)));
 }

 if (i == 0){
 eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg,  800 , i)));
 } else if (i == 1){
 eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg,  800 , i))-(1.98272007*(get_rotating_index(eeg->lpf_eeg,  800 , i-1)))+1.98264542*(get_rotating_index(eeg->hpf_eeg,  800 , i-1)));
 } else{
 eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg,  800 , i))-(1.98272007*(get_rotating_index(eeg->lpf_eeg,  800 , i-1)))+0.99136003*(get_rotating_index(eeg->lpf_eeg,  800 , i-2))+(1.98264542*(get_rotating_index(eeg->hpf_eeg,  800 , i-1))) - 0.98279472*(get_rotating_index(eeg->hpf_eeg,  800 , i-2)));
 }
}
#line 117 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib_eeg.h"
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
 v[ m ].real_2 = ve[m].real_2 + z.real_2;
 v[ m ].imag_2 = ve[m].imag_2 + z.imag_2;
 v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
 v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
 }
 }
}

void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
 int i;
 float input_mean = 0.0, enbw = 0.0, scale = 0.0;
 float hanning_window[ 3000  + 1];

 for(i = 0; i < n; i++) {
 hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
 enbw += hanning_window[i] * hanning_window[i];
 }
 scale = 1.0 / (fs * enbw);
 for(i = 0; i <  4096 ; i++) {
 fft_input_2[i].real_2 = 0.0;
 fft_input_2[i].imag_2 = 0.0;
 }

 for(i = 0; i < n; i++) {
 fft_input_2[i].real_2 = input[i];
 }



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

 for(i = 0; i <  2048 ; i++) {
 psd[i] = fft_input_2[i].real_2;
 }
}

void eeg_frequency_domain_calculation(EEG_Instance_t* eeg){
 int i = 0;
 int n_fft = 1<<12;
 float fs_fft = 512.0;
 float val_fft, df;
 int delta_count = 0, teta_count = 0, alpha_count = 0, beta_count = 0, gamma_count = 0;
 int delta_index[500];
 int teta_index[500];
 int alpha_index[500];
 int beta_index[500];
 int gamma_index[500];
#line 212 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/lib_eeg.h"
 val_fft = 0.12207;
 psd_fft(eeg->length_eeg, n_fft, eeg->hpf_eeg, power2, fs_fft);

 for(i = 0; i <  2048 ; i++) {
 freq_eeg[i] = i * val_fft;
 }








 for(i = 0; i <  2048  / 5; i++) {
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

 if (eeg->length_eeg == ( 4000  - 1)) {
 eeg->length_eeg = 0;
 }
 eeg_baseline_restore(eeg);
 eeg_filter(eeg);
 return 0;
}

void eeg_mean_power_freq(EEG_Instance_t* eeg){
 float num = 0.0, denum = 0.0;
 int k;
 for (k = 0; k <  2048 ; k++){
 num += freq_eeg[k] * power2[k];
 denum += power2[k];
 }
 eeg->mpf_eeg = (float) num / (float) denum;
}
#line 1 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/ann.h"
const float weight1[7][32]={
 {-0.23790963, 0.02170768, 0.0533003 , 0.24184448, 0.04292727,
 -0.19861695, -0.27464223, -0.00795862, -0.25587952, -0.4284566 ,
 0.01088732, 0.45762697, -0.044067 , 0.45316568, 0.09828611,
 0.4559585 , -0.41140398, -0.27887323, -0.03225429, 0.05145472,
 -0.03928654, 0.33381528, 0.04381359, -0.05761265, -0.21658735,
 0.12888047, 0.39406693, -0.6256119 , 0.10212529, 0.03701941,
 -0.2329264 , -0.48959455},
 {-0.0158254 , 0.03917899, 0.03407916, 0.12067863, 0.6309478 ,
 -0.40255925, -0.16412726, -0.3669184 , 0.21629757, -0.07485875,
 -0.00595873, 0.5459728 , -0.10823102, 0.47535226, 0.04555859,
 -0.07854112, -0.57069993, 0.23309927, -0.37056333, 0.13615084,
 -0.4116858 , -0.19142188, 0.10069106, -0.3135461 , 0.39446643,
 0.31385246, 0.2246013 , -0.60715985, -0.23492622, -0.21970414,
 0.20488168, -0.00407993},
 {-0.12851721, 0.28456694, 0.2739974 , 0.6712245 , -0.06762845,
 0.3808352 , 0.12469492, 0.1633019 , -0.26998967, 0.3861539 ,
 0.42709133, -0.07952793, -0.10764799, -0.30964777, -0.43988794,
 0.27960008, 0.54006636, -0.2640844 , -0.19185627, 0.32703766,
 -0.08491004, 0.18786353, -0.38881508, -0.2917037 , -0.6389948 ,
 0.06219346, 0.3178022 , 0.49087447, 0.7290517 , 0.55033696,
 0.11584205, 0.42950806},
 { 0.00353833, 0.26973936, -0.03105252, 0.12563281, -0.31330657,
 -0.551586 , -0.657257 , 0.16763823, -0.4878867 , 0.8196831 ,
 0.5704512 , -0.48189732, -0.5821644 , -0.00209186, 0.0738654 ,
 -0.42196107, -0.00560739, -0.15351188, 0.44666857, 0.6102695 ,
 0.23230544, -0.72040594, -0.46560907, 0.11873717, 0.19151781,
 -0.41223273, 0.02302211, 0.23156199, 0.39077944, 0.64078647,
 0.20505299, 0.2142584 },
 {-0.60937834, -0.8641323 , 0.7705556 , -0.07568729, -0.24854662,
 -0.38993743, 0.27111238, 0.78734154, -0.35206646, 0.29060265,
 0.31020316, -0.04664384, 0.33634606, 0.6702228 , -0.0701596 ,
 0.37073597, -0.3389268 , -0.0711145 , -0.29574957, 0.12821107,
 0.5439307 , 0.086707 , 0.36628562, 0.12285463, -0.19650184,
 -0.0569788 , -0.17028779, 0.46000123, 0.5354021 , 0.2898154 ,
 0.42602855, -0.4005008 },
 {-0.33966294, -0.29536963, -0.5740848 , -0.01971807, -0.59943753,
 -0.12678085, 0.12945212, 0.42187783, -0.08461078, -0.7581296 ,
 -0.08563714, 0.16733064, -0.36125 , -0.09667381, 0.43350565,
 -0.04657732, -0.37197605, 0.42025396, -0.28850582, 0.4167412 ,
 0.69564503, -0.35823196, 0.45229667, 0.22780201, -0.5587861 ,
 -0.6631231 , -0.5157593 , -0.41676903, 0.6022444 , -0.06565243,
 -0.24495372, -0.7558031 },
 { 0.5020768 , -0.3791926 , 0.01178692, 0.54677707, -0.0498873 ,
 0.03936388, 0.44028953, -0.00532874, 0.8225247 , -0.02687253,
 -0.1688047 , -0.06496818, 0.343334 , -0.08110065, -0.16704732,
 -0.8267399 , 0.6327453 , 0.0083858 , -0.921198 , 0.76629215,
 0.40599257, 0.45152402, -0.28943202, 0.36581326, -0.20261303,
 -0.14386626, -0.48272786, -0.11086925, -0.03603005, -0.68740445,
 0.4275311 , -0.36836275}};

const float weight2[32][16]={
 {-1.76061586e-01, 4.21942681e-01, -1.18092904e-02,
 1.00262702e-01, -2.91629821e-01, 3.65811944e-01,
 -8.62896442e-02, -2.23773438e-02, -3.65210503e-01,
 -1.61420211e-01, 4.54841524e-01, 4.57792997e-01,
 -2.23466814e-01, -2.10254997e-01, -6.32984102e-01,
 7.06934184e-02},
 { 2.62833536e-01, 6.38132274e-01, 3.83555323e-01,
 -4.22065198e-01, 2.43794203e-01, -2.66081363e-01,
 -3.75939906e-01, 6.41414449e-02, -4.72640038e-01,
 -3.63041520e-01, 5.35701692e-01, 2.05038607e-01,
 8.39160621e-01, -7.59226561e-01, 1.83041632e-01,
 1.15756042e-01},
 {-4.76763219e-01, 6.18433833e-01, -5.94597340e-01,
 -5.84233284e-01, 6.71204746e-01, -6.75430775e-01,
 -4.98548411e-02, -5.29354155e-01, -4.63983595e-01,
 1.69302955e-01, 9.74968135e-01, 1.04431176e+00,
 -1.05578326e-01, -1.87639341e-01, 3.58663708e-01,
 -4.32648361e-01},
 {-5.91481447e-01, 2.22136397e-02, -3.62912238e-01,
 -1.89969689e-01, 1.03377335e-01, -2.05293819e-01,
 3.96046102e-01, -2.37056613e-01, 2.38153771e-01,
 5.80128372e-01, -3.06316078e-01, -8.72438997e-02,
 1.47270948e-01, -3.09391290e-01, 3.28817755e-01,
 5.25405884e-01},
 { 4.50407505e-01, 2.14415252e-01, 1.44440010e-01,
 4.00153875e-01, 2.08040640e-01, -4.76001471e-01,
 2.71741208e-02, 4.87933099e-01, 3.23086351e-01,
 3.35124373e-01, 3.66289586e-01, 3.40634614e-01,
 -3.00719172e-01, -1.98048964e-01, -3.75066668e-01,
 1.08707704e-01},
 { 1.71463102e-01, 5.54837346e-01, -7.65826106e-02,
 -5.33172727e-01, -8.21443737e-01, -2.88796604e-01,
 7.59200901e-02, -5.89506686e-01, 3.29110354e-01,
 9.22455862e-02, 7.02938624e-03, 1.92319620e-02,
 1.62672326e-01, 1.70189098e-01, -1.48928508e-01,
 4.45530564e-02},
 {-4.16274667e-01, 2.51287699e-01, -1.94875933e-02,
 2.83209961e-02, 2.81116784e-01, -1.72488973e-01,
 1.60401791e-01, 5.12193263e-01, 3.45112085e-01,
 4.71026629e-01, -2.13528156e-01, 3.83300006e-01,
 2.02332944e-01, 1.41312569e-01, -2.12355644e-01,
 1.61123544e-01},
 { 3.28566819e-01, -3.69805425e-01, -2.38114223e-01,
 5.37526727e-01, 4.55663679e-03, -1.58249721e-01,
 3.44889849e-01, 3.12311023e-01, -1.68211520e-01,
 3.24432343e-01, 1.93911090e-01, 7.21721128e-02,
 -5.63342631e-01, 4.82668608e-01, -1.80939510e-01,
 5.61900020e-01},
 {-4.75529850e-01, 4.77156602e-02, 1.70034438e-01,
 5.35699427e-01, 1.90426752e-01, -1.86211258e-01,
 -3.45942378e-01, 1.20695017e-01, -1.11972935e-01,
 6.11858070e-01, 3.11828554e-01, 6.92839801e-01,
 1.91497520e-01, -5.79047669e-03, 2.18077347e-01,
 2.04227984e-01},
 {-9.05226469e-02, 9.32950005e-02, -5.55649400e-02,
 -2.66844332e-01, -3.30882728e-01, 9.88233328e-01,
 4.16196793e-01, -3.71161163e-01, -1.60165381e+00,
 -2.57519424e-01, 9.54865962e-02, -4.69706714e-01,
 -3.17087382e-01, -9.22688723e-01, 6.60341024e-01,
 7.07413316e-01},
 {-6.36108741e-02, 1.40915141e-01, -2.77890593e-01,
 3.40535998e-01, 2.62939572e-01, 2.93102503e-01,
 7.16918632e-02, 2.65085697e-01, 4.01638597e-01,
 3.21324527e-01, 3.57342184e-01, 2.08756551e-02,
 6.13092259e-02, -3.68219435e-01, 1.34624630e-01,
 2.99790092e-02},
 {-1.04069516e-01, 1.97929218e-01, 4.25149113e-01,
 3.79099041e-01, -3.80222738e-01, -2.12450132e-01,
 4.76169109e-01, 2.17091553e-02, -1.57369807e-01,
 -2.94411004e-01, 4.55880791e-01, 2.72841126e-01,
 5.77088594e-01, -1.29714906e-01, 1.17758885e-01,
 1.94085285e-01},
 {-6.18206739e-01, -2.70023853e-01, -9.02326405e-01,
 3.26086551e-01, 4.10146028e-01, -3.42268825e-01,
 -2.70338804e-01, -4.87596579e-02, 3.40757906e-01,
 2.13685527e-01, -1.01092272e-01, 2.88060814e-01,
 -3.41838479e-01, 4.63840812e-01, -8.16462278e-01,
 -8.50246549e-02},
 { 1.56586930e-01, 8.00346076e-01, 6.65117204e-02,
 -4.84228700e-01, -4.77268733e-02, -1.36973873e-01,
 2.79326022e-01, -2.97226876e-01, -6.91639304e-01,
 -7.84963891e-02, 5.54457307e-01, 5.11380792e-01,
 6.00584269e-01, 1.39375150e-01, -3.03044677e-01,
 1.87314523e-03},
 {-5.60385771e-02, -2.26914391e-01, 6.90873504e-01,
 6.33213222e-02, -4.42161560e-02, 1.30650714e-01,
 1.23137079e-01, -7.08282232e-01, 1.04429752e-01,
 -1.56849831e-01, -3.78207713e-01, -1.41284168e-01,
 -2.81285435e-01, -3.08498591e-01, -3.23520690e-01,
 3.07514127e-02},
 { 2.29138970e-01, -2.69894838e-01, -1.26680672e-01,
 -8.26538727e-03, 1.96694173e-02, -7.08893776e-01,
 -1.03727117e-01, 1.27989739e-01, 6.89441919e-01,
 -3.38373072e-02, 2.35010028e-01, 9.00643885e-01,
 -2.00444981e-01, 6.22289240e-01, 4.95889723e-01,
 -5.46902299e-01},
 {-5.38523793e-01, 6.37386143e-01, -4.43100721e-01,
 -2.54553854e-01, 2.86001354e-01, 2.90402591e-01,
 -4.32977527e-01, -3.85853946e-01, -6.78690851e-01,
 4.34285104e-01, 2.84608871e-01, 4.35977906e-01,
 6.91107333e-01, 1.08071901e-02, 6.48930848e-01,
 1.15594983e-01},
 { 2.55996674e-01, 7.28967488e-02, 1.57645524e-01,
 7.06347004e-02, 3.41507792e-01, -3.23785961e-01,
 -3.00571680e-01, -3.93745422e-01, -9.84348953e-02,
 3.09035897e-01, -6.24330118e-02, 1.31571591e-01,
 -2.37457946e-01, -6.27875328e-02, -2.07161739e-01,
 4.42110837e-01},
 {-5.24853095e-02, 2.81859547e-01, 2.67271459e-01,
 -3.50354940e-01, -6.29827023e-01, 3.81486058e-01,
 -9.85102594e-01, -1.43491253e-01, 1.42108008e-01,
 -2.53455013e-01, -2.99519263e-02, 5.94645739e-02,
 4.77824032e-01, 3.96318585e-01, 2.62564898e-01,
 5.04453368e-02},
 { 4.27015126e-02, 1.01957962e-01, 4.22787845e-01,
 2.43673220e-01, 2.76155472e-01, -2.58056521e-01,
 4.70359981e-01, 2.70877570e-01, 2.72493660e-01,
 -1.14467815e-01, -5.53536534e-01, -4.07772273e-01,
 1.74151450e-01, 1.20138317e-01, 4.96573374e-02,
 5.55893421e-01},
 { 4.82393764e-02, 2.78094083e-01, 3.31074484e-02,
 4.14846927e-01, -8.16821828e-02, 1.60990149e-01,
 2.48380065e-01, 3.20426166e-01, 1.48734242e-01,
 -3.16694863e-02, -5.29747486e-01, 1.80988699e-01,
 1.48030013e-01, -7.60121763e-01, 1.48088247e-01,
 -7.52810910e-02},
 { 1.29172936e-01, -2.17392132e-01, 5.20506620e-01,
 1.78967621e-02, -3.95855635e-01, -4.28818882e-01,
 7.20305800e-01, 3.42095464e-01, 1.73879527e-02,
 3.72168958e-01, 3.14914942e-01, -3.86202246e-01,
 3.04239005e-01, 8.14181447e-01, -5.24198890e-01,
 4.38535303e-01},
 { 3.93260896e-01, -5.53653061e-01, 2.80298352e-01,
 6.01305568e-04, 4.88631725e-02, -6.00861788e-01,
 3.73991020e-02, -2.24244118e-01, 8.59720483e-02,
 2.49881968e-01, -4.84930128e-01, -3.55992943e-01,
 -6.82642683e-02, 3.80593210e-01, -3.51125419e-01,
 1.95520058e-01},
 { 3.30167651e-01, -2.18015343e-01, -5.62202185e-02,
 -2.84126401e-03, 5.19856513e-01, 2.66406715e-01,
 9.44488645e-02, 3.11468035e-01, 4.11947854e-02,
 2.22421184e-01, -4.12809253e-01, 3.21274936e-01,
 -3.50108594e-01, -3.28716874e-01, 3.93327683e-01,
 2.07339134e-02},
 { 5.16144753e-01, -4.12187994e-01, 1.36025295e-01,
 4.20370787e-01, -1.29593587e+00, 5.01861453e-01,
 -6.39754683e-02, 2.15755180e-01, 3.58963907e-02,
 -8.31991211e-02, 2.33910039e-01, -3.32314432e-01,
 -3.21504653e-01, 3.39930207e-01, -1.28098771e-01,
 3.59179825e-01},
 { 3.48488420e-01, -4.96674776e-01, -3.57604250e-02,
 6.62486553e-01, 2.78396100e-01, 8.89857635e-02,
 -5.63948266e-02, 6.79152727e-01, 1.55921802e-01,
 -1.87140226e-01, 3.07939410e-01, 4.66467172e-01,
 1.73647791e-01, -1.41359717e-01, -1.94275439e-01,
 2.41084859e-01},
 { 3.62149298e-01, -8.99382383e-02, -1.76520392e-01,
 4.47951019e-01, 4.70700189e-02, 1.98371530e-01,
 -4.54689078e-02, 3.54597241e-01, 7.69208670e-02,
 1.73341393e-01, 8.48018110e-01, 2.78221786e-01,
 1.92629576e-01, -3.90784651e-01, 2.09130108e-01,
 5.37281595e-02},
 {-1.42965212e-01, 4.00301516e-01, -8.82308066e-01,
 -7.44596303e-01, -5.48452497e-01, 2.10168540e-01,
 4.79036808e-01, -6.98160827e-01, -2.74282694e-01,
 -2.15765744e-01, -6.73575699e-02, -6.35097921e-02,
 6.52277648e-01, -6.31300509e-02, 2.04321414e-01,
 -3.78197432e-01},
 {-1.00539558e-01, -2.30644599e-01, -1.98153287e-01,
 5.73098183e-01, -4.31356579e-01, -1.37632698e-01,
 1.08800214e-02, 3.98747981e-01, -4.12005544e-01,
 1.80557504e-01, 1.13415018e-01, -3.79615933e-01,
 -1.98035032e-01, -2.18256682e-01, -3.86995338e-02,
 4.40648466e-01},
 {-1.47238123e+00, 2.55242246e-03, 2.79697180e-01,
 9.84423757e-02, 4.36410427e-01, 3.99813652e-01,
 -7.14515150e-01, 6.15562918e-03, -3.35565031e-01,
 7.73113310e-01, -5.79087883e-02, 8.52984071e-01,
 7.86994323e-02, -5.76584876e-01, 8.03437471e-01,
 1.04531956e+00},
 { 5.15146494e-01, -3.62874456e-02, -1.24017680e+00,
 -3.19932580e-01, -1.14762329e-01, -3.78405780e-01,
 3.00733000e-01, -1.87184483e-01, 6.17637224e-02,
 -1.56170838e-02, 2.51050852e-02, -2.60751784e-01,
 -6.20862395e-02, 6.97354794e-01, -1.85946405e-01,
 3.05738430e-02},
 {-3.48114133e-01, 7.11936593e-01, -9.60684493e-02,
 -4.97666821e-02, 4.26098615e-01, -2.75007952e-02,
 -7.17563093e-01, 2.45585918e-01, 2.37079293e-01,
 -2.68360734e-01, 5.97941160e-01, -4.99819852e-02,
 6.75870597e-01, -2.07742989e-01, -4.44846034e-01,
 -1.60236329e-01}};

const float weight3[16][8]={
 { 0.29830998, 0.396558 , 0.12114587, -0.8790612 , 0.9546976 ,
 -0.42027104, 0.19646266, 0.2970834 },
 {-0.07156456, -0.47414517, -0.568789 , -0.6317074 , 0.08943 ,
 0.5531896 , 1.0112153 , -0.359747 },
 { 0.3503294 , 0.81306213, -0.6168016 , -0.63121176, 1.727683 ,
 1.1637826 , -0.8124444 , 1.5148671 },
 {-0.47220325, -0.31193173, 0.4390093 , 0.3758378 , -0.5424761 ,
 -0.12225284, -0.73584354, 0.8631935 },
 {-0.22401822, -0.38925686, -0.29139593, 0.8209797 , -0.20456947,
 -0.83910966, 0.63065106, -0.83034897},
 {-0.01844358, 0.6045006 , 0.862149 , 1.9214362 , 0.51577 ,
 0.57234055, -0.7928449 , 0.70466584},
 {-0.18118 , 0.23445007, 0.2767573 , -0.6134973 , 0.7067509 ,
 0.67442524, -0.16376641, 0.866786 },
 { 0.34681094, 0.26827526, 0.37873128, 0.20008965, -0.46559763,
 -0.68777364, -0.31510866, 0.9624238 },
 {-0.05432878, 0.56879205, 0.6271343 , 0.4036514 , -0.7543927 ,
 -1.3596076 , 0.1108437 , -0.00224264},
 {-0.39038372, 0.44369966, 0.32888523, 0.46587 , 0.05643772,
 -0.28243527, 0.41891828, -0.3572459 },
 {-0.4665835 , -0.9723815 , -0.67695713, 0.04249585, -0.89112115,
 -0.19144297, 0.6157751 , 0.24490187},
 {-0.35790294, -0.2135433 , -0.15252586, 0.52157426, 0.14240152,
 -0.6302216 , 0.8929606 , -0.4496231 },
 { 0.26717106, -0.24191277, -0.0270758 , -0.7518266 , -0.39904165,
 0.45004836, 0.5994742 , -0.12429187},
 {-0.31950182, 1.2289891 , 0.56504285, 0.09154036, 0.70777524,
 -0.41831598, -1.2030221 , 0.34697172},
 {-0.335064 , 0.62206465, 0.43090478, 1.3278329 , 0.21971963,
 -1.2813118 , 0.33416867, -1.1006804 },
 {-0.39383477, 0.32596225, 0.2507714 , 0.53370386, -0.02133101,
 0.53149676, -0.24650232, 0.3904241 }};

const float weight4[8][3]={
 {-0.01921552, -0.6208105 , 0.30990267},
 {-0.7226595 , 0.01707822, 0.35220796},
 {-1.2553052 , -0.11314207, 1.0296943 },
 { 0.7665286 , -2.3989775 , 1.256245 },
 {-1.8364974 , 1.1259053 , 0.7174465 },
 {-1.4326314 , 1.7447666 , -1.4002322 },
 { 1.0623515 , 0.4148053 , -0.9165225 },
 {-0.93776053, 0.5714645 , -0.21474575}};




const float bias1[32]= {
 0.07921237, -0.14380746, -0.31297177, 0.08116171, 0.15213044,
 0.02894102, 0.02045837, -0.0324859 , 0.09582049, -0.0554678 ,
 -0.00924372, -0.35281375, 0.19666149, -0.14589524, 0.06815213,
 -0.0095088 , 0.0250559 , 0.10775404, 0.00481662, 0.36649615,
 0.11069176, 0.06513802, 0.1324928 , 0.07170206, -0.02790097,
 0.00509941, -0.10955495, 0.06445819, 0.16592687, -0.15248244,
 0.05629556, -0.10697106};

const float bias2[16]={
 0.00168202, -0.02477597, 0.1644291 , 0.0675092 , -0.20797214,
 -0.04019588, 0.14536864, -0.00633293, 0.07215682, 0.17395142,
 -0.1892749 , 0.00951004, -0.10996926, 0.08668086, -0.15531984,
 0.26817128};

const float bias3[8]={-0.04205513, 0.21228494, 0.20926127, 0.15443344, 0.20241565,
0.23089945, 0.11804045, -0.02740934};

const float bias4[3]={0.16131787, 0.0582228 , -0.25613016};
#line 329 "c:/users/ferdinand/onedrive - institut teknologi sepuluh nopember/semester 8/ta/mikroe/ann.h"
float in[7] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

float res[32],res2[16],res3[8], res4[3];
float hid1score[32],hid2score[16],hid3score[8], *hid4score;





float relu(float x){
 if (x < 0) {
 return 0;
 } else {
 return x;
 }
}

float* softmax(float *z) {
 int i;
 float exp_z[3];
 float sum = 0.0;

 for (i = 0; i < 3; i++) {
 exp_z[i] = exp(z[i]);
 sum += exp_z[i];
 }

 for (i = 0; i < 3; i++) {
 z[i] = exp_z[i] / (float)sum;
 }
 return z;
}

void intohid1(){
 int i, j;
 for (i = 0; i<32; i++){
 res[i]=0;
 for (j = 0; j<7; j++){
 res [i] += in[j]*weight1[j][i];
 }
 res [i] += bias1[i];
 hid1score[i] = relu(res[i]);
 }
}

void hid1tohid2(){
 int i, j;
 for (i = 0; i<16; i++){
 res2[i]=0;
 for (j = 0; j<32; j++){
 res2 [i] += hid1score[j]*weight2[j][i];
 }
 res2 [i] += bias2[i];
 hid2score[i]= relu(res2[i]);
 }



}

void hid2tohid3(){
 int i, j;
 for (i = 0; i<8; i++){
 res3[i]=0;
 for (j = 0; j<16; j++){
 res3 [i] += hid2score[j]*weight3[j][i];
 }
 res3 [i] += bias3[i];
 hid3score[i]= relu(res3[i]);
 }
}

void hid3toout(){
 int i, j;
 for (i = 0; i<3; i++){
 res4[i]=0;
 for (j = 0; j<8; j++){
 res4 [i] += hid3score[j]*weight4[j][i];
 }
 res4 [i] += bias4[i];
 }
 hid4score = softmax(res4);
}

void predict(){
 int i;
 float max = -1.0;
 int maxindex = -1;
 for (i = 0; i<3; i++){
 if (hid4score[i] > max){
 max = hid4score[i];
 maxindex = i;
 }
 }
 if (maxindex == 0){
 TFT_Write_Text("Stres   Low", 285, 210);
 } else if (maxindex == 1){
 TFT_Write_Text("Stres   Medium", 285, 210);
 } else if (maxindex == 2){
 TFT_Write_Text("Stres   High", 285, 210);
 }
}
#line 17 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
void InitTimer12(){
 RCC_APB1ENR.TIM12EN = 1;
 TIM12_CR1.CEN = 0;
 TIM12_PSC = 8;
 TIM12_ARR = 46874;
 NVIC_IntEnable(IVT_INT_TIM8_BRK_TIM12);
 TIM12_DIER.UIE = 1;
 TIM12_CR1.CEN = 1;
}
#line 37 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
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
 ecg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO );Delay_ms(200);

 mikrobus_gpioInit( _MIKROBUS2,_MIKROBUS_AN_PIN, _GPIO_INPUT );
 Delay_ms(200);
 eeg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS2_GPIO );Delay_ms(200);

 mikrobus_gpioInit( _MIKROBUS4,_MIKROBUS_AN_PIN, _GPIO_INPUT );
 Delay_ms(200);
 eeg_gpioDriverInit( ( const uint8_t* )&_MIKROBUS4_GPIO );Delay_ms(200);
}

void applicationInit()
{
 ADC1_Init(); Delay_ms(200);
 ADC_Set_Input_Channel( _ADC_CHANNEL_3 );Delay_ms(200);
 InitTimer14(); interrFlag = 0; interrCnt = 0; Delay_ms(200);
 EnableInterrupts();
 Delay_ms(200);

 ADC2_Init(); Delay_ms(200);
 ADC_Set_Input_Channel( _ADC_CHANNEL_10 );Delay_ms(200);
 InitTimer12(); interrFlag1 = 0; interrCnt1 = 0; Delay_ms(200);

 EnableInterrupts();
 Delay_ms(200);

 ADC3_Init(); Delay_ms(200);
 ADC_Set_Input_Channel( _ADC_CHANNEL_13 );Delay_ms(200);

 EnableInterrupts();
 Delay_ms(200);
}

void applicationTaskECG() {
 int i, i_qrs, j, k, n = 0, ii = 0, stop;
 int x = 0;
 float t, ecg_value;
 ADC1_value = ADC1_Get_Sample(3);
 ecg_value = (float) ADC1_value * (3.3/(4095)) * 100;



 stop = ecg_process(ecg_ptr, ecg_value);

 i = (ecg_ptr->length - 1) %  400 ;
 i_qrs = ((ecg_ptr->length - 1) - 7) %  400 ;


 if (i == 0) bingkai_blank();





 TFT_Set_Pen(CL_RED, 2);
 TFT_Line((i-1)*2, 100 - 0.17*(get_rotating_index(ecg_ptr->signal,  400 , i-1)), (i*2), 100 - 0.17*(ecg_ptr->signal[i]));

 if (i >= 7){
 TFT_Set_Pen(CL_LIME, 2);
 TFT_Line((i_qrs-1)*2, 155 - 35*(get_rotating_index(ecg_ptr->qrs_result,  400 , i-1)), (i_qrs*2), 155 - 35*(get_rotating_index(ecg_ptr->qrs_result,  400 , i)));
 }
}

void applicationTaskEEG(){
 int i, stop, i_plot, i_plot1;
 float eegfp1_value;
 float eegf3_value;

 ADC2_value = ADC2_Get_Sample(10);
 eegfp1_value = (float) ADC2_value * (3.3/(4095));
 stop = eeg_process(eeg_ptr, eegfp1_value);





 i = eeg_ptr->length_eeg - 1;
 i_plot = (eeg_ptr->length_eeg -1) %  800 ;




 if ((i_plot) == 0) bingkai_blank();








 TFT_Set_Pen(CL_FUCHSIA, 2);
 TFT_Line((i_plot - 1), 190 - 10*(eeg_ptr->eeg_signal[i-1]), i_plot , 190 - 10*((eeg_ptr->eeg_signal[i])));

 if (i_plot >= 1) {

 TFT_Set_Pen(CL_TEAL, 2);
 TFT_Line((i_plot - 1), 230 - 10*(get_rotating_index( eeg_ptr->lpf_eeg,  800 , i-1)), i_plot , 230 - 10*(get_rotating_index( eeg_ptr->lpf_eeg,  800 , i)));

 TFT_Set_Pen(CL_WHITE, 2);
 TFT_Line((i_plot - 1), 270 - 10*(get_rotating_index( eeg_ptr->hpf_eeg,  800 , i-1)), i_plot , 270 - 10*(get_rotating_index( eeg_ptr->hpf_eeg,  800 , i)));
 }

 if (i_plot >= 1) {
 TFT_Set_Pen(CL_BLUE, 2);
 TFT_Line((i_plot - 1), 310 - 10*(eeg_ptr1->eeg_signal[i-1]), i_plot, 310 - 10*(eeg_ptr1->eeg_signal[i]));

 TFT_Set_Pen(CL_SILVER, 2);
 TFT_Line((i_plot - 1), 350 - 10*(eeg_ptr1->lpf_eeg[i-1]), i_plot, 350 - 10*(eeg_ptr1->lpf_eeg[i]));

 TFT_Set_Pen(CL_YELLOW, 2);
 TFT_Line((i_plot - 1), 390 - 10*(eeg_ptr1->hpf_eeg[i-1]), i_plot, 390 - 10*(eeg_ptr1->hpf_eeg[i]));
 }
}
#line 197 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
void Timer12_interrupt() iv IVT_INT_TIM8_BRK_TIM12 {
 TIM12_SR.UIF = 0;

 Check_TP();
 if (buttonFlag1){
 applicationTaskEEG();
 }
}

void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
 TIM14_SR.UIF = 0;


 if (buttonFlag1){

 }
}





void ButtonRound5OnClick() {
 DrawScreen(&Screen3);
#line 233 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
}

void ButtonRound2OnClick() {
 DrawScreen(&Screen4);
}

void ButtonRound9OnClick() {
 DrawScreen(&Screen3);

 ecg_time_domain_calculation(ecg_ptr);
 ecg_non_linear_calculation(ecg_ptr);




 eeg_frequency_domain_calculation(eeg_ptr);
 eeg_mean_power_freq(eeg_ptr);



 eeg_frequency_domain_calculation(eeg_ptr1);
 eeg_mean_power_freq(eeg_ptr1);



 bingkai(110, 110, 210, 160, ecg_ptr->rmssd);



 bingkai(85, 255, 185, 370, ecg_ptr->sd1);
 bingkai(85, 280, 185, 390, ecg_ptr->sd2);




 bingkai(500, 110, 600, 160, eeg_ptr->lapf_eeg);
 bingkai(475, 135, 575, 180, eeg_ptr->mpf_eeg);

 bingkai(500, 255, 600, 305, eeg_ptr1->lapf_eeg);
 bingkai(477, 280, 575, 320, eeg_ptr1->mpf_eeg);
#line 275 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
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

 in[0] = ((ecg_ptr->rmssd - 9.80751103e-02) / 0.09397568);
 in[1] = ((ecg_ptr->sd1 - 6.90862937e+01) / 66.40267096);
 in[2] = ((ecg_ptr->sd2 - 1.05525846e+02) / 61.37620729);
 in[3] = ((eeg_ptr->lapf_eeg - 8.33127000e-02) / 0.10320298);
 in[4] = ((eeg_ptr->mpf_eeg - 9.76651916e+00) / 7.5838905 );
 in[5] = ((eeg_ptr1->lapf_eeg - 9.39778560e-02) / 0.078671);
 in[6] = ((eeg_ptr1->mpf_eeg - 1.03272005e+01) / 7.60291681);
#line 316 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_events_code.c"
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
