/*
 * Copyright (c) 2006, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 * $Id: hello-world.c,v 1.1 2006/10/02 21:46:46 adamdunkels Exp $
 */

/**
 * \file
 *         A very simple Contiki application showing how Contiki programs look
 * \author
 *         Adam Dunkels <adam@sics.se>
 */

#include "contiki.h"
#include "stm32f10x_gpio.h"
#include "leds-arch.h"
#include <dev/leds.h>
#include "stm32f10x_flash.h"

#include <stdio.h> /* For printf() */
#define ADDR 0x0801F000
unsigned char write_i , read_i;

static struct etimer et_hello;
static struct etimer et_blink1;
static struct etimer et_blink2;
/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
PROCESS(blink1_world_process, "blink1");
PROCESS(blink2_world_process, "blink2");
AUTOSTART_PROCESSES(&hello_world_process, &blink1_world_process, &blink2_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{
  PROCESS_BEGIN();

  etimer_set(&et_hello, CLOCK_SECOND / 2);
    while(1) {
    PROCESS_WAIT_EVENT();

    if(ev == PROCESS_EVENT_TIMER) {
        FLASH_Unlock();
        FLASH_ClearFlag(FLASH_FLAG_BSY | FLASH_FLAG_EOP | FLASH_FLAG_PGERR | FLASH_FLAG_WRPRTERR);
        FLASH_ProgramHalfWord(ADDR + write_i * 2, write_i);
        write_i ++;
        printf("test1\n\r");
        etimer_reset(&et_hello);
    }
  }

  PROCESS_END();
}

PROCESS_THREAD(blink1_world_process, ev, data)
{
  PROCESS_BEGIN();

  etimer_set(&et_blink1, CLOCK_SECOND);
    while(1) {
    PROCESS_WAIT_EVENT();

    if(ev == PROCESS_EVENT_TIMER) {
        printf("%d\n\r", (*(vu16 *)(ADDR + read_i * 2)));
        read_i++;
        printf ("test2\n\r");
        etimer_reset(&et_blink1);
    }
  }

  PROCESS_END();
}

PROCESS_THREAD(blink2_world_process, ev, data)
{
    PROCESS_BEGIN();

    etimer_set(&et_blink2, CLOCK_SECOND / 2);
    while(1) {
        PROCESS_WAIT_EVENT();

        if(ev == PROCESS_EVENT_TIMER) {
            printf ("test3\n\r");
            leds_toggle(LEDS_ALL);
            etimer_reset(&et_blink2);
        }
    }

    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
