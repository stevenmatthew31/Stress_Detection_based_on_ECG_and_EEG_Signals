#line 1 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_main.c"
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
#line 17 "C:/Users/Ferdinand/OneDrive - Institut Teknologi Sepuluh Nopember/SEMESTER 8/TA/Mikroe/MyProject_TA_main.c"
extern void systemInit();
extern void applicationInit();

void main() {

 Start_TP();

 systemInit();
 applicationInit();
}
