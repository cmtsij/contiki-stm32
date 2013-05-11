#ifndef __UART1_H__
#define __UART1_H__

void uart1_init(unsigned int bpr);
void uart1_putc(unsigned char x);
void  uart1_set_input(int (*)(unsigned char ));
#endif
