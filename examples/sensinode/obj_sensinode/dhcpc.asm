;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:30 2013
;--------------------------------------------------------
	.module dhcpc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dhcpc_unconfigured
	.globl _dhcpc_configured
	.globl _tcpip_poll_udp
	.globl _udp_new
	.globl _uip_htons
	.globl _uip_send
	.globl _etimer_expired
	.globl _etimer_set
	.globl _memset
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
	.globl _dhcpc_init
	.globl _dhcpc_appcall
	.globl _dhcpc_request
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
_s:
	.ds 49
_xid:
	.ds 4
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
;Allocation info for local variables in function 'add_msg_type'
;------------------------------------------------------------
;type                      Allocated to stack - _bp -3
;optptr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:97: add_msg_type(uint8_t *optptr, uint8_t type)
;	-----------------------------------------
;	 function add_msg_type
;	-----------------------------------------
_add_msg_type:
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
;	../../core/net/dhcpc.c:99: *optptr++ = DHCP_OPTION_MSG_TYPE;
	mov	r7,b
	mov	a,#0x35
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:100: *optptr++ = 1;
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:101: *optptr++ = type;
	mov	b,r7
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:102: return optptr;
	mov	b,r7
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_server_id'
;------------------------------------------------------------
;optptr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:106: add_server_id(uint8_t *optptr)
;	-----------------------------------------
;	 function add_server_id
;	-----------------------------------------
_add_server_id:
;	../../core/net/dhcpc.c:108: *optptr++ = DHCP_OPTION_SERVER_ID;
	mov	r7,b
	mov	a,#0x36
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:109: *optptr++ = 4;
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../../core/net/dhcpc.c:110: memcpy(optptr, s.serverid, 4);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#(_s + 0x0019)
	push	acc
	mov	a,#((_s + 0x0019) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/dhcpc.c:111: return optptr + 4;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_req_ipaddr'
;------------------------------------------------------------
;optptr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:115: add_req_ipaddr(uint8_t *optptr)
;	-----------------------------------------
;	 function add_req_ipaddr
;	-----------------------------------------
_add_req_ipaddr:
;	../../core/net/dhcpc.c:117: *optptr++ = DHCP_OPTION_REQ_IPADDR;
	mov	r7,b
	mov	a,#0x32
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:118: *optptr++ = 4;
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../../core/net/dhcpc.c:119: memcpy(optptr, s.ipaddr.u16, 4);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#(_s + 0x0021)
	push	acc
	mov	a,#((_s + 0x0021) >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/dhcpc.c:120: return optptr + 4;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_req_options'
;------------------------------------------------------------
;optptr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:124: add_req_options(uint8_t *optptr)
;	-----------------------------------------
;	 function add_req_options
;	-----------------------------------------
_add_req_options:
;	../../core/net/dhcpc.c:126: *optptr++ = DHCP_OPTION_REQ_LIST;
	mov	r7,b
	mov	a,#0x37
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:127: *optptr++ = 3;
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:128: *optptr++ = DHCP_OPTION_SUBNET_MASK;
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:129: *optptr++ = DHCP_OPTION_ROUTER;
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:130: *optptr++ = DHCP_OPTION_DNS_SERVER;
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:131: return optptr;
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_end'
;------------------------------------------------------------
;optptr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:135: add_end(uint8_t *optptr)
;	-----------------------------------------
;	 function add_end
;	-----------------------------------------
_add_end:
;	../../core/net/dhcpc.c:137: *optptr++ = DHCP_OPTION_END;
	mov	r7,b
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
;	../../core/net/dhcpc.c:138: return optptr;
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_msg'
;------------------------------------------------------------
;m                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/net/dhcpc.c:142: create_msg(CC_REGISTER_ARG struct dhcp_msg *m)
;	-----------------------------------------
;	 function create_msg
;	-----------------------------------------
_create_msg:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/dhcpc.c:144: m->op = DHCP_REQUEST;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/dhcpc.c:145: m->htype = DHCP_HTYPE_ETHERNET;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/dhcpc.c:146: m->hlen = s.mac_len;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dptr,#(_s + 0x0017)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../../core/net/dhcpc.c:147: m->hops = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	clr	a
	lcall	__gptrput
;	../../core/net/dhcpc.c:148: memcpy(m->xid, &xid, sizeof(m->xid));
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_xid
	push	acc
	mov	a,#(_xid >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/dhcpc.c:149: m->secs = 0;
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
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/dhcpc.c:150: m->flags = UIP_HTONS(BOOTP_BROADCAST); /*  Broadcast bit. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x0A
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
	mov	a,#0x80
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/dhcpc.c:152: memcpy(m->ciaddr, uip_hostaddr.u16, sizeof(m->ciaddr));
	mov	r0,_bp
	inc	r0
	mov	a,#0x0C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/dhcpc.c:153: memset(m->yiaddr, 0, sizeof(m->yiaddr));
	mov	r0,_bp
	inc	r0
	mov	a,#0x10
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/dhcpc.c:154: memset(m->siaddr, 0, sizeof(m->siaddr));
	mov	r0,_bp
	inc	r0
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/dhcpc.c:155: memset(m->giaddr, 0, sizeof(m->giaddr));
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/dhcpc.c:156: memcpy(m->chaddr, s.mac_addr, s.mac_len);
	mov	dptr,#(_s + 0x0017)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_s + 0x0014)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/dhcpc.c:157: memset(&m->chaddr[s.mac_len], 0, sizeof(m->chaddr) - s.mac_len);
	mov	dptr,#(_s + 0x0017)
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
	mov	a,#0x10
	clr	c
	subb	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	subb	a,@r0
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar4
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/dhcpc.c:159: memset(m->sname, 0, sizeof(m->sname));
	mov	r0,_bp
	inc	r0
	mov	a,#0x2C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x40
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
;	../../core/net/dhcpc.c:160: memset(m->file, 0, sizeof(m->file));
	mov	r0,_bp
	inc	r0
	mov	a,#0x6C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x80
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
;	../../core/net/dhcpc.c:163: memcpy(m->options, magic_cookie, sizeof(magic_cookie));
	mov	r0,_bp
	inc	r0
	mov	a,#0xEC
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_magic_cookie
	push	acc
	mov	a,#(_magic_cookie >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_discover'
;------------------------------------------------------------
;end                       Allocated to registers r5 r6 r7 
;m                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/dhcpc.c:167: send_discover(void)
;	-----------------------------------------
;	 function send_discover
;	-----------------------------------------
_send_discover:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/dhcpc.c:170: struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../core/net/dhcpc.c:172: create_msg(m);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_create_msg
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/dhcpc.c:174: end = add_msg_type(&m->options[4], DHCPDISCOVER);
	mov	a,#0xEC
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_msg_type
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
;	../../core/net/dhcpc.c:175: end = add_req_options(end);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_req_options
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	../../core/net/dhcpc.c:176: end = add_end(end);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_end
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	../../core/net/dhcpc.c:178: uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
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
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_uip_send
	dec	sp
	dec	sp
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_request'
;------------------------------------------------------------
;end                       Allocated to registers r5 r6 r7 
;m                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/dhcpc.c:182: send_request(void)
;	-----------------------------------------
;	 function send_request
;	-----------------------------------------
_send_request:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/dhcpc.c:185: struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../../core/net/dhcpc.c:187: create_msg(m);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_create_msg
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/dhcpc.c:189: end = add_msg_type(&m->options[4], DHCPREQUEST);
	mov	a,#0xEC
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x03
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_msg_type
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
;	../../core/net/dhcpc.c:190: end = add_server_id(end);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_server_id
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	../../core/net/dhcpc.c:191: end = add_req_ipaddr(end);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_req_ipaddr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	../../core/net/dhcpc.c:192: end = add_end(end);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_add_end
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
;	../../core/net/dhcpc.c:194: uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
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
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_uip_send
	dec	sp
	dec	sp
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_options'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -4
;optptr                    Allocated to stack - _bp +1
;end                       Allocated to stack - _bp +4
;type                      Allocated to registers r4 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:198: parse_options(uint8_t *optptr, int len)
;	-----------------------------------------
;	 function parse_options
;	-----------------------------------------
_parse_options:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/dhcpc.c:200: uint8_t *end = optptr + len;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfc
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
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/dhcpc.c:201: uint8_t type = 0;
	mov	r4,#0x00
;	../../core/net/dhcpc.c:203: while(optptr < end) {
00109$:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jc	00132$
	ljmp	00111$
00132$:
;	../../core/net/dhcpc.c:204: switch(*optptr) {
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00133$
	sjmp	00101$
00133$:
	cjne	r3,#0x03,00134$
	sjmp	00102$
00134$:
	cjne	r3,#0x06,00135$
	ljmp	00103$
00135$:
	cjne	r3,#0x33,00136$
	ljmp	00106$
00136$:
	cjne	r3,#0x35,00137$
	ljmp	00104$
00137$:
	cjne	r3,#0x36,00138$
	ljmp	00105$
00138$:
	cjne	r3,#0xFF,00139$
	ljmp	00107$
00139$:
	ljmp	00108$
;	../../core/net/dhcpc.c:205: case DHCP_OPTION_SUBNET_MASK:
00101$:
;	../../core/net/dhcpc.c:206: memcpy(s.netmask.u16, optptr + 2, 4);
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_s + 0x0025)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../core/net/dhcpc.c:207: break;
	pop	ar4
	ljmp	00108$
;	../../core/net/dhcpc.c:208: case DHCP_OPTION_ROUTER:
00102$:
;	../../core/net/dhcpc.c:209: memcpy(s.default_router.u16, optptr + 2, 4);
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_s + 0x002d)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../core/net/dhcpc.c:210: break;
	pop	ar4
	ljmp	00108$
;	../../core/net/dhcpc.c:211: case DHCP_OPTION_DNS_SERVER:
00103$:
;	../../core/net/dhcpc.c:212: memcpy(s.dnsaddr.u16, optptr + 2, 4);
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#(_s + 0x0029)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../core/net/dhcpc.c:213: break;
	pop	ar4
	ljmp	00108$
;	../../core/net/dhcpc.c:214: case DHCP_OPTION_MSG_TYPE:
00104$:
;	../../core/net/dhcpc.c:215: type = *(optptr + 2);
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	mov	r4,a
;	../../core/net/dhcpc.c:216: break;
;	../../core/net/dhcpc.c:217: case DHCP_OPTION_SERVER_ID:
	sjmp	00108$
00105$:
;	../../core/net/dhcpc.c:218: memcpy(s.serverid, optptr + 2, 4);
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
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_s + 0x0019)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../core/net/dhcpc.c:219: break;
;	../../core/net/dhcpc.c:220: case DHCP_OPTION_LEASE_TIME:
	sjmp	00108$
00106$:
;	../../core/net/dhcpc.c:221: memcpy(s.lease_time, optptr + 2, 4);
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
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_s + 0x001d)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	../../core/net/dhcpc.c:222: break;
;	../../core/net/dhcpc.c:223: case DHCP_OPTION_END:
	sjmp	00108$
00107$:
;	../../core/net/dhcpc.c:224: return type;
	mov	dpl,r4
;	../../core/net/dhcpc.c:225: }
	sjmp	00112$
00108$:
;	../../core/net/dhcpc.c:227: optptr += optptr[1] + 2;
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
	mov	r5,a
	inc	r5
	inc	r5
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00109$
00111$:
;	../../core/net/dhcpc.c:229: return type;
	mov	dpl,r4
00112$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_msg'
;------------------------------------------------------------
;m                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/dhcpc.c:233: parse_msg(void)
;	-----------------------------------------
;	 function parse_msg
;	-----------------------------------------
_parse_msg:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
;	../../core/net/dhcpc.c:235: struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/dhcpc.c:237: if(m->op == DHCP_REPLY &&
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x02,00113$
	sjmp	00114$
00113$:
	ljmp	00102$
00114$:
;	../../core/net/dhcpc.c:238: memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_xid
	push	acc
	mov	a,#(_xid >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r3
	orl	a,r4
	jz	00115$
	ljmp	00102$
00115$:
;	../../core/net/dhcpc.c:239: memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
	mov	dptr,#(_s + 0x0017)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_s + 0x0014)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	../../core/net/dhcpc.c:240: memcpy(s.ipaddr.u16, m->yiaddr, 4);
	mov	r0,_bp
	inc	r0
	mov	a,#0x10
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_s + 0x0021)
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/dhcpc.c:241: return parse_options(&m->options[4], uip_datalen());
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0xEC
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_parse_options
	mov	r7,dpl
	dec	sp
	dec	sp
	mov	dpl,r7
	sjmp	00105$
00102$:
;	../../core/net/dhcpc.c:243: return 0;
	mov	dpl,#0x00
00105$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'msg_for_me'
;------------------------------------------------------------
;m                         Allocated to stack - _bp +1
;optptr                    Allocated to stack - _bp +4
;end                       Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +12
;------------------------------------------------------------
;	../../core/net/dhcpc.c:250: msg_for_me(void)
;	-----------------------------------------
;	 function msg_for_me
;	-----------------------------------------
_msg_for_me:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	../../core/net/dhcpc.c:252: struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
	mov	dptr,#_uip_appdata
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/dhcpc.c:253: uint8_t *optptr = &m->options[4];
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0xF0
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
;	../../core/net/dhcpc.c:254: uint8_t *end = (uint8_t*)uip_appdata + uip_datalen();
	mov	dptr,#_uip_len
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	../../core/net/dhcpc.c:256: if(m->op == DHCP_REPLY &&
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x02,00127$
	sjmp	00128$
00127$:
	ljmp	00110$
00128$:
;	../../core/net/dhcpc.c:257: memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#_xid
	push	acc
	mov	a,#(_xid >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcmp
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
	jz	00129$
	ljmp	00110$
00129$:
;	../../core/net/dhcpc.c:258: memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_s + 0x0017)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	dptr,#(_s + 0x0014)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x1C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00130$
	ljmp	00110$
00130$:
;	../../core/net/dhcpc.c:259: while(optptr < end) {
00106$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00110$
;	../../core/net/dhcpc.c:260: if(*optptr == DHCP_OPTION_MSG_TYPE) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x35,00104$
;	../../core/net/dhcpc.c:261: return *(optptr + 2);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	sjmp	00113$
00104$:
;	../../core/net/dhcpc.c:262: } else if (*optptr == DHCP_OPTION_END) {
	cjne	r4,#0xFF,00105$
;	../../core/net/dhcpc.c:263: return -1;
	mov	dptr,#0xFFFF
	sjmp	00113$
00105$:
;	../../core/net/dhcpc.c:265: optptr += optptr[1] + 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
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
	inc	r2
	inc	r2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00106$
00110$:
;	../../core/net/dhcpc.c:268: return -1;
	mov	dptr,#0xFFFF
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_dhcp'
;------------------------------------------------------------
;data                      Allocated to stack - _bp -5
;ev                        Allocated to registers r7 
;ticks                     Allocated to stack - _bp +1
;PT_YIELD_FLAG             Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	../../core/net/dhcpc.c:272: PT_THREAD(handle_dhcp(process_event_t ev, void *data))
;	-----------------------------------------
;	 function handle_dhcp
;	-----------------------------------------
_handle_dhcp:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r7,dpl
;	../../core/net/dhcpc.c:276: PT_BEGIN(&s.pt);
	mov	r6,#0x01
	mov	dptr,#_s
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x00,00298$
	cjne	r5,#0x00,00298$
	sjmp	00102$
00298$:
	cjne	r4,#0x1D,00299$
	cjne	r5,#0x01,00299$
	ljmp	00103$
00299$:
	cjne	r4,#0x22,00300$
	cjne	r5,#0x01,00300$
	ljmp	00112$
00300$:
	cjne	r4,#0x35,00301$
	cjne	r5,#0x01,00301$
	ljmp	00131$
00301$:
	cjne	r4,#0x3A,00302$
	cjne	r5,#0x01,00302$
	ljmp	00140$
00302$:
	cjne	r4,#0x66,00303$
	cjne	r5,#0x01,00303$
	ljmp	00163$
00303$:
	cjne	r4,#0x76,00304$
	cjne	r5,#0x01,00304$
	ljmp	00176$
00304$:
	cjne	r4,#0x7D,00305$
	cjne	r5,#0x01,00305$
	ljmp	00185$
00305$:
	ljmp	00201$
;	../../core/net/dhcpc.c:278: init:
00102$:
;	../../core/net/dhcpc.c:279: xid++;
	mov	dptr,#_xid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../core/net/dhcpc.c:280: s.state = STATE_SENDING;
	mov	dptr,#(_s + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/dhcpc.c:281: s.ticks = CLOCK_SECOND;
	mov	dptr,#(_s + 0x0010)
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/dhcpc.c:283: while(ev != tcpip_event) {
00109$:
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00306$
	sjmp	00111$
00306$:
;	../../core/net/dhcpc.c:284: tcpip_poll_udp(s.conn);
	mov	dptr,#(_s + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_tcpip_poll_udp
	pop	ar7
;	../../core/net/dhcpc.c:285: PT_YIELD(&s.pt);
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x1D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00103$:
	mov	a,r6
	jnz	00109$
	mov	dpl,#0x01
	ljmp	00202$
00111$:
;	../../core/net/dhcpc.c:287: send_discover();
	push	ar7
	lcall	_send_discover
;	../../core/net/dhcpc.c:288: etimer_set(&s.etimer, s.ticks);
	mov	dptr,#(_s + 0x0010)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	push	ar2
	push	ar3
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	lcall	_etimer_set
	dec	sp
	dec	sp
	pop	ar7
;	../../core/net/dhcpc.c:290: PT_YIELD(&s.pt);
00115$:
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00112$:
	mov	a,r6
	jnz	00116$
	mov	dpl,#0x01
	ljmp	00202$
00116$:
;	../../core/net/dhcpc.c:291: if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPOFFER) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00123$
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r5,a
	jnb	acc.1,00123$
	push	ar7
	lcall	_msg_for_me
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	cjne	r4,#0x02,00123$
	cjne	r5,#0x00,00123$
;	../../core/net/dhcpc.c:292: parse_msg();
	push	ar7
	lcall	_parse_msg
	pop	ar7
;	../../core/net/dhcpc.c:293: s.state = STATE_OFFER_RECEIVED;
	mov	dptr,#(_s + 0x0002)
	mov	a,#0x02
	movx	@dptr,a
;	../../core/net/dhcpc.c:294: goto selecting;
	sjmp	00130$
00123$:
;	../../core/net/dhcpc.c:296: } while (!etimer_expired(&s.etimer));
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	push	ar7
	lcall	_etimer_expired
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jz	00115$
;	../../core/net/dhcpc.c:298: if(s.ticks < CLOCK_SECOND * 60) {
	mov	dptr,#(_s + 0x0010)
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
	clr	c
	mov	a,r3
	subb	a,#0x1E
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jc	00315$
	ljmp	00109$
00315$:
;	../../core/net/dhcpc.c:299: s.ticks *= 2;
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#(_s + 0x0010)
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
	ljmp	00109$
;	../../core/net/dhcpc.c:303: selecting:
00130$:
;	../../core/net/dhcpc.c:304: xid++;
	mov	dptr,#_xid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../core/net/dhcpc.c:305: s.ticks = CLOCK_SECOND;
	mov	dptr,#(_s + 0x0010)
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/dhcpc.c:307: while(ev != tcpip_event) {
00137$:
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00316$
	sjmp	00139$
00316$:
;	../../core/net/dhcpc.c:308: tcpip_poll_udp(s.conn);
	mov	dptr,#(_s + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_tcpip_poll_udp
	pop	ar7
;	../../core/net/dhcpc.c:309: PT_YIELD(&s.pt);
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x35
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00131$:
	mov	a,r6
	jnz	00137$
	mov	dpl,#0x01
	ljmp	00202$
00139$:
;	../../core/net/dhcpc.c:311: send_request();
	push	ar7
	lcall	_send_request
;	../../core/net/dhcpc.c:312: etimer_set(&s.etimer, s.ticks);
	mov	dptr,#(_s + 0x0010)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	push	ar2
	push	ar3
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	lcall	_etimer_set
	dec	sp
	dec	sp
	pop	ar7
;	../../core/net/dhcpc.c:314: PT_YIELD(&s.pt);
00143$:
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x3A
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00140$:
	mov	a,r6
	jnz	00144$
	mov	dpl,#0x01
	ljmp	00202$
00144$:
;	../../core/net/dhcpc.c:315: if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00151$
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r5,a
	jnb	acc.1,00151$
	push	ar7
	lcall	_msg_for_me
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	cjne	r4,#0x05,00151$
	cjne	r5,#0x00,00151$
;	../../core/net/dhcpc.c:316: parse_msg();
	push	ar7
	lcall	_parse_msg
	pop	ar7
;	../../core/net/dhcpc.c:317: s.state = STATE_CONFIG_RECEIVED;
	mov	dptr,#(_s + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
;	../../core/net/dhcpc.c:318: goto bound;
	sjmp	00159$
00151$:
;	../../core/net/dhcpc.c:320: } while (!etimer_expired(&s.etimer));
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	push	ar7
	lcall	_etimer_expired
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jz	00143$
;	../../core/net/dhcpc.c:322: if(s.ticks <= CLOCK_SECOND * 10) {
	mov	dptr,#(_s + 0x0010)
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
	clr	c
	clr	a
	subb	a,r2
	mov	a,#0x05
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00325$
	ljmp	00102$
00325$:
;	../../core/net/dhcpc.c:323: s.ticks += CLOCK_SECOND;
	mov	a,#0x80
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_s + 0x0010)
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
;	../../core/net/dhcpc.c:327: } while(s.state != STATE_CONFIG_RECEIVED);
	mov	dptr,#(_s + 0x0002)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,00326$
	sjmp	00327$
00326$:
	ljmp	00137$
00327$:
;	../../core/net/dhcpc.c:329: bound:
00159$:
;	../../core/net/dhcpc.c:340: dhcpc_configured(&s);
	push	ar7
	mov	dptr,#_s
	mov	b,#0x00
	push	ar7
	lcall	_dhcpc_configured
;	../../core/net/dhcpc.c:348: s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
	mov	dptr,#(_s + 0x001d)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_uip_htons
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	clr	a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar5
	dec	r0
	mov	@r0,ar4
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_s + 0x001f)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_uip_htons
	mov	r5,dpl
	mov	r7,dph
	clr	a
	mov	r4,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r3,a
	mov	a,r7
	clr	c
	rrc	a
	orl	a,r4
	mov	r4,a
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r7,a
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	dptr,#(_s + 0x0010)
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	../../core/net/dhcpc.c:395: PT_END(&s.pt);
	pop	ar7
;	../../core/net/dhcpc.c:354: while(s.ticks > 0) {
00170$:
	mov	dptr,#(_s + 0x0010)
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
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz	00328$
	ljmp	00173$
00328$:
;	../../core/net/dhcpc.c:355: ticks = IMIN(s.ticks, MAX_TICKS);
	clr	c
	mov	a,r2
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0x7F
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jc	00205$
	mov	r2,#0xFF
	mov	r3,#0x7F
	mov	r4,#0x00
	mov	r5,#0x00
00205$:
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../../core/net/dhcpc.c:356: s.ticks -= ticks;
	mov	dptr,#(_s + 0x0010)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	clr	a
	mov	r5,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	dptr,#(_s + 0x0010)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/dhcpc.c:357: etimer_set(&s.etimer, ticks);
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	lcall	_etimer_set
	dec	sp
	dec	sp
	pop	ar7
;	../../core/net/dhcpc.c:358: PT_YIELD_UNTIL(&s.pt, etimer_expired(&s.etimer));
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x66
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/dhcpc.c:395: PT_END(&s.pt);
	pop	ar7
;	../../core/net/dhcpc.c:358: PT_YIELD_UNTIL(&s.pt, etimer_expired(&s.etimer));
00163$:
	mov	a,r6
	jz	00164$
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	push	ar7
	lcall	_etimer_expired
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jz	00331$
	ljmp	00170$
00331$:
00164$:
	mov	dpl,#0x01
	ljmp	00202$
;	../../core/net/dhcpc.c:362: <= MAX_TICKS32) {
00173$:
;	../../core/net/dhcpc.c:363: s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
	push	ar7
	mov	dptr,#(_s + 0x001d)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	lcall	_uip_htons
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	clr	a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar5
	dec	r0
	mov	@r0,ar4
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
	mov	dptr,#(_s + 0x001f)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r7
	lcall	_uip_htons
	mov	r5,dpl
	mov	r7,dph
	clr	a
	mov	r4,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r3,a
	mov	a,r7
	clr	c
	rrc	a
	orl	a,r4
	mov	r4,a
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r7,a
	mov	a,r3
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	dptr,#(_s + 0x0010)
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	../../core/net/dhcpc.c:370: xid++;
	mov	dptr,#_xid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../../core/net/dhcpc.c:395: PT_END(&s.pt);
	pop	ar7
;	../../core/net/dhcpc.c:372: while(ev != tcpip_event) {
00182$:
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00332$
	sjmp	00184$
00332$:
;	../../core/net/dhcpc.c:373: tcpip_poll_udp(s.conn);
	mov	dptr,#(_s + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_tcpip_poll_udp
	pop	ar7
;	../../core/net/dhcpc.c:374: PT_YIELD(&s.pt);
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x76
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00176$:
	mov	a,r6
	jnz	00182$
	mov	dpl,#0x01
	ljmp	00202$
00184$:
;	../../core/net/dhcpc.c:376: send_request();
	push	ar7
	lcall	_send_request
	pop	ar7
;	../../core/net/dhcpc.c:377: ticks = IMIN(s.ticks / 2, MAX_TICKS);
	mov	dptr,#(_s + 0x0010)
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
	clr	c
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	clr	c
	subb	a,#0xFF
	mov	a,r3
	subb	a,#0x7F
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jc	00207$
	mov	r2,#0xFF
	mov	r3,#0x7F
	mov	r4,#0x00
	mov	r5,#0x00
00207$:
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../../core/net/dhcpc.c:378: s.ticks -= ticks;
	mov	dptr,#(_s + 0x0010)
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	clr	a
	mov	r5,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	dptr,#(_s + 0x0010)
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/dhcpc.c:379: etimer_set(&s.etimer, ticks);
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	lcall	_etimer_set
	dec	sp
	dec	sp
	pop	ar7
;	../../core/net/dhcpc.c:395: PT_END(&s.pt);
	pop	ar7
;	../../core/net/dhcpc.c:381: PT_YIELD(&s.pt);
00188$:
	mov	r6,#0x00
	mov	dptr,#_s
	mov	a,#0x7D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00185$:
	mov	a,r6
	jnz	00189$
	mov	dpl,#0x01
	sjmp	00202$
00189$:
;	../../core/net/dhcpc.c:382: if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00196$
	mov	dptr,#_uip_flags
	movx	a,@dptr
	mov	r6,a
	jnb	acc.1,00196$
	push	ar7
	lcall	_msg_for_me
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	cjne	r5,#0x05,00196$
	cjne	r6,#0x00,00196$
;	../../core/net/dhcpc.c:383: parse_msg();
	push	ar7
	lcall	_parse_msg
	pop	ar7
;	../../core/net/dhcpc.c:384: goto bound;
	ljmp	00159$
00196$:
;	../../core/net/dhcpc.c:386: } while(!etimer_expired(&s.etimer));
	mov	dptr,#(_s + 0x0006)
	mov	b,#0x00
	push	ar7
	lcall	_etimer_expired
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jz	00188$
;	../../core/net/dhcpc.c:387: } while(s.ticks >= CLOCK_SECOND*3);
	mov	dptr,#(_s + 0x0010)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,#0x80
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	jc	00342$
	ljmp	00182$
00342$:
;	../../core/net/dhcpc.c:392: dhcpc_unconfigured(&s);
	mov	dptr,#_s
	mov	b,#0x00
	push	ar7
	lcall	_dhcpc_unconfigured
	pop	ar7
;	../../core/net/dhcpc.c:393: goto init;
	ljmp	00102$
;	../../core/net/dhcpc.c:395: PT_END(&s.pt);
00201$:
	mov	dptr,#_s
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
00202$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dhcpc_init'
;------------------------------------------------------------
;mac_len                   Allocated to stack - _bp -4
;mac_addr                  Allocated to registers r5 r6 r7 
;addr                      Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/dhcpc.c:399: dhcpc_init(const void *mac_addr, int mac_len)
;	-----------------------------------------
;	 function dhcpc_init
;	-----------------------------------------
_dhcpc_init:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/dhcpc.c:403: s.mac_addr = mac_addr;
	mov	dptr,#(_s + 0x0014)
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/dhcpc.c:404: s.mac_len  = mac_len;
	mov	dptr,#(_s + 0x0017)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	../../core/net/dhcpc.c:406: s.state = STATE_INITIAL;
	mov	dptr,#(_s + 0x0002)
	clr	a
	movx	@dptr,a
;	../../core/net/dhcpc.c:407: uip_ipaddr(&addr, 255,255,255,255);
	mov	a,_bp
	inc	a
	mov	r0,a
	mov	@r0,#0xFF
	mov	r7,_bp
	inc	r7
	mov	a,r7
	inc	a
	mov	r0,a
	mov	@r0,#0xFF
	mov	a,#0x02
	add	a,r7
	mov	r0,a
	mov	@r0,#0xFF
	mov	a,#0x03
	add	a,r7
	mov	r0,a
	mov	@r0,#0xFF
;	../../core/net/dhcpc.c:408: s.conn = udp_new(&addr, UIP_HTONS(DHCPC_SERVER_PORT), NULL);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	clr	a
	push	acc
	push	acc
	push	acc
	clr	a
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_udp_new
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#(_s + 0x0003)
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/dhcpc.c:409: if(s.conn != NULL) {
	mov	dptr,#(_s + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jz	00105$
;	../../core/net/dhcpc.c:410: udp_bind(s.conn, UIP_HTONS(DHCPC_CLIENT_PORT));
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	a,#0x44
	lcall	__gptrput
00105$:
;	../../core/net/dhcpc.c:412: PT_INIT(&s.pt);
	mov	dptr,#_s
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dhcpc_appcall'
;------------------------------------------------------------
;data                      Allocated to stack - _bp -5
;ev                        Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/dhcpc.c:416: dhcpc_appcall(process_event_t ev, void *data)
;	-----------------------------------------
;	 function dhcpc_appcall
;	-----------------------------------------
_dhcpc_appcall:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../../core/net/dhcpc.c:418: if(ev == tcpip_event || ev == PROCESS_EVENT_TIMER) {
	mov	dptr,#_tcpip_event
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00108$
	sjmp	00101$
00108$:
	cjne	r7,#0x88,00104$
00101$:
;	../../core/net/dhcpc.c:419: handle_dhcp(ev, data);
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
	lcall	_handle_dhcp
	dec	sp
	dec	sp
	dec	sp
00104$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dhcpc_request'
;------------------------------------------------------------
;ipaddr                    Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/dhcpc.c:424: dhcpc_request(void)
;	-----------------------------------------
;	 function dhcpc_request
;	-----------------------------------------
_dhcpc_request:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../../core/net/dhcpc.c:428: if(s.state == STATE_INITIAL) {
	mov	dptr,#(_s + 0x0002)
	movx	a,@dptr
	jnz	00106$
;	../../core/net/dhcpc.c:429: uip_ipaddr(&ipaddr, 0,0,0,0);
	mov	a,_bp
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	r7,_bp
	inc	r7
	mov	a,r7
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/dhcpc.c:430: uip_sethostaddr(&ipaddr);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_uip_hostaddr
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/dhcpc.c:431: handle_dhcp(PROCESS_EVENT_NONE, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x80
	lcall	_handle_dhcp
	dec	sp
	dec	sp
	dec	sp
00106$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_magic_cookie:
	.db #0x63	; 99	'c'
	.db #0x82	; 130
	.db #0x53	; 83	'S'
	.db #0x63	; 99	'c'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
