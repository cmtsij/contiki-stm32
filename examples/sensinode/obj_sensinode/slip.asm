;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:32 2013
;--------------------------------------------------------
	.module slip
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _slip_arch_writeb
	.globl _uip_ipchksum
	.globl _uip_htons
	.globl _tcpip_input
	.globl _process_poll
	.globl _memset
	.globl _strncmp
	.globl _memcmp
	.globl _memcpy
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
	.globl _slip_process
	.globl _slip_active
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
	.globl _slip_set_input_callback
	.globl _slip_send
	.globl _slip_write
	.globl _slip_input_byte
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
_slip_active::
	.ds 1
_begin:
	.ds 2
_end:
	.ds 2
_rxbuf:
	.ds 110
_pkt_end:
	.ds 2
_process_thread_slip_process_ip_id_6_11:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_slip_process::
	.ds 9
_state:
	.ds 1
_input_callback:
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
;Allocation info for local variables in function 'slip_set_input_callback'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	../../core/dev/slip.c:92: slip_set_input_callback(void (*c)(void))
;	-----------------------------------------
;	 function slip_set_input_callback
;	-----------------------------------------
_slip_set_input_callback:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_input_callback
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/dev/slip.c:94: input_callback = c;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'slip_send'
;------------------------------------------------------------
;i                         Allocated to stack - _bp +1
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r4 
;------------------------------------------------------------
;	../../core/dev/slip.c:102: slip_send(void)
;	-----------------------------------------
;	 function slip_send
;	-----------------------------------------
_slip_send:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	../../core/dev/slip.c:108: slip_arch_writeb(SLIP_END);
	mov	dpl,#0xC0
	lcall	_slip_arch_writeb
;	../../core/dev/slip.c:110: ptr = &uip_buf[UIP_LLH_LEN];
	mov	r5,#(_uip_aligned_buf + 0x000e)
	mov	r6,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	r7,#0x00
;	../../core/dev/slip.c:111: for(i = 0; i < uip_len; ++i) {
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00108$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00125$
	ljmp	00111$
00125$:
;	../../core/dev/slip.c:112: if(i == UIP_TCPIP_HLEN) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x28,00102$
	inc	r0
	cjne	@r0,#0x00,00102$
;	../../core/dev/slip.c:113: ptr = (uint8_t *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
00102$:
;	../../core/dev/slip.c:115: c = *ptr++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../../core/dev/slip.c:116: if(c == SLIP_END) {
	cjne	r4,#0xC0,00106$
;	../../core/dev/slip.c:117: slip_arch_writeb(SLIP_ESC);
	mov	dpl,#0xDB
	push	ar7
	push	ar6
	push	ar5
	lcall	_slip_arch_writeb
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:118: c = SLIP_ESC_END;
	mov	r4,#0xDC
	sjmp	00107$
00106$:
;	../../core/dev/slip.c:119: } else if(c == SLIP_ESC) {
	cjne	r4,#0xDB,00107$
;	../../core/dev/slip.c:120: slip_arch_writeb(SLIP_ESC);
	mov	dpl,#0xDB
	push	ar7
	push	ar6
	push	ar5
	lcall	_slip_arch_writeb
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:121: c = SLIP_ESC_ESC;
	mov	r4,#0xDD
00107$:
;	../../core/dev/slip.c:123: slip_arch_writeb(c);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_slip_arch_writeb
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:111: for(i = 0; i < uip_len; ++i) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00132$
	inc	r0
	inc	@r0
00132$:
	ljmp	00108$
00111$:
;	../../core/dev/slip.c:125: slip_arch_writeb(SLIP_END);
	mov	dpl,#0xC0
	lcall	_slip_arch_writeb
;	../../core/dev/slip.c:127: return UIP_FW_OK;
	mov	dpl,#0x00
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'slip_write'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;_ptr                      Allocated to registers r5 r6 r7 
;ptr                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	../../core/dev/slip.c:132: slip_write(const void *_ptr, int len)
;	-----------------------------------------
;	 function slip_write
;	-----------------------------------------
_slip_write:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/dev/slip.c:134: const uint8_t *ptr = _ptr;
;	../../core/dev/slip.c:138: slip_arch_writeb(SLIP_END);
	mov	dpl,#0xC0
	push	ar7
	push	ar6
	push	ar5
	lcall	_slip_arch_writeb
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:140: for(i = 0; i < len; ++i) {
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00109$
;	../../core/dev/slip.c:141: c = *ptr++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../../core/dev/slip.c:142: if(c == SLIP_END) {
	cjne	r2,#0xC0,00104$
;	../../core/dev/slip.c:143: slip_arch_writeb(SLIP_ESC);
	mov	dpl,#0xDB
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_slip_arch_writeb
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:144: c = SLIP_ESC_END;
	mov	r2,#0xDC
	sjmp	00105$
00104$:
;	../../core/dev/slip.c:145: } else if(c == SLIP_ESC) {
	cjne	r2,#0xDB,00105$
;	../../core/dev/slip.c:146: slip_arch_writeb(SLIP_ESC);
	mov	dpl,#0xDB
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_slip_arch_writeb
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:147: c = SLIP_ESC_ESC;
	mov	r2,#0xDD
00105$:
;	../../core/dev/slip.c:149: slip_arch_writeb(c);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_slip_arch_writeb
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:140: for(i = 0; i < len; ++i) {
	inc	r3
	cjne	r3,#0x00,00126$
	inc	r4
00126$:
	ljmp	00106$
00109$:
;	../../core/dev/slip.c:151: slip_arch_writeb(SLIP_END);
	mov	dpl,#0xC0
	lcall	_slip_arch_writeb
;	../../core/dev/slip.c:153: return len;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar7,@r0
	mov	dpl,r7
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rxbuf_init'
;------------------------------------------------------------
;	../../core/dev/slip.c:157: rxbuf_init(void)
;	-----------------------------------------
;	 function rxbuf_init
;	-----------------------------------------
_rxbuf_init:
;	../../core/dev/slip.c:159: begin = end = pkt_end = 0;
	mov	dptr,#_pkt_end
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_end
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_begin
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/dev/slip.c:160: state = STATE_OK;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'slip_poll_handler'
;------------------------------------------------------------
;blen                      Allocated to stack - _bp -4
;outbuf                    Allocated to stack - _bp +1
;i                         Allocated to registers r3 r4 
;len                       Allocated to stack - _bp +4
;i                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +10
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	../../core/dev/slip.c:165: slip_poll_handler(uint8_t *outbuf, uint16_t blen)
;	-----------------------------------------
;	 function slip_poll_handler
;	-----------------------------------------
_slip_poll_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../core/dev/slip.c:168: if(rxbuf[begin] == 'C') {
	mov	dptr,#_begin
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,#_rxbuf
	mov	r7,a
	mov	a,r4
	addc	a,#(_rxbuf >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x43,00167$
	sjmp	00168$
00167$:
	ljmp	00106$
00168$:
;	../../core/dev/slip.c:170: if(begin < end && (end - begin) >= 6
	mov	dptr,#_end
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r2
	jc	00169$
	ljmp	00106$
00169$:
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r2
	subb	a,r4
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x06
	mov	a,r4
	subb	a,#0x00
	jnc	00170$
	ljmp	00106$
00170$:
;	../../core/dev/slip.c:171: && memcmp(&rxbuf[begin], "CLIENT", 6) == 0) {
	mov	ar3,r7
	mov	ar4,r6
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jnz	00106$
;	../../core/dev/slip.c:172: state = STATE_TWOPACKETS;	/* Interrupts do nothing. */
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	../../core/dev/slip.c:173: memset(&rxbuf[begin], 0x0, 6);
	mov	dptr,#_begin
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,#_rxbuf
	mov	r3,a
	mov	a,r4
	addc	a,#(_rxbuf >> 8)
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/dev/slip.c:175: rxbuf_init();
	lcall	_rxbuf_init
;	../../core/dev/slip.c:177: for(i = 0; i < 13; i++) {
	mov	r3,#0x00
	mov	r4,#0x00
00120$:
	clr	c
	mov	a,r3
	subb	a,#0x0D
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
;	../../core/dev/slip.c:178: slip_arch_writeb("CLIENTSERVER\300"[i]);
	mov	a,r3
	add	a,#__str_1
	mov	dpl,a
	mov	a,r4
	addc	a,#(__str_1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar4
	push	ar3
	lcall	_slip_arch_writeb
	pop	ar3
	pop	ar4
;	../../core/dev/slip.c:177: for(i = 0; i < 13; i++) {
	inc	r3
	cjne	r3,#0x00,00120$
	inc	r4
	sjmp	00120$
00123$:
;	../../core/dev/slip.c:180: return 0;
	mov	dptr,#0x0000
	ljmp	00132$
00106$:
;	../../core/dev/slip.c:214: if(begin != pkt_end) {
	mov	dptr,#_begin
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_pkt_end
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	cjne	a,ar3,00174$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00174$
	ljmp	00119$
00174$:
;	../../core/dev/slip.c:217: if(begin < pkt_end) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00114$
;	../../core/dev/slip.c:218: len = pkt_end - begin;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r7,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	../../core/dev/slip.c:219: if(len > blen) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	jnc	00108$
;	../../core/dev/slip.c:220: len = 0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	ljmp	00115$
00108$:
;	../../core/dev/slip.c:222: memcpy(outbuf, &rxbuf[begin], len);
	mov	a,r3
	add	a,#_rxbuf
	mov	r5,a
	mov	a,r4
	addc	a,#(_rxbuf >> 8)
	mov	r4,a
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00115$
00114$:
;	../../core/dev/slip.c:225: len = (RX_BUFSIZE - begin) + (pkt_end - 0);
	mov	a,#0x6E
	clr	c
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/dev/slip.c:226: if(len > blen) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	jnc	00111$
;	../../core/dev/slip.c:227: len = 0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	sjmp	00115$
00111$:
;	../../core/dev/slip.c:230: for(i = begin; i < RX_BUFSIZE; i++) {
	mov	ar6,r3
	mov	ar7,r4
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
00124$:
	clr	c
	mov	a,r6
	subb	a,#0x6E
	mov	a,r7
	subb	a,#0x00
	jnc	00127$
;	../../core/dev/slip.c:231: *outbuf++ = rxbuf[i];
	mov	a,r6
	add	a,#_rxbuf
	mov	dpl,a
	mov	a,r7
	addc	a,#(_rxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	../../core/dev/slip.c:230: for(i = begin; i < RX_BUFSIZE; i++) {
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
	sjmp	00124$
00127$:
;	../../core/dev/slip.c:233: for(i = 0; i < pkt_end; i++) {
	mov	ar7,r3
	mov	ar6,r4
	mov	r3,#0x00
	mov	r4,#0x00
00128$:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00115$
;	../../core/dev/slip.c:234: *outbuf++ = rxbuf[i];
	mov	a,r3
	add	a,#_rxbuf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_rxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r7,dpl
	mov	r6,dph
;	../../core/dev/slip.c:233: for(i = 0; i < pkt_end; i++) {
	inc	r3
	cjne	r3,#0x00,00128$
	inc	r4
	sjmp	00128$
00115$:
;	../../core/dev/slip.c:240: begin = pkt_end;
	mov	dptr,#_pkt_end
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_begin
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/dev/slip.c:241: if(state == STATE_TWOPACKETS) {
	mov	dptr,#_state
	movx	a,@dptr
	mov	r7,a
	jnz	00117$
;	../../core/dev/slip.c:242: pkt_end = end;
	mov	dptr,#_end
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pkt_end
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/dev/slip.c:243: state = STATE_OK;		/* Assume no bytes where lost! */
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	../../core/dev/slip.c:246: process_poll(&slip_process);
	mov	dptr,#_slip_process
	mov	b,#0x00
	lcall	_process_poll
00117$:
;	../../core/dev/slip.c:248: return len;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	sjmp	00132$
00119$:
;	../../core/dev/slip.c:251: return 0;
	mov	dptr,#0x0000
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_thread_slip_process'
;------------------------------------------------------------
;ev                        Allocated to stack - _bp -3
;data                      Allocated to stack - _bp -6
;process_pt                Allocated to registers r5 r6 r7 
;PT_YIELD_FLAG             Allocated to registers r4 
;buf                       Allocated to stack - _bp +1
;nid                       Allocated to registers r3 r4 
;ip_id                     Allocated with name '_process_thread_slip_process_ip_id_6_11'
;------------------------------------------------------------
;	../../core/dev/slip.c:254: PROCESS_THREAD(slip_process, ev, data)
;	-----------------------------------------
;	 function process_thread_slip_process
;	-----------------------------------------
_process_thread_slip_process:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	../../core/dev/slip.c:256: PROCESS_BEGIN();
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r4,#0x01
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,00160$
	cjne	r3,#0x00,00160$
	sjmp	00101$
00160$:
	cjne	r2,#0x05,00161$
	cjne	r3,#0x01,00161$
	sjmp	00102$
00161$:
	ljmp	00129$
00101$:
;	../../core/dev/slip.c:258: rxbuf_init();
	push	ar7
	push	ar6
	push	ar5
	lcall	_rxbuf_init
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:260: while(1) {
00127$:
;	../../core/dev/slip.c:261: PROCESS_YIELD_UNTIL(ev == PROCESS_EVENT_POLL);
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00102$:
	mov	a,r4
	jz	00103$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x82,00163$
	sjmp	00107$
00163$:
00103$:
	mov	dpl,#0x01
	ljmp	00130$
00107$:
;	../../core/dev/slip.c:263: slip_active = 1;
	mov	dptr,#_slip_active
	mov	a,#0x01
	movx	@dptr,a
;	../../core/dev/slip.c:266: uip_len = slip_poll_handler(&uip_buf[UIP_LLH_LEN],
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x5E
	push	acc
	clr	a
	push	acc
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	mov	b,#0x00
	lcall	_slip_poll_handler
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_uip_len
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/dev/slip.c:269: if(uip_len == 4 && strncmp((char*)&uip_buf[UIP_LLH_LEN], "?IPA", 4) == 0) {
	cjne	r3,#0x04,00164$
	cjne	r4,#0x00,00164$
	sjmp	00165$
00164$:
	ljmp	00123$
00165$:
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_strncmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00166$
	ljmp	00123$
00166$:
;	../../core/dev/slip.c:271: memcpy(&buf[0], "=IPA", 4);
	push	ar5
	push	ar6
	push	ar7
	mov	r4,_bp
	inc	r4
	mov	ar2,r4
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:272: memcpy(&buf[4], &uip_hostaddr, 4);
	mov	a,#0x04
	add	a,r4
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_hostaddr
	push	acc
	mov	a,#(_uip_hostaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/dev/slip.c:273: if(input_callback) {
	mov	dptr,#_input_callback
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00110$
;	../../core/dev/slip.c:274: input_callback();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dptr,#_input_callback
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dpl,r0
	lcall	__sdcc_call_dptr
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00110$:
;	../../core/dev/slip.c:276: slip_write(buf, 8);
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_slip_write
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00127$
00123$:
;	../../core/dev/slip.c:277: } else if(uip_len > 0
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00169$
	ljmp	00118$
00169$:
;	../../core/dev/slip.c:278: && uip_len == (((uint16_t)(BUF->len[0]) << 8) + BUF->len[1])
	push	ar5
	push	ar6
	push	ar7
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r2
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	dpl,r2
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	cjne	a,ar7,00170$
	mov	a,r4
	cjne	a,ar6,00170$
	sjmp	00171$
00170$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00118$
00171$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/dev/slip.c:279: && uip_ipchksum() == 0xffff) {
	push	ar7
	push	ar6
	push	ar5
	lcall	_uip_ipchksum
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0xFF,00172$
	cjne	r4,#0xFF,00172$
	sjmp	00173$
00172$:
	ljmp	00118$
00173$:
;	../../core/dev/slip.c:281: if(BUF->ipid[0] == 0 && BUF->ipid[1] == 0 && BUF->ipoffset[0] & IP_DF) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jz	00174$
	ljmp	00114$
00174$:
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x05
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jz	00175$
	ljmp	00114$
00175$:
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x06
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jb	acc.6,00176$
	ljmp	00114$
00176$:
;	../../core/dev/slip.c:283: uint16_t nid = ip_id++;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_process_thread_slip_process_ip_id_6_11
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_process_thread_slip_process_ip_id_6_11
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	../../core/dev/slip.c:284: BUF->ipid[0] = nid >> 8;
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar6,r4
	mov	dpl,r2
	mov	dph,r7
	mov	a,r6
	movx	@dptr,a
;	../../core/dev/slip.c:285: BUF->ipid[1] = nid;
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar5,r3
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
;	../../core/dev/slip.c:286: nid = uip_htons(nid);
	mov	dpl,r3
	mov	dph,r4
	push	ar5
	lcall	_uip_htons
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	mov	ar3,r6
	mov	ar4,r7
;	../../core/dev/slip.c:287: nid = ~nid;		/* negate */
	mov	a,r3
	cpl	a
	mov	r3,a
	mov	a,r4
	cpl	a
	mov	r4,a
;	../../core/dev/slip.c:288: BUF->ipchksum += nid;	/* add */
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r2,#(_uip_aligned_buf + 0x000e)
	mov	r5,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	add	a,r2
	mov	r2,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../core/dev/slip.c:289: if(BUF->ipchksum < nid) { /* 1-complement overflow? */
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00114$
;	../../core/dev/slip.c:290: BUF->ipchksum++;
	push	ar5
	push	ar6
	push	ar7
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0A
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00178$
	inc	r7
00178$:
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/dev/slip.c:316: PROCESS_END();
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/dev/slip.c:290: BUF->ipchksum++;
00114$:
;	../../core/dev/slip.c:296: tcpip_input();
	push	ar7
	push	ar6
	push	ar5
	lcall	_tcpip_input
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00127$
00118$:
;	../../core/dev/slip.c:299: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00127$
;	../../core/dev/slip.c:316: PROCESS_END();
00129$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,#0x03
00130$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'slip_input_byte'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;next                      Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	../../core/dev/slip.c:320: slip_input_byte(unsigned char c)
;	-----------------------------------------
;	 function slip_input_byte
;	-----------------------------------------
_slip_input_byte:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r7,dpl
;	../../core/dev/slip.c:322: switch(state) {
	mov	dptr,#_state
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x03
	jnc	00157$
	ljmp	00123$
00157$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00158$
	jmp	@a+dptr
00158$:
	ljmp	00104$
	ljmp	00112$
	ljmp	00105$
;	../../core/dev/slip.c:323: case STATE_RUBBISH:
;	../../core/dev/slip.c:324: if(c == SLIP_END) {
	cjne	r7,#0xC0,00103$
;	../../core/dev/slip.c:325: state = STATE_OK;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
00103$:
;	../../core/dev/slip.c:327: return 0;
	mov	dptr,#0x0000
	ljmp	00131$
;	../../core/dev/slip.c:329: case STATE_TWOPACKETS:       /* Two packets are already buffered! */
00104$:
;	../../core/dev/slip.c:330: return 0;
	mov	dptr,#0x0000
	ljmp	00131$
;	../../core/dev/slip.c:332: case STATE_ESC:
00105$:
;	../../core/dev/slip.c:333: if(c == SLIP_ESC_END) {
	cjne	r7,#0xDC,00110$
;	../../core/dev/slip.c:334: c = SLIP_END;
	mov	r7,#0xC0
	sjmp	00111$
00110$:
;	../../core/dev/slip.c:335: } else if(c == SLIP_ESC_ESC) {
	cjne	r7,#0xDD,00107$
;	../../core/dev/slip.c:336: c = SLIP_ESC;
	mov	r7,#0xDB
	sjmp	00111$
00107$:
;	../../core/dev/slip.c:338: state = STATE_RUBBISH;
	mov	dptr,#_state
	mov	a,#0x03
	movx	@dptr,a
;	../../core/dev/slip.c:340: end = pkt_end;		/* remove rubbish */
	mov	dptr,#_pkt_end
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_end
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	../../core/dev/slip.c:341: return 0;
	mov	dptr,#0x0000
	ljmp	00131$
00111$:
;	../../core/dev/slip.c:343: state = STATE_OK;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	../../core/dev/slip.c:344: break;
	ljmp	00123$
;	../../core/dev/slip.c:346: case STATE_OK:
00112$:
;	../../core/dev/slip.c:347: if(c == SLIP_ESC) {
	cjne	r7,#0xDB,00121$
;	../../core/dev/slip.c:348: state = STATE_ESC;
	mov	dptr,#_state
	mov	a,#0x02
	movx	@dptr,a
;	../../core/dev/slip.c:349: return 0;
	mov	dptr,#0x0000
	ljmp	00131$
00121$:
;	../../core/dev/slip.c:350: } else if(c == SLIP_END) {
	cjne	r7,#0xC0,00123$
;	../../core/dev/slip.c:356: if(end != pkt_end) {	/* Non zero length. */
	mov	dptr,#_end
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pkt_end
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar3,00169$
	mov	a,r6
	cjne	a,ar4,00169$
	sjmp	00117$
00169$:
;	../../core/dev/slip.c:357: if(begin == pkt_end) {	/* None buffered. */
	push	ar5
	push	ar6
	mov	dptr,#_begin
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r2
	cjne	a,ar3,00170$
	mov	a,r6
	cjne	a,ar4,00170$
	sjmp	00171$
00170$:
	pop	ar6
	pop	ar5
	sjmp	00114$
00171$:
	pop	ar6
	pop	ar5
;	../../core/dev/slip.c:358: pkt_end = end;
	mov	dptr,#_pkt_end
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp	00115$
00114$:
;	../../core/dev/slip.c:360: state = STATE_TWOPACKETS;
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
00115$:
;	../../core/dev/slip.c:363: process_poll(&slip_process);
	mov	dptr,#_slip_process
	mov	b,#0x00
	lcall	_process_poll
;	../../core/dev/slip.c:364: return 1;
	mov	dptr,#0x0001
	ljmp	00131$
00117$:
;	../../core/dev/slip.c:366: return 0;
	mov	dptr,#0x0000
	ljmp	00131$
;	../../core/dev/slip.c:369: }
00123$:
;	../../core/dev/slip.c:374: next = end + 1;
	mov	dptr,#_end
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
;	../../core/dev/slip.c:375: if(next == RX_BUFSIZE) {
	cjne	r3,#0x6E,00125$
	cjne	r4,#0x00,00125$
;	../../core/dev/slip.c:376: next = 0;
	mov	r3,#0x00
	mov	r4,#0x00
00125$:
;	../../core/dev/slip.c:378: if(next == begin) {		/* rxbuf is full */
	mov	dptr,#_begin
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00174$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00174$
	sjmp	00175$
00174$:
	sjmp	00127$
00175$:
;	../../core/dev/slip.c:379: state = STATE_RUBBISH;
	mov	dptr,#_state
	mov	a,#0x03
	movx	@dptr,a
;	../../core/dev/slip.c:381: end = pkt_end;		/* remove rubbish */
	mov	dptr,#_pkt_end
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dptr,#_end
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
;	../../core/dev/slip.c:382: return 0;
	mov	dptr,#0x0000
	sjmp	00131$
00127$:
;	../../core/dev/slip.c:384: rxbuf[end] = c;
	mov	a,r5
	add	a,#_rxbuf
	mov	dpl,a
	mov	a,r6
	addc	a,#(_rxbuf >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	../../core/dev/slip.c:385: end = next;
	mov	dptr,#_end
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/dev/slip.c:389: if(c == 'T' && rxbuf[begin] == 'C') {
	cjne	r7,#0x54,00129$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_rxbuf
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_rxbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,00129$
;	../../core/dev/slip.c:390: process_poll(&slip_process);
	mov	dptr,#_slip_process
	mov	b,#0x00
	lcall	_process_poll
;	../../core/dev/slip.c:391: return 1;
	mov	dptr,#0x0001
	sjmp	00131$
00129$:
;	../../core/dev/slip.c:394: return 0;
	mov	dptr,#0x0000
00131$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "CLIENT"
	.db 0x00
__str_1:
	.ascii "CLIENTSERVER"
	.db 0xC0
	.db 0x00
__str_2:
	.ascii "?IPA"
	.db 0x00
__str_3:
	.ascii "=IPA"
	.db 0x00
	.area XINIT   (CODE)
__xinit__slip_process:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.byte _process_thread_slip_process,(_process_thread_slip_process >> 8)
	.byte #0x00,#0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__state:
	.db #0x00	; 0
__xinit__input_callback:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
