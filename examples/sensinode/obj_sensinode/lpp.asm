;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:20 2013
;--------------------------------------------------------
	.module lpp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lpp_driver
	.globl _printf
	.globl _compower_attrconv
	.globl _compower_clear
	.globl _compower_accumulate
	.globl _mac_call_sent_callback
	.globl _queuebuf_addr
	.globl _queuebuf_datalen
	.globl _queuebuf_dataptr
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
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
	.globl _packetbuf_clear
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _clock_time
	.globl _announcement_register_listen_callback
	.globl _announcement_list
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _random_rand
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _memcpy
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _leds_toggle
	.globl _leds_off
	.globl _leds_on
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
_lpp_is_on:
	.ds 1
_current_packet:
	.ds 8
_dutycycle_pt:
	.ds 2
_timer:
	.ds 21
_queued_packets_memb_memb_count:
	.ds 4
_queued_packets_memb_memb_mem:
	.ds 164
_encounter_memb_memb_count:
	.ds 4
_encounter_memb_memb_mem:
	.ds 196
_stream_probe_timer:
	.ds 21
_stream_off_timer:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_is_listening:
	.ds 1
_off_time_adjustment:
	.ds 2
_off_time:
	.ds 2
_pending_packets_list_list:
	.ds 3
_pending_packets_list:
	.ds 3
_queued_packets_list_list:
	.ds 3
_queued_packets_list:
	.ds 3
_queued_packets_memb:
	.ds 10
_encounter_list_list:
	.ds 3
_encounter_list:
	.ds 3
_encounter_memb:
	.ds 10
_is_streaming:
	.ds 1
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
;Allocation info for local variables in function 'turn_radio_on'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:192: turn_radio_on(void)
;	-----------------------------------------
;	 function turn_radio_on
;	-----------------------------------------
_turn_radio_on:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../core/net/mac/lpp.c:194: NETSTACK_RADIO.on();
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_radio_off'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:199: turn_radio_off(void)
;	-----------------------------------------
;	 function turn_radio_off
;	-----------------------------------------
_turn_radio_off:
;	../../core/net/mac/lpp.c:201: if(lpp_is_on && is_streaming == 0) {
	mov	dptr,#_lpp_is_on
	movx	a,@dptr
	mov	r7,a
	jz	00104$
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
;	../../core/net/mac/lpp.c:202: NETSTACK_RADIO.off();
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
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_encounter'
;------------------------------------------------------------
;encounter                 Allocated to registers r5 r6 r7 
;e                         Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:208: remove_encounter(void *encounter)
;	-----------------------------------------
;	 function remove_encounter
;	-----------------------------------------
_remove_encounter:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/lpp.c:210: struct encounter *e = encounter;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/lpp.c:212: ctimer_stop(&e->remove_timer);
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
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
	lcall	_ctimer_stop
;	../../core/net/mac/lpp.c:213: ctimer_stop(&e->turn_on_radio_timer);
	mov	r0,_bp
	inc	r0
	mov	a,#0x1C
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
	lcall	_ctimer_stop
;	../../core/net/mac/lpp.c:214: list_remove(encounter_list, e);
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_encounter_list
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:215: memb_free(&encounter_memb, e);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_encounter_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_encounter'
;------------------------------------------------------------
;time                      Allocated to stack - _bp -4
;neighbor                  Allocated to stack - _bp +1
;e                         Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:219: register_encounter(rimeaddr_t *neighbor, clock_time_t time)
;	-----------------------------------------
;	 function register_encounter
;	-----------------------------------------
_register_encounter:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/mac/lpp.c:224: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_encounter_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00103$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00123$
	ljmp	00106$
00123$:
;	../../core/net/mac/lpp.c:225: if(rimeaddr_cmp(neighbor, &e->neighbor)) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00105$
;	../../core/net/mac/lpp.c:226: e->time = time;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/mac/lpp.c:227: ctimer_set(&e->remove_timer, ENCOUNTER_LIFETIME, remove_encounter, e);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_remove_encounter
	push	acc
	mov	a,#(_remove_encounter >> 8)
	push	acc
	mov	a,#0xF0
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:228: break;
	sjmp	00106$
00105$:
;	../../core/net/mac/lpp.c:224: for(e = list_head(encounter_list); e != NULL; e = list_item_next(e)) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00103$
00106$:
;	../../core/net/mac/lpp.c:232: if(e == NULL) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00125$
	ljmp	00111$
00125$:
;	../../core/net/mac/lpp.c:233: e = memb_alloc(&encounter_memb);
	mov	dptr,#_encounter_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/lpp.c:234: if(e == NULL) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	../../core/net/mac/lpp.c:236: return;
	ljmp	00111$
00108$:
;	../../core/net/mac/lpp.c:238: rimeaddr_copy(&e->neighbor, neighbor);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:239: e->time = time;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/mac/lpp.c:240: ctimer_set(&e->remove_timer, ENCOUNTER_LIFETIME, remove_encounter, e);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	a,#_remove_encounter
	push	acc
	mov	a,#(_remove_encounter >> 8)
	push	acc
	mov	a,#0xF0
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:241: list_add(encounter_list, e);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_encounter_list
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
00111$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stream_off'
;------------------------------------------------------------
;dummy                     Allocated to registers 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:262: stream_off(void *dummy)
;	-----------------------------------------
;	 function stream_off
;	-----------------------------------------
_stream_off:
;	../../core/net/mac/lpp.c:264: is_streaming = 0;
	mov	dptr,#_is_streaming
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn_radio_on_for_neighbor'
;------------------------------------------------------------
;i                         Allocated to stack - _bp -5
;neighbor                  Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:277: turn_radio_on_for_neighbor(rimeaddr_t *neighbor, struct queue_list_item *i)
;	-----------------------------------------
;	 function turn_radio_on_for_neighbor
;	-----------------------------------------
_turn_radio_on_for_neighbor:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/lpp.c:281: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x02,00102$
	cjne	r4,#0x00,00102$
;	../../core/net/mac/lpp.c:283: is_streaming = 1;
	mov	dptr,#_is_streaming
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/lpp.c:284: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:285: list_add(queued_packets_list, i);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_queued_packets_list
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:286: ctimer_set(&stream_off_timer, STREAM_OFF_TIME,
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_stream_off
	push	acc
	mov	a,#(_stream_off >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	mov	dptr,#_stream_off_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:288: return;
	ljmp	00105$
00102$:
;	../../core/net/mac/lpp.c:292: if(rimeaddr_cmp(neighbor, &rimeaddr_null)) {
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
	jz	00104$
;	../../core/net/mac/lpp.c:296: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:298: list_add(queued_packets_list, i);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:299: return;
	sjmp	00105$
00104$:
;	../../core/net/mac/lpp.c:347: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:348: list_add(queued_packets_list, i);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:349: return;
00105$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_queued_packet'
;------------------------------------------------------------
;tx_ok                     Allocated to stack - _bp -3
;i                         Allocated to stack - _bp +1
;sent                      Allocated to stack - _bp +4
;ptr                       Allocated to stack - _bp +6
;num_transmissions         Allocated to registers r2 r7 
;status                    Allocated to registers r5 r6 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:353: remove_queued_packet(struct queue_list_item *i, uint8_t tx_ok)
;	-----------------------------------------
;	 function remove_queued_packet
;	-----------------------------------------
_remove_queued_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/mac/lpp.c:364: queuebuf_to_packetbuf(i->packet);
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_to_packetbuf
;	../../core/net/mac/lpp.c:366: ctimer_stop(&i->removal_timer);
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
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
	lcall	_ctimer_stop
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/mac/lpp.c:367: queuebuf_free(i->packet);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_queuebuf_free
;	../../core/net/mac/lpp.c:368: list_remove(pending_packets_list, i);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_pending_packets_list
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
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:369: list_remove(queued_packets_list, i);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_queued_packets_list
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
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:372: if(list_length(queued_packets_list) == 0 && is_listening == 0) {
	mov	dptr,#_queued_packets_list
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
	lcall	_list_length
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
	mov	dptr,#_is_listening
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../../core/net/mac/lpp.c:373: turn_radio_off();
	lcall	_turn_radio_off
;	../../core/net/mac/lpp.c:374: compower_accumulate(&i->compower);
	mov	r0,_bp
	inc	r0
	mov	a,#0x1B
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
	lcall	_compower_accumulate
00102$:
;	../../core/net/mac/lpp.c:377: sent = i->sent_callback;
	mov	r0,_bp
	inc	r0
	mov	a,#0x23
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../core/net/mac/lpp.c:378: ptr = i->sent_callback_ptr;
	mov	r0,_bp
	inc	r0
	mov	a,#0x25
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
	add	a,#0x06
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
;	../../core/net/mac/lpp.c:379: num_transmissions = i->num_transmissions;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
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
	mov	r7,#0x00
;	../../core/net/mac/lpp.c:380: memb_free(&queued_packets_memb, i);
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	push	ar7
	push	ar2
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar7
;	../../core/net/mac/lpp.c:381: if(num_transmissions == 0 || tx_ok == 0) {
	mov	a,r2
	orl	a,r7
	jz	00104$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00105$
00104$:
;	../../core/net/mac/lpp.c:382: status = MAC_TX_NOACK;
	mov	r5,#0x02
	mov	r6,#0x00
	sjmp	00106$
00105$:
;	../../core/net/mac/lpp.c:384: status = MAC_TX_OK;
	mov	r5,#0x00
	mov	r6,#0x00
00106$:
;	../../core/net/mac/lpp.c:386: mac_call_sent_callback(sent, ptr, status, num_transmissions);
	push	ar2
	push	ar7
	push	ar5
	push	ar6
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_queued_old_packet_callback'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:390: remove_queued_old_packet_callback(void *item)
;	-----------------------------------------
;	 function remove_queued_old_packet_callback
;	-----------------------------------------
_remove_queued_old_packet_callback:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/lpp.c:392: remove_queued_packet(item, 0);
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_remove_queued_packet
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'listen_callback'
;------------------------------------------------------------
;periods                   Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:413: listen_callback(int periods)
;	-----------------------------------------
;	 function listen_callback
;	-----------------------------------------
_listen_callback:
	mov	r6,dpl
;	../../core/net/mac/lpp.c:415: is_listening = periods;
	mov	dptr,#_is_listening
	mov	a,r6
	movx	@dptr,a
;	../../core/net/mac/lpp.c:416: turn_radio_on();
	ljmp	_turn_radio_on
;------------------------------------------------------------
;Allocation info for local variables in function 'send_probe'
;------------------------------------------------------------
;hdr                       Allocated to registers r5 r6 r7 
;adata                     Allocated to stack - _bp +1
;a                         Allocated to stack - _bp +4
;hdrlen                    Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +9
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:423: send_probe(void)
;	-----------------------------------------
;	 function send_probe
;	-----------------------------------------
_send_probe:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0B
	mov	sp,a
;	../../core/net/mac/lpp.c:430: packetbuf_clear();
	lcall	_packetbuf_clear
;	../../core/net/mac/lpp.c:431: packetbuf_set_datalen(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_set_datalen
;	../../core/net/mac/lpp.c:432: hdr = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
;	../../core/net/mac/lpp.c:433: hdr->type = TYPE_PROBE;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,#0x01
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/mac/lpp.c:434: rimeaddr_copy(&hdr->sender, &rimeaddr_node_addr);
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
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/lpp.c:436: rimeaddr_copy(&hdr->receiver, &rimeaddr_null);
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:438: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &rimeaddr_null);
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:440: int hdrlen = NETSTACK_FRAMER.create();
	mov	dptr,#_framer_802154
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/lpp.c:441: if(hdrlen < 0) {
	mov	a,r4
	jnb	acc.7,00102$
;	../../core/net/mac/lpp.c:443: return;
	ljmp	00110$
00102$:
;	../../core/net/mac/lpp.c:448: adata = (struct announcement_msg *)((char *)hdr + sizeof(struct lpp_hdr));
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/lpp.c:450: adata->num = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/mac/lpp.c:451: for(a = announcement_list(); a != NULL; a = list_item_next(a)) {
	lcall	_announcement_list
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
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
00106$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
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
	jnz	00122$
	ljmp	00109$
00122$:
;	../../core/net/mac/lpp.c:452: adata->data[adata->num].id = a->id;
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	mov	a,r7
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
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
	mov	@r1,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	../../core/net/mac/lpp.c:453: adata->data[adata->num].value = a->value;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/lpp.c:454: adata->num++;
	mov	r0,_bp
	inc	r0
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
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/net/mac/lpp.c:451: for(a = announcement_list(); a != NULL; a = list_item_next(a)) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00106$
00109$:
;	../../core/net/mac/lpp.c:459: sizeof(struct announcement_data) * adata->num);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_packetbuf_set_datalen
;	../../core/net/mac/lpp.c:465: if(NETSTACK_RADIO.channel_clear()) {
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
	jz	00104$
;	../../core/net/mac/lpp.c:466: NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
	mov	dptr,#(_cc2430_rf_driver + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_packetbuf_totlen
	xch	a,r0
	mov	a,_bp
	add	a,#0x09
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00126$
	push	acc
	mov	a,#(00126$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00126$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	sjmp	00105$
00104$:
;	../../core/net/mac/lpp.c:468: off_time_adjustment = random_rand() % (OFF_TIME / 2);
	lcall	_random_rand
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_off_time_adjustment
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00105$:
;	../../core/net/mac/lpp.c:471: compower_accumulate(&compower_idle_activity);
	mov	dptr,#_compower_idle_activity
	mov	b,#0x00
	lcall	_compower_accumulate
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_stream_probe'
;------------------------------------------------------------
;dummy                     Allocated to registers 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:475: send_stream_probe(void *dummy)
;	-----------------------------------------
;	 function send_stream_probe
;	-----------------------------------------
_send_stream_probe:
;	../../core/net/mac/lpp.c:479: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:482: send_probe();
	lcall	_send_probe
;	../../core/net/mac/lpp.c:485: is_streaming = 1;
	mov	dptr,#_is_streaming
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'num_packets_to_send'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:490: num_packets_to_send(void)
;	-----------------------------------------
;	 function num_packets_to_send
;	-----------------------------------------
_num_packets_to_send:
;	../../core/net/mac/lpp.c:504: return list_length(queued_packets_list);
	mov	dptr,#_queued_packets_list
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
	ljmp	_list_length
;------------------------------------------------------------
;Allocation info for local variables in function 'dutycycle'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;t                         Allocated to stack - _bp +1
;PT_YIELD_FLAG             Allocated to registers r4 
;current_off_time          Allocated to registers r7 r4 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:514: dutycycle(void *ptr)
;	-----------------------------------------
;	 function dutycycle
;	-----------------------------------------
_dutycycle:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/lpp.c:516: struct ctimer *t = ptr;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/lpp.c:518: PT_BEGIN(&dutycycle_pt);
	mov	r4,#0x01
	mov	dptr,#_dutycycle_pt
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x00,00170$
	cjne	r3,#0x00,00170$
	sjmp	00137$
00170$:
	cjne	r2,#0x22,00171$
	cjne	r3,#0x02,00171$
	sjmp	00102$
00171$:
	cjne	r2,#0x49,00172$
	cjne	r3,#0x02,00172$
	ljmp	00112$
00172$:
	cjne	r2,#0x57,00173$
	cjne	r3,#0x02,00173$
	ljmp	00118$
00173$:
	cjne	r2,#0x5D,00174$
	cjne	r3,#0x02,00174$
	ljmp	00127$
00174$:
	ljmp	00139$
;	../../core/net/mac/lpp.c:520: while(1) {
00137$:
;	../../core/net/mac/lpp.c:539: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:542: send_probe();
	lcall	_send_probe
;	../../core/net/mac/lpp.c:545: ctimer_set(t, LISTEN_TIME, (void (*)(void *))dutycycle, t);
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#_dutycycle
	mov	r6,#(_dutycycle >> 8)
	push	ar2
	push	ar3
	push	ar7
	push	ar5
	push	ar6
	mov	a,#0x01
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
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:546: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
00102$:
	mov	a,r4
	jnz	00106$
	mov	dptr,#0x0001
	ljmp	00140$
00106$:
;	../../core/net/mac/lpp.c:569: if(num_packets_to_send() == 0) {
	lcall	_num_packets_to_send
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00176$
	ljmp	00134$
00176$:
;	../../core/net/mac/lpp.c:573: if(is_listening == 0) {
	mov	dptr,#_is_listening
	movx	a,@dptr
	mov	r7,a
	jz	00177$
	ljmp	00125$
00177$:
;	../../core/net/mac/lpp.c:575: if(!NETSTACK_RADIO.receiving_packet()) {
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	lcall	__sdcc_call_dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	../../core/net/mac/lpp.c:576: turn_radio_off();
	lcall	_turn_radio_off
;	../../core/net/mac/lpp.c:577: compower_accumulate(&compower_idle_activity);
	mov	dptr,#_compower_idle_activity
	mov	b,#0x00
	lcall	_compower_accumulate
00109$:
;	../../core/net/mac/lpp.c:579: current_off_time = off_time - off_time_adjustment;
	mov	dptr,#_off_time_adjustment
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_off_time
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r3
	subb	a,r6
	mov	r6,a
	mov	ar7,r5
	mov	ar4,r6
;	../../core/net/mac/lpp.c:580: if(current_off_time < LISTEN_TIME * 2) {
	clr	c
	mov	a,r7
	subb	a,#0x02
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00111$
;	../../core/net/mac/lpp.c:581: current_off_time = LISTEN_TIME * 2;
	mov	r7,#0x02
	mov	r4,#0x00
00111$:
;	../../core/net/mac/lpp.c:583: off_time_adjustment = 0;
	mov	dptr,#_off_time_adjustment
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/mac/lpp.c:584: ctimer_set(t, current_off_time, (void (*)(void *))dutycycle, t);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
	mov	r5,#_dutycycle
	mov	r6,#(_dutycycle >> 8)
	mov	ar2,r7
	mov	ar3,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:585: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x49
	movx	@dptr,a
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
00112$:
	mov	a,r4
	jz	00181$
	ljmp	00137$
00181$:
	mov	dptr,#0x0001
	ljmp	00140$
00125$:
;	../../core/net/mac/lpp.c:597: is_listening--;
	mov	a,r7
	dec	a
	mov	dptr,#_is_listening
	movx	@dptr,a
;	../../core/net/mac/lpp.c:598: ctimer_set(t, OFF_TIME, (void (*)(void *))dutycycle, t);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r2,#_dutycycle
	mov	r3,#(_dutycycle >> 8)
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	a,#0x0F
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
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:599: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x57
	movx	@dptr,a
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
00118$:
	mov	a,r4
	jz	00182$
	ljmp	00137$
00182$:
	mov	dptr,#0x0001
	sjmp	00140$
00134$:
;	../../core/net/mac/lpp.c:604: ctimer_set(t, off_time, (void (*)(void *))dutycycle, t);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r2,#_dutycycle
	mov	r3,#(_dutycycle >> 8)
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#_off_time
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:605: PT_YIELD(&dutycycle_pt);
	mov	r4,#0x00
	mov	dptr,#_dutycycle_pt
	mov	a,#0x5D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
00127$:
	mov	a,r4
	jz	00183$
	ljmp	00137$
00183$:
	mov	dptr,#0x0001
;	../../core/net/mac/lpp.c:609: PT_END(&dutycycle_pt);
	sjmp	00140$
00139$:
	mov	dptr,#_dutycycle_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
00140$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_dutycycle'
;------------------------------------------------------------
;initial_wait              Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:613: restart_dutycycle(clock_time_t initial_wait)
;	-----------------------------------------
;	 function restart_dutycycle
;	-----------------------------------------
_restart_dutycycle:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/lpp.c:615: PT_INIT(&dutycycle_pt);
	mov	dptr,#_dutycycle_pt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../../core/net/mac/lpp.c:616: ctimer_set(&timer, initial_wait, (void (*)(void *))dutycycle, &timer);  
	mov	r4,#_dutycycle
	mov	r5,#(_dutycycle >> 8)
	mov	a,#_timer
	push	acc
	mov	a,#(_timer >> 8)
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;sent                      Allocated to stack - _bp +1
;hdr                       Allocated to stack - _bp +3
;timeout                   Allocated to stack - _bp +9
;is_broadcast              Allocated to stack - _bp +11
;hdrlen                    Allocated to registers r6 r7 
;i                         Allocated to stack - _bp +12
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:634: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0C
	mov	sp,a
;	../../core/net/mac/lpp.c:638: uint8_t is_broadcast = 0;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/lpp.c:640: rimeaddr_copy(&hdr.sender, &rimeaddr_node_addr);
	mov	a,_bp
	add	a,#0x03
	add	a,#0x02
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:641: rimeaddr_copy(&hdr.receiver, packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x03
	add	a,#0x04
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:642: if(rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
	mov	a,_bp
	add	a,#0x03
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/lpp.c:643: is_broadcast = 1;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,#0x01
00102$:
;	../../core/net/mac/lpp.c:645: hdr.type = TYPE_DATA;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x02
	inc	r0
	mov	@r0,#0x00
;	../../core/net/mac/lpp.c:647: packetbuf_hdralloc(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_hdralloc
;	../../core/net/mac/lpp.c:648: memcpy(packetbuf_hdrptr(), &hdr, sizeof(struct lpp_hdr));
	mov	a,_bp
	add	a,#0x03
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
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
;	../../core/net/mac/lpp.c:649: packetbuf_compact();
	lcall	_packetbuf_compact
;	../../core/net/mac/lpp.c:651: packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0B
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:654: int hdrlen = NETSTACK_FRAMER.create();
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
;	../../core/net/mac/lpp.c:655: if(hdrlen < 0) {
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00104$
;	../../core/net/mac/lpp.c:657: mac_call_sent_callback(sent, ptr, MAC_TX_ERR_FATAL, 0);
	clr	a
	push	acc
	push	acc
	mov	a,#0x05
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
;	../../core/net/mac/lpp.c:658: return;
	ljmp	00114$
00104$:
;	../../core/net/mac/lpp.c:682: i = memb_alloc(&queued_packets_memb);
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/lpp.c:683: if(i != NULL) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00129$
	ljmp	00112$
00129$:
;	../../core/net/mac/lpp.c:684: i->sent_callback = sent;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x23
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
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/mac/lpp.c:685: i->sent_callback_ptr = ptr;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x25
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
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/mac/lpp.c:686: i->num_transmissions = 0;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x28
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
;	../../core/net/mac/lpp.c:687: i->packet = queuebuf_new_from_packetbuf();
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_new_from_packetbuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/net/mac/lpp.c:688: if(i->packet == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00109$
;	../../core/net/mac/lpp.c:689: memb_free(&queued_packets_memb, i);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:690: printf("null packet\n");
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
;	../../core/net/mac/lpp.c:691: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
	clr	a
	push	acc
	push	acc
	mov	a,#0x04
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
;	../../core/net/mac/lpp.c:692: return;
	ljmp	00114$
00109$:
;	../../core/net/mac/lpp.c:694: if(is_broadcast) {
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	jz	00106$
;	../../core/net/mac/lpp.c:695: timeout = PACKET_LIFETIME;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x10
	inc	r0
	mov	@r0,#0x00
	sjmp	00107$
00106$:
;	../../core/net/mac/lpp.c:709: timeout = UNICAST_TIMEOUT;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x18
	inc	r0
	mov	@r0,#0x00
00107$:
;	../../core/net/mac/lpp.c:715: remove_queued_old_packet_callback, i);
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	../../core/net/mac/lpp.c:714: ctimer_set(&i->removal_timer, timeout,
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	a,#_remove_queued_old_packet_callback
	push	acc
	mov	a,#(_remove_queued_old_packet_callback >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:720: turn_radio_on_for_neighbor(&hdr.receiver, i);
	mov	a,_bp
	add	a,#0x03
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x0c
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
	lcall	_turn_radio_on_for_neighbor
	dec	sp
	dec	sp
	dec	sp
	sjmp	00114$
00112$:
;	../../core/net/mac/lpp.c:724: printf("i == NULL\n");
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:725: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 0);
	clr	a
	push	acc
	push	acc
	mov	a,#0x04
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
00114$:
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
;	../../core/net/mac/lpp.c:731: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/lpp.c:733: if(buf_list != NULL) {
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../../core/net/mac/lpp.c:734: queuebuf_to_packetbuf(buf_list->buf);
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
;	../../core/net/mac/lpp.c:735: send_packet(sent, ptr);
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
;Allocation info for local variables in function 'detect_ack'
;------------------------------------------------------------
;wt                        Allocated to registers r5 r6 
;ack_received              Allocated to registers r7 
;len                       Allocated to registers r5 r6 
;ackbuf                    Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:740: detect_ack(void)
;	-----------------------------------------
;	 function detect_ack
;	-----------------------------------------
_detect_ack:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	../../core/net/mac/lpp.c:746: uint8_t ack_received = 0;
	mov	r7,#0x00
;	../../core/net/mac/lpp.c:748: wt = RTIMER_NOW();
	mov	r5,_T1CNTL
	mov	r6,#0x00
	mov	r3,_T1CNTH
	mov	ar4,r3
	clr	a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	../../core/net/mac/lpp.c:749: leds_on(LEDS_GREEN);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_leds_on
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/mac/lpp.c:750: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
00101$:
	push	ar7
	mov	r2,_T1CNTL
	mov	r7,#0x00
	mov	r3,_T1CNTH
	mov	ar4,r3
	clr	a
	mov	r3,a
	add	a,r2
	mov	r2,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	pop	ar7
	jb	acc.7,00101$
;	../../core/net/mac/lpp.c:751: leds_off(LEDS_GREEN);
	mov	dpl,#0x01
	push	ar7
	lcall	_leds_off
;	../../core/net/mac/lpp.c:753: if((NETSTACK_RADIO.receiving_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r4,dph
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00109$
;	../../core/net/mac/lpp.c:754: NETSTACK_RADIO.pending_packet() ||
	mov	dptr,#(_cc2430_rf_driver + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r4,dph
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00109$
;	../../core/net/mac/lpp.c:755: NETSTACK_RADIO.channel_clear() == 0)) {
	mov	dptr,#(_cc2430_rf_driver + 0x000a)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	lcall	__sdcc_call_dptr
	mov	r3,dpl
	mov	r4,dph
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00139$
	ljmp	00110$
00139$:
00109$:
;	../../core/net/mac/lpp.c:759: wt = RTIMER_NOW();
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
	mov	ar5,r3
	mov	ar6,r4
;	../../core/net/mac/lpp.c:760: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x0F
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
;	../../core/net/mac/lpp.c:770: return ack_received;
	pop	ar7
;	../../core/net/mac/lpp.c:760: while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
00104$:
	mov	r5,_T1CNTL
	mov	r6,#0x00
	mov	r3,_T1CNTH
	mov	ar4,r3
	clr	a
	mov	r3,a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r5
	clr	c
	subb	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	mov	r6,a
	jb	acc.7,00104$
;	../../core/net/mac/lpp.c:762: len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
	mov	dptr,#(_cc2430_rf_driver + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#00141$
	push	acc
	mov	a,#(00141$ >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	ret
00141$:
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar7
;	../../core/net/mac/lpp.c:763: if(len == ACK_LEN) {
	cjne	r5,#0x03,00110$
	cjne	r6,#0x00,00110$
;	../../core/net/mac/lpp.c:764: ack_received = 1;
	mov	r7,#0x01
00110$:
;	../../core/net/mac/lpp.c:767: if(ack_received) {
	mov	a,r7
	jz	00114$
;	../../core/net/mac/lpp.c:768: leds_toggle(LEDS_RED);
	mov	dpl,#0x04
	push	ar7
	lcall	_leds_toggle
	pop	ar7
00114$:
;	../../core/net/mac/lpp.c:770: return ack_received;
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;hdr                       Allocated to stack - _bp +1
;reception_time            Allocated to registers 
;ret                       Allocated to registers 
;adata                     Allocated to stack - _bp +7
;i                         Allocated to stack - _bp +9
;receiver                  Allocated to stack - _bp +12
;sent                      Allocated to registers 
;sloc0                     Allocated to stack - _bp +20
;sloc1                     Allocated to stack - _bp +15
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:780: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x10
	mov	sp,a
;	../../core/net/mac/lpp.c:786: reception_time = clock_time();
	lcall	_clock_time
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/lpp.c:788: if(NETSTACK_FRAMER.parse() < 0) {
	mov	dptr,#(_framer_802154 + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	push	ar7
	push	ar6
	mov	dpl,r4
	mov	dph,r5
	lcall	__sdcc_call_dptr
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r5
	jnb	acc.7,00102$
;	../../core/net/mac/lpp.c:789: printf("lpp input_packet framer error\n");
	push	ar7
	push	ar6
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
;	../../core/net/mac/lpp.c:792: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct lpp_hdr));;
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	r2,_bp
	inc	r2
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar7
	push	ar6
	mov	a,#0x06
	push	acc
	clr	a
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
;	../../core/net/mac/lpp.c:793: packetbuf_hdrreduce(sizeof(struct lpp_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_hdrreduce
	pop	ar6
	pop	ar7
;	../../core/net/mac/lpp.c:796: if(hdr.type == TYPE_PROBE) {
	mov	r1,_bp
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar4,@r1
	cjne	r5,#0x01,00163$
	cjne	r4,#0x00,00163$
	sjmp	00164$
00163$:
	pop	ar7
	pop	ar6
	ljmp	00124$
00164$:
;	../../core/net/mac/lpp.c:801: register_encounter(&hdr.sender, reception_time);
	mov	a,_bp
	inc	a
	add	a,#0x02
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_register_encounter
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:805: MIN(packetbuf_datalen(), sizeof(adata)));
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jnc	00132$
	lcall	_packetbuf_datalen
	xch	a,r0
	mov	a,_bp
	add	a,#0x0f
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	sjmp	00133$
00132$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x02
	inc	r0
	mov	@r0,#0x00
00133$:
;	../../core/net/mac/lpp.c:804: memcpy(&adata, packetbuf_dataptr(),
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,_bp
	add	a,#0x07
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,_bp
	add	a,#0x0f
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
;	../../core/net/mac/lpp.c:832: if(list_length(queued_packets_list) > 0) {
	mov	dptr,#_queued_packets_list
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
	lcall	_list_length
	mov	r6,dpl
	mov	r7,dph
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00166$
	ljmp	00130$
00166$:
;	../../core/net/mac/lpp.c:834: for(i = list_head(queued_packets_list); i != NULL; i = list_item_next(i)) {
	mov	dptr,#_queued_packets_list
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
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00126$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
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
	jnz	00167$
	ljmp	00130$
00167$:
;	../../core/net/mac/lpp.c:840: receiver = queuebuf_addr(i->packet, PACKETBUF_ADDR_RECEIVER);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x19
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_queuebuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/mac/lpp.c:841: if(rimeaddr_cmp(receiver, &hdr.sender) ||
	mov	a,_bp
	inc	a
	add	a,#0x02
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00112$
;	../../core/net/mac/lpp.c:842: rimeaddr_cmp(receiver, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jnz	00169$
	ljmp	00128$
00169$:
00112$:
;	../../core/net/mac/lpp.c:843: queuebuf_to_packetbuf(i->packet);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_to_packetbuf
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/mac/lpp.c:863: i->num_transmissions = 1;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x28
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
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/mac/lpp.c:864: ret = NETSTACK_RADIO.send(queuebuf_dataptr(i->packet),
	mov	dptr,#(_cc2430_rf_driver + 0x0006)
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	a
	movc	a,@a+dptr
	mov	@r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	inc	r0
	mov	@r0,a
;	../../core/net/mac/lpp.c:865: queuebuf_datalen(i->packet));
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_datalen
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/mac/lpp.c:864: ret = NETSTACK_RADIO.send(queuebuf_dataptr(i->packet),
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	lcall	_queuebuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar6
	push	ar7
	mov	a,#00170$
	push	acc
	mov	a,#(00170$ >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	ret
00170$:
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:876: compower_accumulate(&i->compower);
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x1B
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
	lcall	_compower_accumulate
;	../../core/net/mac/lpp.c:882: if(!rimeaddr_cmp(receiver, &rimeaddr_null)) {
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00128$
;	../../core/net/mac/lpp.c:891: if(detect_ack()) {
	lcall	_detect_ack
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00104$
;	../../core/net/mac/lpp.c:892: remove_queued_packet(i, 1);
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_remove_queued_packet
	dec	sp
	sjmp	00105$
00104$:
;	../../core/net/mac/lpp.c:894: remove_queued_packet(i, 0);
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_remove_queued_packet
	dec	sp
00105$:
;	../../core/net/mac/lpp.c:906: if(is_streaming) {
	mov	dptr,#_is_streaming
	movx	a,@dptr
	mov	r7,a
	jz	00128$
;	../../core/net/mac/lpp.c:907: ctimer_set(&stream_probe_timer, STREAM_PROBE_TIME,
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_send_stream_probe
	push	acc
	mov	a,#(_send_stream_probe >> 8)
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dptr,#_stream_probe_timer
	mov	b,#0x00
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/mac/lpp.c:914: turn_radio_off();
00128$:
;	../../core/net/mac/lpp.c:834: for(i = list_head(queued_packets_list); i != NULL; i = list_item_next(i)) {
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00126$
00124$:
;	../../core/net/mac/lpp.c:930: } else if(hdr.type == TYPE_DATA) {
	cjne	r5,#0x02,00174$
	cjne	r4,#0x00,00174$
	sjmp	00175$
00174$:
	ljmp	00130$
00175$:
;	../../core/net/mac/lpp.c:931: turn_radio_off();
	lcall	_turn_radio_off
;	../../core/net/mac/lpp.c:932: if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_null)) {
	mov	a,_bp
	inc	a
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00120$
;	../../core/net/mac/lpp.c:933: if(!rimeaddr_cmp(&hdr.receiver, &rimeaddr_node_addr)) {
	mov	a,_bp
	inc	a
	add	a,#0x04
	mov	r7,a
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
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
;	../../core/net/mac/lpp.c:938: return;
	jz	00130$
;	../../core/net/mac/lpp.c:940: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &hdr.receiver);
	mov	a,_bp
	inc	a
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
00120$:
;	../../core/net/mac/lpp.c:942: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &hdr.sender);
	mov	a,_bp
	inc	a
	add	a,#0x02
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,#0x18
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/lpp.c:949: compower_accumulate(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_accumulate
;	../../core/net/mac/lpp.c:954: compower_attrconv(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_attrconv
;	../../core/net/mac/lpp.c:958: compower_clear(&current_packet);
	mov	dptr,#_current_packet
	mov	b,#0x00
	lcall	_compower_clear
;	../../core/net/mac/lpp.c:1001: NETSTACK_MAC.input();
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
00130$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:1006: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../../core/net/mac/lpp.c:1008: lpp_is_on = 1;
	mov	dptr,#_lpp_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/lpp.c:1009: turn_radio_on();
	lcall	_turn_radio_on
;	../../core/net/mac/lpp.c:1010: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:1014: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/lpp.c:1016: lpp_is_on = 0;
	mov	dptr,#_lpp_is_on
	clr	a
	movx	@dptr,a
;	../../core/net/mac/lpp.c:1017: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/lpp.c:1018: turn_radio_on();
	lcall	_turn_radio_on
	sjmp	00103$
00102$:
;	../../core/net/mac/lpp.c:1020: turn_radio_off();
	lcall	_turn_radio_off
00103$:
;	../../core/net/mac/lpp.c:1022: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:1026: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../../core/net/mac/lpp.c:1028: return OFF_TIME + LISTEN_TIME;
	mov	dptr,#0x0010
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../core/net/mac/lpp.c:1032: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../core/net/mac/lpp.c:1034: restart_dutycycle(random_rand() % OFF_TIME);
	lcall	_random_rand
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	lcall	_restart_dutycycle
;	../../core/net/mac/lpp.c:1036: lpp_is_on = 1;
	mov	dptr,#_lpp_is_on
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/lpp.c:1038: announcement_register_listen_callback(listen_callback);
	mov	dptr,#_listen_callback
	lcall	_announcement_register_listen_callback
;	../../core/net/mac/lpp.c:1040: memb_init(&queued_packets_memb);
	mov	dptr,#_queued_packets_memb
	mov	b,#0x00
	lcall	_memb_init
;	../../core/net/mac/lpp.c:1041: list_init(queued_packets_list);
	mov	dptr,#_queued_packets_list
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
	lcall	_list_init
;	../../core/net/mac/lpp.c:1042: list_init(pending_packets_list);
	mov	dptr,#_pending_packets_list
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
	ljmp	_list_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "null packet"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "i == NULL"
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "lpp input_packet framer error"
	.db 0x0A
	.db 0x00
_lpp_driver:
	.byte _str_3,(_str_3 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
_str_3:
	.ascii "LPP"
	.db 0x00
	.area XINIT   (CODE)
__xinit__is_listening:
	.db #0x00	; 0
__xinit__off_time_adjustment:
	.byte #0x00,#0x00	; 0
__xinit__off_time:
	.byte #0x0F,#0x00	; 15
__xinit__pending_packets_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__pending_packets_list:
	.byte _pending_packets_list_list,(_pending_packets_list_list >> 8),#0x00
__xinit__queued_packets_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__queued_packets_list:
	.byte _queued_packets_list_list,(_queued_packets_list_list >> 8),#0x00
__xinit__queued_packets_memb:
	.byte #0x29,#0x00	; 41
	.byte #0x04,#0x00	; 4
	.byte _queued_packets_memb_memb_count,(_queued_packets_memb_memb_count >> 8),#0x00
	.byte _queued_packets_memb_memb_mem,(_queued_packets_memb_memb_mem >> 8),#0x00
__xinit__encounter_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__encounter_list:
	.byte _encounter_list_list,(_encounter_list_list >> 8),#0x00
__xinit__encounter_memb:
	.byte #0x31,#0x00	; 49
	.byte #0x04,#0x00	; 4
	.byte _encounter_memb_memb_count,(_encounter_memb_memb_count >> 8),#0x00
	.byte _encounter_memb_memb_mem,(_encounter_memb_memb_mem >> 8),#0x00
__xinit__is_streaming:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
