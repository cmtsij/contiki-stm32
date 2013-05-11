#include <stm32f10x.h>
#include <stm32f10x_flash.h>
#include <stdint.h>
#include <stdio.h>
#include <errno.h>
#include <sys/process.h>
#include <sys/procinit.h>
#include <etimer.h>
#include <sys/autostart.h>
#include <clock.h>
#include <misc.h>
#include "contiki-conf.h"
#include "leds.h"
#include "key.h"
#include "usart.h"
#include "wdg.h"
#include "tim.h"
#include "uart1.h"
#include "uart2.h"
#include "cfs-coffee.h"
/* #include "lcd.h" */


unsigned int idle_count = 0;

int
main()
{
    /* you may delay some time here if you use a watch dog */
    uart1_init(115200);
    uart2_init(115200);
    leds_init();
    /* stm32_flash_erase_all(); */
    /* FLASH_ClearFlag(FLASH_FLAG_BSY | FLASH_FLAG_EOP | FLASH_FLAG_PGERR | FLASH_FLAG_WRPRTERR); */
    //    EXTIX_Init();
    PRINTF("Initialising\n\r");
    clock_init();
    process_init();
    process_start(&etimer_process, NULL);
    autostart_start(autostart_processes);
    PRINTF("Processes running\n\r");
    while(1)
        do {
        } while(process_run() > 0);
    idle_count++;
    /* Idle! */
    /* Stop processor clock */
    /* asm("wfi"::); */
  /* } */
  return 0;
}

#if UIP_CONF_LOGGING
void uip_log(char *msg)
{
    printf("%u : %s\n\r", clock_time(), msg);
}
#endif

void assert_param(int b)
{

}
