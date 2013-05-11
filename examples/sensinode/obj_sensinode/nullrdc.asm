;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:20 2013
;--------------------------------------------------------
	.module nullrdc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nullrdc_driver
	.globl _watchdog_periodic
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _mac_call_sent_callback
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
_received_seqnos:
	.ds 48
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
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;sent                      Allocated to registers r6 r7 
;ret                       Allocated to registers r4 r5 
;is_broadcast              Allocated to registers r5 r4 
;dsn                       Allocated to stack - _bp +1
;wt                        Allocated to stack - _bp +2
;len                       Allocated to registers r6 r7 
;ackbuf                    Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:104: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0A
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/nullrdc.c:107: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &rimeaddr_node_addr);
	push	ar7
	push	ar6
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/nullrdc.c:109: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/nullrdc.c:112: if(NETSTACK_FRAMER.create() < 0) {
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r5
	jnb	acc.7,00130$
;	../../core/net/mac/nullrdc.c:115: ret = MAC_TX_ERR_FATAL;
	mov	r4,#0x05
	mov	r5,#0x00
	ljmp	00131$
00130$:
;	../../core/net/mac/nullrdc.c:121: dsn = ((uint8_t *)packetbuf_hdrptr())[2] & 0xff;
	push	ar6
	push	ar7
	push	ar6
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	pop	ar6
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
;	../../core/net/mac/nullrdc.c:123: NETSTACK_RADIO.prepare(packetbuf_hdrptr(), packetbuf_totlen());
	mov	dptr,#(_cc2430_rf_driver + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,_bp
	add	a,#0x07
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	pop	ar4
	pop	ar5
	pop	ar6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00166$
	push	acc
	mov	a,#(00166$ >> 8)
	push	acc
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	ret
00166$:
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/nullrdc.c:126: &rimeaddr_null);
;	../../core/net/mac/nullrdc.c:125: is_broadcast = rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	ar5,r6
	mov	ar4,r7
;	../../core/net/mac/nullrdc.c:128: if(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar5
	push	ar4
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jnz	00124$
;	../../core/net/mac/nullrdc.c:129: (!is_broadcast && NETSTACK_RADIO.pending_packet())) {
	mov	a,r5
	orl	a,r4
	jnz	00125$
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00125$
00124$:
;	../../core/net/mac/nullrdc.c:134: ret = MAC_TX_COLLISION;
	mov	r4,#0x01
	mov	r5,#0x00
	ljmp	00131$
00125$:
;	../../core/net/mac/nullrdc.c:137: switch(NETSTACK_RADIO.transmit(packetbuf_totlen())) {
	push	ar6
	push	ar7
	mov	dptr,#(_cc2430_rf_driver + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_totlen
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#00172$
	push	acc
	mov	a,#(00172$ >> 8)
	push	acc
	push	ar2
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	ret
00172$:
	mov	r3,dpl
	mov	r2,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x00,00173$
	cjne	r2,#0x00,00173$
	pop	ar7
	pop	ar6
	sjmp	00101$
00173$:
	pop	ar7
	pop	ar6
	cjne	r3,#0x02,00174$
	cjne	r2,#0x00,00174$
	ljmp	00121$
00174$:
	ljmp	00122$
;	../../core/net/mac/nullrdc.c:138: case RADIO_TX_OK:
00101$:
;	../../core/net/mac/nullrdc.c:139: if(is_broadcast) {
	mov	a,r5
	orl	a,r4
	jz	00119$
;	../../core/net/mac/nullrdc.c:140: ret = MAC_TX_OK;
	mov	r4,#0x00
	mov	r5,#0x00
	ljmp	00131$
00119$:
;	../../core/net/mac/nullrdc.c:145: wt = RTIMER_NOW();
	push	ar6
	push	ar7
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r6,_T1CNTH
	mov	ar7,r6
	clr	a
	mov	r6,a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../../core/net/mac/nullrdc.c:146: watchdog_periodic();
	push	ar7
	push	ar6
	lcall	_watchdog_periodic
	pop	ar6
	pop	ar7
;	../../core/net/mac/nullrdc.c:147: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + ACK_WAIT_TIME));
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
;	../../core/net/mac/nullrdc.c:202: mac_call_sent_callback(sent, ptr, ret, 1);
	pop	ar7
	pop	ar6
;	../../core/net/mac/nullrdc.c:147: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + ACK_WAIT_TIME));
00102$:
	push	ar6
	push	ar7
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r6,_T1CNTH
	mov	ar7,r6
	clr	a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	mov	a,r3
	subb	a,r4
	mov	r3,a
	pop	ar7
	pop	ar6
	jb	acc.7,00102$
;	../../core/net/mac/nullrdc.c:149: ret = MAC_TX_NOACK;
	mov	r4,#0x02
	mov	r5,#0x00
;	../../core/net/mac/nullrdc.c:150: if(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jnz	00114$
;	../../core/net/mac/nullrdc.c:151: NETSTACK_RADIO.pending_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jnz	00114$
;	../../core/net/mac/nullrdc.c:152: NETSTACK_RADIO.channel_clear() == 0) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00182$
	ljmp	00131$
00182$:
00114$:
;	../../core/net/mac/nullrdc.c:156: wt = RTIMER_NOW();
	push	ar4
	push	ar5
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r4,_T1CNTH
	mov	ar5,r4
	clr	a
	mov	r4,a
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../../core/net/mac/nullrdc.c:157: watchdog_periodic();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_watchdog_periodic
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/nullrdc.c:158: while(RTIMER_CLOCK_LT(RTIMER_NOW(),
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x0A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../../core/net/mac/nullrdc.c:202: mac_call_sent_callback(sent, ptr, ret, 1);
	pop	ar5
	pop	ar4
;	../../core/net/mac/nullrdc.c:158: while(RTIMER_CLOCK_LT(RTIMER_NOW(),
00105$:
	push	ar4
	push	ar5
	mov	r2,_T1CNTL
	mov	r3,#0x00
	mov	r4,_T1CNTH
	mov	ar5,r4
	clr	a
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	pop	ar5
	pop	ar4
	jb	acc.7,00105$
;	../../core/net/mac/nullrdc.c:161: if(NETSTACK_RADIO.pending_packet()) {
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00131$
;	../../core/net/mac/nullrdc.c:162: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
	push	ar6
	push	ar7
	mov	dptr,#(_cc2430_rf_driver + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r2,a
	mov	r3,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar2
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#00186$
	push	acc
	mov	a,#(00186$ >> 8)
	push	acc
	push	ar5
	push	ar4
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	ret
00186$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/nullrdc.c:163: if(len == ACK_LEN && ackbuf[2] == dsn) {
	cjne	r6,#0x03,00187$
	cjne	r7,#0x00,00187$
	sjmp	00188$
00187$:
	pop	ar7
	pop	ar6
	sjmp	00109$
00188$:
	pop	ar7
	pop	ar6
	mov	a,#0x02
	add	a,r2
	mov	r1,a
	mov	ar3,@r1
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00109$
;	../../core/net/mac/nullrdc.c:165: ret = MAC_TX_OK;
	mov	r4,#0x00
	mov	r5,#0x00
	sjmp	00131$
00109$:
;	../../core/net/mac/nullrdc.c:168: ret = MAC_TX_COLLISION;
	mov	r4,#0x01
	mov	r5,#0x00
;	../../core/net/mac/nullrdc.c:173: break;
;	../../core/net/mac/nullrdc.c:174: case RADIO_TX_COLLISION:
	sjmp	00131$
00121$:
;	../../core/net/mac/nullrdc.c:175: ret = MAC_TX_COLLISION;
	mov	r4,#0x01
	mov	r5,#0x00
;	../../core/net/mac/nullrdc.c:176: break;
;	../../core/net/mac/nullrdc.c:177: default:
	sjmp	00131$
00122$:
;	../../core/net/mac/nullrdc.c:178: ret = MAC_TX_ERR;
	mov	r4,#0x04
	mov	r5,#0x00
;	../../core/net/mac/nullrdc.c:180: }
00131$:
;	../../core/net/mac/nullrdc.c:202: mac_call_sent_callback(sent, ptr, ret, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;buf_list                  Allocated to stack - _bp -8
;sent                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:206: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/nullrdc.c:208: if(buf_list != NULL) {
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../../core/net/mac/nullrdc.c:209: queuebuf_to_packetbuf(buf_list->buf);
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_queuebuf_to_packetbuf
	pop	ar6
	pop	ar7
;	../../core/net/mac/nullrdc.c:210: send_packet(sent, ptr);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_input'
;------------------------------------------------------------
;i                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:215: packet_input(void)
;	-----------------------------------------
;	 function packet_input
;	-----------------------------------------
_packet_input:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	../../core/net/mac/nullrdc.c:218: if(packetbuf_datalen() == ACK_LEN) {
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x03,00143$
	cjne	r7,#0x00,00143$
	ljmp	00122$
00143$:
;	../../core/net/mac/nullrdc.c:223: if(NETSTACK_FRAMER.parse() < 0) {
	mov	dptr,#(_framer_802154 + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00145$
	ljmp	00122$
00145$:
;	../../core/net/mac/nullrdc.c:227: &rimeaddr_node_addr) &&
;	../../core/net/mac/nullrdc.c:226: } else if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00130$
;	../../core/net/mac/nullrdc.c:229: &rimeaddr_null)) {
;	../../core/net/mac/nullrdc.c:228: !rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00147$
	ljmp	00122$
00147$:
;	../../core/net/mac/nullrdc.c:237: for(i = 0; i < MAX_SEQNOS; ++i) {
00130$:
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00114$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00148$
	ljmp	00132$
00148$:
;	../../core/net/mac/nullrdc.c:238: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == received_seqnos[i].seqno &&
	push	ar6
	push	ar7
	mov	dpl,#0x0D
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r4
	add	a,#_received_seqnos
	mov	@r0,a
	mov	a,r5
	addc	a,#(_received_seqnos >> 8)
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r2
	cjne	a,ar7,00149$
	mov	a,r3
	cjne	a,ar6,00149$
	sjmp	00150$
00149$:
	pop	ar7
	pop	ar6
	sjmp	00116$
00150$:
;	../../core/net/mac/nullrdc.c:240: &received_seqnos[i].sender)) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
;	../../core/net/mac/nullrdc.c:239: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x18
	push	ar5
	push	ar4
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00116$
;	../../core/net/mac/nullrdc.c:244: return;
	ljmp	00122$
00116$:
;	../../core/net/mac/nullrdc.c:237: for(i = 0; i < MAX_SEQNOS; ++i) {
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00152$
	inc	r7
00152$:
	ljmp	00114$
;	../../core/net/mac/nullrdc.c:247: for(i = MAX_SEQNOS - 1; i > 0; --i) {
00132$:
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x0F
	inc	r0
	mov	@r0,#0x00
	mov	r4,#0x2D
	mov	r5,#0x00
00118$:
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	clr	a
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00121$
;	../../core/net/mac/nullrdc.c:248: memcpy(&received_seqnos[i], &received_seqnos[i - 1],
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	dec	a
	mov	b,#0x03
	mul	ab
	add	a,#_received_seqnos
	mov	r2,a
	clr	a
	addc	a,#(_received_seqnos >> 8)
	mov	r3,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	mov	a,r4
	add	a,#_received_seqnos
	mov	r6,a
	mov	a,r5
	addc	a,#(_received_seqnos >> 8)
	mov	r7,a
	mov	r3,#0x00
	push	ar5
	push	ar4
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	../../core/net/mac/nullrdc.c:247: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	a,r4
	add	a,#0xFD
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xFF,00154$
	inc	r0
	dec	@r0
00154$:
	sjmp	00118$
00121$:
;	../../core/net/mac/nullrdc.c:251: received_seqnos[0].seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	dptr,#(_received_seqnos + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	../../core/net/mac/nullrdc.c:253: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/nullrdc.c:252: rimeaddr_copy(&received_seqnos[0].sender,
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_received_seqnos
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/nullrdc.c:255: NETSTACK_MAC.input();
	mov	dptr,#(_csma_driver + 0x0007)
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
00122$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:260: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../../core/net/mac/nullrdc.c:262: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2430_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:266: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/nullrdc.c:268: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/nullrdc.c:269: return NETSTACK_RADIO.on();
	mov	dptr,#(_cc2430_rf_driver + 0x0010)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	../../core/net/mac/nullrdc.c:271: return NETSTACK_RADIO.off();
	mov	dptr,#(_cc2430_rf_driver + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:276: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../../core/net/mac/nullrdc.c:278: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../core/net/mac/nullrdc.c:282: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../core/net/mac/nullrdc.c:284: on();
	ljmp	_on
	.area CSEG    (CODE)
	.area CONST   (CODE)
_nullrdc_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _packet_input,(_packet_input >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
_str_0:
	.ascii "nullrdc"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
