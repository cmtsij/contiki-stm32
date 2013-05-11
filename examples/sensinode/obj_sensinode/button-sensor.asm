;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:31 2013
;--------------------------------------------------------
	.module button_sensor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _button_2_sensor
	.globl _button_1_sensor
	.globl _sensors_changed
	.globl _timer_expired
	.globl _timer_set
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
	.globl _port_0_ISR
	.globl _port_1_ISR
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_debouncetimer:
	.ds 8
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
_p0ien:
	.ds 1
_p2ien:
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
;Allocation info for local variables in function 'BUTTON_1_SELECT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PIN(BUTTON_1, 1, 0)
;	-----------------------------------------
;	 function BUTTON_1_SELECT
;	-----------------------------------------
_BUTTON_1_SELECT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,_P1SEL
	anl	ar7,#0xFE
	mov	_P1SEL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_SELECT_IO'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_SELECT_IO
;	-----------------------------------------
_BUTTON_1_SELECT_IO:
	mov	r7,_P1SEL
	anl	ar7,#0xFE
	mov	_P1SEL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_SELECT_PM'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PIN(BUTTON_1, 1, 0)
;	-----------------------------------------
;	 function BUTTON_1_SELECT_PM
;	-----------------------------------------
_BUTTON_1_SELECT_PM:
	orl	_P1SEL,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_SET'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_SET
;	-----------------------------------------
_BUTTON_1_SET:
	setb	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_CLEAR'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PIN(BUTTON_1, 1, 0)
;	-----------------------------------------
;	 function BUTTON_1_CLEAR
;	-----------------------------------------
_BUTTON_1_CLEAR:
	clr	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_READ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_READ
;	-----------------------------------------
_BUTTON_1_READ:
	mov	c,_P1_0
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_MAKE_OUTPUT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PIN(BUTTON_1, 1, 0)
;	-----------------------------------------
;	 function BUTTON_1_MAKE_OUTPUT
;	-----------------------------------------
_BUTTON_1_MAKE_OUTPUT:
	orl	_P1DIR,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_MAKE_INPUT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:48: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_MAKE_INPUT
;	-----------------------------------------
_BUTTON_1_MAKE_INPUT:
	mov	r7,_P1DIR
	anl	ar7,#0xFE
	mov	_P1DIR,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_ENABLE_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_1_ENABLE_IRQ
;	-----------------------------------------
_BUTTON_1_ENABLE_IRQ:
	orl	_P1IEN,#0x01
	orl	_IEN2,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_DISABLE_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_DISABLE_IRQ
;	-----------------------------------------
_BUTTON_1_DISABLE_IRQ:
	mov	r7,_P1IEN
	anl	ar7,#0xFE
	mov	_P1IEN,r7
	mov	a,_P1IEN
	jnz	00103$
	mov	r7,_IEN2
	anl	ar7,#0xEF
	mov	_IEN2,r7
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_IRQ_ENABLED'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_1_IRQ_ENABLED
;	-----------------------------------------
_BUTTON_1_IRQ_ENABLED:
	mov	a,#0x01
	anl	a,_P1IEN
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_IRQ_EDGE_SELECTD'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_IRQ_EDGE_SELECTD
;	-----------------------------------------
_BUTTON_1_IRQ_EDGE_SELECTD:
	orl	_PICTL,#0x02
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_IRQ_EDGE_SELECTU'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_1_IRQ_EDGE_SELECTU
;	-----------------------------------------
_BUTTON_1_IRQ_EDGE_SELECTU:
	mov	r7,_PICTL
	anl	ar7,#0xFD
	mov	_PICTL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_CHECK_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PORT_1_IRQ(BUTTON_1, 0)
;	-----------------------------------------
;	 function BUTTON_1_CHECK_IRQ
;	-----------------------------------------
_BUTTON_1_CHECK_IRQ:
	mov	a,#0x01
	anl	a,_P1IFG
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_1_IRQ_FLAG_OFF'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:49: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_1_IRQ_FLAG_OFF
;	-----------------------------------------
_BUTTON_1_IRQ_FLAG_OFF:
	clr	_IRCON2_P1IF
	mov	_P1IFG,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_SELECT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_SELECT
;	-----------------------------------------
_BUTTON_2_SELECT:
	mov	r7,_P0SEL
	anl	ar7,#0xEF
	mov	_P0SEL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_SELECT_IO'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_2_SELECT_IO
;	-----------------------------------------
_BUTTON_2_SELECT_IO:
	mov	r7,_P0SEL
	anl	ar7,#0xEF
	mov	_P0SEL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_SELECT_PM'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_SELECT_PM
;	-----------------------------------------
_BUTTON_2_SELECT_PM:
	orl	_P0SEL,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_SET'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_2_SET
;	-----------------------------------------
_BUTTON_2_SET:
	setb	_P0_4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_CLEAR'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_CLEAR
;	-----------------------------------------
_BUTTON_2_CLEAR:
	clr	_P0_4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_READ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_2_READ
;	-----------------------------------------
_BUTTON_2_READ:
	mov	c,_P0_4
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_MAKE_OUTPUT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_MAKE_OUTPUT
;	-----------------------------------------
_BUTTON_2_MAKE_OUTPUT:
	orl	_P0DIR,#0x10
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_MAKE_INPUT'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:50: HWCONF_PIN(BUTTON_2, 0, 4)
;	-----------------------------------------
;	 function BUTTON_2_MAKE_INPUT
;	-----------------------------------------
_BUTTON_2_MAKE_INPUT:
	mov	r7,_P0DIR
	anl	ar7,#0xEF
	mov	_P0DIR,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_ENABLE_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_ENABLE_IRQ
;	-----------------------------------------
_BUTTON_2_ENABLE_IRQ:
	orl	_PICTL,#0x10
	mov	dptr,#_p0ien
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
	orl	_IEN1,#0x20
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_DISABLE_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: #endif /* MODEL_N740 */
;	-----------------------------------------
;	 function BUTTON_2_DISABLE_IRQ
;	-----------------------------------------
_BUTTON_2_DISABLE_IRQ:
	mov	dptr,#_p0ien
	movx	a,@dptr
	anl	a,#0xEF
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xF0
	jz	00114$
	ret
00114$:
	mov	r7,_PICTL
	anl	ar7,#0xEF
	mov	_PICTL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_IRQ_ENABLED'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_IRQ_ENABLED
;	-----------------------------------------
_BUTTON_2_IRQ_ENABLED:
	mov	dptr,#_p0ien
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x10
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_IRQ_EDGE_SELECTD'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: #endif /* MODEL_N740 */
;	-----------------------------------------
;	 function BUTTON_2_IRQ_EDGE_SELECTD
;	-----------------------------------------
_BUTTON_2_IRQ_EDGE_SELECTD:
	orl	_PICTL,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_IRQ_EDGE_SELECTU'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_IRQ_EDGE_SELECTU
;	-----------------------------------------
_BUTTON_2_IRQ_EDGE_SELECTU:
	mov	r7,_PICTL
	anl	ar7,#0xFE
	mov	_PICTL,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_CHECK_IRQ'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: #endif /* MODEL_N740 */
;	-----------------------------------------
;	 function BUTTON_2_CHECK_IRQ
;	-----------------------------------------
_BUTTON_2_CHECK_IRQ:
	mov	a,#0x10
	anl	a,_P0IFG
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BUTTON_2_IRQ_FLAG_OFF'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:51: HWCONF_PORT_0_IRQ(BUTTON_2, 4)
;	-----------------------------------------
;	 function BUTTON_2_IRQ_FLAG_OFF
;	-----------------------------------------
_BUTTON_2_IRQ_FLAG_OFF:
	clr	_IRCON_P0IF
	mov	_P0IFG,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'value_b1'
;------------------------------------------------------------
;type                      Allocated to registers 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:63: int value_b1(int type)
;	-----------------------------------------
;	 function value_b1
;	-----------------------------------------
_value_b1:
;	../../platform/sensinode/dev/button-sensor.c:65: return BUTTON_1_READ() || !timer_expired(&debouncetimer[0]);
	lcall	_BUTTON_1_READ
	mov	a,dpl
	jnz	00104$
	mov	dptr,#_debouncetimer
	mov	b,#0x40
	lcall	_timer_expired
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00111$
00111$:
	clr	a
	rlc	a
	mov	r6,a
	jnz	00104$
	mov	r7,a
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	dpl,r7
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'status_b1'
;------------------------------------------------------------
;type                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:69: int status_b1(int type)
;	-----------------------------------------
;	 function status_b1
;	-----------------------------------------
_status_b1:
	mov	r6,dpl
	mov	r7,dph
;	../../platform/sensinode/dev/button-sensor.c:71: switch (type) {
	cjne	r6,#0x81,00108$
	cjne	r7,#0x00,00108$
	sjmp	00102$
00108$:
	cjne	r6,#0x82,00103$
	cjne	r7,#0x00,00103$
;	../../platform/sensinode/dev/button-sensor.c:73: case SENSORS_READY:
00102$:
;	../../platform/sensinode/dev/button-sensor.c:74: return BUTTON_1_IRQ_ENABLED();
;	../../platform/sensinode/dev/button-sensor.c:75: }
	ljmp	_BUTTON_1_IRQ_ENABLED
00103$:
;	../../platform/sensinode/dev/button-sensor.c:76: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_b1'
;------------------------------------------------------------
;value                     Allocated to stack - _bp -4
;type                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:80: int configure_b1(int type, int value)
;	-----------------------------------------
;	 function configure_b1
;	-----------------------------------------
_configure_b1:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../platform/sensinode/dev/button-sensor.c:82: switch(type) {
	cjne	r6,#0x80,00119$
	cjne	r7,#0x00,00119$
	sjmp	00101$
00119$:
;	../../platform/sensinode/dev/button-sensor.c:83: case SENSORS_HW_INIT:
	cjne	r6,#0x81,00108$
	cjne	r7,#0x00,00108$
	sjmp	00102$
00101$:
;	../../platform/sensinode/dev/button-sensor.c:85: BUTTON_1_IRQ_EDGE_SELECTD();
	lcall	_BUTTON_1_IRQ_EDGE_SELECTD
;	../../platform/sensinode/dev/button-sensor.c:86: BUTTON_1_SELECT();
	lcall	_BUTTON_1_SELECT
;	../../platform/sensinode/dev/button-sensor.c:87: BUTTON_1_MAKE_INPUT();
	lcall	_BUTTON_1_MAKE_INPUT
;	../../platform/sensinode/dev/button-sensor.c:88: return 1;
	mov	dptr,#0x0001
;	../../platform/sensinode/dev/button-sensor.c:89: case SENSORS_ACTIVE:
	sjmp	00109$
00102$:
;	../../platform/sensinode/dev/button-sensor.c:90: if(value) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:91: if(!BUTTON_1_IRQ_ENABLED()) {
	lcall	_BUTTON_1_IRQ_ENABLED
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	../../platform/sensinode/dev/button-sensor.c:92: timer_set(&debouncetimer[0], 0);
	jnz	00107$
	push	acc
	push	acc
	mov	dptr,#_debouncetimer
	mov	b,#0x40
	lcall	_timer_set
	dec	sp
	dec	sp
;	../../platform/sensinode/dev/button-sensor.c:93: BUTTON_1_IRQ_FLAG_OFF();
	lcall	_BUTTON_1_IRQ_FLAG_OFF
;	../../platform/sensinode/dev/button-sensor.c:94: BUTTON_1_ENABLE_IRQ();
	lcall	_BUTTON_1_ENABLE_IRQ
	sjmp	00107$
00106$:
;	../../platform/sensinode/dev/button-sensor.c:97: BUTTON_1_DISABLE_IRQ();
	lcall	_BUTTON_1_DISABLE_IRQ
00107$:
;	../../platform/sensinode/dev/button-sensor.c:99: return 1;
	mov	dptr,#0x0001
;	../../platform/sensinode/dev/button-sensor.c:100: }
	sjmp	00109$
00108$:
;	../../platform/sensinode/dev/button-sensor.c:101: return 0;
	mov	dptr,#0x0000
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'value_b2'
;------------------------------------------------------------
;type                      Allocated to registers 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:105: int value_b2(int type)
;	-----------------------------------------
;	 function value_b2
;	-----------------------------------------
_value_b2:
;	../../platform/sensinode/dev/button-sensor.c:107: return BUTTON_2_READ() || !timer_expired(&debouncetimer[1]);
	lcall	_BUTTON_2_READ
	mov	a,dpl
	jnz	00104$
	mov	dptr,#(_debouncetimer + 0x0004)
	mov	b,#0x40
	lcall	_timer_expired
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00111$
00111$:
	clr	a
	rlc	a
	mov	r6,a
	jnz	00104$
	mov	r7,a
	sjmp	00105$
00104$:
	mov	r7,#0x01
00105$:
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	dpl,r7
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'status_b2'
;------------------------------------------------------------
;type                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:111: int status_b2(int type)
;	-----------------------------------------
;	 function status_b2
;	-----------------------------------------
_status_b2:
	mov	r6,dpl
	mov	r7,dph
;	../../platform/sensinode/dev/button-sensor.c:113: switch (type) {
	cjne	r6,#0x81,00108$
	cjne	r7,#0x00,00108$
	sjmp	00102$
00108$:
	cjne	r6,#0x82,00103$
	cjne	r7,#0x00,00103$
;	../../platform/sensinode/dev/button-sensor.c:115: case SENSORS_READY:
00102$:
;	../../platform/sensinode/dev/button-sensor.c:116: return BUTTON_2_IRQ_ENABLED();
;	../../platform/sensinode/dev/button-sensor.c:117: }
	ljmp	_BUTTON_2_IRQ_ENABLED
00103$:
;	../../platform/sensinode/dev/button-sensor.c:118: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_b2'
;------------------------------------------------------------
;value                     Allocated to stack - _bp -4
;type                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:122: int configure_b2(int type, int value)
;	-----------------------------------------
;	 function configure_b2
;	-----------------------------------------
_configure_b2:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../platform/sensinode/dev/button-sensor.c:124: switch(type) {
	cjne	r6,#0x80,00119$
	cjne	r7,#0x00,00119$
	sjmp	00101$
00119$:
;	../../platform/sensinode/dev/button-sensor.c:125: case SENSORS_HW_INIT:
	cjne	r6,#0x81,00108$
	cjne	r7,#0x00,00108$
	sjmp	00102$
00101$:
;	../../platform/sensinode/dev/button-sensor.c:128: BUTTON_2_SELECT();
	lcall	_BUTTON_2_SELECT
;	../../platform/sensinode/dev/button-sensor.c:129: BUTTON_2_MAKE_INPUT();
	lcall	_BUTTON_2_MAKE_INPUT
;	../../platform/sensinode/dev/button-sensor.c:130: return 1;
	mov	dptr,#0x0001
;	../../platform/sensinode/dev/button-sensor.c:131: case SENSORS_ACTIVE:
	sjmp	00109$
00102$:
;	../../platform/sensinode/dev/button-sensor.c:132: if(value) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:133: if(!BUTTON_2_IRQ_ENABLED()) {
	lcall	_BUTTON_2_IRQ_ENABLED
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	../../platform/sensinode/dev/button-sensor.c:134: timer_set(&debouncetimer[1], 0);
	jnz	00107$
	push	acc
	push	acc
	mov	dptr,#(_debouncetimer + 0x0004)
	mov	b,#0x40
	lcall	_timer_set
	dec	sp
	dec	sp
;	../../platform/sensinode/dev/button-sensor.c:135: BUTTON_2_IRQ_FLAG_OFF();
	lcall	_BUTTON_2_IRQ_FLAG_OFF
;	../../platform/sensinode/dev/button-sensor.c:136: BUTTON_2_ENABLE_IRQ();
	lcall	_BUTTON_2_ENABLE_IRQ
	sjmp	00107$
00106$:
;	../../platform/sensinode/dev/button-sensor.c:139: BUTTON_2_DISABLE_IRQ();
	lcall	_BUTTON_2_DISABLE_IRQ
00107$:
;	../../platform/sensinode/dev/button-sensor.c:141: return 1;
	mov	dptr,#0x0001
;	../../platform/sensinode/dev/button-sensor.c:142: }
	sjmp	00109$
00108$:
;	../../platform/sensinode/dev/button-sensor.c:143: return 0;
	mov	dptr,#0x0000
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'port_0_ISR'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:147: port_0_ISR(void) __interrupt (P0INT_VECTOR)
;	-----------------------------------------
;	 function port_0_ISR
;	-----------------------------------------
_port_0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	../../platform/sensinode/dev/button-sensor.c:149: EA = 0;
	clr	_EA
;	../../platform/sensinode/dev/button-sensor.c:163: if(BUTTON_2_CHECK_IRQ()) {
	lcall	_BUTTON_2_CHECK_IRQ
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:164: if(timer_expired(&debouncetimer[1])) {
	mov	dptr,#(_debouncetimer + 0x0004)
	mov	b,#0x40
	lcall	_timer_expired
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:165: timer_set(&debouncetimer[1], CLOCK_SECOND / 4);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dptr,#(_debouncetimer + 0x0004)
	mov	b,#0x40
	lcall	_timer_set
	dec	sp
	dec	sp
;	../../platform/sensinode/dev/button-sensor.c:166: sensors_changed(&button_2_sensor);
	mov	dptr,#_button_2_sensor
	mov	b,#0x80
	lcall	_sensors_changed
00106$:
;	../../platform/sensinode/dev/button-sensor.c:169: P0IFG = 0;
	mov	_P0IFG,#0x00
;	../../platform/sensinode/dev/button-sensor.c:170: IRCON_P0IF = 0;
	clr	_IRCON_P0IF
;	../../platform/sensinode/dev/button-sensor.c:172: EA = 1;
	setb	_EA
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'port_1_ISR'
;------------------------------------------------------------
;	../../platform/sensinode/dev/button-sensor.c:178: port_1_ISR(void) __interrupt (P1INT_VECTOR)
;	-----------------------------------------
;	 function port_1_ISR
;	-----------------------------------------
_port_1_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	../../platform/sensinode/dev/button-sensor.c:180: EA = 0;
	clr	_EA
;	../../platform/sensinode/dev/button-sensor.c:185: if(BUTTON_1_CHECK_IRQ()) {
	lcall	_BUTTON_1_CHECK_IRQ
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:186: if(timer_expired(&debouncetimer[0])) {
	mov	dptr,#_debouncetimer
	mov	b,#0x40
	lcall	_timer_expired
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00106$
;	../../platform/sensinode/dev/button-sensor.c:187: timer_set(&debouncetimer[0], CLOCK_SECOND / 4);
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dptr,#_debouncetimer
	mov	b,#0x40
	lcall	_timer_set
	dec	sp
	dec	sp
;	../../platform/sensinode/dev/button-sensor.c:188: sensors_changed(&button_1_sensor);
	mov	dptr,#_button_1_sensor
	mov	b,#0x80
	lcall	_sensors_changed
00106$:
;	../../platform/sensinode/dev/button-sensor.c:191: P1IFG = 0;
	mov	_P1IFG,#0x00
;	../../platform/sensinode/dev/button-sensor.c:192: IRCON2_P1IF = 0;
	clr	_IRCON2_P1IF
;	../../platform/sensinode/dev/button-sensor.c:194: EA = 1;
	setb	_EA
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
_button_1_sensor:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _value_b1,(_value_b1 >> 8)
	.byte _configure_b1,(_configure_b1 >> 8)
	.byte _status_b1,(_status_b1 >> 8)
_button_2_sensor:
	.byte _str_1,(_str_1 >> 8),#0x80
	.byte _value_b2,(_value_b2 >> 8)
	.byte _configure_b2,(_configure_b2 >> 8)
	.byte _status_b2,(_status_b2 >> 8)
_str_0:
	.ascii "Button 1"
	.db 0x00
_str_1:
	.ascii "Button 2"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
