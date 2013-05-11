#ifndef __UART2_H__
#define __UART2_H__

void uart2_init(unsigned int bpr);
void uart2_putc(unsigned char x);
void uart2_set_input(int (*)(unsigned char ));
#endif
