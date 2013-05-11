;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:22 2013
;--------------------------------------------------------
	.module contikimac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _contikimac_driver
	.globl _contikimac_debug_print
	.globl _phase_update
	.globl _phase_wait
	.globl _phase_init
	.globl _printf
	.globl _list_item_next
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_compact
	.globl _packetbuf_set_datalen
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _packetbuf_hdr_remove
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _mac_call_sent_callback
	.globl _rtimer_set
	.globl _watchdog_periodic
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
	.globl _phase_list
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
_rt:
	.ds 7
_pt:
	.ds 2
_phase_list_memb_memb_count:
	.ds 30
_phase_list_memb_memb_mem:
	.ds 360
_received_seqnos:
	.ds 48
_cycle_start:
	.ds 2
_powercycle_sync_cycle_start_1_1:
	.ds 2
_powercycle_sync_cycle_phase_1_1:
	.ds 1
_powercycle_packet_seen_4_5:
	.ds 1
_powercycle_t0_4_5:
	.ds 2
_powercycle_count_4_5:
	.ds 1
_powercycle_start_5_13:
	.ds 2
_powercycle_silence_periods_5_13:
	.ds 1
_powercycle_periods_5_13:
	.ds 1
_input_packet_ct_1_1:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_we_are_receiving_burst:
	.ds 2
_is_receiver_awake:
	.ds 2
_contikimac_is_on:
	.ds 1
_contikimac_keep_radio_on:
	.ds 1
_we_are_sending:
	.ds 1
_radio_is_on:
	.ds 1
_phase_list_list_list:
	.ds 3
_phase_list_list:
	.ds 3
_phase_list_memb:
	.ds 10
_phase_list::
	.ds 6
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
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:275: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../core/net/mac/contikimac.c:277: if(contikimac_is_on && radio_is_on == 0) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../../core/net/mac/contikimac.c:278: radio_is_on = 1;
	mov	dptr,#_radio_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:279: NETSTACK_RADIO.on();
	mov	dptr,#(_cc2430_rf_driver + 0x0010)
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
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:284: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	../../core/net/mac/contikimac.c:286: if(contikimac_is_on && radio_is_on != 0 &&
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00105$
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00105$
;	../../core/net/mac/contikimac.c:287: contikimac_keep_radio_on == 0) {
	mov	dptr,#_contikimac_keep_radio_on
	movx	a,@dptr
	mov	r7,a
	jnz	00105$
;	../../core/net/mac/contikimac.c:288: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:289: NETSTACK_RADIO.off();
	mov	dptr,#(_cc2430_rf_driver + 0x0012)
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
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_powercycle'
;------------------------------------------------------------
;time                      Allocated to stack - _bp -4
;t                         Allocated to stack - _bp +1
;r                         Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:296: schedule_powercycle(struct rtimer *t, rtimer_clock_t time)
;	-----------------------------------------
;	 function schedule_powercycle
;	-----------------------------------------
_schedule_powercycle:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/mac/contikimac.c:300: if(contikimac_is_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r4,a
	jnz	00115$
	ljmp	00107$
00115$:
;	../../core/net/mac/contikimac.c:302: if(RTIMER_CLOCK_LT(RTIMER_TIME(t) + time, RTIMER_NOW() + 2)) {
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
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,_T1CNTL
	inc	r0
	mov	@r0,#0x00
	mov	r6,_T1CNTH
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	jnb	acc.7,00102$
;	../../core/net/mac/contikimac.c:303: time = RTIMER_NOW() - RTIMER_TIME(t) + 2;
	mov	r2,_T1CNTL
	mov	r7,#0x00
	mov	r5,_T1CNTH
	mov	ar6,r5
	clr	a
	mov	r5,a
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r2,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
;	../../core/net/mac/contikimac.c:309: printf("schedule_powercycle: could not set rtimer\n");
;	../../core/net/mac/contikimac.c:303: time = RTIMER_NOW() - RTIMER_TIME(t) + 2;
00102$:
;	../../core/net/mac/contikimac.c:307: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r2,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	../../core/net/mac/contikimac.c:306: r = rtimer_set(t, RTIMER_TIME(t) + time, 1,
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	r4,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar2
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rtimer_set
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../../core/net/mac/contikimac.c:308: if(r != RTIMER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00107$
;	../../core/net/mac/contikimac.c:309: printf("schedule_powercycle: could not set rtimer\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_powercycle_fixed'
;------------------------------------------------------------
;fixed_time                Allocated to stack - _bp -4
;t                         Allocated to registers r5 r6 r7 
;r                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:315: schedule_powercycle_fixed(struct rtimer *t, rtimer_clock_t fixed_time)
;	-----------------------------------------
;	 function schedule_powercycle_fixed
;	-----------------------------------------
_schedule_powercycle_fixed:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/contikimac.c:319: if(contikimac_is_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r4,a
	jnz	00115$
	ljmp	00107$
00115$:
;	../../core/net/mac/contikimac.c:321: if(RTIMER_CLOCK_LT(fixed_time, RTIMER_NOW() + 1)) {
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00116$
	inc	r4
00116$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.7,00102$
;	../../core/net/mac/contikimac.c:322: fixed_time = RTIMER_NOW() + 1;
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_T1CNTL
	mov	r4,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	mov	r2,a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
;	../../core/net/mac/contikimac.c:328: printf("schedule_powercycle: could not set rtimer\n");
	pop	ar7
	pop	ar6
	pop	ar5
;	../../core/net/mac/contikimac.c:322: fixed_time = RTIMER_NOW() + 1;
00102$:
;	../../core/net/mac/contikimac.c:326: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r3,#_powercycle
	mov	r4,#(_powercycle >> 8)
;	../../core/net/mac/contikimac.c:325: r = rtimer_set(t, fixed_time, 1,
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
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
	lcall	_rtimer_set
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../../core/net/mac/contikimac.c:327: if(r != RTIMER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00107$
;	../../core/net/mac/contikimac.c:328: printf("schedule_powercycle: could not set rtimer\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00107$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_off'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:334: powercycle_turn_radio_off(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_off
;	-----------------------------------------
_powercycle_turn_radio_off:
;	../../core/net/mac/contikimac.c:340: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
;	../../core/net/mac/contikimac.c:341: off();
	ljmp	_off
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle_turn_radio_on'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:351: powercycle_turn_radio_on(void)
;	-----------------------------------------
;	 function powercycle_turn_radio_on
;	-----------------------------------------
_powercycle_turn_radio_on:
;	../../core/net/mac/contikimac.c:353: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
;	../../core/net/mac/contikimac.c:354: on();
	ljmp	_on
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'powercycle'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;t                         Allocated to stack - _bp +1
;PT_YIELD_FLAG             Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +4
;sync_cycle_start          Allocated with name '_powercycle_sync_cycle_start_1_1'
;sync_cycle_phase          Allocated with name '_powercycle_sync_cycle_phase_1_1'
;packet_seen               Allocated with name '_powercycle_packet_seen_4_5'
;t0                        Allocated with name '_powercycle_t0_4_5'
;count                     Allocated with name '_powercycle_count_4_5'
;start                     Allocated with name '_powercycle_start_5_13'
;silence_periods           Allocated with name '_powercycle_silence_periods_5_13'
;periods                   Allocated with name '_powercycle_periods_5_13'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:359: powercycle(struct rtimer *t, void *ptr)
;	-----------------------------------------
;	 function powercycle
;	-----------------------------------------
_powercycle:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../core/net/mac/contikimac.c:366: PT_BEGIN(&pt);
	mov	r4,#0x01
	mov	dptr,#_pt
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x00,00225$
	cjne	r3,#0x00,00225$
	sjmp	00101$
00225$:
	cjne	r2,#0x9F,00226$
	cjne	r3,#0x01,00226$
	ljmp	00110$
00226$:
	cjne	r2,#0xD1,00227$
	cjne	r3,#0x01,00227$
	ljmp	00134$
00227$:
	cjne	r2,#0xEC,00228$
	cjne	r3,#0x01,00228$
	ljmp	00153$
00228$:
	ljmp	00164$
00101$:
;	../../core/net/mac/contikimac.c:369: sync_cycle_start = RTIMER_NOW();
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
	mov	dptr,#_powercycle_sync_cycle_start_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:497: PT_END(&pt);
;	../../core/net/mac/contikimac.c:374: while(1) {
00162$:
;	../../core/net/mac/contikimac.c:381: if (sync_cycle_phase++ == NETSTACK_RDC_CHANNEL_CHECK_RATE) {
	mov	dptr,#_powercycle_sync_cycle_phase_1_1
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_powercycle_sync_cycle_phase_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	cjne	r3,#0x08,00103$
;	../../core/net/mac/contikimac.c:382: sync_cycle_phase = 0;
	mov	dptr,#_powercycle_sync_cycle_phase_1_1
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:383: sync_cycle_start += RTIMER_ARCH_SECOND;
	mov	dptr,#_powercycle_sync_cycle_start_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_powercycle_sync_cycle_start_1_1
	mov	a,#0x09
	add	a,r2
	movx	@dptr,a
	mov	a,#0x3D
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:384: cycle_start = sync_cycle_start;
	mov	dptr,#_powercycle_sync_cycle_start_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_cycle_start
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	00104$
00103$:
;	../../core/net/mac/contikimac.c:387: cycle_start = sync_cycle_start + ((unsigned long)(sync_cycle_phase*RTIMER_ARCH_SECOND))/NETSTACK_RDC_CHANNEL_CHECK_RATE;
	mov	dptr,#_powercycle_sync_cycle_phase_1_1
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	dptr,#0x3D09
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	mov	a,r3
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1F
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xE0
	orl	a,@r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,r7
	swap	a
	rl	a
	xch	a,@r0
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0x1F
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	inc	r0
	mov	@r0,a
	mov	dptr,#_powercycle_sync_cycle_start_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r3,a
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
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	mov	dptr,#_cycle_start
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:497: PT_END(&pt);
;	../../core/net/mac/contikimac.c:387: cycle_start = sync_cycle_start + ((unsigned long)(sync_cycle_phase*RTIMER_ARCH_SECOND))/NETSTACK_RDC_CHANNEL_CHECK_RATE;
00104$:
;	../../core/net/mac/contikimac.c:396: packet_seen = 0;
	mov	dptr,#_powercycle_packet_seen_4_5
;	../../core/net/mac/contikimac.c:398: for(count = 0; count < CCA_COUNT_MAX; ++count) {
	clr	a
	movx	@dptr,a
	mov	dptr,#_powercycle_count_4_5
	movx	@dptr,a
00116$:
	mov	dptr,#_powercycle_count_4_5
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x02,00231$
00231$:
	jc	00232$
	ljmp	00119$
00232$:
;	../../core/net/mac/contikimac.c:399: t0 = RTIMER_NOW();
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
	mov	dptr,#_powercycle_t0_4_5
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:400: if(we_are_sending == 0 && we_are_receiving_burst == 0) {
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jnz	00108$
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00108$
;	../../core/net/mac/contikimac.c:401: powercycle_turn_radio_on();
	lcall	_powercycle_turn_radio_on
;	../../core/net/mac/contikimac.c:408: if(NETSTACK_RADIO.channel_clear() == 0) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	__sdcc_call_dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r2
	orl	a,r3
	jnz	00106$
;	../../core/net/mac/contikimac.c:409: packet_seen = 1;
	mov	dptr,#_powercycle_packet_seen_4_5
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:410: break;
	sjmp	00119$
00106$:
;	../../core/net/mac/contikimac.c:412: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
00108$:
;	../../core/net/mac/contikimac.c:414: schedule_powercycle_fixed(t, RTIMER_NOW() + CCA_SLEEP_TIME);
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
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle_fixed
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:415: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0x9F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00110$:
	mov	a,r4
	jnz	00114$
	mov	dpl,#0x01
	ljmp	00165$
00114$:
;	../../core/net/mac/contikimac.c:398: for(count = 0; count < CCA_COUNT_MAX; ++count) {
	mov	dptr,#_powercycle_count_4_5
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00116$
00119$:
;	../../core/net/mac/contikimac.c:418: if(packet_seen) {
	mov	dptr,#_powercycle_packet_seen_4_5
	movx	a,@dptr
	mov	r7,a
	jnz	00238$
	ljmp	00152$
00238$:
;	../../core/net/mac/contikimac.c:421: start = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	mov	r3,a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_powercycle_start_5_13
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:423: periods = silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_13
	clr	a
	movx	@dptr,a
	mov	dptr,#_powercycle_periods_5_13
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:424: while(we_are_sending == 0 && radio_is_on &&
00142$:
	mov	dptr,#_we_are_sending
	movx	a,@dptr
	mov	r7,a
	jz	00239$
	ljmp	00144$
00239$:
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00240$
	ljmp	00144$
00240$:
;	../../core/net/mac/contikimac.c:425: RTIMER_CLOCK_LT(RTIMER_NOW(),
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_powercycle_start_5_13
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xC3
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	jb	acc.7,00241$
	ljmp	00144$
00241$:
;	../../core/net/mac/contikimac.c:437: if(NETSTACK_RADIO.channel_clear()) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00121$
;	../../core/net/mac/contikimac.c:438: ++silence_periods;
	mov	dptr,#_powercycle_silence_periods_5_13
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00122$
00121$:
;	../../core/net/mac/contikimac.c:440: silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_13
	clr	a
	movx	@dptr,a
00122$:
;	../../core/net/mac/contikimac.c:444: ++periods;
	mov	dptr,#_powercycle_periods_5_13
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:446: if(NETSTACK_RADIO.receiving_packet()) {
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00124$
;	../../core/net/mac/contikimac.c:447: silence_periods = 0;
	mov	dptr,#_powercycle_silence_periods_5_13
	clr	a
	movx	@dptr,a
00124$:
;	../../core/net/mac/contikimac.c:449: if(silence_periods > MAX_SILENCE_PERIODS) {
	mov	dptr,#_powercycle_silence_periods_5_13
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jnc	00129$
;	../../core/net/mac/contikimac.c:450: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
;	../../core/net/mac/contikimac.c:451: break;
	ljmp	00144$
;	../../core/net/mac/contikimac.c:453: if(WITH_FAST_SLEEP &&
00129$:
;	../../core/net/mac/contikimac.c:454: periods > MAX_NONACTIVITY_PERIODS &&
	mov	dptr,#_powercycle_periods_5_13
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0A
	jnc	00128$
;	../../core/net/mac/contikimac.c:455: !(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00128$
;	../../core/net/mac/contikimac.c:456: NETSTACK_RADIO.pending_packet())) {
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00128$
;	../../core/net/mac/contikimac.c:457: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
;	../../core/net/mac/contikimac.c:458: break;
	sjmp	00144$
00128$:
;	../../core/net/mac/contikimac.c:460: if(NETSTACK_RADIO.pending_packet()) {
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00144$
;	../../core/net/mac/contikimac.c:464: schedule_powercycle(t, CCA_CHECK_TIME + CCA_SLEEP_TIME);
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:465: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0xD1
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00134$:
	mov	a,r4
	jz	00254$
	ljmp	00142$
00254$:
	mov	dpl,#0x01
	ljmp	00165$
00144$:
;	../../core/net/mac/contikimac.c:467: if(radio_is_on) {
	mov	dptr,#_radio_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00152$
;	../../core/net/mac/contikimac.c:468: if(!(NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jnz	00148$
;	../../core/net/mac/contikimac.c:469: NETSTACK_RADIO.pending_packet()) ||
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
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
	mov	r7,dph
	mov	a,r6
	orl	a,r7
	jz	00145$
00148$:
;	../../core/net/mac/contikimac.c:470: !RTIMER_CLOCK_LT(RTIMER_NOW(),
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_powercycle_start_5_13
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xC3
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	jb	acc.7,00152$
00145$:
;	../../core/net/mac/contikimac.c:472: powercycle_turn_radio_off();
	lcall	_powercycle_turn_radio_off
00152$:
;	../../core/net/mac/contikimac.c:477: if(RTIMER_CLOCK_LT(RTIMER_NOW() - cycle_start, CYCLE_TIME - CHECK_TIME * 4)) {
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar5,r3
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#_cycle_start
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	a,r6
	add	a,#0x9F
	mov	r6,a
	mov	a,r7
	addc	a,#0xF8
	mov	r7,a
	jb	acc.7,00261$
	ljmp	00162$
00261$:
;	../../core/net/mac/contikimac.c:491: schedule_powercycle_fixed(t, CYCLE_TIME + cycle_start);
	mov	dptr,#_cycle_start
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xA1
	add	a,r6
	mov	r6,a
	mov	a,#0x07
	addc	a,r7
	mov	r7,a
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_schedule_powercycle_fixed
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:492: PT_YIELD(&pt);
	mov	r4,#0x00
	mov	dptr,#_pt
	mov	a,#0xEC
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00153$:
	mov	a,r4
	jz	00262$
	ljmp	00162$
00262$:
	mov	dpl,#0x01
;	../../core/net/mac/contikimac.c:497: PT_END(&pt);
	sjmp	00165$
00164$:
	mov	dptr,#_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
00165$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'broadcast_rate_drop'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:501: broadcast_rate_drop(void)
;	-----------------------------------------
;	 function broadcast_rate_drop
;	-----------------------------------------
_broadcast_rate_drop:
;	../../core/net/mac/contikimac.c:517: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;mac_callback_ptr          Allocated to stack - _bp -5
;buf_list                  Allocated to stack - _bp -8
;mac_callback              Allocated to registers r6 r7 
;t0                        Allocated to stack - _bp +1
;encounter_time            Allocated to stack - _bp +3
;strobes                   Allocated to stack - _bp +5
;got_strobe_ack            Allocated to stack - _bp +7
;hdrlen                    Allocated to stack - _bp +8
;len                       Allocated to registers r6 r7 
;is_broadcast              Allocated to stack - _bp +10
;is_reliable               Allocated to registers 
;is_known_receiver         Allocated to stack - _bp +11
;collisions                Allocated to stack - _bp +12
;transmit_len              Allocated to registers r4 r5 
;ret                       Allocated to registers r3 r2 
;contikimac_was_on         Allocated to registers r3 
;seqno                     Allocated to stack - _bp +13
;chdr                      Allocated to registers r2 r6 r7 
;ptr                       Allocated to stack - _bp +14
;i                         Allocated to stack - _bp +17
;wt                        Allocated to stack - _bp +19
;txtime                    Allocated to stack - _bp +21
;ret                       Allocated to registers 
;ackbuf                    Allocated to stack - _bp +23
;sloc0                     Allocated to stack - _bp +26
;sloc1                     Allocated to stack - _bp +28
;sloc2                     Allocated to stack - _bp +30
;sloc3                     Allocated to stack - _bp +32
;sloc4                     Allocated to stack - _bp +33
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:522: send_packet(mac_callback_t mac_callback, void *mac_callback_ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x22
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/contikimac.c:525: rtimer_clock_t encounter_time = 0;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/net/mac/contikimac.c:529: uint8_t is_broadcast = 0;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/contikimac.c:531: uint8_t is_known_receiver = 0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/contikimac.c:542: if (!contikimac_is_on && !contikimac_keep_radio_on) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r5,a
	jnz	00102$
	mov	dptr,#_contikimac_keep_radio_on
	movx	a,@dptr
	mov	r5,a
	jnz	00102$
;	../../core/net/mac/contikimac.c:544: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00102$:
;	../../core/net/mac/contikimac.c:547: if(packetbuf_totlen() == 0) {
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00105$
;	../../core/net/mac/contikimac.c:549: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00105$:
;	../../core/net/mac/contikimac.c:552: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &rimeaddr_node_addr);
	push	ar6
	push	ar7
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
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:553: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	push	ar6
	lcall	_packetbuf_addr
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	pop	ar6
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00109$
;	../../core/net/mac/contikimac.c:554: is_broadcast = 1;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x01
;	../../core/net/mac/contikimac.c:557: if(broadcast_rate_drop()) {
	push	ar7
	push	ar6
	lcall	_broadcast_rate_drop
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00109$
;	../../core/net/mac/contikimac.c:558: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00109$:
;	../../core/net/mac/contikimac.c:577: is_reliable = packetbuf_attr(PACKETBUF_ATTR_RELIABLE) ||
	mov	dpl,#0x0C
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00185$
;	../../core/net/mac/contikimac.c:578: packetbuf_attr(PACKETBUF_ATTR_ERELIABLE);
	mov	dpl,#0x17
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	pop	ar6
	pop	ar7
00185$:
;	../../core/net/mac/contikimac.c:580: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	push	ar7
	push	ar6
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:583: hdrlen = packetbuf_totlen();
	lcall	_packetbuf_totlen
	mov	r4,dpl
	mov	r5,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../../core/net/mac/contikimac.c:584: if(packetbuf_hdralloc(sizeof(struct hdr)) == 0) {
	mov	dptr,#0x0002
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00111$
;	../../core/net/mac/contikimac.c:587: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00111$:
;	../../core/net/mac/contikimac.c:589: chdr = packetbuf_hdrptr();
	push	ar6
	push	ar7
	lcall	_packetbuf_hdrptr
;	../../core/net/mac/contikimac.c:590: chdr->id = CONTIKIMAC_ID;
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	lcall	__gptrput
;	../../core/net/mac/contikimac.c:591: chdr->len = hdrlen;
	inc	r2
	cjne	r2,#0x00,00285$
	inc	r6
00285$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	../../core/net/mac/contikimac.c:594: hdrlen = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
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
	mov	r7,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:595: if(hdrlen < 0) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	r0
	mov	a,@r0
	pop	ar7
	pop	ar6
	jnb	acc.7,00113$
;	../../core/net/mac/contikimac.c:598: packetbuf_hdr_remove(sizeof(struct hdr));
	mov	dptr,#0x0002
	lcall	_packetbuf_hdr_remove
;	../../core/net/mac/contikimac.c:599: return MAC_TX_ERR_FATAL;
	mov	dptr,#0x0005
	ljmp	00181$
00113$:
;	../../core/net/mac/contikimac.c:601: hdrlen += sizeof(struct hdr);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/mac/contikimac.c:615: transmit_len = packetbuf_totlen();
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:616: if(transmit_len < SHORTEST_PACKET_SIZE) {
	clr	c
	mov	a,r4
	subb	a,#0x2B
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	../../core/net/mac/contikimac.c:619: ptr = packetbuf_dataptr();
	push	ar6
	push	ar7
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:620: memset(ptr + packetbuf_datalen(), 0, SHORTEST_PACKET_SIZE - packetbuf_totlen());
	lcall	_packetbuf_totlen
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x2B
	clr	c
	subb	a,r6
	mov	r5,a
	clr	a
	subb	a,r7
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_datalen
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:623: transmit_len = SHORTEST_PACKET_SIZE;
	mov	r4,#0x2B
	mov	r5,#0x00
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar7
	pop	ar6
;	../../core/net/mac/contikimac.c:623: transmit_len = SHORTEST_PACKET_SIZE;
00115$:
;	../../core/net/mac/contikimac.c:627: packetbuf_compact();
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_compact
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:629: NETSTACK_RADIO.prepare(packetbuf_hdrptr(), transmit_len);
	mov	dptr,#(_cc2430_rf_driver + 0x0002)
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
	push	ar5
	push	ar4
	lcall	_packetbuf_hdrptr
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#00289$
	push	acc
	mov	a,#(00289$ >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	ret
00289$:
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:632: packetbuf_hdr_remove(hdrlen);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_packetbuf_hdr_remove
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:634: if(!is_broadcast && !is_receiver_awake) {
	pop	ar7
	pop	ar6
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jz	00290$
	ljmp	00121$
00290$:
	mov	dptr,#_is_receiver_awake
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00291$
	ljmp	00121$
00291$:
;	../../core/net/mac/contikimac.c:636: ret = phase_wait(&phase_list, packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
	push	ar4
	push	ar5
	mov	dpl,#0x19
	push	ar7
	push	ar6
	push	ar4
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
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
	push	ar6
	push	ar7
	mov	a,#0xD0
	push	acc
	clr	a
	push	acc
	mov	a,#0xA1
	push	acc
	mov	a,#0x07
	push	acc
	push	ar2
	push	ar3
	push	ar5
	mov	dptr,#_phase_list
	mov	b,#0x00
	lcall	_phase_wait
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
	pop	ar4
	pop	ar5
	mov	ar3,r7
	mov	r2,#0x00
;	../../core/net/mac/contikimac.c:639: if(ret == PHASE_DEFERRED) {
	cjne	r3,#0x02,00292$
	cjne	r2,#0x00,00292$
	sjmp	00293$
00292$:
	pop	ar5
	pop	ar4
	sjmp	00117$
00293$:
	pop	ar5
	pop	ar4
;	../../core/net/mac/contikimac.c:640: return MAC_TX_DEFERRED;
	mov	dptr,#0x0003
	ljmp	00181$
00117$:
;	../../core/net/mac/contikimac.c:642: if(ret != PHASE_UNKNOWN) {
	mov	a,r3
	orl	a,r2
	jz	00121$
;	../../core/net/mac/contikimac.c:643: is_known_receiver = 1;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x01
00121$:
;	../../core/net/mac/contikimac.c:652: we_are_sending = 1;
	mov	dptr,#_we_are_sending
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:659: if(NETSTACK_RADIO.receiving_packet() || NETSTACK_RADIO.pending_packet()) {
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
	jnz	00123$
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
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
	jz	00124$
00123$:
;	../../core/net/mac/contikimac.c:660: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:663: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00124$:
;	../../core/net/mac/contikimac.c:668: off();
	push	ar5
	push	ar4
	lcall	_off
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:674: collisions = 0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/contikimac.c:676: got_strobe_ack = 0;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/contikimac.c:681: contikimac_was_on = contikimac_is_on;
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r3,a
;	../../core/net/mac/contikimac.c:682: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:687: if(is_receiver_awake == 0) {
	mov	dptr,#_is_receiver_awake
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r2
	jz	00299$
	ljmp	00139$
00299$:
;	../../core/net/mac/contikimac.c:689: for(i = 0; i < CCA_COUNT_MAX_TX; ++i) {
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00134$:
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x06
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	00300$
	ljmp	00139$
00300$:
;	../../core/net/mac/contikimac.c:690: t0 = RTIMER_NOW();
	push	ar3
	mov	r3,_T1CNTL
	mov	r6,#0x00
	mov	r2,_T1CNTH
	mov	ar7,r2
	clr	a
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
;	../../core/net/mac/contikimac.c:691: on();
	push	ar5
	push	ar4
	push	ar3
	lcall	_on
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:693: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_CHECK_TIME)) { }
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar3
;	../../core/net/mac/contikimac.c:693: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_CHECK_TIME)) { }
00126$:
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00126$
;	../../core/net/mac/contikimac.c:695: if(NETSTACK_RADIO.channel_clear() == 0) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00130$
;	../../core/net/mac/contikimac.c:696: collisions++;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x01
;	../../core/net/mac/contikimac.c:697: off();
	push	ar5
	push	ar4
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:698: break;
	sjmp	00139$
00130$:
;	../../core/net/mac/contikimac.c:700: off();
	push	ar3
	push	ar5
	push	ar4
	push	ar3
	lcall	_off
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:701: t0 = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:702: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_SLEEP_TIME)) { }
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar3
;	../../core/net/mac/contikimac.c:702: while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_SLEEP_TIME)) { }
00131$:
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00131$
;	../../core/net/mac/contikimac.c:689: for(i = 0; i < CCA_COUNT_MAX_TX; ++i) {
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00305$
	inc	r0
	inc	@r0
00305$:
	ljmp	00134$
00139$:
;	../../core/net/mac/contikimac.c:706: if(collisions > 0) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	jz	00141$
;	../../core/net/mac/contikimac.c:707: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:708: off();
	push	ar3
	lcall	_off
	pop	ar3
;	../../core/net/mac/contikimac.c:710: contikimac_is_on = contikimac_was_on;
	mov	dptr,#_contikimac_is_on
	mov	a,r3
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:711: return MAC_TX_COLLISION;
	mov	dptr,#0x0001
	ljmp	00181$
00141$:
;	../../core/net/mac/contikimac.c:716: if(!is_broadcast) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jnz	00143$
;	../../core/net/mac/contikimac.c:719: on();
	push	ar5
	push	ar4
	push	ar3
	lcall	_on
	pop	ar3
	pop	ar4
	pop	ar5
00143$:
;	../../core/net/mac/contikimac.c:723: watchdog_periodic();
	push	ar3
	push	ar5
	push	ar4
	push	ar3
	lcall	_watchdog_periodic
	pop	ar3
;	../../core/net/mac/contikimac.c:724: t0 = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:725: seqno = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
	mov	dpl,#0x0A
	push	ar3
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar6
;	../../core/net/mac/contikimac.c:726: for(strobes = 0, collisions = 0;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,#0xC1
	add	a,@r0
	mov	@r1,a
	mov	a,#0x07
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	mov	a,#0x01
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	a,_bp
	add	a,#0x17
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar3
;	../../core/net/mac/contikimac.c:726: for(strobes = 0, collisions = 0;
00165$:
;	../../core/net/mac/contikimac.c:727: got_strobe_ack == 0 && collisions == 0 &&
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	jz	00308$
	ljmp	00168$
00308$:
;	../../core/net/mac/contikimac.c:728: RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + STROBE_TIME); strobes++) {
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00309$
	ljmp	00168$
00309$:
;	../../core/net/mac/contikimac.c:730: watchdog_periodic();
	push	ar5
	push	ar4
	push	ar3
	lcall	_watchdog_periodic
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:732: if((is_receiver_awake || is_known_receiver) && !RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + MAX_PHASE_STROBE_TIME)) {
	mov	dptr,#_is_receiver_awake
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00147$
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	jz	00145$
00147$:
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00312$
	ljmp	00168$
00312$:
;	../../core/net/mac/contikimac.c:734: break;
00145$:
;	../../core/net/mac/contikimac.c:745: txtime = RTIMER_NOW();
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:746: ret = NETSTACK_RADIO.transmit(transmit_len);
	mov	dptr,#(_cc2430_rf_driver + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	a,#00313$
	push	acc
	mov	a,#(00313$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	ret
00313$:
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:765: wt = RTIMER_NOW();
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:766: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar3
;	../../core/net/mac/contikimac.c:766: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
00148$:
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00148$
;	../../core/net/mac/contikimac.c:768: if(!is_broadcast && (NETSTACK_RADIO.receiving_packet() ||
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jz	00315$
	ljmp	00167$
00315$:
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
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00158$
;	../../core/net/mac/contikimac.c:769: NETSTACK_RADIO.pending_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00158$
;	../../core/net/mac/contikimac.c:770: NETSTACK_RADIO.channel_clear() == 0)) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	a,r7
	jz	00321$
	ljmp	00167$
00321$:
00158$:
;	../../core/net/mac/contikimac.c:772: wt = RTIMER_NOW();
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/contikimac.c:773: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r1,a
	mov	a,#0x0A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../../core/net/mac/contikimac.c:840: return ret;
	pop	ar3
;	../../core/net/mac/contikimac.c:773: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
00151$:
	push	ar3
	mov	r6,_T1CNTL
	mov	r7,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	mov	r2,a
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	pop	ar3
	jb	acc.7,00151$
;	../../core/net/mac/contikimac.c:775: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
	push	ar3
	mov	dptr,#(_cc2430_rf_driver + 0x0008)
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar3
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#00323$
	push	acc
	mov	a,#(00323$ >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	ret
00323$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar5
;	../../core/net/mac/contikimac.c:776: if(len == ACK_LEN && seqno == ackbuf[ACK_LEN-1]) {
	cjne	r6,#0x03,00324$
	cjne	r7,#0x00,00324$
	sjmp	00325$
00324$:
	pop	ar3
	sjmp	00155$
00325$:
	pop	ar3
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r1,a
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	cjne	a,ar7,00155$
;	../../core/net/mac/contikimac.c:777: got_strobe_ack = 1;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x01
;	../../core/net/mac/contikimac.c:778: encounter_time = txtime;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../core/net/mac/contikimac.c:779: break;
	sjmp	00168$
00155$:
;	../../core/net/mac/contikimac.c:782: collisions++;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x1a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
00167$:
;	../../core/net/mac/contikimac.c:728: RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + STROBE_TIME); strobes++) {
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00328$
	inc	r0
	inc	@r0
00328$:
	ljmp	00165$
00168$:
;	../../core/net/mac/contikimac.c:789: off();
	push	ar3
	lcall	_off
	pop	ar3
;	../../core/net/mac/contikimac.c:811: contikimac_is_on = contikimac_was_on;
	mov	dptr,#_contikimac_is_on
	mov	a,r3
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:812: we_are_sending = 0;
	mov	dptr,#_we_are_sending
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:817: if(collisions > 0) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	jz	00174$
;	../../core/net/mac/contikimac.c:818: ret = MAC_TX_COLLISION;
	mov	r3,#0x01
	mov	r2,#0x00
	sjmp	00188$
00174$:
;	../../core/net/mac/contikimac.c:819: } else if(!is_broadcast && !got_strobe_ack) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jnz	00170$
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
;	../../core/net/mac/contikimac.c:820: ret = MAC_TX_NOACK;
	jnz	00170$
	mov	r3,#0x02
	mov	r2,a
	sjmp	00188$
00170$:
;	../../core/net/mac/contikimac.c:822: ret = MAC_TX_OK;
	mov	r3,#0x00
	mov	r2,#0x00
;	../../core/net/mac/contikimac.c:827: if(is_known_receiver && got_strobe_ack) {
00188$:
;	../../core/net/mac/contikimac.c:832: if(!is_broadcast) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jnz	00180$
;	../../core/net/mac/contikimac.c:833: if(collisions == 0 && is_receiver_awake == 0) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	a,@r0
	jnz	00180$
	mov	dptr,#_is_receiver_awake
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00180$
;	../../core/net/mac/contikimac.c:834: phase_update(&phase_list, packetbuf_addr(PACKETBUF_ADDR_RECEIVER), encounter_time,
	mov	dpl,#0x19
	push	ar3
	push	ar2
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	push	ar3
	push	ar2
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_phase_list
	mov	b,#0x00
	lcall	_phase_update
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
00180$:
;	../../core/net/mac/contikimac.c:840: return ret;
	mov	dpl,r3
	mov	dph,r2
00181$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;sent                      Allocated to registers r6 r7 
;ret                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:844: qsend_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function qsend_packet
;	-----------------------------------------
_qsend_packet:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/contikimac.c:846: int ret = send_packet(sent, ptr, NULL);
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
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
	mov	dpl,r6
	mov	dph,r7
	lcall	_send_packet
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:847: if(ret != MAC_TX_DEFERRED) {
	cjne	r4,#0x03,00107$
	cjne	r5,#0x00,00107$
	sjmp	00103$
00107$:
;	../../core/net/mac/contikimac.c:848: mac_call_sent_callback(sent, ptr, ret, 1);
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
	mov	sp,a
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'qsend_list'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;buf_list                  Allocated to stack - _bp -8
;sent                      Allocated to stack - _bp +1
;curr                      Allocated to stack - _bp +3
;next                      Allocated to registers r2 r6 r7 
;ret                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:853: qsend_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function qsend_list
;	-----------------------------------------
_qsend_list:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/mac/contikimac.c:855: struct rdc_buf_list *curr = buf_list;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../core/net/mac/contikimac.c:858: if(curr == NULL) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	../../core/net/mac/contikimac.c:859: return;
	ljmp	00117$
00102$:
;	../../core/net/mac/contikimac.c:862: if(we_are_receiving_burst) {
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r2
	jz	00104$
;	../../core/net/mac/contikimac.c:864: queuebuf_to_packetbuf(curr->buf);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_to_packetbuf
;	../../core/net/mac/contikimac.c:866: mac_call_sent_callback(sent, ptr, MAC_TX_COLLISION, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/contikimac.c:867: return;
	ljmp	00117$
00104$:
;	../../core/net/mac/contikimac.c:870: is_receiver_awake = 0;
	mov	dptr,#_is_receiver_awake
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:871: do { /* A loop sending a burst of packets from buf_list */
00114$:
;	../../core/net/mac/contikimac.c:872: next = list_item_next(curr);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/contikimac.c:875: queuebuf_to_packetbuf(curr->buf);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x03
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	push	ar2
	lcall	_queuebuf_to_packetbuf
	pop	ar2
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:876: if(next != NULL) {
	mov	a,r2
	orl	a,r6
	jz	00106$
;	../../core/net/mac/contikimac.c:877: packetbuf_set_attr(PACKETBUF_ATTR_PENDING, 1);
	push	ar7
	push	ar6
	push	ar2
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x12
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar2
	pop	ar6
	pop	ar7
00106$:
;	../../core/net/mac/contikimac.c:881: ret = send_packet(sent, ptr, curr);
	push	ar7
	push	ar6
	push	ar2
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_send_packet
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:882: if(ret != MAC_TX_DEFERRED) {
	cjne	r4,#0x03,00138$
	cjne	r5,#0x00,00138$
	sjmp	00108$
00138$:
;	../../core/net/mac/contikimac.c:883: mac_call_sent_callback(sent, ptr, ret, 1);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	../../core/net/mac/contikimac.c:886: if(ret == MAC_TX_OK) {
	mov	a,r4
	orl	a,r5
	jnz	00112$
;	../../core/net/mac/contikimac.c:887: if(next != NULL) {
	mov	a,r2
	orl	a,r6
	jz	00115$
;	../../core/net/mac/contikimac.c:889: is_receiver_awake = 1;
	mov	dptr,#_is_receiver_awake
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:890: curr = next;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00115$
00112$:
;	../../core/net/mac/contikimac.c:894: next = NULL;
	mov	r2,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00115$:
;	../../core/net/mac/contikimac.c:896: } while(next != NULL);
	mov	a,r2
	orl	a,r6
	jz	00141$
	ljmp	00114$
00141$:
;	../../core/net/mac/contikimac.c:897: is_receiver_awake = 0;
	mov	dptr,#_is_receiver_awake
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00117$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recv_burst_off'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:903: recv_burst_off(void *ptr)
;	-----------------------------------------
;	 function recv_burst_off
;	-----------------------------------------
_recv_burst_off:
;	../../core/net/mac/contikimac.c:905: off();
	lcall	_off
;	../../core/net/mac/contikimac.c:906: we_are_receiving_burst = 0;
	mov	dptr,#_we_are_receiving_burst
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;chdr                      Allocated to registers r5 r6 r7 
;i                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +5
;ct                        Allocated with name '_input_packet_ct_1_1'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:910: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	../../core/net/mac/contikimac.c:913: if(!we_are_receiving_burst) {
	mov	dptr,#_we_are_receiving_burst
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00102$
;	../../core/net/mac/contikimac.c:914: off();
	lcall	_off
00102$:
;	../../core/net/mac/contikimac.c:919: if(packetbuf_totlen() > 0 && NETSTACK_FRAMER.parse() >= 0) {
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00159$
	ljmp	00127$
00159$:
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
	jnb	acc.7,00161$
	ljmp	00127$
00161$:
;	../../core/net/mac/contikimac.c:923: chdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
;	../../core/net/mac/contikimac.c:924: if(chdr->id != CONTIKIMAC_ID) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	jz	00104$
;	../../core/net/mac/contikimac.c:926: return;
	ljmp	00127$
00104$:
;	../../core/net/mac/contikimac.c:928: packetbuf_hdrreduce(sizeof(struct hdr));
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrreduce
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/contikimac.c:929: packetbuf_set_datalen(chdr->len);
	inc	r5
	cjne	r5,#0x00,00163$
	inc	r6
00163$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	lcall	_packetbuf_set_datalen
;	../../core/net/mac/contikimac.c:932: if(packetbuf_datalen() > 0 &&
	lcall	_packetbuf_datalen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00164$
	ljmp	00127$
00164$:
;	../../core/net/mac/contikimac.c:933: packetbuf_totlen() > 0 &&
	lcall	_packetbuf_totlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00165$
	ljmp	00127$
00165$:
;	../../core/net/mac/contikimac.c:935: &rimeaddr_node_addr) ||
;	../../core/net/mac/contikimac.c:934: (rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
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
	jnz	00111$
;	../../core/net/mac/contikimac.c:937: &rimeaddr_null))) {
;	../../core/net/mac/contikimac.c:936: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
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
	jnz	00167$
	ljmp	00127$
00167$:
00111$:
;	../../core/net/mac/contikimac.c:942: we_are_receiving_burst = packetbuf_attr(PACKETBUF_ATTR_PENDING);
	mov	dpl,#0x12
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_we_are_receiving_burst
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:943: if(we_are_receiving_burst) {
	mov	a,r6
	orl	a,r7
	jz	00106$
;	../../core/net/mac/contikimac.c:944: on();
	lcall	_on
;	../../core/net/mac/contikimac.c:946: ctimer_set(&ct, INTER_PACKET_DEADLINE, recv_burst_off, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_recv_burst_off
	push	acc
	mov	a,#(_recv_burst_off >> 8)
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	dptr,#_input_packet_ct_1_1
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00140$
00106$:
;	../../core/net/mac/contikimac.c:948: off();
	lcall	_off
;	../../core/net/mac/contikimac.c:949: ctimer_stop(&ct);
	mov	dptr,#_input_packet_ct_1_1
	mov	b,#0x00
	lcall	_ctimer_stop
;	../../core/net/mac/contikimac.c:956: for(i = 0; i < MAX_SEQNOS; ++i) {
00140$:
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00119$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00169$
	ljmp	00142$
00169$:
;	../../core/net/mac/contikimac.c:957: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == received_seqnos[i].seqno &&
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
	cjne	a,ar7,00170$
	mov	a,r3
	cjne	a,ar6,00170$
	sjmp	00171$
00170$:
	pop	ar7
	pop	ar6
	sjmp	00121$
00171$:
;	../../core/net/mac/contikimac.c:959: &received_seqnos[i].sender)) {
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
;	../../core/net/mac/contikimac.c:958: rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
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
	jz	00121$
;	../../core/net/mac/contikimac.c:962: return;
	ljmp	00127$
00121$:
;	../../core/net/mac/contikimac.c:956: for(i = 0; i < MAX_SEQNOS; ++i) {
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00173$
	inc	r7
00173$:
	ljmp	00119$
;	../../core/net/mac/contikimac.c:965: for(i = MAX_SEQNOS - 1; i > 0; --i) {
00142$:
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x0F
	inc	r0
	mov	@r0,#0x00
	mov	r4,#0x2D
	mov	r5,#0x00
00123$:
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
	jnc	00126$
;	../../core/net/mac/contikimac.c:966: memcpy(&received_seqnos[i], &received_seqnos[i - 1],
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
;	../../core/net/mac/contikimac.c:965: for(i = MAX_SEQNOS - 1; i > 0; --i) {
	mov	a,r4
	add	a,#0xFD
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xFF,00175$
	inc	r0
	dec	@r0
00175$:
	sjmp	00123$
00126$:
;	../../core/net/mac/contikimac.c:969: received_seqnos[0].seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	dptr,#(_received_seqnos + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:971: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/contikimac.c:970: rimeaddr_copy(&received_seqnos[0].sender,
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_received_seqnos
	mov	b,#0x00
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/contikimac.c:989: NETSTACK_MAC.input();
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
;	../../core/net/mac/contikimac.c:990: return;
00127$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:1000: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../core/net/mac/contikimac.c:1002: radio_is_on = 0;
	mov	dptr,#_radio_is_on
;	../../core/net/mac/contikimac.c:1003: PT_INIT(&pt);
	clr	a
	movx	@dptr,a
	mov	dptr,#_pt
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1006: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	../../core/net/mac/contikimac.c:1005: rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,#0xA1
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../../core/net/mac/contikimac.c:1008: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1011: phase_init(&phase_list);
	mov	dptr,#_phase_list
	mov	b,#0x00
	ljmp	_phase_init
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_on'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:1017: turn_on(void)
;	-----------------------------------------
;	 function turn_on
;	-----------------------------------------
_turn_on:
;	../../core/net/mac/contikimac.c:1019: if(contikimac_is_on == 0) {
	mov	dptr,#_contikimac_is_on
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../../core/net/mac/contikimac.c:1020: contikimac_is_on = 1;
	mov	dptr,#_contikimac_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1021: contikimac_keep_radio_on = 0;
	mov	dptr,#_contikimac_keep_radio_on
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1023: (void (*)(struct rtimer *, void *))powercycle, NULL);
	mov	r6,#_powercycle
	mov	r7,#(_powercycle >> 8)
;	../../core/net/mac/contikimac.c:1022: rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
	mov	r4,_T1CNTL
	mov	r5,#0x00
	mov	r2,_T1CNTH
	mov	ar3,r2
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	a,#0xA1
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	dptr,#_rt
	mov	b,#0x00
	lcall	_rtimer_set
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
00102$:
;	../../core/net/mac/contikimac.c:1025: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:1029: turn_off(int keep_radio_on)
;	-----------------------------------------
;	 function turn_off
;	-----------------------------------------
_turn_off:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/contikimac.c:1031: contikimac_is_on = 0;
	mov	dptr,#_contikimac_is_on
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1032: contikimac_keep_radio_on = keep_radio_on;
	mov	dptr,#_contikimac_keep_radio_on
	mov	a,r6
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1033: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/contikimac.c:1034: radio_is_on = 1;
	mov	dptr,#_radio_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1035: return NETSTACK_RADIO.on();
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
;	../../core/net/mac/contikimac.c:1037: radio_is_on = 0;
	mov	dptr,#_radio_is_on
	clr	a
	movx	@dptr,a
;	../../core/net/mac/contikimac.c:1038: return NETSTACK_RADIO.off();
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
;Allocation info for local variables in function 'duty_cycle'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:1043: duty_cycle(void)
;	-----------------------------------------
;	 function duty_cycle
;	-----------------------------------------
_duty_cycle:
;	../../core/net/mac/contikimac.c:1045: return (1ul * CLOCK_SECOND * CYCLE_TIME) / RTIMER_ARCH_SECOND;
	mov	dptr,#0x000F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'contikimac_debug_print'
;------------------------------------------------------------
;	../../core/net/mac/contikimac.c:1060: contikimac_debug_print(void)
;	-----------------------------------------
;	 function contikimac_debug_print
;	-----------------------------------------
_contikimac_debug_print:
;	../../core/net/mac/contikimac.c:1062: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "schedule_powercycle: could not set rtimer"
	.db 0x0A
	.db 0x00
_contikimac_driver:
	.byte _str_1,(_str_1 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _qsend_packet,(_qsend_packet >> 8)
	.byte _qsend_list,(_qsend_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _turn_on,(_turn_on >> 8)
	.byte _turn_off,(_turn_off >> 8)
	.byte _duty_cycle,(_duty_cycle >> 8)
_str_1:
	.ascii "ContikiMAC"
	.db 0x00
	.area XINIT   (CODE)
__xinit__we_are_receiving_burst:
	.byte #0x00,#0x00	;  0
__xinit__is_receiver_awake:
	.byte #0x00,#0x00	;  0
__xinit__contikimac_is_on:
	.db #0x00	; 0
__xinit__contikimac_keep_radio_on:
	.db #0x00	; 0
__xinit__we_are_sending:
	.db #0x00	; 0
__xinit__radio_is_on:
	.db #0x00	; 0
__xinit__phase_list_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__phase_list_list:
	.byte _phase_list_list_list,(_phase_list_list_list >> 8),#0x00
__xinit__phase_list_memb:
	.byte #0x0C,#0x00	; 12
	.byte #0x1E,#0x00	; 30
	.byte _phase_list_memb_memb_count,(_phase_list_memb_memb_count >> 8),#0x00
	.byte _phase_list_memb_memb_mem,(_phase_list_memb_memb_mem >> 8),#0x00
__xinit__phase_list:
	.byte _phase_list_list,(_phase_list_list >> 8),#0x00
	.byte _phase_list_memb,(_phase_list_memb >> 8),#0x00
	.area CABS    (ABS,CODE)
