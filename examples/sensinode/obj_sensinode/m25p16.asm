;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:32 2013
;--------------------------------------------------------
	.module m25p16
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _n740_ser_par_get
	.globl _n740_ser_par_set
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
	.globl _m25p16_wren
	.globl _m25p16_wrdi
	.globl _m25p16_rdid
	.globl _m25p16_rdsr
	.globl _m25p16_wrsr
	.globl _m25p16_read
	.globl _m25p16_pp
	.globl _m25p16_se
	.globl _m25p16_be
	.globl _m25p16_dp
	.globl _m25p16_res
	.globl _m25p16_res_res
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
;Allocation info for local variables in function 'bit_bang_write'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;bit                       Allocated to registers r5 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:66: bit_bang_write(uint8_t byte) CC_NON_BANKED
;	-----------------------------------------
;	 function bit_bang_write
;	-----------------------------------------
_bit_bang_write:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:72: for(i = 0x80; i > 0; i >>= 1) {
	mov	r6,#0x80
00103$:
	mov	a,r6
	jz	00109$
	mov	r5,#0x01
	sjmp	00110$
00109$:
	mov	r5,#0x00
00110$:
	mov	a,r5
	jz	00107$
;	../../platform/sensinode/dev/m25p16.c:74: bit = 0;
	mov	r5,#0x00
;	../../platform/sensinode/dev/m25p16.c:75: if(i & byte) {
	mov	a,r7
	anl	a,r6
	jz	00102$
;	../../platform/sensinode/dev/m25p16.c:77: bit = 1;
	mov	r5,#0x01
00102$:
;	../../platform/sensinode/dev/m25p16.c:80: M25P16_PIN_SER_I = bit;
	mov	a,r5
	add	a,#0xff
	mov	_P1_6,c
;	../../platform/sensinode/dev/m25p16.c:82: CLOCK_RISING();
	setb	_P1_5
	clr	_P1_5
;	../../platform/sensinode/dev/m25p16.c:72: for(i = 0x80; i > 0; i >>= 1) {
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	sjmp	00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;bits                      Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:88: bit_bang_read() CC_NON_BANKED
;	-----------------------------------------
;	 function bit_bang_read
;	-----------------------------------------
_bit_bang_read:
;	../../platform/sensinode/dev/m25p16.c:91: uint8_t bits = 0;
	mov	r7,#0x00
;	../../platform/sensinode/dev/m25p16.c:94: for(i = 7; i >= 0; i--) {
	mov	r6,#0x07
00101$:
	mov	a,r6
	jb	acc.7,00104$
;	../../platform/sensinode/dev/m25p16.c:96: CLOCK_FALLING();
	clr	_P1_5
	setb	_P1_5
;	../../platform/sensinode/dev/m25p16.c:99: bits |= (M25P16_PIN_SER_O << i);
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r5,a
	mov	b,r6
	inc	b
	mov	a,r5
	sjmp	00115$
00113$:
	add	a,acc
00115$:
	djnz	b,00113$
	mov	r5,a
	orl	ar7,a
;	../../platform/sensinode/dev/m25p16.c:94: for(i = 7; i >= 0; i--) {
	dec	r6
	sjmp	00101$
00104$:
;	../../platform/sensinode/dev/m25p16.c:101: return bits;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'select'
;------------------------------------------------------------
;ser_par                   Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:105: select() CC_NON_BANKED
;	-----------------------------------------
;	 function select
;	-----------------------------------------
_select:
;	../../platform/sensinode/dev/m25p16.c:108: uint8_t ser_par = n740_ser_par_get();
	lcall	_n740_ser_par_get
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:110: M25P16_PIN_CLOCK = 0;
	clr	_P1_5
;	../../platform/sensinode/dev/m25p16.c:112: ser_par &= ~N740_SER_PAR_CHIP_SEL;  /* Select Flash */
	mov	ar6,r7
	anl	ar6,#0xFD
	mov	ar7,r6
;	../../platform/sensinode/dev/m25p16.c:115: n740_ser_par_set(ser_par);
	mov	dpl,r7
	ljmp	_n740_ser_par_set
;------------------------------------------------------------
;Allocation info for local variables in function 'deselect'
;------------------------------------------------------------
;ser_par                   Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:119: deselect() CC_NON_BANKED
;	-----------------------------------------
;	 function deselect
;	-----------------------------------------
_deselect:
;	../../platform/sensinode/dev/m25p16.c:122: uint8_t ser_par = n740_ser_par_get();
	lcall	_n740_ser_par_get
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:124: ser_par |= N740_SER_PAR_CHIP_SEL;    /* De-Select Flash  */
	orl	ar7,#0x02
;	../../platform/sensinode/dev/m25p16.c:127: n740_ser_par_set(ser_par);
	mov	dpl,r7
	ljmp	_n740_ser_par_set
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_wren'
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:131: m25p16_wren()
;	-----------------------------------------
;	 function m25p16_wren
;	-----------------------------------------
_m25p16_wren:
;	../../platform/sensinode/dev/m25p16.c:133: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:134: bit_bang_write(M25P16_I_WREN);
	mov	dpl,#0x06
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:135: deselect();
	lcall	_deselect
;	../../platform/sensinode/dev/m25p16.c:137: while(!M25P16_WEL());
00101$:
	lcall	_m25p16_rdsr
	mov	a,dpl
	jnb	acc.1,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_wrdi'
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:141: m25p16_wrdi()
;	-----------------------------------------
;	 function m25p16_wrdi
;	-----------------------------------------
_m25p16_wrdi:
;	../../platform/sensinode/dev/m25p16.c:143: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:144: bit_bang_write(M25P16_I_WRDI);
	mov	dpl,#0x04
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:145: deselect();
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_rdid'
;------------------------------------------------------------
;rdid                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r1 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:149: m25p16_rdid(struct m25p16_rdid * rdid)
;	-----------------------------------------
;	 function m25p16_rdid
;	-----------------------------------------
_m25p16_rdid:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../platform/sensinode/dev/m25p16.c:153: select();
	push	ar7
	push	ar6
	push	ar5
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:154: bit_bang_write(M25P16_I_RDID);
	mov	dpl,#0x9F
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:156: rdid->man_id = bit_bang_read();
	lcall	_bit_bang_read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:157: rdid->mem_type = bit_bang_read(); /* Device ID MSB */
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_bit_bang_read
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:158: rdid->mem_size = bit_bang_read(); /* Device ID LSB */
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_bit_bang_read
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:159: rdid->uid_len = bit_bang_read();
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_bit_bang_read
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:160: for(i = 0; i < rdid->uid_len; i++) {
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r1,#0x00
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	clr	c
	mov	a,r1
	subb	a,r0
	jnc	00104$
;	../../platform/sensinode/dev/m25p16.c:161: rdid->uid[i] = bit_bang_read();
	push	ar2
	push	ar3
	push	ar4
	mov	a,r1
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	lcall	_bit_bang_read
	mov	r2,dpl
	pop	ar0
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	mov	a,r2
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:160: for(i = 0; i < rdid->uid_len; i++) {
	inc	r1
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00101$
00104$:
;	../../platform/sensinode/dev/m25p16.c:163: deselect();
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_rdsr'
;------------------------------------------------------------
;rv                        Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:167: m25p16_rdsr()
;	-----------------------------------------
;	 function m25p16_rdsr
;	-----------------------------------------
_m25p16_rdsr:
;	../../platform/sensinode/dev/m25p16.c:171: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:172: bit_bang_write(M25P16_I_RDSR);
	mov	dpl,#0x05
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:173: rv = bit_bang_read();
	lcall	_bit_bang_read
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:174: deselect();
	push	ar7
	lcall	_deselect
	pop	ar7
;	../../platform/sensinode/dev/m25p16.c:176: return rv;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_wrsr'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:180: m25p16_wrsr(uint8_t val)
;	-----------------------------------------
;	 function m25p16_wrsr
;	-----------------------------------------
_m25p16_wrsr:
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:182: m25p16_wren(); /* Write Enable */
	push	ar7
	lcall	_m25p16_wren
;	../../platform/sensinode/dev/m25p16.c:184: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:186: bit_bang_write(M25P16_I_WRSR);
	mov	dpl,#0x01
	lcall	_bit_bang_write
	pop	ar7
;	../../platform/sensinode/dev/m25p16.c:187: bit_bang_write(val);
	mov	dpl,r7
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:189: deselect();
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_read'
;------------------------------------------------------------
;buff                      Allocated to stack - _bp -5
;buff_len                  Allocated to stack - _bp -6
;addr                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:193: m25p16_read(uint8_t * addr, uint8_t * buff, uint8_t buff_len)
;	-----------------------------------------
;	 function m25p16_read
;	-----------------------------------------
_m25p16_read:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../platform/sensinode/dev/m25p16.c:197: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:201: bit_bang_write(M25P16_I_FAST_READ);
	mov	dpl,#0x0B
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:207: for(i = 0; i < 3; i++) {
	mov	r4,#0x00
00105$:
	cjne	r4,#0x03,00125$
00125$:
	jnc	00108$
;	../../platform/sensinode/dev/m25p16.c:208: bit_bang_write(addr[i]);
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	lcall	_bit_bang_write
	pop	ar4
;	../../platform/sensinode/dev/m25p16.c:207: for(i = 0; i < 3; i++) {
	inc	r4
	sjmp	00105$
00108$:
;	../../platform/sensinode/dev/m25p16.c:213: bit_bang_write(M25P16_DUMMY_BYTE);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:216: for(i = 0; i < buff_len; i++) {
	mov	r7,#0x00
00109$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	jnc	00103$
;	../../platform/sensinode/dev/m25p16.c:217: buff[i] = ~bit_bang_read();
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_bit_bang_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	cpl	a
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../platform/sensinode/dev/m25p16.c:216: for(i = 0; i < buff_len; i++) {
	inc	r7
;	../../platform/sensinode/dev/m25p16.c:219: ENERGEST_OFF(ENERGEST_TYPE_FLASH_READ);
	sjmp	00109$
00103$:
;	../../platform/sensinode/dev/m25p16.c:220: deselect();
	lcall	_deselect
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_pp'
;------------------------------------------------------------
;buff                      Allocated to stack - _bp -5
;buff_len                  Allocated to stack - _bp -6
;addr                      Allocated to stack - _bp +1
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:224: m25p16_pp(uint8_t * addr, uint8_t * buff, uint8_t buff_len)
;	-----------------------------------------
;	 function m25p16_pp
;	-----------------------------------------
_m25p16_pp:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../platform/sensinode/dev/m25p16.c:228: m25p16_wren(); /* Write Enable */
	lcall	_m25p16_wren
;	../../platform/sensinode/dev/m25p16.c:230: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:232: bit_bang_write(M25P16_I_PP);
	mov	dpl,#0x02
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:235: for(i = 0; i < 3; i++) {
	mov	r4,#0x00
00105$:
	cjne	r4,#0x03,00125$
00125$:
	jnc	00108$
;	../../platform/sensinode/dev/m25p16.c:236: bit_bang_write(addr[i]);
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	lcall	_bit_bang_write
	pop	ar4
;	../../platform/sensinode/dev/m25p16.c:235: for(i = 0; i < 3; i++) {
	inc	r4
	sjmp	00105$
00108$:
;	../../platform/sensinode/dev/m25p16.c:240: for(i=0; i<buff_len; i++) {
	mov	r7,#0x00
00109$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	jnc	00103$
;	../../platform/sensinode/dev/m25p16.c:241: bit_bang_write(~buff[i]);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	cpl	a
	mov	dpl,a
	push	ar7
	lcall	_bit_bang_write
	pop	ar7
;	../../platform/sensinode/dev/m25p16.c:240: for(i=0; i<buff_len; i++) {
	inc	r7
;	../../platform/sensinode/dev/m25p16.c:243: ENERGEST_OFF(ENERGEST_TYPE_FLASH_WRITE);
	sjmp	00109$
00103$:
;	../../platform/sensinode/dev/m25p16.c:244: deselect();
	lcall	_deselect
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_se'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:248: m25p16_se(uint8_t s)
;	-----------------------------------------
;	 function m25p16_se
;	-----------------------------------------
_m25p16_se:
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:250: m25p16_wren(); /* Write Enable */
	push	ar7
	lcall	_m25p16_wren
;	../../platform/sensinode/dev/m25p16.c:252: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:254: bit_bang_write(M25P16_I_SE);
	mov	dpl,#0xD8
	lcall	_bit_bang_write
	pop	ar7
;	../../platform/sensinode/dev/m25p16.c:255: bit_bang_write(s);
	mov	dpl,r7
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:256: bit_bang_write(0x00);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:257: bit_bang_write(0x00);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:258: deselect();
;	../../platform/sensinode/dev/m25p16.c:259: ENERGEST_OFF(ENERGEST_TYPE_FLASH_WRITE);
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_be'
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:263: m25p16_be()
;	-----------------------------------------
;	 function m25p16_be
;	-----------------------------------------
_m25p16_be:
;	../../platform/sensinode/dev/m25p16.c:265: m25p16_wren(); /* Write Enable */
	lcall	_m25p16_wren
;	../../platform/sensinode/dev/m25p16.c:267: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:268: bit_bang_write(M25P16_I_BE);
	mov	dpl,#0xC7
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:269: deselect();
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_dp'
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:273: m25p16_dp()
;	-----------------------------------------
;	 function m25p16_dp
;	-----------------------------------------
_m25p16_dp:
;	../../platform/sensinode/dev/m25p16.c:275: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:276: bit_bang_write(M25P16_I_DP);
	mov	dpl,#0xB9
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:277: deselect();
	ljmp	_deselect
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_res'
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:284: m25p16_res() {
;	-----------------------------------------
;	 function m25p16_res
;	-----------------------------------------
_m25p16_res:
;	../../platform/sensinode/dev/m25p16.c:285: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:286: bit_bang_write(M25P16_I_RES);
	mov	dpl,#0xAB
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:287: deselect();
	lcall	_deselect
;	../../platform/sensinode/dev/m25p16.c:289: while(M25P16_WIP());
00101$:
	lcall	_m25p16_rdsr
	mov	a,dpl
	jb	acc.0,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'm25p16_res_res'
;------------------------------------------------------------
;rv                        Allocated to registers r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/m25p16.c:299: m25p16_res_res() {
;	-----------------------------------------
;	 function m25p16_res_res
;	-----------------------------------------
_m25p16_res_res:
;	../../platform/sensinode/dev/m25p16.c:302: select();
	lcall	_select
;	../../platform/sensinode/dev/m25p16.c:303: bit_bang_write(M25P16_I_RES);
	mov	dpl,#0xAB
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:304: bit_bang_write(M25P16_DUMMY_BYTE);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:305: bit_bang_write(M25P16_DUMMY_BYTE);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:306: bit_bang_write(M25P16_DUMMY_BYTE);
	mov	dpl,#0x00
	lcall	_bit_bang_write
;	../../platform/sensinode/dev/m25p16.c:308: rv = bit_bang_read();
	lcall	_bit_bang_read
	mov	r7,dpl
;	../../platform/sensinode/dev/m25p16.c:310: deselect();
	push	ar7
	lcall	_deselect
	pop	ar7
;	../../platform/sensinode/dev/m25p16.c:313: while(M25P16_WIP());
00101$:
	push	ar7
	lcall	_m25p16_rdsr
	mov	a,dpl
	pop	ar7
	jb	acc.0,00101$
;	../../platform/sensinode/dev/m25p16.c:314: return rv;
	mov	dpl,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
