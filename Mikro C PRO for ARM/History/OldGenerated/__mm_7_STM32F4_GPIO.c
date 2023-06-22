/*

  This file is part of mikroSDK.

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

#include "__t_STM32.h"

const uint8_t _MIKROBUS_ERR_PIN         = 1;

const uint8_t _GPIO_OUTPUT              = 0;
const uint8_t _GPIO_INPUT               = 1;
                
const uint8_t _MIKROBUS_AN_PIN          = 0;
const uint8_t _MIKROBUS_RST_PIN         = 1;
const uint8_t _MIKROBUS_CS_PIN          = 2;
const uint8_t _MIKROBUS_SCK_PIN         = 3;
const uint8_t _MIKROBUS_MISO_PIN        = 4;
const uint8_t _MIKROBUS_MOSI_PIN        = 5;
const uint8_t _MIKROBUS_PWM_PIN         = 6;
const uint8_t _MIKROBUS_INT_PIN         = 7;
const uint8_t _MIKROBUS_RX_PIN          = 8;
const uint8_t _MIKROBUS_TX_PIN          = 9;
const uint8_t _MIKROBUS_SCL_PIN         = 10;
const uint8_t _MIKROBUS_SDA_PIN         = 11;

static uint8_t _getAN_1  ()                         { return GPIOA_IDR.B4 ;  }
static uint8_t _getRST_1 ()                         { return GPIOC_IDR.B3 ;  }
static uint8_t _getCS_1  ()                         { return GPIOA_IDR.B15;  }
static uint8_t _getSCK_1 ()                         { return GPIOA_IDR.B5 ;  }
static uint8_t _getMISO_1()                         { return GPIOA_IDR.B6 ;  }
static uint8_t _getMOSI_1()                         { return GPIOB_IDR.B5 ;  }
static uint8_t _getPWM_1 ()                         { return GPIOD_IDR.B12;  }
static uint8_t _getINT_1 ()                         { return GPIOE_IDR.B0 ;  }
static uint8_t _getRX_1  ()                         { return GPIOA_IDR.B3 ;  }
static uint8_t _getTX_1  ()                         { return GPIOD_IDR.B5 ;  }
static uint8_t _getSCL_1 ()                         { return GPIOF_IDR.B1 ;  }
static uint8_t _getSDA_1 ()                         { return GPIOF_IDR.B0 ;  }
static void _setAN_1  (uint8_t value)         { GPIOA_ODR.B4  = value; }
static void _setRST_1 (uint8_t value)         { GPIOC_ODR.B3  = value; }
static void _setCS_1  (uint8_t value)         { GPIOA_ODR.B15 = value; }
static void _setSCK_1 (uint8_t value)         { GPIOA_ODR.B5  = value; }
static void _setMISO_1(uint8_t value)         { GPIOA_ODR.B6  = value; }
static void _setMOSI_1(uint8_t value)         { GPIOB_ODR.B5  = value; }
static void _setPWM_1 (uint8_t value)         { GPIOD_ODR.B12 = value; }
static void _setINT_1 (uint8_t value)         { GPIOE_ODR.B0  = value; }
static void _setRX_1  (uint8_t value)         { GPIOA_ODR.B3  = value; }
static void _setTX_1  (uint8_t value)         { GPIOD_ODR.B5  = value; }
static void _setSCL_1 (uint8_t value)         { GPIOF_ODR.B1  = value; }
static void _setSDA_1 (uint8_t value)         { GPIOF_ODR.B0  = value; }

static uint8_t _getAN_2  ()                         { return GPIOB_IDR.B0;  }
static uint8_t _getRST_2 ()                         { return GPIOE_IDR.B4;  }
static uint8_t _getCS_2  ()                         { return GPIOB_IDR.B12; }
static uint8_t _getSCK_2 ()                         { return GPIOA_IDR.B5;  }
static uint8_t _getMISO_2()                         { return GPIOA_IDR.B6;  }
static uint8_t _getMOSI_2()                         { return GPIOB_IDR.B5;  }
static uint8_t _getPWM_2 ()                         { return GPIOD_IDR.B13; }
static uint8_t _getINT_2 ()                         { return GPIOE_IDR.B1;  }
static uint8_t _getRX_2  ()                         { return GPIOA_IDR.B3;  }
static uint8_t _getTX_2  ()                         { return GPIOD_IDR.B5;  }
static uint8_t _getSCL_2 ()                         { return GPIOF_IDR.B1;  }
static uint8_t _getSDA_2 ()                         { return GPIOF_IDR.B0;  }
static void _setAN_2  (uint8_t value)         { GPIOB_ODR.B0  = value; }
static void _setRST_2 (uint8_t value)         { GPIOE_ODR.B4  = value; }
static void _setCS_2  (uint8_t value)         { GPIOB_ODR.B12 = value; }
static void _setSCK_2 (uint8_t value)         { GPIOA_ODR.B5  = value; }
static void _setMISO_2(uint8_t value)         { GPIOA_ODR.B6  = value; }
static void _setMOSI_2(uint8_t value)         { GPIOB_ODR.B5  = value; }
static void _setPWM_2 (uint8_t value)         { GPIOD_ODR.B13 = value; }
static void _setINT_2 (uint8_t value)         { GPIOE_ODR.B1  = value; }
static void _setRX_2  (uint8_t value)         { GPIOA_ODR.B3  = value; }
static void _setTX_2  (uint8_t value)         { GPIOD_ODR.B5  = value; }
static void _setSCL_2 (uint8_t value)         { GPIOF_ODR.B1  = value; }
static void _setSDA_2 (uint8_t value)         { GPIOF_ODR.B0  = value; }

static uint8_t _getAN_3  ()                         { return GPIOB_IDR.B1 ;   }
static uint8_t _getRST_3 ()                         { return GPIOC_IDR.B13;   }
static uint8_t _getCS_3  ()                         { return GPIOB_IDR.B13;   }
static uint8_t _getSCK_3 ()                         { return GPIOA_IDR.B5 ;   }
static uint8_t _getMISO_3()                         { return GPIOA_IDR.B6 ;   }
static uint8_t _getMOSI_3()                         { return GPIOB_IDR.B5 ;   }
static uint8_t _getPWM_3 ()                         { return GPIOD_IDR.B14;   }
static uint8_t _getINT_3 ()                         { return GPIOE_IDR.B2 ;   }
static uint8_t _getRX_3  ()                         { return GPIOA_IDR.B3 ;   }
static uint8_t _getTX_3  ()                         { return GPIOD_IDR.B5 ;   }
static uint8_t _getSCL_3 ()                         { return GPIOF_IDR.B1 ;   }
static uint8_t _getSDA_3 ()                         { return GPIOF_IDR.B0 ;   }
static void _setAN_3  (uint8_t value)         { GPIOB_ODR.B1 = value; }
static void _setRST_3 (uint8_t value)         { GPIOC_ODR.B13= value; }
static void _setCS_3  (uint8_t value)         { GPIOB_ODR.B13= value; }
static void _setSCK_3 (uint8_t value)         { GPIOA_ODR.B5 = value; }
static void _setMISO_3(uint8_t value)         { GPIOA_ODR.B6 = value; }
static void _setMOSI_3(uint8_t value)         { GPIOB_ODR.B5 = value; }
static void _setPWM_3 (uint8_t value)         { GPIOD_ODR.B14= value; }
static void _setINT_3 (uint8_t value)         { GPIOE_ODR.B2 = value; }
static void _setRX_3  (uint8_t value)         { GPIOA_ODR.B3 = value; }
static void _setTX_3  (uint8_t value)         { GPIOD_ODR.B5 = value; }
static void _setSCL_3 (uint8_t value)         { GPIOF_ODR.B1 = value; }
static void _setSDA_3 (uint8_t value)         { GPIOF_ODR.B0 = value; }

static uint8_t _getAN_4  ()                         { return GPIOC_IDR.B0 ;  }
static uint8_t _getRST_4 ()                         { return GPIOF_IDR.B7 ;  }
static uint8_t _getCS_4  ()                         { return GPIOB_IDR.B15;  }
static uint8_t _getSCK_4 ()                         { return GPIOA_IDR.B5 ;  }
static uint8_t _getMISO_4()                         { return GPIOA_IDR.B6 ;  }
static uint8_t _getMOSI_4()                         { return GPIOB_IDR.B5 ;  }
static uint8_t _getPWM_4 ()                         { return GPIOD_IDR.B15;  }
static uint8_t _getINT_4 ()                         { return GPIOE_IDR.B3 ;  }
static uint8_t _getRX_4  ()                         { return GPIOA_IDR.B3 ;  }
static uint8_t _getTX_4  ()                         { return GPIOD_IDR.B5 ;  }
static uint8_t _getSCL_4 ()                         { return GPIOF_IDR.B1 ;  }
static uint8_t _getSDA_4 ()                         { return GPIOF_IDR.B0 ;  }
static void _setAN_4  (uint8_t value)         { GPIOC_ODR.B0   = value; }
static void _setRST_4 (uint8_t value)         { GPIOF_ODR.B7   = value; }
static void _setCS_4  (uint8_t value)         { GPIOB_ODR.B15  = value; }
static void _setSCK_4 (uint8_t value)         { GPIOA_ODR.B5   = value; }
static void _setMISO_4(uint8_t value)         { GPIOA_ODR.B6   = value; }
static void _setMOSI_4(uint8_t value)         { GPIOB_ODR.B5   = value; }
static void _setPWM_4 (uint8_t value)         { GPIOD_ODR.B15  = value; }
static void _setINT_4 (uint8_t value)         { GPIOE_ODR.B3   = value; }
static void _setRX_4  (uint8_t value)         { GPIOA_ODR.B3   = value; }
static void _setTX_4  (uint8_t value)         { GPIOD_ODR.B5   = value; }
static void _setSCL_4 (uint8_t value)         { GPIOF_ODR.B1   = value; }
static void _setSDA_4 (uint8_t value)         { GPIOF_ODR.B0   = value; }

static uint8_t _getAN_5  ()                         { return GPIOC_IDR.B2 ;  }
static uint8_t _getRST_5 ()                         { return GPIOF_IDR.B2 ;  }
static uint8_t _getCS_5  ()                         { return GPIOB_IDR.B14;  }
static uint8_t _getSCK_5 ()                         { return GPIOA_IDR.B5 ;  }
static uint8_t _getMISO_5()                         { return GPIOA_IDR.B6 ;  }
static uint8_t _getMOSI_5()                         { return GPIOB_IDR.B5 ;  }
static uint8_t _getPWM_5 ()                         { return GPIOE_IDR.B5 ;  }
static uint8_t _getINT_5 ()                         { return GPIOE_IDR.B6 ;  }
static uint8_t _getRX_5  ()                         { return GPIOC_IDR.B7 ;  }
static uint8_t _getTX_5  ()                         { return GPIOC_IDR.B6 ;  }
static uint8_t _getSCL_5 ()                         { return GPIOF_IDR.B1 ;  }
static uint8_t _getSDA_5 ()                         { return GPIOF_IDR.B0 ;  }
static void _setAN_5  (uint8_t value)         { GPIOC_ODR.B2   = value; }
static void _setRST_5 (uint8_t value)         { GPIOF_ODR.B2   = value; }
static void _setCS_5  (uint8_t value)         { GPIOB_ODR.B14  = value; }
static void _setSCK_5 (uint8_t value)         { GPIOA_ODR.B5   = value; }
static void _setMISO_5(uint8_t value)         { GPIOA_ODR.B6   = value; }
static void _setMOSI_5(uint8_t value)         { GPIOB_ODR.B5   = value; }
static void _setPWM_5 (uint8_t value)         { GPIOE_ODR.B5   = value; }
static void _setINT_5 (uint8_t value)         { GPIOE_ODR.B6   = value; }
static void _setRX_5  (uint8_t value)         { GPIOC_ODR.B7   = value; }
static void _setTX_5  (uint8_t value)         { GPIOC_ODR.B6   = value; }
static void _setSCL_5 (uint8_t value)         { GPIOF_ODR.B1   = value; }
static void _setSDA_5 (uint8_t value)         { GPIOF_ODR.B0   = value; }



static T_mikrobus_ret _gpioInit_1(T_mikrobus_pin pin, T_gpio_dir dir)
{
    switch( pin ) 
    {
        case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_4 ); break;
        case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_3 ); break;
        case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_15); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_15); break;
        case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_12); break;
        case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_0 ); break;
        case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
        case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
        case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
        default                  : return _MIKROBUS_ERR_PIN;
    }
    return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_2(T_mikrobus_pin pin, T_gpio_dir dir)
{
    switch( pin ) 
    {
        case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0 ) ; break;
        case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_4 ) ; break;
        case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_12); break;
        case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_13) ; break;
        case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_1 ) ; break;
        case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
        case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
        case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
        default                  : return _MIKROBUS_ERR_PIN;
    }
    return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_3(T_mikrobus_pin pin, T_gpio_dir dir)
{
    switch( pin ) 
    {
        case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_1 ) ; break;
        case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_13 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_13) ; break;
        case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_13 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_13); break;
        case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_14 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_14) ; break;
        case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_2  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_2 ) ; break;
        case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
        case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
        case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
        default                  : return _MIKROBUS_ERR_PIN;
    }
    return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_4(T_mikrobus_pin pin, T_gpio_dir dir)
{
    switch( pin ) 
    {
        case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_0 ) ; break;
        case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_7  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_7 ) ; break;
        case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_15 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_15); break;
        case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_15 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_15) ; break;
        case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_3  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_3 ) ; break;
        case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
        case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
        case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
        default                  : return _MIKROBUS_ERR_PIN;
    }
    return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_5(T_mikrobus_pin pin, T_gpio_dir dir)
{
    switch( pin ) 
    {
        case _MIKROBUS_AN_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_2  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_2 ) ; break;
        case _MIKROBUS_RST_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_2  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_2 ) ; break;
        case _MIKROBUS_CS_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_14 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_14); break;
        case _MIKROBUS_SCK_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_MISO_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_MOSI_PIN  : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
        case _MIKROBUS_PWM_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_5  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_5 ) ; break;
        case _MIKROBUS_INT_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_6 ) ; break;
        case _MIKROBUS_RX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
        case _MIKROBUS_TX_PIN    : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6  ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
        case _MIKROBUS_SCL_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
        case _MIKROBUS_SDA_PIN   : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0  ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
        default                  : return _MIKROBUS_ERR_PIN;
    }
    return _MIKROBUS_OK;
}

/* -------------------------------------------------------------------------- */
/*

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the MikroElektonika.

4. Neither the name of the MikroElektonika nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY MIKROELEKTRONIKA ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL MIKROELEKTRONIKA BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------- */