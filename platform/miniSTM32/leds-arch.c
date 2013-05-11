#include "leds.h"
#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"

#define LED1_PIN  GPIO_Pin_8
#define LED2_PIN  GPIO_Pin_2
#define LED1_PORT GPIOA
#define LED2_PORT GPIOD
#define LED1_RCC  RCC_APB2Periph_GPIOA
#define LED2_RCC  RCC_APB2Periph_GPIOD


//BitAction reverse = Bit_SET, reverse2 = Bit_SET;

void leds_arch_init(void)
{
    /* Enable GPIOA clock */
    RCC_APB2PeriphClockCmd(LED1_RCC, ENABLE);
    RCC_APB2PeriphClockCmd(LED2_RCC, ENABLE);

    GPIO_InitTypeDef GPIO_InitStructure;
    /* Configure PA.8 as Output push-pull */
    GPIO_InitStructure.GPIO_Pin = LED1_PIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    /* PD.2 LED2 */
    GPIO_InitStructure.GPIO_Pin = LED2_PIN;
    GPIO_Init(GPIOD, &GPIO_InitStructure);
}

unsigned char leds_arch_get(void)
{
    return (unsigned char) GPIO_ReadOutputDataBit(LED1_PORT, LED1_PIN) | (GPIO_ReadOutputDataBit(LED2_PORT, LED2_PIN) << 1);
}

void leds_arch_set(unsigned char leds)
{
    GPIO_WriteBit(LED1_PORT, LED1_PIN, leds & 0x01);
    GPIO_WriteBit(LED2_PORT, LED2_PIN, (leds & 0x02) >> 1);
}
