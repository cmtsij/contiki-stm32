#include <stdio.h>
#include "contiki.h"
#include "cfs/cfs.h"
#include <dev/leds.h>

static struct etimer et_test;
PROCESS(cfs_test_process, "cfs test");
AUTOSTART_PROCESSES(&cfs_test_process);

PROCESS_THREAD(cfs_test_process, ev, data)
{
    PROCESS_BEGIN();
    etimer_set(&et_test, CLOCK_SECOND);
    while(1) {
        PROCESS_WAIT_EVENT();
        if(ev == PROCESS_EVENT_TIMER) {
            leds_toggle(LEDS_ALL);
            printf("***cfs test process start***\n\r");

            if(cfs_coffee_format() == - 1)
            {
                printf("coffee format error.\n\r");
                return - 1;
            }

            int fd = cfs_open("CoffeeTest", CFS_WRITE | CFS_READ);
            if(fd == - 1)
            {
                printf("First time open error.\n\r");
                return - 1;
            }

            char buf1[] = "Hello, World!\n\r";
            char buf2[32] = "Orignal!\n\r";

            printf("The orignal buf1 and buf2 is : \n\r");
            printf("%s\n\r", buf1);
            printf("%s\n\r", buf2);

            int size_write = cfs_write(fd, buf1, sizeof(buf1));
            cfs_seek(fd, 0, CFS_SEEK_SET); //NOTE
            int size_read = cfs_read(fd, buf2, sizeof(buf1));

            printf("The update buf1 and buf2 is : \n\r");
            printf("%s\n\r", buf1);
            printf("%s\n\r", buf2);

            cfs_close(fd);

            etimer_reset(&et_test);
        }
    }
    PROCESS_END();
}
