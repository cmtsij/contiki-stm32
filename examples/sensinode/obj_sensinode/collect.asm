;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:17 2013
;--------------------------------------------------------
	.module collect
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _collect_purge
	.globl _printf
	.globl _random_rand
	.globl _packetqueue_queuebuf
	.globl _packetqueue_len
	.globl _packetqueue_dequeue
	.globl _packetqueue_first
	.globl _packetqueue_enqueue_packetbuf
	.globl _collect_neighbor_rtmetric
	.globl _collect_neighbor_rtmetric_link_estimate
	.globl _collect_neighbor_set_congested
	.globl _collect_neighbor_tx_fail
	.globl _collect_neighbor_tx
	.globl _collect_neighbor_update_rtmetric
	.globl _collect_neighbor_list_purge
	.globl _collect_neighbor_list_best
	.globl _collect_neighbor_list_find
	.globl _collect_neighbor_list_add
	.globl _collect_neighbor_list_new
	.globl _collect_neighbor_list
	.globl _collect_neighbor_init
	.globl _list_item_next
	.globl _list_head
	.globl _list_init
	.globl _collect_link_estimate_num_estimates
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _unicast_send
	.globl _unicast_close
	.globl _unicast_open
	.globl _channel_set_attributes
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_set_datalen
	.globl _packetbuf_datalen
	.globl _packetbuf_dataptr
	.globl _packetbuf_clear
	.globl _announcement_bump
	.globl _announcement_set_value
	.globl _announcement_remove
	.globl _announcement_register
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _clock_time
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
	.globl _stats
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
	.globl _collect_open
	.globl _collect_set_keepalive
	.globl _collect_close
	.globl _collect_set_sink
	.globl _collect_send
	.globl _collect_depth
	.globl _collect_parent
	.globl _collect_print_stats
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
_recent_packets:
	.ds 96
_recent_packet_ptr:
	.ds 1
_send_queue_memb_memb_count:
	.ds 6
_send_queue_memb_memb_mem:
	.ds 198
_stats::
	.ds 56
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_send_queue_memb:
	.ds 10
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
;Allocation info for local variables in function 'rtmetric_compute'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;n                         Allocated to registers r5 r6 r7 
;rtmetric                  Allocated to registers r3 r4 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:218: rtmetric_compute(struct collect_conn *tc)
;	-----------------------------------------
;	 function rtmetric_compute
;	-----------------------------------------
_rtmetric_compute:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:230: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	a,#0x9C
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x55
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:234: if(n == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	../../core/net/rime/collect.c:235: rtmetric = RTMETRIC_MAX;
	mov	r3,#0xFF
	mov	r4,#0x01
	sjmp	00103$
00102$:
;	../../core/net/rime/collect.c:239: rtmetric = collect_neighbor_rtmetric_link_estimate(n);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	r6,dpl
	mov	r7,dph
	mov	ar3,r6
	mov	ar4,r7
00103$:
;	../../core/net/rime/collect.c:242: return rtmetric;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bump_advertisement'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:251: bump_advertisement(struct collect_conn *c)
;	-----------------------------------------
;	 function bump_advertisement
;	-----------------------------------------
_bump_advertisement:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:256: announcement_bump(&c->announcement);
	mov	a,#0x12
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_announcement_bump
;------------------------------------------------------------
;Allocation info for local variables in function 'update_parent'
;------------------------------------------------------------
;tc                        Allocated to stack - _bp +1
;current                   Allocated to registers r5 r6 r7 
;best                      Allocated to stack - _bp +4
;previous_parent           Allocated to stack - _bp +7
;sloc0                     Allocated to stack - _bp +12
;sloc1                     Allocated to stack - _bp +15
;------------------------------------------------------------
;	../../core/net/rime/collect.c:268: update_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_parent
;	-----------------------------------------
_update_parent:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/rime/collect.c:274: current = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:278: best = collect_neighbor_list_best(&tc->neighbor_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list_best
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/rime/collect.c:297: if(best != NULL) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00138$
	ljmp	00126$
00138$:
;	../../core/net/rime/collect.c:304: if(current == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	../../core/net/rime/collect.c:308: rimeaddr_copy(&tc->parent, &best->addr);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:309: stats.foundroute++;
	mov	dptr,#_stats
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00140$
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r5
	cjne	r5,#0x00,00140$
	inc	r4
00140$:
	mov	dptr,#_stats
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/net/rime/collect.c:310: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
	ljmp	00128$
;	../../core/net/rime/collect.c:313: printf("#A e=%d\n", collect_neighbor_link_estimate(best));
00104$:
;	../../core/net/rime/collect.c:315: if(collect_neighbor_rtmetric_link_estimate(best) +
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	add	a,#0x0C
	mov	r3,a
	clr	a
	addc	a,b
	mov	r4,a
;	../../core/net/rime/collect.c:317: collect_neighbor_rtmetric_link_estimate(current)) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_collect_neighbor_rtmetric_link_estimate
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jc	00141$
	ljmp	00128$
00141$:
;	../../core/net/rime/collect.c:325: rimeaddr_copy(&tc->parent, &best->addr);
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
	mov	a,#0x9C
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:326: stats.newparent++;
	mov	dptr,#(_stats + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00142$
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
	cjne	r6,#0x00,00142$
	inc	r7
00142$:
	mov	dptr,#(_stats + 0x0004)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:329: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../../core/net/rime/collect.c:331: if(DRAW_TREE) {
	ljmp	00128$
;	../../core/net/rime/collect.c:365: printf("#L %d 1\n", tc->parent.u8[0]);
00126$:
;	../../core/net/rime/collect.c:370: if(!rimeaddr_cmp(&tc->parent, &rimeaddr_null)) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	jnz	00124$
;	../../core/net/rime/collect.c:374: stats.routelost++;
	mov	dptr,#(_stats + 0x0008)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00144$
	inc	r5
	cjne	r5,#0x00,00144$
	inc	r6
	cjne	r6,#0x00,00144$
	inc	r7
00144$:
	mov	dptr,#(_stats + 0x0008)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00124$:
;	../../core/net/rime/collect.c:376: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
00128$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_rtmetric'
;------------------------------------------------------------
;tc                        Allocated to stack - _bp +1
;old_rtmetric              Allocated to stack - _bp +4
;new_rtmetric              Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	../../core/net/rime/collect.c:389: update_rtmetric(struct collect_conn *tc)
;	-----------------------------------------
;	 function update_rtmetric
;	-----------------------------------------
_update_rtmetric:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/rime/collect.c:394: if(tc->rtmetric != RTMETRIC_SINK) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r7
	jnz	00126$
	ljmp	00114$
00126$:
;	../../core/net/rime/collect.c:398: old_rtmetric = tc->rtmetric;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
;	../../core/net/rime/collect.c:401: update_parent(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_update_parent
;	../../core/net/rime/collect.c:404: new_rtmetric = rtmetric_compute(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_rtmetric_compute
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:407: if(new_rtmetric == RTMETRIC_SINK) {
	mov	a,r6
	orl	a,r7
	jnz	00102$
;	../../core/net/rime/collect.c:413: new_rtmetric = RTMETRIC_MAX;
	mov	r6,#0xFF
	mov	r7,#0x01
00102$:
;	../../core/net/rime/collect.c:418: tc->rtmetric = new_rtmetric;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/net/rime/collect.c:420: if(tc->is_router) {
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0xA7
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
	pop	ar7
	pop	ar6
	jz	00104$
;	../../core/net/rime/collect.c:423: announcement_set_value(&tc->announcement, tc->rtmetric);
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:440: printf("#A rt=%d,p=%d\n", tc->rtmetric, tc->parent.u8[0]);
	pop	ar7
	pop	ar6
;	../../core/net/rime/collect.c:423: announcement_set_value(&tc->announcement, tc->rtmetric);
00104$:
;	../../core/net/rime/collect.c:434: if(old_rtmetric == RTMETRIC_MAX && new_rtmetric != RTMETRIC_MAX) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0xFF,00114$
	inc	r0
	cjne	@r0,#0x01,00114$
	cjne	r6,#0xFF,00131$
	cjne	r7,#0x01,00131$
	sjmp	00114$
00131$:
;	../../core/net/rime/collect.c:436: send_queued_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
;	../../core/net/rime/collect.c:440: printf("#A rt=%d,p=%d\n", tc->rtmetric, tc->parent.u8[0]);
00114$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enqueue_dummy_packet'
;------------------------------------------------------------
;rexmits                   Allocated to stack - _bp -4
;c                         Allocated to stack - _bp +1
;n                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/collect.c:447: enqueue_dummy_packet(struct collect_conn *c, int rexmits)
;	-----------------------------------------
;	 function enqueue_dummy_packet
;	-----------------------------------------
_enqueue_dummy_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/rime/collect.c:451: packetbuf_clear();
	lcall	_packetbuf_clear
;	../../core/net/rime/collect.c:452: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, c->eseqno - 1);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA6
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
	mov	r4,#0x00
	dec	r2
	cjne	r2,#0xFF,00107$
	dec	r4
00107$:
	push	ar2
	push	ar4
	mov	dpl,#0x15
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:453: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1A
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:454: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:455: packetbuf_set_attr(PACKETBUF_ATTR_TTL, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:456: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	push	ar3
	push	ar4
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:464: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdralloc
;	../../core/net/rime/collect.c:466: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:467: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../../core/net/rime/collect.c:470: c);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/rime/collect.c:469: FORWARD_PACKET_LIFETIME_BASE * rexmits,
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	r4,a
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/rime/collect.c:468: return packetqueue_enqueue_packetbuf(&c->send_queue,
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dpl,r6
	mov	dph,r7
	sjmp	00103$
00102$:
;	../../core/net/rime/collect.c:472: return 0;
	mov	dptr,#0x0000
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;n                         Allocated to stack - _bp -5
;c                         Allocated to stack - _bp +1
;time                      Allocated to registers 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:476: send_packet(struct collect_conn *c, struct collect_neighbor *n)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../core/net/rime/collect.c:489: retransmit_not_sent_callback, c);
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	../../core/net/rime/collect.c:488: ctimer_set(&c->retransmission_timer, time,
	mov	r0,_bp
	inc	r0
	mov	a,#0x34
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
	mov	a,#_retransmit_not_sent_callback
	push	acc
	mov	a,#(_retransmit_not_sent_callback >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/rime/collect.c:490: c->send_time = clock_time();
	mov	r0,_bp
	inc	r0
	mov	a,#0xA8
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_clock_time
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../core/net/rime/collect.c:492: unicast_send(&c->unicast_conn, &n->addr);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	lcall	_unicast_send
	dec	sp
	dec	sp
	dec	sp
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'proactive_probing_callback'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp +1
;c                         Allocated to stack - _bp +4
;i                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - _bp +7
;current_parent            Allocated to stack - _bp +10
;sloc0                     Allocated to stack - _bp +12
;sloc1                     Allocated to stack - _bp +17
;------------------------------------------------------------
;	../../core/net/rime/collect.c:496: proactive_probing_callback(void *ptr)
;	-----------------------------------------
;	 function proactive_probing_callback
;	-----------------------------------------
_proactive_probing_callback:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0A
	mov	sp,a
;	../../core/net/rime/collect.c:498: struct collect_conn *c = ptr;
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
;	../../core/net/rime/collect.c:501: ctimer_set(&c->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	dptr,#0x003C
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x87
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/rime/collect.c:506: if(c->rtmetric != RTMETRIC_SINK && c->rtmetric != RTMETRIC_MAX) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0xA0
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00133$
	ljmp	00115$
00133$:
	cjne	r3,#0xFF,00134$
	cjne	r4,#0x01,00134$
	ljmp	00115$
00134$:
;	../../core/net/rime/collect.c:509: i = packetqueue_first(&c->send_queue);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x4F
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:510: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00135$
	ljmp	00107$
00135$:
;	../../core/net/rime/collect.c:519: for(n = list_head(collect_neighbor_list(&c->neighbor_list));
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x55
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00111$:
;	../../core/net/rime/collect.c:520: n != NULL; n = list_item_next(n)) {
	mov	a,_bp
	add	a,#0x07
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
	jnz	00136$
	ljmp	00107$
00136$:
;	../../core/net/rime/collect.c:521: if(n->rtmetric + COLLECT_LINK_ESTIMATE_UNIT < c->rtmetric &&
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,#0x08
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00137$
	ljmp	00113$
00137$:
;	../../core/net/rime/collect.c:522: collect_link_estimate_num_estimates(&n->le) == 0) {
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0B
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
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_link_estimate_num_estimates
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00138$
	ljmp	00113$
00138$:
;	../../core/net/rime/collect.c:528: rimeaddr_copy(&current_parent, &c->parent);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x9C
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x0A
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:529: rimeaddr_copy(&c->parent, &n->addr);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x9C
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:530: if(enqueue_dummy_packet(c, PROACTIVE_PROBING_REXMITS)) {
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_enqueue_dummy_packet
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jz	00102$
;	../../core/net/rime/collect.c:531: send_queued_packet(c);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
00102$:
;	../../core/net/rime/collect.c:533: rimeaddr_copy(&c->parent, &current_parent);
	mov	a,_bp
	add	a,#0x0A
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x9C
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:534: return;
	sjmp	00115$
00113$:
;	../../core/net/rime/collect.c:520: n != NULL; n = list_item_next(n)) {
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_item_next
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	ljmp	00111$
00107$:
;	../../core/net/rime/collect.c:540: return;
00115$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_queued_packet'
;------------------------------------------------------------
;c                         Allocated to stack - _bp +1
;q                         Allocated to registers r5 r6 r7 
;n                         Allocated to stack - _bp +4
;i                         Allocated to registers r7 r6 r5 
;hdr                       Allocated to stack - _bp +7
;max_mac_rexmits           Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:552: send_queued_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function send_queued_packet
;	-----------------------------------------
_send_queued_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	../../core/net/rime/collect.c:562: if(c->sending) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA3
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
	jz	00102$
;	../../core/net/rime/collect.c:565: return;
	ljmp	00110$
00102$:
;	../../core/net/rime/collect.c:570: i = packetqueue_first(&c->send_queue);
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
;	../../core/net/rime/collect.c:571: if(i == NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r7
	orl	a,r6
	jnz	00104$
;	../../core/net/rime/collect.c:575: return;
	ljmp	00110$
00104$:
;	../../core/net/rime/collect.c:579: q = packetqueue_queuebuf(i);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetqueue_queuebuf
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:580: if(q != NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00126$
	ljmp	00110$
00126$:
;	../../core/net/rime/collect.c:582: queuebuf_to_packetbuf(q);
	push	ar2
	push	ar3
	push	ar4
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
;	../../core/net/rime/collect.c:586: n = collect_neighbor_list_find(&c->neighbor_list, &c->parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
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
	mov	a,#0x55
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
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
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
;	../../core/net/rime/collect.c:588: if(n != NULL) {
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00127$
	ljmp	00106$
00127$:
;	../../core/net/rime/collect.c:600: c->sending = 1;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/rime/collect.c:603: rimeaddr_copy(&c->current_parent, &c->parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
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
	mov	a,#0x9E
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:607: c->transmissions = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:612: c->max_rexmits = packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../../core/net/rime/collect.c:618: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:620: max_mac_rexmits = c->max_rexmits > MAX_MAC_REXMITS?
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x02
	jnc	00112$
;	../../core/net/rime/collect.c:621: MAX_MAC_REXMITS : c->max_rexmits;
	mov	r6,#0x02
	sjmp	00113$
00112$:
	mov	ar6,r7
00113$:
	mov	r7,#0x00
;	../../core/net/rime/collect.c:622: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar6
	push	ar7
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:623: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA2
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
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:625: stats.datasent++;
	mov	dptr,#(_stats + 0x0010)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00129$
	inc	r5
	cjne	r5,#0x00,00129$
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	mov	dptr,#(_stats + 0x0010)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:629: memset(&hdr, 0, sizeof(hdr));
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:630: hdr.rtmetric = c->rtmetric;
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	add	a,#0x02
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
;	../../core/net/rime/collect.c:631: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x04
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
;	../../core/net/rime/collect.c:634: send_packet(c, n);
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
	sjmp	00110$
00106$:
;	../../core/net/rime/collect.c:644: announcement_set_value(&c->announcement, RTMETRIC_MAX);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:645: announcement_bump(&c->announcement);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
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
	lcall	_announcement_bump
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_current_packet'
;------------------------------------------------------------
;c                         Allocated to stack - _bp +1
;q                         Allocated to registers r2 r3 r4 
;n                         Allocated to stack - _bp +4
;i                         Allocated to registers r2 r3 r4 
;hdr                       Allocated to stack - _bp +7
;max_mac_rexmits           Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +19
;------------------------------------------------------------
;	../../core/net/rime/collect.c:658: retransmit_current_packet(struct collect_conn *c)
;	-----------------------------------------
;	 function retransmit_current_packet
;	-----------------------------------------
_retransmit_current_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	../../core/net/rime/collect.c:668: i = packetqueue_first(&c->send_queue);
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../../core/net/rime/collect.c:669: if(i == NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	../../core/net/rime/collect.c:673: return;
	ljmp	00109$
00102$:
;	../../core/net/rime/collect.c:677: q = packetqueue_queuebuf(i);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_queuebuf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../../core/net/rime/collect.c:678: if(q != NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00124$
	ljmp	00109$
00124$:
;	../../core/net/rime/collect.c:680: update_rtmetric(c);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_update_rtmetric
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:683: queuebuf_to_packetbuf(q);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_queuebuf_to_packetbuf
;	../../core/net/rime/collect.c:689: if(!rimeaddr_cmp(&c->current_parent, &c->parent)) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x9E
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
	jnz	00104$
;	../../core/net/rime/collect.c:702: rimeaddr_copy(&c->current_parent, &c->parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
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
	mov	a,#0x9E
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:703: c->transmissions = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	clr	a
	lcall	__gptrput
00104$:
;	../../core/net/rime/collect.c:705: n = collect_neighbor_list_find(&c->neighbor_list, &c->current_parent);
	mov	r0,_bp
	inc	r0
	mov	a,#0x9E
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
	mov	a,#0x55
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:707: if(n != NULL) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00126$
	ljmp	00109$
00126$:
;	../../core/net/rime/collect.c:719: c->sending = 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA3
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
;	../../core/net/rime/collect.c:720: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 1);
	mov	a,#0x01
	lcall	__gptrput
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:721: max_mac_rexmits = c->max_rexmits - c->transmissions > MAX_MAC_REXMITS?
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
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
	mov	r4,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	r5,#0x00
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r6,a
	mov	a,r4
	subb	a,r5
	mov	r7,a
	clr	c
	mov	a,#0x02
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	../../core/net/rime/collect.c:722: MAX_MAC_REXMITS : c->max_rexmits - c->transmissions;
	mov	r7,#0x02
	mov	r6,#0x00
	sjmp	00112$
00111$:
	mov	a,r2
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r4
	subb	a,r5
	mov	r6,a
00112$:
	mov	ar3,r7
	mov	ar4,r6
;	../../core/net/rime/collect.c:723: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, max_mac_rexmits);
	push	ar3
	push	ar4
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:724: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, c->seqno);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA2
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
	mov	r4,#0x00
	push	ar2
	push	ar4
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:728: memset(&hdr, 0, sizeof(hdr));
	mov	a,_bp
	add	a,#0x07
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:729: hdr.rtmetric = c->rtmetric;
	mov	a,_bp
	add	a,#0x07
	mov	r4,a
	add	a,#0x02
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
;	../../core/net/rime/collect.c:730: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct data_msg_hdr));
	mov	r7,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar6
	push	ar4
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar7
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:733: send_packet(c, n);
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_packet
	dec	sp
	dec	sp
	dec	sp
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_next_packet'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:740: send_next_packet(struct collect_conn *tc)
;	-----------------------------------------
;	 function send_next_packet
;	-----------------------------------------
_send_next_packet:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:743: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_dequeue
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:744: tc->seqno = (tc->seqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	a,#0xA2
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
	mov	r0,a
	mov	r1,#0x00
	inc	r0
	cjne	r0,#0x00,00103$
	inc	r1
00103$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r0
	mov	dph,r1
	lcall	__modsint
	mov	r0,dpl
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
;	../../core/net/rime/collect.c:747: ctimer_stop(&tc->retransmission_timer);
	mov	a,#0x34
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ctimer_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:748: tc->sending = 0;
	mov	a,#0xA3
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:749: tc->transmissions = 0;
	mov	a,#0xA4
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:755: send_queued_packet(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_send_queued_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_ack'
;------------------------------------------------------------
;tc                        Allocated to stack - _bp +1
;msg                       Allocated to stack - _bp +4
;n                         Allocated to registers r4 r3 r2 
;sloc0                     Allocated to stack - _bp +8
;------------------------------------------------------------
;	../../core/net/rime/collect.c:759: handle_ack(struct collect_conn *tc)
;	-----------------------------------------
;	 function handle_ack
;	-----------------------------------------
_handle_ack:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../core/net/rime/collect.c:770: &tc->current_parent) &&
	mov	r0,_bp
	inc	r0
	mov	a,#0x9E
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	../../core/net/rime/collect.c:769: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
	mov	dpl,#0x18
	push	ar4
	push	ar3
	push	ar2
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar3
	pop	ar4
	push	ar2
	push	ar3
	push	ar4
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
	jnz	00137$
	ljmp	00116$
00137$:
;	../../core/net/rime/collect.c:771: packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == tc->seqno) {
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	mov	r0,_bp
	inc	r0
	mov	a,#0xA2
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
	mov	a,r6
	cjne	a,ar3,00138$
	mov	a,r7
	cjne	a,ar5,00138$
	sjmp	00139$
00138$:
	ljmp	00116$
00139$:
;	../../core/net/rime/collect.c:779: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
	cjne	r5,#0x00,00140$
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:780: memcpy(&msg, packetbuf_dataptr(), sizeof(struct ack_msg));
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x04
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:788: if(tc->transmissions == 0) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	jnz	00102$
;	../../core/net/rime/collect.c:789: tc->transmissions = MAX_MAC_REXMITS;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
00102$:
;	../../core/net/rime/collect.c:794: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x18
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:793: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	../../core/net/rime/collect.c:796: if(n != NULL) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r4
	orl	a,r3
	jz	00104$
;	../../core/net/rime/collect.c:797: collect_neighbor_tx(n, tc->transmissions);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:798: collect_neighbor_update_rtmetric(n, msg.rtmetric);
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:799: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
	pop	ar2
	pop	ar3
	pop	ar4
00104$:
;	../../core/net/rime/collect.c:815: if(msg.flags & ACK_FLAGS_CONGESTED) {
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jnb	acc.7,00106$
;	../../core/net/rime/collect.c:817: collect_neighbor_set_congested(n);
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar4
	push	ar3
	push	ar2
	lcall	_collect_neighbor_set_congested
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:818: collect_neighbor_tx(n, tc->max_rexmits * 2);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
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
	mov	b,#0x02
	mul	ab
	mov	r5,a
	mov	r7,b
	push	ar4
	push	ar3
	push	ar2
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:819: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
	pop	ar2
	pop	ar3
	pop	ar4
00106$:
;	../../core/net/rime/collect.c:821: if((msg.flags & ACK_FLAGS_DROPPED) == 0) {
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jb	acc.6,00111$
;	../../core/net/rime/collect.c:823: send_next_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_next_packet
	ljmp	00112$
00111$:
;	../../core/net/rime/collect.c:828: if((msg.flags & ACK_FLAGS_LIFETIME_EXCEEDED)) {
	mov	a,r7
	jnb	acc.5,00108$
;	../../core/net/rime/collect.c:829: send_next_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_next_packet
	ljmp	00112$
00108$:
;	../../core/net/rime/collect.c:835: collect_neighbor_tx(n, tc->max_rexmits);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
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
	mov	r7,#0x00
	push	ar5
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_collect_neighbor_tx
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:836: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../../core/net/rime/collect.c:840: retransmit_callback, tc);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/rime/collect.c:839: REXMIT_TIME + (random_rand() % (REXMIT_TIME)),
	push	ar7
	push	ar6
	push	ar5
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r3,a
	anl	b,#0x01
	mov	r4,b
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	mov	a,#0x02
	add	a,r4
	inc	r0
	mov	@r0,a
;	../../core/net/rime/collect.c:838: ctimer_set(&tc->retransmission_timer,
	mov	r0,_bp
	inc	r0
	mov	a,#0x34
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
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00112$:
;	../../core/net/rime/collect.c:846: if(msg.flags & ACK_FLAGS_RTMETRIC_NEEDS_UPDATE) {
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jnb	acc.4,00114$
;	../../core/net/rime/collect.c:847: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
00114$:
;	../../core/net/rime/collect.c:849: set_keepalive_timer(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_keepalive_timer
	sjmp	00119$
00116$:
;	../../core/net/rime/collect.c:851: stats.badack++;
	mov	dptr,#(_stats + 0x001c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00147$
	inc	r5
	cjne	r5,#0x00,00147$
	inc	r6
	cjne	r6,#0x00,00147$
	inc	r7
00147$:
	mov	dptr,#(_stats + 0x001c)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00119$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ack'
;------------------------------------------------------------
;to                        Allocated to stack - _bp -5
;flags                     Allocated to stack - _bp -7
;tc                        Allocated to stack - _bp +1
;ack                       Allocated to stack - _bp +4
;packet_seqno              Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../core/net/rime/collect.c:856: send_ack(struct collect_conn *tc, const rimeaddr_t *to, int flags)
;	-----------------------------------------
;	 function send_ack
;	-----------------------------------------
_send_ack:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/rime/collect.c:859: uint16_t packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
	xch	a,r0
	mov	a,_bp
	add	a,#0x07
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	../../core/net/rime/collect.c:861: packetbuf_clear();
	lcall	_packetbuf_clear
;	../../core/net/rime/collect.c:862: packetbuf_set_datalen(sizeof(struct ack_msg));
	mov	dptr,#0x0004
	lcall	_packetbuf_set_datalen
;	../../core/net/rime/collect.c:863: ack = packetbuf_dataptr();
	lcall	_packetbuf_dataptr
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
;	../../core/net/rime/collect.c:864: memset(ack, 0, sizeof(struct ack_msg));
	mov	a,_bp
	add	a,#0x04
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
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:865: ack->rtmetric = tc->rtmetric;
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
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
;	../../core/net/rime/collect.c:866: ack->flags = flags;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../core/net/rime/collect.c:868: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, to);
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
	mov	dpl,#0x19
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:869: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE, PACKETBUF_ATTR_PACKET_TYPE_ACK);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x0E
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:870: packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x0C
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:871: packetbuf_set_attr(PACKETBUF_ATTR_ERELIABLE, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x17
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:872: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, packet_seqno);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:873: packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS, MAX_ACK_MAC_REXMITS);
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x09
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:874: unicast_send(&tc->unicast_conn, to);
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
	inc	r0
	mov	b,@r0
	lcall	_unicast_send
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:881: RIMESTATS_ADD(acktx);
	mov	dptr,#(_rimestats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	dptr,#(_rimestats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:882: stats.acksent++;
	mov	dptr,#(_stats + 0x000c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	cjne	r6,#0x00,00104$
	inc	r7
00104$:
	mov	dptr,#(_stats + 0x000c)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'add_packet_to_recent_packets'
;------------------------------------------------------------
;tc                        Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +8
;sloc4                     Allocated to stack - _bp +10
;sloc5                     Allocated to stack - _bp +12
;------------------------------------------------------------
;	../../core/net/rime/collect.c:886: add_packet_to_recent_packets(struct collect_conn *tc)
;	-----------------------------------------
;	 function add_packet_to_recent_packets
;	-----------------------------------------
_add_packet_to_recent_packets:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../core/net/rime/collect.c:892: if(packetbuf_datalen() > sizeof(struct data_msg_hdr)) {
	lcall	_packetbuf_datalen
	mov	r3,dpl
	mov	r4,dph
	clr	c
	mov	a,#0x04
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00107$
	ljmp	00103$
00107$:
;	../../core/net/rime/collect.c:893: recent_packets[recent_packet_ptr].eseqno =
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	r3,a
	clr	a
	addc	a,#(_recent_packets >> 8)
	mov	r4,a
	mov	a,#0x05
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
;	../../core/net/rime/collect.c:894: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID);
	mov	dpl,#0x15
	push	ar4
	push	ar3
	lcall	_packetbuf_attr
	mov	r7,dpl
	pop	ar3
	pop	ar4
	mov	dpl,r3
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:896: packetbuf_addr(PACKETBUF_ADDR_ESENDER));
	mov	dpl,#0x1A
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../../core/net/rime/collect.c:895: rimeaddr_copy(&recent_packets[recent_packet_ptr].originator,
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	r7,a
	clr	a
	addc	a,#(_recent_packets >> 8)
	mov	r6,a
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r5,#0x00
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:897: recent_packets[recent_packet_ptr].conn = tc;
	mov	dptr,#_recent_packet_ptr
	movx	a,@dptr
	mov	r6,a
	mov	b,#0x06
	mul	ab
	add	a,#_recent_packets
	mov	dpl,a
	clr	a
	addc	a,#(_recent_packets >> 8)
	mov	dph,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	../../core/net/rime/collect.c:898: recent_packet_ptr = (recent_packet_ptr + 1) % NUM_RECENT_PACKETS;
	mov	r5,#0x00
	inc	r6
	cjne	r6,#0x00,00108$
	inc	r5
00108$:
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	dptr,#_recent_packet_ptr
	mov	a,r5
	movx	@dptr,a
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_received'
;------------------------------------------------------------
;from                      Allocated to stack - _bp -5
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - _bp +1
;i                         Allocated to registers r6 r7 
;hdr                       Allocated to stack - _bp +4
;ackflags                  Allocated to stack - _bp +8
;n                         Allocated to registers r5 r6 r7 
;ack_to                    Allocated to stack - _bp +9
;packet_seqno              Allocated to registers 
;q                         Allocated to registers r7 r6 r5 
;sloc0                     Allocated to stack - _bp +11
;sloc1                     Allocated to stack - _bp +14
;sloc2                     Allocated to stack - _bp +17
;------------------------------------------------------------
;	../../core/net/rime/collect.c:903: node_packet_received(struct unicast_conn *c, const rimeaddr_t *from)
;	-----------------------------------------
;	 function node_packet_received
;	-----------------------------------------
_node_packet_received:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x14
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:905: struct collect_conn *tc = (struct collect_conn *)
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:909: uint8_t ackflags = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/rime/collect.c:912: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct data_msg_hdr));
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:919: packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:918: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:920: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../../core/net/rime/collect.c:921: collect_neighbor_update_rtmetric(n, hdr.rtmetric);
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:922: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
00102$:
;	../../core/net/rime/collect.c:929: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00182$
	ljmp	00135$
00182$:
;	../../core/net/rime/collect.c:934: stats.datarecv++;
	mov	dptr,#(_stats + 0x0014)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00183$
	inc	r5
	cjne	r5,#0x00,00183$
	inc	r6
	cjne	r6,#0x00,00183$
	inc	r7
00183$:
	mov	dptr,#(_stats + 0x0014)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/collect.c:938: rimeaddr_copy(&ack_to, packetbuf_addr(PACKETBUF_ADDR_SENDER));
	mov	dpl,#0x18
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x09
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:939: packet_seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
	mov	dpl,#0x0D
	lcall	_packetbuf_attr
;	../../core/net/rime/collect.c:946: if(packetqueue_len(&tc->send_queue) >= MAX_SENDING_QUEUE / 2) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00150$
;	../../core/net/rime/collect.c:947: ackflags |= ACK_FLAGS_CONGESTED;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x80
;	../../core/net/rime/collect.c:950: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
00150$:
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00137$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00185$
	ljmp	00140$
00185$:
;	../../core/net/rime/collect.c:951: if(recent_packets[i].conn == tc &&
	push	ar6
	push	ar7
	mov	a,r4
	add	a,#_recent_packets
	mov	dpl,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	dph,a
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
	push	ar2
	push	ar3
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
	jz	00187$
	pop	ar7
	pop	ar6
	ljmp	00139$
00187$:
	pop	ar7
	pop	ar6
;	../../core/net/rime/collect.c:952: recent_packets[i].eseqno == packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID) &&
	push	ar6
	push	ar7
	mov	a,r4
	add	a,#_recent_packets
	mov	r2,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,#0x15
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	r6,#0x00
	mov	a,r3
	cjne	a,ar2,00188$
	mov	a,r6
	cjne	a,ar7,00188$
	sjmp	00189$
00188$:
	pop	ar7
	pop	ar6
	ljmp	00139$
00189$:
	pop	ar7
	pop	ar6
;	../../core/net/rime/collect.c:954: packetbuf_addr(PACKETBUF_ADDR_ESENDER))) {
	push	ar6
	push	ar7
	mov	dpl,#0x1A
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_packetbuf_addr
	xch	a,r0
	mov	a,_bp
	add	a,#0x0b
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:953: rimeaddr_cmp(&recent_packets[i].originator,
	mov	a,r4
	add	a,#_recent_packets
	mov	r6,a
	mov	a,r5
	addc	a,#(_recent_packets >> 8)
	mov	r7,a
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r3,#0x00
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0x0b
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
	jz	00139$
;	../../core/net/rime/collect.c:963: send_ack(tc, &ack_to, ackflags);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar4,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x09
	mov	r3,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar4
	push	ar7
	push	ar3
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:964: stats.duprecv++;
	mov	dptr,#(_stats + 0x0020)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00191$
	inc	r6
	cjne	r6,#0x00,00191$
	inc	r5
	cjne	r5,#0x00,00191$
	inc	r4
00191$:
	mov	dptr,#(_stats + 0x0020)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	../../core/net/rime/collect.c:965: return;
	ljmp	00141$
00139$:
;	../../core/net/rime/collect.c:950: for(i = 0; i < NUM_RECENT_PACKETS; i++) {
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00192$
	inc	r7
00192$:
	ljmp	00137$
00140$:
;	../../core/net/rime/collect.c:971: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00193$
	ljmp	00130$
00193$:
;	../../core/net/rime/collect.c:974: add_packet_to_recent_packets(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_add_packet_to_recent_packets
;	../../core/net/rime/collect.c:978: q = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar7,r2
	mov	ar6,r3
	mov	ar5,r4
;	../../core/net/rime/collect.c:979: if(q != NULL) {
	mov	a,r7
	orl	a,r6
	jz	00112$
;	../../core/net/rime/collect.c:980: send_ack(tc, &ack_to, 0);
	mov	a,_bp
	add	a,#0x09
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar7
	push	ar6
	push	ar5
	clr	a
	push	acc
	push	acc
	push	ar4
	push	ar3
	push	ar2
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:981: queuebuf_to_packetbuf(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_queuebuf_to_packetbuf
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:982: queuebuf_free(q);
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_queuebuf_free
	sjmp	00113$
00112$:
;	../../core/net/rime/collect.c:988: stats.ackdrop++;
	mov	dptr,#(_stats + 0x0030)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r7
	cjne	r7,#0x00,00195$
	inc	r6
	cjne	r6,#0x00,00195$
	inc	r5
	cjne	r5,#0x00,00195$
	inc	r4
00195$:
	mov	dptr,#(_stats + 0x0030)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00113$:
;	../../core/net/rime/collect.c:999: packetbuf_hdrreduce(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdrreduce
;	../../core/net/rime/collect.c:1001: if(packetbuf_datalen() > 0 && tc->cb->recv != NULL) {
	lcall	_packetbuf_datalen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00196$
	ljmp	00115$
00196$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x31
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r7
	jz	00115$
;	../../core/net/rime/collect.c:1004: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x13
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	r2,dpl
	mov	ar5,r2
;	../../core/net/rime/collect.c:1003: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x15
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar3
;	../../core/net/rime/collect.c:1002: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1A
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,#00198$
	push	acc
	mov	a,#(00198$ >> 8)
	push	acc
	push	ar7
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00198$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00115$:
;	../../core/net/rime/collect.c:1006: return;
	ljmp	00141$
00130$:
;	../../core/net/rime/collect.c:1007: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) > 1 &&
	mov	dpl,#0x14
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,#0x01
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00199$
	ljmp	00126$
00199$:
;	../../core/net/rime/collect.c:1008: tc->rtmetric != RTMETRIC_MAX) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00200$
	cjne	r7,#0x01,00200$
	ljmp	00126$
00200$:
;	../../core/net/rime/collect.c:1017: if(hdr.rtmetric <= tc->rtmetric) {
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00118$
;	../../core/net/rime/collect.c:1018: ackflags |= ACK_FLAGS_RTMETRIC_NEEDS_UPDATE;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
00118$:
;	../../core/net/rime/collect.c:1022: packetbuf_attr(PACKETBUF_ATTR_HOPS) + 1);
	mov	dpl,#0x13
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
;	../../core/net/rime/collect.c:1021: packetbuf_set_attr(PACKETBUF_ATTR_HOPS,
	push	ar6
	push	ar7
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1024: packetbuf_attr(PACKETBUF_ATTR_TTL) - 1);
	mov	dpl,#0x14
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	add	a,#0xFF
	mov	r6,a
	mov	a,b
	addc	a,#0xFF
	mov	r7,a
;	../../core/net/rime/collect.c:1023: packetbuf_set_attr(PACKETBUF_ATTR_TTL,
	push	ar6
	push	ar7
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1041: if(packetqueue_len(&tc->send_queue) <= MAX_SENDING_QUEUE - MIN_AVAILABLE_QUEUE_ENTRIES &&
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x02
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00202$
	ljmp	00120$
00202$:
;	../../core/net/rime/collect.c:1045: tc)) {
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/rime/collect.c:1044: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r3
	add	a,r3
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	../../core/net/rime/collect.c:1042: packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00120$
;	../../core/net/rime/collect.c:1046: add_packet_to_recent_packets(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_add_packet_to_recent_packets
;	../../core/net/rime/collect.c:1047: send_ack(tc, &ack_to, ackflags);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar4,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x09
	mov	r6,a
	mov	r5,#0x00
	mov	r3,#0x40
	push	ar4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:1048: send_queued_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
	ljmp	00136$
00120$:
;	../../core/net/rime/collect.c:1051: ackflags | ACK_FLAGS_DROPPED | ACK_FLAGS_CONGESTED);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0xC0
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	../../core/net/rime/collect.c:1050: send_ack(tc, &ack_to,
	mov	a,_bp
	add	a,#0x09
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:1054: stats.qdrop++;
	mov	dptr,#(_stats + 0x0024)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00204$
	inc	r5
	cjne	r5,#0x00,00204$
	inc	r6
	cjne	r6,#0x00,00204$
	inc	r7
00204$:
	mov	dptr,#(_stats + 0x0024)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	00136$
00126$:
;	../../core/net/rime/collect.c:1056: } else if(packetbuf_attr(PACKETBUF_ATTR_TTL) <= 1) {
	mov	dpl,#0x14
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00205$
	ljmp	00136$
00205$:
;	../../core/net/rime/collect.c:1061: ACK_FLAGS_DROPPED | ACK_FLAGS_LIFETIME_EXCEEDED);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x60
	orl	a,@r0
	mov	r7,a
	mov	r6,#0x00
;	../../core/net/rime/collect.c:1060: send_ack(tc, &ack_to, ackflags |
	mov	a,_bp
	add	a,#0x09
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_ack
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/net/rime/collect.c:1062: stats.ttldrop++;
	mov	dptr,#(_stats + 0x002c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00206$
	inc	r5
	cjne	r5,#0x00,00206$
	inc	r6
	cjne	r6,#0x00,00206$
	inc	r7
00206$:
	mov	dptr,#(_stats + 0x002c)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00136$
00135$:
;	../../core/net/rime/collect.c:1064: } else if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x01,00136$
	cjne	r7,#0x00,00136$
;	../../core/net/rime/collect.c:1074: handle_ack(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_handle_ack
;	../../core/net/rime/collect.c:1075: stats.ackrecv++;
	mov	dptr,#(_stats + 0x0018)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00209$
	inc	r5
	cjne	r5,#0x00,00209$
	inc	r6
	cjne	r6,#0x00,00209$
	inc	r7
00209$:
	mov	dptr,#(_stats + 0x0018)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00136$:
;	../../core/net/rime/collect.c:1077: return;
00141$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timedout'
;------------------------------------------------------------
;tc                        Allocated to stack - _bp +1
;n                         Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;sloc2                     Allocated to stack - _bp +8
;sloc3                     Allocated to stack - _bp +10
;sloc4                     Allocated to stack - _bp +12
;sloc5                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1081: timedout(struct collect_conn *tc)
;	-----------------------------------------
;	 function timedout
;	-----------------------------------------
_timedout:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0D
	mov	sp,a
;	../../core/net/rime/collect.c:1091: tc->max_rexmits);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
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
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
;	../../core/net/rime/collect.c:1090: tc->current_parent.u8[0], tc->current_parent.u8[1],
	mov	r0,_bp
	inc	r0
	mov	a,#0x9E
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x9E
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
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
;	../../core/net/rime/collect.c:1089: rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1], tc->transmissions,
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	movx	a,@dptr
	mov	r6,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	dptr,#_rimeaddr_node_addr
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
;	../../core/net/rime/collect.c:1088: printf("%d.%d: timedout after %d retransmissions to %d.%d (max retransmissions %d): packet dropped\n",
	push	ar4
	push	ar3
	push	ar2
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
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar7
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
;	../../core/net/rime/collect.c:1093: tc->sending = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA3
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
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:1095: &tc->current_parent);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,#0x9E
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
;	../../core/net/rime/collect.c:1094: n = collect_neighbor_list_find(&tc->neighbor_list,
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
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
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:1096: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../../core/net/rime/collect.c:1097: collect_neighbor_tx_fail(n, tc->max_rexmits);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	push	ar2
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_tx_fail
	dec	sp
	dec	sp
00102$:
;	../../core/net/rime/collect.c:1099: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../../core/net/rime/collect.c:1100: send_next_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_next_packet
;	../../core/net/rime/collect.c:1101: set_keepalive_timer(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_set_keepalive_timer
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'node_packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - _bp -4
;transmissions             Allocated to stack - _bp -6
;c                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - _bp +1
;time                      Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1105: node_packet_sent(struct unicast_conn *c, int status, int transmissions)
;	-----------------------------------------
;	 function node_packet_sent
;	-----------------------------------------
_node_packet_sent:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1107: struct collect_conn *tc = (struct collect_conn *)
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:1111: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00112$
	ljmp	00106$
00112$:
;	../../core/net/rime/collect.c:1114: tc->transmissions += transmissions;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../../core/net/rime/collect.c:1121: if(tc->transmissions >= tc->max_rexmits) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r6
	subb	a,r4
	jc	00102$
;	../../core/net/rime/collect.c:1122: timedout(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_timedout
;	../../core/net/rime/collect.c:1123: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00114$
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
00114$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00106$
00102$:
;	../../core/net/rime/collect.c:1125: clock_time_t time = REXMIT_TIME / 2 + (random_rand() % (REXMIT_TIME / 2));
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	a,#0x01
	add	a,r7
	inc	r0
	mov	@r0,a
;	../../core/net/rime/collect.c:1128: retransmit_callback, tc);
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	../../core/net/rime/collect.c:1127: ctimer_set(&tc->retransmission_timer, time,
	mov	r0,_bp
	inc	r0
	mov	a,#0x34
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
	mov	a,#_retransmit_callback
	push	acc
	mov	a,#(_retransmit_callback >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x04
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
00106$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_not_sent_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1142: retransmit_not_sent_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_not_sent_callback
;	-----------------------------------------
_retransmit_not_sent_callback:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1144: struct collect_conn *c = ptr;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:1147: c->transmissions += MAX_MAC_REXMITS + 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../../core/net/rime/collect.c:1148: retransmit_callback(c);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_retransmit_callback
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'retransmit_callback'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1159: retransmit_callback(void *ptr)
;	-----------------------------------------
;	 function retransmit_callback
;	-----------------------------------------
_retransmit_callback:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1161: struct collect_conn *c = ptr;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:1164: if(c->transmissions >= c->max_rexmits) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA4
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
	mov	r0,_bp
	inc	r0
	mov	a,#0xA5
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r3
	jc	00102$
;	../../core/net/rime/collect.c:1165: timedout(c);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_timedout
;	../../core/net/rime/collect.c:1166: stats.timedout++;
	mov	dptr,#(_stats + 0x0034)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	dptr,#(_stats + 0x0034)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	sjmp	00104$
00102$:
;	../../core/net/rime/collect.c:1168: c->sending = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA3
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
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:1169: retransmit_current_packet(c);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_retransmit_current_packet
00104$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'received_announcement'
;------------------------------------------------------------
;from                      Allocated to stack - _bp -5
;id                        Allocated to stack - _bp -7
;value                     Allocated to stack - _bp -9
;a                         Allocated to registers r5 r6 r7 
;tc                        Allocated to stack - _bp +1
;n                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +10
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1212: received_announcement(struct announcement *a, const rimeaddr_t *from,
;	-----------------------------------------
;	 function received_announcement
;	-----------------------------------------
_received_announcement:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1215: struct collect_conn *tc = (struct collect_conn *)
	mov	a,r5
	add	a,#0xEE
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/collect.c:1219: n = collect_neighbor_list_find(&tc->neighbor_list, from);
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_list_find
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1221: if(n == NULL) {
	mov	a,r2
	orl	a,r3
	jz	00133$
	ljmp	00110$
00133$:
;	../../core/net/rime/collect.c:1224: if(value < tc->rtmetric) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00102$
;	../../core/net/rime/collect.c:1225: collect_neighbor_list_add(&tc->neighbor_list, from, value);
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_add
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
00102$:
;	../../core/net/rime/collect.c:1230: if(value == RTMETRIC_MAX && tc->rtmetric != RTMETRIC_MAX) {
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0xFF,00135$
	inc	r0
	cjne	@r0,#0x01,00135$
	sjmp	00136$
00135$:
	ljmp	00111$
00136$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r6,#0xFF,00137$
	cjne	r7,#0x01,00137$
	sjmp	00111$
00137$:
;	../../core/net/rime/collect.c:1231: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
	sjmp	00111$
00110$:
;	../../core/net/rime/collect.c:1242: if(value == RTMETRIC_MAX &&
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0xFF,00107$
	inc	r0
	cjne	@r0,#0x01,00107$
;	../../core/net/rime/collect.c:1243: collect_neighbor_rtmetric(n) != RTMETRIC_MAX) {
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_collect_neighbor_rtmetric
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0xFF,00140$
	cjne	r7,#0x01,00140$
	sjmp	00107$
00140$:
;	../../core/net/rime/collect.c:1244: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_bump_advertisement
	pop	ar2
	pop	ar3
	pop	ar4
00107$:
;	../../core/net/rime/collect.c:1246: collect_neighbor_update_rtmetric(n, value);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_collect_neighbor_update_rtmetric
	dec	sp
	dec	sp
00111$:
;	../../core/net/rime/collect.c:1252: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../../core/net/rime/collect.c:1255: if(value == RTMETRIC_MAX &&
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0xFF,00115$
	inc	r0
	cjne	@r0,#0x01,00115$
;	../../core/net/rime/collect.c:1256: tc->rtmetric != RTMETRIC_MAX) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	cjne	r5,#0xFF,00143$
	cjne	r6,#0x01,00143$
	sjmp	00115$
00143$:
;	../../core/net/rime/collect.c:1257: announcement_bump(&tc->announcement);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
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
	lcall	_announcement_bump
00115$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_open'
;------------------------------------------------------------
;channels                  Allocated to stack - _bp -4
;is_router                 Allocated to stack - _bp -5
;cb                        Allocated to stack - _bp -8
;tc                        Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1271: collect_open(struct collect_conn *tc, uint16_t channels,
;	-----------------------------------------
;	 function collect_open
;	-----------------------------------------
_collect_open:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	../../core/net/rime/collect.c:1275: unicast_open(&tc->unicast_conn, channels + 1, &unicast_callbacks);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	push	ar4
	push	ar3
	mov	a,#_unicast_callbacks
	push	acc
	mov	a,#(_unicast_callbacks >> 8)
	push	acc
	mov	a,#0x80
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
	lcall	_unicast_open
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:1276: channel_set_attributes(channels + 1, attributes);
	mov	a,#_attributes
	push	acc
	mov	a,#(_attributes >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	_channel_set_attributes
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1277: tc->rtmetric = RTMETRIC_MAX;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/rime/collect.c:1278: tc->cb = cb;
	mov	r0,_bp
	inc	r0
	mov	a,#0x31
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
	add	a,#0xf8
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
;	../../core/net/rime/collect.c:1279: tc->is_router = is_router;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA7
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
;	../../core/net/rime/collect.c:1280: tc->seqno = 10;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA2
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
	mov	a,#0x0A
	lcall	__gptrput
;	../../core/net/rime/collect.c:1281: tc->eseqno = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA6
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
;	../../core/net/rime/collect.c:1282: LIST_STRUCT_INIT(tc, send_queue_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x4C
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x49
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_list_init
;	../../core/net/rime/collect.c:1283: collect_neighbor_list_new(&tc->neighbor_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	lcall	_collect_neighbor_list_new
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:1284: tc->send_queue.list = &(tc->send_queue_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../core/net/rime/collect.c:1285: tc->send_queue.memb = &send_queue_memb;
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#_send_queue_memb
	lcall	__gptrput
	inc	dptr
	mov	a,#(_send_queue_memb >> 8)
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/rime/collect.c:1286: collect_neighbor_init();
	lcall	_collect_neighbor_init
;	../../core/net/rime/collect.c:1300: announcement_register(&tc->announcement, channels,
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#_received_announcement
	push	acc
	mov	a,#(_received_announcement >> 8)
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
	lcall	_announcement_register
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/net/rime/collect.c:1303: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1308: proactive_probing_callback, tc);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/rime/collect.c:1307: ctimer_set(&tc->proactive_probing_timer, PROACTIVE_PROBING_INTERVAL,
	push	ar7
	push	ar6
	push	ar5
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	anl	a,#0x7F
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	dptr,#0x003C
	lcall	__mulint
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x87
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
	mov	a,#_proactive_probing_callback
	push	acc
	mov	a,#(_proactive_probing_callback >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_keepalive'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1313: send_keepalive(void *ptr)
;	-----------------------------------------
;	 function send_keepalive
;	-----------------------------------------
_send_keepalive:
;	../../core/net/rime/collect.c:1315: struct collect_conn *c = ptr;
;	../../core/net/rime/collect.c:1317: set_keepalive_timer(c);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_keepalive_timer
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1320: if(c->sending == 0 && packetqueue_len(&c->send_queue) == 0) {
	mov	a,#0xA3
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
	jnz	00106$
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_len
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
;	../../core/net/rime/collect.c:1321: if(enqueue_dummy_packet(c, KEEPALIVE_REXMITS)) {
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_enqueue_dummy_packet
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00106$
;	../../core/net/rime/collect.c:1324: send_queued_packet(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_send_queued_packet
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_keepalive_timer'
;------------------------------------------------------------
;c                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1330: set_keepalive_timer(struct collect_conn *c)
;	-----------------------------------------
;	 function set_keepalive_timer
;	-----------------------------------------
_set_keepalive_timer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/rime/collect.c:1332: if(c->keepalive_period != 0) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x85
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
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	orl	a,r7
	jnz	00108$
	ljmp	00102$
00108$:
;	../../core/net/rime/collect.c:1335: send_keepalive, c);
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x06
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
;	../../core/net/rime/collect.c:1333: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	mov	a,r6
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../../core/net/rime/collect.c:1334: (random_rand() % (c->keepalive_period / 2)),
	push	ar4
	push	ar3
	push	ar2
	lcall	_random_rand
	mov	r5,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	../../core/net/rime/collect.c:1333: ctimer_set(&c->keepalive_timer, (c->keepalive_period / 2) +
	mov	r0,_bp
	inc	r0
	mov	a,#0x70
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
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
	mov	a,#_send_keepalive
	push	acc
	mov	a,#(_send_keepalive >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00104$
00102$:
;	../../core/net/rime/collect.c:1337: ctimer_stop(&c->keepalive_timer);
	mov	r0,_bp
	inc	r0
	mov	a,#0x70
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
00104$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_keepalive'
;------------------------------------------------------------
;period                    Allocated to stack - _bp -4
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1342: collect_set_keepalive(struct collect_conn *c, clock_time_t period)
;	-----------------------------------------
;	 function collect_set_keepalive
;	-----------------------------------------
_collect_set_keepalive:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1344: c->keepalive_period = period;
	mov	a,#0x85
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/rime/collect.c:1345: set_keepalive_timer(c);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_set_keepalive_timer
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_close'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1349: collect_close(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_close
;	-----------------------------------------
_collect_close:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1352: announcement_remove(&tc->announcement);
	mov	a,#0x12
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_announcement_remove
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1356: unicast_close(&tc->unicast_conn);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_unicast_close
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1357: while(packetqueue_first(&tc->send_queue) != NULL) {
00101$:
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_first
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00104$
;	../../core/net/rime/collect.c:1358: packetqueue_dequeue(&tc->send_queue);
	mov	a,#0x4F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetqueue_dequeue
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_set_sink'
;------------------------------------------------------------
;should_be_sink            Allocated to stack - _bp -4
;tc                        Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1363: collect_set_sink(struct collect_conn *tc, int should_be_sink)
;	-----------------------------------------
;	 function collect_set_sink
;	-----------------------------------------
_collect_set_sink:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../../core/net/rime/collect.c:1365: if(should_be_sink) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00117$
	ljmp	00105$
00117$:
;	../../core/net/rime/collect.c:1366: tc->is_router = 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA7
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
;	../../core/net/rime/collect.c:1367: tc->rtmetric = RTMETRIC_SINK;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
;	../../core/net/rime/collect.c:1369: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../../core/net/rime/collect.c:1372: while(packetqueue_len(&tc->send_queue) > 0) {
00101$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_len
	mov	r3,dpl
	mov	r4,dph
	clr	c
	clr	a
	subb	a,r3
	clr	a
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	../../core/net/rime/collect.c:1373: packetqueue_dequeue(&tc->send_queue);
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	lcall	_packetqueue_dequeue
	sjmp	00101$
00103$:
;	../../core/net/rime/collect.c:1377: ctimer_stop(&tc->retransmission_timer);
	mov	r0,_bp
	inc	r0
	mov	a,#0x34
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
	sjmp	00106$
00105$:
;	../../core/net/rime/collect.c:1379: tc->rtmetric = RTMETRIC_MAX;
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	a,#0xFF
	lcall	__gptrput
	inc	dptr
	mov	a,#0x01
	lcall	__gptrput
00106$:
;	../../core/net/rime/collect.c:1382: announcement_set_value(&tc->announcement, tc->rtmetric);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1384: update_rtmetric(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_update_rtmetric
;	../../core/net/rime/collect.c:1386: bump_advertisement(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_bump_advertisement
;	../../core/net/rime/collect.c:1389: printf("#A rt=0,p=0\n");
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_send'
;------------------------------------------------------------
;rexmits                   Allocated to stack - _bp -4
;tc                        Allocated to stack - _bp +1
;n                         Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1394: collect_send(struct collect_conn *tc, int rexmits)
;	-----------------------------------------
;	 function collect_send
;	-----------------------------------------
_collect_send:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/rime/collect.c:1399: packetbuf_set_attr(PACKETBUF_ATTR_EPACKET_ID, tc->eseqno);
	mov	r0,_bp
	inc	r0
	mov	a,#0xA6
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
	mov	r7,a
	mov	r6,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	mov	dpl,#0x15
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/collect.c:1409: tc->eseqno = (tc->eseqno + 1) % (1 << COLLECT_PACKET_ID_BITS);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00131$
	inc	r6
00131$:
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	../../core/net/rime/collect.c:1411: if(tc->eseqno == 0) {
	mov	a,r6
	lcall	__gptrput
	jnz	00102$
;	../../core/net/rime/collect.c:1412: tc->eseqno = ((int)(1 << COLLECT_PACKET_ID_BITS)) / 2;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x80
	lcall	__gptrput
00102$:
;	../../core/net/rime/collect.c:1414: packetbuf_set_addr(PACKETBUF_ADDR_ESENDER, &rimeaddr_node_addr);
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x1A
	lcall	_packetbuf_set_addr
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1415: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1416: packetbuf_set_attr(PACKETBUF_ATTR_TTL, MAX_HOPLIM);
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x14
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1417: if(rexmits > MAX_REXMITS) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0x1F
	subb	a,@r0
	clr	a
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../../core/net/rime/collect.c:1418: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, MAX_REXMITS);
	mov	a,#0x1F
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
	sjmp	00105$
00104$:
;	../../core/net/rime/collect.c:1420: packetbuf_set_attr(PACKETBUF_ATTR_MAX_REXMIT, rexmits);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar7
	mov	dpl,#0x10
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
00105$:
;	../../core/net/rime/collect.c:1428: if(tc->rtmetric == RTMETRIC_SINK) {
	mov	r0,_bp
	inc	r0
	mov	a,#0xA0
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
	orl	a,r5
	jz	00134$
	ljmp	00115$
00134$:
;	../../core/net/rime/collect.c:1429: packetbuf_set_attr(PACKETBUF_ATTR_HOPS, 0);
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x13
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1430: if(tc->cb->recv != NULL) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x31
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	00107$
;	../../core/net/rime/collect.c:1433: packetbuf_attr(PACKETBUF_ATTR_HOPS));
	mov	dpl,#0x13
	push	ar7
	push	ar6
	lcall	_packetbuf_attr
	mov	r4,dpl
;	../../core/net/rime/collect.c:1432: packetbuf_attr(PACKETBUF_ATTR_EPACKET_ID),
	mov	dpl,#0x15
	push	ar4
	lcall	_packetbuf_attr
	mov	r3,dpl
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
;	../../core/net/rime/collect.c:1431: tc->cb->recv(packetbuf_addr(PACKETBUF_ADDR_ESENDER),
	mov	dpl,#0x1A
	lcall	_packetbuf_addr
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar4
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,#00136$
	push	acc
	mov	a,#(00136$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00136$:
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00107$:
;	../../core/net/rime/collect.c:1435: return 1;
	mov	dptr,#0x0001
	ljmp	00117$
00115$:
;	../../core/net/rime/collect.c:1439: packetbuf_hdralloc(sizeof(struct data_msg_hdr));
	mov	dptr,#0x0004
	lcall	_packetbuf_hdralloc
;	../../core/net/rime/collect.c:1444: tc)) {
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/rime/collect.c:1443: packetbuf_attr(PACKETBUF_ATTR_MAX_REXMIT),
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_packetbuf_attr
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r3
	add	a,r3
	add	a,acc
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	../../core/net/rime/collect.c:1441: if(packetqueue_enqueue_packetbuf(&tc->send_queue,
	mov	r0,_bp
	inc	r0
	mov	a,#0x4F
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
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_packetqueue_enqueue_packetbuf
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r6
	orl	a,r7
	jz	00109$
;	../../core/net/rime/collect.c:1445: send_queued_packet(tc);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send_queued_packet
;	../../core/net/rime/collect.c:1446: ret = 1;
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00110$
00109$:
;	../../core/net/rime/collect.c:1451: rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1]);
	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_rimeaddr_node_addr
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	../../core/net/rime/collect.c:1450: printf("%d.%d: drop originated packet: no queuebuf\n",
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/net/rime/collect.c:1452: ret = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
;	../../core/net/rime/collect.c:1456: n = collect_neighbor_list_find(&tc->neighbor_list, &tc->parent);
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x9C
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x55
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
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_collect_neighbor_list_find
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1457: if(n != NULL) {
	mov	a,r5
	orl	a,r6
	pop	ar7
	pop	ar6
	jnz	00116$
;	../../core/net/rime/collect.c:1471: announcement_set_value(&tc->announcement, RTMETRIC_MAX);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	mov	a,#0xFF
	push	acc
	mov	a,#0x01
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_announcement_set_value
	dec	sp
	dec	sp
;	../../core/net/rime/collect.c:1472: announcement_bump(&tc->announcement);
	mov	r0,_bp
	inc	r0
	mov	a,#0x12
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
	lcall	_announcement_bump
	pop	ar6
	pop	ar7
00116$:
;	../../core/net/rime/collect.c:1489: return ret;
	mov	dpl,r6
	mov	dph,r7
00117$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_depth'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1493: collect_depth(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_depth
;	-----------------------------------------
_collect_depth:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1495: return tc->rtmetric;
	mov	a,#0xA0
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
	mov	dpl,r5
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_parent'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1499: collect_parent(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_parent
;	-----------------------------------------
_collect_parent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1501: return &tc->current_parent;
	mov	a,#0x9E
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
;Allocation info for local variables in function 'collect_purge'
;------------------------------------------------------------
;tc                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1505: collect_purge(struct collect_conn *tc)
;	-----------------------------------------
;	 function collect_purge
;	-----------------------------------------
_collect_purge:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect.c:1507: collect_neighbor_list_purge(&tc->neighbor_list);
	mov	a,#0x55
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_collect_neighbor_list_purge
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1508: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	a,#0x9C
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
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1509: update_rtmetric(tc);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_update_rtmetric
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/collect.c:1513: rimeaddr_copy(&tc->parent, &rimeaddr_null);
	mov	a,#0x9C
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_print_stats'
;------------------------------------------------------------
;	../../core/net/rime/collect.c:1517: collect_print_stats(void)
;	-----------------------------------------
;	 function collect_print_stats
;	-----------------------------------------
_collect_print_stats:
;	../../core/net/rime/collect.c:1525: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_attributes:
	.db #0x1A	; 26
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x0D	; 13
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x04	; 4
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x05	; 5
	.db #0x0E	; 14
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
__str_0:
	.ascii "#A e=%d"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "#L %d 0"
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "#L %d 1"
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "#A rt=%d,p=%d"
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "#A s=%d"
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "%d.%d: timedout after %d retransmissions to %d.%d (max retra"
	.ascii "nsmissions %d): packet dropped"
	.db 0x0A
	.db 0x00
_unicast_callbacks:
	.byte _node_packet_received,(_node_packet_received >> 8)
	.byte _node_packet_sent,(_node_packet_sent >> 8)
__str_6:
	.ascii "#A rt=0,p=0"
	.db 0x0A
	.db 0x00
__str_7:
	.ascii "%d.%d: drop originated packet: no queuebuf"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
__xinit__send_queue_memb:
	.byte #0x21,#0x00	; 33
	.byte #0x06,#0x00	; 6
	.byte _send_queue_memb_memb_count,(_send_queue_memb_memb_count >> 8),#0x00
	.byte _send_queue_memb_memb_mem,(_send_queue_memb_memb_mem >> 8),#0x00
	.area CABS    (ABS,CODE)
