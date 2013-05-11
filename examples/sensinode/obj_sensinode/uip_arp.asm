;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:30 2013
;--------------------------------------------------------
	.module uip_arp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
	.globl _uip_arp_init
	.globl _uip_arp_timer
	.globl _uip_arp_arpin
	.globl _uip_arp_out
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
_arp_table:
	.ds 88
_ipaddr:
	.ds 4
_i:
	.ds 1
_c:
	.ds 1
_arptime:
	.ds 1
_tmpage:
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
;Allocation info for local variables in function 'uip_arp_init'
;------------------------------------------------------------
;	../../core/net/uip_arp.c:133: uip_arp_init(void)
;	-----------------------------------------
;	 function uip_arp_init
;	-----------------------------------------
_uip_arp_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../core/net/uip_arp.c:135: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
00101$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00111$
00111$:
	jnc	00105$
;	../../core/net/uip_arp.c:136: memset(&arp_table[i].ipaddr, 0, 4);
	mov	a,r7
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r6,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip_arp.c:135: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_arp_timer'
;------------------------------------------------------------
;tabptr                    Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/uip_arp.c:150: uip_arp_timer(void)
;	-----------------------------------------
;	 function uip_arp_timer
;	-----------------------------------------
_uip_arp_timer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/uip_arp.c:154: ++arptime;
	mov	dptr,#_arptime
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../../core/net/uip_arp.c:155: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
00105$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00121$
00121$:
	jc	00122$
	ljmp	00109$
00122$:
;	../../core/net/uip_arp.c:156: tabptr = &arp_table[i];
	mov	a,r7
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r6,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../core/net/uip_arp.c:157: if(uip_ipaddr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr) &&
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_uip_all_zeroes_addr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r3
	cjne	a,ar2,00123$
	mov	a,r4
	cjne	a,ar7,00123$
	sjmp	00124$
00123$:
	ljmp	00107$
00124$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(_uip_all_zeroes_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r5
	cjne	a,ar4,00107$
	mov	a,r6
	cjne	a,ar7,00107$
;	../../core/net/uip_arp.c:158: arptime - tabptr->time >= UIP_ARP_MAXAGE) {
	mov	dptr,#_arptime
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r6
	subb	a,r5
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,#0x78
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
;	../../core/net/uip_arp.c:159: memset(&tabptr->ipaddr, 0, 4);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
00107$:
;	../../core/net/uip_arp.c:155: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00105$
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_arp_update'
;------------------------------------------------------------
;ethaddr                   Allocated to stack - _bp -5
;ipaddr                    Allocated to stack - _bp +1
;tabptr                    Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../core/net/uip_arp.c:167: uip_arp_update(uip_ipaddr_t *ipaddr, struct uip_eth_addr *ethaddr)
;	-----------------------------------------
;	 function uip_arp_update
;	-----------------------------------------
_uip_arp_update:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../core/net/uip_arp.c:169: register struct arp_entry *tabptr = arp_table;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#_arp_table
	inc	r0
	mov	@r0,#(_arp_table >> 8)
	inc	r0
	mov	@r0,#0x00
;	../../core/net/uip_arp.c:174: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
00118$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,00152$
00152$:
	jc	00153$
	ljmp	00121$
00153$:
;	../../core/net/uip_arp.c:175: tabptr = &arp_table[i];
	push	ar5
	push	ar6
	push	ar7
	mov	a,r4
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r6,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../core/net/uip_arp.c:178: if(!uip_ipaddr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr)) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_uip_all_zeroes_addr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00154$
	mov	a,r7
	cjne	a,ar5,00154$
	sjmp	00155$
00154$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00104$
00155$:
	pop	ar7
	pop	ar6
	pop	ar5
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_uip_all_zeroes_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar4,00156$
	mov	a,r3
	cjne	a,ar7,00156$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00105$
00156$:
	pop	ar7
	pop	ar6
	pop	ar5
00104$:
;	../../core/net/uip_arp.c:182: if(uip_ipaddr_cmp(ipaddr, &tabptr->ipaddr)) {
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
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	cjne	a,ar2,00157$
	mov	a,r4
	cjne	a,ar7,00157$
	sjmp	00158$
00157$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00105$
00158$:
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r3
	cjne	a,ar2,00159$
	mov	a,r4
	cjne	a,ar7,00159$
	sjmp	00160$
00159$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00105$
00160$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/net/uip_arp.c:185: memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:186: tabptr->time = arptime;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_arptime
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrput
;	../../core/net/uip_arp.c:188: return;
	ljmp	00126$
00105$:
;	../../core/net/uip_arp.c:191: tabptr++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0B
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/uip_arp.c:174: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00118$
00121$:
;	../../core/net/uip_arp.c:198: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
00110$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00161$
00161$:
	jc	00162$
	ljmp	00113$
00162$:
;	../../core/net/uip_arp.c:199: tabptr = &arp_table[i];
	mov	a,r7
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r6,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../core/net/uip_arp.c:200: if(uip_ipaddr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr)) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_uip_all_zeroes_addr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00112$
	mov	a,r7
	cjne	a,ar5,00112$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#(_uip_all_zeroes_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r5
	cjne	a,ar4,00165$
	mov	a,r6
	cjne	a,ar7,00165$
	sjmp	00113$
00165$:
;	../../core/net/uip_arp.c:201: break;
00112$:
;	../../core/net/uip_arp.c:198: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00110$
00113$:
;	../../core/net/uip_arp.c:207: if(i == UIP_ARPTAB_SIZE) {
	mov	dptr,#_i
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00166$
	sjmp	00167$
00166$:
	ljmp	00117$
00167$:
;	../../core/net/uip_arp.c:208: tmpage = 0;
	mov	dptr,#_tmpage
;	../../core/net/uip_arp.c:209: c = 0;
;	../../core/net/uip_arp.c:210: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	clr	a
	movx	@dptr,a
	mov	dptr,#_c
	movx	@dptr,a
	mov	dptr,#_i
	movx	@dptr,a
00122$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00168$
00168$:
	jnc	00125$
;	../../core/net/uip_arp.c:211: tabptr = &arp_table[i];
	mov	a,r7
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r5,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	../../core/net/uip_arp.c:212: if(arptime - tabptr->time > tmpage) {
	mov	dptr,#_arptime
	movx	a,@dptr
	mov	r6,a
	mov	r4,a
	mov	r5,#0x00
	push	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0A
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
	mov	r2,a
	mov	r3,a
	mov	r7,#0x00
	mov	a,r4
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,r5
	subb	a,r7
	mov	r5,a
	mov	dptr,#_tmpage
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	clr	c
	mov	a,r7
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	jnc	00124$
;	../../core/net/uip_arp.c:213: tmpage = arptime - tabptr->time;
	mov	dptr,#_tmpage
	mov	a,r6
	clr	c
	subb	a,r2
	movx	@dptr,a
;	../../core/net/uip_arp.c:214: c = i;
	mov	dptr,#_c
	mov	a,r7
	movx	@dptr,a
00124$:
;	../../core/net/uip_arp.c:210: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00122$
00125$:
;	../../core/net/uip_arp.c:217: i = c;
	mov	dptr,#_c
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_i
	movx	@dptr,a
;	../../core/net/uip_arp.c:218: tabptr = &arp_table[i];
	mov	a,r7
	mov	b,#0x0B
	mul	ab
	add	a,#_arp_table
	mov	r6,a
	clr	a
	addc	a,#(_arp_table >> 8)
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
00117$:
;	../../core/net/uip_arp.c:223: uip_ipaddr_copy(&tabptr->ipaddr, ipaddr);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:224: memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:225: tabptr->time = arptime;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0A
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_arptime
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00126$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_arp_arpin'
;------------------------------------------------------------
;	../../core/net/uip_arp.c:286: uip_arp_arpin(void)
;	-----------------------------------------
;	 function uip_arp_arpin
;	-----------------------------------------
_uip_arp_arpin:
;	../../core/net/uip_arp.c:289: if(uip_len < sizeof(struct arp_hdr)) {
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x2A
	mov	a,r7
	subb	a,#0x00
	jnc	00102$
;	../../core/net/uip_arp.c:290: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/uip_arp.c:291: return;
	ret
00102$:
;	../../core/net/uip_arp.c:293: uip_len = 0;
	mov	dptr,#_uip_len
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/uip_arp.c:295: switch(BUF->opcode) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
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
	cjne	r6,#0x00,00129$
	cjne	r7,#0x01,00129$
	sjmp	00103$
00129$:
	cjne	r6,#0x00,00130$
	cjne	r7,#0x02,00130$
	ljmp	00107$
00130$:
	ljmp	00111$
;	../../core/net/uip_arp.c:296: case UIP_HTONS(ARP_REQUEST):
00103$:
;	../../core/net/uip_arp.c:306: if(uip_ipaddr_cmp(&BUF->dipaddr, &uip_hostaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
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
	mov	dptr,#_uip_hostaddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00131$
	mov	a,r7
	cjne	a,ar5,00131$
	sjmp	00132$
00131$:
	ljmp	00111$
00132$:
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x28
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
	mov	dptr,#(_uip_hostaddr + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00133$
	mov	a,r7
	cjne	a,ar5,00133$
	sjmp	00134$
00133$:
	ljmp	00111$
00134$:
;	../../core/net/uip_arp.c:310: uip_arp_update(&BUF->sipaddr, &BUF->shwaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_uip_arp_update
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip_arp.c:312: BUF->opcode = UIP_HTONS(ARP_REPLY);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
;	../../core/net/uip_arp.c:314: memcpy(BUF->dhwaddr.addr, BUF->shwaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:315: memcpy(BUF->shwaddr.addr, uip_ethaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_ethaddr
	push	acc
	mov	a,#(_uip_ethaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:316: memcpy(BUF->ethhdr.src.addr, uip_ethaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_ethaddr
	push	acc
	mov	a,#(_uip_ethaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:317: memcpy(BUF->ethhdr.dest.addr, BUF->dhwaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:319: uip_ipaddr_copy(&BUF->dipaddr, &BUF->sipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:320: uip_ipaddr_copy(&BUF->sipaddr, &uip_hostaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:322: BUF->ethhdr.type = UIP_HTONS(UIP_ETHTYPE_ARP);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	mov	a,#0x06
	movx	@dptr,a
;	../../core/net/uip_arp.c:323: uip_len = sizeof(struct arp_hdr);
	mov	dptr,#_uip_len
	mov	a,#0x2A
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:325: break;
	ljmp	00111$
;	../../core/net/uip_arp.c:326: case UIP_HTONS(ARP_REPLY):
00107$:
;	../../core/net/uip_arp.c:329: if(uip_ipaddr_cmp(&BUF->dipaddr, &uip_hostaddr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
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
	mov	dptr,#_uip_hostaddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00111$
	mov	a,r7
	cjne	a,ar5,00111$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x28
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
	mov	dptr,#(_uip_hostaddr + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00111$
	mov	a,r7
	cjne	a,ar5,00111$
;	../../core/net/uip_arp.c:330: uip_arp_update(&BUF->sipaddr, &BUF->shwaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_uip_arp_update
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip_arp.c:333: }
00111$:
;	../../core/net/uip_arp.c:335: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_arp_out'
;------------------------------------------------------------
;tabptr                    Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/uip_arp.c:366: uip_arp_out(void)
;	-----------------------------------------
;	 function uip_arp_out
;	-----------------------------------------
_uip_arp_out:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	../../core/net/uip_arp.c:368: struct arp_entry *tabptr = arp_table;
;	../../core/net/uip_arp.c:378: if(uip_ipaddr_cmp(&IPBUF->destipaddr, &uip_broadcast_addr)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
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
	mov	dptr,#_uip_broadcast_addr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00118$
	mov	a,r7
	cjne	a,ar5,00118$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
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
	mov	dptr,#(_uip_broadcast_addr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00118$
	mov	a,r7
	cjne	a,ar5,00118$
;	../../core/net/uip_arp.c:379: memcpy(IPBUF->ethhdr.dest.addr, broadcast_ethaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	r5,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_broadcast_ethaddr
	push	acc
	mov	a,#(_broadcast_ethaddr >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00119$
00118$:
;	../../core/net/uip_arp.c:380: } else if(IPBUF->destipaddr.u8[0] == 224) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xE0,00144$
	sjmp	00145$
00144$:
	ljmp	00115$
00145$:
;	../../core/net/uip_arp.c:382: IPBUF->ethhdr.dest.addr[0] = 0x01;
	mov	dptr,#_uip_aligned_buf
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/uip_arp.c:383: IPBUF->ethhdr.dest.addr[1] = 0x00;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:384: IPBUF->ethhdr.dest.addr[2] = 0x5e;
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,#0x5E
	movx	@dptr,a
;	../../core/net/uip_arp.c:385: IPBUF->ethhdr.dest.addr[3] = IPBUF->destipaddr.u8[1];
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x1F
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../core/net/uip_arp.c:386: IPBUF->ethhdr.dest.addr[4] = IPBUF->destipaddr.u8[2];
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	../../core/net/uip_arp.c:387: IPBUF->ethhdr.dest.addr[5] = IPBUF->destipaddr.u8[3];
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,#_uip_aligned_buf
	mov	r5,#(_uip_aligned_buf >> 8)
	mov	a,#0x21
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	ljmp	00119$
00115$:
;	../../core/net/uip_arp.c:390: if(!uip_ipaddr_maskcmp(&IPBUF->destipaddr, &uip_hostaddr, &uip_netmask)) {
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_netmask
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	dptr,#_uip_hostaddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uip_netmask
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r6
	cjne	a,ar4,00101$
	mov	a,r7
	cjne	a,ar5,00101$
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#_uip_netmask
	mov	r5,#(_uip_netmask >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	r4,#_uip_hostaddr
	mov	r5,#(_uip_hostaddr >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#_uip_netmask
	mov	r3,#(_uip_netmask >> 8)
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r6
	cjne	a,ar4,00148$
	mov	a,r7
	cjne	a,ar5,00148$
	sjmp	00102$
00148$:
00101$:
;	../../core/net/uip_arp.c:394: uip_ipaddr_copy(&ipaddr, &uip_draddr);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_draddr
	push	acc
	mov	a,#(_uip_draddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_ipaddr
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	sjmp	00103$
00102$:
;	../../core/net/uip_arp.c:397: uip_ipaddr_copy(&ipaddr, &IPBUF->destipaddr);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x1E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	push	ar5
	mov	dptr,#_ipaddr
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00103$:
;	../../core/net/uip_arp.c:399: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	mov	r5,#_arp_table
	mov	r6,#(_arp_table >> 8)
	mov	r7,#0x00
00108$:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,00149$
00149$:
	jnc	00111$
;	../../core/net/uip_arp.c:400: if(uip_ipaddr_cmp(&ipaddr, &tabptr->ipaddr)) {
	mov	dptr,#_ipaddr
	mov	r0,_bp
	inc	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00151$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00151$
	sjmp	00152$
00151$:
	sjmp	00106$
00152$:
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_ipaddr + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r6
	cjne	a,ar2,00153$
	mov	a,r7
	cjne	a,ar3,00153$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00111$
00153$:
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/net/uip_arp.c:401: break;
00106$:
;	../../core/net/uip_arp.c:403: tabptr++;
	mov	a,#0x0B
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	../../core/net/uip_arp.c:399: for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00108$
00111$:
;	../../core/net/uip_arp.c:406: if(i == UIP_ARPTAB_SIZE) {
	mov	dptr,#_i
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,00154$
	sjmp	00155$
00154$:
	ljmp	00113$
00155$:
;	../../core/net/uip_arp.c:410: memset(BUF->ethhdr.dest.addr, 0xff, 6);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#0xFF
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip_arp.c:411: memset(BUF->dhwaddr.addr, 0x00, 6);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x20
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
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
;	../../core/net/uip_arp.c:412: memcpy(BUF->ethhdr.src.addr, uip_ethaddr.addr, 6);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_ethaddr
	push	acc
	mov	a,#(_uip_ethaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:413: memcpy(BUF->shwaddr.addr, uip_ethaddr.addr, 6);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x16
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_ethaddr
	push	acc
	mov	a,#(_uip_ethaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:415: uip_ipaddr_copy(&BUF->dipaddr, &ipaddr);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x26
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_ipaddr
	push	acc
	mov	a,#(_ipaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:416: uip_ipaddr_copy(&BUF->sipaddr, &uip_hostaddr);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x1C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r2,#0x00
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:417: BUF->opcode = UIP_HTONS(ARP_REQUEST); /* ARP request. */
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x14
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/uip_arp.c:418: BUF->hwtype = UIP_HTONS(ARP_HWTYPE_ETH);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x0E
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/uip_arp.c:419: BUF->protocol = UIP_HTONS(UIP_ETHTYPE_IP);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x10
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:420: BUF->hwlen = 6;
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x12
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x06
	movx	@dptr,a
;	../../core/net/uip_arp.c:421: BUF->protolen = 4;
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x13
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x04
	movx	@dptr,a
;	../../core/net/uip_arp.c:422: BUF->ethhdr.type = UIP_HTONS(UIP_ETHTYPE_ARP);
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	mov	a,#0x06
	movx	@dptr,a
;	../../core/net/uip_arp.c:424: uip_appdata = &uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN];
	mov	dptr,#_uip_appdata
	mov	a,#(_uip_aligned_buf + 0x0036)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_uip_aligned_buf + 0x0036) >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:426: uip_len = sizeof(struct arp_hdr);
	mov	dptr,#_uip_len
	mov	a,#0x2A
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:427: return;
	ljmp	00121$
00113$:
;	../../core/net/uip_arp.c:431: memcpy(IPBUF->ethhdr.dest.addr, tabptr->ethaddr.addr, 6);
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r3,#_uip_aligned_buf
	mov	r4,#(_uip_aligned_buf >> 8)
	mov	r2,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00119$:
;	../../core/net/uip_arp.c:433: memcpy(IPBUF->ethhdr.src.addr, uip_ethaddr.addr, 6);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x06
	push	acc
	clr	a
	push	acc
	mov	a,#_uip_ethaddr
	push	acc
	mov	a,#(_uip_ethaddr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip_arp.c:435: IPBUF->ethhdr.type = UIP_HTONS(UIP_ETHTYPE_IP);
	mov	r6,#_uip_aligned_buf
	mov	r7,#(_uip_aligned_buf >> 8)
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/uip_arp.c:437: uip_len += sizeof(struct uip_eth_hdr);
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uip_len
	mov	a,#0x0E
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_broadcast_ethaddr:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
_broadcast_ipaddr:
	.byte #0xFF,#0xFF	; 65535
	.byte #0xFF,#0xFF	; 65535
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
