;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:25 2013
;--------------------------------------------------------
	.module packetbuf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rimeaddr_copy
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
	.globl _packetbuf_addrs
	.globl _packetbuf_attrs
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
	.globl _packetbuf_clear
	.globl _packetbuf_clear_hdr
	.globl _packetbuf_copyfrom
	.globl _packetbuf_compact
	.globl _packetbuf_copyto_hdr
	.globl _packetbuf_copyto
	.globl _packetbuf_hdralloc
	.globl _packetbuf_hdr_remove
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_set_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_hdrptr
	.globl _packetbuf_reference
	.globl _packetbuf_is_reference
	.globl _packetbuf_reference_ptr
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrlen
	.globl _packetbuf_totlen
	.globl _packetbuf_attr_clear
	.globl _packetbuf_attr_copyto
	.globl _packetbuf_attr_copyfrom
	.globl _packetbuf_set_attr
	.globl _packetbuf_attr
	.globl _packetbuf_set_addr
	.globl _packetbuf_addr
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
_packetbuf_attrs::
	.ds 48
_packetbuf_addrs::
	.ds 8
_buflen:
	.ds 2
_bufptr:
	.ds 2
_hdrptr:
	.ds 1
_packetbuf_aligned:
	.ds 178
_packetbufptr:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_packetbuf:
	.ds 3
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
;Allocation info for local variables in function 'packetbuf_clear'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:78: packetbuf_clear(void)
;	-----------------------------------------
;	 function packetbuf_clear
;	-----------------------------------------
_packetbuf_clear:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../core/net/packetbuf.c:80: buflen = bufptr = 0;
	mov	dptr,#_bufptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buflen
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/packetbuf.c:81: hdrptr = PACKETBUF_HDR_SIZE;
	mov	dptr,#_hdrptr
	mov	a,#0x30
	movx	@dptr,a
;	../../core/net/packetbuf.c:83: packetbufptr = &packetbuf[PACKETBUF_HDR_SIZE];
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbufptr
	mov	a,#0x30
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/packetbuf.c:84: packetbuf_attr_clear();
	ljmp	_packetbuf_attr_clear
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_clear_hdr'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:88: packetbuf_clear_hdr(void)
;	-----------------------------------------
;	 function packetbuf_clear_hdr
;	-----------------------------------------
_packetbuf_clear_hdr:
;	../../core/net/packetbuf.c:90: hdrptr = PACKETBUF_HDR_SIZE;
	mov	dptr,#_hdrptr
	mov	a,#0x30
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_copyfrom'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;from                      Allocated to stack - _bp +1
;l                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:94: packetbuf_copyfrom(const void *from, uint16_t len)
;	-----------------------------------------
;	 function packetbuf_copyfrom
;	-----------------------------------------
_packetbuf_copyfrom:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../core/net/packetbuf.c:98: packetbuf_clear();
	lcall	_packetbuf_clear
;	../../core/net/packetbuf.c:99: l = len > PACKETBUF_SIZE? PACKETBUF_SIZE: len;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0x80
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00103$
	mov	r3,#0x80
	mov	r4,#0x00
	sjmp	00104$
00103$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00104$:
;	../../core/net/packetbuf.c:100: memcpy(packetbufptr, from, l);
	mov	dptr,#_packetbufptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	../../core/net/packetbuf.c:101: buflen = l;
	mov	dptr,#_buflen
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/net/packetbuf.c:102: return l;
	mov	dpl,r3
	mov	dph,r4
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_compact'
;------------------------------------------------------------
;i                         Allocated to stack - _bp +1
;len                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	../../core/net/packetbuf.c:106: packetbuf_compact(void)
;	-----------------------------------------
;	 function packetbuf_compact
;	-----------------------------------------
_packetbuf_compact:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	../../core/net/packetbuf.c:110: if(packetbuf_is_reference()) {
	lcall	_packetbuf_is_reference
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00104$
;	../../core/net/packetbuf.c:112: packetbuf_datalen());
	lcall	_packetbuf_datalen
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../../core/net/packetbuf.c:111: memcpy(&packetbuf[PACKETBUF_HDR_SIZE], packetbuf_reference_ptr(),
	lcall	_packetbuf_reference_ptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00110$
00104$:
;	../../core/net/packetbuf.c:113: } else if (bufptr > 0) {
	mov	dptr,#_bufptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00122$
	ljmp	00110$
00122$:
;	../../core/net/packetbuf.c:114: len = packetbuf_datalen() + PACKETBUF_HDR_SIZE;
	lcall	_packetbuf_datalen
	mov	a,dpl
	mov	b,dph
	add	a,#0x30
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
;	../../core/net/packetbuf.c:115: for(i = PACKETBUF_HDR_SIZE; i < len; i++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x30
	inc	r0
	mov	@r0,#0x00
00106$:
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	../../core/net/packetbuf.c:116: packetbuf[i] = packetbuf[bufptr + i];
	push	ar6
	push	ar7
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	add	a,r2
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,ar7
	mov	dptr,#_bufptr
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../core/net/packetbuf.c:115: for(i = PACKETBUF_HDR_SIZE; i < len; i++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00124$
	inc	r0
	inc	@r0
00124$:
	pop	ar7
	pop	ar6
	ljmp	00106$
00109$:
;	../../core/net/packetbuf.c:119: bufptr = 0;
	mov	dptr,#_bufptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_copyto_hdr'
;------------------------------------------------------------
;to                        Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/packetbuf.c:124: packetbuf_copyto_hdr(uint8_t *to)
;	-----------------------------------------
;	 function packetbuf_copyto_hdr
;	-----------------------------------------
_packetbuf_copyto_hdr:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/packetbuf.c:136: memcpy(to, packetbuf + hdrptr, PACKETBUF_HDR_SIZE - hdrptr);
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	a,#0x30
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar7
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/packetbuf.c:137: return PACKETBUF_HDR_SIZE - hdrptr;
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	a,#0x30
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_copyto'
;------------------------------------------------------------
;to                        Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/net/packetbuf.c:141: packetbuf_copyto(void *to)
;	-----------------------------------------
;	 function packetbuf_copyto
;	-----------------------------------------
_packetbuf_copyto:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/packetbuf.c:162: if(PACKETBUF_HDR_SIZE - hdrptr + buflen > PACKETBUF_SIZE) {
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	a,#0x30
	clr	c
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r3
	mov	r7,a
	mov	dptr,#_buflen
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	ar5,r6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,#0x80
	subb	a,r5
	clr	a
	subb	a,r7
	jnc	00102$
;	../../core/net/packetbuf.c:164: return 0;
	mov	dptr,#0x0000
	ljmp	00103$
00102$:
;	../../core/net/packetbuf.c:166: memcpy(to, packetbuf + hdrptr, PACKETBUF_HDR_SIZE - hdrptr);
	mov	a,#0x30
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/packetbuf.c:167: memcpy((uint8_t *)to + PACKETBUF_HDR_SIZE - hdrptr, packetbufptr + bufptr,
	mov	dptr,#_bufptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetbufptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x30
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	dptr,#_buflen
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar6
	push	ar7
	push	ar2
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/packetbuf.c:169: return PACKETBUF_HDR_SIZE - hdrptr + buflen;
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x30
	clr	c
	subb	a,r7
	mov	r7,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dptr,#_buflen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r7
	mov	r4,a
	mov	a,r5
	addc	a,r6
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_hdralloc'
;------------------------------------------------------------
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:173: packetbuf_hdralloc(int size)
;	-----------------------------------------
;	 function packetbuf_hdralloc
;	-----------------------------------------
_packetbuf_hdralloc:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/packetbuf.c:175: if(hdrptr >= size && packetbuf_totlen() + size <= PACKETBUF_SIZE) {
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r6
	mov	a,r4
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	ar2,r6
	mov	ar3,r7
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	clr	c
	mov	a,#0x80
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00102$
;	../../core/net/packetbuf.c:176: hdrptr -= size;
	mov	dptr,#_hdrptr
	movx	a,@dptr
	clr	c
	subb	a,r6
	mov	dptr,#_hdrptr
	movx	@dptr,a
;	../../core/net/packetbuf.c:177: return 1;
	mov	dptr,#0x0001
	ret
00102$:
;	../../core/net/packetbuf.c:179: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_hdr_remove'
;------------------------------------------------------------
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:183: packetbuf_hdr_remove(int size)
;	-----------------------------------------
;	 function packetbuf_hdr_remove
;	-----------------------------------------
_packetbuf_hdr_remove:
	mov	r6,dpl
;	../../core/net/packetbuf.c:185: hdrptr += size;
	mov	dptr,#_hdrptr
	movx	a,@dptr
	add	a,r6
	mov	dptr,#_hdrptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_hdrreduce'
;------------------------------------------------------------
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:189: packetbuf_hdrreduce(int size)
;	-----------------------------------------
;	 function packetbuf_hdrreduce
;	-----------------------------------------
_packetbuf_hdrreduce:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/packetbuf.c:191: if(buflen < size) {
	mov	dptr,#_buflen
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00102$
;	../../core/net/packetbuf.c:192: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	../../core/net/packetbuf.c:195: bufptr += size;
	mov	dptr,#_bufptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_bufptr
	mov	a,r6
	add	a,r2
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	../../core/net/packetbuf.c:196: buflen -= size;
	mov	dptr,#_buflen
	mov	a,r4
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	../../core/net/packetbuf.c:197: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_set_datalen'
;------------------------------------------------------------
;len                       Allocated to registers 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:201: packetbuf_set_datalen(uint16_t len)
;	-----------------------------------------
;	 function packetbuf_set_datalen
;	-----------------------------------------
_packetbuf_set_datalen:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_buflen
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/packetbuf.c:204: buflen = len;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_dataptr'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:208: packetbuf_dataptr(void)
;	-----------------------------------------
;	 function packetbuf_dataptr
;	-----------------------------------------
_packetbuf_dataptr:
;	../../core/net/packetbuf.c:210: return (void *)(&packetbuf[bufptr + PACKETBUF_HDR_SIZE]);
	mov	dptr,#_bufptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_hdrptr'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:214: packetbuf_hdrptr(void)
;	-----------------------------------------
;	 function packetbuf_hdrptr
;	-----------------------------------------
_packetbuf_hdrptr:
;	../../core/net/packetbuf.c:216: return (void *)(&packetbuf[hdrptr]);
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_hdrptr
	movx	a,@dptr
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_reference'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;ptr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:220: packetbuf_reference(void *ptr, uint16_t len)
;	-----------------------------------------
;	 function packetbuf_reference
;	-----------------------------------------
_packetbuf_reference:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/packetbuf.c:222: packetbuf_clear();
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_clear
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/packetbuf.c:223: packetbufptr = ptr;
	mov	dptr,#_packetbufptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/packetbuf.c:224: buflen = len;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dptr,#_buflen
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_is_reference'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:228: packetbuf_is_reference(void)
;	-----------------------------------------
;	 function packetbuf_is_reference
;	-----------------------------------------
_packetbuf_is_reference:
;	../../core/net/packetbuf.c:230: return packetbufptr != &packetbuf[PACKETBUF_HDR_SIZE];
	mov	dptr,#_packetbuf
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_packetbufptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r5,a
	cjne	a,#0x01,00105$
00105$:
	clr	a
	rlc	a
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_reference_ptr'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:234: packetbuf_reference_ptr(void)
;	-----------------------------------------
;	 function packetbuf_reference_ptr
;	-----------------------------------------
_packetbuf_reference_ptr:
;	../../core/net/packetbuf.c:236: return packetbufptr;
	mov	dptr,#_packetbufptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_datalen'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:240: packetbuf_datalen(void)
;	-----------------------------------------
;	 function packetbuf_datalen
;	-----------------------------------------
_packetbuf_datalen:
;	../../core/net/packetbuf.c:242: return buflen;
	mov	dptr,#_buflen
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_hdrlen'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:246: packetbuf_hdrlen(void)
;	-----------------------------------------
;	 function packetbuf_hdrlen
;	-----------------------------------------
_packetbuf_hdrlen:
;	../../core/net/packetbuf.c:248: return PACKETBUF_HDR_SIZE - hdrptr;
	mov	dptr,#_hdrptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	clr	c
	subb	a,r7
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_totlen'
;------------------------------------------------------------
;	../../core/net/packetbuf.c:252: packetbuf_totlen(void)
;	-----------------------------------------
;	 function packetbuf_totlen
;	-----------------------------------------
_packetbuf_totlen:
;	../../core/net/packetbuf.c:254: return packetbuf_hdrlen() + packetbuf_datalen();
	lcall	_packetbuf_hdrlen
	mov	r7,dpl
	push	ar7
	lcall	_packetbuf_datalen
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	add	a,r7
	mov	r5,a
	mov	a,r6
	addc	a,r4
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_attr_clear'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:258: packetbuf_attr_clear(void)
;	-----------------------------------------
;	 function packetbuf_attr_clear
;	-----------------------------------------
_packetbuf_attr_clear:
;	../../core/net/packetbuf.c:261: for(i = 0; i < PACKETBUF_NUM_ATTRS; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x18
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	../../core/net/packetbuf.c:262: packetbuf_attrs[i].val = 0;
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_packetbuf_attrs
	mov	dpl,a
	mov	a,r5
	addc	a,#(_packetbuf_attrs >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/packetbuf.c:261: for(i = 0; i < PACKETBUF_NUM_ATTRS; ++i) {
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00104$:
;	../../core/net/packetbuf.c:264: for(i = 0; i < PACKETBUF_NUM_ADDRS; ++i) {
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	../../core/net/packetbuf.c:265: rimeaddr_copy(&packetbuf_addrs[i].addr, &rimeaddr_null);
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_packetbuf_addrs
	mov	r4,a
	mov	a,r5
	addc	a,#(_packetbuf_addrs >> 8)
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../../core/net/packetbuf.c:264: for(i = 0; i < PACKETBUF_NUM_ADDRS; ++i) {
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_attr_copyto'
;------------------------------------------------------------
;addrs                     Allocated to stack - _bp -5
;attrs                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:270: packetbuf_attr_copyto(struct packetbuf_attr *attrs,
;	-----------------------------------------
;	 function packetbuf_attr_copyto
;	-----------------------------------------
_packetbuf_attr_copyto:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/packetbuf.c:273: memcpy(attrs, packetbuf_attrs, sizeof(packetbuf_attrs));
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	mov	a,#_packetbuf_attrs
	push	acc
	mov	a,#(_packetbuf_attrs >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/packetbuf.c:274: memcpy(addrs, packetbuf_addrs, sizeof(packetbuf_addrs));
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#_packetbuf_addrs
	push	acc
	mov	a,#(_packetbuf_addrs >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_attr_copyfrom'
;------------------------------------------------------------
;addrs                     Allocated to stack - _bp -5
;attrs                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:278: packetbuf_attr_copyfrom(struct packetbuf_attr *attrs,
;	-----------------------------------------
;	 function packetbuf_attr_copyfrom
;	-----------------------------------------
_packetbuf_attr_copyfrom:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/packetbuf.c:281: memcpy(packetbuf_attrs, attrs, sizeof(packetbuf_attrs));
	mov	a,#0x30
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packetbuf_attrs
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/packetbuf.c:282: memcpy(packetbuf_addrs, addrs, sizeof(packetbuf_addrs));
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packetbuf_addrs
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_set_attr'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -4
;type                      Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:287: packetbuf_set_attr(uint8_t type, const packetbuf_attr_t val)
;	-----------------------------------------
;	 function packetbuf_set_attr
;	-----------------------------------------
_packetbuf_set_attr:
	push	_bp
	mov	_bp,sp
;	../../core/net/packetbuf.c:290: packetbuf_attrs[type].val = val;
	mov	a,dpl
	add	a,dpl
	add	a,#_packetbuf_attrs
	mov	dpl,a
	clr	a
	addc	a,#(_packetbuf_attrs >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	../../core/net/packetbuf.c:291: return 1;
	mov	dptr,#0x0001
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_attr'
;------------------------------------------------------------
;type                      Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:295: packetbuf_attr(uint8_t type)
;	-----------------------------------------
;	 function packetbuf_attr
;	-----------------------------------------
_packetbuf_attr:
;	../../core/net/packetbuf.c:297: return packetbuf_attrs[type].val;
	mov	a,dpl
	add	a,dpl
	add	a,#_packetbuf_attrs
	mov	dpl,a
	clr	a
	addc	a,#(_packetbuf_attrs >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_set_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -5
;type                      Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:301: packetbuf_set_addr(uint8_t type, const rimeaddr_t *addr)
;	-----------------------------------------
;	 function packetbuf_set_addr
;	-----------------------------------------
_packetbuf_set_addr:
	push	_bp
	mov	_bp,sp
;	../../core/net/packetbuf.c:304: rimeaddr_copy(&packetbuf_addrs[type - PACKETBUF_ADDR_FIRST].addr, addr);
	mov	a,dpl
	add	a,#0xE8
	add	a,acc
	add	a,#_packetbuf_addrs
	mov	r7,a
	clr	a
	addc	a,#(_packetbuf_addrs >> 8)
	mov	r6,a
	mov	r5,#0x00
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
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/packetbuf.c:305: return 1;
	mov	dptr,#0x0001
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetbuf_addr'
;------------------------------------------------------------
;type                      Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/packetbuf.c:309: packetbuf_addr(uint8_t type)
;	-----------------------------------------
;	 function packetbuf_addr
;	-----------------------------------------
_packetbuf_addr:
;	../../core/net/packetbuf.c:311: return &packetbuf_addrs[type - PACKETBUF_ADDR_FIRST].addr;
	mov	a,dpl
	add	a,#0xE8
	add	a,acc
	add	a,#_packetbuf_addrs
	mov	r7,a
	clr	a
	addc	a,#(_packetbuf_addrs >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__packetbuf:
	.byte _packetbuf_aligned,(_packetbuf_aligned >> 8),#0x00
	.area CABS    (ABS,CODE)
