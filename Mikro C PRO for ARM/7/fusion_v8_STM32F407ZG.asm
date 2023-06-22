fusion_v8_STM32F407ZG__getAN_1:
;__fuv8_stm32f407zg_gpio.c,31 :: 		static uint8_t _getAN_1  ()                   { return GPIOA_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getAN_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getAN_1
fusion_v8_STM32F407ZG__getRST_1:
;__fuv8_stm32f407zg_gpio.c,32 :: 		static uint8_t _getRST_1 ()                   { return GPIOE_IDR.B11;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getRST_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getRST_1
fusion_v8_STM32F407ZG__getCS_1:
;__fuv8_stm32f407zg_gpio.c,33 :: 		static uint8_t _getCS_1  ()                   { return GPIOA_IDR.B4 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getCS_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getCS_1
fusion_v8_STM32F407ZG__getSCK_1:
;__fuv8_stm32f407zg_gpio.c,34 :: 		static uint8_t _getSCK_1 ()                   { return GPIOA_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getSCK_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCK_1
fusion_v8_STM32F407ZG__getMISO_1:
;__fuv8_stm32f407zg_gpio.c,35 :: 		static uint8_t _getMISO_1()                   { return GPIOA_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getMISO_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getMISO_1
fusion_v8_STM32F407ZG__getMOSI_1:
;__fuv8_stm32f407zg_gpio.c,36 :: 		static uint8_t _getMOSI_1()                   { return GPIOB_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getMOSI_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getMOSI_1
fusion_v8_STM32F407ZG__getPWM_1:
;__fuv8_stm32f407zg_gpio.c,37 :: 		static uint8_t _getPWM_1 ()                   { return GPIOD_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getPWM_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getPWM_1
fusion_v8_STM32F407ZG__getINT_1:
;__fuv8_stm32f407zg_gpio.c,38 :: 		static uint8_t _getINT_1 ()                   { return GPIOD_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getINT_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getINT_1
fusion_v8_STM32F407ZG__getRX_1:
;__fuv8_stm32f407zg_gpio.c,39 :: 		static uint8_t _getRX_1  ()                   { return GPIOB_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getRX_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getRX_1
fusion_v8_STM32F407ZG__getTX_1:
;__fuv8_stm32f407zg_gpio.c,40 :: 		static uint8_t _getTX_1  ()                   { return GPIOB_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getTX_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getTX_1
fusion_v8_STM32F407ZG__getSCL_1:
;__fuv8_stm32f407zg_gpio.c,41 :: 		static uint8_t _getSCL_1 ()                   { return GPIOB_IDR.B8 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSCL_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCL_1
fusion_v8_STM32F407ZG__getSDA_1:
;__fuv8_stm32f407zg_gpio.c,42 :: 		static uint8_t _getSDA_1 ()                   { return GPIOB_IDR.B9 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSDA_1:
BX	LR
; end of fusion_v8_STM32F407ZG__getSDA_1
fusion_v8_STM32F407ZG__setAN_1:
;__fuv8_stm32f407zg_gpio.c,43 :: 		static void _setAN_1  (uint8_t value)         { GPIOA_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setAN_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setAN_1
fusion_v8_STM32F407ZG__setRST_1:
;__fuv8_stm32f407zg_gpio.c,44 :: 		static void _setRST_1 (uint8_t value)         { GPIOE_ODR.B11 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setRST_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setRST_1
fusion_v8_STM32F407ZG__setCS_1:
;__fuv8_stm32f407zg_gpio.c,45 :: 		static void _setCS_1  (uint8_t value)         { GPIOA_ODR.B4  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setCS_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setCS_1
fusion_v8_STM32F407ZG__setSCK_1:
;__fuv8_stm32f407zg_gpio.c,46 :: 		static void _setSCK_1 (uint8_t value)         { GPIOA_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCK_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCK_1
fusion_v8_STM32F407ZG__setMISO_1:
;__fuv8_stm32f407zg_gpio.c,47 :: 		static void _setMISO_1(uint8_t value)         { GPIOA_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setMISO_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setMISO_1
fusion_v8_STM32F407ZG__setMOSI_1:
;__fuv8_stm32f407zg_gpio.c,48 :: 		static void _setMOSI_1(uint8_t value)         { GPIOB_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setMOSI_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setMOSI_1
fusion_v8_STM32F407ZG__setPWM_1:
;__fuv8_stm32f407zg_gpio.c,49 :: 		static void _setPWM_1 (uint8_t value)         { GPIOD_ODR.B12 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setPWM_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setPWM_1
fusion_v8_STM32F407ZG__setINT_1:
;__fuv8_stm32f407zg_gpio.c,50 :: 		static void _setINT_1 (uint8_t value)         { GPIOD_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setINT_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setINT_1
fusion_v8_STM32F407ZG__setRX_1:
;__fuv8_stm32f407zg_gpio.c,51 :: 		static void _setRX_1  (uint8_t value)         { GPIOB_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setRX_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setRX_1
fusion_v8_STM32F407ZG__setTX_1:
;__fuv8_stm32f407zg_gpio.c,52 :: 		static void _setTX_1  (uint8_t value)         { GPIOB_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setTX_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setTX_1
fusion_v8_STM32F407ZG__setSCL_1:
;__fuv8_stm32f407zg_gpio.c,53 :: 		static void _setSCL_1 (uint8_t value)         { GPIOB_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCL_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCL_1
fusion_v8_STM32F407ZG__setSDA_1:
;__fuv8_stm32f407zg_gpio.c,54 :: 		static void _setSDA_1 (uint8_t value)         { GPIOB_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSDA_1:
BX	LR
; end of fusion_v8_STM32F407ZG__setSDA_1
fusion_v8_STM32F407ZG__getAN_2:
;__fuv8_stm32f407zg_gpio.c,56 :: 		static uint8_t _getAN_2  ()             { return GPIOC_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getAN_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getAN_2
fusion_v8_STM32F407ZG__getRST_2:
;__fuv8_stm32f407zg_gpio.c,57 :: 		static uint8_t _getRST_2 ()             { return GPIOE_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getRST_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getRST_2
fusion_v8_STM32F407ZG__getCS_2:
;__fuv8_stm32f407zg_gpio.c,58 :: 		static uint8_t _getCS_2  ()             { return GPIOB_IDR.B2 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getCS_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getCS_2
fusion_v8_STM32F407ZG__getSCK_2:
;__fuv8_stm32f407zg_gpio.c,59 :: 		static uint8_t _getSCK_2 ()             { return GPIOA_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getSCK_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCK_2
fusion_v8_STM32F407ZG__getMISO_2:
;__fuv8_stm32f407zg_gpio.c,60 :: 		static uint8_t _getMISO_2()             { return GPIOA_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getMISO_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getMISO_2
fusion_v8_STM32F407ZG__getMOSI_2:
;__fuv8_stm32f407zg_gpio.c,61 :: 		static uint8_t _getMOSI_2()             { return GPIOB_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getMOSI_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getMOSI_2
fusion_v8_STM32F407ZG__getPWM_2:
;__fuv8_stm32f407zg_gpio.c,62 :: 		static uint8_t _getPWM_2 ()             { return GPIOD_IDR.B13;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getPWM_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getPWM_2
fusion_v8_STM32F407ZG__getINT_2:
;__fuv8_stm32f407zg_gpio.c,63 :: 		static uint8_t _getINT_2 ()             { return GPIOD_IDR.B4 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getINT_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getINT_2
fusion_v8_STM32F407ZG__getRX_2:
;__fuv8_stm32f407zg_gpio.c,64 :: 		static uint8_t _getRX_2  ()             { return GPIOD_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getRX_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getRX_2
fusion_v8_STM32F407ZG__getTX_2:
;__fuv8_stm32f407zg_gpio.c,65 :: 		static uint8_t _getTX_2  ()             { return GPIOD_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getTX_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getTX_2
fusion_v8_STM32F407ZG__getSCL_2:
;__fuv8_stm32f407zg_gpio.c,66 :: 		static uint8_t _getSCL_2 ()             { return GPIOB_IDR.B8 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSCL_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCL_2
fusion_v8_STM32F407ZG__getSDA_2:
;__fuv8_stm32f407zg_gpio.c,67 :: 		static uint8_t _getSDA_2 ()             { return GPIOB_IDR.B9 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSDA_2:
BX	LR
; end of fusion_v8_STM32F407ZG__getSDA_2
fusion_v8_STM32F407ZG__setAN_2:
;__fuv8_stm32f407zg_gpio.c,68 :: 		static void _setAN_2  (uint8_t value)   { GPIOC_ODR.B0  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setAN_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setAN_2
fusion_v8_STM32F407ZG__setRST_2:
;__fuv8_stm32f407zg_gpio.c,69 :: 		static void _setRST_2 (uint8_t value)   { GPIOE_ODR.B12 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setRST_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setRST_2
fusion_v8_STM32F407ZG__setCS_2:
;__fuv8_stm32f407zg_gpio.c,70 :: 		static void _setCS_2  (uint8_t value)   { GPIOB_ODR.B2  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setCS_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setCS_2
fusion_v8_STM32F407ZG__setSCK_2:
;__fuv8_stm32f407zg_gpio.c,71 :: 		static void _setSCK_2 (uint8_t value)   { GPIOA_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCK_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCK_2
fusion_v8_STM32F407ZG__setMISO_2:
;__fuv8_stm32f407zg_gpio.c,72 :: 		static void _setMISO_2(uint8_t value)   { GPIOA_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setMISO_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setMISO_2
fusion_v8_STM32F407ZG__setMOSI_2:
;__fuv8_stm32f407zg_gpio.c,73 :: 		static void _setMOSI_2(uint8_t value)   { GPIOB_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setMOSI_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setMOSI_2
fusion_v8_STM32F407ZG__setPWM_2:
;__fuv8_stm32f407zg_gpio.c,74 :: 		static void _setPWM_2 (uint8_t value)   { GPIOD_ODR.B13 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setPWM_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setPWM_2
fusion_v8_STM32F407ZG__setINT_2:
;__fuv8_stm32f407zg_gpio.c,75 :: 		static void _setINT_2 (uint8_t value)   { GPIOD_ODR.B4  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setINT_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setINT_2
fusion_v8_STM32F407ZG__setRX_2:
;__fuv8_stm32f407zg_gpio.c,76 :: 		static void _setRX_2  (uint8_t value)   { GPIOD_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setRX_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setRX_2
fusion_v8_STM32F407ZG__setTX_2:
;__fuv8_stm32f407zg_gpio.c,77 :: 		static void _setTX_2  (uint8_t value)   { GPIOD_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setTX_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setTX_2
fusion_v8_STM32F407ZG__setSCL_2:
;__fuv8_stm32f407zg_gpio.c,78 :: 		static void _setSCL_2 (uint8_t value)   { GPIOB_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCL_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCL_2
fusion_v8_STM32F407ZG__setSDA_2:
;__fuv8_stm32f407zg_gpio.c,79 :: 		static void _setSDA_2 (uint8_t value)   { GPIOB_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSDA_2:
BX	LR
; end of fusion_v8_STM32F407ZG__setSDA_2
fusion_v8_STM32F407ZG__getAN_3:
;__fuv8_stm32f407zg_gpio.c,81 :: 		static uint8_t _getAN_3  ()             { return GPIOC_IDR.B2 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getAN_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getAN_3
fusion_v8_STM32F407ZG__getRST_3:
;__fuv8_stm32f407zg_gpio.c,82 :: 		static uint8_t _getRST_3 ()             { return GPIOE_IDR.B13;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getRST_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getRST_3
fusion_v8_STM32F407ZG__getCS_3:
;__fuv8_stm32f407zg_gpio.c,83 :: 		static uint8_t _getCS_3  ()             { return GPIOB_IDR.B4 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getCS_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getCS_3
fusion_v8_STM32F407ZG__getSCK_3:
;__fuv8_stm32f407zg_gpio.c,84 :: 		static uint8_t _getSCK_3 ()             { return GPIOA_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getSCK_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCK_3
fusion_v8_STM32F407ZG__getMISO_3:
;__fuv8_stm32f407zg_gpio.c,85 :: 		static uint8_t _getMISO_3()             { return GPIOA_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOA_IDR+0)
MOVT	R0, #hi_addr(GPIOA_IDR+0)
_LX	[R0, ByteOffset(GPIOA_IDR+0)]
L_end__getMISO_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getMISO_3
fusion_v8_STM32F407ZG__getMOSI_3:
;__fuv8_stm32f407zg_gpio.c,86 :: 		static uint8_t _getMOSI_3()             { return GPIOB_IDR.B5 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getMOSI_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getMOSI_3
fusion_v8_STM32F407ZG__getPWM_3:
;__fuv8_stm32f407zg_gpio.c,87 :: 		static uint8_t _getPWM_3 ()             { return GPIOD_IDR.B14;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getPWM_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getPWM_3
fusion_v8_STM32F407ZG__getINT_3:
;__fuv8_stm32f407zg_gpio.c,88 :: 		static uint8_t _getINT_3 ()             { return GPIOD_IDR.B2 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getINT_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getINT_3
fusion_v8_STM32F407ZG__getRX_3:
;__fuv8_stm32f407zg_gpio.c,89 :: 		static uint8_t _getRX_3  ()             { return GPIOD_IDR.B9 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getRX_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getRX_3
fusion_v8_STM32F407ZG__getTX_3:
;__fuv8_stm32f407zg_gpio.c,90 :: 		static uint8_t _getTX_3  ()             { return GPIOD_IDR.B8 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getTX_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getTX_3
fusion_v8_STM32F407ZG__getSCL_3:
;__fuv8_stm32f407zg_gpio.c,91 :: 		static uint8_t _getSCL_3 ()             { return GPIOB_IDR.B8 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSCL_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCL_3
fusion_v8_STM32F407ZG__getSDA_3:
;__fuv8_stm32f407zg_gpio.c,92 :: 		static uint8_t _getSDA_3 ()             { return GPIOB_IDR.B9 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getSDA_3:
BX	LR
; end of fusion_v8_STM32F407ZG__getSDA_3
fusion_v8_STM32F407ZG__setAN_3:
;__fuv8_stm32f407zg_gpio.c,93 :: 		static void _setAN_3  (uint8_t value)   { GPIOC_ODR.B2  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setAN_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setAN_3
fusion_v8_STM32F407ZG__setRST_3:
;__fuv8_stm32f407zg_gpio.c,94 :: 		static void _setRST_3 (uint8_t value)   { GPIOE_ODR.B13 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setRST_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setRST_3
fusion_v8_STM32F407ZG__setCS_3:
;__fuv8_stm32f407zg_gpio.c,95 :: 		static void _setCS_3  (uint8_t value)   { GPIOB_ODR.B4  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setCS_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setCS_3
fusion_v8_STM32F407ZG__setSCK_3:
;__fuv8_stm32f407zg_gpio.c,96 :: 		static void _setSCK_3 (uint8_t value)   { GPIOA_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCK_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCK_3
fusion_v8_STM32F407ZG__setMISO_3:
;__fuv8_stm32f407zg_gpio.c,97 :: 		static void _setMISO_3(uint8_t value)   { GPIOA_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOA_ODR+0)
MOVT	R1, #hi_addr(GPIOA_ODR+0)
_SX	[R1, ByteOffset(GPIOA_ODR+0)]
; value end address is: 0 (R0)
L_end__setMISO_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setMISO_3
fusion_v8_STM32F407ZG__setMOSI_3:
;__fuv8_stm32f407zg_gpio.c,98 :: 		static void _setMOSI_3(uint8_t value)   { GPIOB_ODR.B5  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setMOSI_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setMOSI_3
fusion_v8_STM32F407ZG__setPWM_3:
;__fuv8_stm32f407zg_gpio.c,99 :: 		static void _setPWM_3 (uint8_t value)   { GPIOD_ODR.B14 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setPWM_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setPWM_3
fusion_v8_STM32F407ZG__setINT_3:
;__fuv8_stm32f407zg_gpio.c,100 :: 		static void _setINT_3 (uint8_t value)   { GPIOD_ODR.B2  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setINT_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setINT_3
fusion_v8_STM32F407ZG__setRX_3:
;__fuv8_stm32f407zg_gpio.c,101 :: 		static void _setRX_3  (uint8_t value)   { GPIOD_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setRX_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setRX_3
fusion_v8_STM32F407ZG__setTX_3:
;__fuv8_stm32f407zg_gpio.c,102 :: 		static void _setTX_3  (uint8_t value)   { GPIOD_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setTX_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setTX_3
fusion_v8_STM32F407ZG__setSCL_3:
;__fuv8_stm32f407zg_gpio.c,103 :: 		static void _setSCL_3 (uint8_t value)   { GPIOB_ODR.B8  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCL_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCL_3
fusion_v8_STM32F407ZG__setSDA_3:
;__fuv8_stm32f407zg_gpio.c,104 :: 		static void _setSDA_3 (uint8_t value)   { GPIOB_ODR.B9  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setSDA_3:
BX	LR
; end of fusion_v8_STM32F407ZG__setSDA_3
fusion_v8_STM32F407ZG__getAN_4:
;__fuv8_stm32f407zg_gpio.c,106 :: 		static uint8_t _getAN_4  ()             { return GPIOC_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getAN_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getAN_4
fusion_v8_STM32F407ZG__getRST_4:
;__fuv8_stm32f407zg_gpio.c,107 :: 		static uint8_t _getRST_4 ()             { return GPIOE_IDR.B14;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getRST_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getRST_4
fusion_v8_STM32F407ZG__getCS_4:
;__fuv8_stm32f407zg_gpio.c,108 :: 		static uint8_t _getCS_4  ()             { return GPIOC_IDR.B13;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getCS_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getCS_4
fusion_v8_STM32F407ZG__getSCK_4:
;__fuv8_stm32f407zg_gpio.c,109 :: 		static uint8_t _getSCK_4 ()             { return GPIOC_IDR.B10;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getSCK_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCK_4
fusion_v8_STM32F407ZG__getMISO_4:
;__fuv8_stm32f407zg_gpio.c,110 :: 		static uint8_t _getMISO_4()             { return GPIOC_IDR.B11;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getMISO_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getMISO_4
fusion_v8_STM32F407ZG__getMOSI_4:
;__fuv8_stm32f407zg_gpio.c,111 :: 		static uint8_t _getMOSI_4()             { return GPIOC_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getMOSI_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getMOSI_4
fusion_v8_STM32F407ZG__getPWM_4:
;__fuv8_stm32f407zg_gpio.c,112 :: 		static uint8_t _getPWM_4 ()             { return GPIOD_IDR.B15;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getPWM_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getPWM_4
fusion_v8_STM32F407ZG__getINT_4:
;__fuv8_stm32f407zg_gpio.c,113 :: 		static uint8_t _getINT_4 ()             { return GPIOF_IDR.B3 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
_LX	[R0, ByteOffset(GPIOF_IDR+0)]
L_end__getINT_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getINT_4
fusion_v8_STM32F407ZG__getRX_4:
;__fuv8_stm32f407zg_gpio.c,114 :: 		static uint8_t _getRX_4  ()             { return GPIOC_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getRX_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getRX_4
fusion_v8_STM32F407ZG__getTX_4:
;__fuv8_stm32f407zg_gpio.c,115 :: 		static uint8_t _getTX_4  ()             { return GPIOC_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getTX_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getTX_4
fusion_v8_STM32F407ZG__getSCL_4:
;__fuv8_stm32f407zg_gpio.c,116 :: 		static uint8_t _getSCL_4 ()             { return GPIOF_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
_LX	[R0, ByteOffset(GPIOF_IDR+0)]
L_end__getSCL_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCL_4
fusion_v8_STM32F407ZG__getSDA_4:
;__fuv8_stm32f407zg_gpio.c,117 :: 		static uint8_t _getSDA_4 ()             { return GPIOF_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
_LX	[R0, ByteOffset(GPIOF_IDR+0)]
L_end__getSDA_4:
BX	LR
; end of fusion_v8_STM32F407ZG__getSDA_4
fusion_v8_STM32F407ZG__setAN_4:
;__fuv8_stm32f407zg_gpio.c,118 :: 		static void _setAN_4  (uint8_t value)   { GPIOC_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setAN_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setAN_4
fusion_v8_STM32F407ZG__setRST_4:
;__fuv8_stm32f407zg_gpio.c,119 :: 		static void _setRST_4 (uint8_t value)   { GPIOE_ODR.B14 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setRST_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setRST_4
fusion_v8_STM32F407ZG__setCS_4:
;__fuv8_stm32f407zg_gpio.c,120 :: 		static void _setCS_4  (uint8_t value)   { GPIOC_ODR.B13 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setCS_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setCS_4
fusion_v8_STM32F407ZG__setSCK_4:
;__fuv8_stm32f407zg_gpio.c,121 :: 		static void _setSCK_4 (uint8_t value)   { GPIOC_ODR.B10 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCK_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCK_4
fusion_v8_STM32F407ZG__setMISO_4:
;__fuv8_stm32f407zg_gpio.c,122 :: 		static void _setMISO_4(uint8_t value)   { GPIOC_ODR.B11 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setMISO_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setMISO_4
fusion_v8_STM32F407ZG__setMOSI_4:
;__fuv8_stm32f407zg_gpio.c,123 :: 		static void _setMOSI_4(uint8_t value)   { GPIOC_ODR.B12 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setMOSI_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setMOSI_4
fusion_v8_STM32F407ZG__setPWM_4:
;__fuv8_stm32f407zg_gpio.c,124 :: 		static void _setPWM_4 (uint8_t value)   { GPIOD_ODR.B15 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setPWM_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setPWM_4
fusion_v8_STM32F407ZG__setINT_4:
;__fuv8_stm32f407zg_gpio.c,125 :: 		static void _setINT_4 (uint8_t value)   { GPIOF_ODR.B3  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
_SX	[R1, ByteOffset(GPIOF_ODR+0)]
; value end address is: 0 (R0)
L_end__setINT_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setINT_4
fusion_v8_STM32F407ZG__setRX_4:
;__fuv8_stm32f407zg_gpio.c,126 :: 		static void _setRX_4  (uint8_t value)   { GPIOC_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setRX_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setRX_4
fusion_v8_STM32F407ZG__setTX_4:
;__fuv8_stm32f407zg_gpio.c,127 :: 		static void _setTX_4  (uint8_t value)   { GPIOC_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setTX_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setTX_4
fusion_v8_STM32F407ZG__setSCL_4:
;__fuv8_stm32f407zg_gpio.c,128 :: 		static void _setSCL_4 (uint8_t value)   { GPIOF_ODR.B1  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
_SX	[R1, ByteOffset(GPIOF_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCL_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCL_4
fusion_v8_STM32F407ZG__setSDA_4:
;__fuv8_stm32f407zg_gpio.c,129 :: 		static void _setSDA_4 (uint8_t value)   { GPIOF_ODR.B0  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
_SX	[R1, ByteOffset(GPIOF_ODR+0)]
; value end address is: 0 (R0)
L_end__setSDA_4:
BX	LR
; end of fusion_v8_STM32F407ZG__setSDA_4
fusion_v8_STM32F407ZG__getAN_5:
;__fuv8_stm32f407zg_gpio.c,131 :: 		static uint8_t _getAN_5  ()             { return GPIOB_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getAN_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getAN_5
fusion_v8_STM32F407ZG__getRST_5:
;__fuv8_stm32f407zg_gpio.c,132 :: 		static uint8_t _getRST_5 ()             { return GPIOE_IDR.B15;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getRST_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getRST_5
fusion_v8_STM32F407ZG__getCS_5:
;__fuv8_stm32f407zg_gpio.c,133 :: 		static uint8_t _getCS_5  ()             { return GPIOD_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOD_IDR+0)
MOVT	R0, #hi_addr(GPIOD_IDR+0)
_LX	[R0, ByteOffset(GPIOD_IDR+0)]
L_end__getCS_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getCS_5
fusion_v8_STM32F407ZG__getSCK_5:
;__fuv8_stm32f407zg_gpio.c,134 :: 		static uint8_t _getSCK_5 ()             { return GPIOC_IDR.B10;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getSCK_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCK_5
fusion_v8_STM32F407ZG__getMISO_5:
;__fuv8_stm32f407zg_gpio.c,135 :: 		static uint8_t _getMISO_5()             { return GPIOC_IDR.B11;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getMISO_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getMISO_5
fusion_v8_STM32F407ZG__getMOSI_5:
;__fuv8_stm32f407zg_gpio.c,136 :: 		static uint8_t _getMOSI_5()             { return GPIOC_IDR.B12;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getMOSI_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getMOSI_5
fusion_v8_STM32F407ZG__getPWM_5:
;__fuv8_stm32f407zg_gpio.c,137 :: 		static uint8_t _getPWM_5 ()             { return GPIOB_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOB_IDR+0)
MOVT	R0, #hi_addr(GPIOB_IDR+0)
_LX	[R0, ByteOffset(GPIOB_IDR+0)]
L_end__getPWM_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getPWM_5
fusion_v8_STM32F407ZG__getINT_5:
;__fuv8_stm32f407zg_gpio.c,138 :: 		static uint8_t _getINT_5 ()             { return GPIOE_IDR.B10;  }
MOVW	R0, #lo_addr(GPIOE_IDR+0)
MOVT	R0, #hi_addr(GPIOE_IDR+0)
_LX	[R0, ByteOffset(GPIOE_IDR+0)]
L_end__getINT_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getINT_5
fusion_v8_STM32F407ZG__getRX_5:
;__fuv8_stm32f407zg_gpio.c,139 :: 		static uint8_t _getRX_5  ()             { return GPIOC_IDR.B7 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getRX_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getRX_5
fusion_v8_STM32F407ZG__getTX_5:
;__fuv8_stm32f407zg_gpio.c,140 :: 		static uint8_t _getTX_5  ()             { return GPIOC_IDR.B6 ;  }
MOVW	R0, #lo_addr(GPIOC_IDR+0)
MOVT	R0, #hi_addr(GPIOC_IDR+0)
_LX	[R0, ByteOffset(GPIOC_IDR+0)]
L_end__getTX_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getTX_5
fusion_v8_STM32F407ZG__getSCL_5:
;__fuv8_stm32f407zg_gpio.c,141 :: 		static uint8_t _getSCL_5 ()             { return GPIOF_IDR.B1 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
_LX	[R0, ByteOffset(GPIOF_IDR+0)]
L_end__getSCL_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getSCL_5
fusion_v8_STM32F407ZG__getSDA_5:
;__fuv8_stm32f407zg_gpio.c,142 :: 		static uint8_t _getSDA_5 ()             { return GPIOF_IDR.B0 ;  }
MOVW	R0, #lo_addr(GPIOF_IDR+0)
MOVT	R0, #hi_addr(GPIOF_IDR+0)
_LX	[R0, ByteOffset(GPIOF_IDR+0)]
L_end__getSDA_5:
BX	LR
; end of fusion_v8_STM32F407ZG__getSDA_5
fusion_v8_STM32F407ZG__setAN_5:
;__fuv8_stm32f407zg_gpio.c,143 :: 		static void _setAN_5  (uint8_t value)   { GPIOB_ODR.B1  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setAN_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setAN_5
fusion_v8_STM32F407ZG__setRST_5:
;__fuv8_stm32f407zg_gpio.c,144 :: 		static void _setRST_5 (uint8_t value)   { GPIOE_ODR.B15 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setRST_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setRST_5
fusion_v8_STM32F407ZG__setCS_5:
;__fuv8_stm32f407zg_gpio.c,145 :: 		static void _setCS_5  (uint8_t value)   { GPIOD_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOD_ODR+0)
MOVT	R1, #hi_addr(GPIOD_ODR+0)
_SX	[R1, ByteOffset(GPIOD_ODR+0)]
; value end address is: 0 (R0)
L_end__setCS_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setCS_5
fusion_v8_STM32F407ZG__setSCK_5:
;__fuv8_stm32f407zg_gpio.c,146 :: 		static void _setSCK_5 (uint8_t value)   { GPIOC_ODR.B10 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCK_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCK_5
fusion_v8_STM32F407ZG__setMISO_5:
;__fuv8_stm32f407zg_gpio.c,147 :: 		static void _setMISO_5(uint8_t value)   { GPIOC_ODR.B11 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setMISO_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setMISO_5
fusion_v8_STM32F407ZG__setMOSI_5:
;__fuv8_stm32f407zg_gpio.c,148 :: 		static void _setMOSI_5(uint8_t value)   { GPIOC_ODR.B12 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setMOSI_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setMOSI_5
fusion_v8_STM32F407ZG__setPWM_5:
;__fuv8_stm32f407zg_gpio.c,149 :: 		static void _setPWM_5 (uint8_t value)   { GPIOB_ODR.B0  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOB_ODR+0)
MOVT	R1, #hi_addr(GPIOB_ODR+0)
_SX	[R1, ByteOffset(GPIOB_ODR+0)]
; value end address is: 0 (R0)
L_end__setPWM_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setPWM_5
fusion_v8_STM32F407ZG__setINT_5:
;__fuv8_stm32f407zg_gpio.c,150 :: 		static void _setINT_5 (uint8_t value)   { GPIOE_ODR.B10 = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOE_ODR+0)
MOVT	R1, #hi_addr(GPIOE_ODR+0)
_SX	[R1, ByteOffset(GPIOE_ODR+0)]
; value end address is: 0 (R0)
L_end__setINT_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setINT_5
fusion_v8_STM32F407ZG__setRX_5:
;__fuv8_stm32f407zg_gpio.c,151 :: 		static void _setRX_5  (uint8_t value)   { GPIOC_ODR.B7  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setRX_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setRX_5
fusion_v8_STM32F407ZG__setTX_5:
;__fuv8_stm32f407zg_gpio.c,152 :: 		static void _setTX_5  (uint8_t value)   { GPIOC_ODR.B6  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOC_ODR+0)
MOVT	R1, #hi_addr(GPIOC_ODR+0)
_SX	[R1, ByteOffset(GPIOC_ODR+0)]
; value end address is: 0 (R0)
L_end__setTX_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setTX_5
fusion_v8_STM32F407ZG__setSCL_5:
;__fuv8_stm32f407zg_gpio.c,153 :: 		static void _setSCL_5 (uint8_t value)   { GPIOF_ODR.B1  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
_SX	[R1, ByteOffset(GPIOF_ODR+0)]
; value end address is: 0 (R0)
L_end__setSCL_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setSCL_5
fusion_v8_STM32F407ZG__setSDA_5:
;__fuv8_stm32f407zg_gpio.c,154 :: 		static void _setSDA_5 (uint8_t value)   { GPIOF_ODR.B0  = value; }
; value start address is: 0 (R0)
; value end address is: 0 (R0)
; value start address is: 0 (R0)
MOVW	R1, #lo_addr(GPIOF_ODR+0)
MOVT	R1, #hi_addr(GPIOF_ODR+0)
_SX	[R1, ByteOffset(GPIOF_ODR+0)]
; value end address is: 0 (R0)
L_end__setSDA_5:
BX	LR
; end of fusion_v8_STM32F407ZG__setSDA_5
fusion_v8_STM32F407ZG__gpioInit_1:
;__fuv8_stm32f407zg_gpio.c,156 :: 		static T_mikrobus_ret _gpioInit_1(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__fuv8_stm32f407zg_gpio.c,158 :: 		switch( pin )
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_10
; pin end address is: 0 (R0)
;__fuv8_stm32f407zg_gpio.c,160 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_12:
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_13
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_14
L_fusion_v8_STM32F407ZG__gpioInit_13:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_14:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,161 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_11); break;
L_fusion_v8_STM32F407ZG__gpioInit_15:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_16
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_17
L_fusion_v8_STM32F407ZG__gpioInit_16:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_17:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,162 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_4 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_18:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_19
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_110
L_fusion_v8_STM32F407ZG__gpioInit_19:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_110:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,163 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_111:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_112
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_113
L_fusion_v8_STM32F407ZG__gpioInit_112:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_113:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,164 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_114:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_115
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_116
L_fusion_v8_STM32F407ZG__gpioInit_115:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_116:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,165 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_117:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_118
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_119
L_fusion_v8_STM32F407ZG__gpioInit_118:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_119:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,166 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_12); break;
L_fusion_v8_STM32F407ZG__gpioInit_120:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_121
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_122
L_fusion_v8_STM32F407ZG__gpioInit_121:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_122:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,167 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_3 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_123:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_124
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_125
L_fusion_v8_STM32F407ZG__gpioInit_124:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_125:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,168 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_7 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_126:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_127
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_128
L_fusion_v8_STM32F407ZG__gpioInit_127:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_128:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,169 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_129:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_130
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_131
L_fusion_v8_STM32F407ZG__gpioInit_130:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_131:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,170 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_132:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_133
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_134
L_fusion_v8_STM32F407ZG__gpioInit_133:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_134:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,171 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_135:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_136
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_137
L_fusion_v8_STM32F407ZG__gpioInit_136:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_137:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_11
;__fuv8_stm32f407zg_gpio.c,172 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_fusion_v8_STM32F407ZG__gpioInit_138:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_1
;__fuv8_stm32f407zg_gpio.c,173 :: 		}
L_fusion_v8_STM32F407ZG__gpioInit_10:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_12
CMP	R0, #1
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_15
CMP	R0, #2
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_18
CMP	R0, #3
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_111
CMP	R0, #4
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_114
CMP	R0, #5
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_117
CMP	R0, #6
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_120
CMP	R0, #7
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_123
CMP	R0, #8
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_126
CMP	R0, #9
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_129
CMP	R0, #10
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_132
CMP	R0, #11
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_135
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_138
L_fusion_v8_STM32F407ZG__gpioInit_11:
;__fuv8_stm32f407zg_gpio.c,174 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__fuv8_stm32f407zg_gpio.c,175 :: 		}
L_end__gpioInit_1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of fusion_v8_STM32F407ZG__gpioInit_1
fusion_v8_STM32F407ZG__gpioInit_2:
;__fuv8_stm32f407zg_gpio.c,177 :: 		static T_mikrobus_ret _gpioInit_2(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__fuv8_stm32f407zg_gpio.c,179 :: 		switch( pin )
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_239
; pin end address is: 0 (R0)
;__fuv8_stm32f407zg_gpio.c,181 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_0 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_241:
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_242
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_243
L_fusion_v8_STM32F407ZG__gpioInit_242:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_243:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,182 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_12); break;
L_fusion_v8_STM32F407ZG__gpioInit_244:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_245
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_246
L_fusion_v8_STM32F407ZG__gpioInit_245:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_246:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,183 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_2 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_247:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_248
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_249
L_fusion_v8_STM32F407ZG__gpioInit_248:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_249:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,184 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_250:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_251
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_252
L_fusion_v8_STM32F407ZG__gpioInit_251:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_252:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,185 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_253:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_254
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_255
L_fusion_v8_STM32F407ZG__gpioInit_254:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_255:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,186 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_256:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_257
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_258
L_fusion_v8_STM32F407ZG__gpioInit_257:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_258:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,187 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_13); break;
L_fusion_v8_STM32F407ZG__gpioInit_259:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_260
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_261
L_fusion_v8_STM32F407ZG__gpioInit_260:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_261:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,188 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_4 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_262:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_263
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_264
L_fusion_v8_STM32F407ZG__gpioInit_263:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_264:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,189 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_265:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_266
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_267
L_fusion_v8_STM32F407ZG__gpioInit_266:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_267:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,190 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_268:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_269
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_270
L_fusion_v8_STM32F407ZG__gpioInit_269:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_270:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,191 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_271:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_272
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_273
L_fusion_v8_STM32F407ZG__gpioInit_272:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_273:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,192 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_274:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_275
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_276
L_fusion_v8_STM32F407ZG__gpioInit_275:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_276:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_240
;__fuv8_stm32f407zg_gpio.c,193 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_fusion_v8_STM32F407ZG__gpioInit_277:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_2
;__fuv8_stm32f407zg_gpio.c,194 :: 		}
L_fusion_v8_STM32F407ZG__gpioInit_239:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_241
CMP	R0, #1
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_244
CMP	R0, #2
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_247
CMP	R0, #3
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_250
CMP	R0, #4
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_253
CMP	R0, #5
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_256
CMP	R0, #6
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_259
CMP	R0, #7
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_262
CMP	R0, #8
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_265
CMP	R0, #9
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_268
CMP	R0, #10
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_271
CMP	R0, #11
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_274
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_277
L_fusion_v8_STM32F407ZG__gpioInit_240:
;__fuv8_stm32f407zg_gpio.c,195 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__fuv8_stm32f407zg_gpio.c,196 :: 		}
L_end__gpioInit_2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of fusion_v8_STM32F407ZG__gpioInit_2
fusion_v8_STM32F407ZG__gpioInit_3:
;__fuv8_stm32f407zg_gpio.c,198 :: 		static T_mikrobus_ret _gpioInit_3(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__fuv8_stm32f407zg_gpio.c,200 :: 		switch( pin )
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_378
; pin end address is: 0 (R0)
;__fuv8_stm32f407zg_gpio.c,202 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_2 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_380:
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_381
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_382
L_fusion_v8_STM32F407ZG__gpioInit_381:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_382:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,203 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_13); break;
L_fusion_v8_STM32F407ZG__gpioInit_383:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_384
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_385
L_fusion_v8_STM32F407ZG__gpioInit_384:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_385:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,204 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_4 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_386:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_387
; dir end address is: 4 (R1)
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_388
L_fusion_v8_STM32F407ZG__gpioInit_387:
MOVW	R1, #16
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_388:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,205 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_389:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_390
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_391
L_fusion_v8_STM32F407ZG__gpioInit_390:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_391:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,206 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_392:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_393
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_394
L_fusion_v8_STM32F407ZG__gpioInit_393:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOA_BASE+0)
MOVT	R0, #hi_addr(GPIOA_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_394:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,207 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_395:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_396
; dir end address is: 4 (R1)
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_397
L_fusion_v8_STM32F407ZG__gpioInit_396:
MOVW	R1, #32
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_397:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,208 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_14); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_14); break;
L_fusion_v8_STM32F407ZG__gpioInit_398:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_399
; dir end address is: 4 (R1)
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3100
L_fusion_v8_STM32F407ZG__gpioInit_399:
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3100:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,209 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_2 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_3101:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_3102
; dir end address is: 4 (R1)
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3103
L_fusion_v8_STM32F407ZG__gpioInit_3102:
MOVW	R1, #4
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3103:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,210 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_9 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_3104:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_3105
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3106
L_fusion_v8_STM32F407ZG__gpioInit_3105:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3106:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,211 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_8 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_3107:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_3108
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3109
L_fusion_v8_STM32F407ZG__gpioInit_3108:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3109:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,212 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_3110:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_3111
; dir end address is: 4 (R1)
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3112
L_fusion_v8_STM32F407ZG__gpioInit_3111:
MOVW	R1, #256
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3112:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,213 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_3113:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_3114
; dir end address is: 4 (R1)
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3115
L_fusion_v8_STM32F407ZG__gpioInit_3114:
MOVW	R1, #512
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_3115:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_379
;__fuv8_stm32f407zg_gpio.c,214 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_fusion_v8_STM32F407ZG__gpioInit_3116:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_3
;__fuv8_stm32f407zg_gpio.c,215 :: 		}
L_fusion_v8_STM32F407ZG__gpioInit_378:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_380
CMP	R0, #1
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_383
CMP	R0, #2
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_386
CMP	R0, #3
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_389
CMP	R0, #4
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_392
CMP	R0, #5
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_395
CMP	R0, #6
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_398
CMP	R0, #7
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_3101
CMP	R0, #8
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_3104
CMP	R0, #9
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_3107
CMP	R0, #10
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_3110
CMP	R0, #11
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_3113
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_3116
L_fusion_v8_STM32F407ZG__gpioInit_379:
;__fuv8_stm32f407zg_gpio.c,216 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__fuv8_stm32f407zg_gpio.c,217 :: 		}
L_end__gpioInit_3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of fusion_v8_STM32F407ZG__gpioInit_3
fusion_v8_STM32F407ZG__gpioInit_4:
;__fuv8_stm32f407zg_gpio.c,219 :: 		static T_mikrobus_ret _gpioInit_4(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__fuv8_stm32f407zg_gpio.c,221 :: 		switch( pin )
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4117
; pin end address is: 0 (R0)
;__fuv8_stm32f407zg_gpio.c,223 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_3 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4119:
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4120
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4121
L_fusion_v8_STM32F407ZG__gpioInit_4120:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4121:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,224 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_14); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_14); break;
L_fusion_v8_STM32F407ZG__gpioInit_4122:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4123
; dir end address is: 4 (R1)
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4124
L_fusion_v8_STM32F407ZG__gpioInit_4123:
MOVW	R1, #16384
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4124:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,225 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_13); break;
L_fusion_v8_STM32F407ZG__gpioInit_4125:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4126
; dir end address is: 4 (R1)
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4127
L_fusion_v8_STM32F407ZG__gpioInit_4126:
MOVW	R1, #8192
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4127:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,226 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_10); break;
L_fusion_v8_STM32F407ZG__gpioInit_4128:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4129
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4130
L_fusion_v8_STM32F407ZG__gpioInit_4129:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4130:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,227 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_11); break;
L_fusion_v8_STM32F407ZG__gpioInit_4131:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4132
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4133
L_fusion_v8_STM32F407ZG__gpioInit_4132:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4133:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,228 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_12); break;
L_fusion_v8_STM32F407ZG__gpioInit_4134:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4135
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4136
L_fusion_v8_STM32F407ZG__gpioInit_4135:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4136:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,229 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_15); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_15); break;
L_fusion_v8_STM32F407ZG__gpioInit_4137:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4138
; dir end address is: 4 (R1)
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4139
L_fusion_v8_STM32F407ZG__gpioInit_4138:
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4139:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,230 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_3 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4140:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4141
; dir end address is: 4 (R1)
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4142
L_fusion_v8_STM32F407ZG__gpioInit_4141:
MOVW	R1, #8
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4142:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,231 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4143:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4144
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4145
L_fusion_v8_STM32F407ZG__gpioInit_4144:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4145:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,232 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4146:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4147
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4148
L_fusion_v8_STM32F407ZG__gpioInit_4147:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4148:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,233 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4149:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4150
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4151
L_fusion_v8_STM32F407ZG__gpioInit_4150:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4151:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,234 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_4152:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_4153
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4154
L_fusion_v8_STM32F407ZG__gpioInit_4153:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_4154:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4118
;__fuv8_stm32f407zg_gpio.c,235 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_fusion_v8_STM32F407ZG__gpioInit_4155:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_4
;__fuv8_stm32f407zg_gpio.c,236 :: 		}
L_fusion_v8_STM32F407ZG__gpioInit_4117:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4119
CMP	R0, #1
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4122
CMP	R0, #2
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4125
CMP	R0, #3
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4128
CMP	R0, #4
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4131
CMP	R0, #5
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4134
CMP	R0, #6
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4137
CMP	R0, #7
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4140
CMP	R0, #8
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4143
CMP	R0, #9
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4146
CMP	R0, #10
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4149
CMP	R0, #11
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_4152
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_4155
L_fusion_v8_STM32F407ZG__gpioInit_4118:
;__fuv8_stm32f407zg_gpio.c,237 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__fuv8_stm32f407zg_gpio.c,238 :: 		}
L_end__gpioInit_4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of fusion_v8_STM32F407ZG__gpioInit_4
fusion_v8_STM32F407ZG__gpioInit_5:
;__fuv8_stm32f407zg_gpio.c,240 :: 		static T_mikrobus_ret _gpioInit_5(T_mikrobus_pin pin, T_gpio_dir dir)
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; dir end address is: 4 (R1)
; pin end address is: 0 (R0)
; pin start address is: 0 (R0)
; dir start address is: 4 (R1)
;__fuv8_stm32f407zg_gpio.c,242 :: 		switch( pin )
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5156
; pin end address is: 0 (R0)
;__fuv8_stm32f407zg_gpio.c,244 :: 		case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_1 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5158:
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5159
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5160
L_fusion_v8_STM32F407ZG__gpioInit_5159:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5160:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,245 :: 		case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_15); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_15); break;
L_fusion_v8_STM32F407ZG__gpioInit_5161:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5162
; dir end address is: 4 (R1)
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5163
L_fusion_v8_STM32F407ZG__gpioInit_5162:
MOVW	R1, #32768
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5163:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,246 :: 		case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_7 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5164:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5165
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5166
L_fusion_v8_STM32F407ZG__gpioInit_5165:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOD_BASE+0)
MOVT	R0, #hi_addr(GPIOD_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5166:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,247 :: 		case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_10); break;
L_fusion_v8_STM32F407ZG__gpioInit_5167:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5168
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5169
L_fusion_v8_STM32F407ZG__gpioInit_5168:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5169:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,248 :: 		case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_11); break;
L_fusion_v8_STM32F407ZG__gpioInit_5170:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5171
; dir end address is: 4 (R1)
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5172
L_fusion_v8_STM32F407ZG__gpioInit_5171:
MOVW	R1, #2048
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5172:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,249 :: 		case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_12); break;
L_fusion_v8_STM32F407ZG__gpioInit_5173:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5174
; dir end address is: 4 (R1)
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5175
L_fusion_v8_STM32F407ZG__gpioInit_5174:
MOVW	R1, #4096
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5175:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,250 :: 		case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5176:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5177
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5178
L_fusion_v8_STM32F407ZG__gpioInit_5177:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOB_BASE+0)
MOVT	R0, #hi_addr(GPIOB_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5178:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,251 :: 		case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_10); break;
L_fusion_v8_STM32F407ZG__gpioInit_5179:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5180
; dir end address is: 4 (R1)
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5181
L_fusion_v8_STM32F407ZG__gpioInit_5180:
MOVW	R1, #1024
MOVW	R0, #lo_addr(GPIOE_BASE+0)
MOVT	R0, #hi_addr(GPIOE_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5181:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,252 :: 		case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5182:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5183
; dir end address is: 4 (R1)
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5184
L_fusion_v8_STM32F407ZG__gpioInit_5183:
MOVW	R1, #128
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5184:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,253 :: 		case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5185:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5186
; dir end address is: 4 (R1)
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5187
L_fusion_v8_STM32F407ZG__gpioInit_5186:
MOVW	R1, #64
MOVW	R0, #lo_addr(GPIOC_BASE+0)
MOVT	R0, #hi_addr(GPIOC_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5187:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,254 :: 		case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5188:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5189
; dir end address is: 4 (R1)
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5190
L_fusion_v8_STM32F407ZG__gpioInit_5189:
MOVW	R1, #2
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5190:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,255 :: 		case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
L_fusion_v8_STM32F407ZG__gpioInit_5191:
; dir start address is: 4 (R1)
CMP	R1, #1
IT	NE
BNE	L_fusion_v8_STM32F407ZG__gpioInit_5192
; dir end address is: 4 (R1)
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Input+0
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5193
L_fusion_v8_STM32F407ZG__gpioInit_5192:
MOVW	R1, #1
MOVW	R0, #lo_addr(GPIOF_BASE+0)
MOVT	R0, #hi_addr(GPIOF_BASE+0)
BL	_GPIO_Digital_Output+0
L_fusion_v8_STM32F407ZG__gpioInit_5193:
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5157
;__fuv8_stm32f407zg_gpio.c,256 :: 		default                  : return _MIKROBUS_ERR_PIN;
L_fusion_v8_STM32F407ZG__gpioInit_5194:
MOVS	R0, #1
IT	AL
BAL	L_end__gpioInit_5
;__fuv8_stm32f407zg_gpio.c,257 :: 		}
L_fusion_v8_STM32F407ZG__gpioInit_5156:
; dir start address is: 4 (R1)
; pin start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5158
CMP	R0, #1
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5161
CMP	R0, #2
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5164
CMP	R0, #3
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5167
CMP	R0, #4
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5170
CMP	R0, #5
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5173
CMP	R0, #6
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5176
CMP	R0, #7
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5179
CMP	R0, #8
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5182
CMP	R0, #9
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5185
CMP	R0, #10
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5188
CMP	R0, #11
IT	EQ
BEQ	L_fusion_v8_STM32F407ZG__gpioInit_5191
; pin end address is: 0 (R0)
; dir end address is: 4 (R1)
IT	AL
BAL	L_fusion_v8_STM32F407ZG__gpioInit_5194
L_fusion_v8_STM32F407ZG__gpioInit_5157:
;__fuv8_stm32f407zg_gpio.c,258 :: 		return _MIKROBUS_OK;
MOVS	R0, __MIKROBUS_OK
;__fuv8_stm32f407zg_gpio.c,259 :: 		}
L_end__gpioInit_5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of fusion_v8_STM32F407ZG__gpioInit_5
_mikrobus_gpioInit:
;fusion_v8_STM32F407ZG.c,162 :: 		T_mikrobus_ret mikrobus_gpioInit(T_mikrobus_soc bus, T_mikrobus_pin pin, T_gpio_dir direction)
; direction start address is: 8 (R2)
; pin start address is: 4 (R1)
; bus start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
UXTB	R11, R1
UXTB	R12, R2
; direction end address is: 8 (R2)
; pin end address is: 4 (R1)
; bus end address is: 0 (R0)
; bus start address is: 0 (R0)
; pin start address is: 44 (R11)
; direction start address is: 48 (R12)
;fusion_v8_STM32F407ZG.c,164 :: 		switch( bus )
IT	AL
BAL	L_mikrobus_gpioInit195
; bus end address is: 0 (R0)
;fusion_v8_STM32F407ZG.c,167 :: 		case _MIKROBUS1 : return _gpioInit_1(pin, direction);
L_mikrobus_gpioInit197:
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	fusion_v8_STM32F407ZG__gpioInit_1+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,170 :: 		case _MIKROBUS2 : return _gpioInit_2(pin, direction);
L_mikrobus_gpioInit198:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	fusion_v8_STM32F407ZG__gpioInit_2+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,173 :: 		case _MIKROBUS3 : return _gpioInit_3(pin, direction);
L_mikrobus_gpioInit199:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	fusion_v8_STM32F407ZG__gpioInit_3+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,176 :: 		case _MIKROBUS4 : return _gpioInit_4(pin, direction);
L_mikrobus_gpioInit200:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	fusion_v8_STM32F407ZG__gpioInit_4+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,179 :: 		case _MIKROBUS5 : return _gpioInit_5(pin, direction);
L_mikrobus_gpioInit201:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
UXTB	R1, R12
; direction end address is: 48 (R12)
UXTB	R0, R11
; pin end address is: 44 (R11)
BL	fusion_v8_STM32F407ZG__gpioInit_5+0
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,184 :: 		default : return _MIKROBUS_ERR_BUS;
L_mikrobus_gpioInit202:
MOVS	R0, #1
IT	AL
BAL	L_end_mikrobus_gpioInit
;fusion_v8_STM32F407ZG.c,185 :: 		}
L_mikrobus_gpioInit195:
; direction start address is: 48 (R12)
; pin start address is: 44 (R11)
; bus start address is: 0 (R0)
CMP	R0, #0
IT	EQ
BEQ	L_mikrobus_gpioInit197
CMP	R0, #1
IT	EQ
BEQ	L_mikrobus_gpioInit198
CMP	R0, #2
IT	EQ
BEQ	L_mikrobus_gpioInit199
CMP	R0, #3
IT	EQ
BEQ	L_mikrobus_gpioInit200
CMP	R0, #4
IT	EQ
BEQ	L_mikrobus_gpioInit201
; bus end address is: 0 (R0)
; pin end address is: 44 (R11)
; direction end address is: 48 (R12)
IT	AL
BAL	L_mikrobus_gpioInit202
;fusion_v8_STM32F407ZG.c,187 :: 		}
L_end_mikrobus_gpioInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _mikrobus_gpioInit
