#include "key.h"
#include "misc.h"

#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"

EXTI_InitTypeDef   EXTI_InitStructure;
GPIO_InitTypeDef   GPIO_InitStructure;
NVIC_InitTypeDef   NVIC_InitStructure;

/**
  * @brief  Configure PA.13 in interrupt mode
  * @param  None
  * @retval None
  */
void EXTIX_Init(void)
{
        GPIO_InitTypeDef GPIO_InitStructure;
        EXTI_InitTypeDef EXTI_InitStructure;
        NVIC_InitTypeDef NVIC_InitStructure;


        GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable , ENABLE);	//关闭jtag

        RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_AFIO,ENABLE);

  //初始化 KEY0-->GPIOA.13,KEY1-->GPIOA.15  上拉输入
        GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_13|GPIO_Pin_15;
        GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        GPIO_Init(GPIOA, &GPIO_InitStructure);
 // 初始化 WK_UP-->GPIOA.0        下拉输入
        GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_0;
        GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
        GPIO_Init(GPIOA, &GPIO_InitStructure);

  //GPIOA.13 中断线以及中断初始化配置
        GPIO_EXTILineConfig(GPIO_PortSourceGPIOA,GPIO_PinSource13);

        EXTI_InitStructure.EXTI_Line=EXTI_Line13;
        EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
        EXTI_InitStructure.EXTI_LineCmd = ENABLE;
        EXTI_Init(&EXTI_InitStructure);         //根据EXTI_InitStruct中指定的参数初始化外设EXTI寄存器

 //GPIOA.15       中断线以及中断初始化配置
        GPIO_EXTILineConfig(GPIO_PortSourceGPIOA,GPIO_PinSource15);

        EXTI_InitStructure.EXTI_Line=EXTI_Line15;
        EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
        EXTI_InitStructure.EXTI_LineCmd = ENABLE;
        EXTI_Init(&EXTI_InitStructure);         //根据EXTI_InitStruct中指定的参数初始化外设EXTI寄存器

  //GPIOA.0       中断线以及中断初始化配置
        GPIO_EXTILineConfig(GPIO_PortSourceGPIOA,GPIO_PinSource0);

        EXTI_InitStructure.EXTI_Line=EXTI_Line0;
        EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
        EXTI_InitStructure.EXTI_LineCmd = ENABLE;
        EXTI_Init(&EXTI_InitStructure);		//根据EXTI_InitStruct中指定的参数初始化外设EXTI寄存器


        NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;			//使能按键所在的外部中断通道
        NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x02;	//抢占优先级2，
        NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x01;					//子优先级1
        NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;								//使能外部中断通道
        NVIC_Init(&NVIC_InitStructure);

        NVIC_InitStructure.NVIC_IRQChannel = EXTI0_IRQn;			//使能按键所在的外部中断通道
        NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x02;	//抢占优先级2
        NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x02;					//子优先级2
        NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;								//使能外部中断通道
        NVIC_Init(&NVIC_InitStructure);           //根据NVIC_InitStruct中指定的参数初始化外设NVIC寄存器
}
