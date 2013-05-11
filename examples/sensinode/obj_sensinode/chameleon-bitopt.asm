;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:19 2013
;--------------------------------------------------------
	.module chameleon_bitopt
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _chameleon_bitopt
	.globl _set_bits
	.globl _set_bits_in_byte
	.globl _get_bits
	.globl _get_bits_in_byte
	.globl _channel_lookup
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _memset
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
;Allocation info for local variables in function 'get_bits_in_byte'
;------------------------------------------------------------
;bitpos                    Allocated to stack - _bp -4
;vallen                    Allocated to stack - _bp -6
;from                      Allocated to registers r5 r6 r7 
;shifted_val               Allocated to registers r4 r3 
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:73: get_bits_in_byte(uint8_t *from, int bitpos, int vallen)
;	-----------------------------------------
;	 function get_bits_in_byte
;	-----------------------------------------
_get_bits_in_byte:
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
;	../../core/net/rime/chameleon-bitopt.c:77: shifted_val = (from[0] << 8) | from[1];
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	orl	ar4,a
	mov	a,r7
	orl	ar3,a
;	../../core/net/rime/chameleon-bitopt.c:85: return (((shifted_val << bitpos) >> 8) & bitmask[vallen]) >> (8 - vallen);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	b,@r0
	inc	b
	sjmp	00105$
00104$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00105$:
	djnz	b,00104$
	mov	ar4,r3
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,#_bitmask
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_bitmask >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,#0x00
	anl	ar4,a
	mov	a,r6
	anl	ar3,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x08
	clr	c
	subb	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	b,r6
	inc	b
	sjmp	00107$
00106$:
	clr	c
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r4
	rrc	a
	mov	r4,a
00107$:
	djnz	b,00106$
	mov	dpl,r4
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_bits'
;------------------------------------------------------------
;from                      Allocated to stack - _bp -5
;bitpos                    Allocated to stack - _bp -7
;vallen                    Allocated to stack - _bp -9
;to                        Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;bits                      Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:89: get_bits(uint8_t *to, uint8_t *from, int bitpos, int vallen)
;	-----------------------------------------
;	 function get_bits
;	-----------------------------------------
_get_bits:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../core/net/rime/chameleon-bitopt.c:94: if(vallen < 8) {
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x08
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	../../core/net/rime/chameleon-bitopt.c:95: *to = get_bits_in_byte(from, bitpos, vallen);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_get_bits_in_byte
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	ljmp	00119$
00109$:
;	../../core/net/rime/chameleon-bitopt.c:97: if(bitpos == 0) {
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00140$
	ljmp	00127$
00140$:
;	../../core/net/rime/chameleon-bitopt.c:98: for(i = 0; i < vallen / 8; ++i) {
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00111$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	../../core/net/rime/chameleon-bitopt.c:101: to[i] = from[i];
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:98: for(i = 0; i < vallen / 8; ++i) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00142$
	inc	r0
	inc	@r0
00142$:
	pop	ar4
	pop	ar3
	sjmp	00111$
00114$:
;	../../core/net/rime/chameleon-bitopt.c:103: bits = vallen & 7;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
;	../../core/net/rime/chameleon-bitopt.c:104: if(bits) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00143$
	ljmp	00119$
00143$:
;	../../core/net/rime/chameleon-bitopt.c:105: to[i] = get_bits_in_byte(&from[i], 0, bits);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_get_bits_in_byte
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	ljmp	00119$
;	../../core/net/rime/chameleon-bitopt.c:108: for(i = 0; i < vallen / 8; ++i) {
00127$:
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00115$:
	mov	a,_bp
	add	a,#0x04
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
	jnc	00118$
;	../../core/net/rime/chameleon-bitopt.c:111: to[i] = get_bits_in_byte(&from[i], bitpos, 8);
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar3
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_get_bits_in_byte
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:108: for(i = 0; i < vallen / 8; ++i) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00145$
	inc	r0
	inc	@r0
00145$:
	pop	ar7
	pop	ar6
	ljmp	00115$
00118$:
;	../../core/net/rime/chameleon-bitopt.c:113: bits = vallen & 7;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
;	../../core/net/rime/chameleon-bitopt.c:114: if(bits) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00119$
;	../../core/net/rime/chameleon-bitopt.c:115: to[i] = get_bits_in_byte(&from[i], bitpos, bits);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_get_bits_in_byte
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00119$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'header_size'
;------------------------------------------------------------
;a                         Allocated to registers 
;size                      Allocated to stack - _bp +1
;len                       Allocated to registers r2 r4 
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:122: header_size(const struct packetbuf_attrlist *a)
;	-----------------------------------------
;	 function header_size
;	-----------------------------------------
_header_size:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/chameleon-bitopt.c:129: size = 0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00101$:
;	../../core/net/rime/chameleon-bitopt.c:130: for(; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jz	00104$
;	../../core/net/rime/chameleon-bitopt.c:140: len = a->len;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
;	../../core/net/rime/chameleon-bitopt.c:144: size += len;
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:130: for(; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	sjmp	00101$
00104$:
;	../../core/net/rime/chameleon-bitopt.c:146: return size;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_bits_in_byte'
;------------------------------------------------------------
;bitpos                    Allocated to stack - _bp -4
;val                       Allocated to stack - _bp -5
;vallen                    Allocated to stack - _bp -7
;target                    Allocated to stack - _bp +1
;shifted_val               Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:150: set_bits_in_byte(uint8_t *target, int bitpos, uint8_t val, int vallen)
;	-----------------------------------------
;	 function set_bits_in_byte
;	-----------------------------------------
_set_bits_in_byte:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/rime/chameleon-bitopt.c:153: shifted_val = val << (8 - bitpos + 8 - vallen);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x10
	clr	c
	subb	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	b,r2
	inc	b
	sjmp	00104$
00103$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00104$:
	djnz	b,00103$
;	../../core/net/rime/chameleon-bitopt.c:156: target[0] |= shifted_val >> 8;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	ar6,r4
	mov	a,r6
	orl	ar7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:157: target[1] |= shifted_val & 0xff;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	clr	a
	mov	@r0,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_bits'
;------------------------------------------------------------
;bitpos                    Allocated to stack - _bp -4
;val                       Allocated to stack - _bp -7
;vallen                    Allocated to stack - _bp -9
;ptr                       Allocated to stack - _bp +1
;i                         Allocated to stack - _bp +4
;bits                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:161: set_bits(uint8_t *ptr, int bitpos, uint8_t *val, int vallen)
;	-----------------------------------------
;	 function set_bits
;	-----------------------------------------
_set_bits:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/rime/chameleon-bitopt.c:168: if(vallen < 8) {
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x08
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	../../core/net/rime/chameleon-bitopt.c:169: set_bits_in_byte(ptr, bitpos, *val /*>> (8 - vallen)*/, vallen);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_bits_in_byte
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00119$
00109$:
;	../../core/net/rime/chameleon-bitopt.c:171: if(bitpos == 0) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00140$
	ljmp	00127$
00140$:
;	../../core/net/rime/chameleon-bitopt.c:172: for(i = 0; i < vallen / 8; ++i) {
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00111$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	../../core/net/rime/chameleon-bitopt.c:175: ptr[i] = val[i];
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:172: for(i = 0; i < vallen / 8; ++i) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00142$
	inc	r0
	inc	@r0
00142$:
	pop	ar4
	pop	ar3
	sjmp	00111$
00114$:
;	../../core/net/rime/chameleon-bitopt.c:177: bits = vallen & 7;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x07
	anl	a,@r0
;	../../core/net/rime/chameleon-bitopt.c:178: if(bits) {
	mov	r6,a
	mov	r7,#0x00
	orl	a,r7
	jnz	00143$
	ljmp	00119$
00143$:
;	../../core/net/rime/chameleon-bitopt.c:179: set_bits_in_byte(&ptr[i], 0, val[i] >> (8 - bits), bits);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
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
	mov	a,#0x08
	clr	c
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,r3
	sjmp	00145$
00144$:
	clr	c
	rrc	a
00145$:
	djnz	b,00144$
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar6
	push	ar7
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_set_bits_in_byte
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00119$
;	../../core/net/rime/chameleon-bitopt.c:182: for(i = 0; i < vallen / 8; ++i) {
00127$:
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00115$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
;	../../core/net/rime/chameleon-bitopt.c:185: set_bits_in_byte(&ptr[i], bitpos, val[i], 8);
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
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
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar5
	push	ar4
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	ar3
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_set_bits_in_byte
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	../../core/net/rime/chameleon-bitopt.c:182: for(i = 0; i < vallen / 8; ++i) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00147$
	inc	r0
	inc	@r0
00147$:
	pop	ar5
	pop	ar4
	ljmp	00115$
00118$:
;	../../core/net/rime/chameleon-bitopt.c:187: bits = vallen & 7;
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x07
	anl	a,@r0
;	../../core/net/rime/chameleon-bitopt.c:188: if(bits) {
	mov	r6,a
	mov	r7,#0x00
	orl	a,r7
	jz	00119$
;	../../core/net/rime/chameleon-bitopt.c:189: set_bits_in_byte(&ptr[i], 0, val[i] >> (8 - bits + bitpos), bits);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
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
	mov	a,#0x08
	clr	c
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,r3
	sjmp	00150$
00149$:
	clr	c
	rrc	a
00150$:
	djnz	b,00149$
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar6
	push	ar7
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_set_bits_in_byte
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00119$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pack_header'
;------------------------------------------------------------
;c                         Allocated to stack - _bp +1
;a                         Allocated to registers 
;hdrbytesize               Allocated to stack - _bp +4
;byteptr                   Allocated to stack - _bp +6
;bitptr                    Allocated to stack - _bp +8
;len                       Allocated to stack - _bp +10
;hdrptr                    Allocated to stack - _bp +12
;hdr                       Allocated to stack - _bp +15
;val                       Allocated to stack - _bp +18
;sloc0                     Allocated to stack - _bp +20
;sloc1                     Allocated to stack - _bp +23
;sloc2                     Allocated to stack - _bp +25
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:234: pack_header(struct channel *c)
;	-----------------------------------------
;	 function pack_header
;	-----------------------------------------
_pack_header:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x18
	mov	sp,a
;	../../core/net/rime/chameleon-bitopt.c:245: hdrbytesize = c->hdrsize / 8 + ((c->hdrsize & 7) == 0? 0: 1);
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
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
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r3,a
	mov	r4,#0x00
	anl	ar2,#0x07
	mov	a,r2
	cjne	a,#0x01,00125$
00125$:
	clr	a
	rlc	a
	mov	r2,a
	jz	00112$
	mov	r2,#0x00
	sjmp	00113$
00112$:
	mov	r2,#0x01
00113$:
	mov	r7,#0x00
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/rime/chameleon-bitopt.c:246: if(packetbuf_hdralloc(hdrbytesize + sizeof(struct bitopt_hdr)) == 0) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
;	../../core/net/rime/chameleon-bitopt.c:248: return 0;
	mov	dptr,#0x0000
	ljmp	00110$
00102$:
;	../../core/net/rime/chameleon-bitopt.c:250: hdr = (struct bitopt_hdr *)packetbuf_hdrptr();
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/rime/chameleon-bitopt.c:251: hdr->channel[0] = c->channelno & 0xff;
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	mov	ar4,r5
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:252: hdr->channel[1] = (c->channelno >> 8) & 0xff;
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	ar5,r6
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	../../core/net/rime/chameleon-bitopt.c:254: hdrptr = ((uint8_t *)packetbuf_hdrptr()) + sizeof(struct bitopt_hdr);
	lcall	_packetbuf_hdrptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/chameleon-bitopt.c:255: memset(hdrptr, 0, hdrbytesize);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/chameleon-bitopt.c:257: byteptr = bitptr = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:259: for(a = c->attrlist; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
00106$:
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x00,00128$
	ljmp	00109$
00128$:
;	../../core/net/rime/chameleon-bitopt.c:272: len = a->len;
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x01
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	../../core/net/rime/chameleon-bitopt.c:273: byteptr = bitptr / 8;
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r4,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar2
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
;	../../core/net/rime/chameleon-bitopt.c:274: if(PACKETBUF_IS_ADDR(a->type)) {
	cjne	r2,#0x18,00129$
00129$:
	jc	00104$
;	../../core/net/rime/chameleon-bitopt.c:276: (uint8_t *)packetbuf_addr(a->type), len);
	mov	dpl,r2
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r6,b
	mov	ar2,r6
;	../../core/net/rime/chameleon-bitopt.c:275: set_bits(&hdrptr[byteptr], bitptr & 7,
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar2
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_set_bits
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00105$
00104$:
;	../../core/net/rime/chameleon-bitopt.c:283: val = packetbuf_attr(a->type);
	mov	dpl,r2
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/chameleon-bitopt.c:285: (uint8_t *)&val, len);
	mov	a,_bp
	add	a,#0x12
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
;	../../core/net/rime/chameleon-bitopt.c:284: set_bits(&hdrptr[byteptr], bitptr & 7,
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_bits
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00105$:
;	../../core/net/rime/chameleon-bitopt.c:291: bitptr += len;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:259: for(a = c->attrlist; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00106$
00109$:
;	../../core/net/rime/chameleon-bitopt.c:295: return 1; /* Send out packet */
	mov	dptr,#0x0001
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unpack_header'
;------------------------------------------------------------
;a                         Allocated to registers 
;byteptr                   Allocated to registers r7 r6 
;bitptr                    Allocated to stack - _bp +1
;len                       Allocated to stack - _bp +3
;hdrbytesize               Allocated to registers r6 r7 
;hdrptr                    Allocated to stack - _bp +5
;hdr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - _bp +8
;addr                      Allocated to stack - _bp +11
;val                       Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +15
;sloc1                     Allocated to stack - _bp +16
;sloc2                     Allocated to stack - _bp +18
;sloc3                     Allocated to stack - _bp +21
;------------------------------------------------------------
;	../../core/net/rime/chameleon-bitopt.c:299: unpack_header(void)
;	-----------------------------------------
;	 function unpack_header
;	-----------------------------------------
_unpack_header:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x17
	mov	sp,a
;	../../core/net/rime/chameleon-bitopt.c:311: hdr = (struct bitopt_hdr *)packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/chameleon-bitopt.c:312: if(packetbuf_hdrreduce(sizeof(struct bitopt_hdr)) == 0) {
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
;	../../core/net/rime/chameleon-bitopt.c:314: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00114$
00102$:
;	../../core/net/rime/chameleon-bitopt.c:316: c = channel_lookup((hdr->channel[1] << 8) + hdr->channel[0]);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	lcall	_channel_lookup
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/chameleon-bitopt.c:317: if(c == NULL) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	../../core/net/rime/chameleon-bitopt.c:320: return NULL;
	jnz	00104$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00114$
00104$:
;	../../core/net/rime/chameleon-bitopt.c:323: hdrptr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/rime/chameleon-bitopt.c:324: hdrbytesize = c->hdrsize / 8 + ((c->hdrsize & 7) == 0? 0: 1);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x08
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
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r6,a
	mov	r7,#0x00
	anl	ar5,#0x07
	mov	a,r5
	cjne	a,#0x01,00135$
00135$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00116$
	mov	r5,#0x00
	sjmp	00117$
00116$:
	mov	r5,#0x01
00117$:
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
;	../../core/net/rime/chameleon-bitopt.c:325: if(packetbuf_hdrreduce(hdrbytesize) == 0) {
	mov	dpl,r6
	mov	dph,r7
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	../../core/net/rime/chameleon-bitopt.c:327: return NULL;
	jnz	00106$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00114$
00106$:
;	../../core/net/rime/chameleon-bitopt.c:329: byteptr = bitptr = 0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:330: for(a = c->attrlist; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x05
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
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
00110$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0x00,00138$
	ljmp	00113$
00138$:
;	../../core/net/rime/chameleon-bitopt.c:342: len = a->len;
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
;	../../core/net/rime/chameleon-bitopt.c:343: byteptr = bitptr / 8;
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r7,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/rime/chameleon-bitopt.c:344: if(PACKETBUF_IS_ADDR(a->type)) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0x18,00139$
00139$:
	jnc	00140$
	ljmp	00108$
00140$:
;	../../core/net/rime/chameleon-bitopt.c:346: get_bits((uint8_t *)&addr, &hdrptr[byteptr], bitptr & 7, len);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,r7
	add	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0B
	mov	r7,a
	mov	r6,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x12
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
	mov	b,r2
	lcall	_get_bits
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/rime/chameleon-bitopt.c:350: packetbuf_set_addr(a->type, &addr);
	mov	a,_bp
	add	a,#0x0B
	mov	r7,a
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x12
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
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
	ljmp	00109$
00108$:
;	../../core/net/rime/chameleon-bitopt.c:352: packetbuf_attr_t val = 0;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:353: get_bits((uint8_t *)&val, &hdrptr[byteptr], bitptr & 7, len);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,#0x07
	anl	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,r7
	add	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0D
	mov	r7,a
	mov	r6,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x15
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
	mov	b,r2
	lcall	_get_bits
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/rime/chameleon-bitopt.c:355: packetbuf_set_attr(a->type, val);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
00109$:
;	../../core/net/rime/chameleon-bitopt.c:361: bitptr += len;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/rime/chameleon-bitopt.c:330: for(a = c->attrlist; a->type != PACKETBUF_ATTR_NONE; ++a) {
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	ljmp	00110$
00113$:
;	../../core/net/rime/chameleon-bitopt.c:363: return c;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
00114$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_bitmask:
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF8	; 248
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xFF	; 255
_chameleon_bitopt:
	.byte _unpack_header,(_unpack_header >> 8)
	.byte _pack_header,(_pack_header >> 8)
	.byte _header_size,(_header_size >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
