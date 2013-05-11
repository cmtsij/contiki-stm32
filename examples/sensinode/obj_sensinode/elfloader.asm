;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:23 2013
;--------------------------------------------------------
	.module elfloader
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _symtab_lookup
	.globl _elfloader_arch_write_rom
	.globl _elfloader_arch_relocate
	.globl _elfloader_arch_allocate_rom
	.globl _elfloader_arch_allocate_ram
	.globl _cfs_seek
	.globl _cfs_read
	.globl _memset
	.globl _strncmp
	.globl _strcmp
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
	.globl _elfloader_autostart_processes
	.globl _elfloader_unknown
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
	.globl _elfloader_init
	.globl _elfloader_load
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
_elfloader_unknown::
	.ds 30
_elfloader_autostart_processes::
	.ds 3
_bss:
	.ds 6
_data:
	.ds 6
_rodata:
	.ds 6
_text:
	.ds 6
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
;Allocation info for local variables in function 'seek_read'
;------------------------------------------------------------
;offset                    Allocated to stack - _bp -4
;buf                       Allocated to stack - _bp -7
;len                       Allocated to stack - _bp -9
;fd                        Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/loader/elfloader.c:150: seek_read(int fd, unsigned int offset, char *buf, int len)
;	-----------------------------------------
;	 function seek_read
;	-----------------------------------------
_seek_read:
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
	push	dpl
	push	dph
;	../../core/loader/elfloader.c:152: cfs_seek(fd, offset, CFS_SEEK_SET);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	a
	push	acc
	push	acc
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_cfs_seek
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/loader/elfloader.c:153: cfs_read(fd, buf, len);
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_cfs_read
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_local_symbol'
;------------------------------------------------------------
;symbol                    Allocated to stack - _bp -5
;symtab                    Allocated to stack - _bp -7
;symtabsize                Allocated to stack - _bp -9
;strtab                    Allocated to stack - _bp -11
;fd                        Allocated to stack - _bp +1
;s                         Allocated to stack - _bp +3
;a                         Allocated to registers r4 r5 
;name                      Allocated to stack - _bp +19
;sect                      Allocated to registers r4 r6 r7 
;sloc0                     Allocated to stack - _bp +49
;sloc1                     Allocated to stack - _bp +51
;sloc2                     Allocated to stack - _bp +55
;sloc3                     Allocated to stack - _bp +56
;sloc4                     Allocated to stack - _bp +59
;------------------------------------------------------------
;	../../core/loader/elfloader.c:177: find_local_symbol(int fd, const char *symbol,
;	-----------------------------------------
;	 function find_local_symbol
;	-----------------------------------------
_find_local_symbol:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x39
	mov	sp,a
;	../../core/loader/elfloader.c:186: for(a = symtab; a < symtab + symtabsize; a += sizeof(s)) {
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	@r0,a
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,_bp
	add	a,#0x37
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x31
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
	pop	ar1
00114$:
	mov	a,_bp
	add	a,#0x31
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00134$
	ljmp	00117$
00134$:
;	../../core/loader/elfloader.c:187: seek_read(fd, a, (char *)&s, sizeof(s));
	mov	a,_bp
	add	a,#0x03
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../../core/loader/elfloader.c:189: if(s.st_name != 0) {
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00135$
	ljmp	00116$
00135$:
;	../../core/loader/elfloader.c:190: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar1
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x38
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:191: if(strcmp(name, symbol) == 0) {
	mov	a,_bp
	add	a,#0x37
	mov	r0,a
	mov	ar2,@r0
	mov	r6,#0x00
	mov	r7,#0x40
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
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar1
	mov	a,r6
	orl	a,r7
	jz	00136$
	ljmp	00116$
00136$:
;	../../core/loader/elfloader.c:192: if(s.st_shndx == bss.number) {
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	add	a,#0x0E
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r2,a
	mov	r7,#0x00
	mov	a,r3
	cjne	a,ar2,00108$
	mov	a,r6
	cjne	a,ar7,00108$
;	../../core/loader/elfloader.c:193: sect = &bss;
	mov	r4,#_bss
	mov	r6,#(_bss >> 8)
	mov	r7,#0x00
	sjmp	00109$
00108$:
;	../../core/loader/elfloader.c:194: } else if(s.st_shndx == data.number) {
	mov	dptr,#_data
	movx	a,@dptr
	mov	r7,a
	mov	r2,#0x00
	mov	a,r3
	cjne	a,ar7,00105$
	mov	a,r6
	cjne	a,ar2,00105$
;	../../core/loader/elfloader.c:195: sect = &data;
	mov	r4,#_data
	mov	r6,#(_data >> 8)
	mov	r7,#0x00
	sjmp	00109$
00105$:
;	../../core/loader/elfloader.c:196: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r7,a
	mov	r2,#0x00
	mov	a,r3
	cjne	a,ar7,00102$
	mov	a,r6
	cjne	a,ar2,00102$
;	../../core/loader/elfloader.c:197: sect = &text;
	mov	r4,#_text
	mov	r6,#(_text >> 8)
	mov	r7,#0x00
	sjmp	00109$
00102$:
;	../../core/loader/elfloader.c:199: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
	sjmp	00118$
00109$:
;	../../core/loader/elfloader.c:201: return &(sect->address[s.st_value]);
	mov	a,#0x03
	add	a,r4
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x33
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
	mov	a,#0x04
	add	a,r5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	sjmp	00118$
00116$:
;	../../core/loader/elfloader.c:186: for(a = symtab; a < symtab + symtabsize; a += sizeof(s)) {
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00114$
00117$:
;	../../core/loader/elfloader.c:205: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00118$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relocate_section'
;------------------------------------------------------------
;section                   Allocated to stack - _bp -4
;size                      Allocated to stack - _bp -6
;sectionaddr               Allocated to stack - _bp -8
;sectionbase               Allocated to stack - _bp -11
;strs                      Allocated to stack - _bp -13
;strtab                    Allocated to stack - _bp -15
;symtab                    Allocated to stack - _bp -17
;symtabsize                Allocated to stack - _bp -19
;using_relas               Allocated to stack - _bp -20
;fd                        Allocated to stack - _bp +1
;rela                      Allocated to stack - _bp +3
;rel_size                  Allocated to stack - _bp +15
;s                         Allocated to stack - _bp +17
;a                         Allocated to stack - _bp +33
;name                      Allocated to stack - _bp +35
;addr                      Allocated to stack - _bp +65
;sect                      Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +68
;sloc1                     Allocated to stack - _bp +69
;sloc2                     Allocated to stack - _bp +71
;sloc3                     Allocated to stack - _bp +72
;sloc4                     Allocated to stack - _bp +75
;sloc5                     Allocated to stack - _bp +79
;sloc6                     Allocated to stack - _bp +80
;------------------------------------------------------------
;	../../core/loader/elfloader.c:209: relocate_section(int fd,
;	-----------------------------------------
;	 function relocate_section
;	-----------------------------------------
_relocate_section:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x51
	mov	sp,a
;	../../core/loader/elfloader.c:228: if(using_relas) {
	mov	a,_bp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	jz	00102$
;	../../core/loader/elfloader.c:229: rel_size = sizeof(struct elf32_rela);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x0C
	inc	r0
	mov	@r0,#0x00
	sjmp	00103$
00102$:
;	../../core/loader/elfloader.c:231: rel_size = sizeof(struct elf32_rel);
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x08
	inc	r0
	mov	@r0,#0x00
00103$:
;	../../core/loader/elfloader.c:234: for(a = section; a < section + size; a += rel_size) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x11
	add	a,#0x0E
	mov	r1,a
	mov	a,_bp
	add	a,#0x47
	mov	r0,a
	mov	a,_bp
	add	a,#0x11
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	xch	a,r0
	mov	a,_bp
	add	a,#0x44
	xch	a,r0
	add	a,#0x0E
	mov	@r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0xfa
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x46
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	pop	ar1
00145$:
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x45
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	pop	ar1
	jc	00182$
	ljmp	00148$
00182$:
;	../../core/loader/elfloader.c:235: seek_read(fd, a, (char *)&rela, rel_size);
	push	ar1
	mov	a,_bp
	add	a,#0x03
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x40
	push	ar1
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
	mov	a,_bp
	add	a,#0x21
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
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
;	../../core/loader/elfloader.c:238: (char *)&s, sizeof(s));
	mov	a,_bp
	add	a,#0x11
	mov	r5,a
	mov	a,_bp
	add	a,#0x48
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
;	../../core/loader/elfloader.c:237: symtab + sizeof(struct elf32_sym) * ELF32_R_SYM(rela.r_info),
	mov	a,_bp
	add	a,#0x03
	add	a,#0x04
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	ar2,r5
	mov	ar5,r6
	mov	a,r5
	swap	a
	anl	a,#0xF0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xF0
	xch	a,r2
	xrl	a,r2
	mov	r5,a
	mov	a,_bp
	add	a,#0xef
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	../../core/loader/elfloader.c:236: seek_read(fd,
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x48
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:239: if(s.st_name != 0) {
	mov	a,_bp
	add	a,#0x47
	mov	r0,a
	mov	a,_bp
	add	a,#0x4b
	mov	r1,a
	mov	ar0,@r0
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r0
	dec	r0
	dec	r0
	pop	ar1
	pop	ar1
	mov	a,_bp
	add	a,#0x4b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00183$
	ljmp	00141$
00183$:
;	../../core/loader/elfloader.c:240: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar1
	mov	a,_bp
	add	a,#0x4f
	mov	r0,a
	mov	a,_bp
	add	a,#0x23
	mov	@r0,a
	mov	a,_bp
	add	a,#0x4f
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x48
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	mov	a,_bp
	add	a,#0xf1
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x4b
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x48
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:242: addr = (char *)symtab_lookup(name);
	mov	a,_bp
	add	a,#0x4f
	mov	r0,a
	mov	ar6,@r0
	mov	r5,#0x00
	mov	r4,#0x40
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	lcall	_symtab_lookup
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar1
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../core/loader/elfloader.c:244: if(addr == NULL) {
	pop	ar1
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00111$
;	../../core/loader/elfloader.c:246: addr = find_local_symbol(fd, name, symtab, symtabsize, strtab);
	mov	a,_bp
	add	a,#0x4f
	mov	r0,a
	mov	ar6,@r0
	mov	r5,#0x00
	mov	r4,#0x40
	push	ar1
	mov	a,_bp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xed
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xef
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_find_local_symbol
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar1
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../core/loader/elfloader.c:247: PRINTF("found address %p\n", addr);
00111$:
;	../../core/loader/elfloader.c:249: if(addr == NULL) {
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00185$
	ljmp	00142$
00185$:
;	../../core/loader/elfloader.c:250: if(s.st_shndx == bss.number) {
	mov	ar5,@r1
	inc	r1
	mov	ar2,@r1
	dec	r1
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	cjne	a,ar4,00124$
	mov	a,r2
	cjne	a,ar3,00124$
;	../../core/loader/elfloader.c:251: sect = &bss;
	mov	r2,#_bss
	mov	r3,#(_bss >> 8)
	mov	r4,#0x00
	ljmp	00125$
00124$:
;	../../core/loader/elfloader.c:252: } else if(s.st_shndx == data.number) {
	push	ar1
	mov	dptr,#_data
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	a,r5
	cjne	a,ar6,00188$
	mov	a,r2
	cjne	a,ar7,00188$
	sjmp	00189$
00188$:
	pop	ar1
	sjmp	00121$
00189$:
	pop	ar1
;	../../core/loader/elfloader.c:253: sect = &data;
	mov	r2,#_data
	mov	r3,#(_data >> 8)
	mov	r4,#0x00
	sjmp	00125$
00121$:
;	../../core/loader/elfloader.c:254: } else if(s.st_shndx == rodata.number) {
	mov	dptr,#_rodata
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r5
	cjne	a,ar7,00118$
	mov	a,r2
	cjne	a,ar6,00118$
;	../../core/loader/elfloader.c:255: sect = &rodata;
	mov	r2,#_rodata
	mov	r3,#(_rodata >> 8)
	mov	r4,#0x00
	sjmp	00125$
00118$:
;	../../core/loader/elfloader.c:256: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r5
	cjne	a,ar7,00112$
	mov	a,r2
	cjne	a,ar6,00112$
;	../../core/loader/elfloader.c:257: sect = &text;
	mov	r2,#_text
	mov	r3,#(_text >> 8)
	mov	r4,#0x00
;	../../core/loader/elfloader.c:259: PRINTF("elfloader unknown name: '%30s'\n", name);
	sjmp	00125$
00112$:
;	../../core/loader/elfloader.c:260: memcpy(elfloader_unknown, name, sizeof(elfloader_unknown));
	mov	a,_bp
	add	a,#0x4f
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	dptr,#_elfloader_unknown
	mov	b,#0x00
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	../../core/loader/elfloader.c:261: elfloader_unknown[sizeof(elfloader_unknown) - 1] = 0;
	mov	dptr,#(_elfloader_unknown + 0x001d)
	clr	a
	movx	@dptr,a
;	../../core/loader/elfloader.c:262: return ELFLOADER_SYMBOL_NOT_FOUND;
	mov	dptr,#0x0005
	ljmp	00149$
00125$:
;	../../core/loader/elfloader.c:264: addr = sect->address;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
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
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00142$
00141$:
;	../../core/loader/elfloader.c:267: if(s.st_shndx == bss.number) {
	push	ar1
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	ar0,@r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	dptr,#_bss
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
	mov	a,r4
	cjne	a,ar5,00194$
	mov	a,r3
	cjne	a,ar7,00194$
	sjmp	00195$
00194$:
	pop	ar1
	sjmp	00138$
00195$:
	pop	ar1
;	../../core/loader/elfloader.c:268: sect = &bss;
	mov	r2,#_bss
	mov	r3,#(_bss >> 8)
	mov	r4,#0x00
	sjmp	00139$
00138$:
;	../../core/loader/elfloader.c:269: } else if(s.st_shndx == data.number) {
	mov	dptr,#_data
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00135$
	mov	a,r3
	cjne	a,ar6,00135$
;	../../core/loader/elfloader.c:270: sect = &data;
	mov	r2,#_data
	mov	r3,#(_data >> 8)
	mov	r4,#0x00
	sjmp	00139$
00135$:
;	../../core/loader/elfloader.c:271: } else if(s.st_shndx == rodata.number) {
	mov	dptr,#_rodata
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00132$
	mov	a,r3
	cjne	a,ar6,00132$
;	../../core/loader/elfloader.c:272: sect = &rodata;
	mov	r2,#_rodata
	mov	r3,#(_rodata >> 8)
	mov	r4,#0x00
	sjmp	00139$
00132$:
;	../../core/loader/elfloader.c:273: } else if(s.st_shndx == text.number) {
	mov	dptr,#_text
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,r4
	cjne	a,ar7,00129$
	mov	a,r3
	cjne	a,ar6,00129$
;	../../core/loader/elfloader.c:274: sect = &text;
	mov	r2,#_text
	mov	r3,#(_text >> 8)
	mov	r4,#0x00
	sjmp	00139$
00129$:
;	../../core/loader/elfloader.c:276: return ELFLOADER_SEGMENT_NOT_FOUND;
	mov	dptr,#0x0006
	ljmp	00149$
00139$:
;	../../core/loader/elfloader.c:279: addr = sect->address;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00142$:
;	../../core/loader/elfloader.c:282: if(!using_relas) {
	mov	a,_bp
	add	a,#0xec
	mov	r0,a
	mov	a,@r0
	jz	00202$
	ljmp	00144$
00202$:
;	../../core/loader/elfloader.c:284: seek_read(fd, sectionaddr + rela.r_offset, (char *)&rela.r_addend, 4);
	push	ar1
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	add	a,#0x08
	mov	r7,a
	push	ar0
	mov	a,_bp
	add	a,#0x4b
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x50
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	dec	r0
	dec	r0
	dec	r0
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x50
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x4b
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
;	../../core/loader/elfloader.c:289: return ELFLOADER_OK;
	pop	ar1
;	../../core/loader/elfloader.c:284: seek_read(fd, sectionaddr + rela.r_offset, (char *)&rela.r_addend, 4);
00144$:
;	../../core/loader/elfloader.c:287: elfloader_arch_relocate(fd, sectionaddr, sectionbase, &rela, addr);
	mov	a,_bp
	add	a,#0x03
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,_bp
	add	a,#0x41
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	a,_bp
	add	a,#0xf5
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
	add	a,#0xf8
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
	lcall	_elfloader_arch_relocate
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar1
;	../../core/loader/elfloader.c:234: for(a = section; a < section + size; a += rel_size) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00145$
00148$:
;	../../core/loader/elfloader.c:289: return ELFLOADER_OK;
	mov	dptr,#0x0000
00149$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_program_processes'
;------------------------------------------------------------
;symtab                    Allocated to stack - _bp -4
;size                      Allocated to stack - _bp -6
;strtab                    Allocated to stack - _bp -8
;fd                        Allocated to stack - _bp +1
;s                         Allocated to stack - _bp +3
;a                         Allocated to registers r4 r5 
;name                      Allocated to stack - _bp +19
;sloc0                     Allocated to stack - _bp +49
;sloc1                     Allocated to stack - _bp +51
;sloc2                     Allocated to stack - _bp +55
;sloc3                     Allocated to stack - _bp +56
;sloc4                     Allocated to stack - _bp +59
;------------------------------------------------------------
;	../../core/loader/elfloader.c:293: find_program_processes(int fd,
;	-----------------------------------------
;	 function find_program_processes
;	-----------------------------------------
_find_program_processes:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x39
	mov	sp,a
;	../../core/loader/elfloader.c:301: for(a = symtab; a < symtab + size; a += sizeof(s)) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	@r0,a
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,_bp
	add	a,#0x37
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x31
	mov	r1,a
	mov	a,@r0
	add	a,r4
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	inc	r1
	mov	@r1,a
	pop	ar1
00105$:
	mov	a,_bp
	add	a,#0x31
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00119$
	ljmp	00108$
00119$:
;	../../core/loader/elfloader.c:302: seek_read(fd, a, (char *)&s, sizeof(s));
	mov	a,_bp
	add	a,#0x03
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
	pop	ar4
	pop	ar5
;	../../core/loader/elfloader.c:304: if(s.st_name != 0) {
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00120$
	ljmp	00107$
00120$:
;	../../core/loader/elfloader.c:305: seek_read(fd, strtab + s.st_name, name, sizeof(name));
	push	ar1
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x38
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x40
	pop	ar1
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	push	ar5
	push	ar4
	push	ar1
	mov	a,#0x1E
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:306: if(strcmp(name, "autostart_processes") == 0) {
	mov	a,_bp
	add	a,#0x37
	mov	r0,a
	mov	ar2,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar1
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	../../core/loader/elfloader.c:307: return &data.address[s.st_value];
	mov	dptr,#(_data + 0x0003)
	mov	a,_bp
	add	a,#0x38
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
	mov	a,_bp
	add	a,#0x03
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	sjmp	00109$
00107$:
;	../../core/loader/elfloader.c:301: for(a = symtab; a < symtab + size; a += sizeof(s)) {
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00105$
00108$:
;	../../core/loader/elfloader.c:311: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'elfloader_init'
;------------------------------------------------------------
;	../../core/loader/elfloader.c:316: elfloader_init(void)
;	-----------------------------------------
;	 function elfloader_init
;	-----------------------------------------
_elfloader_init:
;	../../core/loader/elfloader.c:318: elfloader_autostart_processes = NULL;
	mov	dptr,#_elfloader_autostart_processes
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'elfloader_load'
;------------------------------------------------------------
;fd                        Allocated to stack - _bp +1
;ehdr                      Allocated to stack - _bp +3
;shdr                      Allocated to stack - _bp +55
;strtable                  Allocated to stack - _bp +95
;strs                      Allocated to stack - _bp +135
;shdrptr                   Allocated to stack - _bp +137
;nameptr                   Allocated to registers r3 r4 
;name                      Allocated to stack - _bp +139
;i                         Allocated to stack - _bp +151
;shdrnum                   Allocated to stack - _bp +153
;shdrsize                  Allocated to stack - _bp +155
;using_relas               Allocated to stack - _bp +157
;textoff                   Allocated to stack - _bp +158
;textsize                  Allocated to stack - _bp +160
;textrelaoff               Allocated to registers r2 r5 
;textrelasize              Allocated to stack - _bp +192
;dataoff                   Allocated to stack - _bp +162
;datasize                  Allocated to stack - _bp +190
;datarelaoff               Allocated to stack - _bp +172
;datarelasize              Allocated to stack - _bp +188
;rodataoff                 Allocated to stack - _bp +164
;rodatasize                Allocated to stack - _bp +186
;rodatarelaoff             Allocated to stack - _bp +174
;rodatarelasize            Allocated to stack - _bp +178
;symtaboff                 Allocated to stack - _bp +166
;symtabsize                Allocated to stack - _bp +168
;strtaboff                 Allocated to stack - _bp +170
;strtabsize                Allocated to stack - _bp +182
;bsssize                   Allocated to stack - _bp +176
;process                   Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +172
;sloc1                     Allocated to stack - _bp +174
;sloc2                     Allocated to stack - _bp +176
;sloc3                     Allocated to stack - _bp +178
;sloc4                     Allocated to stack - _bp +181
;sloc5                     Allocated to stack - _bp +182
;sloc6                     Allocated to stack - _bp +186
;sloc7                     Allocated to stack - _bp +188
;sloc8                     Allocated to stack - _bp +190
;sloc9                     Allocated to stack - _bp +192
;sloc10                    Allocated to stack - _bp +221
;sloc11                    Allocated to stack - _bp +194
;sloc12                    Allocated to stack - _bp +195
;sloc13                    Allocated to stack - _bp +196
;sloc14                    Allocated to stack - _bp +197
;sloc15                    Allocated to stack - _bp +198
;sloc16                    Allocated to stack - _bp +199
;sloc17                    Allocated to stack - _bp +200
;sloc18                    Allocated to stack - _bp +201
;sloc19                    Allocated to stack - _bp +202
;sloc20                    Allocated to stack - _bp +203
;sloc21                    Allocated to stack - _bp +204
;sloc22                    Allocated to stack - _bp +205
;sloc23                    Allocated to stack - _bp +206
;sloc24                    Allocated to stack - _bp +207
;sloc25                    Allocated to stack - _bp +208
;sloc26                    Allocated to stack - _bp +209
;sloc27                    Allocated to stack - _bp +210
;sloc28                    Allocated to stack - _bp +211
;sloc29                    Allocated to stack - _bp +212
;sloc30                    Allocated to stack - _bp +213
;sloc31                    Allocated to stack - _bp +214
;sloc32                    Allocated to stack - _bp +215
;sloc33                    Allocated to stack - _bp +216
;sloc34                    Allocated to stack - _bp +217
;sloc35                    Allocated to stack - _bp +218
;sloc36                    Allocated to stack - _bp +219
;sloc37                    Allocated to stack - _bp +220
;sloc38                    Allocated to stack - _bp +221
;sloc39                    Allocated to stack - _bp +222
;sloc40                    Allocated to stack - _bp +223
;sloc41                    Allocated to stack - _bp +224
;sloc42                    Allocated to stack - _bp +225
;sloc43                    Allocated to stack - _bp +226
;sloc44                    Allocated to stack - _bp +227
;------------------------------------------------------------
;	../../core/loader/elfloader.c:338: elfloader_load(int fd)
;	-----------------------------------------
;	 function elfloader_load
;	-----------------------------------------
_elfloader_load:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0xE4
	mov	sp,a
;	../../core/loader/elfloader.c:351: unsigned char using_relas = -1;
	mov	a,_bp
	add	a,#0x9d
	mov	r0,a
	mov	@r0,#0xFF
;	../../core/loader/elfloader.c:352: unsigned short textoff = 0, textsize, textrelaoff = 0, textrelasize;
	mov	a,_bp
	add	a,#0x9e
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:353: unsigned short dataoff = 0, datasize, datarelaoff = 0, datarelasize;
	clr	a
	mov	r2,a
	mov	r5,a
	mov	a,_bp
	add	a,#0xa2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xac
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:354: unsigned short rodataoff = 0, rodatasize, rodatarelaoff = 0, rodatarelasize;
	mov	a,_bp
	add	a,#0xa4
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xae
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:355: unsigned short symtaboff = 0, symtabsize;
	mov	a,_bp
	add	a,#0xa6
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:356: unsigned short strtaboff = 0, strtabsize;
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:357: unsigned short bsssize = 0;
	mov	a,_bp
	add	a,#0xb0
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:362: elfloader_unknown[0] = 0;
	mov	dptr,#_elfloader_unknown
	clr	a
	movx	@dptr,a
;	../../core/loader/elfloader.c:365: seek_read(fd, 0, (char *)&ehdr, sizeof(ehdr));
	mov	a,_bp
	add	a,#0x03
	mov	r3,a
	mov	r4,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	mov	a,#0x34
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar7
	clr	a
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:370: if(memcmp(ehdr.e_ident, elf_magic_header, sizeof(elf_magic_header)) != 0) {
	mov	a,_bp
	add	a,#0x03
	mov	r7,a
	mov	r6,#0x00
	mov	r4,#0x40
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	a,#_elf_magic_header
	push	acc
	mov	a,#(_elf_magic_header >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jz	00104$
;	../../core/loader/elfloader.c:372: return ELFLOADER_BAD_ELF_HEADER;
	mov	dptr,#0x0001
	ljmp	00207$
00104$:
;	../../core/loader/elfloader.c:376: shdrptr = ehdr.e_shoff;
	push	ar2
	push	ar5
	mov	a,_bp
	add	a,#0x03
	add	a,#0x20
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x89
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/loader/elfloader.c:377: seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
	mov	a,_bp
	add	a,#0x37
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x89
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
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar5
;	../../core/loader/elfloader.c:380: shdrsize = ehdr.e_shentsize;
	mov	a,_bp
	add	a,#0x03
	mov	r7,a
	add	a,#0x2E
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	mov	a,_bp
	add	a,#0x9b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../core/loader/elfloader.c:381: shdrnum = ehdr.e_shnum;
	mov	a,#0x30
	add	a,r7
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	mov	a,_bp
	add	a,#0x99
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../../core/loader/elfloader.c:387: (char *)&strtable, sizeof(strtable));
	mov	a,_bp
	add	a,#0x5F
	mov	r6,a
	mov	a,_bp
	add	a,#0xb2
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
;	../../core/loader/elfloader.c:386: seek_read(fd, ehdr.e_shoff + shdrsize * ehdr.e_shstrndx,
	mov	a,#0x20
	add	a,r7
	mov	r1,a
	mov	a,_bp
	add	a,#0xb6
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	mov	a,#0x32
	add	a,r7
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	push	ar5
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x9b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar2
	pop	ar5
	clr	a
	mov	r5,a
	mov	r2,a
	mov	a,_bp
	add	a,#0xb6
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	push	ar5
	push	ar2
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xb2
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar5
;	../../core/loader/elfloader.c:392: strs = strtable.sh_offset;
	mov	a,_bp
	add	a,#0x5F
	add	a,#0x10
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x87
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
;	../../core/loader/elfloader.c:415: rodatasize = rodatarelasize = symtabsize = strtabsize = 0;
	mov	a,_bp
	add	a,#0xb6
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb2
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xba
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xbc
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xbe
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xc0
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0xa0
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/loader/elfloader.c:417: bss.number = data.number = rodata.number = text.number = -1;
	mov	dptr,#_text
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#_rodata
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#_data
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#_bss
	mov	a,#0xFF
	movx	@dptr,a
;	../../core/loader/elfloader.c:419: shdrptr = ehdr.e_shoff;
	mov	a,_bp
	add	a,#0x03
	add	a,#0x20
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x89
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
;	../../core/loader/elfloader.c:420: for(i = 0; i < shdrnum; ++i) {
	mov	a,_bp
	add	a,#0xb5
	mov	r0,a
	mov	a,_bp
	add	a,#0x8B
	mov	@r0,a
	mov	a,_bp
	add	a,#0x37
	mov	r7,a
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xc2
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc3
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc4
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc5
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc6
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc7
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc8
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xc9
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xca
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,#0x14
	add	a,r7
	mov	@r1,a
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	a,_bp
	add	a,#0xcc
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,#0x10
	add	a,r7
	mov	@r1,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xce
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xcf
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xd0
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xd1
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xd2
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xd3
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xd4
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xd5
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xd6
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xd7
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xd8
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xd9
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xda
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xdb
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xdc
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xdd
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xde
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xdf
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xe0
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	a,_bp
	add	a,#0xe1
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	a,_bp
	add	a,#0xe2
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	clr	a
	mov	@r1,a
	inc	r1
	mov	@r1,a
;	../../core/loader/elfloader.c:586: return ELFLOADER_NO_STARTPOINT;
	pop	ar5
	pop	ar2
;	../../core/loader/elfloader.c:420: for(i = 0; i < shdrnum; ++i) {
00203$:
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x99
	mov	r1,a
	clr	c
	mov	a,r6
	subb	a,@r1
	mov	a,r7
	inc	r1
	subb	a,@r1
	jc	00261$
	ljmp	00206$
00261$:
;	../../core/loader/elfloader.c:422: seek_read(fd, shdrptr, (char *)&shdr, sizeof(shdr));
	push	ar2
	push	ar5
	mov	a,_bp
	add	a,#0x37
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x89
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
;	../../core/loader/elfloader.c:425: nameptr = strs + shdr.sh_name;
	mov	a,_bp
	add	a,#0x37
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0xe3
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	dec	r1
	dec	r1
	dec	r1
	pop	ar0
	mov	a,_bp
	add	a,#0x87
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0xe3
	mov	r1,a
	mov	a,@r1
	add	a,r3
	mov	r3,a
	inc	r1
	mov	a,@r1
	addc	a,r4
	mov	r4,a
	inc	r1
	mov	a,@r1
	addc	a,r6
	inc	r1
	mov	a,@r1
	addc	a,r7
;	../../core/loader/elfloader.c:426: seek_read(fd, nameptr, name, sizeof(name));
	mov	a,_bp
	add	a,#0xb5
	mov	r1,a
	mov	ar5,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	mov	r1,_bp
	inc	r1
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
;	../../core/loader/elfloader.c:436: if(shdr.sh_type == SHT_SYMTAB/*strncmp(name, ".symtab", 7) == 0*/) {
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	dec	r0
	dec	r0
	cjne	r7,#0x02,00262$
	cjne	r6,#0x00,00262$
	cjne	r4,#0x00,00262$
	cjne	r3,#0x00,00262$
	sjmp	00263$
00262$:
	pop	ar5
	pop	ar2
	sjmp	00148$
00263$:
	pop	ar5
	pop	ar2
;	../../core/loader/elfloader.c:438: symtaboff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xe1
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xa6
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:439: symtabsize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xe2
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xa8
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00148$:
;	../../core/loader/elfloader.c:440: } else if(shdr.sh_type == SHT_STRTAB/*strncmp(name, ".strtab", 7) == 0*/) {
	cjne	r7,#0x03,00145$
	cjne	r6,#0x00,00145$
	cjne	r4,#0x00,00145$
	cjne	r3,#0x00,00145$
;	../../core/loader/elfloader.c:442: strtaboff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xdf
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xaa
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:443: strtabsize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xe0
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xb6
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00145$:
;	../../core/loader/elfloader.c:444: } else if(strncmp(name, ".text", 5) == 0) {
	mov	a,_bp
	add	a,#0xc2
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00142$
;	../../core/loader/elfloader.c:445: textoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xdd
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0x9e
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:446: textsize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xde
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xa0
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:447: text.number = i;
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	mov	ar7,@r1
	mov	dptr,#_text
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:448: text.offset = textoff;
	mov	dptr,#(_text + 0x0001)
	mov	a,_bp
	add	a,#0x9e
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	dptr
	inc	r1
	mov	a,@r1
	movx	@dptr,a
	ljmp	00149$
00142$:
;	../../core/loader/elfloader.c:449: } else if(strncmp(name, ".rel.text", 9) == 0) {
	mov	a,_bp
	add	a,#0xc3
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00139$
;	../../core/loader/elfloader.c:450: using_relas = 0;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x00
;	../../core/loader/elfloader.c:451: textrelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xdb
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	ar2,r3
	mov	ar5,r4
;	../../core/loader/elfloader.c:452: textrelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xdc
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xc0
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00139$:
;	../../core/loader/elfloader.c:453: } else if(strncmp(name, ".rela.text", 10) == 0) {
	mov	a,_bp
	add	a,#0xc4
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00136$
;	../../core/loader/elfloader.c:454: using_relas = 1;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x01
;	../../core/loader/elfloader.c:455: textrelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xd9
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	ar2,r3
	mov	ar5,r4
;	../../core/loader/elfloader.c:456: textrelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xda
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xc0
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00136$:
;	../../core/loader/elfloader.c:457: } else if(strncmp(name, ".data", 5) == 0) {
	mov	a,_bp
	add	a,#0xc5
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00133$
;	../../core/loader/elfloader.c:458: dataoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xd7
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xa2
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:459: datasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xd8
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xbe
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:460: data.number = i;
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	mov	ar7,@r1
	mov	dptr,#_data
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:461: data.offset = dataoff;
	mov	dptr,#(_data + 0x0001)
	mov	a,_bp
	add	a,#0xa2
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	dptr
	inc	r1
	mov	a,@r1
	movx	@dptr,a
	ljmp	00149$
00133$:
;	../../core/loader/elfloader.c:462: } else if(strncmp(name, ".rodata", 7) == 0) {
	mov	a,_bp
	add	a,#0xc6
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x07
	push	acc
	clr	a
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00130$
;	../../core/loader/elfloader.c:464: rodataoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xd5
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xa4
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:465: rodatasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xd6
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xba
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:466: rodata.number = i;
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	mov	ar7,@r1
	mov	dptr,#_rodata
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:467: rodata.offset = rodataoff;
	mov	dptr,#(_rodata + 0x0001)
	mov	a,_bp
	add	a,#0xa4
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
	inc	dptr
	inc	r1
	mov	a,@r1
	movx	@dptr,a
	ljmp	00149$
00130$:
;	../../core/loader/elfloader.c:468: } else if(strncmp(name, ".rel.rodata", 11) == 0) {
	mov	a,_bp
	add	a,#0xc7
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x0B
	push	acc
	clr	a
	push	acc
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00127$
;	../../core/loader/elfloader.c:470: using_relas = 0;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x00
;	../../core/loader/elfloader.c:471: rodatarelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xd3
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xae
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:472: rodatarelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xd4
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xb2
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00127$:
;	../../core/loader/elfloader.c:473: } else if(strncmp(name, ".rela.rodata", 12) == 0) {
	mov	a,_bp
	add	a,#0xc8
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00124$
;	../../core/loader/elfloader.c:474: using_relas = 1;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x01
;	../../core/loader/elfloader.c:475: rodatarelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xd1
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xae
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:476: rodatarelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xd2
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xb2
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00124$:
;	../../core/loader/elfloader.c:477: } else if(strncmp(name, ".rel.data", 9) == 0) {
	mov	a,_bp
	add	a,#0xc9
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x09
	push	acc
	clr	a
	push	acc
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00121$
;	../../core/loader/elfloader.c:479: using_relas = 0;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x00
;	../../core/loader/elfloader.c:480: datarelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xcf
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xac
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:481: datarelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xd0
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xbc
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	ljmp	00149$
00121$:
;	../../core/loader/elfloader.c:482: } else if(strncmp(name, ".rela.data", 10) == 0) {
	mov	a,_bp
	add	a,#0xca
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00118$
;	../../core/loader/elfloader.c:483: using_relas = 1;
	mov	a,_bp
	add	a,#0x9d
	mov	r1,a
	mov	@r1,#0x01
;	../../core/loader/elfloader.c:484: datarelaoff = shdr.sh_offset;
	mov	a,_bp
	add	a,#0xcd
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xac
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:485: datarelasize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xce
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xbc
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	sjmp	00149$
00118$:
;	../../core/loader/elfloader.c:486: } else if(strncmp(name, ".bss", 4) == 0) {
	mov	a,_bp
	add	a,#0xcc
	mov	r1,a
	mov	ar4,@r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar5
	push	ar2
	push	ar0
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar2
	pop	ar5
	mov	a,r6
	orl	a,r7
	jnz	00149$
;	../../core/loader/elfloader.c:487: bsssize = shdr.sh_size;
	mov	a,_bp
	add	a,#0xcb
	mov	r1,a
	mov	ar1,@r1
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_bp
	add	a,#0xb0
	mov	r1,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/loader/elfloader.c:488: bss.number = i;
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	mov	ar7,@r1
	mov	dptr,#_bss
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:489: bss.offset = 0;
	mov	dptr,#(_bss + 0x0001)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00149$:
;	../../core/loader/elfloader.c:493: shdrptr += shdrsize;
	mov	a,_bp
	add	a,#0x89
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x9b
	mov	r0,a
	mov	a,@r0
	add	a,@r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	addc	a,@r1
	mov	@r1,a
	pop	ar0
;	../../core/loader/elfloader.c:420: for(i = 0; i < shdrnum; ++i) {
	mov	a,_bp
	add	a,#0x97
	mov	r1,a
	inc	@r1
	cjne	@r1,#0x00,00276$
	inc	r1
	inc	@r1
00276$:
	ljmp	00203$
00206$:
;	../../core/loader/elfloader.c:496: if(symtabsize == 0) {
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00151$
;	../../core/loader/elfloader.c:497: return ELFLOADER_NO_SYMTAB;
	mov	dptr,#0x0002
	ljmp	00207$
00151$:
;	../../core/loader/elfloader.c:499: if(strtabsize == 0) {
	mov	a,_bp
	add	a,#0xb6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00153$
;	../../core/loader/elfloader.c:500: return ELFLOADER_NO_STRTAB;
	mov	dptr,#0x0003
	ljmp	00207$
00153$:
;	../../core/loader/elfloader.c:502: if(textsize == 0) {
	mov	a,_bp
	add	a,#0xa0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00156$
;	../../core/loader/elfloader.c:503: return ELFLOADER_NO_TEXT;
	mov	dptr,#0x0004
	ljmp	00207$
;	../../core/loader/elfloader.c:506: PRINTF("before allocate ram\n");
00156$:
;	../../core/loader/elfloader.c:507: bss.address = (char *)elfloader_arch_allocate_ram(bsssize + datasize);
	push	ar2
	push	ar5
	mov	a,_bp
	add	a,#0xb0
	mov	r0,a
	mov	a,_bp
	add	a,#0xbe
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar2
	lcall	_elfloader_arch_allocate_ram
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#(_bss + 0x0003)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:508: data.address = (char *)bss.address + bsssize;
	mov	dptr,#(_bss + 0x0003)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0xb0
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_data + 0x0003)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:510: text.address = (char *)elfloader_arch_allocate_rom(textsize + rodatasize);
	mov	a,_bp
	add	a,#0xa0
	mov	r0,a
	mov	a,_bp
	add	a,#0xba
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_elfloader_arch_allocate_rom
	mov	r4,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar5
	mov	dptr,#(_text + 0x0003)
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:511: rodata.address = (char *)text.address + textsize;
	mov	dptr,#(_text + 0x0003)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0xa0
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r3,a
	mov	ar5,r7
	mov	dptr,#(_rodata + 0x0003)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	../../core/loader/elfloader.c:522: if(textrelasize > 0) {
	pop	ar5
	pop	ar2
	mov	a,_bp
	add	a,#0xc0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00174$
;	../../core/loader/elfloader.c:523: ret = relocate_section(fd,
	mov	a,_bp
	add	a,#0x9d
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x87
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x9e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xc0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_relocate_section
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
;	../../core/loader/elfloader.c:530: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00174$
;	../../core/loader/elfloader.c:531: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
;	../../core/loader/elfloader.c:536: PRINTF("elfloader: relocate rodata\n");
00174$:
;	../../core/loader/elfloader.c:537: if(rodatarelasize > 0) {
	mov	a,_bp
	add	a,#0xb2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00282$
	ljmp	00182$
00282$:
;	../../core/loader/elfloader.c:541: rodata.address,
	mov	dptr,#(_rodata + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../core/loader/elfloader.c:538: ret = relocate_section(fd,
	mov	a,_bp
	add	a,#0x9d
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x87
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xa4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xb2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xae
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
	lcall	_relocate_section
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
	mov	ar6,r4
	mov	ar7,r5
;	../../core/loader/elfloader.c:545: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00182$
;	../../core/loader/elfloader.c:547: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
;	../../core/loader/elfloader.c:552: PRINTF("elfloader: relocate data\n");
00182$:
;	../../core/loader/elfloader.c:553: if(datarelasize > 0) {
	mov	a,_bp
	add	a,#0xbc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00284$
	ljmp	00189$
00284$:
;	../../core/loader/elfloader.c:557: data.address,
	mov	dptr,#(_data + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	../../core/loader/elfloader.c:554: ret = relocate_section(fd,
	mov	a,_bp
	add	a,#0x9d
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x87
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xa2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xbc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xac
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
	lcall	_relocate_section
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xee
	mov	sp,a
	mov	ar6,r4
	mov	ar7,r5
;	../../core/loader/elfloader.c:561: if(ret != ELFLOADER_OK) {
	mov	a,r6
	orl	a,r7
	jz	00189$
;	../../core/loader/elfloader.c:563: return ret;
	mov	dpl,r6
	mov	dph,r7
	ljmp	00207$
00189$:
;	../../core/loader/elfloader.c:568: elfloader_arch_write_rom(fd, textoff, textsize, text.address);
	mov	dptr,#(_text + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xa0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x9e
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
	lcall	_elfloader_arch_write_rom
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:569: elfloader_arch_write_rom(fd, rodataoff, rodatasize, rodata.address);
	mov	dptr,#(_rodata + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xba
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa4
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
	lcall	_elfloader_arch_write_rom
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:571: memset(bss.address, 0, bsssize);
	mov	dptr,#(_bss + 0x0003)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0xb0
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
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
;	../../core/loader/elfloader.c:572: seek_read(fd, dataoff, data.address, datasize);
	mov	a,_bp
	add	a,#0xbe
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#(_data + 0x0003)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xa2
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
	lcall	_seek_read
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	../../core/loader/elfloader.c:575: process = (struct process **) find_local_symbol(fd, "autostart_processes", symtaboff, symtabsize, strtaboff);
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_find_local_symbol
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	../../core/loader/elfloader.c:576: if(process != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00194$
;	../../core/loader/elfloader.c:578: elfloader_autostart_processes = process;
	mov	dptr,#_elfloader_autostart_processes
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/loader/elfloader.c:579: return ELFLOADER_OK;
	mov	dptr,#0x0000
;	../../core/loader/elfloader.c:581: PRINTF("elfloader: no autostart\n");
	sjmp	00207$
00194$:
;	../../core/loader/elfloader.c:582: process = (struct process **) find_program_processes(fd, symtaboff, symtabsize, strtaboff);
	mov	a,_bp
	add	a,#0xaa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xa6
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
	lcall	_find_program_processes
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	../../core/loader/elfloader.c:586: return ELFLOADER_NO_STARTPOINT;
	mov	dptr,#0x0007
00207$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_elf_magic_header:
	.db #0x7F	; 127
	.db #0x45	; 69	'E'
	.db #0x4C	; 76	'L'
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
__str_0:
	.ascii "autostart_processes"
	.db 0x00
__str_1:
	.ascii ".text"
	.db 0x00
__str_2:
	.ascii ".rel.text"
	.db 0x00
__str_3:
	.ascii ".rela.text"
	.db 0x00
__str_4:
	.ascii ".data"
	.db 0x00
__str_5:
	.ascii ".rodata"
	.db 0x00
__str_6:
	.ascii ".rel.rodata"
	.db 0x00
__str_7:
	.ascii ".rela.rodata"
	.db 0x00
__str_8:
	.ascii ".rel.data"
	.db 0x00
__str_9:
	.ascii ".rela.data"
	.db 0x00
__str_10:
	.ascii ".bss"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
