#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for ARM/Packages/mikroBUS BDF API/Uses/fusion_v8_STM32F407ZG.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__t_stm32.h"
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
#line 16 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__t_stm32.h"
typedef uint8_t T_gpio_dir;
typedef uint8_t T_mikrobus_soc;
typedef uint8_t T_mikrobus_pin;
typedef uint8_t T_mikrobus_ret;




typedef void (*T_gpio_setFp) (uint8_t);
typedef uint8_t (*T_gpio_getFp) ();
#line 53 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__t_stm32.h"
typedef struct
{
 T_gpio_setFp gpioSet[ 12 ];
 T_gpio_getFp gpioGet[ 12 ];

}T_gpio_obj;
#line 39 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _GPIO_OUTPUT;
extern const uint8_t _GPIO_INPUT;

extern const uint8_t _MIKROBUS_AN_PIN;
extern const uint8_t _MIKROBUS_RST_PIN;
extern const uint8_t _MIKROBUS_CS_PIN;
extern const uint8_t _MIKROBUS_SCK_PIN;
extern const uint8_t _MIKROBUS_MISO_PIN;
extern const uint8_t _MIKROBUS_MOSI_PIN;
extern const uint8_t _MIKROBUS_PWM_PIN;
extern const uint8_t _MIKROBUS_INT_PIN;
extern const uint8_t _MIKROBUS_RX_PIN;
extern const uint8_t _MIKROBUS_TX_PIN;
extern const uint8_t _MIKROBUS_SCL_PIN;
extern const uint8_t _MIKROBUS_SDA_PIN;

extern const uint8_t _MIKROBUS_OK;
extern const uint8_t _MIKROBUS_ERR_BUS;
extern const uint8_t _MIKROBUS_ERR_PIN;
#line 78 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _MIKROBUS1;

extern const T_gpio_obj _MIKROBUS1_GPIO;
#line 94 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _MIKROBUS2;

extern const T_gpio_obj _MIKROBUS2_GPIO;
#line 110 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _MIKROBUS3;

extern const T_gpio_obj _MIKROBUS3_GPIO;
#line 126 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _MIKROBUS4;

extern const T_gpio_obj _MIKROBUS4_GPIO;
#line 142 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
extern const uint8_t _MIKROBUS5;

extern const T_gpio_obj _MIKROBUS5_GPIO;
#line 188 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/fusion_v8_stm32f407zg.h"
T_mikrobus_ret mikrobus_gpioInit(T_mikrobus_soc bus, T_mikrobus_pin pin, T_gpio_dir direction);
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__fuv8_stm32f407zg_gpio.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__t_stm32.h"
#line 13 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/packages/mikrobus bdf api/uses/__fuv8_stm32f407zg_gpio.c"
const uint8_t _MIKROBUS_ERR_PIN = 1;

const uint8_t _GPIO_OUTPUT = 0;
const uint8_t _GPIO_INPUT = 1;

const uint8_t _MIKROBUS_AN_PIN = 0;
const uint8_t _MIKROBUS_RST_PIN = 1;
const uint8_t _MIKROBUS_CS_PIN = 2;
const uint8_t _MIKROBUS_SCK_PIN = 3;
const uint8_t _MIKROBUS_MISO_PIN = 4;
const uint8_t _MIKROBUS_MOSI_PIN = 5;
const uint8_t _MIKROBUS_PWM_PIN = 6;
const uint8_t _MIKROBUS_INT_PIN = 7;
const uint8_t _MIKROBUS_RX_PIN = 8;
const uint8_t _MIKROBUS_TX_PIN = 9;
const uint8_t _MIKROBUS_SCL_PIN = 10;
const uint8_t _MIKROBUS_SDA_PIN = 11;

static uint8_t _getAN_1 () { return GPIOA_IDR.B3 ; }
static uint8_t _getRST_1 () { return GPIOE_IDR.B11; }
static uint8_t _getCS_1 () { return GPIOA_IDR.B4 ; }
static uint8_t _getSCK_1 () { return GPIOA_IDR.B5 ; }
static uint8_t _getMISO_1() { return GPIOA_IDR.B6 ; }
static uint8_t _getMOSI_1() { return GPIOB_IDR.B5 ; }
static uint8_t _getPWM_1 () { return GPIOD_IDR.B12; }
static uint8_t _getINT_1 () { return GPIOD_IDR.B3 ; }
static uint8_t _getRX_1 () { return GPIOB_IDR.B7 ; }
static uint8_t _getTX_1 () { return GPIOB_IDR.B6 ; }
static uint8_t _getSCL_1 () { return GPIOB_IDR.B8 ; }
static uint8_t _getSDA_1 () { return GPIOB_IDR.B9 ; }
static void _setAN_1 (uint8_t value) { GPIOA_ODR.B3 = value; }
static void _setRST_1 (uint8_t value) { GPIOE_ODR.B11 = value; }
static void _setCS_1 (uint8_t value) { GPIOA_ODR.B4 = value; }
static void _setSCK_1 (uint8_t value) { GPIOA_ODR.B5 = value; }
static void _setMISO_1(uint8_t value) { GPIOA_ODR.B6 = value; }
static void _setMOSI_1(uint8_t value) { GPIOB_ODR.B5 = value; }
static void _setPWM_1 (uint8_t value) { GPIOD_ODR.B12 = value; }
static void _setINT_1 (uint8_t value) { GPIOD_ODR.B3 = value; }
static void _setRX_1 (uint8_t value) { GPIOB_ODR.B7 = value; }
static void _setTX_1 (uint8_t value) { GPIOB_ODR.B6 = value; }
static void _setSCL_1 (uint8_t value) { GPIOB_ODR.B8 = value; }
static void _setSDA_1 (uint8_t value) { GPIOB_ODR.B9 = value; }

static uint8_t _getAN_2 () { return GPIOC_IDR.B0 ; }
static uint8_t _getRST_2 () { return GPIOE_IDR.B12; }
static uint8_t _getCS_2 () { return GPIOB_IDR.B2 ; }
static uint8_t _getSCK_2 () { return GPIOA_IDR.B5 ; }
static uint8_t _getMISO_2() { return GPIOA_IDR.B6 ; }
static uint8_t _getMOSI_2() { return GPIOB_IDR.B5 ; }
static uint8_t _getPWM_2 () { return GPIOD_IDR.B13; }
static uint8_t _getINT_2 () { return GPIOD_IDR.B4 ; }
static uint8_t _getRX_2 () { return GPIOD_IDR.B6 ; }
static uint8_t _getTX_2 () { return GPIOD_IDR.B5 ; }
static uint8_t _getSCL_2 () { return GPIOB_IDR.B8 ; }
static uint8_t _getSDA_2 () { return GPIOB_IDR.B9 ; }
static void _setAN_2 (uint8_t value) { GPIOC_ODR.B0 = value; }
static void _setRST_2 (uint8_t value) { GPIOE_ODR.B12 = value; }
static void _setCS_2 (uint8_t value) { GPIOB_ODR.B2 = value; }
static void _setSCK_2 (uint8_t value) { GPIOA_ODR.B5 = value; }
static void _setMISO_2(uint8_t value) { GPIOA_ODR.B6 = value; }
static void _setMOSI_2(uint8_t value) { GPIOB_ODR.B5 = value; }
static void _setPWM_2 (uint8_t value) { GPIOD_ODR.B13 = value; }
static void _setINT_2 (uint8_t value) { GPIOD_ODR.B4 = value; }
static void _setRX_2 (uint8_t value) { GPIOD_ODR.B6 = value; }
static void _setTX_2 (uint8_t value) { GPIOD_ODR.B5 = value; }
static void _setSCL_2 (uint8_t value) { GPIOB_ODR.B8 = value; }
static void _setSDA_2 (uint8_t value) { GPIOB_ODR.B9 = value; }

static uint8_t _getAN_3 () { return GPIOC_IDR.B2 ; }
static uint8_t _getRST_3 () { return GPIOE_IDR.B13; }
static uint8_t _getCS_3 () { return GPIOB_IDR.B4 ; }
static uint8_t _getSCK_3 () { return GPIOA_IDR.B5 ; }
static uint8_t _getMISO_3() { return GPIOA_IDR.B6 ; }
static uint8_t _getMOSI_3() { return GPIOB_IDR.B5 ; }
static uint8_t _getPWM_3 () { return GPIOD_IDR.B14; }
static uint8_t _getINT_3 () { return GPIOD_IDR.B2 ; }
static uint8_t _getRX_3 () { return GPIOD_IDR.B9 ; }
static uint8_t _getTX_3 () { return GPIOD_IDR.B8 ; }
static uint8_t _getSCL_3 () { return GPIOB_IDR.B8 ; }
static uint8_t _getSDA_3 () { return GPIOB_IDR.B9 ; }
static void _setAN_3 (uint8_t value) { GPIOC_ODR.B2 = value; }
static void _setRST_3 (uint8_t value) { GPIOE_ODR.B13 = value; }
static void _setCS_3 (uint8_t value) { GPIOB_ODR.B4 = value; }
static void _setSCK_3 (uint8_t value) { GPIOA_ODR.B5 = value; }
static void _setMISO_3(uint8_t value) { GPIOA_ODR.B6 = value; }
static void _setMOSI_3(uint8_t value) { GPIOB_ODR.B5 = value; }
static void _setPWM_3 (uint8_t value) { GPIOD_ODR.B14 = value; }
static void _setINT_3 (uint8_t value) { GPIOD_ODR.B2 = value; }
static void _setRX_3 (uint8_t value) { GPIOD_ODR.B9 = value; }
static void _setTX_3 (uint8_t value) { GPIOD_ODR.B8 = value; }
static void _setSCL_3 (uint8_t value) { GPIOB_ODR.B8 = value; }
static void _setSDA_3 (uint8_t value) { GPIOB_ODR.B9 = value; }

static uint8_t _getAN_4 () { return GPIOC_IDR.B3 ; }
static uint8_t _getRST_4 () { return GPIOE_IDR.B14; }
static uint8_t _getCS_4 () { return GPIOC_IDR.B13; }
static uint8_t _getSCK_4 () { return GPIOC_IDR.B10; }
static uint8_t _getMISO_4() { return GPIOC_IDR.B11; }
static uint8_t _getMOSI_4() { return GPIOC_IDR.B12; }
static uint8_t _getPWM_4 () { return GPIOD_IDR.B15; }
static uint8_t _getINT_4 () { return GPIOF_IDR.B3 ; }
static uint8_t _getRX_4 () { return GPIOC_IDR.B7 ; }
static uint8_t _getTX_4 () { return GPIOC_IDR.B6 ; }
static uint8_t _getSCL_4 () { return GPIOF_IDR.B1 ; }
static uint8_t _getSDA_4 () { return GPIOF_IDR.B0 ; }
static void _setAN_4 (uint8_t value) { GPIOC_ODR.B3 = value; }
static void _setRST_4 (uint8_t value) { GPIOE_ODR.B14 = value; }
static void _setCS_4 (uint8_t value) { GPIOC_ODR.B13 = value; }
static void _setSCK_4 (uint8_t value) { GPIOC_ODR.B10 = value; }
static void _setMISO_4(uint8_t value) { GPIOC_ODR.B11 = value; }
static void _setMOSI_4(uint8_t value) { GPIOC_ODR.B12 = value; }
static void _setPWM_4 (uint8_t value) { GPIOD_ODR.B15 = value; }
static void _setINT_4 (uint8_t value) { GPIOF_ODR.B3 = value; }
static void _setRX_4 (uint8_t value) { GPIOC_ODR.B7 = value; }
static void _setTX_4 (uint8_t value) { GPIOC_ODR.B6 = value; }
static void _setSCL_4 (uint8_t value) { GPIOF_ODR.B1 = value; }
static void _setSDA_4 (uint8_t value) { GPIOF_ODR.B0 = value; }

static uint8_t _getAN_5 () { return GPIOB_IDR.B1 ; }
static uint8_t _getRST_5 () { return GPIOE_IDR.B15; }
static uint8_t _getCS_5 () { return GPIOD_IDR.B7 ; }
static uint8_t _getSCK_5 () { return GPIOC_IDR.B10; }
static uint8_t _getMISO_5() { return GPIOC_IDR.B11; }
static uint8_t _getMOSI_5() { return GPIOC_IDR.B12; }
static uint8_t _getPWM_5 () { return GPIOB_IDR.B0 ; }
static uint8_t _getINT_5 () { return GPIOE_IDR.B10; }
static uint8_t _getRX_5 () { return GPIOC_IDR.B7 ; }
static uint8_t _getTX_5 () { return GPIOC_IDR.B6 ; }
static uint8_t _getSCL_5 () { return GPIOF_IDR.B1 ; }
static uint8_t _getSDA_5 () { return GPIOF_IDR.B0 ; }
static void _setAN_5 (uint8_t value) { GPIOB_ODR.B1 = value; }
static void _setRST_5 (uint8_t value) { GPIOE_ODR.B15 = value; }
static void _setCS_5 (uint8_t value) { GPIOD_ODR.B7 = value; }
static void _setSCK_5 (uint8_t value) { GPIOC_ODR.B10 = value; }
static void _setMISO_5(uint8_t value) { GPIOC_ODR.B11 = value; }
static void _setMOSI_5(uint8_t value) { GPIOC_ODR.B12 = value; }
static void _setPWM_5 (uint8_t value) { GPIOB_ODR.B0 = value; }
static void _setINT_5 (uint8_t value) { GPIOE_ODR.B10 = value; }
static void _setRX_5 (uint8_t value) { GPIOC_ODR.B7 = value; }
static void _setTX_5 (uint8_t value) { GPIOC_ODR.B6 = value; }
static void _setSCL_5 (uint8_t value) { GPIOF_ODR.B1 = value; }
static void _setSDA_5 (uint8_t value) { GPIOF_ODR.B0 = value; }

static T_mikrobus_ret _gpioInit_1(T_mikrobus_pin pin, T_gpio_dir dir)
{
 switch( pin )
 {
 case _MIKROBUS_AN_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_3 ); break;
 case _MIKROBUS_RST_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_11); break;
 case _MIKROBUS_CS_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_4 ); break;
 case _MIKROBUS_SCK_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_MISO_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_MOSI_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_PWM_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_12); break;
 case _MIKROBUS_INT_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_3 ); break;
 case _MIKROBUS_RX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_7 ); break;
 case _MIKROBUS_TX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_SCL_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
 case _MIKROBUS_SDA_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
 default : return _MIKROBUS_ERR_PIN;
 }
 return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_2(T_mikrobus_pin pin, T_gpio_dir dir)
{
 switch( pin )
 {
 case _MIKROBUS_AN_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_0 ); break;
 case _MIKROBUS_RST_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_12); break;
 case _MIKROBUS_CS_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_2 ); break;
 case _MIKROBUS_SCK_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_MISO_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_MOSI_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_PWM_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_13); break;
 case _MIKROBUS_INT_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_4 ); break;
 case _MIKROBUS_RX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_TX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_SCL_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
 case _MIKROBUS_SDA_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
 default : return _MIKROBUS_ERR_PIN;
 }
 return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_3(T_mikrobus_pin pin, T_gpio_dir dir)
{
 switch( pin )
 {
 case _MIKROBUS_AN_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_2 ); break;
 case _MIKROBUS_RST_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_13); break;
 case _MIKROBUS_CS_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_4 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_4 ); break;
 case _MIKROBUS_SCK_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_MISO_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOA_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOA_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_MOSI_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_5 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_5 ); break;
 case _MIKROBUS_PWM_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_14); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_14); break;
 case _MIKROBUS_INT_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_2 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_2 ); break;
 case _MIKROBUS_RX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_9 ); break;
 case _MIKROBUS_TX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_8 ); break;
 case _MIKROBUS_SCL_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_8 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_8 ); break;
 case _MIKROBUS_SDA_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_9 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_9 ); break;
 default : return _MIKROBUS_ERR_PIN;
 }
 return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_4(T_mikrobus_pin pin, T_gpio_dir dir)
{
 switch( pin )
 {
 case _MIKROBUS_AN_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_3 ); break;
 case _MIKROBUS_RST_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_14); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_14); break;
 case _MIKROBUS_CS_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_13); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_13); break;
 case _MIKROBUS_SCK_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_10); break;
 case _MIKROBUS_MISO_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_11); break;
 case _MIKROBUS_MOSI_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_12); break;
 case _MIKROBUS_PWM_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_15); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_15); break;
 case _MIKROBUS_INT_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_3 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_3 ); break;
 case _MIKROBUS_RX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
 case _MIKROBUS_TX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_SCL_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
 case _MIKROBUS_SDA_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
 default : return _MIKROBUS_ERR_PIN;
 }
 return _MIKROBUS_OK;
}

static T_mikrobus_ret _gpioInit_5(T_mikrobus_pin pin, T_gpio_dir dir)
{
 switch( pin )
 {
 case _MIKROBUS_AN_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_1 ); break;
 case _MIKROBUS_RST_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_15); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_15); break;
 case _MIKROBUS_CS_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOD_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOD_BASE, _GPIO_PINMASK_7 ); break;
 case _MIKROBUS_SCK_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_10); break;
 case _MIKROBUS_MISO_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_11); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_11); break;
 case _MIKROBUS_MOSI_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_12); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_12); break;
 case _MIKROBUS_PWM_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOB_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOB_BASE, _GPIO_PINMASK_0 ); break;
 case _MIKROBUS_INT_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOE_BASE, _GPIO_PINMASK_10); else GPIO_Digital_Output(&GPIOE_BASE, _GPIO_PINMASK_10); break;
 case _MIKROBUS_RX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_7 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_7 ); break;
 case _MIKROBUS_TX_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOC_BASE, _GPIO_PINMASK_6 ); else GPIO_Digital_Output(&GPIOC_BASE, _GPIO_PINMASK_6 ); break;
 case _MIKROBUS_SCL_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_1 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_1 ); break;
 case _MIKROBUS_SDA_PIN : if(dir == _GPIO_INPUT) GPIO_Digital_Input(&GPIOF_BASE, _GPIO_PINMASK_0 ); else GPIO_Digital_Output(&GPIOF_BASE, _GPIO_PINMASK_0 ); break;
 default : return _MIKROBUS_ERR_PIN;
 }
 return _MIKROBUS_OK;
}
#line 38 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for ARM/Packages/mikroBUS BDF API/Uses/fusion_v8_STM32F407ZG.c"
const uint8_t _MIKROBUS_OK = 0;
const uint8_t _MIKROBUS_ERR_BUS = 1;





const uint8_t _MIKROBUS1 = 0;

const T_gpio_obj _MIKROBUS1_GPIO =
{
 {
 _setAN_1, _setRST_1, _setCS_1, _setSCK_1, _setMISO_1, _setMOSI_1,
 _setPWM_1, _setINT_1, _setRX_1, _setTX_1, _setSCL_1, _setSDA_1
 },
 {
 _getAN_1, _getRST_1, _getCS_1, _getSCK_1, _getMISO_1, _getMOSI_1,
 _getPWM_1, _getINT_1, _getRX_1, _getTX_1, _getSCL_1, _getSDA_1
 }
};



const uint8_t _MIKROBUS2 = 1;

const T_gpio_obj _MIKROBUS2_GPIO =
{
 {
 _setAN_2, _setRST_2, _setCS_2, _setSCK_2, _setMISO_2, _setMOSI_2,
 _setPWM_2, _setINT_2, _setRX_2, _setTX_2, _setSCL_2, _setSDA_2
 },
 {
 _getAN_2, _getRST_2, _getCS_2, _getSCK_2, _getMISO_2, _getMOSI_2,
 _getPWM_2, _getINT_2, _getRX_2, _getTX_2, _getSCL_2, _getSDA_2
 }
};



const uint8_t _MIKROBUS3 = 2;

const T_gpio_obj _MIKROBUS3_GPIO =
{
 {
 _setAN_3, _setRST_3, _setCS_3, _setSCK_3, _setMISO_3, _setMOSI_3,
 _setPWM_3, _setINT_3, _setRX_3, _setTX_3, _setSCL_3, _setSDA_3
 },
 {
 _getAN_3, _getRST_3, _getCS_3, _getSCK_3, _getMISO_3, _getMOSI_3,
 _getPWM_3, _getINT_3, _getRX_3, _getTX_3, _getSCL_3, _getSDA_3
 }
};



const uint8_t _MIKROBUS4 = 3;

const T_gpio_obj _MIKROBUS4_GPIO =
{
 {
 _setAN_4, _setRST_4, _setCS_4, _setSCK_4, _setMISO_4, _setMOSI_4,
 _setPWM_4, _setINT_4, _setRX_4, _setTX_4, _setSCL_4, _setSDA_4
 },
 {
 _getAN_4, _getRST_4, _getCS_4, _getSCK_4, _getMISO_4, _getMOSI_4,
 _getPWM_4, _getINT_4, _getRX_4, _getTX_4, _getSCL_4, _getSDA_4
 }
};



const uint8_t _MIKROBUS5 = 4;

const T_gpio_obj _MIKROBUS5_GPIO =
{
 {
 _setAN_5, _setRST_5, _setCS_5, _setSCK_5, _setMISO_5, _setMOSI_5,
 _setPWM_5, _setINT_5, _setRX_5, _setTX_5, _setSCL_5, _setSDA_5
 },
 {
 _getAN_5, _getRST_5, _getCS_5, _getSCK_5, _getMISO_5, _getMOSI_5,
 _getPWM_5, _getINT_5, _getRX_5, _getTX_5, _getSCL_5, _getSDA_5
 }
};
#line 162 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for ARM/Packages/mikroBUS BDF API/Uses/fusion_v8_STM32F407ZG.c"
T_mikrobus_ret mikrobus_gpioInit(T_mikrobus_soc bus, T_mikrobus_pin pin, T_gpio_dir direction)
{
 switch( bus )
 {

 case _MIKROBUS1 : return _gpioInit_1(pin, direction);


 case _MIKROBUS2 : return _gpioInit_2(pin, direction);


 case _MIKROBUS3 : return _gpioInit_3(pin, direction);


 case _MIKROBUS4 : return _gpioInit_4(pin, direction);


 case _MIKROBUS5 : return _gpioInit_5(pin, direction);
#line 184 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for ARM/Packages/mikroBUS BDF API/Uses/fusion_v8_STM32F407ZG.c"
 default : return _MIKROBUS_ERR_BUS;
 }
 return _MIKROBUS_OK;
}
