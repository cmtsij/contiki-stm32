#ifndef __WDG_H
#define __WDG_H

#include <stm32f10x_iwdg.h>

void IWDG_Init(u8 prer,u16 rlr);
void IWDG_Feed(void);

void WWDG_Init(u8 tr,u8 wr,u32 fprer);
void WWDG_Set_Counter(u8 cnt);
void WWDG_NVIC_Init(void);
#endif
