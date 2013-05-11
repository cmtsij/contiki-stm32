;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:30 2013
;--------------------------------------------------------
	.module uip_over_mesh
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _trickle_send
	.globl _trickle_open
	.globl _route_set_lifetime
	.globl _route_decay
	.globl _route_refresh
	.globl _route_lookup
	.globl _route_add
	.globl _route_init
	.globl _route_discovery_discover
	.globl _route_discovery_open
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _unicast_send
	.globl _unicast_open
	.globl _packetbuf_set_attr
	.globl _packetbuf_copyto
	.globl _packetbuf_copyfrom
	.globl _packetbuf_dataptr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _tcpip_input
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
	.globl _uip_over_mesh_make_announced_gateway
	.globl _uip_over_mesh_init
	.globl _uip_over_mesh_send
	.globl _uip_over_mesh_set_gateway_netif
	.globl _uip_over_mesh_set_gateway
	.globl _uip_over_mesh_set_net
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
_queued_packet:
	.ds 3
_queued_receiver:
	.ds 2
_route_discovery:
	.ds 101
_dataconn:
	.ds 18
_gateway_announce_conn:
	.ds 91
_gw_netif:
	.ds 3
_gateway:
	.ds 2
_netaddr:
	.ds 4
_netmask:
	.ds 4
_is_gateway:
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
;Allocation info for local variables in function 'recv_data'
;------------------------------------------------------------
;from                      Allocated to stack - _bp -5
;c                         Allocated to registers 
;e                         Allocated to registers r5 r6 r7 
;source                    Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +11
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:83: recv_data(struct unicast_conn *c, const rimeaddr_t *from)
;	-----------------------------------------
;	 function recv_data
;	-----------------------------------------
_recv_data:
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
	add	a,#0x04
	mov	sp,a
;	../../core/net/uip-over-mesh.c:88: uip_len = packetbuf_copyto(&uip_buf[UIP_LLH_LEN]);
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	mov	b,#0x00
	lcall	_packetbuf_copyto
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_uip_len
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/uip-over-mesh.c:90: source.u8[0] = BUF->srcipaddr.u8[2];
	mov	r1,_bp
	inc	r1
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0E
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	@r1,a
;	../../core/net/uip-over-mesh.c:91: source.u8[1] = BUF->srcipaddr.u8[3];
	mov	r7,_bp
	inc	r7
	mov	a,r7
	inc	a
	mov	r1,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0F
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	@r1,a
;	../../core/net/uip-over-mesh.c:93: e = route_lookup(&source);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_route_lookup
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:94: if(e == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../../core/net/uip-over-mesh.c:95: route_add(&source, from, 10, 0);
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	clr	a
	push	acc
	mov	a,#0x0A
	push	acc
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
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_route_add
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	sjmp	00103$
00102$:
;	../../core/net/uip-over-mesh.c:97: route_refresh(e);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_route_refresh
00103$:
;	../../core/net/uip-over-mesh.c:102: if(!uip_ipaddr_maskcmp(&BUF->srcipaddr, &netaddr, &netmask)) {
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_netmask
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	anl	ar7,a
	mov	a,r4
	anl	ar6,a
	mov	dptr,#_netaddr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_netmask
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	anl	ar2,a
	mov	a,r3
	anl	ar4,a
	mov	a,r7
	cjne	a,ar2,00106$
	mov	a,r6
	cjne	a,ar4,00106$
	mov	r3,#(_uip_aligned_buf + 0x000e)
	mov	r4,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x0C
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r2,#_netmask
	mov	r4,#(_netmask >> 8)
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	anl	ar7,a
	mov	a,r4
	anl	ar6,a
	mov	r2,#_netaddr
	mov	r4,#(_netaddr >> 8)
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r2,#_netmask
	mov	r4,#(_netmask >> 8)
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	mov	a,r7
	cjne	a,ar3,00120$
	mov	a,r6
	cjne	a,ar4,00120$
	sjmp	00107$
00120$:
00106$:
;	../../core/net/uip-over-mesh.c:103: e = route_lookup(&gateway);
	mov	dptr,#_gateway
	mov	b,#0x00
	lcall	_route_lookup
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	../../core/net/uip-over-mesh.c:104: if(e != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00107$
;	../../core/net/uip-over-mesh.c:105: route_refresh(e);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_route_refresh
00107$:
;	../../core/net/uip-over-mesh.c:113: tcpip_input();
	lcall	_tcpip_input
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_data'
;------------------------------------------------------------
;next                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:117: send_data(rimeaddr_t *next)
;	-----------------------------------------
;	 function send_data
;	-----------------------------------------
_send_data:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:122: unicast_send(&dataconn, next);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_dataconn
	mov	b,#0x00
	lcall	_unicast_send
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'new_route'
;------------------------------------------------------------
;to                        Allocated to stack - _bp -5
;c                         Allocated to registers 
;rt                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:126: new_route(struct route_discovery_conn *c, const rimeaddr_t *to)
;	-----------------------------------------
;	 function new_route
;	-----------------------------------------
_new_route:
	push	_bp
	mov	_bp,sp
;	../../core/net/uip-over-mesh.c:130: if(queued_packet) {
	mov	dptr,#_queued_packet
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
;	../../core/net/uip-over-mesh.c:133: queuebuf_to_packetbuf(queued_packet);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_to_packetbuf
;	../../core/net/uip-over-mesh.c:134: queuebuf_free(queued_packet);
	mov	dptr,#_queued_packet
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
	lcall	_queuebuf_free
;	../../core/net/uip-over-mesh.c:135: queued_packet = NULL;
	mov	dptr,#_queued_packet
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/uip-over-mesh.c:137: rt = route_lookup(&queued_receiver);
	mov	dptr,#_queued_receiver
	mov	b,#0x00
	lcall	_route_lookup
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:138: if(rt) {
	mov	a,r5
	orl	a,r6
	jz	00105$
;	../../core/net/uip-over-mesh.c:139: route_decay(rt);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_route_decay
;	../../core/net/uip-over-mesh.c:140: send_data(&queued_receiver);
	mov	dptr,#_queued_receiver
	mov	b,#0x00
	lcall	_send_data
00105$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timedout'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:146: timedout(struct route_discovery_conn *c)
;	-----------------------------------------
;	 function timedout
;	-----------------------------------------
_timedout:
;	../../core/net/uip-over-mesh.c:149: if(queued_packet) {
	mov	dptr,#_queued_packet
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
	jz	00103$
;	../../core/net/uip-over-mesh.c:151: queuebuf_free(queued_packet);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_free
;	../../core/net/uip-over-mesh.c:152: queued_packet = NULL;
	mov	dptr,#_queued_packet
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gateway_announce_recv'
;------------------------------------------------------------
;c                         Allocated to registers 
;msg                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:166: gateway_announce_recv(struct trickle_conn *c)
;	-----------------------------------------
;	 function gateway_announce_recv
;	-----------------------------------------
_gateway_announce_recv:
;	../../core/net/uip-over-mesh.c:169: msg = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:174: if(!is_gateway) {
	mov	dptr,#_is_gateway
	movx	a,@dptr
	mov	r4,a
	jnz	00103$
;	../../core/net/uip-over-mesh.c:175: uip_over_mesh_set_gateway(&msg->gateway);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_uip_over_mesh_set_gateway
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_make_announced_gateway'
;------------------------------------------------------------
;msg                       Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:181: uip_over_mesh_make_announced_gateway(void)
;	-----------------------------------------
;	 function uip_over_mesh_make_announced_gateway
;	-----------------------------------------
_uip_over_mesh_make_announced_gateway:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	../../core/net/uip-over-mesh.c:186: if(!is_gateway) {
	mov	dptr,#_is_gateway
	movx	a,@dptr
	mov	r7,a
;	../../core/net/uip-over-mesh.c:189: uip_over_mesh_set_gateway(&rimeaddr_node_addr);
	jnz	00103$
	mov	dptr,#_rimeaddr_node_addr
	mov	b,a
	lcall	_uip_over_mesh_set_gateway
;	../../core/net/uip-over-mesh.c:190: rimeaddr_copy(&(msg.gateway), &rimeaddr_node_addr);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip-over-mesh.c:191: packetbuf_copyfrom(&msg, sizeof(struct gateway_msg));
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_packetbuf_copyfrom
	dec	sp
	dec	sp
;	../../core/net/uip-over-mesh.c:192: trickle_send(&gateway_announce_conn);
	mov	dptr,#_gateway_announce_conn
	mov	b,#0x00
	lcall	_trickle_send
;	../../core/net/uip-over-mesh.c:193: is_gateway = 1;
	mov	dptr,#_is_gateway
	mov	a,#0x01
	movx	@dptr,a
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_init'
;------------------------------------------------------------
;channels                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:199: uip_over_mesh_init(uint16_t channels)
;	-----------------------------------------
;	 function uip_over_mesh_init
;	-----------------------------------------
_uip_over_mesh_init:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/uip-over-mesh.c:207: unicast_open(&dataconn, channels, &data_callbacks);
	push	ar7
	push	ar6
	mov	a,#_data_callbacks
	push	acc
	mov	a,#(_data_callbacks >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar6
	push	ar7
	mov	dptr,#_dataconn
	mov	b,#0x00
	lcall	_unicast_open
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	../../core/net/uip-over-mesh.c:209: channels + 1, &rdc);
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
;	../../core/net/uip-over-mesh.c:208: route_discovery_open(&route_discovery, ROUTE_DISCOVERY_INTERVAL,
	push	ar7
	push	ar6
	mov	a,#_rdc
	push	acc
	mov	a,#(_rdc >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar4
	push	ar5
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	mov	dptr,#_route_discovery
	mov	b,#0x00
	lcall	_route_discovery_open
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
;	../../core/net/uip-over-mesh.c:211: &trickle_call);
;	../../core/net/uip-over-mesh.c:210: trickle_open(&gateway_announce_conn, ROUTE_TRICKLE_INTERVAL, channels + 3,
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,#_trickle_call
	push	acc
	mov	a,#(_trickle_call >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	ar6
	push	ar7
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	mov	dptr,#_gateway_announce_conn
	mov	b,#0x00
	lcall	_trickle_open
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/uip-over-mesh.c:213: route_init();
	lcall	_route_init
;	../../core/net/uip-over-mesh.c:215: route_set_lifetime(30);
	mov	dptr,#0x001E
	ljmp	_route_set_lifetime
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_send'
;------------------------------------------------------------
;receiver                  Allocated to stack - _bp +1
;rt                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:219: uip_over_mesh_send(void)
;	-----------------------------------------
;	 function uip_over_mesh_send
;	-----------------------------------------
_uip_over_mesh_send:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	../../core/net/uip-over-mesh.c:233: if(uip_ipaddr_maskcmp(&BUF->destipaddr, &netaddr, &netmask)) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
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
	mov	dptr,#_netmask
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	anl	ar7,a
	mov	dptr,#_netaddr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_netmask
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
	cjne	a,ar4,00143$
	mov	a,r7
	cjne	a,ar5,00143$
	sjmp	00144$
00143$:
	ljmp	00110$
00144$:
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x10
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
	mov	r4,#_netmask
	mov	r5,#(_netmask >> 8)
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
	mov	r4,#_netaddr
	mov	r5,#(_netaddr >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#_netmask
	mov	r3,#(_netmask >> 8)
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
	cjne	a,ar4,00110$
	mov	a,r7
	cjne	a,ar5,00110$
;	../../core/net/uip-over-mesh.c:234: receiver.u8[0] = BUF->destipaddr.u8[2];
	mov	r1,_bp
	inc	r1
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x12
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	@r1,a
;	../../core/net/uip-over-mesh.c:235: receiver.u8[1] = BUF->destipaddr.u8[3];
	mov	r7,_bp
	inc	r7
	mov	a,r7
	inc	a
	mov	r1,a
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x13
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	@r1,a
	ljmp	00111$
00110$:
;	../../core/net/uip-over-mesh.c:237: if(rimeaddr_cmp(&gateway, &rimeaddr_node_addr)) {
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_gateway
	mov	b,#0x00
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00107$
;	../../core/net/uip-over-mesh.c:240: if(gw_netif != NULL) {
	mov	dptr,#_gw_netif
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
	jz	00102$
;	../../core/net/uip-over-mesh.c:241: return gw_netif->output();
	mov	a,#0x0B
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar6
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	pop	ar6
	mov	dpl,r5
	ljmp	00123$
00102$:
;	../../core/net/uip-over-mesh.c:243: return UIP_FW_DROPPED;
	mov	dpl,#0x05
	ljmp	00123$
00107$:
;	../../core/net/uip-over-mesh.c:244: } else if(rimeaddr_cmp(&gateway, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#_gateway
	mov	b,#0x00
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00104$
;	../../core/net/uip-over-mesh.c:246: return UIP_FW_OK;
	mov	dpl,#0x00
	ljmp	00123$
00104$:
;	../../core/net/uip-over-mesh.c:251: rimeaddr_copy(&receiver, &gateway);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#_gateway
	push	acc
	mov	a,#(_gateway >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
00111$:
;	../../core/net/uip-over-mesh.c:261: packetbuf_copyfrom(&uip_buf[UIP_LLH_LEN], uip_len);
	mov	dptr,#_uip_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#(_uip_aligned_buf + 0x000e)
	mov	b,#0x00
	lcall	_packetbuf_copyfrom
	dec	sp
	dec	sp
;	../../core/net/uip-over-mesh.c:266: if(BUF->proto == UIP_PROTO_TCP) {
	mov	r6,#(_uip_aligned_buf + 0x000e)
	mov	r7,#((_uip_aligned_buf + 0x000e) >> 8)
	mov	a,#0x09
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00114$
;	../../core/net/uip-over-mesh.c:267: packetbuf_set_attr(PACKETBUF_ATTR_ERELIABLE, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x17
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/uip-over-mesh.c:268: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
00114$:
;	../../core/net/uip-over-mesh.c:272: rt = route_lookup(&receiver);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_route_lookup
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:273: if(rt == NULL) {
	mov	a,r5
	orl	a,r6
	jz	00153$
	ljmp	00121$
00153$:
;	../../core/net/uip-over-mesh.c:275: if(queued_packet == NULL) {
	mov	dptr,#_queued_packet
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00118$
;	../../core/net/uip-over-mesh.c:276: queued_packet = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_queued_packet
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/net/uip-over-mesh.c:277: rimeaddr_copy(&queued_receiver, &receiver);
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_queued_receiver
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/uip-over-mesh.c:278: route_discovery_discover(&route_discovery, &receiver, ROUTE_TIMEOUT);
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_route_discovery
	mov	b,#0x00
	lcall	_route_discovery_discover
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	sjmp	00122$
00118$:
;	../../core/net/uip-over-mesh.c:279: } else if(!rimeaddr_cmp(&queued_receiver, &receiver)) {
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_queued_receiver
	mov	b,#0x00
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00122$
;	../../core/net/uip-over-mesh.c:280: route_discovery_discover(&route_discovery, &receiver, ROUTE_TIMEOUT);
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	dptr,#_route_discovery
	mov	b,#0x00
	lcall	_route_discovery_discover
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	sjmp	00122$
00121$:
;	../../core/net/uip-over-mesh.c:283: route_decay(rt);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_route_decay
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/uip-over-mesh.c:284: send_data(&rt->nexthop);
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send_data
00122$:
;	../../core/net/uip-over-mesh.c:286: return UIP_FW_OK;
	mov	dpl,#0x00
00123$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_set_gateway_netif'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:290: uip_over_mesh_set_gateway_netif(struct uip_fw_netif *n)
;	-----------------------------------------
;	 function uip_over_mesh_set_gateway_netif
;	-----------------------------------------
_uip_over_mesh_set_gateway_netif:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gw_netif
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/uip-over-mesh.c:292: gw_netif = n;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_set_gateway'
;------------------------------------------------------------
;gw                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:296: uip_over_mesh_set_gateway(rimeaddr_t *gw)
;	-----------------------------------------
;	 function uip_over_mesh_set_gateway
;	-----------------------------------------
_uip_over_mesh_set_gateway:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:298: rimeaddr_copy(&gateway, gw);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_gateway
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uip_over_mesh_set_net'
;------------------------------------------------------------
;mask                      Allocated to stack - _bp -5
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/uip-over-mesh.c:302: uip_over_mesh_set_net(uip_ipaddr_t *addr, uip_ipaddr_t *mask)
;	-----------------------------------------
;	 function uip_over_mesh_set_net
;	-----------------------------------------
_uip_over_mesh_set_net:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/uip-over-mesh.c:304: uip_ipaddr_copy(&netaddr, addr);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_netaddr
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/uip-over-mesh.c:305: uip_ipaddr_copy(&netmask, mask);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_netmask
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_data_callbacks:
	.byte _recv_data,(_recv_data >> 8)
	.byte #0x00,#0x00
_rdc:
	.byte _new_route,(_new_route >> 8)
	.byte _timedout,(_timedout >> 8)
_trickle_call:
	.byte _gateway_announce_recv,(_gateway_announce_recv >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
