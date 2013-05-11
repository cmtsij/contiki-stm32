;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:32 2013
;--------------------------------------------------------
	.module contiki_sensinode_main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _random_init
	.globl _sensinode_sensors_activate
	.globl _puthex
	.globl _putstring
	.globl _netstack_init
	.globl _packetbuf_set_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _watchdog_periodic
	.globl _watchdog_start
	.globl _watchdog_init
	.globl _cc2430_rf_set_addr
	.globl _model_uart_intr_en
	.globl _model_init
	.globl _uart1_set_input
	.globl _uart1_init
	.globl _leds_off
	.globl _leds_on
	.globl _leds_init
	.globl _bus_init
	.globl _serial_line_init
	.globl _serial_line_input_byte
	.globl _energest_init
	.globl _rtimer_init
	.globl _ctimer_init
	.globl _etimer_next_expiration_time
	.globl _etimer_pending
	.globl _etimer_request_poll
	.globl _clock_time
	.globl _autostart_start
	.globl _process_run
	.globl _process_init
	.globl _process_start
	.globl _IRCON2_P2IF
	.globl _IRCON2_UTX0IF
	.globl _IRCON2_UTX1IF
	.globl _IRCON2_P1IF
	.globl _IRCON2_WDTIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IRCON_DMAIF
	.globl _IRCON_T1IF
	.globl _IRCON_T2IF
	.globl _IRCON_T3IF
	.globl _IRCON_T4IF
	.globl _IRCON_P0IF
	.globl _IRCON_STIF
	.globl _IEN1_DMAIE
	.globl _IEN1_T1IE
	.globl _IEN1_T2IE
	.globl _IEN1_T3IE
	.globl _IEN1_T4IE
	.globl _IEN1_P0IE
	.globl _IEN0_RFERRIE
	.globl _IEN0_ADCIE
	.globl _IEN0_URX0IE
	.globl _IEN0_URX1IE
	.globl _IEN0_ENCIE
	.globl _IEN0_STIE
	.globl _IEN0_EA
	.globl _EA
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0CON_ENCIF_0
	.globl _S0CON_ENCIF_1
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TCON_IT0
	.globl _TCON_RFERRIF
	.globl _TCON_IT1
	.globl _TCON_URX0IF
	.globl _TCON_ADCIF
	.globl _TCON_URX1IF
	.globl _P0_0
	.globl _P0_1
	.globl _P0_2
	.globl _P0_3
	.globl _P0_4
	.globl _P0_5
	.globl _P0_6
	.globl _P0_7
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1BUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _ADCCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIF
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl _T2CON
	.globl _MEMCTR
	.globl _CLKCON
	.globl _U0GCR
	.globl _U0UCR
	.globl _T2CNF
	.globl _U0BAUD
	.globl _U0BUF
	.globl _IRCON
	.globl _SLEEP
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl _RCCTL
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl _FWDATA
	.globl _FCTL
	.globl _FADDRH
	.globl _FADDRL
	.globl _FWT
	.globl _IP0
	.globl _IEN0
	.globl _IE
	.globl _T2THD
	.globl _T2TLD
	.globl _T2CAPHPH
	.globl _T2CAPLPL
	.globl _T2OF2
	.globl _T2OF1
	.globl _T2OF0
	.globl _P2
	.globl _PSBANK
	.globl _FMAP
	.globl _T2PEROF2
	.globl _T2PEROF1
	.globl _T2PEROF0
	.globl _S1CON
	.globl _IEN2
	.globl _HSRC
	.globl _S0CON
	.globl _ST2
	.globl _ST1
	.globl _ST0
	.globl _T2CMP
	.globl __XPAGE
	.globl _DPS
	.globl _RFIM
	.globl _P1
	.globl _P0INP
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _node_id
	.globl _ADC_SHADOW
	.globl _U1BUF_SHADOW
	.globl _RFD_SHADOW
	.globl _U0BUF_SHADOW
	.globl _RFSTATUS
	.globl _CHIPID
	.globl _CHVER
	.globl _FSMTC1
	.globl _RXFIFOCNT
	.globl _IOCFG3
	.globl _IOCFG2
	.globl _IOCFG1
	.globl _IOCFG0
	.globl _SHORTADDRL
	.globl _SHORTADDRH
	.globl _PANIDL
	.globl _PANIDH
	.globl _IEEE_ADDR7
	.globl _IEEE_ADDR6
	.globl _IEEE_ADDR5
	.globl _IEEE_ADDR4
	.globl _IEEE_ADDR3
	.globl _IEEE_ADDR2
	.globl _IEEE_ADDR1
	.globl _IEEE_ADDR0
	.globl _DACTSTL
	.globl _DACTSTH
	.globl _ADCTSTL
	.globl _ADCTSTH
	.globl _FSMSTATE
	.globl _AGCCTRLL
	.globl _AGCCTRLH
	.globl _MANORL
	.globl _MANORH
	.globl _MANANDL
	.globl _MANANDH
	.globl _FSMTCL
	.globl _FSMTCH
	.globl _RFPWR
	.globl _CSPT
	.globl _CSPCTRL
	.globl _CSPZ
	.globl _CSPY
	.globl _CSPX
	.globl _FSCTRLL
	.globl _FSCTRLH
	.globl _RXCTRL1L
	.globl _RXCTRL1H
	.globl _RXCTRL0L
	.globl _RXCTRL0H
	.globl _TXCTRLL
	.globl _TXCTRLH
	.globl _SYNCWORDL
	.globl _SYNCWORDH
	.globl _RSSIL
	.globl _RSSIH
	.globl _MDMCTRL1L
	.globl _MDMCTRL1H
	.globl _MDMCTRL0L
	.globl _MDMCTRL0H
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_U0CSR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P1IEN	=	0x008d
_P0INP	=	0x008f
_P1	=	0x0090
_RFIM	=	0x0091
_DPS	=	0x0092
__XPAGE	=	0x0093
_T2CMP	=	0x0094
_ST0	=	0x0095
_ST1	=	0x0096
_ST2	=	0x0097
_S0CON	=	0x0098
_HSRC	=	0x0099
_IEN2	=	0x009a
_S1CON	=	0x009b
_T2PEROF0	=	0x009c
_T2PEROF1	=	0x009d
_T2PEROF2	=	0x009e
_FMAP	=	0x009f
_PSBANK	=	0x009f
_P2	=	0x00a0
_T2OF0	=	0x00a1
_T2OF1	=	0x00a2
_T2OF2	=	0x00a3
_T2CAPLPL	=	0x00a4
_T2CAPHPH	=	0x00a5
_T2TLD	=	0x00a6
_T2THD	=	0x00a7
_IE	=	0x00a8
_IEN0	=	0x00a8
_IP0	=	0x00a9
_FWT	=	0x00ab
_FADDRL	=	0x00ac
_FADDRH	=	0x00ad
_FCTL	=	0x00ae
_FWDATA	=	0x00af
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
_RCCTL	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_SLEEP	=	0x00be
_IRCON	=	0x00c0
_U0BUF	=	0x00c1
_U0BAUD	=	0x00c2
_T2CNF	=	0x00c3
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_CLKCON	=	0x00c6
_MEMCTR	=	0x00c7
_T2CON	=	0x00c8
_WDCTL	=	0x00c9
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_PSW	=	0x00d0
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_TIMIF	=	0x00d8
_RFD	=	0x00d9
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_ACC	=	0x00e0
_RFST	=	0x00e1
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_IRCON2	=	0x00e8
_RFIF	=	0x00e9
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_B	=	0x00f0
_PERCFG	=	0x00f1
_ADCCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_U1CSR	=	0x00f8
_U1BUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_7	=	0x0087
_P0_6	=	0x0086
_P0_5	=	0x0085
_P0_4	=	0x0084
_P0_3	=	0x0083
_P0_2	=	0x0082
_P0_1	=	0x0081
_P0_0	=	0x0080
_TCON_URX1IF	=	0x008f
_TCON_ADCIF	=	0x008d
_TCON_URX0IF	=	0x008b
_TCON_IT1	=	0x008a
_TCON_RFERRIF	=	0x0089
_TCON_IT0	=	0x0088
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_S0CON_ENCIF_1	=	0x0099
_S0CON_ENCIF_0	=	0x0098
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_EA	=	0x00af
_IEN0_EA	=	0x00af
_IEN0_STIE	=	0x00ad
_IEN0_ENCIE	=	0x00ac
_IEN0_URX1IE	=	0x00ab
_IEN0_URX0IE	=	0x00aa
_IEN0_ADCIE	=	0x00a9
_IEN0_RFERRIE	=	0x00a8
_IEN1_P0IE	=	0x00bd
_IEN1_T4IE	=	0x00bc
_IEN1_T3IE	=	0x00bb
_IEN1_T2IE	=	0x00ba
_IEN1_T1IE	=	0x00b9
_IEN1_DMAIE	=	0x00b8
_IRCON_STIF	=	0x00c7
_IRCON_P0IF	=	0x00c5
_IRCON_T4IF	=	0x00c4
_IRCON_T3IF	=	0x00c3
_IRCON_T2IF	=	0x00c2
_IRCON_T1IF	=	0x00c1
_IRCON_DMAIF	=	0x00c0
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_IRCON2_WDTIF	=	0x00ec
_IRCON2_P1IF	=	0x00eb
_IRCON2_UTX1IF	=	0x00ea
_IRCON2_UTX0IF	=	0x00e9
_IRCON2_P2IF	=	0x00e8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_len:
	.ds 2
_r:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MDMCTRL0H	=	0xdf02
_MDMCTRL0L	=	0xdf03
_MDMCTRL1H	=	0xdf04
_MDMCTRL1L	=	0xdf05
_RSSIH	=	0xdf06
_RSSIL	=	0xdf07
_SYNCWORDH	=	0xdf08
_SYNCWORDL	=	0xdf09
_TXCTRLH	=	0xdf0a
_TXCTRLL	=	0xdf0b
_RXCTRL0H	=	0xdf0c
_RXCTRL0L	=	0xdf0d
_RXCTRL1H	=	0xdf0e
_RXCTRL1L	=	0xdf0f
_FSCTRLH	=	0xdf10
_FSCTRLL	=	0xdf11
_CSPX	=	0xdf12
_CSPY	=	0xdf13
_CSPZ	=	0xdf14
_CSPCTRL	=	0xdf15
_CSPT	=	0xdf16
_RFPWR	=	0xdf17
_FSMTCH	=	0xdf20
_FSMTCL	=	0xdf21
_MANANDH	=	0xdf22
_MANANDL	=	0xdf23
_MANORH	=	0xdf24
_MANORL	=	0xdf25
_AGCCTRLH	=	0xdf26
_AGCCTRLL	=	0xdf27
_FSMSTATE	=	0xdf39
_ADCTSTH	=	0xdf3a
_ADCTSTL	=	0xdf3b
_DACTSTH	=	0xdf3c
_DACTSTL	=	0xdf3d
_IEEE_ADDR0	=	0xdf43
_IEEE_ADDR1	=	0xdf44
_IEEE_ADDR2	=	0xdf45
_IEEE_ADDR3	=	0xdf46
_IEEE_ADDR4	=	0xdf47
_IEEE_ADDR5	=	0xdf48
_IEEE_ADDR6	=	0xdf49
_IEEE_ADDR7	=	0xdf4a
_PANIDH	=	0xdf4b
_PANIDL	=	0xdf4c
_SHORTADDRH	=	0xdf4d
_SHORTADDRL	=	0xdf4e
_IOCFG0	=	0xdf4f
_IOCFG1	=	0xdf50
_IOCFG2	=	0xdf51
_IOCFG3	=	0xdf52
_RXFIFOCNT	=	0xdf53
_FSMTC1	=	0xdf54
_CHVER	=	0xdf60
_CHIPID	=	0xdf61
_RFSTATUS	=	0xdf62
_U0BUF_SHADOW	=	0xdfc1
_RFD_SHADOW	=	0xdfd9
_U1BUF_SHADOW	=	0xdff9
_ADC_SHADOW	=	0xdfba
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_node_id::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_clock_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_cc2430_timer_1_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_port_0_ISR
	.ds	5
	reti
	.ds	7
	ljmp	_port_1_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'fade'
;------------------------------------------------------------
;l                         Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +3
;a                         Allocated to stack - _bp +5
;k                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	../../platform/sensinode/./contiki-sensinode-main.c:75: fade(int l) CC_NON_BANKED
;	-----------------------------------------
;	 function fade
;	-----------------------------------------
_fade:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../platform/sensinode/./contiki-sensinode-main.c:79: for(k = 0; k < 400; ++k) {
	mov	r4,#0x00
	mov	r5,#0x00
00109$:
	clr	c
	mov	a,r4
	subb	a,#0x90
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x81
	jc	00132$
	ljmp	00113$
00132$:
;	../../platform/sensinode/./contiki-sensinode-main.c:80: j = k > 200? 400 - k: k;
	clr	c
	mov	a,#0xC8
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
	mov	a,#0x90
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,#0x01
	subb	a,r5
	mov	r3,a
	sjmp	00116$
00115$:
	mov	ar2,r4
	mov	ar3,r5
00116$:
;	../../platform/sensinode/./contiki-sensinode-main.c:82: leds_on(l);
	mov	r0,_bp
	inc	r0
	mov	ar7,@r0
	mov	dpl,r7
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_leds_on
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	../../platform/sensinode/./contiki-sensinode-main.c:83: for(i = 0; i < j; ++i) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00101$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../../platform/sensinode/./contiki-sensinode-main.c:84: a = i;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../platform/sensinode/./contiki-sensinode-main.c:83: for(i = 0; i < j; ++i) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00101$
00104$:
;	../../platform/sensinode/./contiki-sensinode-main.c:86: leds_off(l);
	mov	dpl,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_leds_off
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	../../platform/sensinode/./contiki-sensinode-main.c:87: for(i = 0; i < 200 - j; ++i) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,#0xC8
	clr	c
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r3
	mov	r7,a
00105$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	../../platform/sensinode/./contiki-sensinode-main.c:88: a = i;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../platform/sensinode/./contiki-sensinode-main.c:87: for(i = 0; i < 200 - j; ++i) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00105$
00111$:
;	../../platform/sensinode/./contiki-sensinode-main.c:79: for(k = 0; k < 400; ++k) {
	inc	r4
	cjne	r4,#0x00,00136$
	inc	r5
00136$:
	ljmp	00109$
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_rime_addr'
;------------------------------------------------------------
;addr_long                 Allocated to registers 
;addr_short                Allocated to registers r7 r6 
;i                         Allocated to registers r4 
;macp                      Allocated to registers r7 r6 
;------------------------------------------------------------
;	../../platform/sensinode/./contiki-sensinode-main.c:94: set_rime_addr(void) CC_NON_BANKED
;	-----------------------------------------
;	 function set_rime_addr
;	-----------------------------------------
_set_rime_addr:
;	../../platform/sensinode/./contiki-sensinode-main.c:105: if(node_id == 0) {
	mov	dptr,#_node_id
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00115$
;	../../platform/sensinode/./contiki-sensinode-main.c:116: DISABLE_INTERRUPTS();
	clr	_EA
;	../../platform/sensinode/./contiki-sensinode-main.c:119: FMAP = 3;
	mov	_FMAP,#0x03
;	../../platform/sensinode/./contiki-sensinode-main.c:124: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
	mov	r7,#0xF8
	mov	r6,#0xFF
	mov	r4,#0x01
00120$:
	mov	a,r4
	jb	acc.7,00123$
;	../../platform/sensinode/./contiki-sensinode-main.c:125: rimeaddr_node_addr.u8[i] = *macp;
	mov	a,r4
	add	a,#_rimeaddr_node_addr
	mov	r2,a
	clr	a
	addc	a,#(_rimeaddr_node_addr >> 8)
	mov	r3,a
	mov	dpl,r7
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	mov	r7,dpl
	mov	r6,dph
	mov	dpl,r2
	mov	dph,r3
	mov	a,r5
	movx	@dptr,a
;	../../platform/sensinode/./contiki-sensinode-main.c:126: macp++;
;	../../platform/sensinode/./contiki-sensinode-main.c:124: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
	dec	r4
	sjmp	00120$
00123$:
;	../../platform/sensinode/./contiki-sensinode-main.c:130: FMAP = 1;
	mov	_FMAP,#0x01
;	../../platform/sensinode/./contiki-sensinode-main.c:131: ENABLE_INTERRUPTS();
	setb	_EA
;	../../platform/sensinode/./contiki-sensinode-main.c:134: PUTSTRING("Setting manual address from node_id\n");
	sjmp	00119$
00115$:
;	../../platform/sensinode/./contiki-sensinode-main.c:135: rimeaddr_node_addr.u8[RIMEADDR_SIZE - 1] = node_id >> 8;
	mov	ar5,r7
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	../../platform/sensinode/./contiki-sensinode-main.c:136: rimeaddr_node_addr.u8[RIMEADDR_SIZE - 2] = node_id & 0xff;
	mov	r7,#0x00
	mov	dptr,#_rimeaddr_node_addr
	mov	a,r6
	movx	@dptr,a
00119$:
;	../../platform/sensinode/./contiki-sensinode-main.c:155: addr_short = (rimeaddr_node_addr.u8[0] * 256) + rimeaddr_node_addr.u8[1];
	mov	dptr,#_rimeaddr_node_addr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	../../platform/sensinode/./contiki-sensinode-main.c:157: cc2430_rf_set_addr(IEEE802154_PANID, addr_short, addr_long);
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar7
	push	ar6
	mov	dptr,#0x4C55
	lcall	_cc2430_rf_set_addr
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	../../platform/sensinode/./contiki-sensinode-main.c:161: main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	../../platform/sensinode/./contiki-sensinode-main.c:165: bus_init();
	lcall	_bus_init
;	../../platform/sensinode/./contiki-sensinode-main.c:166: rtimer_init();
	lcall	_rtimer_init
;	../../platform/sensinode/./contiki-sensinode-main.c:169: model_init();
	lcall	_model_init
;	../../platform/sensinode/./contiki-sensinode-main.c:172: leds_init();
	lcall	_leds_init
;	../../platform/sensinode/./contiki-sensinode-main.c:173: fade(LEDS_GREEN);
	mov	dptr,#0x0001
	lcall	_fade
;	../../platform/sensinode/./contiki-sensinode-main.c:176: process_init();
	lcall	_process_init
;	../../platform/sensinode/./contiki-sensinode-main.c:179: uart1_init();
	lcall	_uart1_init
;	../../platform/sensinode/./contiki-sensinode-main.c:189: uart1_set_input(serial_line_input_byte);
	mov	dptr,#_serial_line_input_byte
	lcall	_uart1_set_input
;	../../platform/sensinode/./contiki-sensinode-main.c:190: serial_line_init();
	lcall	_serial_line_init
;	../../platform/sensinode/./contiki-sensinode-main.c:194: putstring(CONTIKI_VERSION_STRING "\n");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_putstring
;	../../platform/sensinode/./contiki-sensinode-main.c:195: putstring(SENSINODE_MODEL " (CC24");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_putstring
;	../../platform/sensinode/./contiki-sensinode-main.c:196: puthex(((CHIPID >> 3) | 0x20));
	mov	dptr,#_CHIPID
	movx	a,@dptr
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
	orl	ar7,#0x20
	mov	dpl,r7
	lcall	_puthex
;	../../platform/sensinode/./contiki-sensinode-main.c:197: putstring("-" FLASH_SIZE ")\n");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_putstring
;	../../platform/sensinode/./contiki-sensinode-main.c:228: watchdog_init();
	lcall	_watchdog_init
;	../../platform/sensinode/./contiki-sensinode-main.c:231: random_init(0);
	mov	dptr,#0x0000
	lcall	_random_init
;	../../platform/sensinode/./contiki-sensinode-main.c:234: process_start(&etimer_process, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_etimer_process
	mov	b,#0x00
	lcall	_process_start
	dec	sp
	dec	sp
	dec	sp
;	../../platform/sensinode/./contiki-sensinode-main.c:235: ctimer_init();
	lcall	_ctimer_init
;	../../platform/sensinode/./contiki-sensinode-main.c:238: netstack_init();
	lcall	_netstack_init
;	../../platform/sensinode/./contiki-sensinode-main.c:239: set_rime_addr();
	lcall	_set_rime_addr
;	../../platform/sensinode/./contiki-sensinode-main.c:242: process_start(&sensors_process, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dptr,#_sensors_process
	mov	b,#0x00
	lcall	_process_start
	dec	sp
	dec	sp
	dec	sp
;	../../platform/sensinode/./contiki-sensinode-main.c:243: sensinode_sensors_activate();
	lcall	_sensinode_sensors_activate
;	../../platform/sensinode/./contiki-sensinode-main.c:274: model_uart_intr_en();
	lcall	_model_uart_intr_en
;	../../platform/sensinode/./contiki-sensinode-main.c:276: energest_init();
	lcall	_energest_init
;	../../platform/sensinode/./contiki-sensinode-main.c:279: fade(LEDS_RED);
	mov	dptr,#0x0004
	lcall	_fade
;	../../platform/sensinode/./contiki-sensinode-main.c:285: autostart_start(autostart_processes);
	mov	dptr,#_autostart_processes
	mov	b,#0x80
	lcall	_autostart_start
;	../../platform/sensinode/./contiki-sensinode-main.c:287: watchdog_start();
	lcall	_watchdog_start
;	../../platform/sensinode/./contiki-sensinode-main.c:290: do {
00110$:
;	../../platform/sensinode/./contiki-sensinode-main.c:292: watchdog_periodic();
	lcall	_watchdog_periodic
;	../../platform/sensinode/./contiki-sensinode-main.c:295: if(sleep_flag) {
	jnb	_sleep_flag,00109$
;	../../platform/sensinode/./contiki-sensinode-main.c:296: if(etimer_pending() &&
	lcall	_etimer_pending
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00106$
;	../../platform/sensinode/./contiki-sensinode-main.c:297: (etimer_next_expiration_time() - clock_time() - 1) > MAX_TICKS) {
	lcall	_etimer_next_expiration_time
	mov	r6,dpl
	mov	r7,dph
	push	ar7
	push	ar6
	lcall	_clock_time
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	dec	r6
	cjne	r6,#0xFF,00150$
	dec	r7
00150$:
	mov	a,r7
	jnb	acc.7,00106$
;	../../platform/sensinode/./contiki-sensinode-main.c:298: etimer_request_poll();
	lcall	_etimer_request_poll
00106$:
;	../../platform/sensinode/./contiki-sensinode-main.c:300: sleep_flag = 0;
	clr	_sleep_flag
00109$:
;	../../platform/sensinode/./contiki-sensinode-main.c:303: r = process_run();
	lcall	_process_run
	mov	_r,dpl
	mov	(_r + 1),dph
;	../../platform/sensinode/./contiki-sensinode-main.c:304: } while(r > 0);
	clr	c
	clr	a
	subb	a,_r
	clr	a
	xrl	a,#0x80
	mov	b,(_r + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	../../platform/sensinode/./contiki-sensinode-main.c:306: len = NETSTACK_RADIO.pending_packet();
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	_len,dpl
	mov	(_len + 1),dph
	pop	ar6
	pop	ar7
;	../../platform/sensinode/./contiki-sensinode-main.c:307: if(len) {
	mov	a,_len
	orl	a,(_len + 1)
	jnz	00154$
	ljmp	00116$
00154$:
;	../../platform/sensinode/./contiki-sensinode-main.c:308: packetbuf_clear();
	lcall	_packetbuf_clear
;	../../platform/sensinode/./contiki-sensinode-main.c:309: len = NETSTACK_RADIO.read(packetbuf_dataptr(), PACKETBUF_SIZE);
	mov	dptr,#(_cc2430_rf_driver + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	a,#00155$
	push	acc
	mov	a,#(00155$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	ret
00155$:
	mov	_len,dpl
	mov	(_len + 1),dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../../platform/sensinode/./contiki-sensinode-main.c:310: if(len > 0) {
	clr	c
	clr	a
	subb	a,_len
	clr	a
	xrl	a,#0x80
	mov	b,(_len + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
;	../../platform/sensinode/./contiki-sensinode-main.c:311: packetbuf_set_datalen(len);
	mov	r6,_len
	mov	r7,(_len + 1)
	mov	dpl,r6
	mov	dph,r7
	lcall	_packetbuf_set_datalen
;	../../platform/sensinode/./contiki-sensinode-main.c:312: NETSTACK_RDC.input();
	mov	dptr,#(_nullrdc_driver + 0x0009)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
00116$:
;	../../platform/sensinode/./contiki-sensinode-main.c:330: SLEEP = (SLEEP & 0xFC) | (LPM_MODE - 1);
	anl	_SLEEP,#0xFC
;	../../platform/sensinode/./contiki-sensinode-main.c:353: PCON |= IDLE;
	orl	_PCON,#0x01
;	../../platform/sensinode/./contiki-sensinode-main.c:358: __endasm;
	
	        nop
	      
;	../../platform/sensinode/./contiki-sensinode-main.c:364: ENERGEST_OFF(ENERGEST_TYPE_LPM);
	ljmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Contiki 2.6"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "N740 NanoSensor (CC24"
	.db 0x00
__str_2:
	.ascii "-F128)"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__node_id:
	.byte #0x00,#0x00	; 0
	.area CABS    (ABS,CODE)
