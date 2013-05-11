;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:32 2013
;--------------------------------------------------------
	.module cc2430_rf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cc2430_rf_driver
	.globl _cc2430_rf_send_ack
	.globl _packetbuf_set_attr
	.globl _clock_delay_usec
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
	.globl _cc2430_rf_command
	.globl _cc2430_rf_channel_set
	.globl _cc2430_rf_channel_get
	.globl _cc2430_rf_power_set
	.globl _cc2430_rf_set_addr
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
_rf_flags:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
_rf_channel:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_command'
;------------------------------------------------------------
;command                   Allocated to registers r7 
;fifo_count                Allocated to registers r6 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:122: cc2430_rf_command(uint8_t command)
;	-----------------------------------------
;	 function cc2430_rf_command
;	-----------------------------------------
_cc2430_rf_command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../../cpu/cc2430/dev/cc2430_rf.c:124: if(command >= 0xE0) { /*immediate strobe*/
	cjne	r7,#0xE0,00133$
00133$:
	jc	00115$
;	../../cpu/cc2430/dev/cc2430_rf.c:126: switch (command) { /*hardware bug workaround*/
	cjne	r7,#0xE2,00135$
	sjmp	00103$
00135$:
	cjne	r7,#0xE3,00136$
	sjmp	00103$
00136$:
	cjne	r7,#0xE5,00106$
;	../../cpu/cc2430/dev/cc2430_rf.c:129: case ISTXON:
00103$:
;	../../cpu/cc2430/dev/cc2430_rf.c:130: fifo_count = RXFIFOCNT;
	mov	dptr,#_RXFIFOCNT
	movx	a,@dptr
	mov	r6,a
;	../../cpu/cc2430/dev/cc2430_rf.c:131: RFST = command;
	mov	_RFST,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:132: clock_delay_usec(2);
	mov	dptr,#0x0002
	push	ar6
	lcall	_clock_delay_usec
	pop	ar6
;	../../cpu/cc2430/dev/cc2430_rf.c:133: if(fifo_count != RXFIFOCNT) {
	mov	dptr,#_RXFIFOCNT
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00139$
	ret
00139$:
;	../../cpu/cc2430/dev/cc2430_rf.c:134: RFST = ISFLUSHRX;
	mov	_RFST,#0xE6
;	../../cpu/cc2430/dev/cc2430_rf.c:135: RFST = ISFLUSHRX;
	mov	_RFST,#0xE6
;	../../cpu/cc2430/dev/cc2430_rf.c:137: break;
;	../../cpu/cc2430/dev/cc2430_rf.c:139: default:
	ret
00106$:
;	../../cpu/cc2430/dev/cc2430_rf.c:140: RFST = command;
	mov	_RFST,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:141: }
	ret
00115$:
;	../../cpu/cc2430/dev/cc2430_rf.c:142: } else if(command == SSTART) {
	cjne	r7,#0xDE,00112$
;	../../cpu/cc2430/dev/cc2430_rf.c:143: RFIF &= ~IRQ_CSP_STOP; /*clear IRQ flag*/
	mov	r6,_RFIF
	anl	ar6,#0xFD
	mov	_RFIF,r6
;	../../cpu/cc2430/dev/cc2430_rf.c:144: RFST = SSTOP; /*make sure there is a stop in the end*/
	mov	_RFST,#0xDF
;	../../cpu/cc2430/dev/cc2430_rf.c:145: RFST = ISSTART; /*start execution*/
	mov	_RFST,#0xFE
;	../../cpu/cc2430/dev/cc2430_rf.c:146: while((RFIF & IRQ_CSP_STOP) == 0);
00108$:
	mov	a,_RFIF
	jb	acc.1,00117$
	sjmp	00108$
00112$:
;	../../cpu/cc2430/dev/cc2430_rf.c:148: RFST = command; /*write command*/
	mov	_RFST,r7
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flush_rx'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:153: flush_rx()
;	-----------------------------------------
;	 function flush_rx
;	-----------------------------------------
_flush_rx:
;	../../cpu/cc2430/dev/cc2430_rf.c:155: cc2430_rf_command(ISFLUSHRX);
	mov	dpl,#0xE6
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:156: cc2430_rf_command(ISFLUSHRX);
	mov	dpl,#0xE6
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:165: RFIF &= ~IRQ_FIFOP;
	mov	r7,_RFIF
	anl	ar7,#0xDF
	mov	_RFIF,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_channel_set'
;------------------------------------------------------------
;channel                   Allocated to registers r7 
;freq                      Allocated to registers r5 r6 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:180: cc2430_rf_channel_set(uint8_t channel)
;	-----------------------------------------
;	 function cc2430_rf_channel_set
;	-----------------------------------------
_cc2430_rf_channel_set:
	mov	r7,dpl
;	../../cpu/cc2430/dev/cc2430_rf.c:184: if((channel < 11) || (channel > 26)) {
	cjne	r7,#0x0B,00108$
00108$:
	jc	00101$
	mov	a,r7
	add	a,#0xff - 0x1A
	jnc	00102$
00101$:
;	../../cpu/cc2430/dev/cc2430_rf.c:185: return -1;
	mov	dpl,#0xFF
	ret
00102$:
;	../../cpu/cc2430/dev/cc2430_rf.c:188: cc2430_rf_command(ISSTOP);  /*make sure CSP is not running*/
	mov	dpl,#0xFF
	push	ar7
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:189: cc2430_rf_command(ISRFOFF);
	mov	dpl,#0xE5
	lcall	_cc2430_rf_command
	pop	ar7
;	../../cpu/cc2430/dev/cc2430_rf.c:191: freq = (uint16_t) channel - 11;
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xF5
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
;	../../cpu/cc2430/dev/cc2430_rf.c:192: freq *= 5;  /*channel spacing*/
	push	ar7
	push	ar5
	push	ar6
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	ar5,r3
	mov	ar6,r4
;	../../cpu/cc2430/dev/cc2430_rf.c:193: freq += 357; /*correct channel range*/
	mov	a,#0x65
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
;	../../cpu/cc2430/dev/cc2430_rf.c:194: freq |= 0x4000; /*LOCK_THR = 1*/
	orl	ar6,#0x40
;	../../cpu/cc2430/dev/cc2430_rf.c:195: FSCTRLH = (freq >> 8);
	mov	dptr,#_FSCTRLH
	mov	a,r6
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:196: FSCTRLL = (uint8_t)freq;
	mov	dptr,#_FSCTRLL
	mov	a,r5
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:198: cc2430_rf_command(ISRXON);
	mov	dpl,#0xE2
	lcall	_cc2430_rf_command
	pop	ar7
;	../../cpu/cc2430/dev/cc2430_rf.c:200: rf_channel = channel;
	mov	dptr,#_rf_channel
	mov	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:202: return (int8_t) channel;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_channel_get'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:206: cc2430_rf_channel_get()
;	-----------------------------------------
;	 function cc2430_rf_channel_get
;	-----------------------------------------
_cc2430_rf_channel_get:
;	../../cpu/cc2430/dev/cc2430_rf.c:208: return rf_channel;
	mov	dptr,#_rf_channel
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_power_set'
;------------------------------------------------------------
;new_power                 Allocated to registers 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:219: cc2430_rf_power_set(uint8_t new_power)
;	-----------------------------------------
;	 function cc2430_rf_power_set
;	-----------------------------------------
_cc2430_rf_power_set:
	mov	a,dpl
	mov	dptr,#_TXCTRLL
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:224: return TXCTRLL;
	mov	dptr,#_TXCTRLL
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_set_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -4
;ieee_addr                 Allocated to stack - _bp -7
;pan                       Allocated to registers r6 r7 
;f                         Allocated to registers r5 
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:252: cc2430_rf_set_addr(unsigned pan, unsigned addr, const uint8_t *ieee_addr)
;	-----------------------------------------
;	 function cc2430_rf_set_addr
;	-----------------------------------------
_cc2430_rf_set_addr:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../cpu/cc2430/dev/cc2430_rf.c:257: PANIDH = pan >> 8;
	mov	dptr,#_PANIDH
	mov	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:258: PANIDL = pan & 0xff;
	mov	dptr,#_PANIDL
	mov	a,r6
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:260: SHORTADDRH = addr >> 8;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_SHORTADDRH
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:261: SHORTADDRL = addr & 0xff;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	dptr,#_SHORTADDRL
	mov	a,r6
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:263: if(ieee_addr != NULL) {
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
;	../../cpu/cc2430/dev/cc2430_rf.c:264: ptr = &IEEE_ADDR7;
	mov	r6,#_IEEE_ADDR7
	mov	r7,#(_IEEE_ADDR7 >> 8)
;	../../cpu/cc2430/dev/cc2430_rf.c:266: for (f = 0; f < 8; f++) {
	mov	r5,#0x00
00103$:
	cjne	r5,#0x08,00117$
00117$:
	jnc	00107$
;	../../cpu/cc2430/dev/cc2430_rf.c:267: *ptr-- = ieee_addr[f];
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	dec	r6
	cjne	r6,#0xFF,00119$
	dec	r7
00119$:
;	../../cpu/cc2430/dev/cc2430_rf.c:266: for (f = 0; f < 8; f++) {
	inc	r5
	sjmp	00103$
00107$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cc2430_rf_send_ack'
;------------------------------------------------------------
;pending                   Allocated to registers r7 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:299: cc2430_rf_send_ack(uint8_t pending)
;	-----------------------------------------
;	 function cc2430_rf_send_ack
;	-----------------------------------------
_cc2430_rf_send_ack:
;	../../cpu/cc2430/dev/cc2430_rf.c:301: if(pending) {
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	../../cpu/cc2430/dev/cc2430_rf.c:302: cc2430_rf_command(ISACKPEND);
	mov	dpl,#0xE9
	ljmp	_cc2430_rf_command
00102$:
;	../../cpu/cc2430/dev/cc2430_rf.c:304: cc2430_rf_command(ISACK);
	mov	dpl,#0xE8
	ljmp	_cc2430_rf_command
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:311: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../cpu/cc2430/dev/cc2430_rf.c:313: if(rf_flags & INITIALISED) {
	mov	a,_rf_flags
	jnb	acc.0,00103$
;	../../cpu/cc2430/dev/cc2430_rf.c:314: return 0;
	mov	dptr,#0x0000
	ret
;	../../cpu/cc2430/dev/cc2430_rf.c:317: PRINTF("cc2430_rf_init called\n");
00103$:
;	../../cpu/cc2430/dev/cc2430_rf.c:319: RFPWR &= ~RREG_RADIO_PD;  /*make sure it's powered*/
	mov	dptr,#_RFPWR
	movx	a,@dptr
	anl	a,#0xF7
	mov	r7,a
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:320: while((RFPWR & ADI_RADIO_PD) == 1);
00105$:
	mov	dptr,#_RFPWR
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x10
	cjne	r7,#0x01,00129$
	sjmp	00105$
00129$:
;	../../cpu/cc2430/dev/cc2430_rf.c:321: while((RFIF & IRQ_RREG_ON) == 0); /*wait for power up*/
00108$:
	mov	a,_RFIF
	jnb	acc.7,00108$
;	../../cpu/cc2430/dev/cc2430_rf.c:322: SLEEP &= ~OSC_PD; /*Osc on*/
	mov	r7,_SLEEP
	anl	ar7,#0xFB
	mov	_SLEEP,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:323: while((SLEEP & XOSC_STB) == 0); /*wait for power up*/
00111$:
	mov	a,_SLEEP
	jnb	acc.6,00111$
;	../../cpu/cc2430/dev/cc2430_rf.c:325: rf_flags = 0;
	mov	_rf_flags,#0x00
;	../../cpu/cc2430/dev/cc2430_rf.c:327: FSMTC1 = 1; /*don't abort reception, if enable called, accept ack, auto rx after tx*/
	mov	dptr,#_FSMTC1
	mov	a,#0x01
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:329: MDMCTRL0H = 0x0A;  /* Generic client, standard hysteresis, decoder on 0x0a */
	mov	dptr,#_MDMCTRL0H
	mov	a,#0x0A
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:330: MDMCTRL0L = 0xE2;  /* automatic CRC, standard CCA and preamble 0xE2 */
;	../../cpu/cc2430/dev/cc2430_rf.c:332: MDMCTRL0L |= 0x10;
	mov	dptr,#_MDMCTRL0L
	mov	a,#0xE2
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_MDMCTRL0L
	mov	a,#0x10
	orl	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:335: MDMCTRL1H = 0x30;     /* Defaults */
	mov	dptr,#_MDMCTRL1H
	mov	a,#0x30
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:336: MDMCTRL1L = 0x0;
	mov	dptr,#_MDMCTRL1L
	clr	a
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:338: RXCTRL0H = 0x32;      /* RX tuning optimized */
	mov	dptr,#_RXCTRL0H
	mov	a,#0x32
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:339: RXCTRL0L = 0xf5;
	mov	dptr,#_RXCTRL0L
	mov	a,#0xF5
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:341: cc2430_rf_channel_set(CC2430_RF_CHANNEL);
	mov	dpl,#0x19
	lcall	_cc2430_rf_channel_set
;	../../cpu/cc2430/dev/cc2430_rf.c:342: cc2430_rf_command(ISFLUSHTX);
	mov	dpl,#0xE7
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:343: cc2430_rf_command(ISFLUSHRX);
	mov	dpl,#0xE6
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:346: cc2430_rf_set_addr(0xffff, 0x0000, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dptr,#0xFFFF
	lcall	_cc2430_rf_set_addr
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../cpu/cc2430/dev/cc2430_rf.c:348: RFIM = IRQ_FIFOP;
	mov	_RFIM,#0x20
;	../../cpu/cc2430/dev/cc2430_rf.c:349: RFIF &= ~(IRQ_FIFOP);
	mov	r7,_RFIF
	anl	ar7,#0xDF
	mov	_RFIF,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:351: S1CON &= ~(RFIF_0 | RFIF_1);
	mov	r7,_S1CON
	anl	ar7,#0xFC
	mov	_S1CON,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:364: rf_flags |= INITIALISED;
	orl	_rf_flags,#0x01
;	../../cpu/cc2430/dev/cc2430_rf.c:370: cc2430_rf_power_set(CC2430_RF_TX_POWER);
	mov	dpl,#0x5F
	lcall	_cc2430_rf_power_set
;	../../cpu/cc2430/dev/cc2430_rf.c:372: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prepare'
;------------------------------------------------------------
;payload_len               Allocated to stack - _bp -4
;payload                   Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:376: prepare(const void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function prepare
;	-----------------------------------------
_prepare:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../cpu/cc2430/dev/cc2430_rf.c:383: while(RFSTATUS & TX_ACTIVE);
00101$:
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r4,a
	jb	acc.4,00101$
;	../../cpu/cc2430/dev/cc2430_rf.c:385: if(rf_flags & TX_ACK) {
	mov	a,_rf_flags
	jnb	acc.6,00105$
;	../../cpu/cc2430/dev/cc2430_rf.c:386: return -1;
	mov	dptr,#0xFFFF
	sjmp	00122$
00105$:
;	../../cpu/cc2430/dev/cc2430_rf.c:389: if((rf_flags & RX_ACTIVE) == 0) {
	mov	a,_rf_flags
	jb	acc.7,00108$
;	../../cpu/cc2430/dev/cc2430_rf.c:390: on();
	lcall	_on
;	../../cpu/cc2430/dev/cc2430_rf.c:393: PRINTF("cc2430_rf: sending %u byte payload\n", payload_len);
00108$:
;	../../cpu/cc2430/dev/cc2430_rf.c:395: cc2430_rf_command(ISFLUSHTX);
	mov	dpl,#0xE7
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:398: RFD = payload_len + CHECKSUM_LEN; /* Payload plus FCS */
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r4
	mov	_RFD,a
;	../../cpu/cc2430/dev/cc2430_rf.c:400: for(i = 0; i < payload_len; i++) {
	mov	r4,#0x00
00118$:
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	jnc	00116$
;	../../cpu/cc2430/dev/cc2430_rf.c:401: RFD = ((unsigned char*) (payload))[i];
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r4
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	_RFD,a
;	../../cpu/cc2430/dev/cc2430_rf.c:400: for(i = 0; i < payload_len; i++) {
	inc	r4
;	../../cpu/cc2430/dev/cc2430_rf.c:404: PRINTF("\n");
	sjmp	00118$
00116$:
;	../../cpu/cc2430/dev/cc2430_rf.c:407: RFD = 0;
	mov	_RFD,#0x00
;	../../cpu/cc2430/dev/cc2430_rf.c:408: RFD = 0;
	mov	_RFD,#0x00
;	../../cpu/cc2430/dev/cc2430_rf.c:410: return 0;
	mov	dptr,#0x0000
00122$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit'
;------------------------------------------------------------
;transmit_len              Allocated to registers 
;counter                   Allocated to registers r7 
;ret                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:414: transmit(unsigned short transmit_len)
;	-----------------------------------------
;	 function transmit
;	-----------------------------------------
_transmit:
;	../../cpu/cc2430/dev/cc2430_rf.c:419: if(!(rf_flags & RX_ACTIVE)) {
	mov	a,_rf_flags
	jb	acc.7,00102$
;	../../cpu/cc2430/dev/cc2430_rf.c:420: on();
	lcall	_on
;	../../cpu/cc2430/dev/cc2430_rf.c:421: rf_flags |= WAS_OFF;
	orl	_rf_flags,#0x10
00102$:
;	../../cpu/cc2430/dev/cc2430_rf.c:424: if(channel_clear() == CC2430_CCA_BUSY) {
	lcall	_channel_clear
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
;	../../cpu/cc2430/dev/cc2430_rf.c:425: RIMESTATS_ADD(contentiondrop);
	mov	dptr,#(_rimestats + 0x0038)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00154$
	inc	r5
	cjne	r5,#0x00,00154$
	inc	r6
	cjne	r6,#0x00,00154$
	inc	r7
00154$:
	mov	dptr,#(_rimestats + 0x0038)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:426: return RADIO_TX_COLLISION;
	mov	dptr,#0x0002
	ret
00104$:
;	../../cpu/cc2430/dev/cc2430_rf.c:433: if(RFSTATUS & SFD) {
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00107$
;	../../cpu/cc2430/dev/cc2430_rf.c:434: RIMESTATS_ADD(contentiondrop);
	mov	dptr,#(_rimestats + 0x0038)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00156$
	inc	r5
	cjne	r5,#0x00,00156$
	inc	r6
	cjne	r6,#0x00,00156$
	inc	r7
00156$:
	mov	dptr,#(_rimestats + 0x0038)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:435: return RADIO_TX_COLLISION;
	mov	dptr,#0x0002
	ret
;	../../cpu/cc2430/dev/cc2430_rf.c:439: ENERGEST_OFF(ENERGEST_TYPE_LISTEN);
00107$:
;	../../cpu/cc2430/dev/cc2430_rf.c:442: cc2430_rf_command(ISTXON);
	mov	dpl,#0xE3
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:444: while(!(RFSTATUS & TX_ACTIVE) && (counter++ < 3)) {
	mov	r7,#0x00
00112$:
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r6,a
	jb	acc.4,00114$
	mov	ar6,r7
	inc	r7
	cjne	r6,#0x03,00158$
00158$:
	jnc	00114$
;	../../cpu/cc2430/dev/cc2430_rf.c:445: clock_delay_usec(6);
	mov	dptr,#0x0006
	push	ar7
	lcall	_clock_delay_usec
	pop	ar7
	sjmp	00112$
00114$:
;	../../cpu/cc2430/dev/cc2430_rf.c:448: if(!(RFSTATUS & TX_ACTIVE)) {
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r7,a
	jb	acc.4,00117$
;	../../cpu/cc2430/dev/cc2430_rf.c:450: cc2430_rf_command(ISFLUSHTX);
	mov	dpl,#0xE7
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:451: ret = RADIO_TX_ERR;
	mov	r6,#0x01
	mov	r7,#0x00
;	../../cpu/cc2430/dev/cc2430_rf.c:454: while(RFSTATUS & TX_ACTIVE);
	sjmp	00123$
00117$:
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r5,a
	jb	acc.4,00117$
;	../../cpu/cc2430/dev/cc2430_rf.c:457: ret = RADIO_TX_OK;
	mov	r6,#0x00
	mov	r7,#0x00
;	../../cpu/cc2430/dev/cc2430_rf.c:460: ENERGEST_OFF(ENERGEST_TYPE_TRANSMIT);
00123$:
;	../../cpu/cc2430/dev/cc2430_rf.c:463: if(rf_flags & WAS_OFF){
	mov	a,_rf_flags
	jnb	acc.4,00128$
;	../../cpu/cc2430/dev/cc2430_rf.c:464: off();
	push	ar7
	push	ar6
	lcall	_off
	pop	ar6
	pop	ar7
00128$:
;	../../cpu/cc2430/dev/cc2430_rf.c:467: RIMESTATS_ADD(lltx);
	mov	dptr,#(_rimestats + 0x0040)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r2
	cjne	r2,#0x00,00163$
	inc	r3
	cjne	r3,#0x00,00163$
	inc	r4
	cjne	r4,#0x00,00163$
	inc	r5
00163$:
	mov	dptr,#(_rimestats + 0x0040)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:469: return ret;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;payload_len               Allocated to stack - _bp -4
;payload                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:473: send(void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../cpu/cc2430/dev/cc2430_rf.c:475: prepare(payload, payload_len);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prepare
	dec	sp
	dec	sp
;	../../cpu/cc2430/dev/cc2430_rf.c:476: return transmit(payload_len);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_transmit
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;bufsize                   Allocated to stack - _bp -4
;buf                       Allocated to stack - _bp +1
;i                         Allocated to registers r3 
;len                       Allocated to registers r4 
;crc_corr                  Allocated to registers r6 
;rssi                      Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:480: read(void *buf, unsigned short bufsize)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../cpu/cc2430/dev/cc2430_rf.c:500: len = RFD;
;	../../cpu/cc2430/dev/cc2430_rf.c:503: if(len > CC2430_MAX_PACKET_LEN) {
	mov	a,_RFD
	mov	r4,a
	add	a,#0xff - 0x7F
	jnc	00104$
;	../../cpu/cc2430/dev/cc2430_rf.c:507: RIMESTATS_ADD(badsynch);
	mov	dptr,#(_rimestats + 0x0030)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00152$
	inc	r6
	cjne	r6,#0x00,00152$
	inc	r5
	cjne	r5,#0x00,00152$
	inc	r4
00152$:
	mov	dptr,#(_rimestats + 0x0030)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:508: flush_rx();
	lcall	_flush_rx
;	../../cpu/cc2430/dev/cc2430_rf.c:509: return 0;
	mov	dptr,#0x0000
	ljmp	00132$
00104$:
;	../../cpu/cc2430/dev/cc2430_rf.c:512: if(len <= CC2430_MIN_PACKET_LEN) {
	mov	a,r4
	add	a,#0xff - 0x04
	jc	00108$
;	../../cpu/cc2430/dev/cc2430_rf.c:515: RIMESTATS_ADD(tooshort);
	mov	dptr,#(_rimestats + 0x002c)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00154$
	inc	r6
	cjne	r6,#0x00,00154$
	inc	r5
	cjne	r5,#0x00,00154$
	inc	r4
00154$:
	mov	dptr,#(_rimestats + 0x002c)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:516: flush_rx();
	lcall	_flush_rx
;	../../cpu/cc2430/dev/cc2430_rf.c:517: return 0;
	mov	dptr,#0x0000
	ljmp	00132$
00108$:
;	../../cpu/cc2430/dev/cc2430_rf.c:520: if(len - CHECKSUM_LEN > bufsize) {
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xFE
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	jnc	00113$
;	../../cpu/cc2430/dev/cc2430_rf.c:523: RIMESTATS_ADD(toolong);
	mov	dptr,#(_rimestats + 0x0028)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00156$
	inc	r6
	cjne	r6,#0x00,00156$
	inc	r5
	cjne	r5,#0x00,00156$
	inc	r4
00156$:
	mov	dptr,#(_rimestats + 0x0028)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:524: flush_rx();
	lcall	_flush_rx
;	../../cpu/cc2430/dev/cc2430_rf.c:525: return 0;
	mov	dptr,#0x0000
	ljmp	00132$
;	../../cpu/cc2430/dev/cc2430_rf.c:537: PRINTF("cc2430_rf: read = ");
00113$:
;	../../cpu/cc2430/dev/cc2430_rf.c:539: len -= CHECKSUM_LEN;
	dec	r4
	dec	r4
;	../../cpu/cc2430/dev/cc2430_rf.c:540: for(i = 0; i < len; ++i) {
	mov	r3,#0x00
00128$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00119$
;	../../cpu/cc2430/dev/cc2430_rf.c:541: ((unsigned char*)(buf))[i] = RFD;
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,r3
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	mov	a,_RFD
	lcall	__gptrput
;	../../cpu/cc2430/dev/cc2430_rf.c:540: for(i = 0; i < len; ++i) {
	inc	r3
	pop	ar4
;	../../cpu/cc2430/dev/cc2430_rf.c:547: PRINTF("\n");
	sjmp	00128$
00119$:
;	../../cpu/cc2430/dev/cc2430_rf.c:556: rssi = ((int8_t) RFD) - 45;
	mov	a,_RFD
	add	a,#0xD3
	mov	r7,a
;	../../cpu/cc2430/dev/cc2430_rf.c:557: crc_corr = RFD;
;	../../cpu/cc2430/dev/cc2430_rf.c:565: if(crc_corr & CRC_BIT_MASK) {
	mov	a,_RFD
	mov	r6,a
	jnb	acc.7,00122$
;	../../cpu/cc2430/dev/cc2430_rf.c:566: packetbuf_set_attr(PACKETBUF_ATTR_RSSI, rssi);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	push	ar6
	push	ar4
	push	ar7
	push	ar5
	mov	dpl,#0x04
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar4
	pop	ar6
;	../../cpu/cc2430/dev/cc2430_rf.c:567: packetbuf_set_attr(PACKETBUF_ATTR_LINK_QUALITY, crc_corr & LQI_BIT_MASK);
	anl	ar6,#0x7F
	mov	r7,#0x00
	push	ar4
	push	ar6
	push	ar7
	mov	dpl,#0x03
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar4
;	../../cpu/cc2430/dev/cc2430_rf.c:568: RIMESTATS_ADD(llrx);
	mov	dptr,#(_rimestats + 0x0044)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00159$
	inc	r5
	cjne	r5,#0x00,00159$
	inc	r6
	cjne	r6,#0x00,00159$
	inc	r7
00159$:
	mov	dptr,#(_rimestats + 0x0044)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00123$
00122$:
;	../../cpu/cc2430/dev/cc2430_rf.c:570: RIMESTATS_ADD(badcrc);
	mov	dptr,#(_rimestats + 0x0034)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r3
	cjne	r3,#0x00,00160$
	inc	r5
	cjne	r5,#0x00,00160$
	inc	r6
	cjne	r6,#0x00,00160$
	inc	r7
00160$:
	mov	dptr,#(_rimestats + 0x0034)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:571: flush_rx();
	lcall	_flush_rx
;	../../cpu/cc2430/dev/cc2430_rf.c:572: return 0;
	mov	dptr,#0x0000
	sjmp	00132$
00123$:
;	../../cpu/cc2430/dev/cc2430_rf.c:576: if((RFSTATUS & (FIFO | FIFOP)) == FIFOP) {
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0C
	cjne	r7,#0x04,00127$
;	../../cpu/cc2430/dev/cc2430_rf.c:584: if(!RXFIFOCNT) {
	mov	dptr,#_RXFIFOCNT
	movx	a,@dptr
	mov	r7,a
	jnz	00127$
;	../../cpu/cc2430/dev/cc2430_rf.c:585: flush_rx();
	push	ar4
	lcall	_flush_rx
	pop	ar4
00127$:
;	../../cpu/cc2430/dev/cc2430_rf.c:598: RFIF &= ~IRQ_FIFOP;
	mov	r7,_RFIF
	anl	ar7,#0xDF
	mov	_RFIF,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:600: return (len);
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r7
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_clear'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:604: channel_clear(void)
;	-----------------------------------------
;	 function channel_clear
;	-----------------------------------------
_channel_clear:
;	../../cpu/cc2430/dev/cc2430_rf.c:606: if(!(RFSTATUS & CCA)) {
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00102$
;	../../cpu/cc2430/dev/cc2430_rf.c:607: return CC2430_CCA_BUSY;
	mov	dptr,#0x0000
	ret
00102$:
;	../../cpu/cc2430/dev/cc2430_rf.c:609: return CC2430_CCA_CLEAR;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiving_packet'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:613: receiving_packet(void)
;	-----------------------------------------
;	 function receiving_packet
;	-----------------------------------------
_receiving_packet:
;	../../cpu/cc2430/dev/cc2430_rf.c:621: return (RFSTATUS & (TX_ACTIVE | SFD) == SFD);
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pending_packet'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:625: pending_packet(void)
;	-----------------------------------------
;	 function pending_packet
;	-----------------------------------------
_pending_packet:
;	../../cpu/cc2430/dev/cc2430_rf.c:627: return (RFSTATUS & FIFOP);
	mov	dptr,#_RFSTATUS
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x04
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;t0                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:638: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../../cpu/cc2430/dev/cc2430_rf.c:642: if(!(rf_flags & RX_ACTIVE)) {
	mov	a,_rf_flags
	jb	acc.7,00111$
;	../../cpu/cc2430/dev/cc2430_rf.c:643: t0 = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r4,_T1CNTH
	mov	ar5,r4
	clr	a
	mov	r4,a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	../../cpu/cc2430/dev/cc2430_rf.c:644: rf_flags |= RX_ACTIVE;
	orl	_rf_flags,#0x80
;	../../cpu/cc2430/dev/cc2430_rf.c:645: IOCFG0 = 0x7f; /* Set the FIFOP threshold 127 */
	mov	dptr,#_IOCFG0
	mov	a,#0x7F
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:646: RSSIH = 0xd2; /* -84dbm = 0xd2 default, 0xe0 -70 dbm */
	mov	dptr,#_RSSIH
	mov	a,#0xD2
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:648: RFPWR &= ~RREG_RADIO_PD; /* make sure it's powered */
	mov	dptr,#_RFPWR
	movx	a,@dptr
	anl	a,#0xF7
	mov	r5,a
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:649: while ((RFIF & IRQ_RREG_ON) == 0); /* wait for power up */
00103$:
	mov	a,_RFIF
	jnb	acc.7,00103$
;	../../cpu/cc2430/dev/cc2430_rf.c:652: RFIF &= ~IRQ_RREG_ON;
	mov	r5,_RFIF
	anl	ar5,#0x7F
	mov	_RFIF,r5
;	../../cpu/cc2430/dev/cc2430_rf.c:654: cc2430_rf_command(ISRXON);
	mov	dpl,#0xE2
	push	ar7
	push	ar6
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:655: cc2430_rf_command(ISFLUSHRX);
	mov	dpl,#0xE6
	lcall	_cc2430_rf_command
	pop	ar6
	pop	ar7
;	../../cpu/cc2430/dev/cc2430_rf.c:656: while (RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + ONOFF_TIME));
	mov	a,#0x09
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
00106$:
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
	jb	acc.7,00106$
;	../../cpu/cc2430/dev/cc2430_rf.c:659: PRINTF("cc2430_rf_rx_enable done\n");
00111$:
;	../../cpu/cc2430/dev/cc2430_rf.c:661: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	../../cpu/cc2430/dev/cc2430_rf.c:673: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	../../cpu/cc2430/dev/cc2430_rf.c:675: cc2430_rf_command(ISSTOP);  /* make sure CSP is not running */
	mov	dpl,#0xFF
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:676: cc2430_rf_command(ISRFOFF);
	mov	dpl,#0xE5
	lcall	_cc2430_rf_command
;	../../cpu/cc2430/dev/cc2430_rf.c:678: RFPWR |= RREG_RADIO_PD;   /* RF powerdown */
	mov	dptr,#_RFPWR
	movx	a,@dptr
	orl	a,#0x08
	movx	@dptr,a
;	../../cpu/cc2430/dev/cc2430_rf.c:681: RFIF &= ~IRQ_RREG_ON;
	mov	r7,_RFIF
	anl	ar7,#0x7F
	mov	_RFIF,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:683: rf_flags &= ~RX_ACTIVE;
	mov	r7,_rf_flags
	anl	ar7,#0x7F
;	../../cpu/cc2430/dev/cc2430_rf.c:684: rf_flags &= ~WAS_OFF;
	mov  _rf_flags,r7
	anl	ar7,#0xEF
	mov	_rf_flags,r7
;	../../cpu/cc2430/dev/cc2430_rf.c:686: return 1;
	mov	dptr,#0x0001
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_cc2430_rf_driver:
	.byte _init,(_init >> 8)
	.byte _prepare,(_prepare >> 8)
	.byte _transmit,(_transmit >> 8)
	.byte _send,(_send >> 8)
	.byte _read,(_read >> 8)
	.byte _channel_clear,(_channel_clear >> 8)
	.byte _receiving_packet,(_receiving_packet >> 8)
	.byte _pending_packet,(_pending_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
