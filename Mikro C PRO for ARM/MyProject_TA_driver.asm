_Write_to_Data_Lines:
;MyProject_TA_driver.c,50 :: 		void Write_to_Data_Lines(unsigned char _hi, unsigned char _lo) {
; _lo start address is: 4 (R1)
; _hi start address is: 0 (R0)
; _lo end address is: 4 (R1)
; _hi end address is: 0 (R0)
; _hi start address is: 0 (R0)
; _lo start address is: 4 (R1)
;MyProject_TA_driver.c,51 :: 		GPIOG_ODR = (unsigned int) (_lo | (_hi << 8));
LSLS	R2, R0, #8
UXTH	R2, R2
; _hi end address is: 0 (R0)
ORR	R3, R1, R2, LSL #0
UXTH	R3, R3
; _lo end address is: 4 (R1)
MOVW	R2, #lo_addr(GPIOG_ODR+0)
MOVT	R2, #hi_addr(GPIOG_ODR+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,52 :: 		}
L_end_Write_to_Data_Lines:
BX	LR
; end of _Write_to_Data_Lines
_Set_Index:
;MyProject_TA_driver.c,54 :: 		void Set_Index(unsigned short index) {
; index start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; index end address is: 0 (R0)
; index start address is: 0 (R0)
;MyProject_TA_driver.c,55 :: 		TFT_RS = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #13, #1
STR	R1, [R2, #0]
;MyProject_TA_driver.c,56 :: 		Write_to_Data_Lines(0, index);
UXTB	R1, R0
; index end address is: 0 (R0)
MOVS	R0, #0
BL	_Write_to_Data_Lines+0
;MyProject_TA_driver.c,57 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_TA_driver.c,58 :: 		asm nop;
NOP
;MyProject_TA_driver.c,59 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_TA_driver.c,60 :: 		}
L_end_Set_Index:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Set_Index
_Write_Command:
;MyProject_TA_driver.c,62 :: 		void Write_Command(unsigned short cmd) {
; cmd start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; cmd end address is: 0 (R0)
; cmd start address is: 0 (R0)
;MyProject_TA_driver.c,63 :: 		TFT_RS = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #8192
STR	R1, [R2, #0]
;MyProject_TA_driver.c,64 :: 		Write_to_Data_Lines(0, cmd);
UXTB	R1, R0
; cmd end address is: 0 (R0)
MOVS	R0, #0
BL	_Write_to_Data_Lines+0
;MyProject_TA_driver.c,65 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_TA_driver.c,66 :: 		asm nop;
NOP
;MyProject_TA_driver.c,67 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_TA_driver.c,68 :: 		}
L_end_Write_Command:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Write_Command
_Write_Data:
;MyProject_TA_driver.c,70 :: 		void Write_Data(unsigned int _data) {
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRH	R0, [SP, #4]
;MyProject_TA_driver.c,71 :: 		TFT_RS = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #8192
STR	R1, [R2, #0]
;MyProject_TA_driver.c,72 :: 		Write_to_Data_Lines(Hi(_data), Lo(_data));
ADD	R3, SP, #4
LDRB	R1, [R3, #0]
UXTB	R2, R1
ADDS	R1, R3, #1
LDRB	R1, [R1, #0]
UXTB	R0, R1
UXTB	R1, R2
BL	_Write_to_Data_Lines+0
;MyProject_TA_driver.c,73 :: 		TFT_WR = 0;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFC	R1, #15, #1
STR	R1, [R2, #0]
;MyProject_TA_driver.c,74 :: 		asm nop;
NOP
;MyProject_TA_driver.c,75 :: 		TFT_WR = 1;
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
ORR	R1, R1, #32768
STR	R1, [R2, #0]
;MyProject_TA_driver.c,76 :: 		}
L_end_Write_Data:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _Write_Data
MyProject_TA_driver_InitializeTouchPanel:
;MyProject_TA_driver.c,78 :: 		static void InitializeTouchPanel() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_driver.c,79 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
MOVW	R2, #lo_addr(_Write_Data+0)
MOVT	R2, #hi_addr(_Write_Data+0)
MOVW	R1, #lo_addr(_Write_Command+0)
MOVT	R1, #hi_addr(_Write_Command+0)
MOVW	R0, #lo_addr(_Set_Index+0)
MOVT	R0, #hi_addr(_Set_Index+0)
BL	_TFT_Set_Active+0
;MyProject_TA_driver.c,80 :: 		TFT_Init_SSD1963_Board_70(800, 480);
MOVW	R1, #480
MOVW	R0, #800
BL	_TFT_Init_SSD1963_Board_70+0
;MyProject_TA_driver.c,82 :: 		TFT_Set_DBC_SSD1963(255);
MOVS	R0, #255
BL	_TFT_Set_DBC_SSD1963+0
;MyProject_TA_driver.c,84 :: 		PenDown = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,85 :: 		PressedObject = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PressedObject+0)
MOVT	R0, #hi_addr(_PressedObject+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,86 :: 		PressedObjectType = -1;
MOVW	R1, #65535
SXTH	R1, R1
MOVW	R0, #lo_addr(_PressedObjectType+0)
MOVT	R0, #hi_addr(_PressedObjectType+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,87 :: 		}
L_end_InitializeTouchPanel:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of MyProject_TA_driver_InitializeTouchPanel
MyProject_TA_driver_InitializeObjects:
;MyProject_TA_driver.c,358 :: 		static void InitializeObjects() {
;MyProject_TA_driver.c,359 :: 		Screen1.Color                     = 0x1056;
MOVW	R1, #4182
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,360 :: 		Screen1.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen1+2)
MOVT	R0, #hi_addr(_Screen1+2)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,361 :: 		Screen1.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen1+4)
MOVT	R0, #hi_addr(_Screen1+4)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,362 :: 		Screen1.Buttons_RoundCount        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+8)
MOVT	R0, #hi_addr(_Screen1+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,363 :: 		Screen1.Buttons_Round             = Screen1_Buttons_Round;
MOVW	R1, #lo_addr(_Screen1_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen1_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen1+12)
MOVT	R0, #hi_addr(_Screen1+12)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,364 :: 		Screen1.LabelsCount               = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Screen1+16)
MOVT	R0, #hi_addr(_Screen1+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,365 :: 		Screen1.Labels                    = Screen1_Labels;
MOVW	R1, #lo_addr(_Screen1_Labels+0)
MOVT	R1, #hi_addr(_Screen1_Labels+0)
MOVW	R0, #lo_addr(_Screen1+20)
MOVT	R0, #hi_addr(_Screen1+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,366 :: 		Screen1.ImagesCount               = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+24)
MOVT	R0, #hi_addr(_Screen1+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,367 :: 		Screen1.Images                    = Screen1_Images;
MOVW	R1, #lo_addr(_Screen1_Images+0)
MOVT	R1, #hi_addr(_Screen1_Images+0)
MOVW	R0, #lo_addr(_Screen1+28)
MOVT	R0, #hi_addr(_Screen1+28)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,368 :: 		Screen1.CImagesCount              = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+32)
MOVT	R0, #hi_addr(_Screen1+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,369 :: 		Screen1.CImages                   = Screen1_CImages;
MOVW	R1, #lo_addr(_Screen1_CImages+0)
MOVT	R1, #hi_addr(_Screen1_CImages+0)
MOVW	R0, #lo_addr(_Screen1+36)
MOVT	R0, #hi_addr(_Screen1+36)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,370 :: 		Screen1.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+40)
MOVT	R0, #hi_addr(_Screen1+40)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,371 :: 		Screen1.Boxes                     = Screen1_Boxes;
MOVW	R1, #lo_addr(_Screen1_Boxes+0)
MOVT	R1, #hi_addr(_Screen1_Boxes+0)
MOVW	R0, #lo_addr(_Screen1+44)
MOVT	R0, #hi_addr(_Screen1+44)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,372 :: 		Screen1.Boxes_RoundCount          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen1+48)
MOVT	R0, #hi_addr(_Screen1+48)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,373 :: 		Screen1.Boxes_Round               = Screen1_Boxes_Round;
MOVW	R1, #lo_addr(_Screen1_Boxes_Round+0)
MOVT	R1, #hi_addr(_Screen1_Boxes_Round+0)
MOVW	R0, #lo_addr(_Screen1+52)
MOVT	R0, #hi_addr(_Screen1+52)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,374 :: 		Screen1.LinesCount                = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+56)
MOVT	R0, #hi_addr(_Screen1+56)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,375 :: 		Screen1.ObjectsCount              = 19;
MOVS	R1, #19
MOVW	R0, #lo_addr(_Screen1+6)
MOVT	R0, #hi_addr(_Screen1+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,376 :: 		Screen1.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+72)
MOVT	R0, #hi_addr(_Screen1+72)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,377 :: 		Screen1.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+76)
MOVT	R0, #hi_addr(_Screen1+76)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,378 :: 		Screen1.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+64)
MOVT	R0, #hi_addr(_Screen1+64)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,379 :: 		Screen1.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+68)
MOVT	R0, #hi_addr(_Screen1+68)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,380 :: 		Screen1.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+80)
MOVT	R0, #hi_addr(_Screen1+80)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,381 :: 		Screen1.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen1+84)
MOVT	R0, #hi_addr(_Screen1+84)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,383 :: 		Screen3.Color                     = 0x1056;
MOVW	R1, #4182
MOVW	R0, #lo_addr(_Screen3+0)
MOVT	R0, #hi_addr(_Screen3+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,384 :: 		Screen3.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen3+2)
MOVT	R0, #hi_addr(_Screen3+2)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,385 :: 		Screen3.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen3+4)
MOVT	R0, #hi_addr(_Screen3+4)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,386 :: 		Screen3.Buttons_RoundCount        = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen3+8)
MOVT	R0, #hi_addr(_Screen3+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,387 :: 		Screen3.Buttons_Round             = Screen3_Buttons_Round;
MOVW	R1, #lo_addr(_Screen3_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen3_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen3+12)
MOVT	R0, #hi_addr(_Screen3+12)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,388 :: 		Screen3.LabelsCount               = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Screen3+16)
MOVT	R0, #hi_addr(_Screen3+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,389 :: 		Screen3.Labels                    = Screen3_Labels;
MOVW	R1, #lo_addr(_Screen3_Labels+0)
MOVT	R1, #hi_addr(_Screen3_Labels+0)
MOVW	R0, #lo_addr(_Screen3+20)
MOVT	R0, #hi_addr(_Screen3+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,390 :: 		Screen3.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+24)
MOVT	R0, #hi_addr(_Screen3+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,391 :: 		Screen3.CImagesCount              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+32)
MOVT	R0, #hi_addr(_Screen3+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,392 :: 		Screen3.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen3+40)
MOVT	R0, #hi_addr(_Screen3+40)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,393 :: 		Screen3.Boxes                     = Screen3_Boxes;
MOVW	R1, #lo_addr(_Screen3_Boxes+0)
MOVT	R1, #hi_addr(_Screen3_Boxes+0)
MOVW	R0, #lo_addr(_Screen3+44)
MOVT	R0, #hi_addr(_Screen3+44)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,394 :: 		Screen3.Boxes_RoundCount          = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen3+48)
MOVT	R0, #hi_addr(_Screen3+48)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,395 :: 		Screen3.Boxes_Round               = Screen3_Boxes_Round;
MOVW	R1, #lo_addr(_Screen3_Boxes_Round+0)
MOVT	R1, #hi_addr(_Screen3_Boxes_Round+0)
MOVW	R0, #lo_addr(_Screen3+52)
MOVT	R0, #hi_addr(_Screen3+52)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,396 :: 		Screen3.LinesCount                = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+56)
MOVT	R0, #hi_addr(_Screen3+56)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,397 :: 		Screen3.ObjectsCount              = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Screen3+6)
MOVT	R0, #hi_addr(_Screen3+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,398 :: 		Screen3.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+72)
MOVT	R0, #hi_addr(_Screen3+72)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,399 :: 		Screen3.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+76)
MOVT	R0, #hi_addr(_Screen3+76)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,400 :: 		Screen3.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+64)
MOVT	R0, #hi_addr(_Screen3+64)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,401 :: 		Screen3.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+68)
MOVT	R0, #hi_addr(_Screen3+68)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,402 :: 		Screen3.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+80)
MOVT	R0, #hi_addr(_Screen3+80)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,403 :: 		Screen3.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen3+84)
MOVT	R0, #hi_addr(_Screen3+84)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,405 :: 		Screen4.Color                     = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,406 :: 		Screen4.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen4+2)
MOVT	R0, #hi_addr(_Screen4+2)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,407 :: 		Screen4.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen4+4)
MOVT	R0, #hi_addr(_Screen4+4)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,408 :: 		Screen4.Buttons_RoundCount        = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Screen4+8)
MOVT	R0, #hi_addr(_Screen4+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,409 :: 		Screen4.Buttons_Round             = Screen4_Buttons_Round;
MOVW	R1, #lo_addr(_Screen4_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen4_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen4+12)
MOVT	R0, #hi_addr(_Screen4+12)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,410 :: 		Screen4.LabelsCount               = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_Screen4+16)
MOVT	R0, #hi_addr(_Screen4+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,411 :: 		Screen4.Labels                    = Screen4_Labels;
MOVW	R1, #lo_addr(_Screen4_Labels+0)
MOVT	R1, #hi_addr(_Screen4_Labels+0)
MOVW	R0, #lo_addr(_Screen4+20)
MOVT	R0, #hi_addr(_Screen4+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,412 :: 		Screen4.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+24)
MOVT	R0, #hi_addr(_Screen4+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,413 :: 		Screen4.CImagesCount              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+32)
MOVT	R0, #hi_addr(_Screen4+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,414 :: 		Screen4.BoxesCount                = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Screen4+40)
MOVT	R0, #hi_addr(_Screen4+40)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,415 :: 		Screen4.Boxes                     = Screen4_Boxes;
MOVW	R1, #lo_addr(_Screen4_Boxes+0)
MOVT	R1, #hi_addr(_Screen4_Boxes+0)
MOVW	R0, #lo_addr(_Screen4+44)
MOVT	R0, #hi_addr(_Screen4+44)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,416 :: 		Screen4.Boxes_RoundCount          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+48)
MOVT	R0, #hi_addr(_Screen4+48)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,417 :: 		Screen4.LinesCount                = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+56)
MOVT	R0, #hi_addr(_Screen4+56)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,418 :: 		Screen4.ObjectsCount              = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Screen4+6)
MOVT	R0, #hi_addr(_Screen4+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,419 :: 		Screen4.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+72)
MOVT	R0, #hi_addr(_Screen4+72)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,420 :: 		Screen4.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+76)
MOVT	R0, #hi_addr(_Screen4+76)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,421 :: 		Screen4.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+64)
MOVT	R0, #hi_addr(_Screen4+64)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,422 :: 		Screen4.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+68)
MOVT	R0, #hi_addr(_Screen4+68)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,423 :: 		Screen4.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+80)
MOVT	R0, #hi_addr(_Screen4+80)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,424 :: 		Screen4.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen4+84)
MOVT	R0, #hi_addr(_Screen4+84)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,426 :: 		Screen5.Color                     = 0x1056;
MOVW	R1, #4182
MOVW	R0, #lo_addr(_Screen5+0)
MOVT	R0, #hi_addr(_Screen5+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,427 :: 		Screen5.Width                     = 800;
MOVW	R1, #800
MOVW	R0, #lo_addr(_Screen5+2)
MOVT	R0, #hi_addr(_Screen5+2)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,428 :: 		Screen5.Height                    = 480;
MOVW	R1, #480
MOVW	R0, #lo_addr(_Screen5+4)
MOVT	R0, #hi_addr(_Screen5+4)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,429 :: 		Screen5.Buttons_RoundCount        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen5+8)
MOVT	R0, #hi_addr(_Screen5+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,430 :: 		Screen5.Buttons_Round             = Screen5_Buttons_Round;
MOVW	R1, #lo_addr(_Screen5_Buttons_Round+0)
MOVT	R1, #hi_addr(_Screen5_Buttons_Round+0)
MOVW	R0, #lo_addr(_Screen5+12)
MOVT	R0, #hi_addr(_Screen5+12)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,431 :: 		Screen5.LabelsCount               = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Screen5+16)
MOVT	R0, #hi_addr(_Screen5+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,432 :: 		Screen5.Labels                    = Screen5_Labels;
MOVW	R1, #lo_addr(_Screen5_Labels+0)
MOVT	R1, #hi_addr(_Screen5_Labels+0)
MOVW	R0, #lo_addr(_Screen5+20)
MOVT	R0, #hi_addr(_Screen5+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,433 :: 		Screen5.ImagesCount               = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+24)
MOVT	R0, #hi_addr(_Screen5+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,434 :: 		Screen5.CImagesCount              = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+32)
MOVT	R0, #hi_addr(_Screen5+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,435 :: 		Screen5.BoxesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen5+40)
MOVT	R0, #hi_addr(_Screen5+40)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,436 :: 		Screen5.Boxes                     = Screen5_Boxes;
MOVW	R1, #lo_addr(_Screen5_Boxes+0)
MOVT	R1, #hi_addr(_Screen5_Boxes+0)
MOVW	R0, #lo_addr(_Screen5+44)
MOVT	R0, #hi_addr(_Screen5+44)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,437 :: 		Screen5.Boxes_RoundCount          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen5+48)
MOVT	R0, #hi_addr(_Screen5+48)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,438 :: 		Screen5.Boxes_Round               = Screen5_Boxes_Round;
MOVW	R1, #lo_addr(_Screen5_Boxes_Round+0)
MOVT	R1, #hi_addr(_Screen5_Boxes_Round+0)
MOVW	R0, #lo_addr(_Screen5+52)
MOVT	R0, #hi_addr(_Screen5+52)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,439 :: 		Screen5.LinesCount                = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Screen5+56)
MOVT	R0, #hi_addr(_Screen5+56)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,440 :: 		Screen5.Lines                     = Screen5_Lines;
MOVW	R1, #lo_addr(_Screen5_Lines+0)
MOVT	R1, #hi_addr(_Screen5_Lines+0)
MOVW	R0, #lo_addr(_Screen5+60)
MOVT	R0, #hi_addr(_Screen5+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,441 :: 		Screen5.ObjectsCount              = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Screen5+6)
MOVT	R0, #hi_addr(_Screen5+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,442 :: 		Screen5.OnSwipeUpPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+72)
MOVT	R0, #hi_addr(_Screen5+72)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,443 :: 		Screen5.OnSwipeDownPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+76)
MOVT	R0, #hi_addr(_Screen5+76)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,444 :: 		Screen5.OnSwipeLeftPtr  = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+64)
MOVT	R0, #hi_addr(_Screen5+64)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,445 :: 		Screen5.OnSwipeRightPtr = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+68)
MOVT	R0, #hi_addr(_Screen5+68)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,446 :: 		Screen5.OnZoomInPtr     = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+80)
MOVT	R0, #hi_addr(_Screen5+80)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,447 :: 		Screen5.OnZoomOutPtr    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Screen5+84)
MOVT	R0, #hi_addr(_Screen5+84)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,450 :: 		Box1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Box1+0)
MOVT	R0, #hi_addr(_Box1+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,451 :: 		Box1.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+4)
MOVT	R0, #hi_addr(_Box1+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,452 :: 		Box1.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box1+6)
MOVT	R0, #hi_addr(_Box1+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,453 :: 		Box1.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box1+8)
MOVT	R0, #hi_addr(_Box1+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,454 :: 		Box1.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box1+10)
MOVT	R0, #hi_addr(_Box1+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,455 :: 		Box1.Height          = 460;
MOVW	R1, #460
MOVW	R0, #lo_addr(_Box1+12)
MOVT	R0, #hi_addr(_Box1+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,456 :: 		Box1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+14)
MOVT	R0, #hi_addr(_Box1+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,457 :: 		Box1.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box1+16)
MOVT	R0, #hi_addr(_Box1+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,458 :: 		Box1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+18)
MOVT	R0, #hi_addr(_Box1+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,459 :: 		Box1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+19)
MOVT	R0, #hi_addr(_Box1+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,460 :: 		Box1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+20)
MOVT	R0, #hi_addr(_Box1+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,461 :: 		Box1.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+21)
MOVT	R0, #hi_addr(_Box1+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,462 :: 		Box1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box1+22)
MOVT	R0, #hi_addr(_Box1+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,463 :: 		Box1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box1+24)
MOVT	R0, #hi_addr(_Box1+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,464 :: 		Box1.Gradient_End_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box1+26)
MOVT	R0, #hi_addr(_Box1+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,465 :: 		Box1.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box1+28)
MOVT	R0, #hi_addr(_Box1+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,466 :: 		Box1.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box1+30)
MOVT	R0, #hi_addr(_Box1+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,467 :: 		Box1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box1+32)
MOVT	R0, #hi_addr(_Box1+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,469 :: 		Image2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Image2+0)
MOVT	R0, #hi_addr(_Image2+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,470 :: 		Image2.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_Image2+4)
MOVT	R0, #hi_addr(_Image2+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,471 :: 		Image2.Left            = 160;
MOVS	R1, #160
MOVW	R0, #lo_addr(_Image2+6)
MOVT	R0, #hi_addr(_Image2+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,472 :: 		Image2.Top             = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_Image2+8)
MOVT	R0, #hi_addr(_Image2+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,473 :: 		Image2.Width           = 125;
MOVS	R1, #125
MOVW	R0, #lo_addr(_Image2+10)
MOVT	R0, #hi_addr(_Image2+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,474 :: 		Image2.Height          = 125;
MOVS	R1, #125
MOVW	R0, #lo_addr(_Image2+12)
MOVT	R0, #hi_addr(_Image2+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,475 :: 		Image2.Picture_Type    = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+22)
MOVT	R0, #hi_addr(_Image2+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,476 :: 		Image2.Picture_Ratio   = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+23)
MOVT	R0, #hi_addr(_Image2+23)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,477 :: 		Image2.Picture_Name    = logobmeits_jpg;
MOVW	R1, #lo_addr(_logobmeits_jpg+0)
MOVT	R1, #hi_addr(_logobmeits_jpg+0)
MOVW	R0, #lo_addr(_Image2+16)
MOVT	R0, #hi_addr(_Image2+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,478 :: 		Image2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+20)
MOVT	R0, #hi_addr(_Image2+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,479 :: 		Image2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Image2+21)
MOVT	R0, #hi_addr(_Image2+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,481 :: 		ButtonRound2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_ButtonRound2+0)
MOVT	R0, #hi_addr(_ButtonRound2+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,482 :: 		ButtonRound2.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound2+4)
MOVT	R0, #hi_addr(_ButtonRound2+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,483 :: 		ButtonRound2.Left            = 60;
MOVS	R1, #60
MOVW	R0, #lo_addr(_ButtonRound2+6)
MOVT	R0, #hi_addr(_ButtonRound2+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,484 :: 		ButtonRound2.Top             = 250;
MOVS	R1, #250
MOVW	R0, #lo_addr(_ButtonRound2+8)
MOVT	R0, #hi_addr(_ButtonRound2+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,485 :: 		ButtonRound2.Width           = 215;
MOVS	R1, #215
MOVW	R0, #lo_addr(_ButtonRound2+10)
MOVT	R0, #hi_addr(_ButtonRound2+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,486 :: 		ButtonRound2.Height          = 85;
MOVS	R1, #85
MOVW	R0, #lo_addr(_ButtonRound2+12)
MOVT	R0, #hi_addr(_ButtonRound2+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,487 :: 		ButtonRound2.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+14)
MOVT	R0, #hi_addr(_ButtonRound2+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,488 :: 		ButtonRound2.Pen_Color       = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound2+16)
MOVT	R0, #hi_addr(_ButtonRound2+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,489 :: 		ButtonRound2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+18)
MOVT	R0, #hi_addr(_ButtonRound2+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,490 :: 		ButtonRound2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+19)
MOVT	R0, #hi_addr(_ButtonRound2+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,491 :: 		ButtonRound2.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+20)
MOVT	R0, #hi_addr(_ButtonRound2+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,492 :: 		ButtonRound2.Caption         = ButtonRound2_Caption;
MOVW	R1, #lo_addr(_ButtonRound2_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound2_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound2+24)
MOVT	R0, #hi_addr(_ButtonRound2+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,493 :: 		ButtonRound2.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+28)
MOVT	R0, #hi_addr(_ButtonRound2+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,494 :: 		ButtonRound2.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+29)
MOVT	R0, #hi_addr(_ButtonRound2+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,495 :: 		ButtonRound2.FontName        = Times_New_Roman19x23_Regular;
MOVW	R6, #lo_addr(_Times_New_Roman19x23_Regular+0)
MOVT	R6, #hi_addr(_Times_New_Roman19x23_Regular+0)
MOVW	R0, #lo_addr(_ButtonRound2+32)
MOVT	R0, #hi_addr(_ButtonRound2+32)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,496 :: 		ButtonRound2.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound2+49)
MOVT	R0, #hi_addr(_ButtonRound2+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,497 :: 		ButtonRound2.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound2+36)
MOVT	R0, #hi_addr(_ButtonRound2+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,498 :: 		ButtonRound2.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+38)
MOVT	R0, #hi_addr(_ButtonRound2+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,499 :: 		ButtonRound2.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+39)
MOVT	R0, #hi_addr(_ButtonRound2+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,500 :: 		ButtonRound2.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound2+40)
MOVT	R0, #hi_addr(_ButtonRound2+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,501 :: 		ButtonRound2.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound2+42)
MOVT	R0, #hi_addr(_ButtonRound2+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,502 :: 		ButtonRound2.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound2+44)
MOVT	R0, #hi_addr(_ButtonRound2+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,503 :: 		ButtonRound2.Color           = 0x3193;
MOVW	R1, #12691
MOVW	R0, #lo_addr(_ButtonRound2+46)
MOVT	R0, #hi_addr(_ButtonRound2+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,504 :: 		ButtonRound2.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound2+50)
MOVT	R0, #hi_addr(_ButtonRound2+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,505 :: 		ButtonRound2.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound2+48)
MOVT	R0, #hi_addr(_ButtonRound2+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,506 :: 		ButtonRound2.OnClickPtr      = ButtonRound2OnClick;
MOVW	R1, #lo_addr(_ButtonRound2OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound2OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound2+60)
MOVT	R0, #hi_addr(_ButtonRound2+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,508 :: 		BoxRound1.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_BoxRound1+0)
MOVT	R0, #hi_addr(_BoxRound1+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,509 :: 		BoxRound1.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_BoxRound1+4)
MOVT	R0, #hi_addr(_BoxRound1+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,510 :: 		BoxRound1.Left            = 320;
MOVW	R1, #320
MOVW	R0, #lo_addr(_BoxRound1+6)
MOVT	R0, #hi_addr(_BoxRound1+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,511 :: 		BoxRound1.Top             = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_BoxRound1+8)
MOVT	R0, #hi_addr(_BoxRound1+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,512 :: 		BoxRound1.Width           = 452;
MOVW	R1, #452
MOVW	R0, #lo_addr(_BoxRound1+10)
MOVT	R0, #hi_addr(_BoxRound1+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,513 :: 		BoxRound1.Height          = 440;
MOVW	R1, #440
MOVW	R0, #lo_addr(_BoxRound1+12)
MOVT	R0, #hi_addr(_BoxRound1+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,514 :: 		BoxRound1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+14)
MOVT	R0, #hi_addr(_BoxRound1+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,515 :: 		BoxRound1.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+16)
MOVT	R0, #hi_addr(_BoxRound1+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,516 :: 		BoxRound1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+18)
MOVT	R0, #hi_addr(_BoxRound1+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,517 :: 		BoxRound1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+19)
MOVT	R0, #hi_addr(_BoxRound1+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,518 :: 		BoxRound1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+20)
MOVT	R0, #hi_addr(_BoxRound1+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,519 :: 		BoxRound1.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+21)
MOVT	R0, #hi_addr(_BoxRound1+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,520 :: 		BoxRound1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound1+22)
MOVT	R0, #hi_addr(_BoxRound1+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,521 :: 		BoxRound1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound1+24)
MOVT	R0, #hi_addr(_BoxRound1+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,522 :: 		BoxRound1.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound1+26)
MOVT	R0, #hi_addr(_BoxRound1+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,523 :: 		BoxRound1.Color           = 0x4208;
MOVW	R1, #16904
MOVW	R0, #lo_addr(_BoxRound1+28)
MOVT	R0, #hi_addr(_BoxRound1+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,524 :: 		BoxRound1.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound1+31)
MOVT	R0, #hi_addr(_BoxRound1+31)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,525 :: 		BoxRound1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound1+32)
MOVT	R0, #hi_addr(_BoxRound1+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,526 :: 		BoxRound1.Corner_Radius   = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BoxRound1+30)
MOVT	R0, #hi_addr(_BoxRound1+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,528 :: 		Label2.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label2+0)
MOVT	R0, #hi_addr(_Label2+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,529 :: 		Label2.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label2+4)
MOVT	R0, #hi_addr(_Label2+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,530 :: 		Label2.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label2+6)
MOVT	R0, #hi_addr(_Label2+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,531 :: 		Label2.Top             = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_Label2+8)
MOVT	R0, #hi_addr(_Label2+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,532 :: 		Label2.Width           = 403;
MOVW	R1, #403
MOVW	R0, #lo_addr(_Label2+10)
MOVT	R0, #hi_addr(_Label2+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,533 :: 		Label2.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label2+12)
MOVT	R0, #hi_addr(_Label2+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,534 :: 		Label2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+27)
MOVT	R0, #hi_addr(_Label2+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,535 :: 		Label2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label2+28)
MOVT	R0, #hi_addr(_Label2+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,536 :: 		Label2.Caption         = Label2_Caption;
MOVW	R1, #lo_addr(_Label2_Caption+0)
MOVT	R1, #hi_addr(_Label2_Caption+0)
MOVW	R0, #lo_addr(_Label2+16)
MOVT	R0, #hi_addr(_Label2+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,537 :: 		Label2.FontName        = Times_New_Roman18x21_Regular;
MOVW	R5, #lo_addr(_Times_New_Roman18x21_Regular+0)
MOVT	R5, #hi_addr(_Times_New_Roman18x21_Regular+0)
MOVW	R0, #lo_addr(_Label2+20)
MOVT	R0, #hi_addr(_Label2+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,538 :: 		Label2.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label2+24)
MOVT	R0, #hi_addr(_Label2+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,539 :: 		Label2.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label2+26)
MOVT	R0, #hi_addr(_Label2+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,541 :: 		Label3.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label3+0)
MOVT	R0, #hi_addr(_Label3+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,542 :: 		Label3.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label3+4)
MOVT	R0, #hi_addr(_Label3+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,543 :: 		Label3.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label3+6)
MOVT	R0, #hi_addr(_Label3+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,544 :: 		Label3.Top             = 75;
MOVS	R1, #75
MOVW	R0, #lo_addr(_Label3+8)
MOVT	R0, #hi_addr(_Label3+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,545 :: 		Label3.Width           = 406;
MOVW	R1, #406
MOVW	R0, #lo_addr(_Label3+10)
MOVT	R0, #hi_addr(_Label3+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,546 :: 		Label3.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label3+12)
MOVT	R0, #hi_addr(_Label3+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,547 :: 		Label3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+27)
MOVT	R0, #hi_addr(_Label3+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,548 :: 		Label3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label3+28)
MOVT	R0, #hi_addr(_Label3+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,549 :: 		Label3.Caption         = Label3_Caption;
MOVW	R1, #lo_addr(_Label3_Caption+0)
MOVT	R1, #hi_addr(_Label3_Caption+0)
MOVW	R0, #lo_addr(_Label3+16)
MOVT	R0, #hi_addr(_Label3+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,550 :: 		Label3.FontName        = Times_New_Roman18x21_Regular;
MOVW	R0, #lo_addr(_Label3+20)
MOVT	R0, #hi_addr(_Label3+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,551 :: 		Label3.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label3+24)
MOVT	R0, #hi_addr(_Label3+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,552 :: 		Label3.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label3+26)
MOVT	R0, #hi_addr(_Label3+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,554 :: 		Label4.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label4+0)
MOVT	R0, #hi_addr(_Label4+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,555 :: 		Label4.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Label4+4)
MOVT	R0, #hi_addr(_Label4+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,556 :: 		Label4.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label4+6)
MOVT	R0, #hi_addr(_Label4+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,557 :: 		Label4.Top             = 105;
MOVS	R1, #105
MOVW	R0, #lo_addr(_Label4+8)
MOVT	R0, #hi_addr(_Label4+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,558 :: 		Label4.Width           = 163;
MOVS	R1, #163
MOVW	R0, #lo_addr(_Label4+10)
MOVT	R0, #hi_addr(_Label4+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,559 :: 		Label4.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label4+12)
MOVT	R0, #hi_addr(_Label4+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,560 :: 		Label4.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+27)
MOVT	R0, #hi_addr(_Label4+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,561 :: 		Label4.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label4+28)
MOVT	R0, #hi_addr(_Label4+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,562 :: 		Label4.Caption         = Label4_Caption;
MOVW	R1, #lo_addr(_Label4_Caption+0)
MOVT	R1, #hi_addr(_Label4_Caption+0)
MOVW	R0, #lo_addr(_Label4+16)
MOVT	R0, #hi_addr(_Label4+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,563 :: 		Label4.FontName        = Times_New_Roman18x21_Regular;
MOVW	R0, #lo_addr(_Label4+20)
MOVT	R0, #hi_addr(_Label4+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,564 :: 		Label4.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label4+24)
MOVT	R0, #hi_addr(_Label4+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,565 :: 		Label4.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label4+26)
MOVT	R0, #hi_addr(_Label4+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,567 :: 		Label5.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label5+0)
MOVT	R0, #hi_addr(_Label5+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,568 :: 		Label5.Order           = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Label5+4)
MOVT	R0, #hi_addr(_Label5+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,569 :: 		Label5.Left            = 490;
MOVW	R1, #490
MOVW	R0, #lo_addr(_Label5+6)
MOVT	R0, #hi_addr(_Label5+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,570 :: 		Label5.Top             = 105;
MOVS	R1, #105
MOVW	R0, #lo_addr(_Label5+8)
MOVT	R0, #hi_addr(_Label5+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,571 :: 		Label5.Width           = 284;
MOVW	R1, #284
MOVW	R0, #lo_addr(_Label5+10)
MOVT	R0, #hi_addr(_Label5+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,572 :: 		Label5.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label5+12)
MOVT	R0, #hi_addr(_Label5+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,573 :: 		Label5.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+27)
MOVT	R0, #hi_addr(_Label5+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,574 :: 		Label5.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label5+28)
MOVT	R0, #hi_addr(_Label5+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,575 :: 		Label5.Caption         = Label5_Caption;
MOVW	R1, #lo_addr(_Label5_Caption+0)
MOVT	R1, #hi_addr(_Label5_Caption+0)
MOVW	R0, #lo_addr(_Label5+16)
MOVT	R0, #hi_addr(_Label5+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,576 :: 		Label5.FontName        = Times_New_Roman17x21_Italic;
MOVW	R4, #lo_addr(_Times_New_Roman17x21_Italic+0)
MOVT	R4, #hi_addr(_Times_New_Roman17x21_Italic+0)
MOVW	R0, #lo_addr(_Label5+20)
MOVT	R0, #hi_addr(_Label5+20)
STR	R4, [R0, #0]
;MyProject_TA_driver.c,577 :: 		Label5.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label5+24)
MOVT	R0, #hi_addr(_Label5+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,578 :: 		Label5.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label5+26)
MOVT	R0, #hi_addr(_Label5+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,580 :: 		Label6.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label6+0)
MOVT	R0, #hi_addr(_Label6+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,581 :: 		Label6.Order           = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Label6+4)
MOVT	R0, #hi_addr(_Label6+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,582 :: 		Label6.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label6+6)
MOVT	R0, #hi_addr(_Label6+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,583 :: 		Label6.Top             = 159;
MOVS	R1, #159
MOVW	R0, #lo_addr(_Label6+8)
MOVT	R0, #hi_addr(_Label6+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,584 :: 		Label6.Width           = 208;
MOVS	R1, #208
MOVW	R0, #lo_addr(_Label6+10)
MOVT	R0, #hi_addr(_Label6+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,585 :: 		Label6.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label6+12)
MOVT	R0, #hi_addr(_Label6+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,586 :: 		Label6.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+27)
MOVT	R0, #hi_addr(_Label6+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,587 :: 		Label6.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label6+28)
MOVT	R0, #hi_addr(_Label6+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,588 :: 		Label6.Caption         = Label6_Caption;
MOVW	R1, #lo_addr(_Label6_Caption+0)
MOVT	R1, #hi_addr(_Label6_Caption+0)
MOVW	R0, #lo_addr(_Label6+16)
MOVT	R0, #hi_addr(_Label6+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,589 :: 		Label6.FontName        = Times_New_Roman15x19_Regular;
MOVW	R3, #lo_addr(_Times_New_Roman15x19_Regular+0)
MOVT	R3, #hi_addr(_Times_New_Roman15x19_Regular+0)
MOVW	R0, #lo_addr(_Label6+20)
MOVT	R0, #hi_addr(_Label6+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,590 :: 		Label6.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label6+24)
MOVT	R0, #hi_addr(_Label6+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,591 :: 		Label6.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label6+26)
MOVT	R0, #hi_addr(_Label6+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,593 :: 		Label7.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label7+0)
MOVT	R0, #hi_addr(_Label7+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,594 :: 		Label7.Order           = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Label7+4)
MOVT	R0, #hi_addr(_Label7+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,595 :: 		Label7.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label7+6)
MOVT	R0, #hi_addr(_Label7+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,596 :: 		Label7.Top             = 185;
MOVS	R1, #185
MOVW	R0, #lo_addr(_Label7+8)
MOVT	R0, #hi_addr(_Label7+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,597 :: 		Label7.Width           = 121;
MOVS	R1, #121
MOVW	R0, #lo_addr(_Label7+10)
MOVT	R0, #hi_addr(_Label7+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,598 :: 		Label7.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label7+12)
MOVT	R0, #hi_addr(_Label7+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,599 :: 		Label7.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+27)
MOVT	R0, #hi_addr(_Label7+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,600 :: 		Label7.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label7+28)
MOVT	R0, #hi_addr(_Label7+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,601 :: 		Label7.Caption         = Label7_Caption;
MOVW	R1, #lo_addr(_Label7_Caption+0)
MOVT	R1, #hi_addr(_Label7_Caption+0)
MOVW	R0, #lo_addr(_Label7+16)
MOVT	R0, #hi_addr(_Label7+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,602 :: 		Label7.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label7+20)
MOVT	R0, #hi_addr(_Label7+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,603 :: 		Label7.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label7+24)
MOVT	R0, #hi_addr(_Label7+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,604 :: 		Label7.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label7+26)
MOVT	R0, #hi_addr(_Label7+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,606 :: 		Label8.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label8+0)
MOVT	R0, #hi_addr(_Label8+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,607 :: 		Label8.Order           = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Label8+4)
MOVT	R0, #hi_addr(_Label8+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,608 :: 		Label8.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label8+6)
MOVT	R0, #hi_addr(_Label8+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,609 :: 		Label8.Top             = 360;
MOVW	R1, #360
MOVW	R0, #lo_addr(_Label8+8)
MOVT	R0, #hi_addr(_Label8+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,610 :: 		Label8.Width           = 116;
MOVS	R1, #116
MOVW	R0, #lo_addr(_Label8+10)
MOVT	R0, #hi_addr(_Label8+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,611 :: 		Label8.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label8+12)
MOVT	R0, #hi_addr(_Label8+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,612 :: 		Label8.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+27)
MOVT	R0, #hi_addr(_Label8+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,613 :: 		Label8.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label8+28)
MOVT	R0, #hi_addr(_Label8+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,614 :: 		Label8.Caption         = Label8_Caption;
MOVW	R1, #lo_addr(_Label8_Caption+0)
MOVT	R1, #hi_addr(_Label8_Caption+0)
MOVW	R0, #lo_addr(_Label8+16)
MOVT	R0, #hi_addr(_Label8+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,615 :: 		Label8.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label8+20)
MOVT	R0, #hi_addr(_Label8+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,616 :: 		Label8.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label8+24)
MOVT	R0, #hi_addr(_Label8+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,617 :: 		Label8.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label8+26)
MOVT	R0, #hi_addr(_Label8+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,619 :: 		Label9.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label9+0)
MOVT	R0, #hi_addr(_Label9+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,620 :: 		Label9.Order           = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label9+4)
MOVT	R0, #hi_addr(_Label9+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,621 :: 		Label9.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label9+6)
MOVT	R0, #hi_addr(_Label9+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,622 :: 		Label9.Top             = 380;
MOVW	R1, #380
MOVW	R0, #lo_addr(_Label9+8)
MOVT	R0, #hi_addr(_Label9+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,623 :: 		Label9.Width           = 206;
MOVS	R1, #206
MOVW	R0, #lo_addr(_Label9+10)
MOVT	R0, #hi_addr(_Label9+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,624 :: 		Label9.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label9+12)
MOVT	R0, #hi_addr(_Label9+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,625 :: 		Label9.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+27)
MOVT	R0, #hi_addr(_Label9+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,626 :: 		Label9.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label9+28)
MOVT	R0, #hi_addr(_Label9+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,627 :: 		Label9.Caption         = Label9_Caption;
MOVW	R1, #lo_addr(_Label9_Caption+0)
MOVT	R1, #hi_addr(_Label9_Caption+0)
MOVW	R0, #lo_addr(_Label9+16)
MOVT	R0, #hi_addr(_Label9+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,628 :: 		Label9.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label9+20)
MOVT	R0, #hi_addr(_Label9+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,629 :: 		Label9.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label9+24)
MOVT	R0, #hi_addr(_Label9+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,630 :: 		Label9.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label9+26)
MOVT	R0, #hi_addr(_Label9+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,632 :: 		Label10.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label10+0)
MOVT	R0, #hi_addr(_Label10+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,633 :: 		Label10.Order           = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label10+4)
MOVT	R0, #hi_addr(_Label10+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,634 :: 		Label10.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label10+6)
MOVT	R0, #hi_addr(_Label10+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,635 :: 		Label10.Top             = 400;
MOVW	R1, #400
MOVW	R0, #lo_addr(_Label10+8)
MOVT	R0, #hi_addr(_Label10+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,636 :: 		Label10.Width           = 345;
MOVW	R1, #345
MOVW	R0, #lo_addr(_Label10+10)
MOVT	R0, #hi_addr(_Label10+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,637 :: 		Label10.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label10+12)
MOVT	R0, #hi_addr(_Label10+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,638 :: 		Label10.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+27)
MOVT	R0, #hi_addr(_Label10+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,639 :: 		Label10.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label10+28)
MOVT	R0, #hi_addr(_Label10+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,640 :: 		Label10.Caption         = Label10_Caption;
MOVW	R1, #lo_addr(_Label10_Caption+0)
MOVT	R1, #hi_addr(_Label10_Caption+0)
MOVW	R0, #lo_addr(_Label10+16)
MOVT	R0, #hi_addr(_Label10+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,641 :: 		Label10.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label10+20)
MOVT	R0, #hi_addr(_Label10+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,642 :: 		Label10.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label10+24)
MOVT	R0, #hi_addr(_Label10+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,643 :: 		Label10.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label10+26)
MOVT	R0, #hi_addr(_Label10+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,645 :: 		Label11.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label11+0)
MOVT	R0, #hi_addr(_Label11+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,646 :: 		Label11.Order           = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label11+4)
MOVT	R0, #hi_addr(_Label11+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,647 :: 		Label11.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label11+6)
MOVT	R0, #hi_addr(_Label11+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,648 :: 		Label11.Top             = 420;
MOVW	R1, #420
MOVW	R0, #lo_addr(_Label11+8)
MOVT	R0, #hi_addr(_Label11+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,649 :: 		Label11.Width           = 256;
MOVW	R1, #256
MOVW	R0, #lo_addr(_Label11+10)
MOVT	R0, #hi_addr(_Label11+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,650 :: 		Label11.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label11+12)
MOVT	R0, #hi_addr(_Label11+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,651 :: 		Label11.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+27)
MOVT	R0, #hi_addr(_Label11+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,652 :: 		Label11.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label11+28)
MOVT	R0, #hi_addr(_Label11+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,653 :: 		Label11.Caption         = Label11_Caption;
MOVW	R1, #lo_addr(_Label11_Caption+0)
MOVT	R1, #hi_addr(_Label11_Caption+0)
MOVW	R0, #lo_addr(_Label11+16)
MOVT	R0, #hi_addr(_Label11+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,654 :: 		Label11.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label11+20)
MOVT	R0, #hi_addr(_Label11+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,655 :: 		Label11.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label11+24)
MOVT	R0, #hi_addr(_Label11+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,656 :: 		Label11.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label11+26)
MOVT	R0, #hi_addr(_Label11+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,658 :: 		Label12.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label12+0)
MOVT	R0, #hi_addr(_Label12+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,659 :: 		Label12.Order           = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label12+4)
MOVT	R0, #hi_addr(_Label12+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,660 :: 		Label12.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label12+6)
MOVT	R0, #hi_addr(_Label12+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,661 :: 		Label12.Top             = 310;
MOVW	R1, #310
MOVW	R0, #lo_addr(_Label12+8)
MOVT	R0, #hi_addr(_Label12+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,662 :: 		Label12.Width           = 233;
MOVS	R1, #233
MOVW	R0, #lo_addr(_Label12+10)
MOVT	R0, #hi_addr(_Label12+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,663 :: 		Label12.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label12+12)
MOVT	R0, #hi_addr(_Label12+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,664 :: 		Label12.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+27)
MOVT	R0, #hi_addr(_Label12+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,665 :: 		Label12.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label12+28)
MOVT	R0, #hi_addr(_Label12+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,666 :: 		Label12.Caption         = Label12_Caption;
MOVW	R1, #lo_addr(_Label12_Caption+0)
MOVT	R1, #hi_addr(_Label12_Caption+0)
MOVW	R0, #lo_addr(_Label12+16)
MOVT	R0, #hi_addr(_Label12+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,667 :: 		Label12.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label12+20)
MOVT	R0, #hi_addr(_Label12+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,668 :: 		Label12.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label12+24)
MOVT	R0, #hi_addr(_Label12+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,669 :: 		Label12.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label12+26)
MOVT	R0, #hi_addr(_Label12+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,671 :: 		Label13.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label13+0)
MOVT	R0, #hi_addr(_Label13+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,672 :: 		Label13.Order           = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label13+4)
MOVT	R0, #hi_addr(_Label13+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,673 :: 		Label13.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label13+6)
MOVT	R0, #hi_addr(_Label13+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,674 :: 		Label13.Top             = 240;
MOVS	R1, #240
MOVW	R0, #lo_addr(_Label13+8)
MOVT	R0, #hi_addr(_Label13+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,675 :: 		Label13.Width           = 336;
MOVW	R1, #336
MOVW	R0, #lo_addr(_Label13+10)
MOVT	R0, #hi_addr(_Label13+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,676 :: 		Label13.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label13+12)
MOVT	R0, #hi_addr(_Label13+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,677 :: 		Label13.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+27)
MOVT	R0, #hi_addr(_Label13+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,678 :: 		Label13.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label13+28)
MOVT	R0, #hi_addr(_Label13+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,679 :: 		Label13.Caption         = Label13_Caption;
MOVW	R1, #lo_addr(_Label13_Caption+0)
MOVT	R1, #hi_addr(_Label13_Caption+0)
MOVW	R0, #lo_addr(_Label13+16)
MOVT	R0, #hi_addr(_Label13+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,680 :: 		Label13.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label13+20)
MOVT	R0, #hi_addr(_Label13+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,681 :: 		Label13.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label13+24)
MOVT	R0, #hi_addr(_Label13+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,682 :: 		Label13.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label13+26)
MOVT	R0, #hi_addr(_Label13+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,684 :: 		Label14.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label14+0)
MOVT	R0, #hi_addr(_Label14+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,685 :: 		Label14.Order           = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label14+4)
MOVT	R0, #hi_addr(_Label14+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,686 :: 		Label14.Left            = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_Label14+6)
MOVT	R0, #hi_addr(_Label14+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,687 :: 		Label14.Top             = 260;
MOVW	R1, #260
MOVW	R0, #lo_addr(_Label14+8)
MOVT	R0, #hi_addr(_Label14+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,688 :: 		Label14.Width           = 348;
MOVW	R1, #348
MOVW	R0, #lo_addr(_Label14+10)
MOVT	R0, #hi_addr(_Label14+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,689 :: 		Label14.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label14+12)
MOVT	R0, #hi_addr(_Label14+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,690 :: 		Label14.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+27)
MOVT	R0, #hi_addr(_Label14+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,691 :: 		Label14.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label14+28)
MOVT	R0, #hi_addr(_Label14+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,692 :: 		Label14.Caption         = Label14_Caption;
MOVW	R1, #lo_addr(_Label14_Caption+0)
MOVT	R1, #hi_addr(_Label14_Caption+0)
MOVW	R0, #lo_addr(_Label14+16)
MOVT	R0, #hi_addr(_Label14+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,693 :: 		Label14.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label14+20)
MOVT	R0, #hi_addr(_Label14+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,694 :: 		Label14.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label14+24)
MOVT	R0, #hi_addr(_Label14+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,695 :: 		Label14.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label14+26)
MOVT	R0, #hi_addr(_Label14+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,697 :: 		Label27.OwnerScreen     = &Screen1;
MOVW	R1, #lo_addr(_Screen1+0)
MOVT	R1, #hi_addr(_Screen1+0)
MOVW	R0, #lo_addr(_Label27+0)
MOVT	R0, #hi_addr(_Label27+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,698 :: 		Label27.Order           = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label27+4)
MOVT	R0, #hi_addr(_Label27+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,699 :: 		Label27.Left            = 231;
MOVS	R1, #231
MOVW	R0, #lo_addr(_Label27+6)
MOVT	R0, #hi_addr(_Label27+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,700 :: 		Label27.Top             = 370;
MOVW	R1, #370
MOVW	R0, #lo_addr(_Label27+8)
MOVT	R0, #hi_addr(_Label27+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,701 :: 		Label27.Width           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+10)
MOVT	R0, #hi_addr(_Label27+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,702 :: 		Label27.Height          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+12)
MOVT	R0, #hi_addr(_Label27+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,703 :: 		Label27.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+27)
MOVT	R0, #hi_addr(_Label27+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,704 :: 		Label27.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label27+28)
MOVT	R0, #hi_addr(_Label27+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,705 :: 		Label27.Caption         = Label27_Caption;
MOVW	R1, #lo_addr(_Label27_Caption+0)
MOVT	R1, #hi_addr(_Label27_Caption+0)
MOVW	R0, #lo_addr(_Label27+16)
MOVT	R0, #hi_addr(_Label27+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,706 :: 		Label27.FontName        = Times_New_Roman25x31_Regular;
MOVW	R2, #lo_addr(_Times_New_Roman25x31_Regular+0)
MOVT	R2, #hi_addr(_Times_New_Roman25x31_Regular+0)
MOVW	R0, #lo_addr(_Label27+20)
MOVT	R0, #hi_addr(_Label27+20)
STR	R2, [R0, #0]
;MyProject_TA_driver.c,707 :: 		Label27.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+24)
MOVT	R0, #hi_addr(_Label27+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,708 :: 		Label27.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label27+26)
MOVT	R0, #hi_addr(_Label27+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,710 :: 		Box5.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Box5+0)
MOVT	R0, #hi_addr(_Box5+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,711 :: 		Box5.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box5+4)
MOVT	R0, #hi_addr(_Box5+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,712 :: 		Box5.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box5+6)
MOVT	R0, #hi_addr(_Box5+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,713 :: 		Box5.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box5+8)
MOVT	R0, #hi_addr(_Box5+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,714 :: 		Box5.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box5+10)
MOVT	R0, #hi_addr(_Box5+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,715 :: 		Box5.Height          = 460;
MOVW	R1, #460
MOVW	R0, #lo_addr(_Box5+12)
MOVT	R0, #hi_addr(_Box5+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,716 :: 		Box5.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box5+14)
MOVT	R0, #hi_addr(_Box5+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,717 :: 		Box5.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box5+16)
MOVT	R0, #hi_addr(_Box5+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,718 :: 		Box5.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box5+18)
MOVT	R0, #hi_addr(_Box5+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,719 :: 		Box5.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box5+19)
MOVT	R0, #hi_addr(_Box5+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,720 :: 		Box5.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box5+20)
MOVT	R0, #hi_addr(_Box5+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,721 :: 		Box5.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box5+21)
MOVT	R0, #hi_addr(_Box5+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,722 :: 		Box5.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box5+22)
MOVT	R0, #hi_addr(_Box5+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,723 :: 		Box5.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box5+24)
MOVT	R0, #hi_addr(_Box5+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,724 :: 		Box5.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box5+26)
MOVT	R0, #hi_addr(_Box5+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,725 :: 		Box5.Color           = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box5+28)
MOVT	R0, #hi_addr(_Box5+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,726 :: 		Box5.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box5+30)
MOVT	R0, #hi_addr(_Box5+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,727 :: 		Box5.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box5+32)
MOVT	R0, #hi_addr(_Box5+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,729 :: 		Label16.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label16+0)
MOVT	R0, #hi_addr(_Label16+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,730 :: 		Label16.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+4)
MOVT	R0, #hi_addr(_Label16+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,731 :: 		Label16.Left            = 210;
MOVS	R1, #210
MOVW	R0, #lo_addr(_Label16+6)
MOVT	R0, #hi_addr(_Label16+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,732 :: 		Label16.Top             = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_Label16+8)
MOVT	R0, #hi_addr(_Label16+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,733 :: 		Label16.Width           = 394;
MOVW	R1, #394
MOVW	R0, #lo_addr(_Label16+10)
MOVT	R0, #hi_addr(_Label16+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,734 :: 		Label16.Height          = 33;
MOVS	R1, #33
MOVW	R0, #lo_addr(_Label16+12)
MOVT	R0, #hi_addr(_Label16+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,735 :: 		Label16.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+27)
MOVT	R0, #hi_addr(_Label16+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,736 :: 		Label16.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label16+28)
MOVT	R0, #hi_addr(_Label16+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,737 :: 		Label16.Caption         = Label16_Caption;
MOVW	R1, #lo_addr(_Label16_Caption+0)
MOVT	R1, #hi_addr(_Label16_Caption+0)
MOVW	R0, #lo_addr(_Label16+16)
MOVT	R0, #hi_addr(_Label16+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,738 :: 		Label16.FontName        = Times_New_Roman25x31_Italic;
MOVW	R1, #lo_addr(_Times_New_Roman25x31_Italic+0)
MOVT	R1, #hi_addr(_Times_New_Roman25x31_Italic+0)
MOVW	R0, #lo_addr(_Label16+20)
MOVT	R0, #hi_addr(_Label16+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,739 :: 		Label16.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+24)
MOVT	R0, #hi_addr(_Label16+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,740 :: 		Label16.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label16+26)
MOVT	R0, #hi_addr(_Label16+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,742 :: 		ButtonRound6.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_ButtonRound6+0)
MOVT	R0, #hi_addr(_ButtonRound6+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,743 :: 		ButtonRound6.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound6+4)
MOVT	R0, #hi_addr(_ButtonRound6+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,744 :: 		ButtonRound6.Left            = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_ButtonRound6+6)
MOVT	R0, #hi_addr(_ButtonRound6+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,745 :: 		ButtonRound6.Top             = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound6+8)
MOVT	R0, #hi_addr(_ButtonRound6+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,746 :: 		ButtonRound6.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound6+10)
MOVT	R0, #hi_addr(_ButtonRound6+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,747 :: 		ButtonRound6.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound6+12)
MOVT	R0, #hi_addr(_ButtonRound6+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,748 :: 		ButtonRound6.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+14)
MOVT	R0, #hi_addr(_ButtonRound6+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,749 :: 		ButtonRound6.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+16)
MOVT	R0, #hi_addr(_ButtonRound6+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,750 :: 		ButtonRound6.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+18)
MOVT	R0, #hi_addr(_ButtonRound6+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,751 :: 		ButtonRound6.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+19)
MOVT	R0, #hi_addr(_ButtonRound6+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,752 :: 		ButtonRound6.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+20)
MOVT	R0, #hi_addr(_ButtonRound6+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,753 :: 		ButtonRound6.Caption         = ButtonRound6_Caption;
MOVW	R1, #lo_addr(_ButtonRound6_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound6_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound6+24)
MOVT	R0, #hi_addr(_ButtonRound6+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,754 :: 		ButtonRound6.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+28)
MOVT	R0, #hi_addr(_ButtonRound6+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,755 :: 		ButtonRound6.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+29)
MOVT	R0, #hi_addr(_ButtonRound6+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,756 :: 		ButtonRound6.FontName        = Times_New_Roman19x23_Regular;
MOVW	R0, #lo_addr(_ButtonRound6+32)
MOVT	R0, #hi_addr(_ButtonRound6+32)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,757 :: 		ButtonRound6.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound6+49)
MOVT	R0, #hi_addr(_ButtonRound6+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,758 :: 		ButtonRound6.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound6+36)
MOVT	R0, #hi_addr(_ButtonRound6+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,759 :: 		ButtonRound6.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+38)
MOVT	R0, #hi_addr(_ButtonRound6+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,760 :: 		ButtonRound6.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+39)
MOVT	R0, #hi_addr(_ButtonRound6+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,761 :: 		ButtonRound6.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound6+40)
MOVT	R0, #hi_addr(_ButtonRound6+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,762 :: 		ButtonRound6.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound6+42)
MOVT	R0, #hi_addr(_ButtonRound6+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,763 :: 		ButtonRound6.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound6+44)
MOVT	R0, #hi_addr(_ButtonRound6+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,764 :: 		ButtonRound6.Color           = 0xD0A2;
MOVW	R1, #53410
MOVW	R0, #lo_addr(_ButtonRound6+46)
MOVT	R0, #hi_addr(_ButtonRound6+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,765 :: 		ButtonRound6.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound6+50)
MOVT	R0, #hi_addr(_ButtonRound6+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,766 :: 		ButtonRound6.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound6+48)
MOVT	R0, #hi_addr(_ButtonRound6+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,767 :: 		ButtonRound6.OnClickPtr      = ButtonRound6OnClick;
MOVW	R1, #lo_addr(_ButtonRound6OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound6OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound6+60)
MOVT	R0, #hi_addr(_ButtonRound6+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,769 :: 		BoxRound2.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_BoxRound2+0)
MOVT	R0, #hi_addr(_BoxRound2+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,770 :: 		BoxRound2.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BoxRound2+4)
MOVT	R0, #hi_addr(_BoxRound2+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,771 :: 		BoxRound2.Left            = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_BoxRound2+6)
MOVT	R0, #hi_addr(_BoxRound2+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,772 :: 		BoxRound2.Top             = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_BoxRound2+8)
MOVT	R0, #hi_addr(_BoxRound2+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,773 :: 		BoxRound2.Width           = 375;
MOVW	R1, #375
MOVW	R0, #lo_addr(_BoxRound2+10)
MOVT	R0, #hi_addr(_BoxRound2+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,774 :: 		BoxRound2.Height          = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_BoxRound2+12)
MOVT	R0, #hi_addr(_BoxRound2+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,775 :: 		BoxRound2.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_BoxRound2+14)
MOVT	R0, #hi_addr(_BoxRound2+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,776 :: 		BoxRound2.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound2+16)
MOVT	R0, #hi_addr(_BoxRound2+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,777 :: 		BoxRound2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound2+18)
MOVT	R0, #hi_addr(_BoxRound2+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,778 :: 		BoxRound2.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound2+19)
MOVT	R0, #hi_addr(_BoxRound2+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,779 :: 		BoxRound2.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound2+20)
MOVT	R0, #hi_addr(_BoxRound2+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,780 :: 		BoxRound2.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound2+21)
MOVT	R0, #hi_addr(_BoxRound2+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,781 :: 		BoxRound2.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound2+22)
MOVT	R0, #hi_addr(_BoxRound2+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,782 :: 		BoxRound2.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound2+24)
MOVT	R0, #hi_addr(_BoxRound2+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,783 :: 		BoxRound2.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound2+26)
MOVT	R0, #hi_addr(_BoxRound2+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,784 :: 		BoxRound2.Color           = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound2+28)
MOVT	R0, #hi_addr(_BoxRound2+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,785 :: 		BoxRound2.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound2+31)
MOVT	R0, #hi_addr(_BoxRound2+31)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,786 :: 		BoxRound2.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound2+32)
MOVT	R0, #hi_addr(_BoxRound2+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,787 :: 		BoxRound2.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_BoxRound2+30)
MOVT	R0, #hi_addr(_BoxRound2+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,789 :: 		Label20.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label20+0)
MOVT	R0, #hi_addr(_Label20+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,790 :: 		Label20.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label20+4)
MOVT	R0, #hi_addr(_Label20+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,791 :: 		Label20.Left            = 30;
MOVS	R1, #30
MOVW	R0, #lo_addr(_Label20+6)
MOVT	R0, #hi_addr(_Label20+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,792 :: 		Label20.Top             = 80;
MOVS	R1, #80
MOVW	R0, #lo_addr(_Label20+8)
MOVT	R0, #hi_addr(_Label20+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,793 :: 		Label20.Width           = 120;
MOVS	R1, #120
MOVW	R0, #lo_addr(_Label20+10)
MOVT	R0, #hi_addr(_Label20+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,794 :: 		Label20.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label20+12)
MOVT	R0, #hi_addr(_Label20+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,795 :: 		Label20.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+27)
MOVT	R0, #hi_addr(_Label20+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,796 :: 		Label20.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label20+28)
MOVT	R0, #hi_addr(_Label20+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,797 :: 		Label20.Caption         = Label20_Caption;
MOVW	R1, #lo_addr(_Label20_Caption+0)
MOVT	R1, #hi_addr(_Label20_Caption+0)
MOVW	R0, #lo_addr(_Label20+16)
MOVT	R0, #hi_addr(_Label20+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,798 :: 		Label20.FontName        = Times_New_Roman17x21_Italic;
MOVW	R0, #lo_addr(_Label20+20)
MOVT	R0, #hi_addr(_Label20+20)
STR	R4, [R0, #0]
;MyProject_TA_driver.c,799 :: 		Label20.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+24)
MOVT	R0, #hi_addr(_Label20+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,800 :: 		Label20.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label20+26)
MOVT	R0, #hi_addr(_Label20+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,802 :: 		Label21.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label21+0)
MOVT	R0, #hi_addr(_Label21+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,803 :: 		Label21.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label21+4)
MOVT	R0, #hi_addr(_Label21+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,804 :: 		Label21.Left            = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_Label21+6)
MOVT	R0, #hi_addr(_Label21+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,805 :: 		Label21.Top             = 110;
MOVS	R1, #110
MOVW	R0, #lo_addr(_Label21+8)
MOVT	R0, #hi_addr(_Label21+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,806 :: 		Label21.Width           = 66;
MOVS	R1, #66
MOVW	R0, #lo_addr(_Label21+10)
MOVT	R0, #hi_addr(_Label21+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,807 :: 		Label21.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label21+12)
MOVT	R0, #hi_addr(_Label21+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,808 :: 		Label21.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+27)
MOVT	R0, #hi_addr(_Label21+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,809 :: 		Label21.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label21+28)
MOVT	R0, #hi_addr(_Label21+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,810 :: 		Label21.Caption         = Label21_Caption;
MOVW	R1, #lo_addr(_Label21_Caption+0)
MOVT	R1, #hi_addr(_Label21_Caption+0)
MOVW	R0, #lo_addr(_Label21+16)
MOVT	R0, #hi_addr(_Label21+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,811 :: 		Label21.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label21+20)
MOVT	R0, #hi_addr(_Label21+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,812 :: 		Label21.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+24)
MOVT	R0, #hi_addr(_Label21+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,813 :: 		Label21.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label21+26)
MOVT	R0, #hi_addr(_Label21+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,815 :: 		Label24.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label24+0)
MOVT	R0, #hi_addr(_Label24+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,816 :: 		Label24.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label24+4)
MOVT	R0, #hi_addr(_Label24+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,817 :: 		Label24.Left            = 30;
MOVS	R1, #30
MOVW	R0, #lo_addr(_Label24+6)
MOVT	R0, #hi_addr(_Label24+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,818 :: 		Label24.Top             = 230;
MOVS	R1, #230
MOVW	R0, #lo_addr(_Label24+8)
MOVT	R0, #hi_addr(_Label24+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,819 :: 		Label24.Width           = 174;
MOVS	R1, #174
MOVW	R0, #lo_addr(_Label24+10)
MOVT	R0, #hi_addr(_Label24+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,820 :: 		Label24.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label24+12)
MOVT	R0, #hi_addr(_Label24+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,821 :: 		Label24.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+27)
MOVT	R0, #hi_addr(_Label24+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,822 :: 		Label24.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label24+28)
MOVT	R0, #hi_addr(_Label24+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,823 :: 		Label24.Caption         = Label24_Caption;
MOVW	R1, #lo_addr(_Label24_Caption+0)
MOVT	R1, #hi_addr(_Label24_Caption+0)
MOVW	R0, #lo_addr(_Label24+16)
MOVT	R0, #hi_addr(_Label24+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,824 :: 		Label24.FontName        = Times_New_Roman17x21_Italic;
MOVW	R0, #lo_addr(_Label24+20)
MOVT	R0, #hi_addr(_Label24+20)
STR	R4, [R0, #0]
;MyProject_TA_driver.c,825 :: 		Label24.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+24)
MOVT	R0, #hi_addr(_Label24+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,826 :: 		Label24.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label24+26)
MOVT	R0, #hi_addr(_Label24+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,828 :: 		Label25.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label25+0)
MOVT	R0, #hi_addr(_Label25+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,829 :: 		Label25.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Label25+4)
MOVT	R0, #hi_addr(_Label25+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,830 :: 		Label25.Left            = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_Label25+6)
MOVT	R0, #hi_addr(_Label25+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,831 :: 		Label25.Top             = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label25+8)
MOVT	R0, #hi_addr(_Label25+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,832 :: 		Label25.Width           = 39;
MOVS	R1, #39
MOVW	R0, #lo_addr(_Label25+10)
MOVT	R0, #hi_addr(_Label25+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,833 :: 		Label25.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label25+12)
MOVT	R0, #hi_addr(_Label25+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,834 :: 		Label25.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+27)
MOVT	R0, #hi_addr(_Label25+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,835 :: 		Label25.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label25+28)
MOVT	R0, #hi_addr(_Label25+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,836 :: 		Label25.Caption         = Label25_Caption;
MOVW	R1, #lo_addr(_Label25_Caption+0)
MOVT	R1, #hi_addr(_Label25_Caption+0)
MOVW	R0, #lo_addr(_Label25+16)
MOVT	R0, #hi_addr(_Label25+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,837 :: 		Label25.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label25+20)
MOVT	R0, #hi_addr(_Label25+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,838 :: 		Label25.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+24)
MOVT	R0, #hi_addr(_Label25+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,839 :: 		Label25.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label25+26)
MOVT	R0, #hi_addr(_Label25+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,841 :: 		Label26.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label26+0)
MOVT	R0, #hi_addr(_Label26+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,842 :: 		Label26.Order           = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(_Label26+4)
MOVT	R0, #hi_addr(_Label26+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,843 :: 		Label26.Left            = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_Label26+6)
MOVT	R0, #hi_addr(_Label26+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,844 :: 		Label26.Top             = 280;
MOVW	R1, #280
MOVW	R0, #lo_addr(_Label26+8)
MOVT	R0, #hi_addr(_Label26+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,845 :: 		Label26.Width           = 39;
MOVS	R1, #39
MOVW	R0, #lo_addr(_Label26+10)
MOVT	R0, #hi_addr(_Label26+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,846 :: 		Label26.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label26+12)
MOVT	R0, #hi_addr(_Label26+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,847 :: 		Label26.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+27)
MOVT	R0, #hi_addr(_Label26+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,848 :: 		Label26.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label26+28)
MOVT	R0, #hi_addr(_Label26+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,849 :: 		Label26.Caption         = Label26_Caption;
MOVW	R1, #lo_addr(_Label26_Caption+0)
MOVT	R1, #hi_addr(_Label26_Caption+0)
MOVW	R0, #lo_addr(_Label26+16)
MOVT	R0, #hi_addr(_Label26+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,850 :: 		Label26.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label26+20)
MOVT	R0, #hi_addr(_Label26+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,851 :: 		Label26.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+24)
MOVT	R0, #hi_addr(_Label26+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,852 :: 		Label26.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label26+26)
MOVT	R0, #hi_addr(_Label26+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,854 :: 		ButtonRound1.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_ButtonRound1+0)
MOVT	R0, #hi_addr(_ButtonRound1+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,855 :: 		ButtonRound1.Order           = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_ButtonRound1+4)
MOVT	R0, #hi_addr(_ButtonRound1+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,856 :: 		ButtonRound1.Left            = 630;
MOVW	R1, #630
MOVW	R0, #lo_addr(_ButtonRound1+6)
MOVT	R0, #hi_addr(_ButtonRound1+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,857 :: 		ButtonRound1.Top             = 411;
MOVW	R1, #411
MOVW	R0, #lo_addr(_ButtonRound1+8)
MOVT	R0, #hi_addr(_ButtonRound1+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,858 :: 		ButtonRound1.Width           = 152;
MOVS	R1, #152
MOVW	R0, #lo_addr(_ButtonRound1+10)
MOVT	R0, #hi_addr(_ButtonRound1+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,859 :: 		ButtonRound1.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound1+12)
MOVT	R0, #hi_addr(_ButtonRound1+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,860 :: 		ButtonRound1.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+14)
MOVT	R0, #hi_addr(_ButtonRound1+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,861 :: 		ButtonRound1.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+16)
MOVT	R0, #hi_addr(_ButtonRound1+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,862 :: 		ButtonRound1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+18)
MOVT	R0, #hi_addr(_ButtonRound1+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,863 :: 		ButtonRound1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+19)
MOVT	R0, #hi_addr(_ButtonRound1+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,864 :: 		ButtonRound1.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+20)
MOVT	R0, #hi_addr(_ButtonRound1+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,865 :: 		ButtonRound1.Caption         = ButtonRound1_Caption;
MOVW	R1, #lo_addr(_ButtonRound1_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound1_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound1+24)
MOVT	R0, #hi_addr(_ButtonRound1+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,866 :: 		ButtonRound1.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+28)
MOVT	R0, #hi_addr(_ButtonRound1+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,867 :: 		ButtonRound1.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+29)
MOVT	R0, #hi_addr(_ButtonRound1+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,868 :: 		ButtonRound1.FontName        = Times_New_Roman19x23_Italic;
MOVW	R1, #lo_addr(_Times_New_Roman19x23_Italic+0)
MOVT	R1, #hi_addr(_Times_New_Roman19x23_Italic+0)
MOVW	R0, #lo_addr(_ButtonRound1+32)
MOVT	R0, #hi_addr(_ButtonRound1+32)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,869 :: 		ButtonRound1.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound1+49)
MOVT	R0, #hi_addr(_ButtonRound1+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,870 :: 		ButtonRound1.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+36)
MOVT	R0, #hi_addr(_ButtonRound1+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,871 :: 		ButtonRound1.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+38)
MOVT	R0, #hi_addr(_ButtonRound1+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,872 :: 		ButtonRound1.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+39)
MOVT	R0, #hi_addr(_ButtonRound1+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,873 :: 		ButtonRound1.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound1+40)
MOVT	R0, #hi_addr(_ButtonRound1+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,874 :: 		ButtonRound1.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound1+42)
MOVT	R0, #hi_addr(_ButtonRound1+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,875 :: 		ButtonRound1.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound1+44)
MOVT	R0, #hi_addr(_ButtonRound1+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,876 :: 		ButtonRound1.Color           = 0x07E0;
MOVW	R1, #2016
MOVW	R0, #lo_addr(_ButtonRound1+46)
MOVT	R0, #hi_addr(_ButtonRound1+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,877 :: 		ButtonRound1.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound1+50)
MOVT	R0, #hi_addr(_ButtonRound1+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,878 :: 		ButtonRound1.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound1+48)
MOVT	R0, #hi_addr(_ButtonRound1+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,879 :: 		ButtonRound1.OnClickPtr      = ButtonRound1OnClick;
MOVW	R1, #lo_addr(_ButtonRound1OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound1OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound1+60)
MOVT	R0, #hi_addr(_ButtonRound1+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,881 :: 		BoxRound4.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_BoxRound4+0)
MOVT	R0, #hi_addr(_BoxRound4+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,882 :: 		BoxRound4.Order           = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_BoxRound4+4)
MOVT	R0, #hi_addr(_BoxRound4+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,883 :: 		BoxRound4.Left            = 405;
MOVW	R1, #405
MOVW	R0, #lo_addr(_BoxRound4+6)
MOVT	R0, #hi_addr(_BoxRound4+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,884 :: 		BoxRound4.Top             = 70;
MOVS	R1, #70
MOVW	R0, #lo_addr(_BoxRound4+8)
MOVT	R0, #hi_addr(_BoxRound4+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,885 :: 		BoxRound4.Width           = 375;
MOVW	R1, #375
MOVW	R0, #lo_addr(_BoxRound4+10)
MOVT	R0, #hi_addr(_BoxRound4+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,886 :: 		BoxRound4.Height          = 330;
MOVW	R1, #330
MOVW	R0, #lo_addr(_BoxRound4+12)
MOVT	R0, #hi_addr(_BoxRound4+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,887 :: 		BoxRound4.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_BoxRound4+14)
MOVT	R0, #hi_addr(_BoxRound4+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,888 :: 		BoxRound4.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound4+16)
MOVT	R0, #hi_addr(_BoxRound4+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,889 :: 		BoxRound4.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound4+18)
MOVT	R0, #hi_addr(_BoxRound4+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,890 :: 		BoxRound4.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound4+19)
MOVT	R0, #hi_addr(_BoxRound4+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,891 :: 		BoxRound4.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound4+20)
MOVT	R0, #hi_addr(_BoxRound4+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,892 :: 		BoxRound4.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound4+21)
MOVT	R0, #hi_addr(_BoxRound4+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,893 :: 		BoxRound4.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound4+22)
MOVT	R0, #hi_addr(_BoxRound4+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,894 :: 		BoxRound4.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound4+24)
MOVT	R0, #hi_addr(_BoxRound4+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,895 :: 		BoxRound4.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound4+26)
MOVT	R0, #hi_addr(_BoxRound4+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,896 :: 		BoxRound4.Color           = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound4+28)
MOVT	R0, #hi_addr(_BoxRound4+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,897 :: 		BoxRound4.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound4+31)
MOVT	R0, #hi_addr(_BoxRound4+31)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,898 :: 		BoxRound4.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound4+32)
MOVT	R0, #hi_addr(_BoxRound4+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,899 :: 		BoxRound4.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_BoxRound4+30)
MOVT	R0, #hi_addr(_BoxRound4+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,901 :: 		Label1.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label1+0)
MOVT	R0, #hi_addr(_Label1+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,902 :: 		Label1.Order           = 11;
MOVS	R1, #11
MOVW	R0, #lo_addr(_Label1+4)
MOVT	R0, #hi_addr(_Label1+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,903 :: 		Label1.Left            = 415;
MOVW	R1, #415
MOVW	R0, #lo_addr(_Label1+6)
MOVT	R0, #hi_addr(_Label1+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,904 :: 		Label1.Top             = 80;
MOVS	R1, #80
MOVW	R0, #lo_addr(_Label1+8)
MOVT	R0, #hi_addr(_Label1+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,905 :: 		Label1.Width           = 44;
MOVS	R1, #44
MOVW	R0, #lo_addr(_Label1+10)
MOVT	R0, #hi_addr(_Label1+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,906 :: 		Label1.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label1+12)
MOVT	R0, #hi_addr(_Label1+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,907 :: 		Label1.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+27)
MOVT	R0, #hi_addr(_Label1+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,908 :: 		Label1.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label1+28)
MOVT	R0, #hi_addr(_Label1+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,909 :: 		Label1.Caption         = Label1_Caption;
MOVW	R1, #lo_addr(_Label1_Caption+0)
MOVT	R1, #hi_addr(_Label1_Caption+0)
MOVW	R0, #lo_addr(_Label1+16)
MOVT	R0, #hi_addr(_Label1+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,910 :: 		Label1.FontName        = Times_New_Roman17x21_Italic;
MOVW	R0, #lo_addr(_Label1+20)
MOVT	R0, #hi_addr(_Label1+20)
STR	R4, [R0, #0]
;MyProject_TA_driver.c,911 :: 		Label1.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+24)
MOVT	R0, #hi_addr(_Label1+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,912 :: 		Label1.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label1+26)
MOVT	R0, #hi_addr(_Label1+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,914 :: 		Label15.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label15+0)
MOVT	R0, #hi_addr(_Label15+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,915 :: 		Label15.Order           = 12;
MOVS	R1, #12
MOVW	R0, #lo_addr(_Label15+4)
MOVT	R0, #hi_addr(_Label15+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,916 :: 		Label15.Left            = 430;
MOVW	R1, #430
MOVW	R0, #lo_addr(_Label15+6)
MOVT	R0, #hi_addr(_Label15+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,917 :: 		Label15.Top             = 110;
MOVS	R1, #110
MOVW	R0, #lo_addr(_Label15+8)
MOVT	R0, #hi_addr(_Label15+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,918 :: 		Label15.Width           = 67;
MOVS	R1, #67
MOVW	R0, #lo_addr(_Label15+10)
MOVT	R0, #hi_addr(_Label15+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,919 :: 		Label15.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label15+12)
MOVT	R0, #hi_addr(_Label15+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,920 :: 		Label15.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+27)
MOVT	R0, #hi_addr(_Label15+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,921 :: 		Label15.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label15+28)
MOVT	R0, #hi_addr(_Label15+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,922 :: 		Label15.Caption         = Label15_Caption;
MOVW	R1, #lo_addr(_Label15_Caption+0)
MOVT	R1, #hi_addr(_Label15_Caption+0)
MOVW	R0, #lo_addr(_Label15+16)
MOVT	R0, #hi_addr(_Label15+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,923 :: 		Label15.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label15+20)
MOVT	R0, #hi_addr(_Label15+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,924 :: 		Label15.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+24)
MOVT	R0, #hi_addr(_Label15+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,925 :: 		Label15.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label15+26)
MOVT	R0, #hi_addr(_Label15+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,927 :: 		Label32.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label32+0)
MOVT	R0, #hi_addr(_Label32+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,928 :: 		Label32.Order           = 13;
MOVS	R1, #13
MOVW	R0, #lo_addr(_Label32+4)
MOVT	R0, #hi_addr(_Label32+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,929 :: 		Label32.Left            = 430;
MOVW	R1, #430
MOVW	R0, #lo_addr(_Label32+6)
MOVT	R0, #hi_addr(_Label32+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,930 :: 		Label32.Top             = 135;
MOVS	R1, #135
MOVW	R0, #lo_addr(_Label32+8)
MOVT	R0, #hi_addr(_Label32+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,931 :: 		Label32.Width           = 43;
MOVS	R1, #43
MOVW	R0, #lo_addr(_Label32+10)
MOVT	R0, #hi_addr(_Label32+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,932 :: 		Label32.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label32+12)
MOVT	R0, #hi_addr(_Label32+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,933 :: 		Label32.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+27)
MOVT	R0, #hi_addr(_Label32+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,934 :: 		Label32.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label32+28)
MOVT	R0, #hi_addr(_Label32+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,935 :: 		Label32.Caption         = Label32_Caption;
MOVW	R1, #lo_addr(_Label32_Caption+0)
MOVT	R1, #hi_addr(_Label32_Caption+0)
MOVW	R0, #lo_addr(_Label32+16)
MOVT	R0, #hi_addr(_Label32+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,936 :: 		Label32.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label32+20)
MOVT	R0, #hi_addr(_Label32+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,937 :: 		Label32.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+24)
MOVT	R0, #hi_addr(_Label32+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,938 :: 		Label32.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label32+26)
MOVT	R0, #hi_addr(_Label32+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,940 :: 		Label35.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label35+0)
MOVT	R0, #hi_addr(_Label35+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,941 :: 		Label35.Order           = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(_Label35+4)
MOVT	R0, #hi_addr(_Label35+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,942 :: 		Label35.Left            = 415;
MOVW	R1, #415
MOVW	R0, #lo_addr(_Label35+6)
MOVT	R0, #hi_addr(_Label35+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,943 :: 		Label35.Top             = 230;
MOVS	R1, #230
MOVW	R0, #lo_addr(_Label35+8)
MOVT	R0, #hi_addr(_Label35+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,944 :: 		Label35.Width           = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Label35+10)
MOVT	R0, #hi_addr(_Label35+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,945 :: 		Label35.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label35+12)
MOVT	R0, #hi_addr(_Label35+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,946 :: 		Label35.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+27)
MOVT	R0, #hi_addr(_Label35+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,947 :: 		Label35.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label35+28)
MOVT	R0, #hi_addr(_Label35+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,948 :: 		Label35.Caption         = Label35_Caption;
MOVW	R1, #lo_addr(_Label35_Caption+0)
MOVT	R1, #hi_addr(_Label35_Caption+0)
MOVW	R0, #lo_addr(_Label35+16)
MOVT	R0, #hi_addr(_Label35+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,949 :: 		Label35.FontName        = Times_New_Roman17x21_Italic;
MOVW	R0, #lo_addr(_Label35+20)
MOVT	R0, #hi_addr(_Label35+20)
STR	R4, [R0, #0]
;MyProject_TA_driver.c,950 :: 		Label35.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+24)
MOVT	R0, #hi_addr(_Label35+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,951 :: 		Label35.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label35+26)
MOVT	R0, #hi_addr(_Label35+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,953 :: 		Label36.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label36+0)
MOVT	R0, #hi_addr(_Label36+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,954 :: 		Label36.Order           = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label36+4)
MOVT	R0, #hi_addr(_Label36+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,955 :: 		Label36.Left            = 430;
MOVW	R1, #430
MOVW	R0, #lo_addr(_Label36+6)
MOVT	R0, #hi_addr(_Label36+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,956 :: 		Label36.Top             = 255;
MOVS	R1, #255
MOVW	R0, #lo_addr(_Label36+8)
MOVT	R0, #hi_addr(_Label36+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,957 :: 		Label36.Width           = 58;
MOVS	R1, #58
MOVW	R0, #lo_addr(_Label36+10)
MOVT	R0, #hi_addr(_Label36+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,958 :: 		Label36.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label36+12)
MOVT	R0, #hi_addr(_Label36+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,959 :: 		Label36.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+27)
MOVT	R0, #hi_addr(_Label36+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,960 :: 		Label36.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label36+28)
MOVT	R0, #hi_addr(_Label36+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,961 :: 		Label36.Caption         = Label36_Caption;
MOVW	R1, #lo_addr(_Label36_Caption+0)
MOVT	R1, #hi_addr(_Label36_Caption+0)
MOVW	R0, #lo_addr(_Label36+16)
MOVT	R0, #hi_addr(_Label36+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,962 :: 		Label36.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label36+20)
MOVT	R0, #hi_addr(_Label36+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,963 :: 		Label36.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+24)
MOVT	R0, #hi_addr(_Label36+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,964 :: 		Label36.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label36+26)
MOVT	R0, #hi_addr(_Label36+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,966 :: 		Label37.OwnerScreen     = &Screen3;
MOVW	R1, #lo_addr(_Screen3+0)
MOVT	R1, #hi_addr(_Screen3+0)
MOVW	R0, #lo_addr(_Label37+0)
MOVT	R0, #hi_addr(_Label37+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,967 :: 		Label37.Order           = 16;
MOVS	R1, #16
MOVW	R0, #lo_addr(_Label37+4)
MOVT	R0, #hi_addr(_Label37+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,968 :: 		Label37.Left            = 430;
MOVW	R1, #430
MOVW	R0, #lo_addr(_Label37+6)
MOVT	R0, #hi_addr(_Label37+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,969 :: 		Label37.Top             = 280;
MOVW	R1, #280
MOVW	R0, #lo_addr(_Label37+8)
MOVT	R0, #hi_addr(_Label37+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,970 :: 		Label37.Width           = 43;
MOVS	R1, #43
MOVW	R0, #lo_addr(_Label37+10)
MOVT	R0, #hi_addr(_Label37+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,971 :: 		Label37.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label37+12)
MOVT	R0, #hi_addr(_Label37+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,972 :: 		Label37.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+27)
MOVT	R0, #hi_addr(_Label37+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,973 :: 		Label37.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label37+28)
MOVT	R0, #hi_addr(_Label37+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,974 :: 		Label37.Caption         = Label37_Caption;
MOVW	R1, #lo_addr(_Label37_Caption+0)
MOVT	R1, #hi_addr(_Label37_Caption+0)
MOVW	R0, #lo_addr(_Label37+16)
MOVT	R0, #hi_addr(_Label37+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,975 :: 		Label37.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label37+20)
MOVT	R0, #hi_addr(_Label37+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,976 :: 		Label37.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+24)
MOVT	R0, #hi_addr(_Label37+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,977 :: 		Label37.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label37+26)
MOVT	R0, #hi_addr(_Label37+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,979 :: 		Box7.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Box7+0)
MOVT	R0, #hi_addr(_Box7+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,980 :: 		Box7.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box7+4)
MOVT	R0, #hi_addr(_Box7+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,981 :: 		Box7.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box7+6)
MOVT	R0, #hi_addr(_Box7+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,982 :: 		Box7.Top             = 9;
MOVS	R1, #9
MOVW	R0, #lo_addr(_Box7+8)
MOVT	R0, #hi_addr(_Box7+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,983 :: 		Box7.Width           = 217;
MOVS	R1, #217
MOVW	R0, #lo_addr(_Box7+10)
MOVT	R0, #hi_addr(_Box7+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,984 :: 		Box7.Height          = 35;
MOVS	R1, #35
MOVW	R0, #lo_addr(_Box7+12)
MOVT	R0, #hi_addr(_Box7+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,985 :: 		Box7.Pen_Width       = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box7+14)
MOVT	R0, #hi_addr(_Box7+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,986 :: 		Box7.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box7+16)
MOVT	R0, #hi_addr(_Box7+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,987 :: 		Box7.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box7+18)
MOVT	R0, #hi_addr(_Box7+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,988 :: 		Box7.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box7+19)
MOVT	R0, #hi_addr(_Box7+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,989 :: 		Box7.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box7+20)
MOVT	R0, #hi_addr(_Box7+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,990 :: 		Box7.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box7+21)
MOVT	R0, #hi_addr(_Box7+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,991 :: 		Box7.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box7+22)
MOVT	R0, #hi_addr(_Box7+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,992 :: 		Box7.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box7+24)
MOVT	R0, #hi_addr(_Box7+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,993 :: 		Box7.Gradient_End_Color = 0x1696;
MOVW	R1, #5782
MOVW	R0, #lo_addr(_Box7+26)
MOVT	R0, #hi_addr(_Box7+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,994 :: 		Box7.Color           = 0x1696;
MOVW	R1, #5782
MOVW	R0, #lo_addr(_Box7+28)
MOVT	R0, #hi_addr(_Box7+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,995 :: 		Box7.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box7+30)
MOVT	R0, #hi_addr(_Box7+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,996 :: 		Box7.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box7+32)
MOVT	R0, #hi_addr(_Box7+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,998 :: 		Label17.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label17+0)
MOVT	R0, #hi_addr(_Label17+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,999 :: 		Label17.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+4)
MOVT	R0, #hi_addr(_Label17+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1000 :: 		Label17.Left            = 15;
MOVS	R1, #15
MOVW	R0, #lo_addr(_Label17+6)
MOVT	R0, #hi_addr(_Label17+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1001 :: 		Label17.Top             = 18;
MOVS	R1, #18
MOVW	R0, #lo_addr(_Label17+8)
MOVT	R0, #hi_addr(_Label17+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1002 :: 		Label17.Width           = 210;
MOVS	R1, #210
MOVW	R0, #lo_addr(_Label17+10)
MOVT	R0, #hi_addr(_Label17+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1003 :: 		Label17.Height          = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_Label17+12)
MOVT	R0, #hi_addr(_Label17+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1004 :: 		Label17.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+27)
MOVT	R0, #hi_addr(_Label17+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1005 :: 		Label17.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label17+28)
MOVT	R0, #hi_addr(_Label17+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1006 :: 		Label17.Caption         = Label17_Caption;
MOVW	R1, #lo_addr(_Label17_Caption+0)
MOVT	R1, #hi_addr(_Label17_Caption+0)
MOVW	R0, #lo_addr(_Label17+16)
MOVT	R0, #hi_addr(_Label17+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1007 :: 		Label17.FontName        = Times_New_Roman15x19_Regular;
MOVW	R0, #lo_addr(_Label17+20)
MOVT	R0, #hi_addr(_Label17+20)
STR	R3, [R0, #0]
;MyProject_TA_driver.c,1008 :: 		Label17.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+24)
MOVT	R0, #hi_addr(_Label17+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1009 :: 		Label17.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label17+26)
MOVT	R0, #hi_addr(_Label17+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1011 :: 		ButtonRound7.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_ButtonRound7+0)
MOVT	R0, #hi_addr(_ButtonRound7+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1012 :: 		ButtonRound7.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound7+4)
MOVT	R0, #hi_addr(_ButtonRound7+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1013 :: 		ButtonRound7.Left            = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_ButtonRound7+6)
MOVT	R0, #hi_addr(_ButtonRound7+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1014 :: 		ButtonRound7.Top             = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound7+8)
MOVT	R0, #hi_addr(_ButtonRound7+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1015 :: 		ButtonRound7.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound7+10)
MOVT	R0, #hi_addr(_ButtonRound7+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1016 :: 		ButtonRound7.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound7+12)
MOVT	R0, #hi_addr(_ButtonRound7+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1017 :: 		ButtonRound7.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+14)
MOVT	R0, #hi_addr(_ButtonRound7+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1018 :: 		ButtonRound7.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+16)
MOVT	R0, #hi_addr(_ButtonRound7+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1019 :: 		ButtonRound7.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+18)
MOVT	R0, #hi_addr(_ButtonRound7+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1020 :: 		ButtonRound7.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+19)
MOVT	R0, #hi_addr(_ButtonRound7+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1021 :: 		ButtonRound7.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+20)
MOVT	R0, #hi_addr(_ButtonRound7+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1022 :: 		ButtonRound7.Caption         = ButtonRound7_Caption;
MOVW	R1, #lo_addr(_ButtonRound7_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound7_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound7+24)
MOVT	R0, #hi_addr(_ButtonRound7+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1023 :: 		ButtonRound7.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+28)
MOVT	R0, #hi_addr(_ButtonRound7+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1024 :: 		ButtonRound7.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+29)
MOVT	R0, #hi_addr(_ButtonRound7+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1025 :: 		ButtonRound7.FontName        = Times_New_Roman19x23_Regular;
MOVW	R0, #lo_addr(_ButtonRound7+32)
MOVT	R0, #hi_addr(_ButtonRound7+32)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,1026 :: 		ButtonRound7.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound7+49)
MOVT	R0, #hi_addr(_ButtonRound7+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1027 :: 		ButtonRound7.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+36)
MOVT	R0, #hi_addr(_ButtonRound7+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1028 :: 		ButtonRound7.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+38)
MOVT	R0, #hi_addr(_ButtonRound7+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1029 :: 		ButtonRound7.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+39)
MOVT	R0, #hi_addr(_ButtonRound7+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1030 :: 		ButtonRound7.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound7+40)
MOVT	R0, #hi_addr(_ButtonRound7+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1031 :: 		ButtonRound7.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound7+42)
MOVT	R0, #hi_addr(_ButtonRound7+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1032 :: 		ButtonRound7.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound7+44)
MOVT	R0, #hi_addr(_ButtonRound7+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1033 :: 		ButtonRound7.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound7+46)
MOVT	R0, #hi_addr(_ButtonRound7+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1034 :: 		ButtonRound7.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound7+50)
MOVT	R0, #hi_addr(_ButtonRound7+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1035 :: 		ButtonRound7.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound7+48)
MOVT	R0, #hi_addr(_ButtonRound7+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1036 :: 		ButtonRound7.OnClickPtr      = ButtonRound7OnClick;
MOVW	R1, #lo_addr(_ButtonRound7OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound7OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound7+60)
MOVT	R0, #hi_addr(_ButtonRound7+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1038 :: 		ButtonRound8.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_ButtonRound8+0)
MOVT	R0, #hi_addr(_ButtonRound8+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1039 :: 		ButtonRound8.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_ButtonRound8+4)
MOVT	R0, #hi_addr(_ButtonRound8+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1040 :: 		ButtonRound8.Left            = 125;
MOVS	R1, #125
MOVW	R0, #lo_addr(_ButtonRound8+6)
MOVT	R0, #hi_addr(_ButtonRound8+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1041 :: 		ButtonRound8.Top             = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound8+8)
MOVT	R0, #hi_addr(_ButtonRound8+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1042 :: 		ButtonRound8.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound8+10)
MOVT	R0, #hi_addr(_ButtonRound8+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1043 :: 		ButtonRound8.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound8+12)
MOVT	R0, #hi_addr(_ButtonRound8+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1044 :: 		ButtonRound8.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+14)
MOVT	R0, #hi_addr(_ButtonRound8+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1045 :: 		ButtonRound8.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound8+16)
MOVT	R0, #hi_addr(_ButtonRound8+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1046 :: 		ButtonRound8.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+18)
MOVT	R0, #hi_addr(_ButtonRound8+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1047 :: 		ButtonRound8.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+19)
MOVT	R0, #hi_addr(_ButtonRound8+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1048 :: 		ButtonRound8.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+20)
MOVT	R0, #hi_addr(_ButtonRound8+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1049 :: 		ButtonRound8.Caption         = ButtonRound8_Caption;
MOVW	R1, #lo_addr(_ButtonRound8_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound8_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound8+24)
MOVT	R0, #hi_addr(_ButtonRound8+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1050 :: 		ButtonRound8.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+28)
MOVT	R0, #hi_addr(_ButtonRound8+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1051 :: 		ButtonRound8.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+29)
MOVT	R0, #hi_addr(_ButtonRound8+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1052 :: 		ButtonRound8.FontName        = Times_New_Roman19x23_Regular;
MOVW	R0, #lo_addr(_ButtonRound8+32)
MOVT	R0, #hi_addr(_ButtonRound8+32)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,1053 :: 		ButtonRound8.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound8+49)
MOVT	R0, #hi_addr(_ButtonRound8+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1054 :: 		ButtonRound8.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound8+36)
MOVT	R0, #hi_addr(_ButtonRound8+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1055 :: 		ButtonRound8.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound8+38)
MOVT	R0, #hi_addr(_ButtonRound8+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1056 :: 		ButtonRound8.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound8+39)
MOVT	R0, #hi_addr(_ButtonRound8+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1057 :: 		ButtonRound8.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound8+40)
MOVT	R0, #hi_addr(_ButtonRound8+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1058 :: 		ButtonRound8.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound8+42)
MOVT	R0, #hi_addr(_ButtonRound8+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1059 :: 		ButtonRound8.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound8+44)
MOVT	R0, #hi_addr(_ButtonRound8+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1060 :: 		ButtonRound8.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound8+46)
MOVT	R0, #hi_addr(_ButtonRound8+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1061 :: 		ButtonRound8.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound8+50)
MOVT	R0, #hi_addr(_ButtonRound8+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1062 :: 		ButtonRound8.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound8+48)
MOVT	R0, #hi_addr(_ButtonRound8+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1063 :: 		ButtonRound8.OnClickPtr      = ButtonRound8OnClick;
MOVW	R1, #lo_addr(_ButtonRound8OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound8OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound8+60)
MOVT	R0, #hi_addr(_ButtonRound8+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1065 :: 		ButtonRound9.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_ButtonRound9+0)
MOVT	R0, #hi_addr(_ButtonRound9+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1066 :: 		ButtonRound9.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_ButtonRound9+4)
MOVT	R0, #hi_addr(_ButtonRound9+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1067 :: 		ButtonRound9.Left            = 650;
MOVW	R1, #650
MOVW	R0, #lo_addr(_ButtonRound9+6)
MOVT	R0, #hi_addr(_ButtonRound9+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1068 :: 		ButtonRound9.Top             = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound9+8)
MOVT	R0, #hi_addr(_ButtonRound9+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1069 :: 		ButtonRound9.Width           = 135;
MOVS	R1, #135
MOVW	R0, #lo_addr(_ButtonRound9+10)
MOVT	R0, #hi_addr(_ButtonRound9+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1070 :: 		ButtonRound9.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound9+12)
MOVT	R0, #hi_addr(_ButtonRound9+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1071 :: 		ButtonRound9.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+14)
MOVT	R0, #hi_addr(_ButtonRound9+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1072 :: 		ButtonRound9.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+16)
MOVT	R0, #hi_addr(_ButtonRound9+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1073 :: 		ButtonRound9.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+18)
MOVT	R0, #hi_addr(_ButtonRound9+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1074 :: 		ButtonRound9.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+19)
MOVT	R0, #hi_addr(_ButtonRound9+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1075 :: 		ButtonRound9.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+20)
MOVT	R0, #hi_addr(_ButtonRound9+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1076 :: 		ButtonRound9.Caption         = ButtonRound9_Caption;
MOVW	R1, #lo_addr(_ButtonRound9_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound9_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound9+24)
MOVT	R0, #hi_addr(_ButtonRound9+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1077 :: 		ButtonRound9.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+28)
MOVT	R0, #hi_addr(_ButtonRound9+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1078 :: 		ButtonRound9.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+29)
MOVT	R0, #hi_addr(_ButtonRound9+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1079 :: 		ButtonRound9.FontName        = Times_New_Roman15x19_Italic;
MOVW	R1, #lo_addr(_Times_New_Roman15x19_Italic+0)
MOVT	R1, #hi_addr(_Times_New_Roman15x19_Italic+0)
MOVW	R0, #lo_addr(_ButtonRound9+32)
MOVT	R0, #hi_addr(_ButtonRound9+32)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1080 :: 		ButtonRound9.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound9+49)
MOVT	R0, #hi_addr(_ButtonRound9+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1081 :: 		ButtonRound9.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+36)
MOVT	R0, #hi_addr(_ButtonRound9+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1082 :: 		ButtonRound9.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+38)
MOVT	R0, #hi_addr(_ButtonRound9+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1083 :: 		ButtonRound9.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+39)
MOVT	R0, #hi_addr(_ButtonRound9+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1084 :: 		ButtonRound9.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound9+40)
MOVT	R0, #hi_addr(_ButtonRound9+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1085 :: 		ButtonRound9.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound9+42)
MOVT	R0, #hi_addr(_ButtonRound9+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1086 :: 		ButtonRound9.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound9+44)
MOVT	R0, #hi_addr(_ButtonRound9+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1087 :: 		ButtonRound9.Color           = 0xD73F;
MOVW	R1, #55103
MOVW	R0, #lo_addr(_ButtonRound9+46)
MOVT	R0, #hi_addr(_ButtonRound9+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1088 :: 		ButtonRound9.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound9+50)
MOVT	R0, #hi_addr(_ButtonRound9+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1089 :: 		ButtonRound9.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound9+48)
MOVT	R0, #hi_addr(_ButtonRound9+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1090 :: 		ButtonRound9.OnClickPtr      = ButtonRound9OnClick;
MOVW	R1, #lo_addr(_ButtonRound9OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound9OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound9+60)
MOVT	R0, #hi_addr(_ButtonRound9+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1092 :: 		Box9.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Box9+0)
MOVT	R0, #hi_addr(_Box9+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1093 :: 		Box9.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Box9+4)
MOVT	R0, #hi_addr(_Box9+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1094 :: 		Box9.Left            = 796;
MOVW	R1, #796
MOVW	R0, #lo_addr(_Box9+6)
MOVT	R0, #hi_addr(_Box9+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1095 :: 		Box9.Top             = 132;
MOVS	R1, #132
MOVW	R0, #lo_addr(_Box9+8)
MOVT	R0, #hi_addr(_Box9+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1096 :: 		Box9.Width           = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_Box9+10)
MOVT	R0, #hi_addr(_Box9+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1097 :: 		Box9.Height          = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_Box9+12)
MOVT	R0, #hi_addr(_Box9+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1098 :: 		Box9.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+14)
MOVT	R0, #hi_addr(_Box9+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1099 :: 		Box9.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box9+16)
MOVT	R0, #hi_addr(_Box9+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1100 :: 		Box9.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+18)
MOVT	R0, #hi_addr(_Box9+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1101 :: 		Box9.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+19)
MOVT	R0, #hi_addr(_Box9+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1102 :: 		Box9.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+20)
MOVT	R0, #hi_addr(_Box9+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1103 :: 		Box9.Gradient        = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+21)
MOVT	R0, #hi_addr(_Box9+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1104 :: 		Box9.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box9+22)
MOVT	R0, #hi_addr(_Box9+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1105 :: 		Box9.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box9+24)
MOVT	R0, #hi_addr(_Box9+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1106 :: 		Box9.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box9+26)
MOVT	R0, #hi_addr(_Box9+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1107 :: 		Box9.Color           = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box9+28)
MOVT	R0, #hi_addr(_Box9+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1108 :: 		Box9.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box9+30)
MOVT	R0, #hi_addr(_Box9+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1109 :: 		Box9.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box9+32)
MOVT	R0, #hi_addr(_Box9+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1111 :: 		Label19.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label19+0)
MOVT	R0, #hi_addr(_Label19+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1112 :: 		Label19.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label19+4)
MOVT	R0, #hi_addr(_Label19+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1113 :: 		Label19.Left            = 253;
MOVS	R1, #253
MOVW	R0, #lo_addr(_Label19+6)
MOVT	R0, #hi_addr(_Label19+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1114 :: 		Label19.Top             = 401;
MOVW	R1, #401
MOVW	R0, #lo_addr(_Label19+8)
MOVT	R0, #hi_addr(_Label19+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1115 :: 		Label19.Width           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+10)
MOVT	R0, #hi_addr(_Label19+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1116 :: 		Label19.Height          = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+12)
MOVT	R0, #hi_addr(_Label19+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1117 :: 		Label19.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+27)
MOVT	R0, #hi_addr(_Label19+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1118 :: 		Label19.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label19+28)
MOVT	R0, #hi_addr(_Label19+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1119 :: 		Label19.Caption         = Label19_Caption;
MOVW	R1, #lo_addr(_Label19_Caption+0)
MOVT	R1, #hi_addr(_Label19_Caption+0)
MOVW	R0, #lo_addr(_Label19+16)
MOVT	R0, #hi_addr(_Label19+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1120 :: 		Label19.FontName        = Tahoma26x33_Regular;
MOVW	R1, #lo_addr(_Tahoma26x33_Regular+0)
MOVT	R1, #hi_addr(_Tahoma26x33_Regular+0)
MOVW	R0, #lo_addr(_Label19+20)
MOVT	R0, #hi_addr(_Label19+20)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1121 :: 		Label19.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+24)
MOVT	R0, #hi_addr(_Label19+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1122 :: 		Label19.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label19+26)
MOVT	R0, #hi_addr(_Label19+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1124 :: 		Label38.OwnerScreen     = &Screen4;
MOVW	R1, #lo_addr(_Screen4+0)
MOVT	R1, #hi_addr(_Screen4+0)
MOVW	R0, #lo_addr(_Label38+0)
MOVT	R0, #hi_addr(_Label38+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1125 :: 		Label38.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Label38+4)
MOVT	R0, #hi_addr(_Label38+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1126 :: 		Label38.Left            = 609;
MOVW	R1, #609
MOVW	R0, #lo_addr(_Label38+6)
MOVT	R0, #hi_addr(_Label38+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1127 :: 		Label38.Top             = 17;
MOVS	R1, #17
MOVW	R0, #lo_addr(_Label38+8)
MOVT	R0, #hi_addr(_Label38+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1128 :: 		Label38.Width           = 64;
MOVS	R1, #64
MOVW	R0, #lo_addr(_Label38+10)
MOVT	R0, #hi_addr(_Label38+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1129 :: 		Label38.Height          = 26;
MOVS	R1, #26
MOVW	R0, #lo_addr(_Label38+12)
MOVT	R0, #hi_addr(_Label38+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1130 :: 		Label38.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+27)
MOVT	R0, #hi_addr(_Label38+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1131 :: 		Label38.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label38+28)
MOVT	R0, #hi_addr(_Label38+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1132 :: 		Label38.Caption         = Label38_Caption;
MOVW	R1, #lo_addr(_Label38_Caption+0)
MOVT	R1, #hi_addr(_Label38_Caption+0)
MOVW	R0, #lo_addr(_Label38+16)
MOVT	R0, #hi_addr(_Label38+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1133 :: 		Label38.FontName        = Times_New_Roman19x23_Regular;
MOVW	R0, #lo_addr(_Label38+20)
MOVT	R0, #hi_addr(_Label38+20)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,1134 :: 		Label38.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Label38+24)
MOVT	R0, #hi_addr(_Label38+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1135 :: 		Label38.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label38+26)
MOVT	R0, #hi_addr(_Label38+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1137 :: 		Box8.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Box8+0)
MOVT	R0, #hi_addr(_Box8+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1138 :: 		Box8.Order           = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box8+4)
MOVT	R0, #hi_addr(_Box8+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1139 :: 		Box8.Left            = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box8+6)
MOVT	R0, #hi_addr(_Box8+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1140 :: 		Box8.Top             = 10;
MOVS	R1, #10
MOVW	R0, #lo_addr(_Box8+8)
MOVT	R0, #hi_addr(_Box8+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1141 :: 		Box8.Width           = 780;
MOVW	R1, #780
MOVW	R0, #lo_addr(_Box8+10)
MOVT	R0, #hi_addr(_Box8+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1142 :: 		Box8.Height          = 460;
MOVW	R1, #460
MOVW	R0, #lo_addr(_Box8+12)
MOVT	R0, #hi_addr(_Box8+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1143 :: 		Box8.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box8+14)
MOVT	R0, #hi_addr(_Box8+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1144 :: 		Box8.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box8+16)
MOVT	R0, #hi_addr(_Box8+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1145 :: 		Box8.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box8+18)
MOVT	R0, #hi_addr(_Box8+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1146 :: 		Box8.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box8+19)
MOVT	R0, #hi_addr(_Box8+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1147 :: 		Box8.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box8+20)
MOVT	R0, #hi_addr(_Box8+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1148 :: 		Box8.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box8+21)
MOVT	R0, #hi_addr(_Box8+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1149 :: 		Box8.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Box8+22)
MOVT	R0, #hi_addr(_Box8+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1150 :: 		Box8.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box8+24)
MOVT	R0, #hi_addr(_Box8+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1151 :: 		Box8.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_Box8+26)
MOVT	R0, #hi_addr(_Box8+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1152 :: 		Box8.Color           = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_Box8+28)
MOVT	R0, #hi_addr(_Box8+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1153 :: 		Box8.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Box8+30)
MOVT	R0, #hi_addr(_Box8+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1154 :: 		Box8.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_Box8+32)
MOVT	R0, #hi_addr(_Box8+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1156 :: 		Label18.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Label18+0)
MOVT	R0, #hi_addr(_Label18+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1157 :: 		Label18.Order           = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+4)
MOVT	R0, #hi_addr(_Label18+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1158 :: 		Label18.Left            = 265;
MOVW	R1, #265
MOVW	R0, #lo_addr(_Label18+6)
MOVT	R0, #hi_addr(_Label18+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1159 :: 		Label18.Top             = 25;
MOVS	R1, #25
MOVW	R0, #lo_addr(_Label18+8)
MOVT	R0, #hi_addr(_Label18+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1160 :: 		Label18.Width           = 302;
MOVW	R1, #302
MOVW	R0, #lo_addr(_Label18+10)
MOVT	R0, #hi_addr(_Label18+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1161 :: 		Label18.Height          = 33;
MOVS	R1, #33
MOVW	R0, #lo_addr(_Label18+12)
MOVT	R0, #hi_addr(_Label18+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1162 :: 		Label18.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+27)
MOVT	R0, #hi_addr(_Label18+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1163 :: 		Label18.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label18+28)
MOVT	R0, #hi_addr(_Label18+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1164 :: 		Label18.Caption         = Label18_Caption;
MOVW	R1, #lo_addr(_Label18_Caption+0)
MOVT	R1, #hi_addr(_Label18_Caption+0)
MOVW	R0, #lo_addr(_Label18+16)
MOVT	R0, #hi_addr(_Label18+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1165 :: 		Label18.FontName        = Times_New_Roman25x31_Regular;
MOVW	R0, #lo_addr(_Label18+20)
MOVT	R0, #hi_addr(_Label18+20)
STR	R2, [R0, #0]
;MyProject_TA_driver.c,1166 :: 		Label18.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+24)
MOVT	R0, #hi_addr(_Label18+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1167 :: 		Label18.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label18+26)
MOVT	R0, #hi_addr(_Label18+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1169 :: 		ButtonRound10.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_ButtonRound10+0)
MOVT	R0, #hi_addr(_ButtonRound10+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1170 :: 		ButtonRound10.Order           = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_ButtonRound10+4)
MOVT	R0, #hi_addr(_ButtonRound10+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1171 :: 		ButtonRound10.Left            = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_ButtonRound10+6)
MOVT	R0, #hi_addr(_ButtonRound10+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1172 :: 		ButtonRound10.Top             = 410;
MOVW	R1, #410
MOVW	R0, #lo_addr(_ButtonRound10+8)
MOVT	R0, #hi_addr(_ButtonRound10+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1173 :: 		ButtonRound10.Width           = 100;
MOVS	R1, #100
MOVW	R0, #lo_addr(_ButtonRound10+10)
MOVT	R0, #hi_addr(_ButtonRound10+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1174 :: 		ButtonRound10.Height          = 50;
MOVS	R1, #50
MOVW	R0, #lo_addr(_ButtonRound10+12)
MOVT	R0, #hi_addr(_ButtonRound10+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1175 :: 		ButtonRound10.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+14)
MOVT	R0, #hi_addr(_ButtonRound10+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1176 :: 		ButtonRound10.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound10+16)
MOVT	R0, #hi_addr(_ButtonRound10+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1177 :: 		ButtonRound10.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+18)
MOVT	R0, #hi_addr(_ButtonRound10+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1178 :: 		ButtonRound10.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+19)
MOVT	R0, #hi_addr(_ButtonRound10+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1179 :: 		ButtonRound10.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+20)
MOVT	R0, #hi_addr(_ButtonRound10+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1180 :: 		ButtonRound10.Caption         = ButtonRound10_Caption;
MOVW	R1, #lo_addr(_ButtonRound10_Caption+0)
MOVT	R1, #hi_addr(_ButtonRound10_Caption+0)
MOVW	R0, #lo_addr(_ButtonRound10+24)
MOVT	R0, #hi_addr(_ButtonRound10+24)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1181 :: 		ButtonRound10.TextAlign       = _taCenter;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+28)
MOVT	R0, #hi_addr(_ButtonRound10+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1182 :: 		ButtonRound10.TextAlignVertical= _tavMiddle;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+29)
MOVT	R0, #hi_addr(_ButtonRound10+29)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1183 :: 		ButtonRound10.FontName        = Times_New_Roman19x23_Regular;
MOVW	R0, #lo_addr(_ButtonRound10+32)
MOVT	R0, #hi_addr(_ButtonRound10+32)
STR	R6, [R0, #0]
;MyProject_TA_driver.c,1184 :: 		ButtonRound10.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_ButtonRound10+49)
MOVT	R0, #hi_addr(_ButtonRound10+49)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1185 :: 		ButtonRound10.Font_Color      = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound10+36)
MOVT	R0, #hi_addr(_ButtonRound10+36)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1186 :: 		ButtonRound10.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound10+38)
MOVT	R0, #hi_addr(_ButtonRound10+38)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1187 :: 		ButtonRound10.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound10+39)
MOVT	R0, #hi_addr(_ButtonRound10+39)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1188 :: 		ButtonRound10.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_ButtonRound10+40)
MOVT	R0, #hi_addr(_ButtonRound10+40)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1189 :: 		ButtonRound10.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_ButtonRound10+42)
MOVT	R0, #hi_addr(_ButtonRound10+42)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1190 :: 		ButtonRound10.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_ButtonRound10+44)
MOVT	R0, #hi_addr(_ButtonRound10+44)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1191 :: 		ButtonRound10.Color           = 0xD0A2;
MOVW	R1, #53410
MOVW	R0, #lo_addr(_ButtonRound10+46)
MOVT	R0, #hi_addr(_ButtonRound10+46)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1192 :: 		ButtonRound10.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_ButtonRound10+50)
MOVT	R0, #hi_addr(_ButtonRound10+50)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1193 :: 		ButtonRound10.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_ButtonRound10+48)
MOVT	R0, #hi_addr(_ButtonRound10+48)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1194 :: 		ButtonRound10.OnClickPtr      = ButtonRound10OnClick;
MOVW	R1, #lo_addr(_ButtonRound10OnClick+0)
MOVT	R1, #hi_addr(_ButtonRound10OnClick+0)
MOVW	R0, #lo_addr(_ButtonRound10+60)
MOVT	R0, #hi_addr(_ButtonRound10+60)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1196 :: 		BoxRound3.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_BoxRound3+0)
MOVT	R0, #hi_addr(_BoxRound3+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1197 :: 		BoxRound3.Order           = 3;
MOVS	R1, #3
MOVW	R0, #lo_addr(_BoxRound3+4)
MOVT	R0, #hi_addr(_BoxRound3+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1198 :: 		BoxRound3.Left            = 20;
MOVS	R1, #20
MOVW	R0, #lo_addr(_BoxRound3+6)
MOVT	R0, #hi_addr(_BoxRound3+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1199 :: 		BoxRound3.Top             = 345;
MOVW	R1, #345
MOVW	R0, #lo_addr(_BoxRound3+8)
MOVT	R0, #hi_addr(_BoxRound3+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1200 :: 		BoxRound3.Width           = 760;
MOVW	R1, #760
MOVW	R0, #lo_addr(_BoxRound3+10)
MOVT	R0, #hi_addr(_BoxRound3+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1201 :: 		BoxRound3.Height          = 40;
MOVS	R1, #40
MOVW	R0, #lo_addr(_BoxRound3+12)
MOVT	R0, #hi_addr(_BoxRound3+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1202 :: 		BoxRound3.Pen_Width       = 2;
MOVS	R1, #2
MOVW	R0, #lo_addr(_BoxRound3+14)
MOVT	R0, #hi_addr(_BoxRound3+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1203 :: 		BoxRound3.Pen_Color       = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+16)
MOVT	R0, #hi_addr(_BoxRound3+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1204 :: 		BoxRound3.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+18)
MOVT	R0, #hi_addr(_BoxRound3+18)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1205 :: 		BoxRound3.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+19)
MOVT	R0, #hi_addr(_BoxRound3+19)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1206 :: 		BoxRound3.Transparent     = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+20)
MOVT	R0, #hi_addr(_BoxRound3+20)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1207 :: 		BoxRound3.Gradient        = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+21)
MOVT	R0, #hi_addr(_BoxRound3+21)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1208 :: 		BoxRound3.Gradient_Orientation = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_BoxRound3+22)
MOVT	R0, #hi_addr(_BoxRound3+22)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1209 :: 		BoxRound3.Gradient_Start_Color = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound3+24)
MOVT	R0, #hi_addr(_BoxRound3+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1210 :: 		BoxRound3.Gradient_End_Color = 0xC618;
MOVW	R1, #50712
MOVW	R0, #lo_addr(_BoxRound3+26)
MOVT	R0, #hi_addr(_BoxRound3+26)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1211 :: 		BoxRound3.Color           = 0xFFFF;
MOVW	R1, #65535
MOVW	R0, #lo_addr(_BoxRound3+28)
MOVT	R0, #hi_addr(_BoxRound3+28)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1212 :: 		BoxRound3.PressColEnabled = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_BoxRound3+31)
MOVT	R0, #hi_addr(_BoxRound3+31)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1213 :: 		BoxRound3.Press_Color     = 0xE71C;
MOVW	R1, #59164
MOVW	R0, #lo_addr(_BoxRound3+32)
MOVT	R0, #hi_addr(_BoxRound3+32)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1214 :: 		BoxRound3.Corner_Radius   = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_BoxRound3+30)
MOVT	R0, #hi_addr(_BoxRound3+30)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1216 :: 		Label31.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Label31+0)
MOVT	R0, #hi_addr(_Label31+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1217 :: 		Label31.Order           = 4;
MOVS	R1, #4
MOVW	R0, #lo_addr(_Label31+4)
MOVT	R0, #hi_addr(_Label31+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1218 :: 		Label31.Left            = 30;
MOVS	R1, #30
MOVW	R0, #lo_addr(_Label31+6)
MOVT	R0, #hi_addr(_Label31+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1219 :: 		Label31.Top             = 355;
MOVW	R1, #355
MOVW	R0, #lo_addr(_Label31+8)
MOVT	R0, #hi_addr(_Label31+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1220 :: 		Label31.Width           = 53;
MOVS	R1, #53
MOVW	R0, #lo_addr(_Label31+10)
MOVT	R0, #hi_addr(_Label31+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1221 :: 		Label31.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label31+12)
MOVT	R0, #hi_addr(_Label31+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1222 :: 		Label31.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+27)
MOVT	R0, #hi_addr(_Label31+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1223 :: 		Label31.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label31+28)
MOVT	R0, #hi_addr(_Label31+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1224 :: 		Label31.Caption         = Label31_Caption;
MOVW	R1, #lo_addr(_Label31_Caption+0)
MOVT	R1, #hi_addr(_Label31_Caption+0)
MOVW	R0, #lo_addr(_Label31+16)
MOVT	R0, #hi_addr(_Label31+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1225 :: 		Label31.FontName        = Times_New_Roman18x21_Regular;
MOVW	R0, #lo_addr(_Label31+20)
MOVT	R0, #hi_addr(_Label31+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,1226 :: 		Label31.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+24)
MOVT	R0, #hi_addr(_Label31+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1227 :: 		Label31.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label31+26)
MOVT	R0, #hi_addr(_Label31+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1229 :: 		Label33.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Label33+0)
MOVT	R0, #hi_addr(_Label33+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1230 :: 		Label33.Order           = 5;
MOVS	R1, #5
MOVW	R0, #lo_addr(_Label33+4)
MOVT	R0, #hi_addr(_Label33+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1231 :: 		Label33.Left            = 555;
MOVW	R1, #555
MOVW	R0, #lo_addr(_Label33+6)
MOVT	R0, #hi_addr(_Label33+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1232 :: 		Label33.Top             = 355;
MOVW	R1, #355
MOVW	R0, #lo_addr(_Label33+8)
MOVT	R0, #hi_addr(_Label33+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1233 :: 		Label33.Width           = 56;
MOVS	R1, #56
MOVW	R0, #lo_addr(_Label33+10)
MOVT	R0, #hi_addr(_Label33+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1234 :: 		Label33.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label33+12)
MOVT	R0, #hi_addr(_Label33+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1235 :: 		Label33.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+27)
MOVT	R0, #hi_addr(_Label33+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1236 :: 		Label33.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label33+28)
MOVT	R0, #hi_addr(_Label33+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1237 :: 		Label33.Caption         = Label33_Caption;
MOVW	R1, #lo_addr(_Label33_Caption+0)
MOVT	R1, #hi_addr(_Label33_Caption+0)
MOVW	R0, #lo_addr(_Label33+16)
MOVT	R0, #hi_addr(_Label33+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1238 :: 		Label33.FontName        = Times_New_Roman18x21_Regular;
MOVW	R0, #lo_addr(_Label33+20)
MOVT	R0, #hi_addr(_Label33+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,1239 :: 		Label33.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+24)
MOVT	R0, #hi_addr(_Label33+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1240 :: 		Label33.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label33+26)
MOVT	R0, #hi_addr(_Label33+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1242 :: 		Label34.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Label34+0)
MOVT	R0, #hi_addr(_Label34+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1243 :: 		Label34.Order           = 6;
MOVS	R1, #6
MOVW	R0, #lo_addr(_Label34+4)
MOVT	R0, #hi_addr(_Label34+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1244 :: 		Label34.Left            = 295;
MOVW	R1, #295
MOVW	R0, #lo_addr(_Label34+6)
MOVT	R0, #hi_addr(_Label34+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1245 :: 		Label34.Top             = 355;
MOVW	R1, #355
MOVW	R0, #lo_addr(_Label34+8)
MOVT	R0, #hi_addr(_Label34+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1246 :: 		Label34.Width           = 83;
MOVS	R1, #83
MOVW	R0, #lo_addr(_Label34+10)
MOVT	R0, #hi_addr(_Label34+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1247 :: 		Label34.Height          = 23;
MOVS	R1, #23
MOVW	R0, #lo_addr(_Label34+12)
MOVT	R0, #hi_addr(_Label34+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1248 :: 		Label34.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+27)
MOVT	R0, #hi_addr(_Label34+27)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1249 :: 		Label34.Active          = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Label34+28)
MOVT	R0, #hi_addr(_Label34+28)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1250 :: 		Label34.Caption         = Label34_Caption;
MOVW	R1, #lo_addr(_Label34_Caption+0)
MOVT	R1, #hi_addr(_Label34_Caption+0)
MOVW	R0, #lo_addr(_Label34+16)
MOVT	R0, #hi_addr(_Label34+16)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1251 :: 		Label34.FontName        = Times_New_Roman18x21_Regular;
MOVW	R0, #lo_addr(_Label34+20)
MOVT	R0, #hi_addr(_Label34+20)
STR	R5, [R0, #0]
;MyProject_TA_driver.c,1252 :: 		Label34.Font_Color      = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+24)
MOVT	R0, #hi_addr(_Label34+24)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1253 :: 		Label34.VerticalText    = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Label34+26)
MOVT	R0, #hi_addr(_Label34+26)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1255 :: 		Line2.OwnerScreen     = &Screen5;
MOVW	R1, #lo_addr(_Screen5+0)
MOVT	R1, #hi_addr(_Screen5+0)
MOVW	R0, #lo_addr(_Line2+0)
MOVT	R0, #hi_addr(_Line2+0)
STR	R1, [R0, #0]
;MyProject_TA_driver.c,1256 :: 		Line2.Order           = 7;
MOVS	R1, #7
MOVW	R0, #lo_addr(_Line2+4)
MOVT	R0, #hi_addr(_Line2+4)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1257 :: 		Line2.First_Point_X   = 629;
MOVW	R1, #629
MOVW	R0, #lo_addr(_Line2+6)
MOVT	R0, #hi_addr(_Line2+6)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1258 :: 		Line2.First_Point_Y   = 530;
MOVW	R1, #530
MOVW	R0, #lo_addr(_Line2+8)
MOVT	R0, #hi_addr(_Line2+8)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1259 :: 		Line2.Second_Point_X  = 729;
MOVW	R1, #729
MOVW	R0, #lo_addr(_Line2+10)
MOVT	R0, #hi_addr(_Line2+10)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1260 :: 		Line2.Second_Point_Y  = 580;
MOVW	R1, #580
MOVW	R0, #lo_addr(_Line2+12)
MOVT	R0, #hi_addr(_Line2+12)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1261 :: 		Line2.Visible         = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line2+15)
MOVT	R0, #hi_addr(_Line2+15)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1262 :: 		Line2.Pen_Width       = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_Line2+14)
MOVT	R0, #hi_addr(_Line2+14)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1263 :: 		Line2.Color           = 0x0000;
MOVS	R1, #0
MOVW	R0, #lo_addr(_Line2+16)
MOVT	R0, #hi_addr(_Line2+16)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1264 :: 		}
L_end_InitializeObjects:
BX	LR
; end of MyProject_TA_driver_InitializeObjects
MyProject_TA_driver_IsInsideObject:
;MyProject_TA_driver.c,1266 :: 		static char IsInsideObject (unsigned int X, unsigned int Y, unsigned int Left, unsigned int Top, unsigned int Width, unsigned int Height) { // static
; Top start address is: 12 (R3)
; Left start address is: 8 (R2)
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
; Top end address is: 12 (R3)
; Left end address is: 8 (R2)
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
; Left start address is: 8 (R2)
; Top start address is: 12 (R3)
; Width start address is: 20 (R5)
LDRH	R5, [SP, #0]
; Height start address is: 24 (R6)
LDRH	R6, [SP, #4]
;MyProject_TA_driver.c,1267 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
CMP	R2, R0
IT	HI
BHI	L_MyProject_TA_driver_IsInsideObject196
ADDS	R4, R2, R5
UXTH	R4, R4
; Left end address is: 8 (R2)
; Width end address is: 20 (R5)
SUBS	R4, R4, #1
UXTH	R4, R4
CMP	R4, R0
IT	CC
BCC	L_MyProject_TA_driver_IsInsideObject195
; X end address is: 0 (R0)
;MyProject_TA_driver.c,1268 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
CMP	R3, R1
IT	HI
BHI	L_MyProject_TA_driver_IsInsideObject194
ADDS	R4, R3, R6
UXTH	R4, R4
; Top end address is: 12 (R3)
; Height end address is: 24 (R6)
SUBS	R4, R4, #1
UXTH	R4, R4
CMP	R4, R1
IT	CC
BCC	L_MyProject_TA_driver_IsInsideObject193
; Y end address is: 4 (R1)
L_MyProject_TA_driver_IsInsideObject192:
;MyProject_TA_driver.c,1269 :: 		return 1;
MOVS	R0, #1
IT	AL
BAL	L_end_IsInsideObject
;MyProject_TA_driver.c,1267 :: 		if ( (Left<= X) && (Left+ Width - 1 >= X) &&
L_MyProject_TA_driver_IsInsideObject196:
L_MyProject_TA_driver_IsInsideObject195:
;MyProject_TA_driver.c,1268 :: 		(Top <= Y)  && (Top + Height - 1 >= Y) )
L_MyProject_TA_driver_IsInsideObject194:
L_MyProject_TA_driver_IsInsideObject193:
;MyProject_TA_driver.c,1271 :: 		return 0;
MOVS	R0, #0
;MyProject_TA_driver.c,1272 :: 		}
L_end_IsInsideObject:
BX	LR
; end of MyProject_TA_driver_IsInsideObject
_DrawRoundButton:
;MyProject_TA_driver.c,1284 :: 		void DrawRoundButton(TButton_Round *Around_button) {
; Around_button start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
; Around_button end address is: 0 (R0)
; Around_button start address is: 0 (R0)
;MyProject_TA_driver.c,1286 :: 		if (Around_button->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundButton4
;MyProject_TA_driver.c,1287 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton5
;MyProject_TA_driver.c,1288 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_TA_driver.c,1290 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
ADDW	R1, R0, #42
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #44
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_TA_driver.c,1289 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDW	R1, R0, #40
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #39
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #50
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_TA_driver.c,1290 :: 		Around_button->Gradient_End_Color, Around_button->Gradient_Start_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_driver.c,1289 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Press_Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1291 :: 		}
IT	AL
BAL	L_DrawRoundButton6
L_DrawRoundButton5:
;MyProject_TA_driver.c,1294 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
ADDW	R1, R0, #44
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #42
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_TA_driver.c,1293 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
ADDW	R1, R0, #40
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #39
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #46
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_TA_driver.c,1294 :: 		Around_button->Gradient_Start_Color, Around_button->Gradient_End_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_driver.c,1293 :: 		TFT_Set_Brush(Around_button->Transparent, Around_button->Color, Around_button->Gradient, Around_button->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1295 :: 		}
L_DrawRoundButton6:
;MyProject_TA_driver.c,1296 :: 		TFT_Set_Pen(Around_button->Pen_Color, Around_button->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1299 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
ADDW	R1, R0, #48
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #2
;MyProject_TA_driver.c,1298 :: 		Around_button->Left + Around_button->Width - 2,
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #2
;MyProject_TA_driver.c,1297 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
ADDS	R2, R2, #1
ADDS	R1, R4, #1
;MyProject_TA_driver.c,1299 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
STR	R0, [SP, #4]
;MyProject_TA_driver.c,1297 :: 		TFT_Rectangle_Round_Edges(Around_button->Left + 1, Around_button->Top + 1,
UXTH	R0, R1
UXTH	R1, R2
;MyProject_TA_driver.c,1298 :: 		Around_button->Left + Around_button->Width - 2,
UXTH	R2, R3
;MyProject_TA_driver.c,1299 :: 		Around_button->Top + Around_button->Height - 2, Around_button->Corner_Radius);
UXTH	R3, R5
PUSH	(R6)
BL	_TFT_Rectangle_Round_Edges+0
ADD	SP, SP, #4
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1300 :: 		if (Around_button->VerticalText != 0)
ADDW	R1, R0, #38
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundButton7
;MyProject_TA_driver.c,1301 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_VERTICAL_COLUMN);
ADDW	R1, R0, #36
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #2
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawRoundButton8
L_DrawRoundButton7:
;MyProject_TA_driver.c,1303 :: 		TFT_Set_Font(Around_button->FontName, Around_button->Font_Color, FO_HORIZONTAL);
ADDW	R1, R0, #36
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #32
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #0
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
L_DrawRoundButton8:
;MyProject_TA_driver.c,1304 :: 		TFT_Write_Text_Return_Pos(Around_button->Caption, Around_button->Left, Around_button->Top);
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R3, R1
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #24
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
BL	_TFT_Write_Text_Return_Pos+0
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1305 :: 		if (Around_button->TextAlign == _taLeft)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	NE
BNE	L_DrawRoundButton9
;MyProject_TA_driver.c,1306 :: 		ALeft = Around_button->Left + 4;
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
ADDS	R1, R1, #4
STRH	R1, [SP, #8]
IT	AL
BAL	L_DrawRoundButton10
L_DrawRoundButton9:
;MyProject_TA_driver.c,1307 :: 		else if (Around_button->TextAlign == _taCenter)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton11
;MyProject_TA_driver.c,1308 :: 		ALeft = Around_button->Left + (Around_button->Width - caption_length) / 2;
ADDS	R1, R0, #6
LDRH	R3, [R1, #0]
ADDW	R1, R0, #10
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_caption_length+0)
MOVT	R1, #hi_addr(_caption_length+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
LSRS	R1, R1, #1
UXTH	R1, R1
ADDS	R1, R3, R1
STRH	R1, [SP, #8]
IT	AL
BAL	L_DrawRoundButton12
L_DrawRoundButton11:
;MyProject_TA_driver.c,1309 :: 		else if (Around_button->TextAlign == _taRight)
ADDW	R1, R0, #28
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawRoundButton13
;MyProject_TA_driver.c,1310 :: 		ALeft = Around_button->Left + Around_button->Width - caption_length - 4;
ADDS	R1, R0, #6
LDRH	R2, [R1, #0]
ADDW	R1, R0, #10
LDRH	R1, [R1, #0]
ADDS	R2, R2, R1
UXTH	R2, R2
MOVW	R1, #lo_addr(_caption_length+0)
MOVT	R1, #hi_addr(_caption_length+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
SUBS	R1, R1, #4
STRH	R1, [SP, #8]
L_DrawRoundButton13:
L_DrawRoundButton12:
L_DrawRoundButton10:
;MyProject_TA_driver.c,1312 :: 		if (Around_button->TextAlignVertical == _tavTop)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	NE
BNE	L_DrawRoundButton14
;MyProject_TA_driver.c,1313 :: 		ATop = Around_button->Top + 3;
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
ADDS	R1, R1, #3
STRH	R1, [SP, #10]
IT	AL
BAL	L_DrawRoundButton15
L_DrawRoundButton14:
;MyProject_TA_driver.c,1314 :: 		else if (Around_button->TextAlignVertical == _tavMiddle)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundButton16
;MyProject_TA_driver.c,1315 :: 		ATop = Around_button->Top + (Around_button->Height - caption_height) / 2;
ADDW	R1, R0, #8
LDRH	R3, [R1, #0]
ADDW	R1, R0, #12
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_caption_height+0)
MOVT	R1, #hi_addr(_caption_height+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
LSRS	R1, R1, #1
UXTH	R1, R1
ADDS	R1, R3, R1
STRH	R1, [SP, #10]
IT	AL
BAL	L_DrawRoundButton17
L_DrawRoundButton16:
;MyProject_TA_driver.c,1316 :: 		else if (Around_button->TextAlignVertical == _tavBottom)
ADDW	R1, R0, #29
LDRB	R1, [R1, #0]
CMP	R1, #2
IT	NE
BNE	L_DrawRoundButton18
;MyProject_TA_driver.c,1317 :: 		ATop  = Around_button->Top + Around_button->Height - caption_height - 4;
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R2, R2, R1
UXTH	R2, R2
MOVW	R1, #lo_addr(_caption_height+0)
MOVT	R1, #hi_addr(_caption_height+0)
LDRH	R1, [R1, #0]
SUB	R1, R2, R1
UXTH	R1, R1
SUBS	R1, R1, #4
STRH	R1, [SP, #10]
L_DrawRoundButton18:
L_DrawRoundButton17:
L_DrawRoundButton15:
;MyProject_TA_driver.c,1319 :: 		TFT_Write_Text(Around_button->Caption, ALeft, ATop);
ADDW	R1, R0, #24
; Around_button end address is: 0 (R0)
LDR	R1, [R1, #0]
LDRH	R2, [SP, #10]
MOV	R0, R1
LDRH	R1, [SP, #8]
BL	_TFT_Write_Text+0
;MyProject_TA_driver.c,1320 :: 		}
L_DrawRoundButton4:
;MyProject_TA_driver.c,1321 :: 		}
L_end_DrawRoundButton:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _DrawRoundButton
_DrawLabel:
;MyProject_TA_driver.c,1323 :: 		void DrawLabel(TLabel *ALabel) {
; ALabel start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ALabel end address is: 0 (R0)
; ALabel start address is: 0 (R0)
;MyProject_TA_driver.c,1324 :: 		if (ALabel->Visible != 0) {
ADDW	R1, R0, #27
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel19
;MyProject_TA_driver.c,1325 :: 		if (ALabel->VerticalText != 0)
ADDW	R1, R0, #26
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLabel20
;MyProject_TA_driver.c,1326 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_VERTICAL_COLUMN);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #2
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
IT	AL
BAL	L_DrawLabel21
L_DrawLabel20:
;MyProject_TA_driver.c,1328 :: 		TFT_Set_Font(ALabel->FontName, ALabel->Font_Color, FO_HORIZONTAL);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDR	R1, [R1, #0]
STR	R0, [SP, #4]
MOV	R0, R1
UXTH	R1, R2
MOVS	R2, #0
BL	_TFT_Set_Font+0
LDR	R0, [SP, #4]
L_DrawLabel21:
;MyProject_TA_driver.c,1329 :: 		TFT_Write_Text(ALabel->Caption, ALabel->Left, ALabel->Top);
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R3, R1
ADDS	R1, R0, #6
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #16
; ALabel end address is: 0 (R0)
LDR	R1, [R1, #0]
MOV	R0, R1
UXTH	R1, R2
UXTH	R2, R3
BL	_TFT_Write_Text+0
;MyProject_TA_driver.c,1330 :: 		}
L_DrawLabel19:
;MyProject_TA_driver.c,1331 :: 		}
L_end_DrawLabel:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawLabel
_DrawImage:
;MyProject_TA_driver.c,1333 :: 		void DrawImage(TImage *AImage) {
; AImage start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; AImage end address is: 0 (R0)
; AImage start address is: 0 (R0)
;MyProject_TA_driver.c,1334 :: 		if (AImage->Visible != 0) {
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawImage22
;MyProject_TA_driver.c,1335 :: 		TFT_Image_Jpeg(AImage->Left, AImage->Top, AImage->Picture_Name);
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDS	R1, R0, #6
; AImage end address is: 0 (R0)
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
MOV	R2, R3
BL	_TFT_Image_Jpeg+0
;MyProject_TA_driver.c,1336 :: 		}
L_DrawImage22:
;MyProject_TA_driver.c,1337 :: 		}
L_end_DrawImage:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawImage
_DrawCImage:
;MyProject_TA_driver.c,1339 :: 		void DrawCImage(TCImage *AImage) {
; AImage start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; AImage end address is: 0 (R0)
; AImage start address is: 0 (R0)
;MyProject_TA_driver.c,1340 :: 		if (AImage->Visible != 0) {
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawCImage23
;MyProject_TA_driver.c,1341 :: 		TFT_Image_Jpeg(AImage->Left, AImage->Top, AImage->Picture_Name);
ADDW	R1, R0, #16
LDR	R1, [R1, #0]
MOV	R3, R1
ADDW	R1, R0, #8
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDS	R1, R0, #6
; AImage end address is: 0 (R0)
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
MOV	R2, R3
BL	_TFT_Image_Jpeg+0
;MyProject_TA_driver.c,1342 :: 		}
L_DrawCImage23:
;MyProject_TA_driver.c,1343 :: 		}
L_end_DrawCImage:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawCImage
_DrawBox:
;MyProject_TA_driver.c,1345 :: 		void DrawBox(TBox *ABox) {
; ABox start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ABox end address is: 0 (R0)
; ABox start address is: 0 (R0)
;MyProject_TA_driver.c,1346 :: 		if (ABox->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawBox24
;MyProject_TA_driver.c,1347 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawBox25
;MyProject_TA_driver.c,1348 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_TA_driver.c,1349 :: 		TFT_Set_Brush(ABox->Transparent, ABox->Press_Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_End_Color, ABox->Gradient_Start_Color);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R5, R1
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #32
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1350 :: 		}
IT	AL
BAL	L_DrawBox26
L_DrawBox25:
;MyProject_TA_driver.c,1352 :: 		TFT_Set_Brush(ABox->Transparent, ABox->Color, ABox->Gradient, ABox->Gradient_Orientation, ABox->Gradient_Start_Color, ABox->Gradient_End_Color);
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R5, R1
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #28
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1353 :: 		}
L_DrawBox26:
;MyProject_TA_driver.c,1354 :: 		TFT_Set_Pen(ABox->Pen_Color, ABox->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1355 :: 		TFT_Rectangle(ABox->Left, ABox->Top, ABox->Left + ABox->Width - 1, ABox->Top + ABox->Height - 1);
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #1
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
; ABox end address is: 0 (R0)
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #1
SXTH	R2, R2
SXTH	R1, R4
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R5
BL	_TFT_Rectangle+0
;MyProject_TA_driver.c,1356 :: 		}
L_DrawBox24:
;MyProject_TA_driver.c,1357 :: 		}
L_end_DrawBox:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawBox
_DrawRoundBox:
;MyProject_TA_driver.c,1359 :: 		void DrawRoundBox(TBox_Round *Around_box) {
; Around_box start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; Around_box end address is: 0 (R0)
; Around_box start address is: 0 (R0)
;MyProject_TA_driver.c,1360 :: 		if (Around_box->Visible != 0) {
ADDW	R1, R0, #18
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawRoundBox27
;MyProject_TA_driver.c,1361 :: 		if (object_pressed == 1) {
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
LDRB	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L_DrawRoundBox28
;MyProject_TA_driver.c,1362 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_TA_driver.c,1364 :: 		Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_TA_driver.c,1363 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #32
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_TA_driver.c,1364 :: 		Around_box->Gradient_End_Color, Around_box->Gradient_Start_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_driver.c,1363 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Press_Color, Around_box->Gradient, Around_box->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1365 :: 		}
IT	AL
BAL	L_DrawRoundBox29
L_DrawRoundBox28:
;MyProject_TA_driver.c,1368 :: 		Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
ADDW	R1, R0, #26
LDRH	R1, [R1, #0]
UXTH	R6, R1
ADDW	R1, R0, #24
LDRH	R1, [R1, #0]
UXTH	R5, R1
;MyProject_TA_driver.c,1367 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
ADDW	R1, R0, #22
LDRB	R1, [R1, #0]
UXTB	R4, R1
ADDW	R1, R0, #21
LDRB	R1, [R1, #0]
UXTB	R3, R1
ADDW	R1, R0, #28
LDRH	R1, [R1, #0]
UXTH	R2, R1
ADDW	R1, R0, #20
LDRB	R1, [R1, #0]
STR	R0, [SP, #4]
UXTB	R0, R1
UXTH	R1, R2
UXTB	R2, R3
UXTB	R3, R4
;MyProject_TA_driver.c,1368 :: 		Around_box->Gradient_Start_Color, Around_box->Gradient_End_Color);
PUSH	(R6)
PUSH	(R5)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_driver.c,1367 :: 		TFT_Set_Brush(Around_box->Transparent, Around_box->Color, Around_box->Gradient, Around_box->Gradient_Orientation,
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1369 :: 		}
L_DrawRoundBox29:
;MyProject_TA_driver.c,1370 :: 		TFT_Set_Pen(Around_box->Pen_Color, Around_box->Pen_Width);
ADDW	R1, R0, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R0, #16
LDRH	R1, [R1, #0]
STR	R0, [SP, #4]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
LDR	R0, [SP, #4]
;MyProject_TA_driver.c,1373 :: 		Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
ADDW	R1, R0, #30
LDRB	R1, [R1, #0]
UXTB	R6, R1
ADDW	R1, R0, #8
LDRH	R2, [R1, #0]
ADDW	R1, R0, #12
LDRH	R1, [R1, #0]
ADDS	R1, R2, R1
UXTH	R1, R1
SUBS	R5, R1, #2
;MyProject_TA_driver.c,1372 :: 		Around_box->Left + Around_box->Width - 2,
ADDS	R1, R0, #6
LDRH	R4, [R1, #0]
ADDW	R1, R0, #10
; Around_box end address is: 0 (R0)
LDRH	R1, [R1, #0]
ADDS	R1, R4, R1
UXTH	R1, R1
SUBS	R3, R1, #2
;MyProject_TA_driver.c,1371 :: 		TFT_Rectangle_Round_Edges(Around_box->Left + 1, Around_box->Top + 1,
ADDS	R2, R2, #1
ADDS	R1, R4, #1
UXTH	R0, R1
UXTH	R1, R2
;MyProject_TA_driver.c,1372 :: 		Around_box->Left + Around_box->Width - 2,
UXTH	R2, R3
;MyProject_TA_driver.c,1373 :: 		Around_box->Top + Around_box->Height - 2, Around_box->Corner_Radius);
UXTH	R3, R5
PUSH	(R6)
BL	_TFT_Rectangle_Round_Edges+0
ADD	SP, SP, #4
;MyProject_TA_driver.c,1374 :: 		}
L_DrawRoundBox27:
;MyProject_TA_driver.c,1375 :: 		}
L_end_DrawRoundBox:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _DrawRoundBox
_DrawLine:
;MyProject_TA_driver.c,1377 :: 		void DrawLine(TLine *Aline) {
; Aline start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
MOV	R5, R0
; Aline end address is: 0 (R0)
; Aline start address is: 20 (R5)
;MyProject_TA_driver.c,1378 :: 		if (Aline->Visible != 0) {
ADDW	R1, R5, #15
LDRB	R1, [R1, #0]
CMP	R1, #0
IT	EQ
BEQ	L_DrawLine30
;MyProject_TA_driver.c,1379 :: 		TFT_Set_Pen(Aline->Color, Aline->Pen_Width);
ADDW	R1, R5, #14
LDRB	R1, [R1, #0]
UXTB	R2, R1
ADDW	R1, R5, #16
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTB	R1, R2
BL	_TFT_Set_Pen+0
;MyProject_TA_driver.c,1380 :: 		TFT_Line(Aline->First_Point_X, Aline->First_Point_Y, Aline->Second_Point_X, Aline->Second_Point_Y);
ADDW	R1, R5, #12
LDRH	R1, [R1, #0]
SXTH	R4, R1
ADDW	R1, R5, #10
LDRH	R1, [R1, #0]
SXTH	R3, R1
ADDW	R1, R5, #8
LDRH	R1, [R1, #0]
SXTH	R2, R1
ADDS	R1, R5, #6
; Aline end address is: 20 (R5)
LDRH	R1, [R1, #0]
SXTH	R1, R1
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R3
SXTH	R3, R4
BL	_TFT_Line+0
;MyProject_TA_driver.c,1381 :: 		}
L_DrawLine30:
;MyProject_TA_driver.c,1382 :: 		}
L_end_DrawLine:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawLine
_DrawScreen:
;MyProject_TA_driver.c,1384 :: 		void DrawScreen(TScreen *aScreen) {
; aScreen start address is: 0 (R0)
SUB	SP, SP, #64
STR	LR, [SP, #0]
; aScreen end address is: 0 (R0)
; aScreen start address is: 0 (R0)
;MyProject_TA_driver.c,1402 :: 		object_pressed = 0;
MOVS	R2, #0
MOVW	R1, #lo_addr(_object_pressed+0)
MOVT	R1, #hi_addr(_object_pressed+0)
STRB	R2, [R1, #0]
;MyProject_TA_driver.c,1403 :: 		order = 0;
MOVS	R1, #0
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1404 :: 		round_button_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #6]
;MyProject_TA_driver.c,1405 :: 		label_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #12]
;MyProject_TA_driver.c,1406 :: 		image_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #20]
;MyProject_TA_driver.c,1407 :: 		cimage_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #28]
;MyProject_TA_driver.c,1408 :: 		box_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #36]
;MyProject_TA_driver.c,1409 :: 		round_box_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #44]
;MyProject_TA_driver.c,1410 :: 		line_idx = 0;
MOVS	R1, #0
STRB	R1, [SP, #52]
;MyProject_TA_driver.c,1411 :: 		CurrentScreen = aScreen;
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
STR	R0, [R1, #0]
;MyProject_TA_driver.c,1413 :: 		if ((display_width != CurrentScreen->Width) || (display_height != CurrentScreen->Height)) {
ADDS	R1, R0, #2
; aScreen end address is: 0 (R0)
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_width+0)
MOVT	R1, #hi_addr(_display_width+0)
LDRH	R1, [R1, #0]
CMP	R1, R2
IT	NE
BNE	L__DrawScreen199
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, R1, #4
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_height+0)
MOVT	R1, #hi_addr(_display_height+0)
LDRH	R1, [R1, #0]
CMP	R1, R2
IT	NE
BNE	L__DrawScreen198
IT	AL
BAL	L_DrawScreen33
L__DrawScreen199:
L__DrawScreen198:
;MyProject_TA_driver.c,1414 :: 		save_bled = TFT_BLED;
MOVW	R3, #lo_addr(GPIOF_ODR+0)
MOVT	R3, #hi_addr(GPIOF_ODR+0)
LDR	R2, [R3, #0]
UBFX	R1, R2, #10, #1
STRB	R1, [SP, #60]
;MyProject_TA_driver.c,1415 :: 		TFT_BLED           = 0;
LDR	R1, [R3, #0]
BFC	R1, #10, #1
STR	R1, [R3, #0]
;MyProject_TA_driver.c,1416 :: 		TFT_Set_Active(Set_Index, Write_Command, Write_Data);
MOVW	R3, #lo_addr(_Write_Data+0)
MOVT	R3, #hi_addr(_Write_Data+0)
MOVW	R2, #lo_addr(_Write_Command+0)
MOVT	R2, #hi_addr(_Write_Command+0)
MOVW	R1, #lo_addr(_Set_Index+0)
MOVT	R1, #hi_addr(_Set_Index+0)
MOV	R0, R1
MOV	R1, R2
MOV	R2, R3
BL	_TFT_Set_Active+0
;MyProject_TA_driver.c,1417 :: 		TFT_Init_SSD1963_Board_70(CurrentScreen->Width, CurrentScreen->Height);
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #4
LDRH	R1, [R1, #0]
UXTH	R2, R1
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #2
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
BL	_TFT_Init_SSD1963_Board_70+0
;MyProject_TA_driver.c,1418 :: 		FT5XX6_SetSize(CurrentScreen->Width, CurrentScreen->Height);
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #4
LDRH	R1, [R1, #0]
UXTH	R2, R1
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #2
LDRH	R1, [R1, #0]
UXTH	R0, R1
UXTH	R1, R2
BL	_FT5XX6_SetSize+0
;MyProject_TA_driver.c,1419 :: 		TFT_Fill_Screen(CurrentScreen->Color);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
LDRH	R1, [R1, #0]
UXTH	R0, R1
BL	_TFT_Fill_Screen+0
;MyProject_TA_driver.c,1420 :: 		TFT_Set_DBC_SSD1963(255);
MOVS	R0, #255
BL	_TFT_Set_DBC_SSD1963+0
;MyProject_TA_driver.c,1421 :: 		display_width = CurrentScreen->Width;
MOVW	R3, #lo_addr(_CurrentScreen+0)
MOVT	R3, #hi_addr(_CurrentScreen+0)
LDR	R1, [R3, #0]
ADDS	R1, R1, #2
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_width+0)
MOVT	R1, #hi_addr(_display_width+0)
STRH	R2, [R1, #0]
;MyProject_TA_driver.c,1422 :: 		display_height = CurrentScreen->Height;
MOV	R1, R3
LDR	R1, [R1, #0]
ADDS	R1, R1, #4
LDRH	R2, [R1, #0]
MOVW	R1, #lo_addr(_display_height+0)
MOVT	R1, #hi_addr(_display_height+0)
STRH	R2, [R1, #0]
;MyProject_TA_driver.c,1423 :: 		TFT_BLED           = save_bled;
LDRB	R3, [SP, #60]
MOVW	R2, #lo_addr(GPIOF_ODR+0)
MOVT	R2, #hi_addr(GPIOF_ODR+0)
LDR	R1, [R2, #0]
BFI	R1, R3, #10, #1
STR	R1, [R2, #0]
;MyProject_TA_driver.c,1424 :: 		}
IT	AL
BAL	L_DrawScreen34
L_DrawScreen33:
;MyProject_TA_driver.c,1426 :: 		TFT_Fill_Screen(CurrentScreen->Color);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
LDRH	R1, [R1, #0]
UXTH	R0, R1
BL	_TFT_Fill_Screen+0
L_DrawScreen34:
;MyProject_TA_driver.c,1429 :: 		while (order < CurrentScreen->ObjectsCount) {
L_DrawScreen35:
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, R1, #6
LDRH	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen36
;MyProject_TA_driver.c,1430 :: 		if (round_button_idx < CurrentScreen->Buttons_RoundCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #8
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #6]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen37
;MyProject_TA_driver.c,1431 :: 		local_round_button = GetRoundButton(round_button_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #12
LDR	R2, [R1, #0]
LDRB	R1, [SP, #6]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #8]
;MyProject_TA_driver.c,1432 :: 		if (order == local_round_button->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen38
;MyProject_TA_driver.c,1433 :: 		round_button_idx++;
LDRB	R1, [SP, #6]
ADDS	R1, R1, #1
STRB	R1, [SP, #6]
;MyProject_TA_driver.c,1434 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1435 :: 		DrawRoundButton(local_round_button);
LDR	R0, [SP, #8]
BL	_DrawRoundButton+0
;MyProject_TA_driver.c,1436 :: 		}
L_DrawScreen38:
;MyProject_TA_driver.c,1437 :: 		}
L_DrawScreen37:
;MyProject_TA_driver.c,1439 :: 		if (label_idx < CurrentScreen->LabelsCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #16
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #12]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen39
;MyProject_TA_driver.c,1440 :: 		local_label = GetLabel(label_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #20
LDR	R2, [R1, #0]
LDRB	R1, [SP, #12]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #16]
;MyProject_TA_driver.c,1441 :: 		if (order == local_label->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen40
;MyProject_TA_driver.c,1442 :: 		label_idx++;
LDRB	R1, [SP, #12]
ADDS	R1, R1, #1
STRB	R1, [SP, #12]
;MyProject_TA_driver.c,1443 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1444 :: 		DrawLabel(local_label);
LDR	R0, [SP, #16]
BL	_DrawLabel+0
;MyProject_TA_driver.c,1445 :: 		}
L_DrawScreen40:
;MyProject_TA_driver.c,1446 :: 		}
L_DrawScreen39:
;MyProject_TA_driver.c,1448 :: 		if (box_idx < CurrentScreen->BoxesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #40
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #36]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen41
;MyProject_TA_driver.c,1449 :: 		local_box = GetBox(box_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #44
LDR	R2, [R1, #0]
LDRB	R1, [SP, #36]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #40]
;MyProject_TA_driver.c,1450 :: 		if (order == local_box->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen42
;MyProject_TA_driver.c,1451 :: 		box_idx++;
LDRB	R1, [SP, #36]
ADDS	R1, R1, #1
STRB	R1, [SP, #36]
;MyProject_TA_driver.c,1452 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1453 :: 		DrawBox(local_box);
LDR	R0, [SP, #40]
BL	_DrawBox+0
;MyProject_TA_driver.c,1454 :: 		}
L_DrawScreen42:
;MyProject_TA_driver.c,1455 :: 		}
L_DrawScreen41:
;MyProject_TA_driver.c,1457 :: 		if (round_box_idx < CurrentScreen->Boxes_RoundCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #48
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #44]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen43
;MyProject_TA_driver.c,1458 :: 		local_round_box = GetBox_Round(round_box_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #52
LDR	R2, [R1, #0]
LDRB	R1, [SP, #44]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #48]
;MyProject_TA_driver.c,1459 :: 		if (order == local_round_box->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen44
;MyProject_TA_driver.c,1460 :: 		round_box_idx++;
LDRB	R1, [SP, #44]
ADDS	R1, R1, #1
STRB	R1, [SP, #44]
;MyProject_TA_driver.c,1461 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1462 :: 		DrawRoundBox(local_round_box);
LDR	R0, [SP, #48]
BL	_DrawRoundBox+0
;MyProject_TA_driver.c,1463 :: 		}
L_DrawScreen44:
;MyProject_TA_driver.c,1464 :: 		}
L_DrawScreen43:
;MyProject_TA_driver.c,1466 :: 		if (line_idx < CurrentScreen->LinesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #56
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #52]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen45
;MyProject_TA_driver.c,1467 :: 		local_line = GetLine(line_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #60
LDR	R2, [R1, #0]
LDRB	R1, [SP, #52]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #56]
;MyProject_TA_driver.c,1468 :: 		if (order == local_line->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen46
;MyProject_TA_driver.c,1469 :: 		line_idx++;
LDRB	R1, [SP, #52]
ADDS	R1, R1, #1
STRB	R1, [SP, #52]
;MyProject_TA_driver.c,1470 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1471 :: 		DrawLine(local_line);
LDR	R0, [SP, #56]
BL	_DrawLine+0
;MyProject_TA_driver.c,1472 :: 		}
L_DrawScreen46:
;MyProject_TA_driver.c,1473 :: 		}
L_DrawScreen45:
;MyProject_TA_driver.c,1475 :: 		if (image_idx < CurrentScreen->ImagesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #24
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #20]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen47
;MyProject_TA_driver.c,1476 :: 		local_image = GetImage(image_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #28
LDR	R2, [R1, #0]
LDRB	R1, [SP, #20]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #24]
;MyProject_TA_driver.c,1477 :: 		if (order == local_image->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen48
;MyProject_TA_driver.c,1478 :: 		image_idx++;
LDRB	R1, [SP, #20]
ADDS	R1, R1, #1
STRB	R1, [SP, #20]
;MyProject_TA_driver.c,1479 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1480 :: 		DrawImage(local_image);
LDR	R0, [SP, #24]
BL	_DrawImage+0
;MyProject_TA_driver.c,1481 :: 		}
L_DrawScreen48:
;MyProject_TA_driver.c,1482 :: 		}
L_DrawScreen47:
;MyProject_TA_driver.c,1484 :: 		if (cimage_idx < CurrentScreen->CImagesCount) {
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #32
LDRH	R2, [R1, #0]
LDRB	R1, [SP, #28]
CMP	R1, R2
IT	CS
BCS	L_DrawScreen49
;MyProject_TA_driver.c,1485 :: 		local_cimage = GetCImage(cimage_idx);
MOVW	R1, #lo_addr(_CurrentScreen+0)
MOVT	R1, #hi_addr(_CurrentScreen+0)
LDR	R1, [R1, #0]
ADDS	R1, #36
LDR	R2, [R1, #0]
LDRB	R1, [SP, #28]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
LDR	R1, [R1, #0]
STR	R1, [SP, #32]
;MyProject_TA_driver.c,1486 :: 		if (order == local_cimage->Order) {
ADDS	R1, R1, #4
LDRB	R2, [R1, #0]
LDRH	R1, [SP, #4]
CMP	R1, R2
IT	NE
BNE	L_DrawScreen50
;MyProject_TA_driver.c,1487 :: 		cimage_idx++;
LDRB	R1, [SP, #28]
ADDS	R1, R1, #1
STRB	R1, [SP, #28]
;MyProject_TA_driver.c,1488 :: 		order++;
LDRH	R1, [SP, #4]
ADDS	R1, R1, #1
STRH	R1, [SP, #4]
;MyProject_TA_driver.c,1489 :: 		DrawCImage(local_cimage);
LDR	R0, [SP, #32]
BL	_DrawCImage+0
;MyProject_TA_driver.c,1490 :: 		}
L_DrawScreen50:
;MyProject_TA_driver.c,1491 :: 		}
L_DrawScreen49:
;MyProject_TA_driver.c,1493 :: 		}
IT	AL
BAL	L_DrawScreen35
L_DrawScreen36:
;MyProject_TA_driver.c,1494 :: 		}
L_end_DrawScreen:
LDR	LR, [SP, #0]
ADD	SP, SP, #64
BX	LR
; end of _DrawScreen
_Get_Object:
;MyProject_TA_driver.c,1496 :: 		void Get_Object(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_TA_driver.c,1497 :: 		round_button_order  = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1498 :: 		label_order         = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1499 :: 		image_order         = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1500 :: 		cimage_order        = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1501 :: 		box_order           = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1502 :: 		box_round_order     = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1504 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 0 (R0)
; Y end address is: 4 (R1)
UXTH	R8, R0
UXTH	R7, R1
L_Get_Object51:
; Y start address is: 28 (R7)
; X start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object52
;MyProject_TA_driver.c,1505 :: 		local_round_button = GetRoundButton(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #12
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_round_button+0)
MOVT	R2, #hi_addr(_local_round_button+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1506 :: 		if (local_round_button->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object54
;MyProject_TA_driver.c,1508 :: 		local_round_button->Width, local_round_button->Height) == 1) {
MOVW	R6, #lo_addr(_local_round_button+0)
MOVT	R6, #hi_addr(_local_round_button+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1507 :: 		if (IsInsideObject(X, Y, local_round_button->Left, local_round_button->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_TA_driver.c,1508 :: 		local_round_button->Width, local_round_button->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object55
;MyProject_TA_driver.c,1509 :: 		round_button_order = local_round_button->Order;
MOVW	R4, #lo_addr(_local_round_button+0)
MOVT	R4, #hi_addr(_local_round_button+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1510 :: 		exec_round_button = local_round_button;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1511 :: 		}
L_Get_Object55:
;MyProject_TA_driver.c,1512 :: 		}
L_Get_Object54:
;MyProject_TA_driver.c,1504 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Buttons_RoundCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1513 :: 		}
IT	AL
BAL	L_Get_Object51
L_Get_Object52:
;MyProject_TA_driver.c,1516 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object56:
; X start address is: 28 (R7)
; Y start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #16
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object57
;MyProject_TA_driver.c,1517 :: 		local_label = GetLabel(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #20
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_label+0)
MOVT	R2, #hi_addr(_local_label+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1518 :: 		if (local_label->Active != 0) {
ADDW	R2, R3, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object59
;MyProject_TA_driver.c,1520 :: 		local_label->Width, local_label->Height) == 1) {
MOVW	R6, #lo_addr(_local_label+0)
MOVT	R6, #hi_addr(_local_label+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1519 :: 		if (IsInsideObject(X, Y, local_label->Left, local_label->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R8
UXTH	R0, R7
;MyProject_TA_driver.c,1520 :: 		local_label->Width, local_label->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object60
;MyProject_TA_driver.c,1521 :: 		label_order = local_label->Order;
MOVW	R4, #lo_addr(_local_label+0)
MOVT	R4, #hi_addr(_local_label+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1522 :: 		exec_label = local_label;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1523 :: 		}
L_Get_Object60:
;MyProject_TA_driver.c,1524 :: 		}
L_Get_Object59:
;MyProject_TA_driver.c,1516 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->LabelsCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1525 :: 		}
IT	AL
BAL	L_Get_Object56
L_Get_Object57:
;MyProject_TA_driver.c,1528 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object61:
; Y start address is: 28 (R7)
; X start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #24
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object62
;MyProject_TA_driver.c,1529 :: 		local_image = GetImage(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_image+0)
MOVT	R2, #hi_addr(_local_image+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1530 :: 		if (local_image->Active != 0) {
ADDW	R2, R3, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object64
;MyProject_TA_driver.c,1532 :: 		local_image->Width, local_image->Height) == 1) {
MOVW	R6, #lo_addr(_local_image+0)
MOVT	R6, #hi_addr(_local_image+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1531 :: 		if (IsInsideObject(X, Y, local_image->Left, local_image->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_TA_driver.c,1532 :: 		local_image->Width, local_image->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object65
;MyProject_TA_driver.c,1533 :: 		image_order = local_image->Order;
MOVW	R4, #lo_addr(_local_image+0)
MOVT	R4, #hi_addr(_local_image+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1534 :: 		exec_image = local_image;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1535 :: 		}
L_Get_Object65:
;MyProject_TA_driver.c,1536 :: 		}
L_Get_Object64:
;MyProject_TA_driver.c,1528 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->ImagesCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1537 :: 		}
IT	AL
BAL	L_Get_Object61
L_Get_Object62:
;MyProject_TA_driver.c,1540 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->CImagesCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object66:
; X start address is: 28 (R7)
; Y start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #32
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object67
;MyProject_TA_driver.c,1541 :: 		local_cimage = GetCImage(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #36
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_cimage+0)
MOVT	R2, #hi_addr(_local_cimage+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1542 :: 		if (local_cimage->Active != 0) {
ADDW	R2, R3, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object69
;MyProject_TA_driver.c,1544 :: 		local_cimage->Width, local_cimage->Height) == 1) {
MOVW	R6, #lo_addr(_local_cimage+0)
MOVT	R6, #hi_addr(_local_cimage+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1543 :: 		if (IsInsideObject(X, Y, local_cimage->Left, local_cimage->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R8
UXTH	R0, R7
;MyProject_TA_driver.c,1544 :: 		local_cimage->Width, local_cimage->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object70
;MyProject_TA_driver.c,1545 :: 		cimage_order = local_cimage->Order;
MOVW	R4, #lo_addr(_local_cimage+0)
MOVT	R4, #hi_addr(_local_cimage+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1546 :: 		exec_cimage = local_cimage;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1547 :: 		}
L_Get_Object70:
;MyProject_TA_driver.c,1548 :: 		}
L_Get_Object69:
;MyProject_TA_driver.c,1540 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->CImagesCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1549 :: 		}
IT	AL
BAL	L_Get_Object66
L_Get_Object67:
;MyProject_TA_driver.c,1552 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object71:
; Y start address is: 28 (R7)
; X start address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #40
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object72
;MyProject_TA_driver.c,1553 :: 		local_box = GetBox(_object_count);
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #44
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_box+0)
MOVT	R2, #hi_addr(_local_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1554 :: 		if (local_box->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object74
;MyProject_TA_driver.c,1556 :: 		local_box->Width, local_box->Height) == 1) {
MOVW	R6, #lo_addr(_local_box+0)
MOVT	R6, #hi_addr(_local_box+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1555 :: 		if (IsInsideObject(X, Y, local_box->Left, local_box->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R7
UXTH	R0, R8
;MyProject_TA_driver.c,1556 :: 		local_box->Width, local_box->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object75
;MyProject_TA_driver.c,1557 :: 		box_order = local_box->Order;
MOVW	R4, #lo_addr(_local_box+0)
MOVT	R4, #hi_addr(_local_box+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1558 :: 		exec_box = local_box;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1559 :: 		}
L_Get_Object75:
;MyProject_TA_driver.c,1560 :: 		}
L_Get_Object74:
;MyProject_TA_driver.c,1552 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->BoxesCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1561 :: 		}
IT	AL
BAL	L_Get_Object71
L_Get_Object72:
;MyProject_TA_driver.c,1564 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
MOVS	R3, #0
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
; Y end address is: 28 (R7)
; X end address is: 32 (R8)
STRH	R8, [SP, #4]
UXTH	R8, R7
LDRH	R7, [SP, #4]
L_Get_Object76:
; Y start address is: 32 (R8)
; X start address is: 28 (R7)
; X start address is: 28 (R7)
; X end address is: 28 (R7)
; Y start address is: 32 (R8)
; Y end address is: 32 (R8)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #48
LDRH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	CS
BCS	L_Get_Object77
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
;MyProject_TA_driver.c,1565 :: 		local_round_box = GetBox_Round(_object_count);
; Y start address is: 32 (R8)
; X start address is: 28 (R7)
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
ADDS	R2, #52
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
LSLS	R2, R2, #2
ADDS	R2, R3, R2
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_local_round_box+0)
MOVT	R2, #hi_addr(_local_round_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1566 :: 		if (local_round_box->Active != 0) {
ADDW	R2, R3, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Get_Object79
;MyProject_TA_driver.c,1568 :: 		local_round_box->Width, local_round_box->Height) == 1) {
MOVW	R6, #lo_addr(_local_round_box+0)
MOVT	R6, #hi_addr(_local_round_box+0)
LDR	R2, [R6, #0]
ADDS	R2, #12
LDRH	R2, [R2, #0]
UXTH	R5, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #10
LDRH	R2, [R2, #0]
UXTH	R4, R2
;MyProject_TA_driver.c,1567 :: 		if (IsInsideObject(X, Y, local_round_box->Left, local_round_box->Top,
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, #8
LDRH	R2, [R2, #0]
UXTH	R3, R2
MOV	R2, R6
LDR	R2, [R2, #0]
ADDS	R2, R2, #6
LDRH	R2, [R2, #0]
UXTH	R1, R8
UXTH	R0, R7
;MyProject_TA_driver.c,1568 :: 		local_round_box->Width, local_round_box->Height) == 1) {
PUSH	(R5)
PUSH	(R4)
BL	MyProject_TA_driver_IsInsideObject+0
ADD	SP, SP, #8
CMP	R0, #1
IT	NE
BNE	L_Get_Object80
;MyProject_TA_driver.c,1569 :: 		box_round_order = local_round_box->Order;
MOVW	R4, #lo_addr(_local_round_box+0)
MOVT	R4, #hi_addr(_local_round_box+0)
LDR	R2, [R4, #0]
ADDS	R2, R2, #4
LDRB	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1570 :: 		exec_round_box = local_round_box;
MOV	R2, R4
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1571 :: 		}
L_Get_Object80:
;MyProject_TA_driver.c,1572 :: 		}
L_Get_Object79:
;MyProject_TA_driver.c,1564 :: 		for ( _object_count = 0 ; _object_count < CurrentScreen->Boxes_RoundCount ; _object_count++ ) {
MOVW	R3, #lo_addr(__object_count+0)
MOVT	R3, #hi_addr(__object_count+0)
LDRSH	R2, [R3, #0]
ADDS	R2, R2, #1
STRH	R2, [R3, #0]
;MyProject_TA_driver.c,1573 :: 		}
; X end address is: 28 (R7)
; Y end address is: 32 (R8)
IT	AL
BAL	L_Get_Object76
L_Get_Object77:
;MyProject_TA_driver.c,1575 :: 		_object_count = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1576 :: 		if (round_button_order >  _object_count )
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	LE
BLE	L_Get_Object81
;MyProject_TA_driver.c,1577 :: 		_object_count = round_button_order;
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object81:
;MyProject_TA_driver.c,1578 :: 		if (label_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object82
;MyProject_TA_driver.c,1579 :: 		_object_count = label_order;
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object82:
;MyProject_TA_driver.c,1580 :: 		if (image_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object83
;MyProject_TA_driver.c,1581 :: 		_object_count = image_order;
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object83:
;MyProject_TA_driver.c,1582 :: 		if (cimage_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object84
;MyProject_TA_driver.c,1583 :: 		_object_count = cimage_order;
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object84:
;MyProject_TA_driver.c,1584 :: 		if (box_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object85
;MyProject_TA_driver.c,1585 :: 		_object_count = box_order;
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object85:
;MyProject_TA_driver.c,1586 :: 		if (box_round_order >  _object_count )
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	LE
BLE	L_Get_Object86
;MyProject_TA_driver.c,1587 :: 		_object_count = box_round_order;
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
STRH	R3, [R2, #0]
L_Get_Object86:
;MyProject_TA_driver.c,1588 :: 		}
L_end_Get_Object:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _Get_Object
_Process_TP_Press:
;MyProject_TA_driver.c,1591 :: 		void Process_TP_Press(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_TA_driver.c,1592 :: 		exec_round_button   = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1593 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1594 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1595 :: 		exec_cimage         = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1596 :: 		exec_box            = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1597 :: 		exec_round_box      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1599 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_TA_driver.c,1601 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Press87
;MyProject_TA_driver.c,1602 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press88
;MyProject_TA_driver.c,1603 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press89
;MyProject_TA_driver.c,1604 :: 		if (exec_round_button->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #64
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press90
;MyProject_TA_driver.c,1605 :: 		exec_round_button->OnPressPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #64
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1606 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1607 :: 		}
L_Process_TP_Press90:
;MyProject_TA_driver.c,1608 :: 		}
L_Process_TP_Press89:
;MyProject_TA_driver.c,1609 :: 		}
L_Process_TP_Press88:
;MyProject_TA_driver.c,1611 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press91
;MyProject_TA_driver.c,1612 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press92
;MyProject_TA_driver.c,1613 :: 		if (exec_label->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press93
;MyProject_TA_driver.c,1614 :: 		exec_label->OnPressPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1615 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1616 :: 		}
L_Process_TP_Press93:
;MyProject_TA_driver.c,1617 :: 		}
L_Process_TP_Press92:
;MyProject_TA_driver.c,1618 :: 		}
L_Process_TP_Press91:
;MyProject_TA_driver.c,1620 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press94
;MyProject_TA_driver.c,1621 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press95
;MyProject_TA_driver.c,1622 :: 		if (exec_image->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press96
;MyProject_TA_driver.c,1623 :: 		exec_image->OnPressPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1624 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1625 :: 		}
L_Process_TP_Press96:
;MyProject_TA_driver.c,1626 :: 		}
L_Process_TP_Press95:
;MyProject_TA_driver.c,1627 :: 		}
L_Process_TP_Press94:
;MyProject_TA_driver.c,1629 :: 		if (_object_count == cimage_order) {
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press97
;MyProject_TA_driver.c,1630 :: 		if (exec_cimage->Active != 0) {
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press98
;MyProject_TA_driver.c,1631 :: 		if (exec_cimage->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press99
;MyProject_TA_driver.c,1632 :: 		exec_cimage->OnPressPtr();
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1633 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1634 :: 		}
L_Process_TP_Press99:
;MyProject_TA_driver.c,1635 :: 		}
L_Process_TP_Press98:
;MyProject_TA_driver.c,1636 :: 		}
L_Process_TP_Press97:
;MyProject_TA_driver.c,1638 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press100
;MyProject_TA_driver.c,1639 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press101
;MyProject_TA_driver.c,1640 :: 		if (exec_box->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press102
;MyProject_TA_driver.c,1641 :: 		exec_box->OnPressPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1642 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1643 :: 		}
L_Process_TP_Press102:
;MyProject_TA_driver.c,1644 :: 		}
L_Process_TP_Press101:
;MyProject_TA_driver.c,1645 :: 		}
L_Process_TP_Press100:
;MyProject_TA_driver.c,1647 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Press103
;MyProject_TA_driver.c,1648 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Press104
;MyProject_TA_driver.c,1649 :: 		if (exec_round_box->OnPressPtr != 0) {
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Press105
;MyProject_TA_driver.c,1650 :: 		exec_round_box->OnPressPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #48
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1651 :: 		return;
IT	AL
BAL	L_end_Process_TP_Press
;MyProject_TA_driver.c,1652 :: 		}
L_Process_TP_Press105:
;MyProject_TA_driver.c,1653 :: 		}
L_Process_TP_Press104:
;MyProject_TA_driver.c,1654 :: 		}
L_Process_TP_Press103:
;MyProject_TA_driver.c,1656 :: 		}
L_Process_TP_Press87:
;MyProject_TA_driver.c,1657 :: 		}
L_end_Process_TP_Press:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Process_TP_Press
_Process_TP_Up:
;MyProject_TA_driver.c,1659 :: 		void Process_TP_Up(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_TA_driver.c,1661 :: 		switch (PressedObjectType) {
IT	AL
BAL	L_Process_TP_Up106
;MyProject_TA_driver.c,1663 :: 		case 1: {
L_Process_TP_Up108:
;MyProject_TA_driver.c,1664 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up109
;MyProject_TA_driver.c,1665 :: 		exec_round_button = (TButton_Round*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1666 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #49
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up204
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up203
L__Process_TP_Up202:
;MyProject_TA_driver.c,1667 :: 		DrawRoundButton(exec_round_button);
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawRoundButton+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_TA_driver.c,1666 :: 		if ((exec_round_button->PressColEnabled != 0) && (exec_round_button->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up204:
L__Process_TP_Up203:
;MyProject_TA_driver.c,1669 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1670 :: 		}
L_Process_TP_Up109:
;MyProject_TA_driver.c,1671 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1674 :: 		case 6: {
L_Process_TP_Up113:
;MyProject_TA_driver.c,1675 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up114
;MyProject_TA_driver.c,1676 :: 		exec_box = (TBox*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1677 :: 		if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #30
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up206
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up205
L__Process_TP_Up201:
;MyProject_TA_driver.c,1678 :: 		DrawBox(exec_box);
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawBox+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_TA_driver.c,1677 :: 		if ((exec_box->PressColEnabled != 0) && (exec_box->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up206:
L__Process_TP_Up205:
;MyProject_TA_driver.c,1680 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1681 :: 		}
L_Process_TP_Up114:
;MyProject_TA_driver.c,1682 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1685 :: 		case 7: {
L_Process_TP_Up118:
;MyProject_TA_driver.c,1686 :: 		if (PressedObject != 0) {
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up119
;MyProject_TA_driver.c,1687 :: 		exec_round_box = (TBox_Round*)PressedObject;
MOVW	R4, #lo_addr(_PressedObject+0)
MOVT	R4, #hi_addr(_PressedObject+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1688 :: 		if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
MOV	R2, R4
LDR	R2, [R2, #0]
ADDS	R2, #31
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L__Process_TP_Up208
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_CurrentScreen+0)
MOVT	R2, #hi_addr(_CurrentScreen+0)
LDR	R2, [R2, #0]
CMP	R3, R2
IT	NE
BNE	L__Process_TP_Up207
L__Process_TP_Up200:
;MyProject_TA_driver.c,1689 :: 		DrawRoundBox(exec_round_box);
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
STRH	R1, [SP, #4]
STRH	R0, [SP, #8]
MOV	R0, R2
BL	_DrawRoundBox+0
LDRH	R0, [SP, #8]
LDRH	R1, [SP, #4]
;MyProject_TA_driver.c,1688 :: 		if ((exec_round_box->PressColEnabled != 0) && (exec_round_box->OwnerScreen == CurrentScreen)) {
L__Process_TP_Up208:
L__Process_TP_Up207:
;MyProject_TA_driver.c,1691 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1692 :: 		}
L_Process_TP_Up119:
;MyProject_TA_driver.c,1693 :: 		break;
IT	AL
BAL	L_Process_TP_Up107
;MyProject_TA_driver.c,1695 :: 		}
L_Process_TP_Up106:
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #1
IT	EQ
BEQ	L_Process_TP_Up108
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #6
IT	EQ
BEQ	L_Process_TP_Up113
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
LDRSH	R2, [R2, #0]
CMP	R2, #7
IT	EQ
BEQ	L_Process_TP_Up118
L_Process_TP_Up107:
;MyProject_TA_driver.c,1697 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1698 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1699 :: 		exec_cimage          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1701 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_TA_driver.c,1704 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Up123
;MyProject_TA_driver.c,1706 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up124
;MyProject_TA_driver.c,1707 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up125
;MyProject_TA_driver.c,1708 :: 		if (exec_round_button->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #52
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up126
;MyProject_TA_driver.c,1709 :: 		exec_round_button->OnUpPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #52
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up126:
;MyProject_TA_driver.c,1710 :: 		if (PressedObject == (TPointer)exec_round_button)
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up127
;MyProject_TA_driver.c,1711 :: 		if (exec_round_button->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #60
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up128
;MyProject_TA_driver.c,1712 :: 		exec_round_button->OnClickPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #60
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up128:
L_Process_TP_Up127:
;MyProject_TA_driver.c,1713 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1714 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1715 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1716 :: 		}
L_Process_TP_Up125:
;MyProject_TA_driver.c,1717 :: 		}
L_Process_TP_Up124:
;MyProject_TA_driver.c,1720 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up129
;MyProject_TA_driver.c,1721 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up130
;MyProject_TA_driver.c,1722 :: 		if (exec_label->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up131
;MyProject_TA_driver.c,1723 :: 		exec_label->OnUpPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up131:
;MyProject_TA_driver.c,1724 :: 		if (PressedObject == (TPointer)exec_label)
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up132
;MyProject_TA_driver.c,1725 :: 		if (exec_label->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up133
;MyProject_TA_driver.c,1726 :: 		exec_label->OnClickPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up133:
L_Process_TP_Up132:
;MyProject_TA_driver.c,1727 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1728 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1729 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1730 :: 		}
L_Process_TP_Up130:
;MyProject_TA_driver.c,1731 :: 		}
L_Process_TP_Up129:
;MyProject_TA_driver.c,1734 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up134
;MyProject_TA_driver.c,1735 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up135
;MyProject_TA_driver.c,1736 :: 		if (exec_image->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up136
;MyProject_TA_driver.c,1737 :: 		exec_image->OnUpPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up136:
;MyProject_TA_driver.c,1738 :: 		if (PressedObject == (TPointer)exec_image)
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up137
;MyProject_TA_driver.c,1739 :: 		if (exec_image->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up138
;MyProject_TA_driver.c,1740 :: 		exec_image->OnClickPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up138:
L_Process_TP_Up137:
;MyProject_TA_driver.c,1741 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1742 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1743 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1744 :: 		}
L_Process_TP_Up135:
;MyProject_TA_driver.c,1745 :: 		}
L_Process_TP_Up134:
;MyProject_TA_driver.c,1748 :: 		if (_object_count == cimage_order) {
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up139
;MyProject_TA_driver.c,1749 :: 		if (exec_cimage->Active != 0) {
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up140
;MyProject_TA_driver.c,1750 :: 		if (exec_cimage->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up141
;MyProject_TA_driver.c,1751 :: 		exec_cimage->OnUpPtr();
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #24
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up141:
;MyProject_TA_driver.c,1752 :: 		if (PressedObject == (TPointer)exec_cimage)
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up142
;MyProject_TA_driver.c,1753 :: 		if (exec_cimage->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up143
;MyProject_TA_driver.c,1754 :: 		exec_cimage->OnClickPtr();
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #32
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up143:
L_Process_TP_Up142:
;MyProject_TA_driver.c,1755 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1756 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1757 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1758 :: 		}
L_Process_TP_Up140:
;MyProject_TA_driver.c,1759 :: 		}
L_Process_TP_Up139:
;MyProject_TA_driver.c,1762 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up144
;MyProject_TA_driver.c,1763 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up145
;MyProject_TA_driver.c,1764 :: 		if (exec_box->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up146
;MyProject_TA_driver.c,1765 :: 		exec_box->OnUpPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up146:
;MyProject_TA_driver.c,1766 :: 		if (PressedObject == (TPointer)exec_box)
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up147
;MyProject_TA_driver.c,1767 :: 		if (exec_box->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up148
;MyProject_TA_driver.c,1768 :: 		exec_box->OnClickPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up148:
L_Process_TP_Up147:
;MyProject_TA_driver.c,1769 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1770 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1771 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1772 :: 		}
L_Process_TP_Up145:
;MyProject_TA_driver.c,1773 :: 		}
L_Process_TP_Up144:
;MyProject_TA_driver.c,1776 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up149
;MyProject_TA_driver.c,1777 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Up150
;MyProject_TA_driver.c,1778 :: 		if (exec_round_box->OnUpPtr != 0)
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up151
;MyProject_TA_driver.c,1779 :: 		exec_round_box->OnUpPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up151:
;MyProject_TA_driver.c,1780 :: 		if (PressedObject == (TPointer)exec_round_box)
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R3, [R2, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
LDR	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Up152
;MyProject_TA_driver.c,1781 :: 		if (exec_round_box->OnClickPtr != 0)
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Up153
;MyProject_TA_driver.c,1782 :: 		exec_round_box->OnClickPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #44
LDR	R2, [R4, #0]
BLX	R2
L_Process_TP_Up153:
L_Process_TP_Up152:
;MyProject_TA_driver.c,1783 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1784 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1785 :: 		return;
IT	AL
BAL	L_end_Process_TP_Up
;MyProject_TA_driver.c,1786 :: 		}
L_Process_TP_Up150:
;MyProject_TA_driver.c,1787 :: 		}
L_Process_TP_Up149:
;MyProject_TA_driver.c,1789 :: 		}
L_Process_TP_Up123:
;MyProject_TA_driver.c,1790 :: 		PressedObject = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1791 :: 		PressedObjectType = -1;
MOVW	R3, #65535
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1792 :: 		}
L_end_Process_TP_Up:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _Process_TP_Up
_Process_TP_Down:
;MyProject_TA_driver.c,1794 :: 		void Process_TP_Down(unsigned int X, unsigned int Y) {
; Y start address is: 4 (R1)
; X start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
; X start address is: 0 (R0)
; Y start address is: 4 (R1)
;MyProject_TA_driver.c,1796 :: 		object_pressed      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_TA_driver.c,1797 :: 		exec_round_button   = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1798 :: 		exec_label          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1799 :: 		exec_image          = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1800 :: 		exec_cimage         = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1801 :: 		exec_box            = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1802 :: 		exec_round_box      = 0;
MOVS	R3, #0
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1804 :: 		Get_Object(X, Y);
; Y end address is: 4 (R1)
; X end address is: 0 (R0)
BL	_Get_Object+0
;MyProject_TA_driver.c,1806 :: 		if (_object_count != -1) {
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, #-1
IT	EQ
BEQ	L_Process_TP_Down154
;MyProject_TA_driver.c,1807 :: 		if (_object_count == round_button_order) {
MOVW	R2, #lo_addr(_round_button_order+0)
MOVT	R2, #hi_addr(_round_button_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down155
;MyProject_TA_driver.c,1808 :: 		if (exec_round_button->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down156
;MyProject_TA_driver.c,1809 :: 		if (exec_round_button->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
ADDS	R2, #49
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down157
;MyProject_TA_driver.c,1810 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_TA_driver.c,1811 :: 		DrawRoundButton(exec_round_button);
MOVW	R2, #lo_addr(_exec_round_button+0)
MOVT	R2, #hi_addr(_exec_round_button+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawRoundButton+0
;MyProject_TA_driver.c,1812 :: 		}
L_Process_TP_Down157:
;MyProject_TA_driver.c,1813 :: 		PressedObject = (TPointer)exec_round_button;
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1814 :: 		PressedObjectType = 1;
MOVS	R3, #1
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1815 :: 		if (exec_round_button->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #56
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down158
;MyProject_TA_driver.c,1816 :: 		exec_round_button->OnDownPtr();
MOVW	R4, #lo_addr(_exec_round_button+0)
MOVT	R4, #hi_addr(_exec_round_button+0)
LDR	R4, [R4, #0]
ADDS	R4, #56
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1817 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1818 :: 		}
L_Process_TP_Down158:
;MyProject_TA_driver.c,1819 :: 		}
L_Process_TP_Down156:
;MyProject_TA_driver.c,1820 :: 		}
L_Process_TP_Down155:
;MyProject_TA_driver.c,1822 :: 		if (_object_count == label_order) {
MOVW	R2, #lo_addr(_label_order+0)
MOVT	R2, #hi_addr(_label_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down159
;MyProject_TA_driver.c,1823 :: 		if (exec_label->Active != 0) {
MOVW	R2, #lo_addr(_exec_label+0)
MOVT	R2, #hi_addr(_exec_label+0)
LDR	R2, [R2, #0]
ADDS	R2, #28
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down160
;MyProject_TA_driver.c,1824 :: 		PressedObject = (TPointer)exec_label;
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1825 :: 		PressedObjectType = 2;
MOVS	R3, #2
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1826 :: 		if (exec_label->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down161
;MyProject_TA_driver.c,1827 :: 		exec_label->OnDownPtr();
MOVW	R4, #lo_addr(_exec_label+0)
MOVT	R4, #hi_addr(_exec_label+0)
LDR	R4, [R4, #0]
ADDS	R4, #36
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1828 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1829 :: 		}
L_Process_TP_Down161:
;MyProject_TA_driver.c,1830 :: 		}
L_Process_TP_Down160:
;MyProject_TA_driver.c,1831 :: 		}
L_Process_TP_Down159:
;MyProject_TA_driver.c,1833 :: 		if (_object_count == image_order) {
MOVW	R2, #lo_addr(_image_order+0)
MOVT	R2, #hi_addr(_image_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down162
;MyProject_TA_driver.c,1834 :: 		if (exec_image->Active != 0) {
MOVW	R2, #lo_addr(_exec_image+0)
MOVT	R2, #hi_addr(_exec_image+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down163
;MyProject_TA_driver.c,1835 :: 		PressedObject = (TPointer)exec_image;
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1836 :: 		PressedObjectType = 3;
MOVS	R3, #3
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1837 :: 		if (exec_image->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down164
;MyProject_TA_driver.c,1838 :: 		exec_image->OnDownPtr();
MOVW	R4, #lo_addr(_exec_image+0)
MOVT	R4, #hi_addr(_exec_image+0)
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1839 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1840 :: 		}
L_Process_TP_Down164:
;MyProject_TA_driver.c,1841 :: 		}
L_Process_TP_Down163:
;MyProject_TA_driver.c,1842 :: 		}
L_Process_TP_Down162:
;MyProject_TA_driver.c,1844 :: 		if (_object_count == cimage_order) {
MOVW	R2, #lo_addr(_cimage_order+0)
MOVT	R2, #hi_addr(_cimage_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down165
;MyProject_TA_driver.c,1845 :: 		if (exec_cimage->Active != 0) {
MOVW	R2, #lo_addr(_exec_cimage+0)
MOVT	R2, #hi_addr(_exec_cimage+0)
LDR	R2, [R2, #0]
ADDS	R2, #21
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down166
;MyProject_TA_driver.c,1846 :: 		PressedObject = (TPointer)exec_cimage;
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1847 :: 		PressedObjectType = 11;
MOVS	R3, #11
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1848 :: 		if (exec_cimage->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down167
;MyProject_TA_driver.c,1849 :: 		exec_cimage->OnDownPtr();
MOVW	R4, #lo_addr(_exec_cimage+0)
MOVT	R4, #hi_addr(_exec_cimage+0)
LDR	R4, [R4, #0]
ADDS	R4, #28
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1850 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1851 :: 		}
L_Process_TP_Down167:
;MyProject_TA_driver.c,1852 :: 		}
L_Process_TP_Down166:
;MyProject_TA_driver.c,1853 :: 		}
L_Process_TP_Down165:
;MyProject_TA_driver.c,1855 :: 		if (_object_count == box_order) {
MOVW	R2, #lo_addr(_box_order+0)
MOVT	R2, #hi_addr(_box_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down168
;MyProject_TA_driver.c,1856 :: 		if (exec_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down169
;MyProject_TA_driver.c,1857 :: 		if (exec_box->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #30
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down170
;MyProject_TA_driver.c,1858 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_TA_driver.c,1859 :: 		DrawBox(exec_box);
MOVW	R2, #lo_addr(_exec_box+0)
MOVT	R2, #hi_addr(_exec_box+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawBox+0
;MyProject_TA_driver.c,1860 :: 		}
L_Process_TP_Down170:
;MyProject_TA_driver.c,1861 :: 		PressedObject = (TPointer)exec_box;
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1862 :: 		PressedObjectType = 6;
MOVS	R3, #6
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1863 :: 		if (exec_box->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down171
;MyProject_TA_driver.c,1864 :: 		exec_box->OnDownPtr();
MOVW	R4, #lo_addr(_exec_box+0)
MOVT	R4, #hi_addr(_exec_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1865 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1866 :: 		}
L_Process_TP_Down171:
;MyProject_TA_driver.c,1867 :: 		}
L_Process_TP_Down169:
;MyProject_TA_driver.c,1868 :: 		}
L_Process_TP_Down168:
;MyProject_TA_driver.c,1870 :: 		if (_object_count == box_round_order) {
MOVW	R2, #lo_addr(_box_round_order+0)
MOVT	R2, #hi_addr(_box_round_order+0)
LDRSH	R3, [R2, #0]
MOVW	R2, #lo_addr(__object_count+0)
MOVT	R2, #hi_addr(__object_count+0)
LDRSH	R2, [R2, #0]
CMP	R2, R3
IT	NE
BNE	L_Process_TP_Down172
;MyProject_TA_driver.c,1871 :: 		if (exec_round_box->Active != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #19
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down173
;MyProject_TA_driver.c,1872 :: 		if (exec_round_box->PressColEnabled != 0) {
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
ADDS	R2, #31
LDRB	R2, [R2, #0]
CMP	R2, #0
IT	EQ
BEQ	L_Process_TP_Down174
;MyProject_TA_driver.c,1873 :: 		object_pressed = 1;
MOVS	R3, #1
MOVW	R2, #lo_addr(_object_pressed+0)
MOVT	R2, #hi_addr(_object_pressed+0)
STRB	R3, [R2, #0]
;MyProject_TA_driver.c,1874 :: 		DrawRoundBox(exec_round_box);
MOVW	R2, #lo_addr(_exec_round_box+0)
MOVT	R2, #hi_addr(_exec_round_box+0)
LDR	R2, [R2, #0]
MOV	R0, R2
BL	_DrawRoundBox+0
;MyProject_TA_driver.c,1875 :: 		}
L_Process_TP_Down174:
;MyProject_TA_driver.c,1876 :: 		PressedObject = (TPointer)exec_round_box;
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R3, [R4, #0]
MOVW	R2, #lo_addr(_PressedObject+0)
MOVT	R2, #hi_addr(_PressedObject+0)
STR	R3, [R2, #0]
;MyProject_TA_driver.c,1877 :: 		PressedObjectType = 7;
MOVS	R3, #7
SXTH	R3, R3
MOVW	R2, #lo_addr(_PressedObjectType+0)
MOVT	R2, #hi_addr(_PressedObjectType+0)
STRH	R3, [R2, #0]
;MyProject_TA_driver.c,1878 :: 		if (exec_round_box->OnDownPtr != 0) {
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R4, [R4, #0]
CMP	R4, #0
IT	EQ
BEQ	L_Process_TP_Down175
;MyProject_TA_driver.c,1879 :: 		exec_round_box->OnDownPtr();
MOVW	R4, #lo_addr(_exec_round_box+0)
MOVT	R4, #hi_addr(_exec_round_box+0)
LDR	R4, [R4, #0]
ADDS	R4, #40
LDR	R2, [R4, #0]
BLX	R2
;MyProject_TA_driver.c,1880 :: 		return;
IT	AL
BAL	L_end_Process_TP_Down
;MyProject_TA_driver.c,1881 :: 		}
L_Process_TP_Down175:
;MyProject_TA_driver.c,1882 :: 		}
L_Process_TP_Down173:
;MyProject_TA_driver.c,1883 :: 		}
L_Process_TP_Down172:
;MyProject_TA_driver.c,1885 :: 		}
L_Process_TP_Down154:
;MyProject_TA_driver.c,1886 :: 		}
L_end_Process_TP_Down:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Process_TP_Down
_Check_TP:
;MyProject_TA_driver.c,1888 :: 		void Check_TP() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_driver.c,1889 :: 		if (FT5XX6_PressDetect()) {
BL	_FT5XX6_PressDetect+0
CMP	R0, #0
IT	EQ
BEQ	L_Check_TP176
;MyProject_TA_driver.c,1890 :: 		if (FT5XX6_GetCoordinates(&Xcoord, &Ycoord) == 0) {
MOVW	R1, #lo_addr(_Ycoord+0)
MOVT	R1, #hi_addr(_Ycoord+0)
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
BL	_FT5XX6_GetCoordinates+0
CMP	R0, #0
IT	NE
BNE	L_Check_TP177
;MyProject_TA_driver.c,1892 :: 		Process_TP_Press(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Press+0
;MyProject_TA_driver.c,1893 :: 		if (PenDown == 0) {
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_Check_TP178
;MyProject_TA_driver.c,1894 :: 		PenDown = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1895 :: 		Process_TP_Down(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Down+0
;MyProject_TA_driver.c,1896 :: 		}
L_Check_TP178:
;MyProject_TA_driver.c,1897 :: 		}
L_Check_TP177:
;MyProject_TA_driver.c,1898 :: 		}
IT	AL
BAL	L_Check_TP179
L_Check_TP176:
;MyProject_TA_driver.c,1899 :: 		else if (PenDown == 1) {
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_Check_TP180
;MyProject_TA_driver.c,1900 :: 		PenDown = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_PenDown+0)
MOVT	R0, #hi_addr(_PenDown+0)
STRB	R1, [R0, #0]
;MyProject_TA_driver.c,1901 :: 		Process_TP_Up(Xcoord, Ycoord);
MOVW	R0, #lo_addr(_Ycoord+0)
MOVT	R0, #hi_addr(_Ycoord+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_Xcoord+0)
MOVT	R0, #hi_addr(_Xcoord+0)
LDRH	R0, [R0, #0]
BL	_Process_TP_Up+0
;MyProject_TA_driver.c,1902 :: 		}
L_Check_TP180:
L_Check_TP179:
;MyProject_TA_driver.c,1903 :: 		}
L_end_Check_TP:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Check_TP
_Init_MCU:
;MyProject_TA_driver.c,1905 :: 		void Init_MCU() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_driver.c,1907 :: 		GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1);
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
;MyProject_TA_driver.c,1908 :: 		GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0);
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
;MyProject_TA_driver.c,1909 :: 		GPIOF_ODR.B1 = 1;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #2
STR	R0, [R1, #0]
;MyProject_TA_driver.c,1910 :: 		while (GPIOF_IDR.B0 == 0) {
L_Init_MCU181:
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
LDR	R1, [R0, #0]
UBFX	R0, R1, #0, #1
CMP	R0, #0
IT	NE
BNE	L_Init_MCU182
;MyProject_TA_driver.c,1911 :: 		GPIOF_ODR.B1 = 0;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
BFC	R0, #1, #1
STR	R0, [R1, #0]
;MyProject_TA_driver.c,1912 :: 		Delay_us(10);
MOVW	R7, #2154
MOVT	R7, #0
NOP
NOP
L_Init_MCU183:
SUBS	R7, R7, #1
BNE	L_Init_MCU183
NOP
NOP
NOP
;MyProject_TA_driver.c,1913 :: 		GPIOF_ODR.B1 = 1;
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #2
STR	R0, [R1, #0]
;MyProject_TA_driver.c,1914 :: 		Delay_us(10);
MOVW	R7, #2154
MOVT	R7, #0
NOP
NOP
L_Init_MCU185:
SUBS	R7, R7, #1
BNE	L_Init_MCU185
NOP
NOP
NOP
;MyProject_TA_driver.c,1915 :: 		}
IT	AL
BAL	L_Init_MCU181
L_Init_MCU182:
;MyProject_TA_driver.c,1916 :: 		I2C2_Init_Advanced(400000, &_GPIO_MODULE_I2C2_PF10);
MOVW	R1, #lo_addr(__GPIO_MODULE_I2C2_PF10+0)
MOVT	R1, #hi_addr(__GPIO_MODULE_I2C2_PF10+0)
MOVW	R0, #6784
MOVT	R0, #6
BL	_I2C2_Init_Advanced+0
;MyProject_TA_driver.c,1917 :: 		}
L_end_Init_MCU:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Init_MCU
_FT5XX6_Config:
;MyProject_TA_driver.c,1919 :: 		char FT5XX6_Config()  {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_driver.c,1920 :: 		FT5XX6_SetI2CAddress(0x38);
MOVS	R0, #56
BL	_FT5XX6_SetI2CAddress+0
;MyProject_TA_driver.c,1921 :: 		if (FT5XX6_IsOperational() != FT5XX6_OK)
BL	_FT5XX6_IsOperational+0
CMP	R0, #0
IT	EQ
BEQ	L_FT5XX6_Config187
;MyProject_TA_driver.c,1922 :: 		return  FT5XX6_FAILURE;
MOVS	R0, #1
IT	AL
BAL	L_end_FT5XX6_Config
L_FT5XX6_Config187:
;MyProject_TA_driver.c,1923 :: 		FT5XX6_SetDefaultMode();
BL	_FT5XX6_SetDefaultMode+0
;MyProject_TA_driver.c,1924 :: 		FT5XX6_SetController(_TC_FT5X26);
MOVS	R0, #3
BL	_FT5XX6_SetController+0
;MyProject_TA_driver.c,1925 :: 		FT5XX6_SetSizeAndRotation(800,480,2);
MOVS	R2, #2
MOVW	R1, #480
MOVW	R0, #800
BL	_FT5XX6_SetSizeAndRotation+0
;MyProject_TA_driver.c,1926 :: 		return FT5XX6_OK;
MOVS	R0, #0
;MyProject_TA_driver.c,1927 :: 		}
L_end_FT5XX6_Config:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _FT5XX6_Config
_Start_TP:
;MyProject_TA_driver.c,1929 :: 		void Start_TP() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_driver.c,1930 :: 		Init_MCU();
BL	_Init_MCU+0
;MyProject_TA_driver.c,1932 :: 		InitializeTouchPanel();
BL	MyProject_TA_driver_InitializeTouchPanel+0
;MyProject_TA_driver.c,1933 :: 		if (FT5XX6_Config() == FT5XX6_OK) {
BL	_FT5XX6_Config+0
CMP	R0, #0
IT	NE
BNE	L_Start_TP188
;MyProject_TA_driver.c,1934 :: 		} else {
IT	AL
BAL	L_Start_TP189
L_Start_TP188:
;MyProject_TA_driver.c,1935 :: 		while(1);
L_Start_TP190:
IT	AL
BAL	L_Start_TP190
;MyProject_TA_driver.c,1936 :: 		}
L_Start_TP189:
;MyProject_TA_driver.c,1939 :: 		InitializeObjects();
BL	MyProject_TA_driver_InitializeObjects+0
;MyProject_TA_driver.c,1940 :: 		display_width = Screen1.Width;
MOVW	R0, #lo_addr(_Screen1+2)
MOVT	R0, #hi_addr(_Screen1+2)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_display_width+0)
MOVT	R0, #hi_addr(_display_width+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1941 :: 		display_height = Screen1.Height;
MOVW	R0, #lo_addr(_Screen1+4)
MOVT	R0, #hi_addr(_Screen1+4)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_display_height+0)
MOVT	R0, #hi_addr(_display_height+0)
STRH	R1, [R0, #0]
;MyProject_TA_driver.c,1942 :: 		DrawScreen(&Screen1);
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_TA_driver.c,1943 :: 		}
L_end_Start_TP:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Start_TP
MyProject_TA_driver____?ag:
L_end_MyProject_TA_driver___?ag:
BX	LR
; end of MyProject_TA_driver____?ag
