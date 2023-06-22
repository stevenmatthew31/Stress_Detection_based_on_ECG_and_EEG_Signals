#line 1 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_driver.c"
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
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/built_in.h"
#line 7 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_driver.c"
sbit TFT_BLED at GPIOF_ODR.B10;
sbit TFT_CS at GPIOF_ODR.B12;
unsigned int TFT_DataPort at GPIOG_ODR;
sbit TFT_RD at GPIOF_ODR.B14;
sbit TFT_RS at GPIOF_ODR.B13;
sbit TFT_RST at GPIOF_ODR.B11;
sbit TFT_WR at GPIOF_ODR.B15;






unsigned int Xcoord, Ycoord;
char PenDown;
typedef unsigned long TPointer;
TPointer PressedObject;
int PressedObjectType;
unsigned int caption_length, caption_height;
unsigned int display_width, display_height;

int _object_count;
unsigned short object_pressed;
TButton_Round *local_round_button;
TButton_Round *exec_round_button;
int round_button_order;
TLabel *local_label;
TLabel *exec_label;
int label_order;
TImage *local_image;
TImage *exec_image;
int image_order;
TCImage *local_cimage;
TCImage *exec_cimage;
int cimage_order;
TBox *local_box;
TBox *exec_box;
int box_order;
TBox_Round *local_round_box;
TBox_Round *exec_round_box;
int box_round_order;


void Write_to_Data_Lines(unsigned char _hi, unsigned char _lo) {
 GPIOG_ODR = (unsigned int) (_lo | (_hi << 8));
}

void Set_Index(unsigned short index) {
 TFT_RS = 0;
 Write_to_Data_Lines(0, index);
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

void Write_Command(unsigned short cmd) {
 TFT_RS = 1;
 Write_to_Data_Lines(0, cmd);
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

void Write_Data(unsigned int _data) {
 TFT_RS = 1;
 Write_to_Data_Lines( ((char *)&_data)[1] ,  ((char *)&_data)[0] );
 TFT_WR = 0;
 asm nop;
 TFT_WR = 1;
}

static void InitializeTouchPanel() {
 TFT_Set_Active(Set_Index, Write_Command, Write_Data);
 TFT_Init_SSD1963_Board_70(800, 480);

 TFT_Set_DBC_SSD1963(255);

 PenDown = 0;
 PressedObject = 0;
 PressedObjectType = -1;
}



 TScreen* CurrentScreen;

 TScreen Screen1;
 TBox Box1;
 TCImage Image1 =
 {
 &Screen1 ,
 1 ,
 30 ,
 50 ,
 125 ,
 125 ,
 &Lambang_ITS_jpg ,
 1 ,
 1 ,
 1 ,
 1 ,
 0 ,
 0 ,
 0 ,
 0
 };
 TImage Image2;
 TButton_Round ButtonRound2;
char ButtonRound2_Caption[15] = "DATA RECORDING";

 TBox_Round BoxRound1;
 TLabel Label2;
char Label2_Caption[34] = "RANCANG BANGUN SINYAL ECG DAN EEG";

 TLabel Label3;
char Label3_Caption[36] = "SEBAGAI DETEKSI STRESS PADA MANUSIA";

 TLabel Label4;
char Label4_Caption[12] = "MENGGUNAKAN";

 TLabel Label5;
char Label5_Caption[26] = "ARTIFICIAL NEURAL NETWORK";

 TLabel Label6;
char Label6_Caption[27] = "Steven Matthew Gondowijoyo";

 TLabel Label7;
char Label7_Caption[15] = "07311940000016";

 TLabel Label8;
char Label8_Caption[16] = "Program Sarjana";

 TLabel Label9;
char Label9_Caption[27] = "Departemen Teknik Biomedik";

 TLabel Label10;
char Label10_Caption[50] = "Fakultas Teknologi Elektro dan Informatika Cerdas";

 TLabel Label11;
char Label11_Caption[36] = "Institut Teknologi Sepuluh Nopember";

 TLabel Label12;
char Label12_Caption[32] = "Kelompok A: Intrumentasi Cerdas";

 TLabel Label13;
char Label13_Caption[46] = "Pembimbing 1 : Dr. Rachmad Setiawan S.T, M.T.";

 TLabel Label14;
char Label14_Caption[49] = "Pembimbing 2 : Nada Fitrieyatul Hikmah S.T, M.T.";

 TLabel Label27;
char Label27_Caption[1] = "";

 TButton_Round * const code Screen1_Buttons_Round[1]=
 {
 &ButtonRound2
 };
 TLabel * const code Screen1_Labels[14]=
 {
 &Label2,
 &Label3,
 &Label4,
 &Label5,
 &Label6,
 &Label7,
 &Label8,
 &Label9,
 &Label10,
 &Label11,
 &Label12,
 &Label13,
 &Label14,
 &Label27
 };
 TImage * const code Screen1_Images[1]=
 {
 &Image2
 };
 TCImage * const code Screen1_CImages[1]=
 {
 &Image1
 };
 TBox * const code Screen1_Boxes[1]=
 {
 &Box1
 };
 TBox_Round * const code Screen1_Boxes_Round[1]=
 {
 &BoxRound1
 };

 TScreen Screen3;
 TBox Box5;
 TLabel Label16;
char Label16_Caption[31] = "Feature Extraction ECG and EEG";

 TButton_Round ButtonRound6;
char ButtonRound6_Caption[5] = "BACK";

 TBox_Round BoxRound2;
 TLabel Label20;
char Label20_Caption[13] = "Time Domain:";

 TLabel Label21;
char Label21_Caption[7] = "RMSSD:";

 TLabel Label24;
char Label24_Caption[21] = "Non Linear Analysis:";

 TLabel Label25;
char Label25_Caption[5] = "SD1:";

 TLabel Label26;
char Label26_Caption[5] = "SD2:";

 TButton_Round ButtonRound1;
char ButtonRound1_Caption[15] = "Prediction ANN";

 TBox_Round BoxRound4;
 TLabel Label1;
char Label1_Caption[5] = "Fp1:";

 TLabel Label15;
char Label15_Caption[8] = "LAPFp1:";

 TLabel Label32;
char Label32_Caption[5] = "MPF:";

 TLabel Label35;
char Label35_Caption[4] = "F3:";

 TLabel Label36;
char Label36_Caption[7] = "LAPF3:";

 TLabel Label37;
char Label37_Caption[5] = "MPF:";

 TButton_Round * const code Screen3_Buttons_Round[2]=
 {
 &ButtonRound6,
 &ButtonRound1
 };
 TLabel * const code Screen3_Labels[12]=
 {
 &Label16,
 &Label20,
 &Label21,
 &Label24,
 &Label25,
 &Label26,
 &Label1,
 &Label15,
 &Label32,
 &Label35,
 &Label36,
 &Label37
 };
 TBox * const code Screen3_Boxes[1]=
 {
 &Box5
 };
 TBox_Round * const code Screen3_Boxes_Round[2]=
 {
 &BoxRound2,
 &BoxRound4
 };

 TScreen Screen4;
 TBox Box7;
 TLabel Label17;
char Label17_Caption[27] = "Data Recording ECG and EEG";

 TButton_Round ButtonRound7;
char ButtonRound7_Caption[5] = "BACK";

 TButton_Round ButtonRound8;
char ButtonRound8_Caption[4] = "RUN";

 TButton_Round ButtonRound9;
char ButtonRound9_Caption[19] = "Feature Extraction";

 TBox Box9;
 TLabel Label19;
char Label19_Caption[1] = "";

 TLabel Label38;
char Label38_Caption[6] = "BPM :";

 TButton_Round * const code Screen4_Buttons_Round[3]=
 {
 &ButtonRound7,
 &ButtonRound8,
 &ButtonRound9
 };
 TLabel * const code Screen4_Labels[3]=
 {
 &Label17,
 &Label19,
 &Label38
 };
 TBox * const code Screen4_Boxes[2]=
 {
 &Box7,
 &Box9
 };

 TScreen Screen5;
 TBox Box8;
 TLabel Label18;
char Label18_Caption[26] = "ANN Stress Classification";

 TButton_Round ButtonRound10;
char ButtonRound10_Caption[5] = "BACK";

 TBox_Round BoxRound3;
 TLabel Label31;
char Label31_Caption[6] = "Low :";

 TLabel Label33;
char Label33_Caption[7] = "High :";

 TLabel Label34;
char Label34_Caption[9] = "Medium :";

 TLine Line2;
 TButton_Round * const code Screen5_Buttons_Round[1]=
 {
 &ButtonRound10
 };
 TLabel * const code Screen5_Labels[4]=
 {
 &Label18,
 &Label31,
 &Label33,
 &Label34
 };
 TBox * const code Screen5_Boxes[1]=
 {
 &Box8
 };
 TBox_Round * const code Screen5_Boxes_Round[1]=
 {
 &BoxRound3
 };
 TLine * const code Screen5_Lines[1]=
 {
 &Line2
 };



static void InitializeObjects() {
 Screen1.Color = 0x1056;
 Screen1.Width = 800;
 Screen1.Height = 480;
 Screen1.Buttons_RoundCount = 1;
 Screen1.Buttons_Round = Screen1_Buttons_Round;
 Screen1.LabelsCount = 14;
 Screen1.Labels = Screen1_Labels;
 Screen1.ImagesCount = 1;
 Screen1.Images = Screen1_Images;
 Screen1.CImagesCount = 1;
 Screen1.CImages = Screen1_CImages;
 Screen1.BoxesCount = 1;
 Screen1.Boxes = Screen1_Boxes;
 Screen1.Boxes_RoundCount = 1;
 Screen1.Boxes_Round = Screen1_Boxes_Round;
 Screen1.LinesCount = 0;
 Screen1.ObjectsCount = 19;
 Screen1.OnSwipeUpPtr = 0;
 Screen1.OnSwipeDownPtr = 0;
 Screen1.OnSwipeLeftPtr = 0;
 Screen1.OnSwipeRightPtr = 0;
 Screen1.OnZoomInPtr = 0;
 Screen1.OnZoomOutPtr = 0;

 Screen3.Color = 0x1056;
 Screen3.Width = 800;
 Screen3.Height = 480;
 Screen3.Buttons_RoundCount = 2;
 Screen3.Buttons_Round = Screen3_Buttons_Round;
 Screen3.LabelsCount = 12;
 Screen3.Labels = Screen3_Labels;
 Screen3.ImagesCount = 0;
 Screen3.CImagesCount = 0;
 Screen3.BoxesCount = 1;
 Screen3.Boxes = Screen3_Boxes;
 Screen3.Boxes_RoundCount = 2;
 Screen3.Boxes_Round = Screen3_Boxes_Round;
 Screen3.LinesCount = 0;
 Screen3.ObjectsCount = 17;
 Screen3.OnSwipeUpPtr = 0;
 Screen3.OnSwipeDownPtr = 0;
 Screen3.OnSwipeLeftPtr = 0;
 Screen3.OnSwipeRightPtr = 0;
 Screen3.OnZoomInPtr = 0;
 Screen3.OnZoomOutPtr = 0;

 Screen4.Color = 0x0000;
 Screen4.Width = 800;
 Screen4.Height = 480;
 Screen4.Buttons_RoundCount = 3;
 Screen4.Buttons_Round = Screen4_Buttons_Round;
 Screen4.LabelsCount = 3;
 Screen4.Labels = Screen4_Labels;
 Screen4.ImagesCount = 0;
 Screen4.CImagesCount = 0;
 Screen4.BoxesCount = 2;
 Screen4.Boxes = Screen4_Boxes;
 Screen4.Boxes_RoundCount = 0;
 Screen4.LinesCount = 0;
 Screen4.ObjectsCount = 8;
 Screen4.OnSwipeUpPtr = 0;
 Screen4.OnSwipeDownPtr = 0;
 Screen4.OnSwipeLeftPtr = 0;
 Screen4.OnSwipeRightPtr = 0;
 Screen4.OnZoomInPtr = 0;
 Screen4.OnZoomOutPtr = 0;

 Screen5.Color = 0x1056;
 Screen5.Width = 800;
 Screen5.Height = 480;
 Screen5.Buttons_RoundCount = 1;
 Screen5.Buttons_Round = Screen5_Buttons_Round;
 Screen5.LabelsCount = 4;
 Screen5.Labels = Screen5_Labels;
 Screen5.ImagesCount = 0;
 Screen5.CImagesCount = 0;
 Screen5.BoxesCount = 1;
 Screen5.Boxes = Screen5_Boxes;
 Screen5.Boxes_RoundCount = 1;
 Screen5.Boxes_Round = Screen5_Boxes_Round;
 Screen5.LinesCount = 1;
 Screen5.Lines = Screen5_Lines;
 Screen5.ObjectsCount = 8;
 Screen5.OnSwipeUpPtr = 0;
 Screen5.OnSwipeDownPtr = 0;
 Screen5.OnSwipeLeftPtr = 0;
 Screen5.OnSwipeRightPtr = 0;
 Screen5.OnZoomInPtr = 0;
 Screen5.OnZoomOutPtr = 0;


 Box1.OwnerScreen = &Screen1;
 Box1.Order = 0;
 Box1.Left = 10;
 Box1.Top = 10;
 Box1.Width = 780;
 Box1.Height = 460;
 Box1.Pen_Width = 1;
 Box1.Pen_Color = 0xFFFF;
 Box1.Visible = 1;
 Box1.Active = 1;
 Box1.Transparent = 1;
 Box1.Gradient = 1;
 Box1.Gradient_Orientation = 0;
 Box1.Gradient_Start_Color = 0xFFFF;
 Box1.Gradient_End_Color = 0xFFFF;
 Box1.Color = 0xC618;
 Box1.PressColEnabled = 1;
 Box1.Press_Color = 0xE71C;

 Image2.OwnerScreen = &Screen1;
 Image2.Order = 2;
 Image2.Left = 160;
 Image2.Top = 50;
 Image2.Width = 125;
 Image2.Height = 125;
 Image2.Picture_Type = 1;
 Image2.Picture_Ratio = 1;
 Image2.Picture_Name = logobmeits_jpg;
 Image2.Visible = 1;
 Image2.Active = 1;

 ButtonRound2.OwnerScreen = &Screen1;
 ButtonRound2.Order = 3;
 ButtonRound2.Left = 60;
 ButtonRound2.Top = 250;
 ButtonRound2.Width = 215;
 ButtonRound2.Height = 85;
 ButtonRound2.Pen_Width = 1;
 ButtonRound2.Pen_Color = 0xFFFF;
 ButtonRound2.Visible = 1;
 ButtonRound2.Active = 1;
 ButtonRound2.Transparent = 1;
 ButtonRound2.Caption = ButtonRound2_Caption;
 ButtonRound2.TextAlign = _taCenter;
 ButtonRound2.TextAlignVertical= _tavMiddle;
 ButtonRound2.FontName = Times_New_Roman19x23_Regular;
 ButtonRound2.PressColEnabled = 1;
 ButtonRound2.Font_Color = 0xFFFF;
 ButtonRound2.VerticalText = 0;
 ButtonRound2.Gradient = 0;
 ButtonRound2.Gradient_Orientation = 0;
 ButtonRound2.Gradient_Start_Color = 0xFFFF;
 ButtonRound2.Gradient_End_Color = 0xC618;
 ButtonRound2.Color = 0x3193;
 ButtonRound2.Press_Color = 0xE71C;
 ButtonRound2.Corner_Radius = 5;
 ButtonRound2.OnClickPtr = ButtonRound2OnClick;

 BoxRound1.OwnerScreen = &Screen1;
 BoxRound1.Order = 4;
 BoxRound1.Left = 320;
 BoxRound1.Top = 20;
 BoxRound1.Width = 452;
 BoxRound1.Height = 440;
 BoxRound1.Pen_Width = 1;
 BoxRound1.Pen_Color = 0x0000;
 BoxRound1.Visible = 1;
 BoxRound1.Active = 1;
 BoxRound1.Transparent = 1;
 BoxRound1.Gradient = 0;
 BoxRound1.Gradient_Orientation = 0;
 BoxRound1.Gradient_Start_Color = 0xFFFF;
 BoxRound1.Gradient_End_Color = 0xC618;
 BoxRound1.Color = 0x4208;
 BoxRound1.PressColEnabled = 1;
 BoxRound1.Press_Color = 0xE71C;
 BoxRound1.Corner_Radius = 3;

 Label2.OwnerScreen = &Screen1;
 Label2.Order = 5;
 Label2.Left = 330;
 Label2.Top = 50;
 Label2.Width = 403;
 Label2.Height = 23;
 Label2.Visible = 1;
 Label2.Active = 1;
 Label2.Caption = Label2_Caption;
 Label2.FontName = Times_New_Roman18x21_Regular;
 Label2.Font_Color = 0xFFFF;
 Label2.VerticalText = 0;

 Label3.OwnerScreen = &Screen1;
 Label3.Order = 6;
 Label3.Left = 330;
 Label3.Top = 75;
 Label3.Width = 406;
 Label3.Height = 23;
 Label3.Visible = 1;
 Label3.Active = 1;
 Label3.Caption = Label3_Caption;
 Label3.FontName = Times_New_Roman18x21_Regular;
 Label3.Font_Color = 0xFFFF;
 Label3.VerticalText = 0;

 Label4.OwnerScreen = &Screen1;
 Label4.Order = 7;
 Label4.Left = 330;
 Label4.Top = 105;
 Label4.Width = 163;
 Label4.Height = 23;
 Label4.Visible = 1;
 Label4.Active = 1;
 Label4.Caption = Label4_Caption;
 Label4.FontName = Times_New_Roman18x21_Regular;
 Label4.Font_Color = 0xFFFF;
 Label4.VerticalText = 0;

 Label5.OwnerScreen = &Screen1;
 Label5.Order = 8;
 Label5.Left = 490;
 Label5.Top = 105;
 Label5.Width = 284;
 Label5.Height = 23;
 Label5.Visible = 1;
 Label5.Active = 1;
 Label5.Caption = Label5_Caption;
 Label5.FontName = Times_New_Roman17x21_Italic;
 Label5.Font_Color = 0xFFFF;
 Label5.VerticalText = 0;

 Label6.OwnerScreen = &Screen1;
 Label6.Order = 9;
 Label6.Left = 330;
 Label6.Top = 159;
 Label6.Width = 208;
 Label6.Height = 20;
 Label6.Visible = 1;
 Label6.Active = 1;
 Label6.Caption = Label6_Caption;
 Label6.FontName = Times_New_Roman15x19_Regular;
 Label6.Font_Color = 0xFFFF;
 Label6.VerticalText = 0;

 Label7.OwnerScreen = &Screen1;
 Label7.Order = 10;
 Label7.Left = 330;
 Label7.Top = 185;
 Label7.Width = 121;
 Label7.Height = 20;
 Label7.Visible = 1;
 Label7.Active = 1;
 Label7.Caption = Label7_Caption;
 Label7.FontName = Times_New_Roman15x19_Regular;
 Label7.Font_Color = 0xFFFF;
 Label7.VerticalText = 0;

 Label8.OwnerScreen = &Screen1;
 Label8.Order = 11;
 Label8.Left = 330;
 Label8.Top = 360;
 Label8.Width = 116;
 Label8.Height = 20;
 Label8.Visible = 1;
 Label8.Active = 1;
 Label8.Caption = Label8_Caption;
 Label8.FontName = Times_New_Roman15x19_Regular;
 Label8.Font_Color = 0xFFFF;
 Label8.VerticalText = 0;

 Label9.OwnerScreen = &Screen1;
 Label9.Order = 12;
 Label9.Left = 330;
 Label9.Top = 380;
 Label9.Width = 206;
 Label9.Height = 20;
 Label9.Visible = 1;
 Label9.Active = 1;
 Label9.Caption = Label9_Caption;
 Label9.FontName = Times_New_Roman15x19_Regular;
 Label9.Font_Color = 0xFFFF;
 Label9.VerticalText = 0;

 Label10.OwnerScreen = &Screen1;
 Label10.Order = 13;
 Label10.Left = 330;
 Label10.Top = 400;
 Label10.Width = 345;
 Label10.Height = 20;
 Label10.Visible = 1;
 Label10.Active = 1;
 Label10.Caption = Label10_Caption;
 Label10.FontName = Times_New_Roman15x19_Regular;
 Label10.Font_Color = 0xFFFF;
 Label10.VerticalText = 0;

 Label11.OwnerScreen = &Screen1;
 Label11.Order = 14;
 Label11.Left = 330;
 Label11.Top = 420;
 Label11.Width = 256;
 Label11.Height = 20;
 Label11.Visible = 1;
 Label11.Active = 1;
 Label11.Caption = Label11_Caption;
 Label11.FontName = Times_New_Roman15x19_Regular;
 Label11.Font_Color = 0xFFFF;
 Label11.VerticalText = 0;

 Label12.OwnerScreen = &Screen1;
 Label12.Order = 15;
 Label12.Left = 330;
 Label12.Top = 310;
 Label12.Width = 233;
 Label12.Height = 20;
 Label12.Visible = 1;
 Label12.Active = 1;
 Label12.Caption = Label12_Caption;
 Label12.FontName = Times_New_Roman15x19_Regular;
 Label12.Font_Color = 0xFFFF;
 Label12.VerticalText = 0;

 Label13.OwnerScreen = &Screen1;
 Label13.Order = 16;
 Label13.Left = 330;
 Label13.Top = 240;
 Label13.Width = 336;
 Label13.Height = 20;
 Label13.Visible = 1;
 Label13.Active = 1;
 Label13.Caption = Label13_Caption;
 Label13.FontName = Times_New_Roman15x19_Regular;
 Label13.Font_Color = 0xFFFF;
 Label13.VerticalText = 0;

 Label14.OwnerScreen = &Screen1;
 Label14.Order = 17;
 Label14.Left = 330;
 Label14.Top = 260;
 Label14.Width = 348;
 Label14.Height = 20;
 Label14.Visible = 1;
 Label14.Active = 1;
 Label14.Caption = Label14_Caption;
 Label14.FontName = Times_New_Roman15x19_Regular;
 Label14.Font_Color = 0xFFFF;
 Label14.VerticalText = 0;

 Label27.OwnerScreen = &Screen1;
 Label27.Order = 18;
 Label27.Left = 231;
 Label27.Top = 370;
 Label27.Width = 0;
 Label27.Height = 0;
 Label27.Visible = 1;
 Label27.Active = 1;
 Label27.Caption = Label27_Caption;
 Label27.FontName = Times_New_Roman25x31_Regular;
 Label27.Font_Color = 0x0000;
 Label27.VerticalText = 0;

 Box5.OwnerScreen = &Screen3;
 Box5.Order = 0;
 Box5.Left = 10;
 Box5.Top = 10;
 Box5.Width = 780;
 Box5.Height = 460;
 Box5.Pen_Width = 1;
 Box5.Pen_Color = 0x0000;
 Box5.Visible = 1;
 Box5.Active = 1;
 Box5.Transparent = 1;
 Box5.Gradient = 0;
 Box5.Gradient_Orientation = 0;
 Box5.Gradient_Start_Color = 0xFFFF;
 Box5.Gradient_End_Color = 0xC618;
 Box5.Color = 0xFFFF;
 Box5.PressColEnabled = 1;
 Box5.Press_Color = 0xE71C;

 Label16.OwnerScreen = &Screen3;
 Label16.Order = 1;
 Label16.Left = 210;
 Label16.Top = 25;
 Label16.Width = 394;
 Label16.Height = 33;
 Label16.Visible = 1;
 Label16.Active = 1;
 Label16.Caption = Label16_Caption;
 Label16.FontName = Times_New_Roman25x31_Italic;
 Label16.Font_Color = 0x0000;
 Label16.VerticalText = 0;

 ButtonRound6.OwnerScreen = &Screen3;
 ButtonRound6.Order = 2;
 ButtonRound6.Left = 20;
 ButtonRound6.Top = 410;
 ButtonRound6.Width = 100;
 ButtonRound6.Height = 50;
 ButtonRound6.Pen_Width = 1;
 ButtonRound6.Pen_Color = 0x0000;
 ButtonRound6.Visible = 1;
 ButtonRound6.Active = 1;
 ButtonRound6.Transparent = 1;
 ButtonRound6.Caption = ButtonRound6_Caption;
 ButtonRound6.TextAlign = _taCenter;
 ButtonRound6.TextAlignVertical= _tavMiddle;
 ButtonRound6.FontName = Times_New_Roman19x23_Regular;
 ButtonRound6.PressColEnabled = 1;
 ButtonRound6.Font_Color = 0xFFFF;
 ButtonRound6.VerticalText = 0;
 ButtonRound6.Gradient = 0;
 ButtonRound6.Gradient_Orientation = 0;
 ButtonRound6.Gradient_Start_Color = 0xFFFF;
 ButtonRound6.Gradient_End_Color = 0xC618;
 ButtonRound6.Color = 0xD0A2;
 ButtonRound6.Press_Color = 0xE71C;
 ButtonRound6.Corner_Radius = 5;
 ButtonRound6.OnClickPtr = ButtonRound6OnClick;

 BoxRound2.OwnerScreen = &Screen3;
 BoxRound2.Order = 3;
 BoxRound2.Left = 20;
 BoxRound2.Top = 70;
 BoxRound2.Width = 375;
 BoxRound2.Height = 330;
 BoxRound2.Pen_Width = 2;
 BoxRound2.Pen_Color = 0x0000;
 BoxRound2.Visible = 1;
 BoxRound2.Active = 1;
 BoxRound2.Transparent = 1;
 BoxRound2.Gradient = 0;
 BoxRound2.Gradient_Orientation = 0;
 BoxRound2.Gradient_Start_Color = 0xFFFF;
 BoxRound2.Gradient_End_Color = 0xC618;
 BoxRound2.Color = 0xFFFF;
 BoxRound2.PressColEnabled = 1;
 BoxRound2.Press_Color = 0xE71C;
 BoxRound2.Corner_Radius = 5;

 Label20.OwnerScreen = &Screen3;
 Label20.Order = 4;
 Label20.Left = 30;
 Label20.Top = 80;
 Label20.Width = 120;
 Label20.Height = 23;
 Label20.Visible = 1;
 Label20.Active = 1;
 Label20.Caption = Label20_Caption;
 Label20.FontName = Times_New_Roman17x21_Italic;
 Label20.Font_Color = 0x0000;
 Label20.VerticalText = 0;

 Label21.OwnerScreen = &Screen3;
 Label21.Order = 5;
 Label21.Left = 40;
 Label21.Top = 110;
 Label21.Width = 66;
 Label21.Height = 20;
 Label21.Visible = 1;
 Label21.Active = 1;
 Label21.Caption = Label21_Caption;
 Label21.FontName = Times_New_Roman15x19_Regular;
 Label21.Font_Color = 0x0000;
 Label21.VerticalText = 0;

 Label24.OwnerScreen = &Screen3;
 Label24.Order = 6;
 Label24.Left = 30;
 Label24.Top = 230;
 Label24.Width = 174;
 Label24.Height = 23;
 Label24.Visible = 1;
 Label24.Active = 1;
 Label24.Caption = Label24_Caption;
 Label24.FontName = Times_New_Roman17x21_Italic;
 Label24.Font_Color = 0x0000;
 Label24.VerticalText = 0;

 Label25.OwnerScreen = &Screen3;
 Label25.Order = 7;
 Label25.Left = 40;
 Label25.Top = 255;
 Label25.Width = 39;
 Label25.Height = 20;
 Label25.Visible = 1;
 Label25.Active = 1;
 Label25.Caption = Label25_Caption;
 Label25.FontName = Times_New_Roman15x19_Regular;
 Label25.Font_Color = 0x0000;
 Label25.VerticalText = 0;

 Label26.OwnerScreen = &Screen3;
 Label26.Order = 8;
 Label26.Left = 40;
 Label26.Top = 280;
 Label26.Width = 39;
 Label26.Height = 20;
 Label26.Visible = 1;
 Label26.Active = 1;
 Label26.Caption = Label26_Caption;
 Label26.FontName = Times_New_Roman15x19_Regular;
 Label26.Font_Color = 0x0000;
 Label26.VerticalText = 0;

 ButtonRound1.OwnerScreen = &Screen3;
 ButtonRound1.Order = 9;
 ButtonRound1.Left = 630;
 ButtonRound1.Top = 411;
 ButtonRound1.Width = 152;
 ButtonRound1.Height = 50;
 ButtonRound1.Pen_Width = 1;
 ButtonRound1.Pen_Color = 0x0000;
 ButtonRound1.Visible = 1;
 ButtonRound1.Active = 1;
 ButtonRound1.Transparent = 1;
 ButtonRound1.Caption = ButtonRound1_Caption;
 ButtonRound1.TextAlign = _taCenter;
 ButtonRound1.TextAlignVertical= _tavMiddle;
 ButtonRound1.FontName = Times_New_Roman19x23_Italic;
 ButtonRound1.PressColEnabled = 1;
 ButtonRound1.Font_Color = 0x0000;
 ButtonRound1.VerticalText = 0;
 ButtonRound1.Gradient = 0;
 ButtonRound1.Gradient_Orientation = 0;
 ButtonRound1.Gradient_Start_Color = 0xFFFF;
 ButtonRound1.Gradient_End_Color = 0xC618;
 ButtonRound1.Color = 0x07E0;
 ButtonRound1.Press_Color = 0xE71C;
 ButtonRound1.Corner_Radius = 5;
 ButtonRound1.OnClickPtr = ButtonRound1OnClick;

 BoxRound4.OwnerScreen = &Screen3;
 BoxRound4.Order = 10;
 BoxRound4.Left = 405;
 BoxRound4.Top = 70;
 BoxRound4.Width = 375;
 BoxRound4.Height = 330;
 BoxRound4.Pen_Width = 2;
 BoxRound4.Pen_Color = 0x0000;
 BoxRound4.Visible = 1;
 BoxRound4.Active = 1;
 BoxRound4.Transparent = 1;
 BoxRound4.Gradient = 0;
 BoxRound4.Gradient_Orientation = 0;
 BoxRound4.Gradient_Start_Color = 0xFFFF;
 BoxRound4.Gradient_End_Color = 0xC618;
 BoxRound4.Color = 0xFFFF;
 BoxRound4.PressColEnabled = 1;
 BoxRound4.Press_Color = 0xE71C;
 BoxRound4.Corner_Radius = 5;

 Label1.OwnerScreen = &Screen3;
 Label1.Order = 11;
 Label1.Left = 415;
 Label1.Top = 80;
 Label1.Width = 44;
 Label1.Height = 23;
 Label1.Visible = 1;
 Label1.Active = 1;
 Label1.Caption = Label1_Caption;
 Label1.FontName = Times_New_Roman17x21_Italic;
 Label1.Font_Color = 0x0000;
 Label1.VerticalText = 0;

 Label15.OwnerScreen = &Screen3;
 Label15.Order = 12;
 Label15.Left = 430;
 Label15.Top = 110;
 Label15.Width = 67;
 Label15.Height = 20;
 Label15.Visible = 1;
 Label15.Active = 1;
 Label15.Caption = Label15_Caption;
 Label15.FontName = Times_New_Roman15x19_Regular;
 Label15.Font_Color = 0x0000;
 Label15.VerticalText = 0;

 Label32.OwnerScreen = &Screen3;
 Label32.Order = 13;
 Label32.Left = 430;
 Label32.Top = 135;
 Label32.Width = 43;
 Label32.Height = 20;
 Label32.Visible = 1;
 Label32.Active = 1;
 Label32.Caption = Label32_Caption;
 Label32.FontName = Times_New_Roman15x19_Regular;
 Label32.Font_Color = 0x0000;
 Label32.VerticalText = 0;

 Label35.OwnerScreen = &Screen3;
 Label35.Order = 14;
 Label35.Left = 415;
 Label35.Top = 230;
 Label35.Width = 35;
 Label35.Height = 23;
 Label35.Visible = 1;
 Label35.Active = 1;
 Label35.Caption = Label35_Caption;
 Label35.FontName = Times_New_Roman17x21_Italic;
 Label35.Font_Color = 0x0000;
 Label35.VerticalText = 0;

 Label36.OwnerScreen = &Screen3;
 Label36.Order = 15;
 Label36.Left = 430;
 Label36.Top = 255;
 Label36.Width = 58;
 Label36.Height = 20;
 Label36.Visible = 1;
 Label36.Active = 1;
 Label36.Caption = Label36_Caption;
 Label36.FontName = Times_New_Roman15x19_Regular;
 Label36.Font_Color = 0x0000;
 Label36.VerticalText = 0;

 Label37.OwnerScreen = &Screen3;
 Label37.Order = 16;
 Label37.Left = 430;
 Label37.Top = 280;
 Label37.Width = 43;
 Label37.Height = 20;
 Label37.Visible = 1;
 Label37.Active = 1;
 Label37.Caption = Label37_Caption;
 Label37.FontName = Times_New_Roman15x19_Regular;
 Label37.Font_Color = 0x0000;
 Label37.VerticalText = 0;

 Box7.OwnerScreen = &Screen4;
 Box7.Order = 0;
 Box7.Left = 10;
 Box7.Top = 9;
 Box7.Width = 217;
 Box7.Height = 35;
 Box7.Pen_Width = 0;
 Box7.Pen_Color = 0x0000;
 Box7.Visible = 1;
 Box7.Active = 1;
 Box7.Transparent = 1;
 Box7.Gradient = 0;
 Box7.Gradient_Orientation = 0;
 Box7.Gradient_Start_Color = 0xFFFF;
 Box7.Gradient_End_Color = 0x1696;
 Box7.Color = 0x1696;
 Box7.PressColEnabled = 1;
 Box7.Press_Color = 0xE71C;

 Label17.OwnerScreen = &Screen4;
 Label17.Order = 1;
 Label17.Left = 15;
 Label17.Top = 18;
 Label17.Width = 210;
 Label17.Height = 20;
 Label17.Visible = 1;
 Label17.Active = 1;
 Label17.Caption = Label17_Caption;
 Label17.FontName = Times_New_Roman15x19_Regular;
 Label17.Font_Color = 0x0000;
 Label17.VerticalText = 0;

 ButtonRound7.OwnerScreen = &Screen4;
 ButtonRound7.Order = 2;
 ButtonRound7.Left = 20;
 ButtonRound7.Top = 410;
 ButtonRound7.Width = 100;
 ButtonRound7.Height = 50;
 ButtonRound7.Pen_Width = 1;
 ButtonRound7.Pen_Color = 0x0000;
 ButtonRound7.Visible = 1;
 ButtonRound7.Active = 1;
 ButtonRound7.Transparent = 1;
 ButtonRound7.Caption = ButtonRound7_Caption;
 ButtonRound7.TextAlign = _taCenter;
 ButtonRound7.TextAlignVertical= _tavMiddle;
 ButtonRound7.FontName = Times_New_Roman19x23_Regular;
 ButtonRound7.PressColEnabled = 1;
 ButtonRound7.Font_Color = 0x0000;
 ButtonRound7.VerticalText = 0;
 ButtonRound7.Gradient = 0;
 ButtonRound7.Gradient_Orientation = 0;
 ButtonRound7.Gradient_Start_Color = 0xFFFF;
 ButtonRound7.Gradient_End_Color = 0xC618;
 ButtonRound7.Color = 0xC618;
 ButtonRound7.Press_Color = 0xE71C;
 ButtonRound7.Corner_Radius = 5;
 ButtonRound7.OnClickPtr = ButtonRound7OnClick;

 ButtonRound8.OwnerScreen = &Screen4;
 ButtonRound8.Order = 3;
 ButtonRound8.Left = 125;
 ButtonRound8.Top = 410;
 ButtonRound8.Width = 100;
 ButtonRound8.Height = 50;
 ButtonRound8.Pen_Width = 1;
 ButtonRound8.Pen_Color = 0x0000;
 ButtonRound8.Visible = 1;
 ButtonRound8.Active = 1;
 ButtonRound8.Transparent = 1;
 ButtonRound8.Caption = ButtonRound8_Caption;
 ButtonRound8.TextAlign = _taCenter;
 ButtonRound8.TextAlignVertical= _tavMiddle;
 ButtonRound8.FontName = Times_New_Roman19x23_Regular;
 ButtonRound8.PressColEnabled = 1;
 ButtonRound8.Font_Color = 0x0000;
 ButtonRound8.VerticalText = 0;
 ButtonRound8.Gradient = 0;
 ButtonRound8.Gradient_Orientation = 0;
 ButtonRound8.Gradient_Start_Color = 0xFFFF;
 ButtonRound8.Gradient_End_Color = 0xC618;
 ButtonRound8.Color = 0xC618;
 ButtonRound8.Press_Color = 0xE71C;
 ButtonRound8.Corner_Radius = 5;
 ButtonRound8.OnClickPtr = ButtonRound8OnClick;

 ButtonRound9.OwnerScreen = &Screen4;
 ButtonRound9.Order = 4;
 ButtonRound9.Left = 650;
 ButtonRound9.Top = 410;
 ButtonRound9.Width = 135;
 ButtonRound9.Height = 50;
 ButtonRound9.Pen_Width = 1;
 ButtonRound9.Pen_Color = 0x0000;
 ButtonRound9.Visible = 1;
 ButtonRound9.Active = 1;
 ButtonRound9.Transparent = 1;
 ButtonRound9.Caption = ButtonRound9_Caption;
 ButtonRound9.TextAlign = _taCenter;
 ButtonRound9.TextAlignVertical= _tavMiddle;
 ButtonRound9.FontName = Times_New_Roman15x19_Italic;
 ButtonRound9.PressColEnabled = 1;
 ButtonRound9.Font_Color = 0x0000;
 ButtonRound9.VerticalText = 0;
 ButtonRound9.Gradient = 0;
 ButtonRound9.Gradient_Orientation = 0;
 ButtonRound9.Gradient_Start_Color = 0xFFFF;
 ButtonRound9.Gradient_End_Color = 0xC618;
 ButtonRound9.Color = 0xD73F;
 ButtonRound9.Press_Color = 0xE71C;
 ButtonRound9.Corner_Radius = 5;
 ButtonRound9.OnClickPtr = ButtonRound9OnClick;

 Box9.OwnerScreen = &Screen4;
 Box9.Order = 5;
 Box9.Left = 796;
 Box9.Top = 132;
 Box9.Width = 50;
 Box9.Height = 25;
 Box9.Pen_Width = 1;
 Box9.Pen_Color = 0x0000;
 Box9.Visible = 1;
 Box9.Active = 1;
 Box9.Transparent = 1;
 Box9.Gradient = 1;
 Box9.Gradient_Orientation = 0;
 Box9.Gradient_Start_Color = 0xFFFF;
 Box9.Gradient_End_Color = 0xC618;
 Box9.Color = 0xC618;
 Box9.PressColEnabled = 1;
 Box9.Press_Color = 0xE71C;

 Label19.OwnerScreen = &Screen4;
 Label19.Order = 6;
 Label19.Left = 253;
 Label19.Top = 401;
 Label19.Width = 0;
 Label19.Height = 0;
 Label19.Visible = 1;
 Label19.Active = 1;
 Label19.Caption = Label19_Caption;
 Label19.FontName = Tahoma26x33_Regular;
 Label19.Font_Color = 0x0000;
 Label19.VerticalText = 0;

 Label38.OwnerScreen = &Screen4;
 Label38.Order = 7;
 Label38.Left = 609;
 Label38.Top = 17;
 Label38.Width = 64;
 Label38.Height = 26;
 Label38.Visible = 1;
 Label38.Active = 1;
 Label38.Caption = Label38_Caption;
 Label38.FontName = Times_New_Roman19x23_Regular;
 Label38.Font_Color = 0xFFFF;
 Label38.VerticalText = 0;

 Box8.OwnerScreen = &Screen5;
 Box8.Order = 0;
 Box8.Left = 10;
 Box8.Top = 10;
 Box8.Width = 780;
 Box8.Height = 460;
 Box8.Pen_Width = 1;
 Box8.Pen_Color = 0x0000;
 Box8.Visible = 1;
 Box8.Active = 1;
 Box8.Transparent = 1;
 Box8.Gradient = 0;
 Box8.Gradient_Orientation = 0;
 Box8.Gradient_Start_Color = 0xFFFF;
 Box8.Gradient_End_Color = 0xC618;
 Box8.Color = 0xFFFF;
 Box8.PressColEnabled = 1;
 Box8.Press_Color = 0xE71C;

 Label18.OwnerScreen = &Screen5;
 Label18.Order = 1;
 Label18.Left = 265;
 Label18.Top = 25;
 Label18.Width = 302;
 Label18.Height = 33;
 Label18.Visible = 1;
 Label18.Active = 1;
 Label18.Caption = Label18_Caption;
 Label18.FontName = Times_New_Roman25x31_Regular;
 Label18.Font_Color = 0x0000;
 Label18.VerticalText = 0;

 ButtonRound10.OwnerScreen = &Screen5;
 ButtonRound10.Order = 2;
 ButtonRound10.Left = 20;
 ButtonRound10.Top = 410;
 ButtonRound10.Width = 100;
 ButtonRound10.Height = 50;
 ButtonRound10.Pen_Width = 1;
 ButtonRound10.Pen_Color = 0x0000;
 ButtonRound10.Visible = 1;
 ButtonRound10.Active = 1;
 ButtonRound10.Transparent = 1;
 ButtonRound10.Caption = ButtonRound10_Caption;
 ButtonRound10.TextAlign = _taCenter;
 ButtonRound10.TextAlignVertical= _tavMiddle;
 ButtonRound10.FontName = Times_New_Roman19x23_Regular;
 ButtonRound10.PressColEnabled = 1;
 ButtonRound10.Font_Color = 0xFFFF;
 ButtonRound10.VerticalText = 0;
 ButtonRound10.Gradient = 0;
 ButtonRound10.Gradient_Orientation = 0;
 ButtonRound10.Gradient_Start_Color = 0xFFFF;
 ButtonRound10.Gradient_End_Color = 0xC618;
 ButtonRound10.Color = 0xD0A2;
 ButtonRound10.Press_Color = 0xE71C;
 ButtonRound10.Corner_Radius = 5;
 ButtonRound10.OnClickPtr = ButtonRound10OnClick;

 BoxRound3.OwnerScreen = &Screen5;
 BoxRound3.Order = 3;
 BoxRound3.Left = 20;
 BoxRound3.Top = 345;
 BoxRound3.Width = 760;
 BoxRound3.Height = 40;
 BoxRound3.Pen_Width = 2;
 BoxRound3.Pen_Color = 0x0000;
 BoxRound3.Visible = 1;
 BoxRound3.Active = 1;
 BoxRound3.Transparent = 1;
 BoxRound3.Gradient = 0;
 BoxRound3.Gradient_Orientation = 0;
 BoxRound3.Gradient_Start_Color = 0xFFFF;
 BoxRound3.Gradient_End_Color = 0xC618;
 BoxRound3.Color = 0xFFFF;
 BoxRound3.PressColEnabled = 1;
 BoxRound3.Press_Color = 0xE71C;
 BoxRound3.Corner_Radius = 5;

 Label31.OwnerScreen = &Screen5;
 Label31.Order = 4;
 Label31.Left = 30;
 Label31.Top = 355;
 Label31.Width = 53;
 Label31.Height = 23;
 Label31.Visible = 1;
 Label31.Active = 1;
 Label31.Caption = Label31_Caption;
 Label31.FontName = Times_New_Roman18x21_Regular;
 Label31.Font_Color = 0x0000;
 Label31.VerticalText = 0;

 Label33.OwnerScreen = &Screen5;
 Label33.Order = 5;
 Label33.Left = 555;
 Label33.Top = 355;
 Label33.Width = 56;
 Label33.Height = 23;
 Label33.Visible = 1;
 Label33.Active = 1;
 Label33.Caption = Label33_Caption;
 Label33.FontName = Times_New_Roman18x21_Regular;
 Label33.Font_Color = 0x0000;
 Label33.VerticalText = 0;

 Label34.OwnerScreen = &Screen5;
 Label34.Order = 6;
 Label34.Left = 295;
 Label34.Top = 355;
 Label34.Width = 83;
 Label34.Height = 23;
 Label34.Visible = 1;
 Label34.Active = 1;
 Label34.Caption = Label34_Caption;
 Label34.FontName = Times_New_Roman18x21_Regular;
 Label34.Font_Color = 0x0000;
 Label34.VerticalText = 0;

 Line2.OwnerScreen = &Screen5;
 Line2.Order = 7;
 Line2.First_Point_X = 629;
 Line2.First_Point_Y = 530;
 Line2.Second_Point_X = 729;
 Line2.Second_Point_Y = 580;
 Line2.Visible = 1;
 Line2.Pen_Width = 1;
 Line2.Color = 0x0000;
}

static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) {
 if ( (Left<= X) && (Left+ Width - 1 >= X) &&
 (Top <= Y) && (Top + Height - 1 >= Y) )
 return 1;
 else
 return 0;
}
#line 1284 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_driver.c"
void DrawRoundButton(TButton_Round *Around_button) {
unsigned int ALeft, ATop;
 if (Around_button->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
 Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
 Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
 }
 TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
 TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
 Around_button->Left + Around_button->Width - 2,
 Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
 if (Around_button->VerticalText != 0)
 TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
 else
 TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
 TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
 if (Around_button->TextAlign == _taLeft)
 ALeft = Around_button->Left + 4;
 else if (Around_button->TextAlign == _taCenter)
 ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
 else if (Around_button->TextAlign == _taRight)
 ALeft = Around_button->Left + Around_button->Width - caption_length - 4;

 if (Around_button->TextAlignVertical == _tavTop)
 ATop = Around_button->Top + 3;
 else if (Around_button->TextAlignVertical == _tavMiddle)
 ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
 else if (Around_button->TextAlignVertical == _tavBottom)
 ATop = Around_button->Top + Around_button->Height - caption_height - 4;

 TFT_Write_Text(Around_button->Caption, ALeft, ATop);
 }
}

void DrawLabel(TLabel *ALabel) {
 if (ALabel->Visible != 0) {
 if (ALabel->VerticalText != 0)
 TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
 else
 TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
 TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
 }
}

void DrawImage(TImage *AImage) {
 if (AImage->Visible != 0) {
 TFT_Image_Jpeg(AImage->Left, AImage->Top, AImage->Picture_Name);
 }
}

void DrawCImage(TCImage *AImage) {
 if (AImage->Visible != 0) {
 TFT_Image_Jpeg(AImage->Left, AImage->Top, AImage->Picture_Name);
 }
}

void DrawBox(TBox *ABox) {
 if (ABox->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(ABox->Transparent, ABox->Press_Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_End_Color, ABox->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(ABox->Transparent, ABox->Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_Start_Color, ABox->Gradient_End_Color);
 }
 TFT_Set_Pen(ABox->Pen_Color, ABox->Pen_Width);
 TFT_Rectangle(ABox->Left, ABox->Top, ABox->Left + ABox->Width - 1, ABox->Top + ABox->Height - 1);
 }
}

void DrawRoundBox(TBox_Round *Around_box) {
 if (Around_box->Visible != 0) {
 if (object_pressed == 1) {
 object_pressed = 0;
 TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
 Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
 }
 else {
 TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
 Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
 }
 TFT_Set_Pen(Around_box->Pen_Color, Around_box->Pen_Width);
 TFT_Rectangle_Round_Edges(Around_box->Left + 1, Around_box->Top + 1,
 Around_box->Left + Around_box->Width - 2,
 Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
 }
}

void DrawLine(TLine *Aline) {
 if (Aline->Visible != 0) {
 TFT_Set_Pen(Aline->Color, Aline->Pen_Width);
 TFT_Line(Aline->First_Point_X, Aline->First_Point_Y, Aline->Second_Point_X, Aline->Second_Point_Y);
 }
}

void DrawScreen(TScreen *aScreen) {
 unsigned int order;
 unsigned short round_button_idx;
 TButton_Round *local_round_button;
 unsigned short label_idx;
 TLabel *local_label;
 unsigned short image_idx;
 TImage *local_image;
 unsigned short cimage_idx;
 TCImage *local_cimage;
 unsigned short box_idx;
 TBox *local_box;
 unsigned short round_box_idx;
 TBox_Round *local_round_box;
 unsigned short line_idx;
 TLine *local_line;
 char save_bled;

 object_pressed = 0;
 order = 0;
 round_button_idx = 0;
 label_idx = 0;
 image_idx = 0;
 cimage_idx = 0;
 box_idx = 0;
 round_box_idx = 0;
 line_idx = 0;
 CurrentScreen = aScreen;

 if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
 save_bled = TFT_BLED;
 TFT_BLED = 0;
 TFT_Set_Active(Set_Index, Write_Command, Write_Data);
 TFT_Init_SSD1963_Board_70(CurrentScreen->Width, CurrentScreen->Height);
 FT5XX6_SetSize(CurrentScreen->Width, CurrentScreen->Height);
 TFT_Fill_Screen(CurrentScreen->Color);
 TFT_Set_DBC_SSD1963(255);
 display_width = CurrentScreen->Width;
 display_height = CurrentScreen->Height;
 TFT_BLED = save_bled;
 }
 else
 TFT_Fill_Screen(CurrentScreen->Color);


 while (order < CurrentScreen->ObjectsCount) {
 if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
 local_round_button =  CurrentScreen->Buttons_Round[round_button_idx] ;
 if (order == local_round_button->Order) {
 round_button_idx++;
 order++;
 DrawRoundButton(local_round_button);
 }
 }

 if (label_idx < CurrentScreen->LabelsCount) {
 local_label =  CurrentScreen->Labels[label_idx] ;
 if (order == local_label->Order) {
 label_idx++;
 order++;
 DrawLabel(local_label);
 }
 }

 if (box_idx < CurrentScreen->BoxesCount) {
 local_box =  CurrentScreen->Boxes[box_idx] ;
 if (order == local_box->Order) {
 box_idx++;
 order++;
 DrawBox(local_box);
 }
 }

 if (round_box_idx < CurrentScreen->Boxes_RoundCount) {
 local_round_box =  CurrentScreen->Boxes_Round[round_box_idx] ;
 if (order == local_round_box->Order) {
 round_box_idx++;
 order++;
 DrawRoundBox(local_round_box);
 }
 }

 if (line_idx < CurrentScreen->LinesCount) {
 local_line =  CurrentScreen->Lines[line_idx] ;
 if (order == local_line->Order) {
 line_idx++;
 order++;
 DrawLine(local_line);
 }
 }

 if (image_idx < CurrentScreen->ImagesCount) {
 local_image =  CurrentScreen->Images[image_idx] ;
 if (order == local_image->Order) {
 image_idx++;
 order++;
 DrawImage(local_image);
 }
 }

 if (cimage_idx < CurrentScreen->CImagesCount) {
 local_cimage =  CurrentScreen->CImages[cimage_idx] ;
 if (order == local_cimage->Order) {
 cimage_idx++;
 order++;
 DrawCImage(local_cimage);
 }
 }

 }
}

void Get_Object(unsigned int X, unsigned int Y) {
 round_button_order = -1;
 label_order = -1;
 image_order = -1;
 cimage_order = -1;
 box_order = -1;
 box_round_order = -1;

 for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
 local_round_button =  CurrentScreen->Buttons_Round[_object_count] ;
 if (local_round_button->Active != 0) {
 if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
 local_round_button->Width, local_round_button->Height) == 1) {
 round_button_order = local_round_button->Order;
 exec_round_button = local_round_button;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
 local_label =  CurrentScreen->Labels[_object_count] ;
 if (local_label->Active != 0) {
 if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
 local_label->Width, local_label->Height) == 1) {
 label_order = local_label->Order;
 exec_label = local_label;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
 local_image =  CurrentScreen->Images[_object_count] ;
 if (local_image->Active != 0) {
 if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
 local_image->Width, local_image->Height) == 1) {
 image_order = local_image->Order;
 exec_image = local_image;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->CImagesCount ; _object_count++ ) {
 local_cimage =  CurrentScreen->CImages[_object_count] ;
 if (local_cimage->Active != 0) {
 if (IsInsideObject(X, Y, local_cimage->Left, local_cimage->Top,
 local_cimage->Width, local_cimage->Height) == 1) {
 cimage_order = local_cimage->Order;
 exec_cimage = local_cimage;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
 local_box =  CurrentScreen->Boxes[_object_count] ;
 if (local_box->Active != 0) {
 if (IsInsideObject(X, Y, local_box->Left, local_box->Top,
 local_box->Width, local_box->Height) == 1) {
 box_order = local_box->Order;
 exec_box = local_box;
 }
 }
 }


 for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
 local_round_box =  CurrentScreen->Boxes_Round[_object_count] ;
 if (local_round_box->Active != 0) {
 if (IsInsideObject(X, Y, local_round_box->Left, local_round_box->Top,
 local_round_box->Width, local_round_box->Height) == 1) {
 box_round_order = local_round_box->Order;
 exec_round_box = local_round_box;
 }
 }
 }

 _object_count = -1;
 if (round_button_order > _object_count )
 _object_count = round_button_order;
 if (label_order > _object_count )
 _object_count = label_order;
 if (image_order > _object_count )
 _object_count = image_order;
 if (cimage_order > _object_count )
 _object_count = cimage_order;
 if (box_order > _object_count )
 _object_count = box_order;
 if (box_round_order > _object_count )
 _object_count = box_round_order;
}


void Process_TP_Press(unsigned int X, unsigned int Y) {
 exec_round_button = 0;
 exec_label = 0;
 exec_image = 0;
 exec_cimage = 0;
 exec_box = 0;
 exec_round_box = 0;

 Get_Object(X, Y);

 if (_object_count != -1) {
 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->OnPressPtr != 0) {
 exec_round_button->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 if (exec_label->OnPressPtr != 0) {
 exec_label->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 if (exec_image->OnPressPtr != 0) {
 exec_image->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == cimage_order) {
 if (exec_cimage->Active != 0) {
 if (exec_cimage->OnPressPtr != 0) {
 exec_cimage->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->OnPressPtr != 0) {
 exec_box->OnPressPtr();
 return;
 }
 }
 }

 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->OnPressPtr != 0) {
 exec_round_box->OnPressPtr();
 return;
 }
 }
 }

 }
}

void Process_TP_Up(unsigned int X, unsigned int Y) {

 switch (PressedObjectType) {

 case 1: {
 if (PressedObject != 0) {
 exec_round_button = (TButton_Round*)PressedObject;
 if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
 DrawRoundButton(exec_round_button);
 }
 break;
 }
 break;
 }

 case 6: {
 if (PressedObject != 0) {
 exec_box = (TBox*)PressedObject;
 if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
 DrawBox(exec_box);
 }
 break;
 }
 break;
 }

 case 7: {
 if (PressedObject != 0) {
 exec_round_box = (TBox_Round*)PressedObject;
 if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
 DrawRoundBox(exec_round_box);
 }
 break;
 }
 break;
 }
 }

 exec_label = 0;
 exec_image = 0;
 exec_cimage = 0;

 Get_Object(X, Y);


 if (_object_count != -1) {

 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->OnUpPtr != 0)
 exec_round_button->OnUpPtr();
 if (PressedObject == (TPointer)exec_round_button)
 if (exec_round_button->OnClickPtr != 0)
 exec_round_button->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 if (exec_label->OnUpPtr != 0)
 exec_label->OnUpPtr();
 if (PressedObject == (TPointer)exec_label)
 if (exec_label->OnClickPtr != 0)
 exec_label->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 if (exec_image->OnUpPtr != 0)
 exec_image->OnUpPtr();
 if (PressedObject == (TPointer)exec_image)
 if (exec_image->OnClickPtr != 0)
 exec_image->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == cimage_order) {
 if (exec_cimage->Active != 0) {
 if (exec_cimage->OnUpPtr != 0)
 exec_cimage->OnUpPtr();
 if (PressedObject == (TPointer)exec_cimage)
 if (exec_cimage->OnClickPtr != 0)
 exec_cimage->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->OnUpPtr != 0)
 exec_box->OnUpPtr();
 if (PressedObject == (TPointer)exec_box)
 if (exec_box->OnClickPtr != 0)
 exec_box->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }


 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->OnUpPtr != 0)
 exec_round_box->OnUpPtr();
 if (PressedObject == (TPointer)exec_round_box)
 if (exec_round_box->OnClickPtr != 0)
 exec_round_box->OnClickPtr();
 PressedObject = 0;
 PressedObjectType = -1;
 return;
 }
 }

 }
 PressedObject = 0;
 PressedObjectType = -1;
}

void Process_TP_Down(unsigned int X, unsigned int Y) {

 object_pressed = 0;
 exec_round_button = 0;
 exec_label = 0;
 exec_image = 0;
 exec_cimage = 0;
 exec_box = 0;
 exec_round_box = 0;

 Get_Object(X, Y);

 if (_object_count != -1) {
 if (_object_count == round_button_order) {
 if (exec_round_button->Active != 0) {
 if (exec_round_button->PressColEnabled != 0) {
 object_pressed = 1;
 DrawRoundButton(exec_round_button);
 }
 PressedObject = (TPointer)exec_round_button;
 PressedObjectType = 1;
 if (exec_round_button->OnDownPtr != 0) {
 exec_round_button->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == label_order) {
 if (exec_label->Active != 0) {
 PressedObject = (TPointer)exec_label;
 PressedObjectType = 2;
 if (exec_label->OnDownPtr != 0) {
 exec_label->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == image_order) {
 if (exec_image->Active != 0) {
 PressedObject = (TPointer)exec_image;
 PressedObjectType = 3;
 if (exec_image->OnDownPtr != 0) {
 exec_image->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == cimage_order) {
 if (exec_cimage->Active != 0) {
 PressedObject = (TPointer)exec_cimage;
 PressedObjectType = 11;
 if (exec_cimage->OnDownPtr != 0) {
 exec_cimage->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == box_order) {
 if (exec_box->Active != 0) {
 if (exec_box->PressColEnabled != 0) {
 object_pressed = 1;
 DrawBox(exec_box);
 }
 PressedObject = (TPointer)exec_box;
 PressedObjectType = 6;
 if (exec_box->OnDownPtr != 0) {
 exec_box->OnDownPtr();
 return;
 }
 }
 }

 if (_object_count == box_round_order) {
 if (exec_round_box->Active != 0) {
 if (exec_round_box->PressColEnabled != 0) {
 object_pressed = 1;
 DrawRoundBox(exec_round_box);
 }
 PressedObject = (TPointer)exec_round_box;
 PressedObjectType = 7;
 if (exec_round_box->OnDownPtr != 0) {
 exec_round_box->OnDownPtr();
 return;
 }
 }
 }

 }
}

void Check_TP() {
 if (FT5XX6_PressDetect()) {
 if (FT5XX6_GetCoordinates(&Xcoord, &Ycoord) == 0) {

 Process_TP_Press(Xcoord, Ycoord);
 if (PenDown == 0) {
 PenDown = 1;
 Process_TP_Down(Xcoord, Ycoord);
 }
 }
 }
 else if (PenDown == 1) {
 PenDown = 0;
 Process_TP_Up(Xcoord, Ycoord);
 }
}

void Init_MCU() {

 GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1);
 GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0);
 GPIOF_ODR.B1 = 1;
 while (GPIOF_IDR.B0 == 0) {
 GPIOF_ODR.B1 = 0;
 Delay_us(10);
 GPIOF_ODR.B1 = 1;
 Delay_us(10);
 }
 I2C2_Init_Advanced(400000, &_GPIO_MODULE_I2C2_PF10);
}

char FT5XX6_Config() {
 FT5XX6_SetI2CAddress(0x38);
 if (FT5XX6_IsOperational() != FT5XX6_OK)
 return FT5XX6_FAILURE;
 FT5XX6_SetDefaultMode();
 FT5XX6_SetController(_TC_FT5X26);
 FT5XX6_SetSizeAndRotation(800,480,2);
return FT5XX6_OK;
}

void Start_TP() {
 Init_MCU();

 InitializeTouchPanel();
 if (FT5XX6_Config() == FT5XX6_OK) {
 } else {
 while(1);
 }


 InitializeObjects();
 display_width = Screen1.Width;
 display_height = Screen1.Height;
 DrawScreen(&Screen1);
}
