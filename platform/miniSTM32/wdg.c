#include "wdg.h"
#include "stm32f10x_rcc.h"
#include "misc.h"

void IWDG_Init(u8 prer,u16 rlr)
{
    /* RCC_LSICmd(ENABLE); */
    /* while(RCC_GetFlagStatus(RCC_FLAG_LSIRDY)==RESET); */
    IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
    IWDG_SetPrescaler(prer);
    IWDG_SetReload(rlr);
    IWDG_ReloadCounter();
    IWDG_Enable();
}

void IWDG_Feed(void)
{
    IWDG_ReloadCounter();
}

void WWDG_Init(u8 tr,u8 wr,u32 fprer)
{
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_WWDG, ENABLE);
    WWDG_SetPrescaler(fprer);
    WWDG_SetWindowValue(wr);
    WWDG_Enable(tr);
    WWDG_ClearFlag();
    WWDG_NVIC_Init();
    WWDG_EnableIT();
}

void WWDG_Set_Counter(u8 cnt)
{
    WWDG_Enable(cnt);
}

void WWDG_NVIC_Init()
{
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = WWDG_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
    NVIC_Init(&NVIC_InitStructure);
}
