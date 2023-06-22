_bingkai_black:
;lib.h,11 :: 		void bingkai_black(int X1, int Y1, int X2, int Y2, float dat)
; Y2 start address is: 12 (R3)
; X2 start address is: 8 (R2)
SUB	SP, SP, #16
STR	LR, [SP, #0]
STRH	R0, [SP, #4]
STRH	R1, [SP, #8]
SXTH	R7, R2
SXTH	R8, R3
VSTR	#1, S0, [SP, #12]
; Y2 end address is: 12 (R3)
; X2 end address is: 8 (R2)
; X2 start address is: 28 (R7)
; Y2 start address is: 32 (R8)
;lib.h,13 :: 		TFT_Set_Pen(CL_BLACK, 1);
MOVS	R1, #1
MOVW	R0, #0
BL	_TFT_Set_Pen+0
;lib.h,14 :: 		TFT_Set_Brush(1, 0, 0, LEFT_TO_RIGHT, CL_BLACK, CL_BLACK);
MOVW	R5, #0
MOVW	R4, #0
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #1
PUSH	(R5)
PUSH	(R4)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;lib.h,15 :: 		TFT_Rectangle(X1, Y1, X2, Y2);
SXTH	R3, R8
; Y2 end address is: 32 (R8)
SXTH	R2, R7
; X2 end address is: 28 (R7)
LDRSH	R1, [SP, #8]
LDRSH	R0, [SP, #4]
BL	_TFT_Rectangle+0
;lib.h,16 :: 		TFT_Set_Font(Times_New_Roman19x23_Regular, CL_WHITE, FO_HORIZONTAL);
MOVW	R4, #lo_addr(_Times_New_Roman19x23_Regular+0)
MOVT	R4, #hi_addr(_Times_New_Roman19x23_Regular+0)
MOVS	R2, #0
MOVW	R1, #65535
MOV	R0, R4
BL	_TFT_Set_Font+0
;lib.h,17 :: 		FloatToStr(dat, text);
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
VLDR	#1, S0, [SP, #12]
BL	_FloatToStr+0
;lib.h,18 :: 		TFT_Write_Text(text, X1, Y1);
LDRSH	R2, [SP, #8]
LDRSH	R1, [SP, #4]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_TFT_Write_Text+0
;lib.h,19 :: 		Delay_ms(10);
MOVW	R7, #62842
MOVT	R7, #32
NOP
NOP
L_bingkai_black0:
SUBS	R7, R7, #1
BNE	L_bingkai_black0
NOP
NOP
NOP
;lib.h,20 :: 		}
L_end_bingkai_black:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _bingkai_black
_get_index:
;lib.h,43 :: 		float get_index(float *array, int n){
; n start address is: 4 (R1)
; array start address is: 0 (R0)
; n end address is: 4 (R1)
; array end address is: 0 (R0)
; array start address is: 0 (R0)
; n start address is: 4 (R1)
;lib.h,44 :: 		if(n < 0) {
CMP	R1, #0
IT	GE
BGE	L_get_index2
; n end address is: 4 (R1)
;lib.h,45 :: 		return array[0];
VLDR	#1, S0, [R0, #0]
; array end address is: 0 (R0)
IT	AL
BAL	L_end_get_index
;lib.h,46 :: 		}
L_get_index2:
;lib.h,47 :: 		return array[n];
; n start address is: 4 (R1)
; array start address is: 0 (R0)
LSLS	R2, R1, #2
; n end address is: 4 (R1)
ADDS	R2, R0, R2
; array end address is: 0 (R0)
VLDR	#1, S0, [R2, #0]
;lib.h,48 :: 		}
L_end_get_index:
BX	LR
; end of _get_index
_get_rotating_index:
;lib.h,50 :: 		float get_rotating_index(float *array, int max, int n) {
; n start address is: 8 (R2)
; max start address is: 4 (R1)
; array start address is: 0 (R0)
; n end address is: 8 (R2)
; max end address is: 4 (R1)
; array end address is: 0 (R0)
; array start address is: 0 (R0)
; max start address is: 4 (R1)
; n start address is: 8 (R2)
;lib.h,51 :: 		if(n < 0) {
CMP	R2, #0
IT	GE
BGE	L_get_rotating_index3
;lib.h,52 :: 		return array[max + n];
ADDS	R3, R1, R2
SXTH	R3, R3
; max end address is: 4 (R1)
; n end address is: 8 (R2)
LSLS	R3, R3, #2
ADDS	R3, R0, R3
; array end address is: 0 (R0)
VLDR	#1, S0, [R3, #0]
IT	AL
BAL	L_end_get_rotating_index
;lib.h,53 :: 		}
L_get_rotating_index3:
;lib.h,54 :: 		return array[n];
; n start address is: 8 (R2)
; array start address is: 0 (R0)
LSLS	R3, R2, #2
; n end address is: 8 (R2)
ADDS	R3, R0, R3
; array end address is: 0 (R0)
VLDR	#1, S0, [R3, #0]
;lib.h,55 :: 		}
L_end_get_rotating_index:
BX	LR
; end of _get_rotating_index
_get_rotating_index_int:
;lib.h,57 :: 		int get_rotating_index_int(int *array, int max, int n) {
; n start address is: 8 (R2)
; max start address is: 4 (R1)
; array start address is: 0 (R0)
; n end address is: 8 (R2)
; max end address is: 4 (R1)
; array end address is: 0 (R0)
; array start address is: 0 (R0)
; max start address is: 4 (R1)
; n start address is: 8 (R2)
;lib.h,58 :: 		if (n < 0) {
CMP	R2, #0
IT	GE
BGE	L_get_rotating_index_int4
;lib.h,59 :: 		return array[max + n];
ADDS	R3, R1, R2
SXTH	R3, R3
; max end address is: 4 (R1)
; n end address is: 8 (R2)
LSLS	R3, R3, #1
ADDS	R3, R0, R3
; array end address is: 0 (R0)
LDRSH	R3, [R3, #0]
SXTH	R0, R3
IT	AL
BAL	L_end_get_rotating_index_int
;lib.h,60 :: 		}
L_get_rotating_index_int4:
;lib.h,61 :: 		return array[n];
; n start address is: 8 (R2)
; array start address is: 0 (R0)
LSLS	R3, R2, #1
; n end address is: 8 (R2)
ADDS	R3, R0, R3
; array end address is: 0 (R0)
LDRSH	R3, [R3, #0]
SXTH	R0, R3
;lib.h,62 :: 		}
L_end_get_rotating_index_int:
BX	LR
; end of _get_rotating_index_int
_std:
;lib.h,65 :: 		float std(float *input, float p, float dof) {
; dof start address is: 4 (R1)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; p start address is: 0 (R0)
; input start address is: 0 (R0)
; dof end address is: 4 (R1)
; p end address is: 0 (R0)
; input end address is: 0 (R0)
; input start address is: 0 (R0)
; p start address is: 0 (R0)
; dof start address is: 4 (R1)
;lib.h,68 :: 		float array_sum = 0.0, array_sum1, mean;
; array_sum start address is: 12 (R3)
MOV	R2, #0
VMOV	S3, R2
;lib.h,70 :: 		for(i = 0; i < p; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; p end address is: 0 (R0)
; dof end address is: 4 (R1)
; array_sum end address is: 12 (R3)
; input end address is: 0 (R0)
; i end address is: 4 (R1)
VMOV.F32	S2, S1
VMOV.F32	S1, S0
L_std5:
; i start address is: 4 (R1)
; array_sum start address is: 12 (R3)
; dof start address is: 8 (R2)
; p start address is: 4 (R1)
; input start address is: 0 (R0)
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GE
BGE	L_std6
;lib.h,71 :: 		array_sum += input[i];
LSLS	R2, R1, #2
ADDS	R2, R0, R2
VLDR	#1, S0, [R2, #0]
VADD.F32	S3, S3, S0
;lib.h,70 :: 		for(i = 0; i < p; i++) {
ADDS	R1, R1, #1
SXTH	R1, R1
;lib.h,72 :: 		}
STRH	R1, [SP, #4]
; i end address is: 4 (R1)
LDRSH	R1, [SP, #4]
IT	AL
BAL	L_std5
L_std6:
;lib.h,73 :: 		mean = array_sum / (float)(p);
VDIV.F32	S0, S3, S1
; array_sum end address is: 12 (R3)
; mean start address is: 0 (R0)
;lib.h,74 :: 		array_sum1 = 0.0;
MOV	R2, #0
; array_sum1 start address is: 16 (R4)
VMOV	S4, R2
;lib.h,75 :: 		for(i = 0; i < p; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; dof end address is: 8 (R2)
; mean end address is: 0 (R0)
; p end address is: 4 (R1)
; array_sum1 end address is: 16 (R4)
; i end address is: 4 (R1)
STRH	R1, [SP, #4]
VMOV.F32	S3, S2
VMOV.F32	S2, S0
LDRSH	R1, [SP, #4]
L_std8:
; i start address is: 4 (R1)
; mean start address is: 8 (R2)
; array_sum1 start address is: 16 (R4)
; mean start address is: 8 (R2)
; mean end address is: 8 (R2)
; input start address is: 0 (R0)
; input end address is: 0 (R0)
; p start address is: 4 (R1)
; dof start address is: 12 (R3)
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GE
BGE	L_std9
; mean end address is: 8 (R2)
; input end address is: 0 (R0)
;lib.h,76 :: 		array_sum1 += ((input[i] - mean) * (input[i] - mean));
; input start address is: 0 (R0)
; mean start address is: 8 (R2)
LSLS	R2, R1, #2
ADDS	R2, R0, R2
VLDR	#1, S0, [R2, #0]
VSUB.F32	S0, S0, S2
VMUL.F32	S0, S0, S0
VADD.F32	S4, S4, S0
;lib.h,75 :: 		for(i = 0; i < p; i++) {
ADDS	R1, R1, #1
SXTH	R1, R1
;lib.h,77 :: 		}
STRH	R1, [SP, #4]
; mean end address is: 8 (R2)
; input end address is: 0 (R0)
; i end address is: 4 (R1)
LDRSH	R1, [SP, #4]
IT	AL
BAL	L_std8
L_std9:
;lib.h,78 :: 		result = sqrt((float)(array_sum1)/(float)(p-dof));
VSUB.F32	S0, S1, S3
; p end address is: 4 (R1)
; dof end address is: 12 (R3)
VDIV.F32	S0, S4, S0
; array_sum1 end address is: 16 (R4)
BL	_sqrt+0
;lib.h,79 :: 		return result;
;lib.h,80 :: 		}
L_end_std:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _std
_ecg_init:
;lib.h,296 :: 		void ecg_init(ECG_Instance_t* ecg, float fs, float threshold1, float threshold2, float threshold3) {
; threshold3 start address is: 12 (R3)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; threshold2 start address is: 8 (R2)
; threshold1 start address is: 4 (R1)
; fs start address is: 0 (R0)
; ecg start address is: 0 (R0)
MOV	R6, R0
; threshold3 end address is: 12 (R3)
; threshold2 end address is: 8 (R2)
; threshold1 end address is: 4 (R1)
; fs end address is: 0 (R0)
; ecg end address is: 0 (R0)
; ecg start address is: 24 (R6)
; fs start address is: 0 (R0)
; threshold1 start address is: 4 (R1)
; threshold2 start address is: 8 (R2)
; threshold3 start address is: 12 (R3)
;lib.h,297 :: 		ecg->threshold1 = threshold1;
ADD	R4, R6, #31232
VSTR	#1, S1, [R4, #0]
; threshold1 end address is: 4 (R1)
;lib.h,298 :: 		ecg->threshold2 = threshold2;
MOVW	R4, #31236
ADDS	R4, R6, R4
VSTR	#1, S2, [R4, #0]
; threshold2 end address is: 8 (R2)
;lib.h,299 :: 		ecg->threshold3 = threshold3;
MOVW	R4, #31240
ADDS	R4, R6, R4
VSTR	#1, S3, [R4, #0]
; threshold3 end address is: 12 (R3)
;lib.h,300 :: 		ecg->fs = fs;
ADDW	R4, R6, #1604
VSTR	#1, S0, [R4, #0]
; fs end address is: 0 (R0)
;lib.h,301 :: 		ecg->length = 0;
ADD	R5, R6, #1600
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [R5, #0]
;lib.h,302 :: 		ecg->current_index = 0;
ADDW	R5, R6, #1602
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [R5, #0]
;lib.h,303 :: 		ecg->rr_length = 0;
MOVW	R4, #31208
ADDS	R5, R6, R4
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [R5, #0]
;lib.h,304 :: 		ecg->bpm_length = 0;
MOVW	R4, #31210
ADDS	R5, R6, R4
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [R5, #0]
;lib.h,305 :: 		ecg->rr_index_length = 0;
MOVW	R4, #31212
ADDS	R5, R6, R4
MOVS	R4, #0
SXTH	R4, R4
STRH	R4, [R5, #0]
;lib.h,306 :: 		ecg->sum_data = 0;
MOVW	R4, #31216
ADDS	R5, R6, R4
MOV	R4, #0
VMOV	S0, R4
VSTR	#1, S0, [R5, #0]
;lib.h,308 :: 		memset(ecg->signal, 0, sizeof(ecg->signal));
MOVW	R2, #1600
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R6
BL	_memset+0
;lib.h,309 :: 		memset(ecg->w2fb1, 0, sizeof(ecg->w2fb1));
ADD	R4, R6, #1608
MOVW	R2, #1600
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,310 :: 		memset(ecg->w2fb2, 0, sizeof(ecg->w2fb2));
ADDW	R4, R6, #3208
MOVW	R2, #1600
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,311 :: 		memset(ecg->w2fb3, 0, sizeof(ecg->w2fb3));
MOVW	R4, #4808
ADDS	R4, R6, R4
MOVW	R2, #1600
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,312 :: 		memset(ecg->qrs_result, 0, sizeof(ecg->qrs_result));
MOVW	R4, #6408
ADDS	R4, R6, R4
MOVW	R2, #800
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,313 :: 		memset(ecg->rr_index, 0, sizeof(ecg->rr_index));
MOVW	R4, #7208
ADDS	R4, R6, R4
MOVW	R2, #8000
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,314 :: 		memset(ecg->rr, 0, sizeof(ecg->rr));
MOVW	R4, #15208
ADDS	R4, R6, R4
MOVW	R2, #8000
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,315 :: 		memset(ecg->bpm, 0, sizeof(ecg->bpm));
MOVW	R4, #23208
ADDS	R4, R6, R4
; ecg end address is: 24 (R6)
MOVW	R2, #8000
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R4
BL	_memset+0
;lib.h,316 :: 		}
L_end_ecg_init:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ecg_init
_ecg_baseline_restore:
;lib.h,318 :: 		void ecg_baseline_restore(ECG_Instance_t* ecg){
; ecg start address is: 0 (R0)
; ecg end address is: 0 (R0)
; ecg start address is: 0 (R0)
;lib.h,319 :: 		int i = ecg->current_index % N_DISPLAY_ECG;
ADDW	R1, R0, #1602
LDRSH	R3, [R1, #0]
MOVW	R1, #400
SXTH	R1, R1
SDIV	R2, R3, R1
MLS	R2, R1, R2, R3
SXTH	R2, R2
; i start address is: 16 (R4)
SXTH	R4, R2
;lib.h,321 :: 		ecg->sum_data += ecg->signal[i];
MOVW	R1, #31216
ADDS	R3, R0, R1
LSLS	R1, R2, #2
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib.h,323 :: 		ecg->signal[i] = ecg->signal[i] - (ecg->sum_data / ecg->length);
LSLS	R1, R4, #2
; i end address is: 16 (R4)
ADDS	R2, R0, R1
VLDR	#1, S2, [R2, #0]
MOVW	R1, #31216
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
ADD	R1, R0, #1600
; ecg end address is: 0 (R0)
LDRSH	R1, [R1, #0]
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
VSUB.F32	S0, S2, S0
VSTR	#1, S0, [R2, #0]
;lib.h,324 :: 		}
L_end_ecg_baseline_restore:
BX	LR
; end of _ecg_baseline_restore
_ecg_dwt_decomposition:
;lib.h,326 :: 		void ecg_dwt_decomposition(ECG_Instance_t* ecg) {
; ecg start address is: 0 (R0)
SUB	SP, SP, #16
STR	LR, [SP, #0]
MOV	R4, R0
; ecg end address is: 0 (R0)
; ecg start address is: 16 (R4)
;lib.h,327 :: 		int i = ecg->current_index % N_DISPLAY_ECG;
ADDW	R1, R4, #1602
LDRSH	R2, [R1, #0]
MOVW	R1, #400
SXTH	R1, R1
SDIV	R3, R2, R1
MLS	R3, R1, R3, R2
SXTH	R3, R3
; i start address is: 20 (R5)
SXTH	R5, R3
;lib.h,330 :: 		ecg->w2fb1[i] = qj1[0] * get_index(ecg->signal, i) + qj1[1] * get_index(ecg->signal, i - 1);
ADD	R2, R4, #1608
LSLS	R1, R3, #2
ADDS	R1, R2, R1
STR	R1, [SP, #12]
SXTH	R1, R3
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-2
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #1
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #2
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #12]
VSTR	#1, S0, [R1, #0]
;lib.h,331 :: 		ecg->w2fb2[i] = qj2[0] * get_index(ecg->signal, i) + qj2[1] * get_index(ecg->signal, i - 1) + qj2[2] * get_index(ecg->signal, i - 2) + qj2[3] * get_index(ecg->signal, i - 3) + qj2[4] * get_index(ecg->signal, i - 4) + qj2[5] * get_index(ecg->signal, i - 5);
ADDW	R2, R4, #3208
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #12]
SXTH	R1, R5
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.25
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #1
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.75
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #2
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.5
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #3
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.5
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #4
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.75
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #5
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.25
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #12]
VSTR	#1, S0, [R1, #0]
;lib.h,332 :: 		ecg->w2fb3[i] = qj3[0] * get_index(ecg->signal, i) + qj3[1] * get_index(ecg->signal, i - 1) + qj3[2] * get_index(ecg->signal, i - 2) + qj3[3] * get_index(ecg->signal, i - 3) + qj3[4] * get_index(ecg->signal, i - 4) + qj3[5] * get_index(ecg->signal, i - 5) + qj3[6] * get_index(ecg->signal, i - 6) + qj3[7] * get_index(ecg->signal, i - 7) + qj3[8] * get_index(ecg->signal, i - 8) + qj3[9] * get_index(ecg->signal, i - 9) + qj3[10] * get_index(ecg->signal, i - 10) + qj3[11] * get_index(ecg->signal, i - 11) + qj3[12] * get_index(ecg->signal, i - 12) + qj3[13] * get_index(ecg->signal, i - 13);
MOVW	R1, #4808
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #12]
SXTH	R1, R5
MOV	R0, R4
BL	_get_index+0
MOV	R1, #-1124073472
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #1
MOV	R0, R4
BL	_get_index+0
MOVW	R1, #0
MOVT	R1, #48576
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #2
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.1875
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #3
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.3125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #4
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.34375
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #5
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.28125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #6
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #-0.125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #7
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #8
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.28125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #9
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.34375
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #10
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.3125
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #11
MOV	R0, R4
BL	_get_index+0
VMOV.F32	S1, #0.1875
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #12
MOV	R0, R4
BL	_get_index+0
MOV	R1, #1035993088
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #8]
SUBW	R1, R5, #13
MOV	R0, R4
BL	_get_index+0
MOV	R1, #1023410176
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #8]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #12]
VSTR	#1, S0, [R1, #0]
;lib.h,334 :: 		gradient1 = ecg->w2fb1[i] - get_rotating_index(ecg->w2fb1, N_DISPLAY_ECG, i - 1);
ADD	R2, R4, #1608
LSLS	R1, R5, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #1
MOV	R0, R2
SXTH	R2, R1
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
VLDR	#1, S1, [SP, #8]
VSUB.F32	S0, S1, S0
; gradient1 start address is: 8 (R2)
VMOV.F32	S2, S0
;lib.h,335 :: 		gradient2 = ecg->w2fb2[i] - get_rotating_index(ecg->w2fb2, N_DISPLAY_ECG, i - 2);
ADDW	R2, R4, #3208
LSLS	R1, R5, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #2
MOV	R0, R2
SXTH	R2, R1
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
VLDR	#1, S1, [SP, #8]
VSUB.F32	S0, S1, S0
; gradient2 start address is: 12 (R3)
VMOV.F32	S3, S0
;lib.h,336 :: 		gradient3 = ecg->w2fb3[i] - get_rotating_index(ecg->w2fb3, N_DISPLAY_ECG, i - 3);
MOVW	R1, #4808
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [SP, #8]
SUBS	R1, R5, #3
MOV	R0, R2
SXTH	R2, R1
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
VLDR	#1, S1, [SP, #8]
VSUB.F32	S0, S1, S0
; gradient3 start address is: 4 (R1)
VMOV.F32	S1, S0
;lib.h,338 :: 		if (gradient1 > ecg->threshold1 && gradient2 > ecg->threshold2 && gradient3 > ecg->threshold3) {
ADD	R1, R4, #31232
VLDR	#1, S0, [R1, #0]
VCMPE.F32	S2, S0
VMRS	#60, FPSCR
IT	LE
BLE	L__ecg_dwt_decomposition209
; gradient1 end address is: 8 (R2)
MOVW	R1, #31236
ADDS	R1, R4, R1
VLDR	#1, S0, [R1, #0]
VCMPE.F32	S3, S0
VMRS	#60, FPSCR
IT	LE
BLE	L__ecg_dwt_decomposition208
; gradient2 end address is: 12 (R3)
MOVW	R1, #31240
ADDS	R1, R4, R1
VLDR	#1, S0, [R1, #0]
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	LE
BLE	L__ecg_dwt_decomposition207
; gradient3 end address is: 4 (R1)
L__ecg_dwt_decomposition206:
;lib.h,339 :: 		ecg->qrs_result[i] = 1;
MOVW	R1, #6408
ADDS	R2, R4, R1
LSLS	R1, R5, #1
ADDS	R2, R2, R1
MOVS	R1, #1
SXTH	R1, R1
STRH	R1, [R2, #0]
;lib.h,340 :: 		} else {
IT	AL
BAL	L_ecg_dwt_decomposition14
;lib.h,338 :: 		if (gradient1 > ecg->threshold1 && gradient2 > ecg->threshold2 && gradient3 > ecg->threshold3) {
L__ecg_dwt_decomposition209:
L__ecg_dwt_decomposition208:
L__ecg_dwt_decomposition207:
;lib.h,341 :: 		ecg->qrs_result[i] = 0;
MOVW	R1, #6408
ADDS	R2, R4, R1
LSLS	R1, R5, #1
ADDS	R2, R2, R1
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;lib.h,342 :: 		}
L_ecg_dwt_decomposition14:
;lib.h,344 :: 		last_qrs_result = get_rotating_index_int(ecg->qrs_result, N_DISPLAY_ECG, i - 1);
SUBS	R2, R5, #1
MOVW	R1, #6408
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index_int+0
;lib.h,345 :: 		if (last_qrs_result == 0 && ecg->qrs_result[i] == 1) {
CMP	R0, #0
IT	NE
BNE	L__ecg_dwt_decomposition211
MOVW	R1, #6408
ADDS	R2, R4, R1
LSLS	R1, R5, #1
; i end address is: 20 (R5)
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
CMP	R1, #1
IT	NE
BNE	L__ecg_dwt_decomposition210
L__ecg_dwt_decomposition205:
;lib.h,346 :: 		ecg->rr_index[ecg->rr_index_length] = ecg->current_index - 1;
MOVW	R1, #7208
ADDS	R2, R4, R1
MOVW	R1, #31212
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R2, R2, R1
ADDW	R1, R4, #1602
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VSTR	#1, S0, [R2, #0]
;lib.h,348 :: 		if (ecg->rr_index_length >= 2) {
MOVW	R1, #31212
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
CMP	R1, #2
IT	LT
BLT	L_ecg_dwt_decomposition18
;lib.h,349 :: 		t = 1.0 / ecg->fs;
ADDW	R1, R4, #1604
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #1
VDIV.F32	S2, S0, S1
;lib.h,350 :: 		ecg->rr[ecg->rr_length] =  fabs(((ecg->rr_index[ecg->rr_index_length]) * t) - ((ecg->rr_index[ecg->rr_index_length - 1]) * t));
MOVW	R1, #15208
ADDS	R2, R4, R1
MOVW	R1, #31208
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
MOVW	R1, #7208
ADDS	R3, R4, R1
MOVW	R1, #31212
ADDS	R1, R4, R1
LDRSH	R2, [R1, #0]
LSLS	R1, R2, #2
ADDS	R1, R3, R1
VLDR	#1, S0, [R1, #0]
VMUL.F32	S1, S0, S2
SUBS	R1, R2, #1
SXTH	R1, R1
LSLS	R1, R1, #2
ADDS	R1, R3, R1
VLDR	#1, S0, [R1, #0]
VMUL.F32	S0, S0, S2
VSUB.F32	S0, S1, S0
BL	_fabs+0
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;lib.h,352 :: 		ecg->bpm[ecg->bpm_length] = (float) 60.0 / ecg->rr[ecg->rr_length];
MOVW	R1, #23208
ADDS	R2, R4, R1
MOVW	R1, #31210
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R3, R2, R1
MOVW	R1, #15208
ADDS	R2, R4, R1
MOVW	R1, #31208
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
VLDR	#1, S1, [R1, #0]
MOVW	R1, #0
MOVT	R1, #17008
VMOV	S0, R1
VDIV.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib.h,353 :: 		bingkai_black(680, 17, 800, 45, ecg->bpm[ecg->bpm_length]);
MOVW	R1, #23208
ADDS	R2, R4, R1
MOVW	R1, #31210
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
STR	R4, [SP, #4]
MOVS	R3, #45
SXTH	R3, R3
MOVW	R2, #800
SXTH	R2, R2
MOVS	R1, #17
SXTH	R1, R1
MOVW	R0, #680
SXTH	R0, R0
BL	_bingkai_black+0
LDR	R4, [SP, #4]
;lib.h,356 :: 		ecg->rr_length++;
MOVW	R1, #31208
ADDS	R2, R4, R1
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;lib.h,357 :: 		ecg->bpm_length++;
MOVW	R1, #31210
ADDS	R2, R4, R1
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;lib.h,358 :: 		}
L_ecg_dwt_decomposition18:
;lib.h,359 :: 		ecg->rr_index_length++;
MOVW	R1, #31212
ADDS	R2, R4, R1
; ecg end address is: 16 (R4)
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;lib.h,345 :: 		if (last_qrs_result == 0 && ecg->qrs_result[i] == 1) {
L__ecg_dwt_decomposition211:
L__ecg_dwt_decomposition210:
;lib.h,361 :: 		}
L_end_ecg_dwt_decomposition:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _ecg_dwt_decomposition
_ecg_time_domain_calculation:
;lib.h,363 :: 		void ecg_time_domain_calculation(ECG_Instance_t *ecg) {
; ecg start address is: 0 (R0)
SUB	SP, SP, #8192
ADD	SP, SP, #184
STR	LR, [SP, #0]
; ecg end address is: 0 (R0)
; ecg start address is: 0 (R0)
;lib.h,365 :: 		int i, segment_duration = 300000, limit = 2, current_index = 0;
;lib.h,366 :: 		float _rmssd = 0.0;
; _rmssd start address is: 8 (R2)
MOV	R1, #0
VMOV	S2, R1
;lib.h,367 :: 		float max_duration = 0.0;
;lib.h,370 :: 		for (i = 0; i < ecg->rr_length - 1; i++) {
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; ecg end address is: 0 (R0)
; _rmssd end address is: 8 (R2)
; i end address is: 20 (R5)
MOV	R4, R0
L_ecg_time_domain_calculation19:
; i start address is: 20 (R5)
; _rmssd start address is: 8 (R2)
; ecg start address is: 16 (R4)
MOVW	R1, #31208
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
CMP	R5, R1
IT	GE
BGE	L_ecg_time_domain_calculation20
;lib.h,371 :: 		rrd[i] = fabs(ecg->rr[i+1] - ecg->rr[i]);
ADD	R1, SP, #8
LSLS	R3, R5, #2
ADDS	R1, R1, R3
STR	R0, [SP, #4]
MOVW	R0, #8004
ADD	R0, SP, R0
STR	R1, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R1, #15208
ADDS	R2, R4, R1
ADDS	R1, R5, #1
SXTH	R1, R1
LSLS	R1, R1, #2
ADDS	R1, R2, R1
VLDR	#1, S1, [R1, #0]
ADDS	R1, R2, R3
VLDR	#1, S0, [R1, #0]
VSUB.F32	S0, S1, S0
BL	_fabs+0
STR	R0, [SP, #4]
MOVW	R0, #8004
ADD	R0, SP, R0
LDR	R1, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib.h,370 :: 		for (i = 0; i < ecg->rr_length - 1; i++) {
ADDS	R5, R5, #1
SXTH	R5, R5
;lib.h,372 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_ecg_time_domain_calculation19
L_ecg_time_domain_calculation20:
;lib.h,375 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
; i start address is: 0 (R0)
MOVS	R0, #0
SXTH	R0, R0
; _rmssd end address is: 8 (R2)
; ecg end address is: 16 (R4)
; i end address is: 0 (R0)
MOV	R3, R4
VMOV.F32	S4, S2
L_ecg_time_domain_calculation22:
; i start address is: 0 (R0)
; ecg start address is: 12 (R3)
; _rmssd start address is: 16 (R4)
MOVW	R1, #31208
ADDS	R1, R3, R1
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
CMP	R0, R1
IT	GE
BGE	L_ecg_time_domain_calculation23
;lib.h,376 :: 		_rmssd += rrd[i] * rrd[i];
ADD	R2, SP, #8
LSLS	R1, R0, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VMUL.F32	S0, S0, S0
VADD.F32	S4, S4, S0
;lib.h,375 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
ADDS	R0, R0, #1
SXTH	R0, R0
;lib.h,377 :: 		}
; i end address is: 0 (R0)
IT	AL
BAL	L_ecg_time_domain_calculation22
L_ecg_time_domain_calculation23:
;lib.h,378 :: 		ecg->rmssd = sqrt(_rmssd / (float)(ecg->rr_length - 1));
MOVW	R1, #31220
ADDS	R1, R3, R1
STR	R0, [SP, #4]
MOVW	R0, #8004
ADD	R0, SP, R0
STR	R1, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R1, #31208
ADDS	R1, R3, R1
; ecg end address is: 12 (R3)
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S4, S0
; _rmssd end address is: 16 (R4)
BL	_sqrt+0
STR	R0, [SP, #4]
MOVW	R0, #8004
ADD	R0, SP, R0
LDR	R1, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib.h,425 :: 		}
L_end_ecg_time_domain_calculation:
LDR	LR, [SP, #0]
ADD	SP, SP, #8192
SUB	SP, SP, #184
BX	LR
; end of _ecg_time_domain_calculation
_ecg_non_linear_calculation:
;lib.h,427 :: 		void ecg_non_linear_calculation(ECG_Instance_t *ecg) {
; ecg start address is: 0 (R0)
SUB	SP, SP, #32000
ADD	SP, SP, #4
STR	LR, [SP, #0]
MOV	R3, R0
; ecg end address is: 0 (R0)
; ecg start address is: 12 (R3)
;lib.h,433 :: 		float sqrt2 = sqrt(2);
VMOV.F32	S0, #2
BL	_sqrt+0
; sqrt2 start address is: 8 (R2)
VMOV.F32	S2, S0
;lib.h,435 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
; i start address is: 0 (R0)
MOVS	R0, #0
SXTH	R0, R0
; ecg end address is: 12 (R3)
; sqrt2 end address is: 8 (R2)
; i end address is: 0 (R0)
MOV	R7, R3
L_ecg_non_linear_calculation25:
; i start address is: 0 (R0)
; sqrt2 start address is: 8 (R2)
; ecg start address is: 28 (R7)
MOVW	R1, #31208
ADDS	R1, R7, R1
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
CMP	R0, R1
IT	GE
BGE	L_ecg_non_linear_calculation26
;lib.h,436 :: 		x1[i] = ecg->rr[i];
ADD	R1, SP, #8
LSLS	R3, R0, #2
ADDS	R2, R1, R3
MOVW	R1, #15208
ADDS	R1, R7, R1
ADDS	R1, R1, R3
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [R2, #0]
;lib.h,437 :: 		x2[i] = ecg->rr[i + 1];
MOVW	R2, #8004
ADD	R2, SP, R2
LSLS	R1, R0, #2
ADDS	R3, R2, R1
MOVW	R1, #15208
ADDS	R2, R7, R1
ADDS	R1, R0, #1
SXTH	R1, R1
LSLS	R1, R1, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VSTR	#1, S0, [R3, #0]
;lib.h,435 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
ADDS	R0, R0, #1
SXTH	R0, R0
;lib.h,438 :: 		}
; i end address is: 0 (R0)
IT	AL
BAL	L_ecg_non_linear_calculation25
L_ecg_non_linear_calculation26:
;lib.h,439 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
; i start address is: 0 (R0)
MOVS	R0, #0
SXTH	R0, R0
; ecg end address is: 28 (R7)
; i end address is: 0 (R0)
L_ecg_non_linear_calculation28:
; i start address is: 0 (R0)
; ecg start address is: 28 (R7)
; sqrt2 start address is: 8 (R2)
; sqrt2 end address is: 8 (R2)
MOVW	R1, #31208
ADDS	R1, R7, R1
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
CMP	R0, R1
IT	GE
BGE	L_ecg_non_linear_calculation29
; sqrt2 end address is: 8 (R2)
;lib.h,440 :: 		sd1_array[i] = x1[i] - x2[i];
; sqrt2 start address is: 8 (R2)
MOVW	R4, #16000
ADD	R4, SP, R4
LSLS	R3, R0, #2
ADDS	R2, R4, R3
ADD	R6, SP, #8
ADDS	R1, R6, R3
VLDR	#1, S1, [R1, #0]
MOVW	R5, #8004
ADD	R5, SP, R5
ADDS	R1, R5, R3
VLDR	#1, S0, [R1, #0]
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;lib.h,441 :: 		sd1_array[i] /= sqrt2;
LSLS	R1, R0, #2
ADDS	R2, R4, R1
VLDR	#1, S0, [R2, #0]
VDIV.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib.h,443 :: 		sd2_array[i] = x1[i] + x2[i];
MOVW	R4, #23996
ADD	R4, SP, R4
LSLS	R3, R0, #2
ADDS	R2, R4, R3
ADDS	R1, R6, R3
VLDR	#1, S1, [R1, #0]
ADDS	R1, R5, R3
VLDR	#1, S0, [R1, #0]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;lib.h,444 :: 		sd2_array[i] /= sqrt2;
LSLS	R1, R0, #2
ADDS	R2, R4, R1
VLDR	#1, S0, [R2, #0]
VDIV.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib.h,439 :: 		for(i = 0; i < ecg->rr_length - 1; i++) {
ADDS	R0, R0, #1
SXTH	R0, R0
;lib.h,445 :: 		}
; sqrt2 end address is: 8 (R2)
; i end address is: 0 (R0)
IT	AL
BAL	L_ecg_non_linear_calculation28
L_ecg_non_linear_calculation29:
;lib.h,447 :: 		ecg->sd1 = std(sd1_array, ecg->rr_length - 1, 0) * second_to_milisecond;
MOVW	R1, #31224
ADDS	R1, R7, R1
STR	R0, [SP, #4]
MOVW	R0, #31992
ADD	R0, SP, R0
STR	R1, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R1, #31208
ADDS	R1, R7, R1
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
VMOV	S0, R1
VCVT.F32	#1, S0, S0
MOVW	R2, #16000
ADD	R2, SP, R2
MOV	R1, #0
VMOV	S1, R1
MOV	R0, R2
BL	_std+0
MOVW	R1, #lo_addr(_second_to_milisecond+0)
MOVT	R1, #hi_addr(_second_to_milisecond+0)
LDRSH	R1, [R1, #0]
VMOV	S1, R1
VCVT.F32	#1, S1, S1
VMUL.F32	S0, S0, S1
STR	R0, [SP, #4]
MOVW	R0, #31992
ADD	R0, SP, R0
LDR	R1, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib.h,448 :: 		ecg->sd2 = std(sd2_array, ecg->rr_length - 1, 0) * second_to_milisecond;
MOVW	R1, #31228
ADDS	R1, R7, R1
STR	R0, [SP, #4]
MOVW	R0, #31992
ADD	R0, SP, R0
STR	R1, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R1, #31208
ADDS	R1, R7, R1
; ecg end address is: 28 (R7)
LDRSH	R1, [R1, #0]
SUBS	R1, R1, #1
SXTH	R1, R1
VMOV	S0, R1
VCVT.F32	#1, S0, S0
MOVW	R2, #23996
ADD	R2, SP, R2
MOV	R1, #0
VMOV	S1, R1
MOV	R0, R2
BL	_std+0
MOVW	R1, #lo_addr(_second_to_milisecond+0)
MOVT	R1, #hi_addr(_second_to_milisecond+0)
LDRSH	R1, [R1, #0]
VMOV	S1, R1
VCVT.F32	#1, S1, S1
VMUL.F32	S0, S0, S1
STR	R0, [SP, #4]
MOVW	R0, #31992
ADD	R0, SP, R0
LDR	R1, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib.h,449 :: 		}
L_end_ecg_non_linear_calculation:
LDR	LR, [SP, #0]
ADD	SP, SP, #32000
SUB	SP, SP, #4
BX	LR
; end of _ecg_non_linear_calculation
_ecg_process:
;lib.h,549 :: 		int ecg_process(ECG_Instance_t* ecg, float ecg_value) {
; ecg_value start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; ecg start address is: 0 (R0)
; ecg_value end address is: 0 (R0)
; ecg end address is: 0 (R0)
; ecg start address is: 0 (R0)
; ecg_value start address is: 0 (R0)
;lib.h,550 :: 		ecg->signal[ecg->length % N_DISPLAY_ECG] = ecg_value;
ADD	R1, R0, #1600
LDRSH	R3, [R1, #0]
MOVW	R2, #400
SXTH	R2, R2
SDIV	R1, R3, R2
MLS	R1, R2, R1, R3
SXTH	R1, R1
LSLS	R1, R1, #2
ADDS	R1, R0, R1
VSTR	#1, S0, [R1, #0]
; ecg_value end address is: 0 (R0)
;lib.h,551 :: 		ecg->current_index = ecg->length;
ADDW	R2, R0, #1602
ADD	R1, R0, #1600
LDRSH	R1, [R1, #0]
STRH	R1, [R2, #0]
;lib.h,552 :: 		ecg->length++;
ADD	R2, R0, #1600
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;lib.h,558 :: 		ecg_dwt_decomposition(ecg);
; ecg end address is: 0 (R0)
BL	_ecg_dwt_decomposition+0
;lib.h,563 :: 		return 0;
MOVS	R0, #0
SXTH	R0, R0
;lib.h,564 :: 		}
L_end_ecg_process:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ecg_process
_eeg_init:
;lib_eeg.h,46 :: 		void eeg_init(EEG_Instance_t* eeg, float fs_eeg){
; fs_eeg start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; eeg start address is: 0 (R0)
MOV	R6, R0
; fs_eeg end address is: 0 (R0)
; eeg end address is: 0 (R0)
; eeg start address is: 24 (R6)
; fs_eeg start address is: 0 (R0)
;lib_eeg.h,47 :: 		eeg->fs_eeg = fs_eeg;
MOVW	R1, #16004
ADDS	R1, R6, R1
VSTR	#1, S0, [R1, #0]
; fs_eeg end address is: 0 (R0)
;lib_eeg.h,48 :: 		eeg->length_eeg = 0;
ADD	R2, R6, #16000
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;lib_eeg.h,49 :: 		eeg->current_index_eeg = 0;
MOVW	R1, #16002
ADDS	R2, R6, R1
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;lib_eeg.h,50 :: 		eeg->sum_data_eeg = 0.0;
MOVW	R1, #48008
ADDS	R2, R6, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,52 :: 		memset(eeg->eeg_signal, 0, sizeof(eeg->eeg_signal));
MOVW	R2, #16000
SXTH	R2, R2
MOVS	R1, #0
MOV	R0, R6
BL	_memset+0
;lib_eeg.h,53 :: 		memset(eeg->lpf_eeg, 0, sizeof(eeg->lpf_eeg));
MOVW	R1, #16008
ADDS	R1, R6, R1
MOVW	R2, #16000
SXTH	R2, R2
MOV	R0, R1
MOVS	R1, #0
BL	_memset+0
;lib_eeg.h,54 :: 		memset(eeg->hpf_eeg, 0, sizeof(eeg->hpf_eeg));
MOVW	R1, #32008
ADDS	R1, R6, R1
; eeg end address is: 24 (R6)
MOVW	R2, #16000
SXTH	R2, R2
MOV	R0, R1
MOVS	R1, #0
BL	_memset+0
;lib_eeg.h,55 :: 		}
L_end_eeg_init:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _eeg_init
_eeg_baseline_restore:
;lib_eeg.h,57 :: 		void eeg_baseline_restore(EEG_Instance_t* eeg){
; eeg start address is: 0 (R0)
; eeg end address is: 0 (R0)
; eeg start address is: 0 (R0)
;lib_eeg.h,58 :: 		int i = eeg->current_index_eeg & N_DISPLAY_EEG;
MOVW	R1, #16002
ADDS	R1, R0, R1
LDRSH	R1, [R1, #0]
AND	R2, R1, #800
SXTH	R2, R2
; i start address is: 16 (R4)
SXTH	R4, R2
;lib_eeg.h,60 :: 		eeg->sum_data_eeg += eeg->eeg_signal[i];
MOVW	R1, #48008
ADDS	R3, R0, R1
LSLS	R1, R2, #2
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,62 :: 		eeg->eeg_signal[i] = eeg->eeg_signal[i] - (eeg->sum_data_eeg / eeg->length_eeg);
LSLS	R1, R4, #2
; i end address is: 16 (R4)
ADDS	R2, R0, R1
VLDR	#1, S2, [R2, #0]
MOVW	R1, #48008
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
ADD	R1, R0, #16000
; eeg end address is: 0 (R0)
LDRSH	R1, [R1, #0]
VMOV	S0, R1
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
VSUB.F32	S0, S2, S0
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,63 :: 		}
L_end_eeg_baseline_restore:
BX	LR
; end of _eeg_baseline_restore
_eeg_filter:
;lib_eeg.h,65 :: 		void eeg_filter(EEG_Instance_t* eeg){
; eeg start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
MOV	R4, R0
; eeg end address is: 0 (R0)
; eeg start address is: 16 (R4)
;lib_eeg.h,66 :: 		int i = eeg->current_index_eeg;
MOVW	R1, #16002
ADDS	R1, R4, R1
LDRSH	R1, [R1, #0]
; i start address is: 20 (R5)
SXTH	R5, R1
;lib_eeg.h,68 :: 		if (i == 0){
CMP	R1, #0
IT	NE
BNE	L_eeg_filter31
;lib_eeg.h,69 :: 		eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i)));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #4]
SXTH	R2, R5
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15631
VMOV	S1, R1
VMUL.F32	S0, S1, S0
LDR	R1, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,70 :: 		} else if (i == 1){
IT	AL
BAL	L_eeg_filter32
L_eeg_filter31:
CMP	R5, #1
IT	NE
BNE	L_eeg_filter33
;lib_eeg.h,71 :: 		eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i))+0.0701698*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-1))+(1.404706*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1))));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
SXTH	R2, R5
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15631
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #1
SXTH	R2, R1
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15759
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #52584
MOVT	R1, #16307
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,72 :: 		} else{
IT	AL
BAL	L_eeg_filter34
L_eeg_filter33:
;lib_eeg.h,73 :: 		eeg->lpf_eeg[i] = (0.0350849*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i))+0.0701698*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-1))+0.0350849*(get_rotating_index(eeg->eeg_signal, N_DISPLAY_EEG, i-2))+(1.404706*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1))) - 0.54504561*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-2)));
MOVW	R1, #16008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
SXTH	R2, R5
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15631
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #1
SXTH	R2, R1
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15759
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R1, R5, #2
SXTH	R2, R1
MOVW	R1, #800
SXTH	R1, R1
MOV	R0, R4
BL	_get_rotating_index+0
MOVW	R1, #46383
MOVT	R1, #15631
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #52584
MOVT	R1, #16307
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #34844
MOVT	R1, #16139
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,74 :: 		}
L_eeg_filter34:
L_eeg_filter32:
;lib_eeg.h,76 :: 		if (i == 0){
CMP	R5, #0
IT	NE
BNE	L_eeg_filter35
;lib_eeg.h,77 :: 		eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i)));
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #4]
MOVW	R1, #16008
ADDS	R1, R4, R1
; eeg end address is: 16 (R4)
SXTH	R2, R5
; i end address is: 20 (R5)
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16253
VMOV	S1, R1
VMUL.F32	S0, S1, S0
LDR	R1, [SP, #4]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,78 :: 		} else if (i == 1){
IT	AL
BAL	L_eeg_filter36
L_eeg_filter35:
; i start address is: 20 (R5)
; eeg start address is: 16 (R4)
CMP	R5, #1
IT	NE
BNE	L_eeg_filter37
;lib_eeg.h,79 :: 		eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i))-(1.98272007*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1)))+1.98264542*(get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-1)));
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
MOVW	R1, #16008
ADDS	R1, R4, R1
SXTH	R2, R5
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16253
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16381
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
; i end address is: 20 (R5)
MOVW	R1, #32008
ADDS	R1, R4, R1
; eeg end address is: 16 (R4)
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51027
MOVT	R1, #16381
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,80 :: 		} else{
IT	AL
BAL	L_eeg_filter38
L_eeg_filter37:
;lib_eeg.h,81 :: 		eeg->hpf_eeg[i] = (0.99136003*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i))-(1.98272007*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-1)))+0.99136003*(get_rotating_index(eeg->lpf_eeg, N_DISPLAY_EEG, i-2))+(1.98264542*(get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-1))) - 0.98279472*(get_rotating_index(eeg->hpf_eeg, N_DISPLAY_EEG, i-2)));
; i start address is: 20 (R5)
; eeg start address is: 16 (R4)
MOVW	R1, #32008
ADDS	R2, R4, R1
LSLS	R1, R5, #2
ADDS	R1, R2, R1
STR	R1, [SP, #8]
MOVW	R1, #16008
ADDS	R1, R4, R1
SXTH	R2, R5
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16253
VMOV	S1, R1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16381
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
MOVW	R1, #16008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51653
MOVT	R1, #16253
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #1
MOVW	R1, #32008
ADDS	R1, R4, R1
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #51027
MOVT	R1, #16381
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [SP, #4]
SUBS	R2, R5, #2
; i end address is: 20 (R5)
MOVW	R1, #32008
ADDS	R1, R4, R1
; eeg end address is: 16 (R4)
MOV	R0, R1
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R1, #39023
MOVT	R1, #16251
VMOV	S1, R1
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [SP, #4]
VSUB.F32	S0, S0, S1
LDR	R1, [SP, #8]
VSTR	#1, S0, [R1, #0]
;lib_eeg.h,82 :: 		}
L_eeg_filter38:
L_eeg_filter36:
;lib_eeg.h,83 :: 		}
L_end_eeg_filter:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _eeg_filter
_multiply:
;lib_eeg.h,117 :: 		complex_t_2 multiply(complex_t_2 a, complex_t_2 b) {
SUB	SP, SP, #8
; su_addr start address is: 0 (R0)
MOV	R0, R12
;lib_eeg.h,119 :: 		result.real_2 = (a.real_2 * b.real_2) - (a.imag_2 * b.imag_2);
VLDR	#1, S1, [SP, #16]
VLDR	#1, S0, [SP, #8]
VMUL.F32	S2, S0, S1
VLDR	#1, S1, [SP, #20]
VLDR	#1, S0, [SP, #12]
VMUL.F32	S0, S0, S1
VSUB.F32	S0, S2, S0
VSTR	#1, S0, [SP, #0]
;lib_eeg.h,120 :: 		result.imag_2 = (a.real_2 * b.imag_2) + (a.imag_2 * b.real_2);
VLDR	#1, S1, [SP, #20]
VLDR	#1, S0, [SP, #8]
VMUL.F32	S2, S0, S1
VLDR	#1, S1, [SP, #16]
VLDR	#1, S0, [SP, #12]
VMUL.F32	S0, S0, S1
VADD.F32	S0, S2, S0
VSTR	#1, S0, [SP, #4]
;lib_eeg.h,121 :: 		return result;
MOV	R3, #8
MOV	R2, R0
; su_addr end address is: 0 (R0)
ADD	R1, SP, #0
L_multiply39:
LDRB	R0, [R1, #0]
STRB	R0, [R2, #0]
SUBS	R3, R3, #1
ADDS	R1, R1, #1
ADDS	R2, R2, #1
CMP	R3, #0
IT	NE
BNE	L_multiply39
;lib_eeg.h,122 :: 		}
L_end_multiply:
ADD	SP, SP, #8
BX	LR
; end of _multiply
_fft:
;lib_eeg.h,124 :: 		void fft(complex_t_2 *v, int n, complex_t_2 *tmp){
; tmp start address is: 8 (R2)
; n start address is: 4 (R1)
; v start address is: 0 (R0)
SUB	SP, SP, #36
STR	LR, [SP, #0]
MOV	R4, R2
; tmp end address is: 8 (R2)
; n end address is: 4 (R1)
; v end address is: 0 (R0)
; v start address is: 0 (R0)
; n start address is: 4 (R1)
; tmp start address is: 16 (R4)
;lib_eeg.h,125 :: 		if (n > 1) {
CMP	R1, #1
IT	LE
BLE	L_fft40
;lib_eeg.h,128 :: 		ve = tmp; vo = tmp + n/2;
; ve start address is: 8 (R2)
MOV	R2, R4
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R1, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R4, R3
; tmp end address is: 16 (R4)
; vo start address is: 12 (R3)
;lib_eeg.h,129 :: 		for(k = 0; k < n/2; k++) {
; k start address is: 28 (R7)
MOVS	R7, #0
SXTH	R7, R7
; v end address is: 0 (R0)
; n end address is: 4 (R1)
; vo end address is: 12 (R3)
; k end address is: 28 (R7)
; ve end address is: 8 (R2)
SXTH	R8, R1
MOV	R1, R0
MOV	R0, R3
L_fft41:
; k start address is: 28 (R7)
; vo start address is: 0 (R0)
; ve start address is: 8 (R2)
; n start address is: 32 (R8)
; v start address is: 4 (R1)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
CMP	R7, R3
IT	GE
BGE	L_fft42
;lib_eeg.h,130 :: 		ve[k] = v[2*k];
LSLS	R3, R7, #3
ADDS	R4, R2, R3
LSLS	R3, R7, #1
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R1, R3
MOV	R6, #8
MOV	R5, R4
MOV	R4, R3
; k end address is: 28 (R7)
; vo end address is: 0 (R0)
MOV	R9, R0
SXTH	R0, R7
IT	AL
BAL	L_fft44
L__fft212:
L_fft44:
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; vo start address is: 36 (R9)
; v end address is: 4 (R1)
; n start address is: 32 (R8)
; n end address is: 32 (R8)
; ve start address is: 8 (R2)
; ve end address is: 8 (R2)
; vo start address is: 36 (R9)
; vo end address is: 36 (R9)
; k start address is: 0 (R0)
; k end address is: 0 (R0)
LDRB	R3, [R4, #0]
STRB	R3, [R5, #0]
SUBS	R6, R6, #1
ADDS	R4, R4, #1
ADDS	R5, R5, #1
CMP	R6, #0
IT	NE
BNE	L__fft212
; ve end address is: 8 (R2)
; vo end address is: 36 (R9)
; v end address is: 4 (R1)
; k end address is: 0 (R0)
; n end address is: 32 (R8)
;lib_eeg.h,131 :: 		vo[k] = v[2*k + 1];
; n start address is: 32 (R8)
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; vo start address is: 36 (R9)
; ve start address is: 8 (R2)
LSLS	R3, R0, #3
ADD	R4, R9, R3, LSL #0
LSLS	R3, R0, #1
SXTH	R3, R3
ADDS	R3, R3, #1
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R1, R3
MOV	R6, #8
MOV	R5, R4
MOV	R4, R3
; ve end address is: 8 (R2)
; vo end address is: 36 (R9)
MOV	R7, R2
MOV	R2, R9
IT	AL
BAL	L_fft45
L__fft213:
L_fft45:
; k start address is: 0 (R0)
; ve start address is: 28 (R7)
; vo start address is: 8 (R2)
; k end address is: 0 (R0)
; vo start address is: 8 (R2)
; vo end address is: 8 (R2)
; ve start address is: 28 (R7)
; ve end address is: 28 (R7)
; n start address is: 32 (R8)
; n end address is: 32 (R8)
; v start address is: 4 (R1)
; v end address is: 4 (R1)
LDRB	R3, [R4, #0]
STRB	R3, [R5, #0]
SUBS	R6, R6, #1
ADDS	R4, R4, #1
ADDS	R5, R5, #1
CMP	R6, #0
IT	NE
BNE	L__fft213
; vo end address is: 8 (R2)
; ve end address is: 28 (R7)
; v end address is: 4 (R1)
; k end address is: 0 (R0)
; n end address is: 32 (R8)
;lib_eeg.h,129 :: 		for(k = 0; k < n/2; k++) {
; n start address is: 32 (R8)
; k start address is: 0 (R0)
; v start address is: 4 (R1)
; ve start address is: 28 (R7)
; vo start address is: 8 (R2)
ADDS	R0, R0, #1
SXTH	R0, R0
;lib_eeg.h,132 :: 		}
STRH	R0, [SP, #4]
; vo end address is: 8 (R2)
; ve end address is: 28 (R7)
; k end address is: 0 (R0)
MOV	R0, R2
MOV	R2, R7
LDRSH	R7, [SP, #4]
IT	AL
BAL	L_fft41
L_fft42:
;lib_eeg.h,133 :: 		fft(ve, n/2, v);
; ve start address is: 8 (R2)
; vo start address is: 0 (R0)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
STR	R1, [SP, #4]
STRH	R8, [SP, #8]
STR	R2, [SP, #12]
STR	R0, [SP, #16]
MOV	R0, R2
MOV	R2, R1
SXTH	R1, R3
BL	_fft+0
LDR	R0, [SP, #16]
LDR	R2, [SP, #12]
LDRSH	R8, [SP, #8]
LDR	R1, [SP, #4]
;lib_eeg.h,134 :: 		fft(vo, n/2, v);
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
STR	R1, [SP, #4]
STRH	R8, [SP, #8]
STR	R2, [SP, #12]
STR	R0, [SP, #16]
MOV	R2, R1
SXTH	R1, R3
BL	_fft+0
LDR	R0, [SP, #16]
LDR	R2, [SP, #12]
LDRSH	R8, [SP, #8]
LDR	R1, [SP, #4]
;lib_eeg.h,135 :: 		for(m=0; m<n/2; m++) {
; m start address is: 24 (R6)
MOVS	R6, #0
SXTH	R6, R6
; vo end address is: 0 (R0)
; ve end address is: 8 (R2)
; v end address is: 4 (R1)
; n end address is: 32 (R8)
; m end address is: 24 (R6)
MOV	R10, R0
MOV	R9, R2
MOV	R7, R1
L_fft46:
; m start address is: 24 (R6)
; vo start address is: 40 (R10)
; ve start address is: 36 (R9)
; v start address is: 28 (R7)
; v start address is: 28 (R7)
; v end address is: 28 (R7)
; n start address is: 32 (R8)
; ve start address is: 36 (R9)
; ve end address is: 36 (R9)
; vo start address is: 40 (R10)
; vo end address is: 40 (R10)
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
CMP	R6, R3
IT	GE
BGE	L_fft47
; v end address is: 28 (R7)
; ve end address is: 36 (R9)
; vo end address is: 40 (R10)
;lib_eeg.h,136 :: 		w.real_2 = cos(2*phi_t*m/(double)n);
; vo start address is: 40 (R10)
; ve start address is: 36 (R9)
; v start address is: 28 (R7)
MOVW	R3, #lo_addr(_phi_t+0)
MOVT	R3, #hi_addr(_phi_t+0)
VLDR	#1, S1, [R3, #0]
VMOV.F32	S0, #2
VMUL.F32	S1, S0, S1
VMOV	S0, R6
VCVT.F32	#1, S0, S0
VMUL.F32	S1, S1, S0
VMOV	S0, R8
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
BL	_cos+0
VSTR	#1, S0, [SP, #28]
;lib_eeg.h,137 :: 		w.imag_2 = -sin(2*phi_t*m/(double)n);
MOVW	R3, #lo_addr(_phi_t+0)
MOVT	R3, #hi_addr(_phi_t+0)
VLDR	#1, S1, [R3, #0]
VMOV.F32	S0, #2
VMUL.F32	S1, S0, S1
VMOV	S0, R6
VCVT.F32	#1, S0, S0
VMUL.F32	S1, S1, S0
VMOV	S0, R8
VCVT.F32	#1, S0, S0
VDIV.F32	S0, S1, S0
BL	_sin+0
VNEG.F32	S2, S0
VSTR	#1, S2, [SP, #32]
;lib_eeg.h,138 :: 		z.real_2 = w.real_2*vo[m].real_2 - w.imag_2*vo[m].imag_2;
LSLS	R5, R6, #3
ADD	R4, R10, R5, LSL #0
VLDR	#1, S1, [R4, #0]
VLDR	#1, S0, [SP, #28]
VMUL.F32	S1, S0, S1
ADDS	R3, R4, #4
VLDR	#1, S0, [R3, #0]
VMUL.F32	S0, S2, S0
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [SP, #20]
;lib_eeg.h,139 :: 		z.imag_2 = w.real_2*vo[m].imag_2 + w.imag_2*vo[m].real_2;
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #28]
VMUL.F32	S1, S0, S1
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S2, S0
VADD.F32	S0, S1, S0
VSTR	#1, S0, [SP, #24]
;lib_eeg.h,140 :: 		v[  m  ].real_2 = ve[m].real_2 + z.real_2;
ADDS	R4, R7, R5
ADD	R3, R9, R5, LSL #0
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #20]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;lib_eeg.h,141 :: 		v[  m  ].imag_2 = ve[m].imag_2 + z.imag_2;
LSLS	R4, R6, #3
ADDS	R3, R7, R4
ADDS	R5, R3, #4
ADD	R3, R9, R4, LSL #0
ADDS	R3, R3, #4
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #24]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
;lib_eeg.h,142 :: 		v[m+n/2].real_2 = ve[m].real_2 - z.real_2;
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
ADDS	R3, R6, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R4, R7, R3
LSLS	R3, R6, #3
ADD	R3, R9, R3, LSL #0
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #20]
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;lib_eeg.h,143 :: 		v[m+n/2].imag_2 = ve[m].imag_2 - z.imag_2;
MOVS	R3, #2
SXTH	R3, R3
SDIV	R3, R8, R3
SXTH	R3, R3
ADDS	R3, R6, R3
SXTH	R3, R3
LSLS	R3, R3, #3
ADDS	R3, R7, R3
ADDS	R4, R3, #4
LSLS	R3, R6, #3
ADD	R3, R9, R3, LSL #0
ADDS	R3, R3, #4
VLDR	#1, S1, [R3, #0]
VLDR	#1, S0, [SP, #24]
VSUB.F32	S0, S1, S0
VSTR	#1, S0, [R4, #0]
;lib_eeg.h,135 :: 		for(m=0; m<n/2; m++) {
ADDS	R6, R6, #1
SXTH	R6, R6
;lib_eeg.h,144 :: 		}
; v end address is: 28 (R7)
; n end address is: 32 (R8)
; ve end address is: 36 (R9)
; vo end address is: 40 (R10)
; m end address is: 24 (R6)
IT	AL
BAL	L_fft46
L_fft47:
;lib_eeg.h,145 :: 		}
L_fft40:
;lib_eeg.h,146 :: 		}
L_end_fft:
LDR	LR, [SP, #0]
ADD	SP, SP, #36
BX	LR
; end of _fft
_psd_fft:
;lib_eeg.h,148 :: 		void psd_fft(int n, int n_fft, float *input, float *psd, float fs) {
; n start address is: 0 (R0)
SUB	SP, SP, #12288
ADD	SP, SP, #244
STR	LR, [SP, #0]
; n end address is: 0 (R0)
; n start address is: 0 (R0)
MOVW	R4, #12012
ADD	R4, SP, R4
STRH	R1, [R4, #0]
MOVW	R4, #12016
ADD	R4, SP, R4
STR	R2, [R4, #0]
MOVW	R4, #12020
ADD	R4, SP, R4
STR	R3, [R4, #0]
; fs start address is: 4 (R1)
VMOV.F32	S1, S0
;lib_eeg.h,150 :: 		float input_mean = 0.0, enbw = 0.0, scale = 0.0;
; enbw start address is: 28 (R7)
MOV	R4, #0
VMOV	S7, R4
;lib_eeg.h,153 :: 		for(i = 0; i < n; i++) {
; i start address is: 40 (R10)
MOVW	R10, #0
SXTH	R10, R10
; fs end address is: 4 (R1)
; enbw end address is: 28 (R7)
; i end address is: 40 (R10)
; n end address is: 0 (R0)
SXTH	R9, R0
VMOV.F32	S6, S7
VMOV.F32	S7, S1
SXTH	R6, R10
L_psd_fft49:
; i start address is: 24 (R6)
; enbw start address is: 24 (R6)
; fs start address is: 28 (R7)
; n start address is: 36 (R9)
CMP	R6, R9
IT	GE
BGE	L_psd_fft50
;lib_eeg.h,154 :: 		hanning_window[i] = 0.5 - 0.5 * cos((2.0 * phi_t * i) / ((float) n - 1.0));
ADD	R5, SP, #8
LSLS	R4, R6, #2
ADDS	R4, R5, R4
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
STR	R4, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R4, #lo_addr(_phi_t+0)
MOVT	R4, #hi_addr(_phi_t+0)
VLDR	#1, S1, [R4, #0]
VMOV.F32	S0, #2
VMUL.F32	S1, S0, S1
VMOV	S0, R6
VCVT.F32	#1, S0, S0
VMUL.F32	S2, S1, S0
VMOV	S1, R9
VCVT.F32	#1, S1, S1
VMOV.F32	S0, #1
VSUB.F32	S0, S1, S0
VDIV.F32	S0, S2, S0
BL	_cos+0
VMOV.F32	S1, #0.5
VMUL.F32	S1, S1, S0
VMOV.F32	S0, #0.5
VSUB.F32	S0, S0, S1
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
LDR	R4, [R0, #0]
LDR	R0, [SP, #4]
VSTR	#1, S0, [R4, #0]
;lib_eeg.h,155 :: 		enbw += hanning_window[i] * hanning_window[i];
ADD	R5, SP, #8
LSLS	R4, R6, #2
ADDS	R4, R5, R4
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S0, S0
VADD.F32	S0, S6, S0
; enbw end address is: 24 (R6)
; enbw start address is: 0 (R0)
;lib_eeg.h,153 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R6, #1
; i end address is: 24 (R6)
; i start address is: 40 (R10)
SXTH	R10, R4
;lib_eeg.h,156 :: 		}
; enbw end address is: 0 (R0)
; i end address is: 40 (R10)
VMOV.F32	S6, S0
SXTH	R6, R10
IT	AL
BAL	L_psd_fft49
L_psd_fft50:
;lib_eeg.h,157 :: 		scale = 1.0 / (fs * enbw);
; enbw start address is: 24 (R6)
VMUL.F32	S1, S7, S6
; enbw end address is: 24 (R6)
; fs end address is: 28 (R7)
VMOV.F32	S0, #1
VDIV.F32	S0, S0, S1
MOVW	R4, #12024
ADD	R4, SP, R4
VSTR	#1, S0, [R4, #0]
;lib_eeg.h,158 :: 		for(i = 0; i < N_FFT; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; n end address is: 36 (R9)
; i end address is: 4 (R1)
SXTH	R0, R9
L_psd_fft52:
; i start address is: 4 (R1)
; n start address is: 0 (R0)
CMP	R1, #4096
IT	GE
BGE	L_psd_fft53
;lib_eeg.h,159 :: 		fft_input_2[i].real_2 = 0.0;
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R5, R4, R5
MOV	R4, #0
VMOV	S0, R4
VSTR	#1, S0, [R5, #0]
;lib_eeg.h,160 :: 		fft_input_2[i].imag_2 = 0.0;
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R4, R4, R5
ADDS	R5, R4, #4
MOV	R4, #0
VMOV	S0, R4
VSTR	#1, S0, [R5, #0]
;lib_eeg.h,158 :: 		for(i = 0; i < N_FFT; i++) {
ADDS	R6, R1, #1
SXTH	R6, R6
; i end address is: 4 (R1)
; i start address is: 24 (R6)
;lib_eeg.h,161 :: 		}
; i end address is: 24 (R6)
SXTH	R1, R6
IT	AL
BAL	L_psd_fft52
L_psd_fft53:
;lib_eeg.h,163 :: 		for(i = 0; i < n; i++) {
; i start address is: 24 (R6)
MOVS	R6, #0
SXTH	R6, R6
; n end address is: 0 (R0)
; i end address is: 24 (R6)
SXTH	R2, R0
SXTH	R1, R6
L_psd_fft55:
; i start address is: 4 (R1)
; n start address is: 8 (R2)
CMP	R1, R2
IT	GE
BGE	L_psd_fft56
;lib_eeg.h,164 :: 		fft_input_2[i].real_2 = input[i];
LSLS	R5, R1, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
LSLS	R5, R1, #2
MOVW	R4, #12016
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VSTR	#1, S0, [R6, #0]
;lib_eeg.h,163 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R1, #1
; i end address is: 4 (R1)
; i start address is: 24 (R6)
SXTH	R6, R4
;lib_eeg.h,165 :: 		}
; i end address is: 24 (R6)
SXTH	R1, R6
IT	AL
BAL	L_psd_fft55
L_psd_fft56:
;lib_eeg.h,169 :: 		for(i = 0; i < n; i++) {
; i start address is: 28 (R7)
MOVS	R7, #0
SXTH	R7, R7
; n end address is: 8 (R2)
; i end address is: 28 (R7)
SXTH	R0, R7
L_psd_fft58:
; i start address is: 0 (R0)
; n start address is: 8 (R2)
CMP	R0, R2
IT	GE
BGE	L_psd_fft59
;lib_eeg.h,170 :: 		fft_input_2[i].real_2 = hanning_window[i] * input[i];
LSLS	R5, R0, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
ADD	R4, SP, #8
LSLS	R5, R0, #2
ADDS	R4, R4, R5
VLDR	#1, S1, [R4, #0]
MOVW	R4, #12016
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R6, #0]
;lib_eeg.h,169 :: 		for(i = 0; i < n; i++) {
ADDS	R4, R0, #1
; i end address is: 0 (R0)
; i start address is: 28 (R7)
SXTH	R7, R4
;lib_eeg.h,171 :: 		}
; n end address is: 8 (R2)
; i end address is: 28 (R7)
SXTH	R0, R7
IT	AL
BAL	L_psd_fft58
L_psd_fft59:
;lib_eeg.h,172 :: 		fft(fft_input_2, n_fft, fft_temp_2);
MOVW	R4, #12012
ADD	R4, SP, R4
MOVW	R2, #lo_addr(_fft_temp_2+0)
MOVT	R2, #hi_addr(_fft_temp_2+0)
LDRSH	R1, [R4, #0]
MOVW	R0, #lo_addr(_fft_input_2+0)
MOVT	R0, #hi_addr(_fft_input_2+0)
BL	_fft+0
;lib_eeg.h,174 :: 		memcpy(fft_input_conjugated_2, fft_input_2, sizeof(complex_t_2) * n_fft);
MOVW	R4, #12012
ADD	R4, SP, R4
LDRSH	R4, [R4, #0]
LSLS	R4, R4, #3
SXTH	R2, R4
MOVW	R1, #lo_addr(_fft_input_2+0)
MOVT	R1, #hi_addr(_fft_input_2+0)
MOVW	R0, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R0, #hi_addr(_fft_input_conjugated_2+0)
BL	_memcpy+0
;lib_eeg.h,176 :: 		for(i = 0; i < n_fft; i++) {
; i start address is: 32 (R8)
MOVW	R8, #0
SXTH	R8, R8
; i end address is: 32 (R8)
L_psd_fft61:
; i start address is: 32 (R8)
MOVW	R4, #12012
ADD	R4, SP, R4
LDRSH	R4, [R4, #0]
CMP	R8, R4
IT	GE
BGE	L_psd_fft62
;lib_eeg.h,177 :: 		fft_input_conjugated_2[i].imag_2 *= -1.0;
LSL	R5, R8, #3
MOVW	R4, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R4, #hi_addr(_fft_input_conjugated_2+0)
ADDS	R4, R4, R5
ADDS	R5, R4, #4
VLDR	#1, S1, [R5, #0]
VMOV.F32	S0, #-1
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
;lib_eeg.h,178 :: 		fft_input_2[i] = multiply(fft_input_2[i], fft_input_conjugated_2[i]);
LSL	R5, R8, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
STR	R6, [R0, #0]
LDR	R0, [SP, #4]
MOVW	R4, #lo_addr(_fft_input_conjugated_2+0)
MOVT	R4, #hi_addr(_fft_input_conjugated_2+0)
ADDS	R5, R4, R5
MOV	R4, R6
SUB	SP, SP, #8
MOV	R12, R5
ADD	R11, SP, #0
ADD	R10, R11, #8
BL	___CC2DW+0
SUB	SP, SP, #8
MOV	R12, R4
ADD	R11, SP, #0
ADD	R10, R11, #8
BL	___CC2DW+0
MOVW	R12, #12044
ADD	R12, SP, R12
BL	_multiply+0
ADD	SP, SP, #16
MOV	R7, #8
STR	R0, [SP, #4]
MOVW	R0, #12040
ADD	R0, SP, R0
LDR	R4, [R0, #0]
LDR	R0, [SP, #4]
MOV	R6, R4
MOVW	R5, #12028
ADD	R5, SP, R5
; i end address is: 32 (R8)
SXTH	R2, R8
IT	AL
BAL	L_psd_fft64
L__psd_fft214:
L_psd_fft64:
; i start address is: 8 (R2)
; i start address is: 8 (R2)
; i end address is: 8 (R2)
LDRB	R4, [R5, #0]
STRB	R4, [R6, #0]
SUBS	R7, R7, #1
ADDS	R5, R5, #1
ADDS	R6, R6, #1
CMP	R7, #0
IT	NE
BNE	L__psd_fft214
; i end address is: 8 (R2)
; i start address is: 8 (R2)
;lib_eeg.h,179 :: 		fft_input_2[i].real_2 *= scale;
LSLS	R5, R2, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R6, R4, R5
VLDR	#1, S1, [R6, #0]
MOVW	R4, #12024
ADD	R4, SP, R4
VLDR	#1, S0, [R4, #0]
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R6, #0]
;lib_eeg.h,180 :: 		if (i != 0) fft_input_2[i].real_2 *= 2;
CMP	R2, #0
IT	EQ
BEQ	L_psd_fft65
LSLS	R5, R2, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R5, R4, R5
VLDR	#1, S1, [R5, #0]
VMOV.F32	S0, #2
VMUL.F32	S0, S1, S0
VSTR	#1, S0, [R5, #0]
L_psd_fft65:
;lib_eeg.h,176 :: 		for(i = 0; i < n_fft; i++) {
ADDS	R4, R2, #1
; i end address is: 8 (R2)
; i start address is: 32 (R8)
SXTH	R8, R4
;lib_eeg.h,181 :: 		}
; i end address is: 32 (R8)
IT	AL
BAL	L_psd_fft61
L_psd_fft62:
;lib_eeg.h,183 :: 		for(i = 0; i < N_FFT_2; i++) {
; i start address is: 0 (R0)
MOVS	R0, #0
SXTH	R0, R0
; i end address is: 0 (R0)
L_psd_fft66:
; i start address is: 0 (R0)
CMP	R0, #2048
IT	GE
BGE	L_psd_fft67
;lib_eeg.h,184 :: 		psd[i] = fft_input_2[i].real_2;
LSLS	R5, R0, #2
MOVW	R4, #12020
ADD	R4, SP, R4
LDR	R4, [R4, #0]
ADDS	R6, R4, R5
LSLS	R5, R0, #3
MOVW	R4, #lo_addr(_fft_input_2+0)
MOVT	R4, #hi_addr(_fft_input_2+0)
ADDS	R4, R4, R5
VLDR	#1, S0, [R4, #0]
VSTR	#1, S0, [R6, #0]
;lib_eeg.h,183 :: 		for(i = 0; i < N_FFT_2; i++) {
ADDS	R4, R0, #1
; i end address is: 0 (R0)
; i start address is: 4 (R1)
SXTH	R1, R4
;lib_eeg.h,185 :: 		}
SXTH	R0, R1
; i end address is: 4 (R1)
IT	AL
BAL	L_psd_fft66
L_psd_fft67:
;lib_eeg.h,186 :: 		}
L_end_psd_fft:
LDR	LR, [SP, #0]
ADD	SP, SP, #12288
SUB	SP, SP, #244
BX	LR
; end of _psd_fft
_eeg_frequency_domain_calculation:
;lib_eeg.h,188 :: 		void eeg_frequency_domain_calculation(EEG_Instance_t* eeg){
; eeg start address is: 0 (R0)
SUB	SP, SP, #5024
STR	LR, [SP, #0]
; eeg end address is: 0 (R0)
; eeg start address is: 0 (R0)
;lib_eeg.h,189 :: 		int i = 0;
;lib_eeg.h,190 :: 		int n_fft = 1<<12;
; n_fft start address is: 32 (R8)
MOVW	R8, #4096
SXTH	R8, R8
;lib_eeg.h,191 :: 		float fs_fft = 512.0;
; fs_fft start address is: 4 (R1)
MOV	R1, #1140850688
VMOV	S1, R1
;lib_eeg.h,193 :: 		int delta_count = 0, teta_count = 0, alpha_count = 0, beta_count = 0, gamma_count = 0;
; delta_count start address is: 12 (R3)
MOVW	R3, #0
SXTH	R3, R3
; teta_count start address is: 16 (R4)
MOVW	R4, #0
SXTH	R4, R4
; alpha_count start address is: 20 (R5)
MOVW	R5, #0
SXTH	R5, R5
; beta_count start address is: 24 (R6)
MOVW	R6, #0
SXTH	R6, R6
; gamma_count start address is: 28 (R7)
MOVW	R7, #0
SXTH	R7, R7
;lib_eeg.h,212 :: 		val_fft = 0.12207;
MOVW	R1, #65494
MOVT	R1, #15865
; val_fft start address is: 0 (R0)
VMOV	S0, R1
;lib_eeg.h,213 :: 		psd_fft(eeg->length_eeg, n_fft, eeg->hpf_eeg, power2, fs_fft);
MOVW	R1, #32008
ADDS	R2, R0, R1
ADD	R1, R0, #16000
LDRSH	R1, [R1, #0]
VSTR	#1, S0, [SP, #4]
; fs_fft end address is: 4 (R1)
STRH	R7, [SP, #8]
STRH	R6, [SP, #10]
STRH	R5, [SP, #12]
STRH	R4, [SP, #14]
STRH	R3, [SP, #16]
STR	R0, [SP, #20]
VMOV.F32	S0, S1
MOVW	R3, #lo_addr(_power2+0)
MOVT	R3, #hi_addr(_power2+0)
SXTH	R0, R1
; n_fft end address is: 32 (R8)
SXTH	R1, R8
BL	_psd_fft+0
LDR	R0, [SP, #20]
LDRSH	R3, [SP, #16]
LDRSH	R4, [SP, #14]
LDRSH	R5, [SP, #12]
LDRSH	R6, [SP, #10]
LDRSH	R7, [SP, #8]
VLDR	#1, S0, [SP, #4]
;lib_eeg.h,215 :: 		for(i = 0; i < N_FFT_2; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; teta_count end address is: 16 (R4)
; val_fft end address is: 0 (R0)
; delta_count end address is: 12 (R3)
; i end address is: 4 (R1)
; alpha_count end address is: 20 (R5)
; gamma_count end address is: 28 (R7)
; beta_count end address is: 24 (R6)
; eeg end address is: 0 (R0)
STRH	R7, [SP, #4]
VMOV.F32	S2, S0
SXTH	R7, R4
SXTH	R8, R5
SXTH	R5, R1
LDRSH	R4, [SP, #4]
L_eeg_frequency_domain_calculation69:
; i start address is: 20 (R5)
; val_fft start address is: 8 (R2)
; gamma_count start address is: 16 (R4)
; beta_count start address is: 24 (R6)
; alpha_count start address is: 32 (R8)
; teta_count start address is: 28 (R7)
; delta_count start address is: 12 (R3)
; eeg start address is: 0 (R0)
CMP	R5, #2048
IT	GE
BGE	L_eeg_frequency_domain_calculation70
;lib_eeg.h,216 :: 		freq_eeg[i] = i * val_fft;
LSLS	R2, R5, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R2, R1, R2
VMOV	S0, R5
VCVT.F32	#1, S0, S0
VMUL.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,215 :: 		for(i = 0; i < N_FFT_2; i++) {
ADDS	R5, R5, #1
SXTH	R5, R5
;lib_eeg.h,217 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_eeg_frequency_domain_calculation69
L_eeg_frequency_domain_calculation70:
;lib_eeg.h,226 :: 		for(i = 0; i < N_FFT_2 / 5; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; delta_count end address is: 12 (R3)
; val_fft end address is: 8 (R2)
; alpha_count end address is: 32 (R8)
; gamma_count end address is: 16 (R4)
; teta_count end address is: 28 (R7)
; i end address is: 4 (R1)
; beta_count end address is: 24 (R6)
; eeg end address is: 0 (R0)
SXTH	R5, R3
SXTH	R3, R1
L_eeg_frequency_domain_calculation72:
; i start address is: 12 (R3)
; eeg start address is: 0 (R0)
; delta_count start address is: 20 (R5)
; teta_count start address is: 28 (R7)
; alpha_count start address is: 32 (R8)
; beta_count start address is: 24 (R6)
; gamma_count start address is: 16 (R4)
; val_fft start address is: 8 (R2)
MOVW	R1, #409
CMP	R3, R1
IT	GE
BGE	L_eeg_frequency_domain_calculation73
;lib_eeg.h,227 :: 		if (0.2 <= freq_eeg[i] && freq_eeg[i] <= 3.0) {
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
MOVW	R1, #52429
MOVT	R1, #15948
VMOV	S0, R1
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation230
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #3
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation231
L__eeg_frequency_domain_calculation219:
;lib_eeg.h,228 :: 		delta_index[delta_count++] = i;
ADD	R2, SP, #24
LSLS	R1, R5, #1
ADDS	R1, R2, R1
STRH	R3, [R1, #0]
ADDS	R1, R5, #1
; delta_count end address is: 20 (R5)
; delta_count start address is: 8 (R2)
SXTH	R2, R1
; delta_count end address is: 8 (R2)
SXTH	R5, R2
;lib_eeg.h,227 :: 		if (0.2 <= freq_eeg[i] && freq_eeg[i] <= 3.0) {
IT	AL
BAL	L__eeg_frequency_domain_calculation221
L__eeg_frequency_domain_calculation230:
L__eeg_frequency_domain_calculation221:
; delta_count start address is: 20 (R5)
; delta_count end address is: 20 (R5)
IT	AL
BAL	L__eeg_frequency_domain_calculation220
L__eeg_frequency_domain_calculation231:
L__eeg_frequency_domain_calculation220:
;lib_eeg.h,230 :: 		if (3.0 <= freq_eeg[i] && freq_eeg[i] <= 8.0) {
; delta_count start address is: 20 (R5)
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #3
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation232
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #8
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation233
L__eeg_frequency_domain_calculation218:
;lib_eeg.h,231 :: 		teta_index[teta_count++] = i;
ADD	R2, SP, #1024
LSLS	R1, R7, #1
ADDS	R1, R2, R1
STRH	R3, [R1, #0]
ADDS	R1, R7, #1
; teta_count end address is: 28 (R7)
; teta_count start address is: 8 (R2)
SXTH	R2, R1
; teta_count end address is: 8 (R2)
SXTH	R7, R2
;lib_eeg.h,230 :: 		if (3.0 <= freq_eeg[i] && freq_eeg[i] <= 8.0) {
IT	AL
BAL	L__eeg_frequency_domain_calculation223
L__eeg_frequency_domain_calculation232:
L__eeg_frequency_domain_calculation223:
; teta_count start address is: 28 (R7)
; teta_count end address is: 28 (R7)
IT	AL
BAL	L__eeg_frequency_domain_calculation222
L__eeg_frequency_domain_calculation233:
L__eeg_frequency_domain_calculation222:
;lib_eeg.h,233 :: 		if (8.0 <= freq_eeg[i] && freq_eeg[i] <= 13.0) {
; teta_count start address is: 28 (R7)
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #8
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation234
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #13
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation235
L__eeg_frequency_domain_calculation217:
;lib_eeg.h,234 :: 		alpha_index[alpha_count++] = i;
ADD	R2, SP, #2024
LSL	R1, R8, #1
ADDS	R1, R2, R1
STRH	R3, [R1, #0]
ADD	R1, R8, #1
; alpha_count end address is: 32 (R8)
; alpha_count start address is: 8 (R2)
SXTH	R2, R1
; alpha_count end address is: 8 (R2)
SXTH	R8, R2
;lib_eeg.h,233 :: 		if (8.0 <= freq_eeg[i] && freq_eeg[i] <= 13.0) {
IT	AL
BAL	L__eeg_frequency_domain_calculation225
L__eeg_frequency_domain_calculation234:
L__eeg_frequency_domain_calculation225:
; alpha_count start address is: 32 (R8)
; alpha_count end address is: 32 (R8)
IT	AL
BAL	L__eeg_frequency_domain_calculation224
L__eeg_frequency_domain_calculation235:
L__eeg_frequency_domain_calculation224:
;lib_eeg.h,236 :: 		if (13.0 <= freq_eeg[i] && freq_eeg[i] <= 30.0) {
; alpha_count start address is: 32 (R8)
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #13
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation236
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #30
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation237
L__eeg_frequency_domain_calculation216:
;lib_eeg.h,237 :: 		beta_index[beta_count++] = i;
ADD	R2, SP, #3024
LSLS	R1, R6, #1
ADDS	R1, R2, R1
STRH	R3, [R1, #0]
ADDS	R1, R6, #1
; beta_count end address is: 24 (R6)
; beta_count start address is: 8 (R2)
SXTH	R2, R1
; beta_count end address is: 8 (R2)
SXTH	R6, R2
;lib_eeg.h,236 :: 		if (13.0 <= freq_eeg[i] && freq_eeg[i] <= 30.0) {
IT	AL
BAL	L__eeg_frequency_domain_calculation227
L__eeg_frequency_domain_calculation236:
L__eeg_frequency_domain_calculation227:
; beta_count start address is: 24 (R6)
; beta_count end address is: 24 (R6)
IT	AL
BAL	L__eeg_frequency_domain_calculation226
L__eeg_frequency_domain_calculation237:
L__eeg_frequency_domain_calculation226:
;lib_eeg.h,239 :: 		if (30.0 <= freq_eeg[i] && freq_eeg[i] <= 35.0) {
; beta_count start address is: 24 (R6)
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMOV.F32	S0, #30
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation238
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
MOVW	R1, #0
MOVT	R1, #16908
VMOV	S0, R1
VCMPE.F32	S1, S0
VMRS	#60, FPSCR
IT	GT
BGT	L__eeg_frequency_domain_calculation239
L__eeg_frequency_domain_calculation215:
;lib_eeg.h,240 :: 		gamma_index[gamma_count++] = i;
ADDW	R2, SP, #4024
LSLS	R1, R4, #1
ADDS	R1, R2, R1
STRH	R3, [R1, #0]
ADDS	R1, R4, #1
; gamma_count end address is: 16 (R4)
; gamma_count start address is: 8 (R2)
SXTH	R2, R1
; gamma_count end address is: 8 (R2)
SXTH	R4, R2
;lib_eeg.h,239 :: 		if (30.0 <= freq_eeg[i] && freq_eeg[i] <= 35.0) {
IT	AL
BAL	L__eeg_frequency_domain_calculation229
L__eeg_frequency_domain_calculation238:
L__eeg_frequency_domain_calculation229:
; gamma_count start address is: 16 (R4)
; gamma_count end address is: 16 (R4)
IT	AL
BAL	L__eeg_frequency_domain_calculation228
L__eeg_frequency_domain_calculation239:
L__eeg_frequency_domain_calculation228:
;lib_eeg.h,226 :: 		for(i = 0; i < N_FFT_2 / 5; i++) {
; gamma_count start address is: 16 (R4)
ADDS	R3, R3, #1
SXTH	R3, R3
;lib_eeg.h,242 :: 		}
; i end address is: 12 (R3)
IT	AL
BAL	L_eeg_frequency_domain_calculation72
L_eeg_frequency_domain_calculation73:
;lib_eeg.h,245 :: 		df = val_fft;
; df start address is: 4 (R1)
VMOV.F32	S1, S2
; val_fft end address is: 8 (R2)
;lib_eeg.h,246 :: 		eeg->delta_power = 0.0;
MOVW	R1, #48012
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,247 :: 		for(i = 0; i < delta_count; i++) {
; i start address is: 36 (R9)
MOVW	R9, #0
SXTH	R9, R9
; delta_count end address is: 20 (R5)
; alpha_count end address is: 32 (R8)
; df end address is: 4 (R1)
; gamma_count end address is: 16 (R4)
; teta_count end address is: 28 (R7)
; i end address is: 36 (R9)
; beta_count end address is: 24 (R6)
; eeg end address is: 0 (R0)
STRH	R6, [SP, #4]
SXTH	R6, R8
SXTH	R8, R5
VMOV.F32	S2, S1
LDRSH	R5, [SP, #4]
L_eeg_frequency_domain_calculation90:
; i start address is: 36 (R9)
; df start address is: 8 (R2)
; gamma_count start address is: 16 (R4)
; beta_count start address is: 20 (R5)
; alpha_count start address is: 24 (R6)
; teta_count start address is: 28 (R7)
; delta_count start address is: 32 (R8)
; eeg start address is: 0 (R0)
CMP	R9, R8
IT	GE
BGE	L_eeg_frequency_domain_calculation91
;lib_eeg.h,248 :: 		eeg->delta_power += power2[delta_index[i]];
MOVW	R1, #48012
ADDS	R3, R0, R1
ADD	R2, SP, #24
LSL	R1, R9, #1
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,247 :: 		for(i = 0; i < delta_count; i++) {
ADD	R9, R9, #1
SXTH	R9, R9
;lib_eeg.h,249 :: 		}
; delta_count end address is: 32 (R8)
; i end address is: 36 (R9)
IT	AL
BAL	L_eeg_frequency_domain_calculation90
L_eeg_frequency_domain_calculation91:
;lib_eeg.h,250 :: 		eeg->delta_power *= df;
MOVW	R1, #48012
ADDS	R2, R0, R1
VLDR	#1, S0, [R2, #0]
VMUL.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,252 :: 		eeg->teta_power = 0.0;
MOVW	R1, #48016
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,253 :: 		for(i = 0; i < teta_count; i++) {
; i start address is: 4 (R1)
MOVS	R1, #0
SXTH	R1, R1
; gamma_count end address is: 16 (R4)
; beta_count end address is: 20 (R5)
; alpha_count end address is: 24 (R6)
; teta_count end address is: 28 (R7)
; i end address is: 4 (R1)
; df end address is: 8 (R2)
; eeg end address is: 0 (R0)
STRH	R6, [SP, #4]
SXTH	R8, R7
SXTH	R7, R4
SXTH	R4, R1
SXTH	R6, R5
LDRSH	R5, [SP, #4]
L_eeg_frequency_domain_calculation93:
; i start address is: 16 (R4)
; eeg start address is: 0 (R0)
; teta_count start address is: 32 (R8)
; alpha_count start address is: 20 (R5)
; beta_count start address is: 24 (R6)
; gamma_count start address is: 28 (R7)
; df start address is: 8 (R2)
CMP	R4, R8
IT	GE
BGE	L_eeg_frequency_domain_calculation94
;lib_eeg.h,254 :: 		eeg->teta_power += power2[teta_index[i]];
MOVW	R1, #48016
ADDS	R3, R0, R1
ADD	R2, SP, #1024
LSLS	R1, R4, #1
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,253 :: 		for(i = 0; i < teta_count; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;lib_eeg.h,255 :: 		}
; teta_count end address is: 32 (R8)
; i end address is: 16 (R4)
IT	AL
BAL	L_eeg_frequency_domain_calculation93
L_eeg_frequency_domain_calculation94:
;lib_eeg.h,256 :: 		eeg->teta_power *= df;
MOVW	R1, #48016
ADDS	R2, R0, R1
VLDR	#1, S0, [R2, #0]
VMUL.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,258 :: 		eeg->alpha_power = 0.0;
MOVW	R1, #48020
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,259 :: 		for(i = 0; i < alpha_count; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; alpha_count end address is: 20 (R5)
; gamma_count end address is: 28 (R7)
; beta_count end address is: 24 (R6)
; df end address is: 8 (R2)
; eeg end address is: 0 (R0)
; i end address is: 16 (R4)
STRH	R7, [SP, #4]
SXTH	R7, R5
LDRSH	R5, [SP, #4]
L_eeg_frequency_domain_calculation96:
; i start address is: 16 (R4)
; df start address is: 8 (R2)
; gamma_count start address is: 20 (R5)
; beta_count start address is: 24 (R6)
; alpha_count start address is: 28 (R7)
; eeg start address is: 0 (R0)
CMP	R4, R7
IT	GE
BGE	L_eeg_frequency_domain_calculation97
;lib_eeg.h,260 :: 		eeg->alpha_power += power2[alpha_index[i]];
MOVW	R1, #48020
ADDS	R3, R0, R1
ADD	R2, SP, #2024
LSLS	R1, R4, #1
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,259 :: 		for(i = 0; i < alpha_count; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;lib_eeg.h,261 :: 		}
; alpha_count end address is: 28 (R7)
; i end address is: 16 (R4)
IT	AL
BAL	L_eeg_frequency_domain_calculation96
L_eeg_frequency_domain_calculation97:
;lib_eeg.h,262 :: 		eeg->alpha_power *= df;
MOVW	R1, #48020
ADDS	R2, R0, R1
VLDR	#1, S0, [R2, #0]
VMUL.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,264 :: 		eeg->beta_power = 0.0;
MOVW	R1, #48024
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,265 :: 		for(i = 0; i < beta_count; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; beta_count end address is: 24 (R6)
; df end address is: 8 (R2)
; gamma_count end address is: 20 (R5)
; eeg end address is: 0 (R0)
; i end address is: 16 (R4)
L_eeg_frequency_domain_calculation99:
; i start address is: 16 (R4)
; eeg start address is: 0 (R0)
; beta_count start address is: 24 (R6)
; gamma_count start address is: 20 (R5)
; df start address is: 8 (R2)
CMP	R4, R6
IT	GE
BGE	L_eeg_frequency_domain_calculation100
;lib_eeg.h,266 :: 		eeg->beta_power += power2[beta_index[i]];
MOVW	R1, #48024
ADDS	R3, R0, R1
ADD	R2, SP, #3024
LSLS	R1, R4, #1
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,265 :: 		for(i = 0; i < beta_count; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;lib_eeg.h,267 :: 		}
; beta_count end address is: 24 (R6)
; i end address is: 16 (R4)
IT	AL
BAL	L_eeg_frequency_domain_calculation99
L_eeg_frequency_domain_calculation100:
;lib_eeg.h,268 :: 		eeg->beta_power *= df;
MOVW	R1, #48024
ADDS	R2, R0, R1
VLDR	#1, S0, [R2, #0]
VMUL.F32	S0, S0, S2
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,270 :: 		eeg->gamma_power = 0.0;
MOVW	R1, #48028
ADDS	R2, R0, R1
MOV	R1, #0
VMOV	S0, R1
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,271 :: 		for(i = 0; i < gamma_count; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; df end address is: 8 (R2)
; gamma_count end address is: 20 (R5)
; eeg end address is: 0 (R0)
; i end address is: 16 (R4)
L_eeg_frequency_domain_calculation102:
; i start address is: 16 (R4)
; df start address is: 8 (R2)
; gamma_count start address is: 20 (R5)
; eeg start address is: 0 (R0)
CMP	R4, R5
IT	GE
BGE	L_eeg_frequency_domain_calculation103
;lib_eeg.h,272 :: 		eeg->gamma_power += power2[gamma_index[i]];
MOVW	R1, #48028
ADDS	R3, R0, R1
ADDW	R2, SP, #4024
LSLS	R1, R4, #1
ADDS	R1, R2, R1
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #2
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VLDR	#1, S0, [R3, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R3, #0]
;lib_eeg.h,271 :: 		for(i = 0; i < gamma_count; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;lib_eeg.h,273 :: 		}
; gamma_count end address is: 20 (R5)
; i end address is: 16 (R4)
IT	AL
BAL	L_eeg_frequency_domain_calculation102
L_eeg_frequency_domain_calculation103:
;lib_eeg.h,274 :: 		eeg->gamma_power *= df;
MOVW	R1, #48028
ADDS	R2, R0, R1
VLDR	#1, S0, [R2, #0]
VMUL.F32	S0, S0, S2
; df end address is: 8 (R2)
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,276 :: 		eeg->total_power = eeg->delta_power + eeg->teta_power + eeg->alpha_power + eeg->beta_power + eeg->gamma_power;
MOVW	R1, #48032
ADDS	R2, R0, R1
MOVW	R1, #48012
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
MOVW	R1, #48016
ADDS	R1, R0, R1
VLDR	#1, S0, [R1, #0]
VADD.F32	S1, S1, S0
MOVW	R1, #48020
ADDS	R1, R0, R1
VLDR	#1, S0, [R1, #0]
VADD.F32	S1, S1, S0
MOVW	R1, #48024
ADDS	R1, R0, R1
VLDR	#1, S0, [R1, #0]
VADD.F32	S1, S1, S0
MOVW	R1, #48028
ADDS	R1, R0, R1
VLDR	#1, S0, [R1, #0]
VADD.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,277 :: 		eeg->lapf_eeg = (float) eeg->alpha_power / eeg->total_power;
MOVW	R1, #48040
ADDS	R2, R0, R1
MOVW	R1, #48020
ADDS	R1, R0, R1
VLDR	#1, S1, [R1, #0]
MOVW	R1, #48032
ADDS	R1, R0, R1
; eeg end address is: 0 (R0)
VLDR	#1, S0, [R1, #0]
VDIV.F32	S0, S1, S0
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,278 :: 		}
L_end_eeg_frequency_domain_calculation:
LDR	LR, [SP, #0]
ADD	SP, SP, #5024
BX	LR
; end of _eeg_frequency_domain_calculation
_eeg_process:
;lib_eeg.h,280 :: 		int eeg_process(EEG_Instance_t* eeg, float eeg_value){
; eeg_value start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; eeg start address is: 0 (R0)
MOV	R6, R0
; eeg_value end address is: 0 (R0)
; eeg end address is: 0 (R0)
; eeg start address is: 24 (R6)
; eeg_value start address is: 0 (R0)
;lib_eeg.h,281 :: 		eeg->eeg_signal[eeg->length_eeg] = eeg_value;
ADD	R1, R6, #16000
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #2
ADDS	R1, R6, R1
VSTR	#1, S0, [R1, #0]
; eeg_value end address is: 0 (R0)
;lib_eeg.h,282 :: 		eeg->current_index_eeg = eeg->length_eeg;
MOVW	R1, #16002
ADDS	R2, R6, R1
ADD	R1, R6, #16000
LDRSH	R1, [R1, #0]
STRH	R1, [R2, #0]
;lib_eeg.h,283 :: 		eeg->length_eeg++;
ADD	R2, R6, #16000
LDRSH	R1, [R2, #0]
ADDS	R1, R1, #1
STRH	R1, [R2, #0]
;lib_eeg.h,285 :: 		if (eeg->length_eeg == (N_EEG - 1)) {
ADD	R1, R6, #16000
LDRSH	R2, [R1, #0]
MOVW	R1, #3999
CMP	R2, R1
IT	NE
BNE	L_eeg_process105
;lib_eeg.h,286 :: 		eeg->length_eeg = 0;
ADD	R2, R6, #16000
MOVS	R1, #0
SXTH	R1, R1
STRH	R1, [R2, #0]
;lib_eeg.h,287 :: 		}
L_eeg_process105:
;lib_eeg.h,288 :: 		eeg_baseline_restore(eeg);
MOV	R0, R6
BL	_eeg_baseline_restore+0
;lib_eeg.h,289 :: 		eeg_filter(eeg);
MOV	R0, R6
; eeg end address is: 24 (R6)
BL	_eeg_filter+0
;lib_eeg.h,290 :: 		return 0;
MOVS	R0, #0
SXTH	R0, R0
;lib_eeg.h,291 :: 		}
L_end_eeg_process:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _eeg_process
_eeg_mean_power_freq:
;lib_eeg.h,293 :: 		void eeg_mean_power_freq(EEG_Instance_t* eeg){
; eeg start address is: 0 (R0)
SUB	SP, SP, #4
; eeg end address is: 0 (R0)
; eeg start address is: 0 (R0)
;lib_eeg.h,294 :: 		float num = 0.0, denum = 0.0;
; num start address is: 8 (R2)
MOV	R1, #0
VMOV	S2, R1
; denum start address is: 12 (R3)
MOV	R1, #0
VMOV	S3, R1
;lib_eeg.h,296 :: 		for (k = 0; k < N_FFT_2; k++){
; k start address is: 12 (R3)
MOVS	R3, #0
SXTH	R3, R3
; eeg end address is: 0 (R0)
; num end address is: 8 (R2)
; denum end address is: 12 (R3)
; k end address is: 12 (R3)
STRH	R3, [SP, #0]
LDRSH	R3, [SP, #0]
L_eeg_mean_power_freq106:
; k start address is: 12 (R3)
; denum start address is: 12 (R3)
; num start address is: 8 (R2)
; eeg start address is: 0 (R0)
CMP	R3, #2048
IT	GE
BGE	L_eeg_mean_power_freq107
;lib_eeg.h,297 :: 		num += freq_eeg[k] * power2[k];
LSLS	R2, R3, #2
MOVW	R1, #lo_addr(_freq_eeg+0)
MOVT	R1, #hi_addr(_freq_eeg+0)
ADDS	R1, R1, R2
VLDR	#1, S0, [R1, #0]
MOVW	R1, #lo_addr(_power2+0)
MOVT	R1, #hi_addr(_power2+0)
ADDS	R1, R1, R2
VLDR	#1, S1, [R1, #0]
VMUL.F32	S0, S0, S1
VADD.F32	S2, S2, S0
;lib_eeg.h,298 :: 		denum += power2[k];
VADD.F32	S3, S3, S1
;lib_eeg.h,296 :: 		for (k = 0; k < N_FFT_2; k++){
ADDS	R3, R3, #1
SXTH	R3, R3
;lib_eeg.h,299 :: 		}
STRH	R3, [SP, #0]
; k end address is: 12 (R3)
LDRSH	R3, [SP, #0]
IT	AL
BAL	L_eeg_mean_power_freq106
L_eeg_mean_power_freq107:
;lib_eeg.h,300 :: 		eeg->mpf_eeg = (float) num / (float) denum;
MOVW	R1, #48036
ADDS	R2, R0, R1
; eeg end address is: 0 (R0)
VDIV.F32	S0, S2, S3
; num end address is: 8 (R2)
; denum end address is: 12 (R3)
VSTR	#1, S0, [R2, #0]
;lib_eeg.h,301 :: 		}
L_end_eeg_mean_power_freq:
ADD	SP, SP, #4
BX	LR
; end of _eeg_mean_power_freq
_relu:
;ann.h,338 :: 		float relu(float x){
; x start address is: 0 (R0)
; x end address is: 0 (R0)
; x start address is: 0 (R0)
;ann.h,339 :: 		if (x < 0) {
VCMPE.F32	S0, #0
VMRS	#60, FPSCR
IT	GE
BGE	L_relu109
; x end address is: 0 (R0)
;ann.h,340 :: 		return 0;
MOV	R1, #0
VMOV	S0, R1
IT	AL
BAL	L_end_relu
;ann.h,341 :: 		} else {
L_relu109:
;ann.h,342 :: 		return x;
; x start address is: 0 (R0)
; x end address is: 0 (R0)
;ann.h,344 :: 		}
L_end_relu:
BX	LR
; end of _relu
_softmax:
;ann.h,346 :: 		float* softmax(float *z) {
; z start address is: 0 (R0)
SUB	SP, SP, #20
STR	LR, [SP, #0]
; z end address is: 0 (R0)
; z start address is: 0 (R0)
;ann.h,349 :: 		float sum = 0.0;
; sum start address is: 16 (R4)
MOV	R1, #0
VMOV	S4, R1
;ann.h,351 :: 		for (i = 0; i < 3; i++) {
; i start address is: 24 (R6)
MOVS	R6, #0
SXTH	R6, R6
; sum end address is: 16 (R4)
; i end address is: 24 (R6)
; z end address is: 0 (R0)
MOV	R5, R0
L_softmax111:
; i start address is: 24 (R6)
; sum start address is: 16 (R4)
; z start address is: 20 (R5)
CMP	R6, #3
IT	GE
BGE	L_softmax112
;ann.h,352 :: 		exp_z[i] = exp(z[i]);
ADD	R1, SP, #4
LSLS	R2, R6, #2
ADDS	R1, R1, R2
STR	R1, [SP, #16]
ADDS	R1, R5, R2
VLDR	#1, S0, [R1, #0]
BL	_exp+0
LDR	R1, [SP, #16]
VSTR	#1, S0, [R1, #0]
;ann.h,353 :: 		sum += exp_z[i];
ADD	R2, SP, #4
LSLS	R1, R6, #2
ADDS	R1, R2, R1
VLDR	#1, S0, [R1, #0]
VADD.F32	S4, S4, S0
;ann.h,351 :: 		for (i = 0; i < 3; i++) {
ADDS	R6, R6, #1
SXTH	R6, R6
;ann.h,354 :: 		}
; i end address is: 24 (R6)
IT	AL
BAL	L_softmax111
L_softmax112:
;ann.h,356 :: 		for (i = 0; i < 3; i++) {
; i start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; z end address is: 20 (R5)
; sum end address is: 16 (R4)
; i end address is: 16 (R4)
VMOV.F32	S1, S4
MOV	R0, R5
L_softmax114:
; i start address is: 16 (R4)
; sum start address is: 4 (R1)
; z start address is: 0 (R0)
; sum start address is: 4 (R1)
; sum end address is: 4 (R1)
CMP	R4, #3
IT	GE
BGE	L_softmax115
; sum end address is: 4 (R1)
;ann.h,357 :: 		z[i] = exp_z[i] / (float)sum;
; sum start address is: 4 (R1)
LSLS	R3, R4, #2
ADDS	R2, R0, R3
ADD	R1, SP, #4
ADDS	R1, R1, R3
VLDR	#1, S0, [R1, #0]
VDIV.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,356 :: 		for (i = 0; i < 3; i++) {
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,358 :: 		}
; sum end address is: 4 (R1)
; i end address is: 16 (R4)
IT	AL
BAL	L_softmax114
L_softmax115:
;ann.h,359 :: 		return z;
; z end address is: 0 (R0)
;ann.h,360 :: 		}
L_end_softmax:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _softmax
_intohid1:
;ann.h,362 :: 		void intohid1(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,364 :: 		for (i = 0; i<32; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_intohid1117:
; i start address is: 20 (R5)
CMP	R5, #32
IT	GE
BGE	L_intohid1118
;ann.h,365 :: 		res[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,366 :: 		for (j = 0; j<7; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_intohid1120:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #7
IT	GE
BGE	L_intohid1121
;ann.h,367 :: 		res [i] += in[j]*weight1[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_in+0)
MOVT	R0, #hi_addr(_in+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #7
MOVW	R0, #lo_addr(_weight1+0)
MOVT	R0, #hi_addr(_weight1+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,366 :: 		for (j = 0; j<7; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,368 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_intohid1120
L_intohid1121:
;ann.h,369 :: 		res [i] += bias1[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias1+0)
MOVT	R0, #hi_addr(_bias1+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,370 :: 		hid1score[i] = relu(res[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid1score+0)
MOVT	R0, #hi_addr(_hid1score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res+0)
MOVT	R0, #hi_addr(_res+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_relu+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,364 :: 		for (i = 0; i<32; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,371 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_intohid1117
L_intohid1118:
;ann.h,372 :: 		}
L_end_intohid1:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _intohid1
_hid1tohid2:
;ann.h,374 :: 		void hid1tohid2(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,376 :: 		for (i = 0; i<16; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid1tohid2123:
; i start address is: 20 (R5)
CMP	R5, #16
IT	GE
BGE	L_hid1tohid2124
;ann.h,377 :: 		res2[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,378 :: 		for (j = 0; j<32; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid1tohid2126:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #32
IT	GE
BGE	L_hid1tohid2127
;ann.h,379 :: 		res2 [i] += hid1score[j]*weight2[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid1score+0)
MOVT	R0, #hi_addr(_hid1score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #6
MOVW	R0, #lo_addr(_weight2+0)
MOVT	R0, #hi_addr(_weight2+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,378 :: 		for (j = 0; j<32; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,380 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid1tohid2126
L_hid1tohid2127:
;ann.h,381 :: 		res2 [i] += bias2[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias2+0)
MOVT	R0, #hi_addr(_bias2+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,382 :: 		hid2score[i]= relu(res2[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid2score+0)
MOVT	R0, #hi_addr(_hid2score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res2+0)
MOVT	R0, #hi_addr(_res2+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_relu+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,376 :: 		for (i = 0; i<16; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,383 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid1tohid2123
L_hid1tohid2124:
;ann.h,387 :: 		}
L_end_hid1tohid2:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _hid1tohid2
_hid2tohid3:
;ann.h,389 :: 		void hid2tohid3(){
SUB	SP, SP, #8
STR	LR, [SP, #0]
;ann.h,391 :: 		for (i = 0; i<8; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid2tohid3129:
; i start address is: 20 (R5)
CMP	R5, #8
IT	GE
BGE	L_hid2tohid3130
;ann.h,392 :: 		res3[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,393 :: 		for (j = 0; j<16; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid2tohid3132:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #16
IT	GE
BGE	L_hid2tohid3133
;ann.h,394 :: 		res3 [i] += hid2score[j]*weight3[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid2score+0)
MOVT	R0, #hi_addr(_hid2score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
LSLS	R1, R4, #5
MOVW	R0, #lo_addr(_weight3+0)
MOVT	R0, #hi_addr(_weight3+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,393 :: 		for (j = 0; j<16; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,395 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid2tohid3132
L_hid2tohid3133:
;ann.h,396 :: 		res3 [i] += bias3[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias3+0)
MOVT	R0, #hi_addr(_bias3+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,397 :: 		hid3score[i]= relu(res3[i]);
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_hid3score+0)
MOVT	R0, #hi_addr(_hid3score+0)
ADDS	R0, R0, R1
STR	R0, [SP, #4]
MOVW	R0, #lo_addr(_res3+0)
MOVT	R0, #hi_addr(_res3+0)
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
BL	_relu+0
LDR	R0, [SP, #4]
VSTR	#1, S0, [R0, #0]
;ann.h,391 :: 		for (i = 0; i<8; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,398 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid2tohid3129
L_hid2tohid3130:
;ann.h,399 :: 		}
L_end_hid2tohid3:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _hid2tohid3
_hid3toout:
;ann.h,401 :: 		void hid3toout(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;ann.h,403 :: 		for (i = 0; i<3; i++){
; i start address is: 20 (R5)
MOVS	R5, #0
SXTH	R5, R5
; i end address is: 20 (R5)
L_hid3toout135:
; i start address is: 20 (R5)
CMP	R5, #3
IT	GE
BGE	L_hid3toout136
;ann.h,404 :: 		res4[i]=0;
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R1, R0, R1
MOV	R0, #0
VMOV	S0, R0
VSTR	#1, S0, [R1, #0]
;ann.h,405 :: 		for (j = 0; j<8; j++){
; j start address is: 16 (R4)
MOVS	R4, #0
SXTH	R4, R4
; j end address is: 16 (R4)
; i end address is: 20 (R5)
L_hid3toout138:
; j start address is: 16 (R4)
; i start address is: 20 (R5)
CMP	R4, #8
IT	GE
BGE	L_hid3toout139
;ann.h,406 :: 		res4 [i] += hid3score[j]*weight4[j][i];
LSLS	R3, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R2, R0, R3
LSLS	R1, R4, #2
MOVW	R0, #lo_addr(_hid3score+0)
MOVT	R0, #hi_addr(_hid3score+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
MOVS	R0, #12
MUL	R1, R0, R4
MOVW	R0, #lo_addr(_weight4+0)
MOVT	R0, #hi_addr(_weight4+0)
ADDS	R0, R0, R1
ADDS	R0, R0, R3
VLDR	#1, S0, [R0, #0]
VMUL.F32	S1, S1, S0
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,405 :: 		for (j = 0; j<8; j++){
ADDS	R4, R4, #1
SXTH	R4, R4
;ann.h,407 :: 		}
; j end address is: 16 (R4)
IT	AL
BAL	L_hid3toout138
L_hid3toout139:
;ann.h,408 :: 		res4 [i] += bias4[i];
LSLS	R1, R5, #2
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
ADDS	R2, R0, R1
MOVW	R0, #lo_addr(_bias4+0)
MOVT	R0, #hi_addr(_bias4+0)
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VLDR	#1, S0, [R2, #0]
VADD.F32	S0, S0, S1
VSTR	#1, S0, [R2, #0]
;ann.h,403 :: 		for (i = 0; i<3; i++){
ADDS	R5, R5, #1
SXTH	R5, R5
;ann.h,409 :: 		}
; i end address is: 20 (R5)
IT	AL
BAL	L_hid3toout135
L_hid3toout136:
;ann.h,410 :: 		hid4score = softmax(res4);
MOVW	R0, #lo_addr(_res4+0)
MOVT	R0, #hi_addr(_res4+0)
BL	_softmax+0
MOVW	R1, #lo_addr(_hid4score+0)
MOVT	R1, #hi_addr(_hid4score+0)
STR	R0, [R1, #0]
;ann.h,411 :: 		}
L_end_hid3toout:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _hid3toout
_predict:
;ann.h,413 :: 		void predict(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;ann.h,415 :: 		float max = -1.0;
; max start address is: 4 (R1)
VMOV.F32	S1, #-1
;ann.h,416 :: 		int maxindex = -1;
; maxindex start address is: 12 (R3)
MOVW	R3, #65535
SXTH	R3, R3
;ann.h,417 :: 		for (i = 0; i<3; i++){
; i start address is: 8 (R2)
MOVS	R2, #0
SXTH	R2, R2
; maxindex end address is: 12 (R3)
; max end address is: 4 (R1)
; i end address is: 8 (R2)
L_predict141:
; i start address is: 8 (R2)
; maxindex start address is: 12 (R3)
; max start address is: 4 (R1)
CMP	R2, #3
IT	GE
BGE	L_predict142
;ann.h,418 :: 		if (hid4score[i] > max){
LSLS	R1, R2, #2
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S0, [R0, #0]
VCMPE.F32	S0, S1
VMRS	#60, FPSCR
IT	LE
BLE	L__predict240
; maxindex end address is: 12 (R3)
; max end address is: 4 (R1)
;ann.h,419 :: 		max = hid4score[i];
LSLS	R1, R2, #2
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
; max start address is: 4 (R1)
;ann.h,420 :: 		maxindex = i;
; maxindex start address is: 12 (R3)
SXTH	R3, R2
; maxindex end address is: 12 (R3)
; max end address is: 4 (R1)
;ann.h,421 :: 		}
IT	AL
BAL	L_predict144
L__predict240:
;ann.h,418 :: 		if (hid4score[i] > max){
;ann.h,421 :: 		}
L_predict144:
;ann.h,417 :: 		for (i = 0; i<3; i++){
; maxindex start address is: 12 (R3)
; max start address is: 4 (R1)
ADDS	R2, R2, #1
SXTH	R2, R2
;ann.h,422 :: 		}
; max end address is: 4 (R1)
; i end address is: 8 (R2)
IT	AL
BAL	L_predict141
L_predict142:
;ann.h,423 :: 		if (maxindex == 0){
CMP	R3, #0
IT	NE
BNE	L_predict145
; maxindex end address is: 12 (R3)
;ann.h,424 :: 		TFT_Write_Text("Stres   Low", 285, 210);
MOVW	R0, #lo_addr(?lstr1_MyProject_TA_events_code+0)
MOVT	R0, #hi_addr(?lstr1_MyProject_TA_events_code+0)
MOVS	R2, #210
MOVW	R1, #285
BL	_TFT_Write_Text+0
;ann.h,425 :: 		} else if (maxindex == 1){
IT	AL
BAL	L_predict146
L_predict145:
; maxindex start address is: 12 (R3)
CMP	R3, #1
IT	NE
BNE	L_predict147
; maxindex end address is: 12 (R3)
;ann.h,426 :: 		TFT_Write_Text("Stres   Medium", 285, 210);
MOVW	R0, #lo_addr(?lstr2_MyProject_TA_events_code+0)
MOVT	R0, #hi_addr(?lstr2_MyProject_TA_events_code+0)
MOVS	R2, #210
MOVW	R1, #285
BL	_TFT_Write_Text+0
;ann.h,427 :: 		} else if (maxindex == 2){
IT	AL
BAL	L_predict148
L_predict147:
; maxindex start address is: 12 (R3)
CMP	R3, #2
IT	NE
BNE	L_predict149
; maxindex end address is: 12 (R3)
;ann.h,428 :: 		TFT_Write_Text("Stres   High", 285, 210);
MOVW	R0, #lo_addr(?lstr3_MyProject_TA_events_code+0)
MOVT	R0, #hi_addr(?lstr3_MyProject_TA_events_code+0)
MOVS	R2, #210
MOVW	R1, #285
BL	_TFT_Write_Text+0
;ann.h,429 :: 		}
L_predict149:
L_predict148:
L_predict146:
;ann.h,430 :: 		}
L_end_predict:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _predict
_InitTimer12:
;MyProject_TA_events_code.c,17 :: 		void InitTimer12(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,18 :: 		RCC_APB1ENR.TIM12EN = 1;
MOVW	R1, #lo_addr(RCC_APB1ENR+0)
MOVT	R1, #hi_addr(RCC_APB1ENR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #64
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,19 :: 		TIM12_CR1.CEN = 0;
MOVW	R1, #lo_addr(TIM12_CR1+0)
MOVT	R1, #hi_addr(TIM12_CR1+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,20 :: 		TIM12_PSC = 8;
MOVS	R1, #8
MOVW	R0, #lo_addr(TIM12_PSC+0)
MOVT	R0, #hi_addr(TIM12_PSC+0)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,21 :: 		TIM12_ARR = 46874;
MOVW	R1, #46874
MOVW	R0, #lo_addr(TIM12_ARR+0)
MOVT	R0, #hi_addr(TIM12_ARR+0)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,22 :: 		NVIC_IntEnable(IVT_INT_TIM8_BRK_TIM12);
MOVW	R0, #59
BL	_NVIC_IntEnable+0
;MyProject_TA_events_code.c,23 :: 		TIM12_DIER.UIE = 1;
MOVW	R1, #lo_addr(TIM12_DIER+0)
MOVT	R1, #hi_addr(TIM12_DIER+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,24 :: 		TIM12_CR1.CEN = 1;
MOVW	R1, #lo_addr(TIM12_CR1+0)
MOVT	R1, #hi_addr(TIM12_CR1+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,25 :: 		}
L_end_InitTimer12:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _InitTimer12
_InitTimer14:
;MyProject_TA_events_code.c,37 :: 		void InitTimer14(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,38 :: 		RCC_APB1ENR.TIM14EN = 1;
MOVW	R1, #lo_addr(RCC_APB1ENR+0)
MOVT	R1, #hi_addr(RCC_APB1ENR+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #256
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,39 :: 		TIM14_CR1.CEN = 0;
MOVW	R1, #lo_addr(TIM14_CR1+0)
MOVT	R1, #hi_addr(TIM14_CR1+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,40 :: 		TIM14_PSC = 14;
MOVS	R1, #14
MOVW	R0, #lo_addr(TIM14_PSC+0)
MOVT	R0, #hi_addr(TIM14_PSC+0)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,41 :: 		TIM14_ARR = 57599;
MOVW	R1, #57599
MOVW	R0, #lo_addr(TIM14_ARR+0)
MOVT	R0, #hi_addr(TIM14_ARR+0)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,42 :: 		NVIC_IntEnable(IVT_INT_TIM8_TRG_COM_TIM14);
MOVW	R0, #61
BL	_NVIC_IntEnable+0
;MyProject_TA_events_code.c,43 :: 		TIM14_DIER.UIE = 1;
MOVW	R1, #lo_addr(TIM14_DIER+0)
MOVT	R1, #hi_addr(TIM14_DIER+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,44 :: 		TIM14_CR1.CEN = 1;
MOVW	R1, #lo_addr(TIM14_CR1+0)
MOVT	R1, #hi_addr(TIM14_CR1+0)
LDR	R0, [R1, #0]
ORR	R0, R0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,45 :: 		}
L_end_InitTimer14:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _InitTimer14
_bingkai:
;MyProject_TA_events_code.c,47 :: 		void bingkai(int X1, int Y1, int X2, int Y2, float dat)
; Y2 start address is: 12 (R3)
; X2 start address is: 8 (R2)
SUB	SP, SP, #16
STR	LR, [SP, #0]
STRH	R0, [SP, #4]
STRH	R1, [SP, #8]
SXTH	R7, R2
SXTH	R8, R3
VSTR	#1, S0, [SP, #12]
; Y2 end address is: 12 (R3)
; X2 end address is: 8 (R2)
; X2 start address is: 28 (R7)
; Y2 start address is: 32 (R8)
;MyProject_TA_events_code.c,49 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,50 :: 		TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R5, #65535
MOVW	R4, #65535
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #0
PUSH	(R5)
PUSH	(R4)
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_events_code.c,51 :: 		TFT_Rectangle(X1, Y1, X2, Y2);
SXTH	R3, R8
; Y2 end address is: 32 (R8)
SXTH	R2, R7
; X2 end address is: 28 (R7)
LDRSH	R1, [SP, #8]
LDRSH	R0, [SP, #4]
BL	_TFT_Rectangle+0
;MyProject_TA_events_code.c,52 :: 		TFT_Set_Font(Times_New_Roman15x19_Regular, CL_BLACK, FO_HORIZONTAL);
MOVW	R4, #lo_addr(_Times_New_Roman15x19_Regular+0)
MOVT	R4, #hi_addr(_Times_New_Roman15x19_Regular+0)
MOVS	R2, #0
MOVW	R1, #0
MOV	R0, R4
BL	_TFT_Set_Font+0
;MyProject_TA_events_code.c,53 :: 		FloatToStr(dat, text);
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
VLDR	#1, S0, [SP, #12]
BL	_FloatToStr+0
;MyProject_TA_events_code.c,54 :: 		TFT_Write_Text(text, X1, Y1);
LDRSH	R2, [SP, #8]
LDRSH	R1, [SP, #4]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_TFT_Write_Text+0
;MyProject_TA_events_code.c,56 :: 		}
L_end_bingkai:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _bingkai
_bingkai_blank:
;MyProject_TA_events_code.c,58 :: 		void bingkai_blank(){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,59 :: 		x_bingkai = 0;
MOVS	R1, #0
SXTH	R1, R1
MOVW	R0, #lo_addr(_x_bingkai+0)
MOVT	R0, #hi_addr(_x_bingkai+0)
STRH	R1, [R0, #0]
;MyProject_TA_events_code.c,60 :: 		y_bingkai = 50;
MOVS	R1, #50
SXTH	R1, R1
MOVW	R0, #lo_addr(_y_bingkai+0)
MOVT	R0, #hi_addr(_y_bingkai+0)
STRH	R1, [R0, #0]
;MyProject_TA_events_code.c,61 :: 		TFT_Set_Pen(CL_BLACK, 1);
MOVS	R1, #1
MOVW	R0, #0
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,62 :: 		TFT_Set_Brush(1, 0, 0, TOP_TO_BOTTOM, CL_BLACK, CL_BLACK);
MOVW	R1, #0
MOVW	R0, #0
PUSH	(R1)
PUSH	(R0)
MOVS	R3, #0
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #1
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_events_code.c,63 :: 		TFT_Rectangle(x_bingkai, y_bingkai, x_bingkai + 800, y_bingkai + 350);
MOVW	R1, #lo_addr(_y_bingkai+0)
MOVT	R1, #hi_addr(_y_bingkai+0)
LDRSH	R0, [R1, #0]
ADD	R4, R0, #350
MOVW	R3, #lo_addr(_x_bingkai+0)
MOVT	R3, #hi_addr(_x_bingkai+0)
LDRSH	R0, [R3, #0]
ADD	R2, R0, #800
MOV	R0, R1
LDRSH	R1, [R0, #0]
MOV	R0, R3
LDRSH	R0, [R0, #0]
SXTH	R3, R4
BL	_TFT_Rectangle+0
;MyProject_TA_events_code.c,64 :: 		}
L_end_bingkai_blank:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _bingkai_blank
_systemInit:
;MyProject_TA_events_code.c,66 :: 		void systemInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,68 :: 		UART3_Init_Advanced(115200, _UART_8_BIT_DATA, _UART_NOPARITY, _UART_ONE_STOPBIT, &_GPIO_MODULE_UART3_PD89);
MOVW	R0, #lo_addr(__GPIO_MODULE_UART3_PD89+0)
MOVT	R0, #hi_addr(__GPIO_MODULE_UART3_PD89+0)
PUSH	(R0)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
MOV	R0, #115200
BL	_UART3_Init_Advanced+0
ADD	SP, SP, #4
;MyProject_TA_events_code.c,70 :: 		mikrobus_gpioInit( _MIKROBUS1,_MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;MyProject_TA_events_code.c,71 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit150:
SUBS	R7, R7, #1
BNE	L_systemInit150
NOP
NOP
NOP
;MyProject_TA_events_code.c,72 :: 		ecg_gpioDriverInit( (T_ECG_P)&_MIKROBUS1_GPIO );Delay_ms(200);
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_ecg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit152:
SUBS	R7, R7, #1
BNE	L_systemInit152
NOP
NOP
NOP
;MyProject_TA_events_code.c,74 :: 		mikrobus_gpioInit( _MIKROBUS2,_MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #1
BL	_mikrobus_gpioInit+0
;MyProject_TA_events_code.c,75 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit154:
SUBS	R7, R7, #1
BNE	L_systemInit154
NOP
NOP
NOP
;MyProject_TA_events_code.c,76 :: 		eeg_gpioDriverInit( (T_EEG_P)&_MIKROBUS2_GPIO );Delay_ms(200);
MOVW	R0, #lo_addr(__MIKROBUS2_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS2_GPIO+0)
BL	_eeg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit156:
SUBS	R7, R7, #1
BNE	L_systemInit156
NOP
NOP
NOP
;MyProject_TA_events_code.c,78 :: 		mikrobus_gpioInit( _MIKROBUS4,_MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #3
BL	_mikrobus_gpioInit+0
;MyProject_TA_events_code.c,79 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit158:
SUBS	R7, R7, #1
BNE	L_systemInit158
NOP
NOP
NOP
;MyProject_TA_events_code.c,80 :: 		eeg_gpioDriverInit( (T_EEG_P)&_MIKROBUS4_GPIO );Delay_ms(200);
MOVW	R0, #lo_addr(__MIKROBUS4_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS4_GPIO+0)
BL	_eeg_gpioDriverInit+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_systemInit160:
SUBS	R7, R7, #1
BNE	L_systemInit160
NOP
NOP
NOP
;MyProject_TA_events_code.c,81 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;MyProject_TA_events_code.c,83 :: 		void applicationInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,85 :: 		ADC1_Init(); Delay_ms(200);
BL	_ADC1_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit162:
SUBS	R7, R7, #1
BNE	L_applicationInit162
NOP
NOP
NOP
;MyProject_TA_events_code.c,86 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_3 );Delay_ms(200);
MOVW	R0, #8
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit164:
SUBS	R7, R7, #1
BNE	L_applicationInit164
NOP
NOP
NOP
;MyProject_TA_events_code.c,87 :: 		InitTimer14(); interrFlag = 0; interrCnt = 0; Delay_ms(200);
BL	_InitTimer14+0
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrFlag+0)
MOVT	R0, #hi_addr(_interrFlag+0)
STRB	R1, [R0, #0]
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrCnt+0)
MOVT	R0, #hi_addr(_interrCnt+0)
STR	R1, [R0, #0]
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit166:
SUBS	R7, R7, #1
BNE	L_applicationInit166
NOP
NOP
NOP
;MyProject_TA_events_code.c,88 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;MyProject_TA_events_code.c,89 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit168:
SUBS	R7, R7, #1
BNE	L_applicationInit168
NOP
NOP
NOP
;MyProject_TA_events_code.c,91 :: 		ADC2_Init(); Delay_ms(200);
BL	_ADC2_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit170:
SUBS	R7, R7, #1
BNE	L_applicationInit170
NOP
NOP
NOP
;MyProject_TA_events_code.c,92 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_10 );Delay_ms(200);//0?
MOVW	R0, #1024
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit172:
SUBS	R7, R7, #1
BNE	L_applicationInit172
NOP
NOP
NOP
;MyProject_TA_events_code.c,93 :: 		InitTimer12(); interrFlag1 = 0; interrCnt1 = 0; Delay_ms(200);
BL	_InitTimer12+0
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrFlag1+0)
MOVT	R0, #hi_addr(_interrFlag1+0)
STRB	R1, [R0, #0]
MOVS	R1, #0
MOVW	R0, #lo_addr(_interrCnt1+0)
MOVT	R0, #hi_addr(_interrCnt1+0)
STR	R1, [R0, #0]
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit174:
SUBS	R7, R7, #1
BNE	L_applicationInit174
NOP
NOP
NOP
;MyProject_TA_events_code.c,95 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;MyProject_TA_events_code.c,96 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit176:
SUBS	R7, R7, #1
BNE	L_applicationInit176
NOP
NOP
NOP
;MyProject_TA_events_code.c,98 :: 		ADC3_Init(); Delay_ms(200);
BL	_ADC3_Init+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit178:
SUBS	R7, R7, #1
BNE	L_applicationInit178
NOP
NOP
NOP
;MyProject_TA_events_code.c,99 :: 		ADC_Set_Input_Channel( _ADC_CHANNEL_13 );Delay_ms(200);//13?
MOVW	R0, #8192
BL	_ADC_Set_Input_Channel+0
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit180:
SUBS	R7, R7, #1
BNE	L_applicationInit180
NOP
NOP
NOP
;MyProject_TA_events_code.c,101 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;MyProject_TA_events_code.c,102 :: 		Delay_ms(200);
MOVW	R7, #11770
MOVT	R7, #659
NOP
NOP
L_applicationInit182:
SUBS	R7, R7, #1
BNE	L_applicationInit182
NOP
NOP
NOP
;MyProject_TA_events_code.c,103 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTaskECG:
;MyProject_TA_events_code.c,105 :: 		void applicationTaskECG() {
SUB	SP, SP, #24
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,106 :: 		int i, i_qrs, j, k, n = 0, ii = 0, stop;
;MyProject_TA_events_code.c,107 :: 		int x = 0;
;MyProject_TA_events_code.c,109 :: 		ADC1_value = ADC1_Get_Sample(3);
MOVS	R0, #3
BL	_ADC1_Get_Sample+0
VMOV	S1, R0
VCVT.F32	#0, S1, S1
MOVW	R0, #lo_addr(_ADC1_value+0)
MOVT	R0, #hi_addr(_ADC1_value+0)
VSTR	#1, S1, [R0, #0]
;MyProject_TA_events_code.c,110 :: 		ecg_value = (float) ADC1_value * (3.3/(4095)) * 100;
MOVW	R0, #16487
MOVT	R0, #14931
VMOV	S0, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
VMUL.F32	S0, S1, S0
;MyProject_TA_events_code.c,114 :: 		stop = ecg_process(ecg_ptr, ecg_value);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R0, [R0, #0]
VMOV.F32	S0, S0
BL	_ecg_process+0
;MyProject_TA_events_code.c,116 :: 		i = (ecg_ptr->length - 1) % N_DISPLAY_ECG;
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R0, [R0, #0]
ADD	R0, R0, #1600
LDRSH	R0, [R0, #0]
SUBS	R1, R0, #1
SXTH	R1, R1
MOVW	R0, #400
SXTH	R0, R0
SDIV	R3, R1, R0
MLS	R3, R0, R3, R1
SXTH	R3, R3
; i start address is: 16 (R4)
SXTH	R4, R3
;MyProject_TA_events_code.c,117 :: 		i_qrs = ((ecg_ptr->length - 1) - 7) % N_DISPLAY_ECG; //Delay Scale 3
SUBS	R2, R1, #7
SXTH	R2, R2
MOVW	R1, #400
SXTH	R1, R1
SDIV	R0, R2, R1
MLS	R0, R1, R0, R2
; i_qrs start address is: 20 (R5)
SXTH	R5, R0
;MyProject_TA_events_code.c,120 :: 		if (i == 0) bingkai_blank();
CMP	R3, #0
IT	NE
BNE	L_applicationTaskECG184
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
BL	_bingkai_blank+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
L_applicationTaskECG184:
;MyProject_TA_events_code.c,126 :: 		TFT_Set_Pen(CL_RED, 2);
MOVS	R1, #2
MOVW	R0, #63488
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,127 :: 		TFT_Line((i-1)*2, 100 - 0.17*(get_rotating_index(ecg_ptr->signal, N_DISPLAY_ECG, i-1)), (i*2), 100 - 0.17*(ecg_ptr->signal[i]));
LSLS	R1, R4, #2
MOVW	R2, #lo_addr(_ecg_ptr+0)
MOVT	R2, #hi_addr(_ecg_ptr+0)
LDR	R0, [R2, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
MOVW	R0, #5243
MOVT	R0, #15918
VMOV	S0, R0
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R0, S0
SXTH	R0, R0
STRH	R0, [SP, #20]
LSLS	R0, R4, #1
STRH	R0, [SP, #16]
SUBS	R1, R4, #1
MOV	R0, R2
LDR	R0, [R0, #0]
SXTH	R2, R1
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R0, #5243
MOVT	R0, #15918
VMOV	S1, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17096
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
SXTH	R3, R3
SUBS	R0, R4, #1
SXTH	R0, R0
LSLS	R2, R0, #1
LDRSH	R1, [SP, #20]
LDRSH	R0, [SP, #16]
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
STRH	R2, [SP, #8]
STRH	R3, [SP, #12]
SXTH	R3, R1
LDRSH	R1, [SP, #12]
SXTH	R2, R0
LDRSH	R0, [SP, #8]
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,129 :: 		if (i >= 7){
CMP	R4, #7
IT	LT
BLT	L_applicationTaskECG185
;MyProject_TA_events_code.c,130 :: 		TFT_Set_Pen(CL_LIME, 2);
MOVS	R1, #2
MOVW	R0, #2016
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,131 :: 		TFT_Line((i_qrs-1)*2, 155 - 35*(get_rotating_index(ecg_ptr->qrs_result, N_DISPLAY_ECG, i-1)), (i_qrs*2), 155 - 35*(get_rotating_index(ecg_ptr->qrs_result, N_DISPLAY_ECG, i)));
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #6408
ADDS	R0, R1, R0
SXTH	R2, R4
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R0, #0
MOVT	R0, #16908
VMOV	S1, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17179
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R0, S0
SXTH	R0, R0
STRH	R0, [SP, #20]
LSLS	R0, R5, #1
STRH	R0, [SP, #16]
SUBS	R2, R4, #1
; i end address is: 16 (R4)
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #6408
ADDS	R0, R1, R0
MOVW	R1, #400
SXTH	R1, R1
BL	_get_rotating_index+0
MOVW	R0, #0
MOVT	R0, #16908
VMOV	S1, R0
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17179
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R3, S0
SXTH	R3, R3
SUBS	R0, R5, #1
SXTH	R0, R0
; i_qrs end address is: 20 (R5)
LSLS	R2, R0, #1
LDRSH	R1, [SP, #20]
LDRSH	R0, [SP, #16]
STRH	R2, [SP, #4]
STRH	R3, [SP, #8]
SXTH	R3, R1
LDRSH	R1, [SP, #8]
SXTH	R2, R0
LDRSH	R0, [SP, #4]
BL	_TFT_Line+0
;MyProject_TA_events_code.c,132 :: 		}
L_applicationTaskECG185:
;MyProject_TA_events_code.c,133 :: 		}
L_end_applicationTaskECG:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _applicationTaskECG
_applicationTaskEEG:
;MyProject_TA_events_code.c,135 :: 		void applicationTaskEEG(){
SUB	SP, SP, #12
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,140 :: 		ADC2_value = ADC2_Get_Sample(10);
MOVS	R0, #10
BL	_ADC2_Get_Sample+0
VMOV	S1, R0
VCVT.F32	#0, S1, S1
MOVW	R0, #lo_addr(_ADC2_value+0)
MOVT	R0, #hi_addr(_ADC2_value+0)
VSTR	#1, S1, [R0, #0]
;MyProject_TA_events_code.c,141 :: 		eegfp1_value = (float) ADC2_value * (3.3/(4095));
MOVW	R0, #16487
MOVT	R0, #14931
VMOV	S0, R0
VMUL.F32	S0, S1, S0
;MyProject_TA_events_code.c,142 :: 		stop = eeg_process(eeg_ptr, eegfp1_value);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R0, [R0, #0]
VMOV.F32	S0, S0
BL	_eeg_process+0
;MyProject_TA_events_code.c,148 :: 		i = eeg_ptr->length_eeg - 1;
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R0, [R0, #0]
ADD	R0, R0, #16000
LDRSH	R0, [R0, #0]
SUBS	R2, R0, #1
SXTH	R2, R2
; i start address is: 16 (R4)
SXTH	R4, R2
;MyProject_TA_events_code.c,149 :: 		i_plot = (eeg_ptr->length_eeg -1) % N_DISPLAY_EEG;
MOVW	R1, #800
SXTH	R1, R1
SDIV	R0, R2, R1
MLS	R0, R1, R0, R2
SXTH	R0, R0
; i_plot start address is: 20 (R5)
SXTH	R5, R0
;MyProject_TA_events_code.c,154 :: 		if ((i_plot)  == 0) bingkai_blank();
CMP	R0, #0
IT	NE
BNE	L_applicationTaskEEG186
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
BL	_bingkai_blank+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
L_applicationTaskEEG186:
;MyProject_TA_events_code.c,163 :: 		TFT_Set_Pen(CL_FUCHSIA, 2);
MOVS	R1, #2
MOVW	R0, #63519
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,164 :: 		TFT_Line((i_plot - 1), 190 - 10*(eeg_ptr->eeg_signal[i-1]), i_plot , 190 - 10*((eeg_ptr->eeg_signal[i])));
LSLS	R1, R4, #2
MOVW	R3, #lo_addr(_eeg_ptr+0)
MOVT	R3, #hi_addr(_eeg_ptr+0)
LDR	R0, [R3, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17214
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R0, R4, #1
SXTH	R0, R0
LSLS	R1, R0, #2
MOV	R0, R3
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17214
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R5, #1
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
SXTH	R3, R2
SXTH	R2, R5
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,166 :: 		if (i_plot >= 1) {
CMP	R5, #1
IT	LT
BLT	L_applicationTaskEEG187
;MyProject_TA_events_code.c,168 :: 		TFT_Set_Pen(CL_TEAL, 2);
MOVS	R1, #2
MOVW	R0, #1040
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,169 :: 		TFT_Line((i_plot - 1), 230 - 10*(get_rotating_index( eeg_ptr->lpf_eeg, N_DISPLAY_EEG, i-1)), i_plot , 230 - 10*(get_rotating_index( eeg_ptr->lpf_eeg, N_DISPLAY_EEG, i)));
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #16008
ADDS	R0, R1, R0
SXTH	R2, R4
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
VMOV.F32	S1, #10
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17254
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R0, S0
SXTH	R0, R0
STRH	R0, [SP, #8]
SUBS	R2, R4, #1
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #16008
ADDS	R0, R1, R0
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
VMOV.F32	S1, #10
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17254
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R1, R5, #1
LDRSH	R0, [SP, #8]
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
SXTH	R3, R0
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R5
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,171 :: 		TFT_Set_Pen(CL_WHITE, 2);
MOVS	R1, #2
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,172 :: 		TFT_Line((i_plot - 1), 270 - 10*(get_rotating_index( eeg_ptr->hpf_eeg, N_DISPLAY_EEG, i-1)), i_plot , 270 - 10*(get_rotating_index( eeg_ptr->hpf_eeg, N_DISPLAY_EEG, i)));
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #32008
ADDS	R0, R1, R0
SXTH	R2, R4
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
VMOV.F32	S1, #10
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17287
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R0, S0
SXTH	R0, R0
STRH	R0, [SP, #8]
SUBS	R2, R4, #1
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #32008
ADDS	R0, R1, R0
MOVW	R1, #800
SXTH	R1, R1
BL	_get_rotating_index+0
VMOV.F32	S1, #10
VMUL.F32	S1, S1, S0
MOVW	R0, #0
MOVT	R0, #17287
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R1, R5, #1
LDRSH	R0, [SP, #8]
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
SXTH	R3, R0
SXTH	R0, R1
SXTH	R1, R2
SXTH	R2, R5
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,173 :: 		}
L_applicationTaskEEG187:
;MyProject_TA_events_code.c,175 :: 		if (i_plot >= 1) {
CMP	R5, #1
IT	LT
BLT	L_applicationTaskEEG188
;MyProject_TA_events_code.c,176 :: 		TFT_Set_Pen(CL_BLUE, 2);
MOVS	R1, #2
MOVW	R0, #31
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,177 :: 		TFT_Line((i_plot - 1), 310 - 10*(eeg_ptr1->eeg_signal[i-1]), i_plot, 310 - 10*(eeg_ptr1->eeg_signal[i]));
LSLS	R1, R4, #2
MOVW	R3, #lo_addr(_eeg_ptr1+0)
MOVT	R3, #hi_addr(_eeg_ptr1+0)
LDR	R0, [R3, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17307
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R0, R4, #1
SXTH	R0, R0
LSLS	R1, R0, #2
MOV	R0, R3
LDR	R0, [R0, #0]
ADDS	R0, R0, R1
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17307
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R5, #1
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
SXTH	R3, R2
SXTH	R2, R5
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,179 :: 		TFT_Set_Pen(CL_SILVER, 2);
MOVS	R1, #2
MOVW	R0, #50712
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,180 :: 		TFT_Line((i_plot - 1), 350 - 10*(eeg_ptr1->lpf_eeg[i-1]), i_plot, 350 - 10*(eeg_ptr1->lpf_eeg[i]));
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #16008
ADDS	R3, R1, R0
LSLS	R0, R4, #2
ADDS	R0, R3, R0
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17327
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R0, R4, #1
SXTH	R0, R0
LSLS	R0, R0, #2
ADDS	R0, R3, R0
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17327
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R5, #1
STRH	R5, [SP, #4]
STRH	R4, [SP, #6]
SXTH	R3, R2
SXTH	R2, R5
BL	_TFT_Line+0
LDRSH	R4, [SP, #6]
LDRSH	R5, [SP, #4]
;MyProject_TA_events_code.c,182 :: 		TFT_Set_Pen(CL_YELLOW, 2);
MOVS	R1, #2
MOVW	R0, #65504
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,183 :: 		TFT_Line((i_plot - 1), 390 - 10*(eeg_ptr1->hpf_eeg[i-1]), i_plot, 390 - 10*(eeg_ptr1->hpf_eeg[i]));
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #32008
ADDS	R3, R1, R0
LSLS	R0, R4, #2
ADDS	R0, R3, R0
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17347
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R2, S0
SXTH	R2, R2
SUBS	R0, R4, #1
SXTH	R0, R0
; i end address is: 16 (R4)
LSLS	R0, R0, #2
ADDS	R0, R3, R0
VLDR	#1, S1, [R0, #0]
VMOV.F32	S0, #10
VMUL.F32	S1, S0, S1
MOVW	R0, #0
MOVT	R0, #17347
VMOV	S0, R0
VSUB.F32	S0, S0, S1
VCVT	#1, .F32, S0, S0
VMOV	R1, S0
SXTH	R1, R1
SUBS	R0, R5, #1
SXTH	R3, R2
SXTH	R2, R5
; i_plot end address is: 20 (R5)
BL	_TFT_Line+0
;MyProject_TA_events_code.c,184 :: 		}
L_applicationTaskEEG188:
;MyProject_TA_events_code.c,185 :: 		}
L_end_applicationTaskEEG:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _applicationTaskEEG
_Timer12_interrupt:
;MyProject_TA_events_code.c,197 :: 		void Timer12_interrupt() iv IVT_INT_TIM8_BRK_TIM12 {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,198 :: 		TIM12_SR.UIF = 0;
MOVW	R1, #lo_addr(TIM12_SR+0)
MOVT	R1, #hi_addr(TIM12_SR+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,200 :: 		Check_TP();
BL	_Check_TP+0
;MyProject_TA_events_code.c,201 :: 		if (buttonFlag1){
MOVW	R0, #lo_addr(_buttonFlag1+0)
MOVT	R0, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R0, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
CMP	R0, #0
IT	EQ
BEQ	L_Timer12_interrupt189
;MyProject_TA_events_code.c,202 :: 		applicationTaskEEG();
BL	_applicationTaskEEG+0
;MyProject_TA_events_code.c,203 :: 		}
L_Timer12_interrupt189:
;MyProject_TA_events_code.c,204 :: 		}
L_end_Timer12_interrupt:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Timer12_interrupt
_Timer14_interrupt:
;MyProject_TA_events_code.c,206 :: 		void Timer14_interrupt() iv IVT_INT_TIM8_TRG_COM_TIM14 {
;MyProject_TA_events_code.c,207 :: 		TIM14_SR.UIF = 0;
MOVW	R1, #lo_addr(TIM14_SR+0)
MOVT	R1, #hi_addr(TIM14_SR+0)
LDR	R0, [R1, #0]
BFC	R0, #0, #1
STR	R0, [R1, #0]
;MyProject_TA_events_code.c,210 :: 		if (buttonFlag1){
MOVW	R0, #lo_addr(_buttonFlag1+0)
MOVT	R0, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R0, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
CMP	R0, #0
IT	EQ
BEQ	L_Timer14_interrupt190
;MyProject_TA_events_code.c,212 :: 		}
L_Timer14_interrupt190:
;MyProject_TA_events_code.c,213 :: 		}
L_end_Timer14_interrupt:
BX	LR
; end of _Timer14_interrupt
_ButtonRound5OnClick:
;MyProject_TA_events_code.c,219 :: 		void ButtonRound5OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,220 :: 		DrawScreen(&Screen3);
MOVW	R0, #lo_addr(_Screen3+0)
MOVT	R0, #hi_addr(_Screen3+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,233 :: 		}
L_end_ButtonRound5OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound5OnClick
_ButtonRound2OnClick:
;MyProject_TA_events_code.c,235 :: 		void ButtonRound2OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,236 :: 		DrawScreen(&Screen4);
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,237 :: 		}
L_end_ButtonRound2OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound2OnClick
_ButtonRound9OnClick:
;MyProject_TA_events_code.c,239 :: 		void ButtonRound9OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,240 :: 		DrawScreen(&Screen3);
MOVW	R0, #lo_addr(_Screen3+0)
MOVT	R0, #hi_addr(_Screen3+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,242 :: 		ecg_time_domain_calculation(ecg_ptr);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R0, [R0, #0]
BL	_ecg_time_domain_calculation+0
;MyProject_TA_events_code.c,243 :: 		ecg_non_linear_calculation(ecg_ptr);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R0, [R0, #0]
BL	_ecg_non_linear_calculation+0
;MyProject_TA_events_code.c,248 :: 		eeg_frequency_domain_calculation(eeg_ptr);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R0, [R0, #0]
BL	_eeg_frequency_domain_calculation+0
;MyProject_TA_events_code.c,249 :: 		eeg_mean_power_freq(eeg_ptr);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R0, [R0, #0]
BL	_eeg_mean_power_freq+0
;MyProject_TA_events_code.c,253 :: 		eeg_frequency_domain_calculation(eeg_ptr1);
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R0, [R0, #0]
BL	_eeg_frequency_domain_calculation+0
;MyProject_TA_events_code.c,254 :: 		eeg_mean_power_freq(eeg_ptr1);
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R0, [R0, #0]
BL	_eeg_mean_power_freq+0
;MyProject_TA_events_code.c,258 :: 		bingkai(110, 110, 210, 160, ecg_ptr->rmssd);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #31220
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVS	R2, #210
SXTH	R2, R2
MOVS	R1, #110
SXTH	R1, R1
MOVS	R0, #110
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,262 :: 		bingkai(85, 255, 185, 370, ecg_ptr->sd1);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #31224
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #370
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVS	R1, #255
SXTH	R1, R1
MOVS	R0, #85
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,263 :: 		bingkai(85, 280, 185, 390, ecg_ptr->sd2);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #31228
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #390
SXTH	R3, R3
MOVS	R2, #185
SXTH	R2, R2
MOVW	R1, #280
SXTH	R1, R1
MOVS	R0, #85
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,268 :: 		bingkai(500, 110, 600, 160, eeg_ptr->lapf_eeg);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #48040
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #160
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #110
SXTH	R1, R1
MOVW	R0, #500
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,269 :: 		bingkai(475, 135, 575, 180, eeg_ptr->mpf_eeg);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVS	R3, #180
SXTH	R3, R3
MOVW	R2, #575
SXTH	R2, R2
MOVS	R1, #135
SXTH	R1, R1
MOVW	R0, #475
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,271 :: 		bingkai(500, 255, 600, 305, eeg_ptr1->lapf_eeg);
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48040
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #305
SXTH	R3, R3
MOVW	R2, #600
SXTH	R2, R2
MOVS	R1, #255
SXTH	R1, R1
MOVW	R0, #500
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,272 :: 		bingkai(477, 280, 575, 320, eeg_ptr1->mpf_eeg);
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S0, [R0, #0]
MOVW	R3, #320
SXTH	R3, R3
MOVW	R2, #575
SXTH	R2, R2
MOVW	R1, #280
SXTH	R1, R1
MOVW	R0, #477
SXTH	R0, R0
BL	_bingkai+0
;MyProject_TA_events_code.c,275 :: 		}
L_end_ButtonRound9OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound9OnClick
_ButtonRound6OnClick:
;MyProject_TA_events_code.c,276 :: 		void ButtonRound6OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,277 :: 		DrawScreen(&Screen4);
MOVW	R0, #lo_addr(_Screen4+0)
MOVT	R0, #hi_addr(_Screen4+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,278 :: 		}
L_end_ButtonRound6OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound6OnClick
_ButtonRound7OnClick:
;MyProject_TA_events_code.c,280 :: 		void ButtonRound7OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,281 :: 		DrawScreen(&Screen1);
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,282 :: 		}
L_end_ButtonRound7OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound7OnClick
_ButtonRound8OnClick:
;MyProject_TA_events_code.c,284 :: 		void ButtonRound8OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,285 :: 		buttonFlag1 = ~buttonFlag1;
MOVW	R2, #lo_addr(_buttonFlag1+0)
MOVT	R2, #hi_addr(_buttonFlag1+0)
LDRB	R0, [R2, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
EOR	R1, R0, #1
LDRB	R0, [R2, #0]
BFI	R0, R1, BitPos(_buttonFlag1+0), #1
STRB	R0, [R2, #0]
;MyProject_TA_events_code.c,286 :: 		if (!buttonFlag1) {
MOV	R0, R2
LDRB	R0, [R0, #0]
UBFX	R0, R0, BitPos(_buttonFlag1+0), #1
CMP	R0, #0
IT	NE
BNE	L_ButtonRound8OnClick191
;MyProject_TA_events_code.c,287 :: 		ButtonRound8.Caption = "STOP";
MOVW	R1, #lo_addr(?lstr4_MyProject_TA_events_code+0)
MOVT	R1, #hi_addr(?lstr4_MyProject_TA_events_code+0)
MOVW	R0, #lo_addr(_ButtonRound8+24)
MOVT	R0, #hi_addr(_ButtonRound8+24)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,288 :: 		ButtonRound8.Color = CL_RED;
MOVW	R1, #63488
MOVW	R0, #lo_addr(_ButtonRound8+46)
MOVT	R0, #hi_addr(_ButtonRound8+46)
STRH	R1, [R0, #0]
;MyProject_TA_events_code.c,289 :: 		} else {
IT	AL
BAL	L_ButtonRound8OnClick192
L_ButtonRound8OnClick191:
;MyProject_TA_events_code.c,290 :: 		ecg_init(ecg_ptr, 125.0, -500.0, -500.0, 100.0);
MOVW	R0, #lo_addr(_ecg_ptr+0)
MOVT	R0, #hi_addr(_ecg_ptr+0)
LDR	R4, [R0, #0]
MOVW	R3, #0
MOVT	R3, #17096
MOVW	R2, #0
MOVT	R2, #50170
MOVW	R1, #0
MOVT	R1, #50170
MOVW	R0, #0
MOVT	R0, #17146
VMOV	S3, R3
VMOV	S2, R2
VMOV	S1, R1
VMOV	S0, R0
MOV	R0, R4
BL	_ecg_init+0
;MyProject_TA_events_code.c,291 :: 		eeg_init(eeg_ptr, 512.0);
MOVW	R0, #lo_addr(_eeg_ptr+0)
MOVT	R0, #hi_addr(_eeg_ptr+0)
LDR	R1, [R0, #0]
MOV	R0, #1140850688
VMOV	S0, R0
MOV	R0, R1
BL	_eeg_init+0
;MyProject_TA_events_code.c,292 :: 		eeg_init(eeg_ptr1, 512.0);
MOVW	R0, #lo_addr(_eeg_ptr1+0)
MOVT	R0, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R0, #0]
MOV	R0, #1140850688
VMOV	S0, R0
MOV	R0, R1
BL	_eeg_init+0
;MyProject_TA_events_code.c,293 :: 		ButtonRound8.Caption = "RUN";
MOVW	R1, #lo_addr(?lstr5_MyProject_TA_events_code+0)
MOVT	R1, #hi_addr(?lstr5_MyProject_TA_events_code+0)
MOVW	R0, #lo_addr(_ButtonRound8+24)
MOVT	R0, #hi_addr(_ButtonRound8+24)
STR	R1, [R0, #0]
;MyProject_TA_events_code.c,294 :: 		ButtonRound8.Color = CL_LIME;
MOVW	R1, #2016
MOVW	R0, #lo_addr(_ButtonRound8+46)
MOVT	R0, #hi_addr(_ButtonRound8+46)
STRH	R1, [R0, #0]
;MyProject_TA_events_code.c,295 :: 		}
L_ButtonRound8OnClick192:
;MyProject_TA_events_code.c,296 :: 		DrawRoundButton(&ButtonRound8);
MOVW	R0, #lo_addr(_ButtonRound8+0)
MOVT	R0, #hi_addr(_ButtonRound8+0)
BL	_DrawRoundButton+0
;MyProject_TA_events_code.c,297 :: 		}
L_end_ButtonRound8OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound8OnClick
_ButtonRound1OnClick:
;MyProject_TA_events_code.c,299 :: 		void ButtonRound1OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,300 :: 		DrawScreen(&Screen5);
MOVW	R0, #lo_addr(_Screen5+0)
MOVT	R0, #hi_addr(_Screen5+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,302 :: 		in[0] = ((ecg_ptr->rmssd - 9.80751103e-02) / 0.09397568);
MOVW	R2, #lo_addr(_ecg_ptr+0)
MOVT	R2, #hi_addr(_ecg_ptr+0)
LDR	R1, [R2, #0]
MOVW	R0, #31220
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #56218
MOVT	R0, #15816
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #30290
MOVT	R0, #15808
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+0)
MOVT	R0, #hi_addr(_in+0)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,303 :: 		in[1] = ((ecg_ptr->sd1 - 6.90862937e+01) / 66.40267096);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #31224
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #11311
MOVT	R0, #17034
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #52779
MOVT	R0, #17028
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+4)
MOVT	R0, #hi_addr(_in+4)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,304 :: 		in[2] = ((ecg_ptr->sd2 - 1.05525846e+02) / 61.37620729);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #31228
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #3388
MOVT	R0, #17107
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #33084
MOVT	R0, #17013
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+8)
MOVT	R0, #hi_addr(_in+8)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,305 :: 		in[3] = ((eeg_ptr->lapf_eeg - 8.33127000e-02) / 0.10320298);
MOVW	R2, #lo_addr(_eeg_ptr+0)
MOVT	R2, #hi_addr(_eeg_ptr+0)
LDR	R1, [R2, #0]
MOVW	R0, #48040
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #40921
MOVT	R0, #15786
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #23573
MOVT	R0, #15827
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+12)
MOVT	R0, #hi_addr(_in+12)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,306 :: 		in[4] = ((eeg_ptr->mpf_eeg - 9.76651916e+00) / 7.5838905 );
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #17322
MOVT	R0, #16668
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #44859
MOVT	R0, #16626
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+16)
MOVT	R0, #hi_addr(_in+16)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,307 :: 		in[5] = ((eeg_ptr1->lapf_eeg - 9.39778560e-02) / 0.078671);
MOVW	R2, #lo_addr(_eeg_ptr1+0)
MOVT	R2, #hi_addr(_eeg_ptr1+0)
LDR	R1, [R2, #0]
MOVW	R0, #48040
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #30582
MOVT	R0, #15808
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #7747
MOVT	R0, #15777
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+20)
MOVT	R0, #hi_addr(_in+20)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,308 :: 		in[6] = ((eeg_ptr1->mpf_eeg - 1.03272005e+01) / 7.60291681);
MOV	R0, R2
LDR	R1, [R0, #0]
MOVW	R0, #48036
ADDS	R0, R1, R0
VLDR	#1, S1, [R0, #0]
MOVW	R0, #15415
MOVT	R0, #16677
VMOV	S0, R0
VSUB.F32	S1, S1, S0
MOVW	R0, #19224
MOVT	R0, #16627
VMOV	S0, R0
VDIV.F32	S0, S1, S0
MOVW	R0, #lo_addr(_in+24)
MOVT	R0, #hi_addr(_in+24)
VSTR	#1, S0, [R0, #0]
;MyProject_TA_events_code.c,316 :: 		Delay_ms(500);
MOVW	R7, #62202
MOVT	R7, #1647
NOP
NOP
L_ButtonRound1OnClick193:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick193
NOP
NOP
NOP
;MyProject_TA_events_code.c,317 :: 		intohid1();
BL	_intohid1+0
;MyProject_TA_events_code.c,318 :: 		hid1tohid2();
BL	_hid1tohid2+0
;MyProject_TA_events_code.c,319 :: 		hid2tohid3();
BL	_hid2tohid3+0
;MyProject_TA_events_code.c,320 :: 		hid3toout();
BL	_hid3toout+0
;MyProject_TA_events_code.c,321 :: 		bingkai(85, 355, 760, 40, hid4score[0]); Delay_ms(100);
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
VLDR	#1, S0, [R0, #0]
MOVS	R3, #40
SXTH	R3, R3
MOVW	R2, #760
SXTH	R2, R2
MOVW	R1, #355
SXTH	R1, R1
MOVS	R0, #85
SXTH	R0, R0
BL	_bingkai+0
MOVW	R7, #38650
MOVT	R7, #329
NOP
NOP
L_ButtonRound1OnClick195:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick195
NOP
NOP
NOP
;MyProject_TA_events_code.c,322 :: 		bingkai(375, 355, 760, 40, hid4score[1]); Delay_ms(100);
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
ADDS	R0, R0, #4
VLDR	#1, S0, [R0, #0]
MOVS	R3, #40
SXTH	R3, R3
MOVW	R2, #760
SXTH	R2, R2
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #375
SXTH	R0, R0
BL	_bingkai+0
MOVW	R7, #38650
MOVT	R7, #329
NOP
NOP
L_ButtonRound1OnClick197:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick197
NOP
NOP
NOP
;MyProject_TA_events_code.c,323 :: 		bingkai(610, 355, 760, 40, hid4score[2]); Delay_ms(100);
MOVW	R0, #lo_addr(_hid4score+0)
MOVT	R0, #hi_addr(_hid4score+0)
LDR	R0, [R0, #0]
ADDS	R0, #8
VLDR	#1, S0, [R0, #0]
MOVS	R3, #40
SXTH	R3, R3
MOVW	R2, #760
SXTH	R2, R2
MOVW	R1, #355
SXTH	R1, R1
MOVW	R0, #610
SXTH	R0, R0
BL	_bingkai+0
MOVW	R7, #38650
MOVT	R7, #329
NOP
NOP
L_ButtonRound1OnClick199:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick199
NOP
NOP
NOP
;MyProject_TA_events_code.c,324 :: 		TFT_Set_Pen(CL_WHITE, 1);
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;MyProject_TA_events_code.c,325 :: 		TFT_Set_Brush(0, 0, 0, LEFT_TO_RIGHT, CL_WHITE, CL_WHITE);
MOVW	R1, #65535
MOVW	R0, #65535
PUSH	(R1)
PUSH	(R0)
MOVS	R3, #1
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #0
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;MyProject_TA_events_code.c,326 :: 		TFT_Rectangle(20, 20, 760, 440);
MOVW	R3, #440
SXTH	R3, R3
MOVW	R2, #760
SXTH	R2, R2
MOVS	R1, #20
SXTH	R1, R1
MOVS	R0, #20
SXTH	R0, R0
BL	_TFT_Rectangle+0
;MyProject_TA_events_code.c,327 :: 		TFT_Set_Font(Times_New_Roman25x31_Regular, CL_BLACK, FO_HORIZONTAL);
MOVW	R0, #lo_addr(_Times_New_Roman25x31_Regular+0)
MOVT	R0, #hi_addr(_Times_New_Roman25x31_Regular+0)
MOVS	R2, #0
MOVW	R1, #0
BL	_TFT_Set_Font+0
;MyProject_TA_events_code.c,328 :: 		Delay_ms(150);
MOVW	R7, #25210
MOVT	R7, #494
NOP
NOP
L_ButtonRound1OnClick201:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick201
NOP
NOP
NOP
;MyProject_TA_events_code.c,329 :: 		predict();
BL	_predict+0
;MyProject_TA_events_code.c,330 :: 		Delay_ms(10);
MOVW	R7, #62842
MOVT	R7, #32
NOP
NOP
L_ButtonRound1OnClick203:
SUBS	R7, R7, #1
BNE	L_ButtonRound1OnClick203
NOP
NOP
NOP
;MyProject_TA_events_code.c,331 :: 		}
L_end_ButtonRound1OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound1OnClick
_ButtonRound10OnClick:
;MyProject_TA_events_code.c,332 :: 		void ButtonRound10OnClick() {
SUB	SP, SP, #4
STR	LR, [SP, #0]
;MyProject_TA_events_code.c,333 :: 		DrawScreen(&Screen1);
MOVW	R0, #lo_addr(_Screen1+0)
MOVT	R0, #hi_addr(_Screen1+0)
BL	_DrawScreen+0
;MyProject_TA_events_code.c,334 :: 		}
L_end_ButtonRound10OnClick:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _ButtonRound10OnClick
MyProject_TA_events_code____?ag:
L_end_MyProject_TA_events_code___?ag:
BX	LR
; end of MyProject_TA_events_code____?ag
