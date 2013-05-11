                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
                              4 ; This file was generated Tue Apr 23 09:41:32 2013
                              5 ;--------------------------------------------------------
                              6 	.module contiki_sensinode_main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _random_init
                             14 	.globl _sensinode_sensors_activate
                             15 	.globl _puthex
                             16 	.globl _putstring
                             17 	.globl _netstack_init
                             18 	.globl _packetbuf_set_datalen
                             19 	.globl _packetbuf_dataptr
                             20 	.globl _packetbuf_clear
                             21 	.globl _watchdog_periodic
                             22 	.globl _watchdog_start
                             23 	.globl _watchdog_init
                             24 	.globl _cc2430_rf_set_addr
                             25 	.globl _model_uart_intr_en
                             26 	.globl _model_init
                             27 	.globl _uart1_set_input
                             28 	.globl _uart1_init
                             29 	.globl _leds_off
                             30 	.globl _leds_on
                             31 	.globl _leds_init
                             32 	.globl _bus_init
                             33 	.globl _serial_line_init
                             34 	.globl _serial_line_input_byte
                             35 	.globl _energest_init
                             36 	.globl _rtimer_init
                             37 	.globl _ctimer_init
                             38 	.globl _etimer_next_expiration_time
                             39 	.globl _etimer_pending
                             40 	.globl _etimer_request_poll
                             41 	.globl _clock_time
                             42 	.globl _autostart_start
                             43 	.globl _process_run
                             44 	.globl _process_init
                             45 	.globl _process_start
                             46 	.globl _IRCON2_P2IF
                             47 	.globl _IRCON2_UTX0IF
                             48 	.globl _IRCON2_UTX1IF
                             49 	.globl _IRCON2_P1IF
                             50 	.globl _IRCON2_WDTIF
                             51 	.globl _CY
                             52 	.globl _AC
                             53 	.globl _F0
                             54 	.globl _RS1
                             55 	.globl _RS0
                             56 	.globl _OV
                             57 	.globl _F1
                             58 	.globl _P
                             59 	.globl _IRCON_DMAIF
                             60 	.globl _IRCON_T1IF
                             61 	.globl _IRCON_T2IF
                             62 	.globl _IRCON_T3IF
                             63 	.globl _IRCON_T4IF
                             64 	.globl _IRCON_P0IF
                             65 	.globl _IRCON_STIF
                             66 	.globl _IEN1_DMAIE
                             67 	.globl _IEN1_T1IE
                             68 	.globl _IEN1_T2IE
                             69 	.globl _IEN1_T3IE
                             70 	.globl _IEN1_T4IE
                             71 	.globl _IEN1_P0IE
                             72 	.globl _IEN0_RFERRIE
                             73 	.globl _IEN0_ADCIE
                             74 	.globl _IEN0_URX0IE
                             75 	.globl _IEN0_URX1IE
                             76 	.globl _IEN0_ENCIE
                             77 	.globl _IEN0_STIE
                             78 	.globl _IEN0_EA
                             79 	.globl _EA
                             80 	.globl _P2_4
                             81 	.globl _P2_3
                             82 	.globl _P2_2
                             83 	.globl _P2_1
                             84 	.globl _P2_0
                             85 	.globl _S0CON_ENCIF_0
                             86 	.globl _S0CON_ENCIF_1
                             87 	.globl _P1_7
                             88 	.globl _P1_6
                             89 	.globl _P1_5
                             90 	.globl _P1_4
                             91 	.globl _P1_3
                             92 	.globl _P1_2
                             93 	.globl _P1_1
                             94 	.globl _P1_0
                             95 	.globl _TCON_IT0
                             96 	.globl _TCON_RFERRIF
                             97 	.globl _TCON_IT1
                             98 	.globl _TCON_URX0IF
                             99 	.globl _TCON_ADCIF
                            100 	.globl _TCON_URX1IF
                            101 	.globl _P0_0
                            102 	.globl _P0_1
                            103 	.globl _P0_2
                            104 	.globl _P0_3
                            105 	.globl _P0_4
                            106 	.globl _P0_5
                            107 	.globl _P0_6
                            108 	.globl _P0_7
                            109 	.globl _P2DIR
                            110 	.globl _P1DIR
                            111 	.globl _P0DIR
                            112 	.globl _U1GCR
                            113 	.globl _U1UCR
                            114 	.globl _U1BAUD
                            115 	.globl _U1BUF
                            116 	.globl _U1CSR
                            117 	.globl _P2INP
                            118 	.globl _P1INP
                            119 	.globl _P2SEL
                            120 	.globl _P1SEL
                            121 	.globl _P0SEL
                            122 	.globl _ADCCFG
                            123 	.globl _PERCFG
                            124 	.globl _B
                            125 	.globl _T4CC1
                            126 	.globl _T4CCTL1
                            127 	.globl _T4CC0
                            128 	.globl _T4CCTL0
                            129 	.globl _T4CTL
                            130 	.globl _T4CNT
                            131 	.globl _RFIF
                            132 	.globl _IRCON2
                            133 	.globl _T1CCTL2
                            134 	.globl _T1CCTL1
                            135 	.globl _T1CCTL0
                            136 	.globl _T1CTL
                            137 	.globl _T1CNTH
                            138 	.globl _T1CNTL
                            139 	.globl _RFST
                            140 	.globl _ACC
                            141 	.globl _T1CC2H
                            142 	.globl _T1CC2L
                            143 	.globl _T1CC1H
                            144 	.globl _T1CC1L
                            145 	.globl _T1CC0H
                            146 	.globl _T1CC0L
                            147 	.globl _RFD
                            148 	.globl _TIMIF
                            149 	.globl _DMAREQ
                            150 	.globl _DMAARM
                            151 	.globl _DMA0CFGH
                            152 	.globl _DMA0CFGL
                            153 	.globl _DMA1CFGH
                            154 	.globl _DMA1CFGL
                            155 	.globl _DMAIRQ
                            156 	.globl _PSW
                            157 	.globl _T3CC1
                            158 	.globl _T3CCTL1
                            159 	.globl _T3CC0
                            160 	.globl _T3CCTL0
                            161 	.globl _T3CTL
                            162 	.globl _T3CNT
                            163 	.globl _WDCTL
                            164 	.globl _T2CON
                            165 	.globl _MEMCTR
                            166 	.globl _CLKCON
                            167 	.globl _U0GCR
                            168 	.globl _U0UCR
                            169 	.globl _T2CNF
                            170 	.globl _U0BAUD
                            171 	.globl _U0BUF
                            172 	.globl _IRCON
                            173 	.globl _SLEEP
                            174 	.globl _RNDH
                            175 	.globl _RNDL
                            176 	.globl _ADCH
                            177 	.globl _ADCL
                            178 	.globl _IP1
                            179 	.globl _IEN1
                            180 	.globl _RCCTL
                            181 	.globl _ADCCON3
                            182 	.globl _ADCCON2
                            183 	.globl _ADCCON1
                            184 	.globl _ENCCS
                            185 	.globl _ENCDO
                            186 	.globl _ENCDI
                            187 	.globl _FWDATA
                            188 	.globl _FCTL
                            189 	.globl _FADDRH
                            190 	.globl _FADDRL
                            191 	.globl _FWT
                            192 	.globl _IP0
                            193 	.globl _IEN0
                            194 	.globl _IE
                            195 	.globl _T2THD
                            196 	.globl _T2TLD
                            197 	.globl _T2CAPHPH
                            198 	.globl _T2CAPLPL
                            199 	.globl _T2OF2
                            200 	.globl _T2OF1
                            201 	.globl _T2OF0
                            202 	.globl _P2
                            203 	.globl _PSBANK
                            204 	.globl _FMAP
                            205 	.globl _T2PEROF2
                            206 	.globl _T2PEROF1
                            207 	.globl _T2PEROF0
                            208 	.globl _S1CON
                            209 	.globl _IEN2
                            210 	.globl _HSRC
                            211 	.globl _S0CON
                            212 	.globl _ST2
                            213 	.globl _ST1
                            214 	.globl _ST0
                            215 	.globl _T2CMP
                            216 	.globl __XPAGE
                            217 	.globl _DPS
                            218 	.globl _RFIM
                            219 	.globl _P1
                            220 	.globl _P0INP
                            221 	.globl _P1IEN
                            222 	.globl _PICTL
                            223 	.globl _P2IFG
                            224 	.globl _P1IFG
                            225 	.globl _P0IFG
                            226 	.globl _TCON
                            227 	.globl _PCON
                            228 	.globl _U0CSR
                            229 	.globl _DPH1
                            230 	.globl _DPL1
                            231 	.globl _DPH0
                            232 	.globl _DPL0
                            233 	.globl _SP
                            234 	.globl _P0
                            235 	.globl _node_id
                            236 	.globl _ADC_SHADOW
                            237 	.globl _U1BUF_SHADOW
                            238 	.globl _RFD_SHADOW
                            239 	.globl _U0BUF_SHADOW
                            240 	.globl _RFSTATUS
                            241 	.globl _CHIPID
                            242 	.globl _CHVER
                            243 	.globl _FSMTC1
                            244 	.globl _RXFIFOCNT
                            245 	.globl _IOCFG3
                            246 	.globl _IOCFG2
                            247 	.globl _IOCFG1
                            248 	.globl _IOCFG0
                            249 	.globl _SHORTADDRL
                            250 	.globl _SHORTADDRH
                            251 	.globl _PANIDL
                            252 	.globl _PANIDH
                            253 	.globl _IEEE_ADDR7
                            254 	.globl _IEEE_ADDR6
                            255 	.globl _IEEE_ADDR5
                            256 	.globl _IEEE_ADDR4
                            257 	.globl _IEEE_ADDR3
                            258 	.globl _IEEE_ADDR2
                            259 	.globl _IEEE_ADDR1
                            260 	.globl _IEEE_ADDR0
                            261 	.globl _DACTSTL
                            262 	.globl _DACTSTH
                            263 	.globl _ADCTSTL
                            264 	.globl _ADCTSTH
                            265 	.globl _FSMSTATE
                            266 	.globl _AGCCTRLL
                            267 	.globl _AGCCTRLH
                            268 	.globl _MANORL
                            269 	.globl _MANORH
                            270 	.globl _MANANDL
                            271 	.globl _MANANDH
                            272 	.globl _FSMTCL
                            273 	.globl _FSMTCH
                            274 	.globl _RFPWR
                            275 	.globl _CSPT
                            276 	.globl _CSPCTRL
                            277 	.globl _CSPZ
                            278 	.globl _CSPY
                            279 	.globl _CSPX
                            280 	.globl _FSCTRLL
                            281 	.globl _FSCTRLH
                            282 	.globl _RXCTRL1L
                            283 	.globl _RXCTRL1H
                            284 	.globl _RXCTRL0L
                            285 	.globl _RXCTRL0H
                            286 	.globl _TXCTRLL
                            287 	.globl _TXCTRLH
                            288 	.globl _SYNCWORDL
                            289 	.globl _SYNCWORDH
                            290 	.globl _RSSIL
                            291 	.globl _RSSIH
                            292 	.globl _MDMCTRL1L
                            293 	.globl _MDMCTRL1H
                            294 	.globl _MDMCTRL0L
                            295 	.globl _MDMCTRL0H
                            296 ;--------------------------------------------------------
                            297 ; special function registers
                            298 ;--------------------------------------------------------
                            299 	.area RSEG    (ABS,DATA)
   0000                     300 	.org 0x0000
                    0080    301 _P0	=	0x0080
                    0081    302 _SP	=	0x0081
                    0082    303 _DPL0	=	0x0082
                    0083    304 _DPH0	=	0x0083
                    0084    305 _DPL1	=	0x0084
                    0085    306 _DPH1	=	0x0085
                    0086    307 _U0CSR	=	0x0086
                    0087    308 _PCON	=	0x0087
                    0088    309 _TCON	=	0x0088
                    0089    310 _P0IFG	=	0x0089
                    008A    311 _P1IFG	=	0x008a
                    008B    312 _P2IFG	=	0x008b
                    008C    313 _PICTL	=	0x008c
                    008D    314 _P1IEN	=	0x008d
                    008F    315 _P0INP	=	0x008f
                    0090    316 _P1	=	0x0090
                    0091    317 _RFIM	=	0x0091
                    0092    318 _DPS	=	0x0092
                    0093    319 __XPAGE	=	0x0093
                    0094    320 _T2CMP	=	0x0094
                    0095    321 _ST0	=	0x0095
                    0096    322 _ST1	=	0x0096
                    0097    323 _ST2	=	0x0097
                    0098    324 _S0CON	=	0x0098
                    0099    325 _HSRC	=	0x0099
                    009A    326 _IEN2	=	0x009a
                    009B    327 _S1CON	=	0x009b
                    009C    328 _T2PEROF0	=	0x009c
                    009D    329 _T2PEROF1	=	0x009d
                    009E    330 _T2PEROF2	=	0x009e
                    009F    331 _FMAP	=	0x009f
                    009F    332 _PSBANK	=	0x009f
                    00A0    333 _P2	=	0x00a0
                    00A1    334 _T2OF0	=	0x00a1
                    00A2    335 _T2OF1	=	0x00a2
                    00A3    336 _T2OF2	=	0x00a3
                    00A4    337 _T2CAPLPL	=	0x00a4
                    00A5    338 _T2CAPHPH	=	0x00a5
                    00A6    339 _T2TLD	=	0x00a6
                    00A7    340 _T2THD	=	0x00a7
                    00A8    341 _IE	=	0x00a8
                    00A8    342 _IEN0	=	0x00a8
                    00A9    343 _IP0	=	0x00a9
                    00AB    344 _FWT	=	0x00ab
                    00AC    345 _FADDRL	=	0x00ac
                    00AD    346 _FADDRH	=	0x00ad
                    00AE    347 _FCTL	=	0x00ae
                    00AF    348 _FWDATA	=	0x00af
                    00B1    349 _ENCDI	=	0x00b1
                    00B2    350 _ENCDO	=	0x00b2
                    00B3    351 _ENCCS	=	0x00b3
                    00B4    352 _ADCCON1	=	0x00b4
                    00B5    353 _ADCCON2	=	0x00b5
                    00B6    354 _ADCCON3	=	0x00b6
                    00B7    355 _RCCTL	=	0x00b7
                    00B8    356 _IEN1	=	0x00b8
                    00B9    357 _IP1	=	0x00b9
                    00BA    358 _ADCL	=	0x00ba
                    00BB    359 _ADCH	=	0x00bb
                    00BC    360 _RNDL	=	0x00bc
                    00BD    361 _RNDH	=	0x00bd
                    00BE    362 _SLEEP	=	0x00be
                    00C0    363 _IRCON	=	0x00c0
                    00C1    364 _U0BUF	=	0x00c1
                    00C2    365 _U0BAUD	=	0x00c2
                    00C3    366 _T2CNF	=	0x00c3
                    00C4    367 _U0UCR	=	0x00c4
                    00C5    368 _U0GCR	=	0x00c5
                    00C6    369 _CLKCON	=	0x00c6
                    00C7    370 _MEMCTR	=	0x00c7
                    00C8    371 _T2CON	=	0x00c8
                    00C9    372 _WDCTL	=	0x00c9
                    00CA    373 _T3CNT	=	0x00ca
                    00CB    374 _T3CTL	=	0x00cb
                    00CC    375 _T3CCTL0	=	0x00cc
                    00CD    376 _T3CC0	=	0x00cd
                    00CE    377 _T3CCTL1	=	0x00ce
                    00CF    378 _T3CC1	=	0x00cf
                    00D0    379 _PSW	=	0x00d0
                    00D1    380 _DMAIRQ	=	0x00d1
                    00D2    381 _DMA1CFGL	=	0x00d2
                    00D3    382 _DMA1CFGH	=	0x00d3
                    00D4    383 _DMA0CFGL	=	0x00d4
                    00D5    384 _DMA0CFGH	=	0x00d5
                    00D6    385 _DMAARM	=	0x00d6
                    00D7    386 _DMAREQ	=	0x00d7
                    00D8    387 _TIMIF	=	0x00d8
                    00D9    388 _RFD	=	0x00d9
                    00DA    389 _T1CC0L	=	0x00da
                    00DB    390 _T1CC0H	=	0x00db
                    00DC    391 _T1CC1L	=	0x00dc
                    00DD    392 _T1CC1H	=	0x00dd
                    00DE    393 _T1CC2L	=	0x00de
                    00DF    394 _T1CC2H	=	0x00df
                    00E0    395 _ACC	=	0x00e0
                    00E1    396 _RFST	=	0x00e1
                    00E2    397 _T1CNTL	=	0x00e2
                    00E3    398 _T1CNTH	=	0x00e3
                    00E4    399 _T1CTL	=	0x00e4
                    00E5    400 _T1CCTL0	=	0x00e5
                    00E6    401 _T1CCTL1	=	0x00e6
                    00E7    402 _T1CCTL2	=	0x00e7
                    00E8    403 _IRCON2	=	0x00e8
                    00E9    404 _RFIF	=	0x00e9
                    00EA    405 _T4CNT	=	0x00ea
                    00EB    406 _T4CTL	=	0x00eb
                    00EC    407 _T4CCTL0	=	0x00ec
                    00ED    408 _T4CC0	=	0x00ed
                    00EE    409 _T4CCTL1	=	0x00ee
                    00EF    410 _T4CC1	=	0x00ef
                    00F0    411 _B	=	0x00f0
                    00F1    412 _PERCFG	=	0x00f1
                    00F2    413 _ADCCFG	=	0x00f2
                    00F3    414 _P0SEL	=	0x00f3
                    00F4    415 _P1SEL	=	0x00f4
                    00F5    416 _P2SEL	=	0x00f5
                    00F6    417 _P1INP	=	0x00f6
                    00F7    418 _P2INP	=	0x00f7
                    00F8    419 _U1CSR	=	0x00f8
                    00F9    420 _U1BUF	=	0x00f9
                    00FA    421 _U1BAUD	=	0x00fa
                    00FB    422 _U1UCR	=	0x00fb
                    00FC    423 _U1GCR	=	0x00fc
                    00FD    424 _P0DIR	=	0x00fd
                    00FE    425 _P1DIR	=	0x00fe
                    00FF    426 _P2DIR	=	0x00ff
                            427 ;--------------------------------------------------------
                            428 ; special function bits
                            429 ;--------------------------------------------------------
                            430 	.area RSEG    (ABS,DATA)
   0000                     431 	.org 0x0000
                    0087    432 _P0_7	=	0x0087
                    0086    433 _P0_6	=	0x0086
                    0085    434 _P0_5	=	0x0085
                    0084    435 _P0_4	=	0x0084
                    0083    436 _P0_3	=	0x0083
                    0082    437 _P0_2	=	0x0082
                    0081    438 _P0_1	=	0x0081
                    0080    439 _P0_0	=	0x0080
                    008F    440 _TCON_URX1IF	=	0x008f
                    008D    441 _TCON_ADCIF	=	0x008d
                    008B    442 _TCON_URX0IF	=	0x008b
                    008A    443 _TCON_IT1	=	0x008a
                    0089    444 _TCON_RFERRIF	=	0x0089
                    0088    445 _TCON_IT0	=	0x0088
                    0090    446 _P1_0	=	0x0090
                    0091    447 _P1_1	=	0x0091
                    0092    448 _P1_2	=	0x0092
                    0093    449 _P1_3	=	0x0093
                    0094    450 _P1_4	=	0x0094
                    0095    451 _P1_5	=	0x0095
                    0096    452 _P1_6	=	0x0096
                    0097    453 _P1_7	=	0x0097
                    0099    454 _S0CON_ENCIF_1	=	0x0099
                    0098    455 _S0CON_ENCIF_0	=	0x0098
                    00A0    456 _P2_0	=	0x00a0
                    00A1    457 _P2_1	=	0x00a1
                    00A2    458 _P2_2	=	0x00a2
                    00A3    459 _P2_3	=	0x00a3
                    00A4    460 _P2_4	=	0x00a4
                    00AF    461 _EA	=	0x00af
                    00AF    462 _IEN0_EA	=	0x00af
                    00AD    463 _IEN0_STIE	=	0x00ad
                    00AC    464 _IEN0_ENCIE	=	0x00ac
                    00AB    465 _IEN0_URX1IE	=	0x00ab
                    00AA    466 _IEN0_URX0IE	=	0x00aa
                    00A9    467 _IEN0_ADCIE	=	0x00a9
                    00A8    468 _IEN0_RFERRIE	=	0x00a8
                    00BD    469 _IEN1_P0IE	=	0x00bd
                    00BC    470 _IEN1_T4IE	=	0x00bc
                    00BB    471 _IEN1_T3IE	=	0x00bb
                    00BA    472 _IEN1_T2IE	=	0x00ba
                    00B9    473 _IEN1_T1IE	=	0x00b9
                    00B8    474 _IEN1_DMAIE	=	0x00b8
                    00C7    475 _IRCON_STIF	=	0x00c7
                    00C5    476 _IRCON_P0IF	=	0x00c5
                    00C4    477 _IRCON_T4IF	=	0x00c4
                    00C3    478 _IRCON_T3IF	=	0x00c3
                    00C2    479 _IRCON_T2IF	=	0x00c2
                    00C1    480 _IRCON_T1IF	=	0x00c1
                    00C0    481 _IRCON_DMAIF	=	0x00c0
                    00D0    482 _P	=	0x00d0
                    00D1    483 _F1	=	0x00d1
                    00D2    484 _OV	=	0x00d2
                    00D3    485 _RS0	=	0x00d3
                    00D4    486 _RS1	=	0x00d4
                    00D5    487 _F0	=	0x00d5
                    00D6    488 _AC	=	0x00d6
                    00D7    489 _CY	=	0x00d7
                    00EC    490 _IRCON2_WDTIF	=	0x00ec
                    00EB    491 _IRCON2_P1IF	=	0x00eb
                    00EA    492 _IRCON2_UTX1IF	=	0x00ea
                    00E9    493 _IRCON2_UTX0IF	=	0x00e9
                    00E8    494 _IRCON2_P2IF	=	0x00e8
                            495 ;--------------------------------------------------------
                            496 ; overlayable register banks
                            497 ;--------------------------------------------------------
                            498 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     499 	.ds 8
                            500 ;--------------------------------------------------------
                            501 ; internal ram data
                            502 ;--------------------------------------------------------
                            503 	.area DSEG    (DATA)
   0008                     504 _len:
   0008                     505 	.ds 2
   000A                     506 _r:
   000A                     507 	.ds 2
                            508 ;--------------------------------------------------------
                            509 ; overlayable items in internal ram 
                            510 ;--------------------------------------------------------
                            511 	.area OSEG    (OVR,DATA)
                            512 ;--------------------------------------------------------
                            513 ; Stack segment in internal ram 
                            514 ;--------------------------------------------------------
                            515 	.area	SSEG	(DATA)
   0022                     516 __start__stack:
   0022                     517 	.ds	1
                            518 
                            519 ;--------------------------------------------------------
                            520 ; indirectly addressable internal ram data
                            521 ;--------------------------------------------------------
                            522 	.area ISEG    (DATA)
                            523 ;--------------------------------------------------------
                            524 ; absolute internal ram data
                            525 ;--------------------------------------------------------
                            526 	.area IABS    (ABS,DATA)
                            527 	.area IABS    (ABS,DATA)
                            528 ;--------------------------------------------------------
                            529 ; bit data
                            530 ;--------------------------------------------------------
                            531 	.area BSEG    (BIT)
                            532 ;--------------------------------------------------------
                            533 ; paged external ram data
                            534 ;--------------------------------------------------------
                            535 	.area PSEG    (PAG,XDATA)
                            536 ;--------------------------------------------------------
                            537 ; external ram data
                            538 ;--------------------------------------------------------
                            539 	.area XSEG    (XDATA)
                    DF02    540 _MDMCTRL0H	=	0xdf02
                    DF03    541 _MDMCTRL0L	=	0xdf03
                    DF04    542 _MDMCTRL1H	=	0xdf04
                    DF05    543 _MDMCTRL1L	=	0xdf05
                    DF06    544 _RSSIH	=	0xdf06
                    DF07    545 _RSSIL	=	0xdf07
                    DF08    546 _SYNCWORDH	=	0xdf08
                    DF09    547 _SYNCWORDL	=	0xdf09
                    DF0A    548 _TXCTRLH	=	0xdf0a
                    DF0B    549 _TXCTRLL	=	0xdf0b
                    DF0C    550 _RXCTRL0H	=	0xdf0c
                    DF0D    551 _RXCTRL0L	=	0xdf0d
                    DF0E    552 _RXCTRL1H	=	0xdf0e
                    DF0F    553 _RXCTRL1L	=	0xdf0f
                    DF10    554 _FSCTRLH	=	0xdf10
                    DF11    555 _FSCTRLL	=	0xdf11
                    DF12    556 _CSPX	=	0xdf12
                    DF13    557 _CSPY	=	0xdf13
                    DF14    558 _CSPZ	=	0xdf14
                    DF15    559 _CSPCTRL	=	0xdf15
                    DF16    560 _CSPT	=	0xdf16
                    DF17    561 _RFPWR	=	0xdf17
                    DF20    562 _FSMTCH	=	0xdf20
                    DF21    563 _FSMTCL	=	0xdf21
                    DF22    564 _MANANDH	=	0xdf22
                    DF23    565 _MANANDL	=	0xdf23
                    DF24    566 _MANORH	=	0xdf24
                    DF25    567 _MANORL	=	0xdf25
                    DF26    568 _AGCCTRLH	=	0xdf26
                    DF27    569 _AGCCTRLL	=	0xdf27
                    DF39    570 _FSMSTATE	=	0xdf39
                    DF3A    571 _ADCTSTH	=	0xdf3a
                    DF3B    572 _ADCTSTL	=	0xdf3b
                    DF3C    573 _DACTSTH	=	0xdf3c
                    DF3D    574 _DACTSTL	=	0xdf3d
                    DF43    575 _IEEE_ADDR0	=	0xdf43
                    DF44    576 _IEEE_ADDR1	=	0xdf44
                    DF45    577 _IEEE_ADDR2	=	0xdf45
                    DF46    578 _IEEE_ADDR3	=	0xdf46
                    DF47    579 _IEEE_ADDR4	=	0xdf47
                    DF48    580 _IEEE_ADDR5	=	0xdf48
                    DF49    581 _IEEE_ADDR6	=	0xdf49
                    DF4A    582 _IEEE_ADDR7	=	0xdf4a
                    DF4B    583 _PANIDH	=	0xdf4b
                    DF4C    584 _PANIDL	=	0xdf4c
                    DF4D    585 _SHORTADDRH	=	0xdf4d
                    DF4E    586 _SHORTADDRL	=	0xdf4e
                    DF4F    587 _IOCFG0	=	0xdf4f
                    DF50    588 _IOCFG1	=	0xdf50
                    DF51    589 _IOCFG2	=	0xdf51
                    DF52    590 _IOCFG3	=	0xdf52
                    DF53    591 _RXFIFOCNT	=	0xdf53
                    DF54    592 _FSMTC1	=	0xdf54
                    DF60    593 _CHVER	=	0xdf60
                    DF61    594 _CHIPID	=	0xdf61
                    DF62    595 _RFSTATUS	=	0xdf62
                    DFC1    596 _U0BUF_SHADOW	=	0xdfc1
                    DFD9    597 _RFD_SHADOW	=	0xdfd9
                    DFF9    598 _U1BUF_SHADOW	=	0xdff9
                    DFBA    599 _ADC_SHADOW	=	0xdfba
                            600 ;--------------------------------------------------------
                            601 ; absolute external ram data
                            602 ;--------------------------------------------------------
                            603 	.area XABS    (ABS,XDATA)
                            604 ;--------------------------------------------------------
                            605 ; external initialized ram data
                            606 ;--------------------------------------------------------
                            607 	.area XISEG   (XDATA)
   EB04                     608 _node_id::
   EB04                     609 	.ds 2
                            610 	.area HOME    (CODE)
                            611 	.area GSINIT0 (CODE)
                            612 	.area GSINIT1 (CODE)
                            613 	.area GSINIT2 (CODE)
                            614 	.area GSINIT3 (CODE)
                            615 	.area GSINIT4 (CODE)
                            616 	.area GSINIT5 (CODE)
                            617 	.area GSINIT  (CODE)
                            618 	.area GSFINAL (CODE)
                            619 	.area CSEG    (CODE)
                            620 ;--------------------------------------------------------
                            621 ; interrupt vector 
                            622 ;--------------------------------------------------------
                            623 	.area HOME    (CODE)
   0000                     624 __interrupt_vect:
   0000 02 00 B3            625 	ljmp	__sdcc_gsinit_startup
   0003 32                  626 	reti
   0004                     627 	.ds	7
   000B 32                  628 	reti
   000C                     629 	.ds	7
   0013 32                  630 	reti
   0014                     631 	.ds	7
   001B 32                  632 	reti
   001C                     633 	.ds	7
   0023 32                  634 	reti
   0024                     635 	.ds	7
   002B 02 3D 54            636 	ljmp	_clock_ISR
   002E                     637 	.ds	5
   0033 32                  638 	reti
   0034                     639 	.ds	7
   003B 32                  640 	reti
   003C                     641 	.ds	7
   0043 32                  642 	reti
   0044                     643 	.ds	7
   004B 02 2B C6            644 	ljmp	_cc2430_timer_1_ISR
   004E                     645 	.ds	5
   0053 32                  646 	reti
   0054                     647 	.ds	7
   005B 32                  648 	reti
   005C                     649 	.ds	7
   0063 32                  650 	reti
   0064                     651 	.ds	7
   006B 02 06 D3            652 	ljmp	_port_0_ISR
   006E                     653 	.ds	5
   0073 32                  654 	reti
   0074                     655 	.ds	7
   007B 02 07 53            656 	ljmp	_port_1_ISR
                            657 ;--------------------------------------------------------
                            658 ; global & static initialisations
                            659 ;--------------------------------------------------------
                            660 	.area HOME    (CODE)
                            661 	.area GSINIT  (CODE)
                            662 	.area GSFINAL (CODE)
                            663 	.area GSINIT  (CODE)
                            664 	.globl __sdcc_gsinit_startup
                            665 	.globl __sdcc_program_startup
                            666 	.globl __start__stack
                            667 	.globl __mcs51_genXINIT
                            668 	.globl __mcs51_genXRAMCLEAR
                            669 	.globl __mcs51_genRAMCLEAR
                            670 	.area GSFINAL (CODE)
   011B 02 00 7E            671 	ljmp	__sdcc_program_startup
                            672 ;--------------------------------------------------------
                            673 ; Home
                            674 ;--------------------------------------------------------
                            675 	.area HOME    (CODE)
                            676 	.area HOME    (CODE)
   007E                     677 __sdcc_program_startup:
   007E 12 02 97            678 	lcall	_main
                            679 ;	return from main will lock up
   0081 80 FE               680 	sjmp .
                            681 ;--------------------------------------------------------
                            682 ; code
                            683 ;--------------------------------------------------------
                            684 	.area CSEG    (CODE)
                            685 ;------------------------------------------------------------
                            686 ;Allocation info for local variables in function 'fade'
                            687 ;------------------------------------------------------------
                            688 ;l                         Allocated to stack - _bp +1
                            689 ;i                         Allocated to stack - _bp +3
                            690 ;a                         Allocated to stack - _bp +5
                            691 ;k                         Allocated to registers r4 r5 
                            692 ;j                         Allocated to registers r2 r3 
                            693 ;------------------------------------------------------------
                            694 ;	../../platform/sensinode/./contiki-sensinode-main.c:75: fade(int l) CC_NON_BANKED
                            695 ;	-----------------------------------------
                            696 ;	 function fade
                            697 ;	-----------------------------------------
   011E                     698 _fade:
                    0007    699 	ar7 = 0x07
                    0006    700 	ar6 = 0x06
                    0005    701 	ar5 = 0x05
                    0004    702 	ar4 = 0x04
                    0003    703 	ar3 = 0x03
                    0002    704 	ar2 = 0x02
                    0001    705 	ar1 = 0x01
                    0000    706 	ar0 = 0x00
   011E C0 1A               707 	push	_bp
   0120 85 81 1A            708 	mov	_bp,sp
   0123 C0 82               709 	push	dpl
   0125 C0 83               710 	push	dph
   0127 E5 81               711 	mov	a,sp
   0129 24 04               712 	add	a,#0x04
   012B F5 81               713 	mov	sp,a
                            714 ;	../../platform/sensinode/./contiki-sensinode-main.c:79: for(k = 0; k < 400; ++k) {
   012D 7C 00               715 	mov	r4,#0x00
   012F 7D 00               716 	mov	r5,#0x00
   0131                     717 00109$:
   0131 C3                  718 	clr	c
   0132 EC                  719 	mov	a,r4
   0133 94 90               720 	subb	a,#0x90
   0135 ED                  721 	mov	a,r5
   0136 64 80               722 	xrl	a,#0x80
   0138 94 81               723 	subb	a,#0x81
   013A 40 03               724 	jc	00132$
   013C 02 02 1B            725 	ljmp	00113$
   013F                     726 00132$:
                            727 ;	../../platform/sensinode/./contiki-sensinode-main.c:80: j = k > 200? 400 - k: k;
   013F C3                  728 	clr	c
   0140 74 C8               729 	mov	a,#0xC8
   0142 9C                  730 	subb	a,r4
   0143 E4                  731 	clr	a
   0144 64 80               732 	xrl	a,#0x80
   0146 8D F0               733 	mov	b,r5
   0148 63 F0 80            734 	xrl	b,#0x80
   014B 95 F0               735 	subb	a,b
   014D 50 0B               736 	jnc	00115$
   014F 74 90               737 	mov	a,#0x90
   0151 C3                  738 	clr	c
   0152 9C                  739 	subb	a,r4
   0153 FA                  740 	mov	r2,a
   0154 74 01               741 	mov	a,#0x01
   0156 9D                  742 	subb	a,r5
   0157 FB                  743 	mov	r3,a
   0158 80 04               744 	sjmp	00116$
   015A                     745 00115$:
   015A 8C 02               746 	mov	ar2,r4
   015C 8D 03               747 	mov	ar3,r5
   015E                     748 00116$:
                            749 ;	../../platform/sensinode/./contiki-sensinode-main.c:82: leds_on(l);
   015E A8 1A               750 	mov	r0,_bp
   0160 08                  751 	inc	r0
   0161 86 07               752 	mov	ar7,@r0
   0163 8F 82               753 	mov	dpl,r7
   0165 C0 07               754 	push	ar7
   0167 C0 05               755 	push	ar5
   0169 C0 04               756 	push	ar4
   016B C0 03               757 	push	ar3
   016D C0 02               758 	push	ar2
   016F 12 09 2B            759 	lcall	_leds_on
   0172 D0 02               760 	pop	ar2
   0174 D0 03               761 	pop	ar3
   0176 D0 04               762 	pop	ar4
   0178 D0 05               763 	pop	ar5
   017A D0 07               764 	pop	ar7
                            765 ;	../../platform/sensinode/./contiki-sensinode-main.c:83: for(i = 0; i < j; ++i) {
   017C E5 1A               766 	mov	a,_bp
   017E 24 03               767 	add	a,#0x03
   0180 F8                  768 	mov	r0,a
   0181 E4                  769 	clr	a
   0182 F6                  770 	mov	@r0,a
   0183 08                  771 	inc	r0
   0184 F6                  772 	mov	@r0,a
   0185                     773 00101$:
   0185 E5 1A               774 	mov	a,_bp
   0187 24 03               775 	add	a,#0x03
   0189 F8                  776 	mov	r0,a
   018A C3                  777 	clr	c
   018B E6                  778 	mov	a,@r0
   018C 9A                  779 	subb	a,r2
   018D 08                  780 	inc	r0
   018E E6                  781 	mov	a,@r0
   018F 64 80               782 	xrl	a,#0x80
   0191 8B F0               783 	mov	b,r3
   0193 63 F0 80            784 	xrl	b,#0x80
   0196 95 F0               785 	subb	a,b
   0198 50 1F               786 	jnc	00104$
                            787 ;	../../platform/sensinode/./contiki-sensinode-main.c:84: a = i;
   019A E5 1A               788 	mov	a,_bp
   019C 24 03               789 	add	a,#0x03
   019E F8                  790 	mov	r0,a
   019F E5 1A               791 	mov	a,_bp
   01A1 24 05               792 	add	a,#0x05
   01A3 F9                  793 	mov	r1,a
   01A4 E6                  794 	mov	a,@r0
   01A5 F7                  795 	mov	@r1,a
   01A6 08                  796 	inc	r0
   01A7 09                  797 	inc	r1
   01A8 E6                  798 	mov	a,@r0
   01A9 F7                  799 	mov	@r1,a
                            800 ;	../../platform/sensinode/./contiki-sensinode-main.c:83: for(i = 0; i < j; ++i) {
   01AA E5 1A               801 	mov	a,_bp
   01AC 24 03               802 	add	a,#0x03
   01AE F8                  803 	mov	r0,a
   01AF 74 01               804 	mov	a,#0x01
   01B1 26                  805 	add	a,@r0
   01B2 F6                  806 	mov	@r0,a
   01B3 E4                  807 	clr	a
   01B4 08                  808 	inc	r0
   01B5 36                  809 	addc	a,@r0
   01B6 F6                  810 	mov	@r0,a
   01B7 80 CC               811 	sjmp	00101$
   01B9                     812 00104$:
                            813 ;	../../platform/sensinode/./contiki-sensinode-main.c:86: leds_off(l);
   01B9 8F 82               814 	mov	dpl,r7
   01BB C0 05               815 	push	ar5
   01BD C0 04               816 	push	ar4
   01BF C0 03               817 	push	ar3
   01C1 C0 02               818 	push	ar2
   01C3 12 09 42            819 	lcall	_leds_off
   01C6 D0 02               820 	pop	ar2
   01C8 D0 03               821 	pop	ar3
   01CA D0 04               822 	pop	ar4
   01CC D0 05               823 	pop	ar5
                            824 ;	../../platform/sensinode/./contiki-sensinode-main.c:87: for(i = 0; i < 200 - j; ++i) {
   01CE E5 1A               825 	mov	a,_bp
   01D0 24 03               826 	add	a,#0x03
   01D2 F8                  827 	mov	r0,a
   01D3 E4                  828 	clr	a
   01D4 F6                  829 	mov	@r0,a
   01D5 08                  830 	inc	r0
   01D6 F6                  831 	mov	@r0,a
   01D7 74 C8               832 	mov	a,#0xC8
   01D9 C3                  833 	clr	c
   01DA 9A                  834 	subb	a,r2
   01DB FE                  835 	mov	r6,a
   01DC E4                  836 	clr	a
   01DD 9B                  837 	subb	a,r3
   01DE FF                  838 	mov	r7,a
   01DF                     839 00105$:
   01DF E5 1A               840 	mov	a,_bp
   01E1 24 03               841 	add	a,#0x03
   01E3 F8                  842 	mov	r0,a
   01E4 C3                  843 	clr	c
   01E5 E6                  844 	mov	a,@r0
   01E6 9E                  845 	subb	a,r6
   01E7 08                  846 	inc	r0
   01E8 E6                  847 	mov	a,@r0
   01E9 64 80               848 	xrl	a,#0x80
   01EB 8F F0               849 	mov	b,r7
   01ED 63 F0 80            850 	xrl	b,#0x80
   01F0 95 F0               851 	subb	a,b
   01F2 50 1F               852 	jnc	00111$
                            853 ;	../../platform/sensinode/./contiki-sensinode-main.c:88: a = i;
   01F4 E5 1A               854 	mov	a,_bp
   01F6 24 03               855 	add	a,#0x03
   01F8 F8                  856 	mov	r0,a
   01F9 E5 1A               857 	mov	a,_bp
   01FB 24 05               858 	add	a,#0x05
   01FD F9                  859 	mov	r1,a
   01FE E6                  860 	mov	a,@r0
   01FF F7                  861 	mov	@r1,a
   0200 08                  862 	inc	r0
   0201 09                  863 	inc	r1
   0202 E6                  864 	mov	a,@r0
   0203 F7                  865 	mov	@r1,a
                            866 ;	../../platform/sensinode/./contiki-sensinode-main.c:87: for(i = 0; i < 200 - j; ++i) {
   0204 E5 1A               867 	mov	a,_bp
   0206 24 03               868 	add	a,#0x03
   0208 F8                  869 	mov	r0,a
   0209 74 01               870 	mov	a,#0x01
   020B 26                  871 	add	a,@r0
   020C F6                  872 	mov	@r0,a
   020D E4                  873 	clr	a
   020E 08                  874 	inc	r0
   020F 36                  875 	addc	a,@r0
   0210 F6                  876 	mov	@r0,a
   0211 80 CC               877 	sjmp	00105$
   0213                     878 00111$:
                            879 ;	../../platform/sensinode/./contiki-sensinode-main.c:79: for(k = 0; k < 400; ++k) {
   0213 0C                  880 	inc	r4
   0214 BC 00 01            881 	cjne	r4,#0x00,00136$
   0217 0D                  882 	inc	r5
   0218                     883 00136$:
   0218 02 01 31            884 	ljmp	00109$
   021B                     885 00113$:
   021B 85 1A 81            886 	mov	sp,_bp
   021E D0 1A               887 	pop	_bp
   0220 22                  888 	ret
                            889 ;------------------------------------------------------------
                            890 ;Allocation info for local variables in function 'set_rime_addr'
                            891 ;------------------------------------------------------------
                            892 ;addr_long                 Allocated to registers 
                            893 ;addr_short                Allocated to registers r7 r6 
                            894 ;i                         Allocated to registers r4 
                            895 ;macp                      Allocated to registers r7 r6 
                            896 ;------------------------------------------------------------
                            897 ;	../../platform/sensinode/./contiki-sensinode-main.c:94: set_rime_addr(void) CC_NON_BANKED
                            898 ;	-----------------------------------------
                            899 ;	 function set_rime_addr
                            900 ;	-----------------------------------------
   0221                     901 _set_rime_addr:
                            902 ;	../../platform/sensinode/./contiki-sensinode-main.c:105: if(node_id == 0) {
   0221 90 EB 04            903 	mov	dptr,#_node_id
   0224 E0                  904 	movx	a,@dptr
   0225 FE                  905 	mov	r6,a
   0226 A3                  906 	inc	dptr
   0227 E0                  907 	movx	a,@dptr
   0228 FF                  908 	mov	r7,a
   0229 4E                  909 	orl	a,r6
   022A 70 33               910 	jnz	00115$
                            911 ;	../../platform/sensinode/./contiki-sensinode-main.c:116: DISABLE_INTERRUPTS();
   022C C2 AF               912 	clr	_EA
                            913 ;	../../platform/sensinode/./contiki-sensinode-main.c:119: FMAP = 3;
   022E 75 9F 03            914 	mov	_FMAP,#0x03
                            915 ;	../../platform/sensinode/./contiki-sensinode-main.c:124: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
   0231 7F F8               916 	mov	r7,#0xF8
   0233 7E FF               917 	mov	r6,#0xFF
   0235 7C 01               918 	mov	r4,#0x01
   0237                     919 00120$:
   0237 EC                  920 	mov	a,r4
   0238 20 E7 1D            921 	jb	acc.7,00123$
                            922 ;	../../platform/sensinode/./contiki-sensinode-main.c:125: rimeaddr_node_addr.u8[i] = *macp;
   023B EC                  923 	mov	a,r4
   023C 24 04               924 	add	a,#_rimeaddr_node_addr
   023E FA                  925 	mov	r2,a
   023F E4                  926 	clr	a
   0240 34 E3               927 	addc	a,#(_rimeaddr_node_addr >> 8)
   0242 FB                  928 	mov	r3,a
   0243 8F 82               929 	mov	dpl,r7
   0245 8E 83               930 	mov	dph,r6
   0247 E4                  931 	clr	a
   0248 93                  932 	movc	a,@a+dptr
   0249 FD                  933 	mov	r5,a
   024A A3                  934 	inc	dptr
   024B AF 82               935 	mov	r7,dpl
   024D AE 83               936 	mov	r6,dph
   024F 8A 82               937 	mov	dpl,r2
   0251 8B 83               938 	mov	dph,r3
   0253 ED                  939 	mov	a,r5
   0254 F0                  940 	movx	@dptr,a
                            941 ;	../../platform/sensinode/./contiki-sensinode-main.c:126: macp++;
                            942 ;	../../platform/sensinode/./contiki-sensinode-main.c:124: for(i = (RIMEADDR_SIZE - 1); i >= 0; --i) {
   0255 1C                  943 	dec	r4
   0256 80 DF               944 	sjmp	00120$
   0258                     945 00123$:
                            946 ;	../../platform/sensinode/./contiki-sensinode-main.c:130: FMAP = 1;
   0258 75 9F 01            947 	mov	_FMAP,#0x01
                            948 ;	../../platform/sensinode/./contiki-sensinode-main.c:131: ENABLE_INTERRUPTS();
   025B D2 AF               949 	setb	_EA
                            950 ;	../../platform/sensinode/./contiki-sensinode-main.c:134: PUTSTRING("Setting manual address from node_id\n");
   025D 80 0E               951 	sjmp	00119$
   025F                     952 00115$:
                            953 ;	../../platform/sensinode/./contiki-sensinode-main.c:135: rimeaddr_node_addr.u8[RIMEADDR_SIZE - 1] = node_id >> 8;
   025F 8F 05               954 	mov	ar5,r7
   0261 90 E3 05            955 	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
   0264 ED                  956 	mov	a,r5
   0265 F0                  957 	movx	@dptr,a
                            958 ;	../../platform/sensinode/./contiki-sensinode-main.c:136: rimeaddr_node_addr.u8[RIMEADDR_SIZE - 2] = node_id & 0xff;
   0266 7F 00               959 	mov	r7,#0x00
   0268 90 E3 04            960 	mov	dptr,#_rimeaddr_node_addr
   026B EE                  961 	mov	a,r6
   026C F0                  962 	movx	@dptr,a
   026D                     963 00119$:
                            964 ;	../../platform/sensinode/./contiki-sensinode-main.c:155: addr_short = (rimeaddr_node_addr.u8[0] * 256) + rimeaddr_node_addr.u8[1];
   026D 90 E3 04            965 	mov	dptr,#_rimeaddr_node_addr
   0270 E0                  966 	movx	a,@dptr
   0271 FE                  967 	mov	r6,a
   0272 7F 00               968 	mov	r7,#0x00
   0274 90 E3 05            969 	mov	dptr,#(_rimeaddr_node_addr + 0x0001)
   0277 E0                  970 	movx	a,@dptr
   0278 7C 00               971 	mov	r4,#0x00
   027A 2F                  972 	add	a,r7
   027B FF                  973 	mov	r7,a
   027C EC                  974 	mov	a,r4
   027D 3E                  975 	addc	a,r6
   027E FE                  976 	mov	r6,a
                            977 ;	../../platform/sensinode/./contiki-sensinode-main.c:157: cc2430_rf_set_addr(IEEE802154_PANID, addr_short, addr_long);
   027F E4                  978 	clr	a
   0280 C0 E0               979 	push	acc
   0282 C0 E0               980 	push	acc
   0284 C0 E0               981 	push	acc
   0286 C0 07               982 	push	ar7
   0288 C0 06               983 	push	ar6
   028A 90 4C 55            984 	mov	dptr,#0x4C55
   028D 12 26 65            985 	lcall	_cc2430_rf_set_addr
   0290 E5 81               986 	mov	a,sp
   0292 24 FB               987 	add	a,#0xfb
   0294 F5 81               988 	mov	sp,a
   0296 22                  989 	ret
                            990 ;------------------------------------------------------------
                            991 ;Allocation info for local variables in function 'main'
                            992 ;------------------------------------------------------------
                            993 ;	../../platform/sensinode/./contiki-sensinode-main.c:161: main(void)
                            994 ;	-----------------------------------------
                            995 ;	 function main
                            996 ;	-----------------------------------------
   0297                     997 _main:
                            998 ;	../../platform/sensinode/./contiki-sensinode-main.c:165: bus_init();
   0297 12 5E F4            999 	lcall	_bus_init
                           1000 ;	../../platform/sensinode/./contiki-sensinode-main.c:166: rtimer_init();
   029A 12 13 48           1001 	lcall	_rtimer_init
                           1002 ;	../../platform/sensinode/./contiki-sensinode-main.c:169: model_init();
   029D 12 08 CE           1003 	lcall	_model_init
                           1004 ;	../../platform/sensinode/./contiki-sensinode-main.c:172: leds_init();
   02A0 12 08 F9           1005 	lcall	_leds_init
                           1006 ;	../../platform/sensinode/./contiki-sensinode-main.c:173: fade(LEDS_GREEN);
   02A3 90 00 01           1007 	mov	dptr,#0x0001
   02A6 12 01 1E           1008 	lcall	_fade
                           1009 ;	../../platform/sensinode/./contiki-sensinode-main.c:176: process_init();
   02A9 12 1D 17           1010 	lcall	_process_init
                           1011 ;	../../platform/sensinode/./contiki-sensinode-main.c:179: uart1_init();
   02AC 12 3A 92           1012 	lcall	_uart1_init
                           1013 ;	../../platform/sensinode/./contiki-sensinode-main.c:189: uart1_set_input(serial_line_input_byte);
   02AF 90 15 4E           1014 	mov	dptr,#_serial_line_input_byte
   02B2 12 15 42           1015 	lcall	_uart1_set_input
                           1016 ;	../../platform/sensinode/./contiki-sensinode-main.c:190: serial_line_init();
   02B5 12 17 56           1017 	lcall	_serial_line_init
                           1018 ;	../../platform/sensinode/./contiki-sensinode-main.c:194: putstring(CONTIKI_VERSION_STRING "\n");
   02B8 90 B2 75           1019 	mov	dptr,#__str_0
   02BB 75 F0 80           1020 	mov	b,#0x80
   02BE 12 2C 17           1021 	lcall	_putstring
                           1022 ;	../../platform/sensinode/./contiki-sensinode-main.c:195: putstring(SENSINODE_MODEL " (CC24");
   02C1 90 B2 82           1023 	mov	dptr,#__str_1
   02C4 75 F0 80           1024 	mov	b,#0x80
   02C7 12 2C 17           1025 	lcall	_putstring
                           1026 ;	../../platform/sensinode/./contiki-sensinode-main.c:196: puthex(((CHIPID >> 3) | 0x20));
   02CA 90 DF 61           1027 	mov	dptr,#_CHIPID
   02CD E0                 1028 	movx	a,@dptr
   02CE C4                 1029 	swap	a
   02CF 23                 1030 	rl	a
   02D0 54 1F              1031 	anl	a,#0x1F
   02D2 FF                 1032 	mov	r7,a
   02D3 43 07 20           1033 	orl	ar7,#0x20
   02D6 8F 82              1034 	mov	dpl,r7
   02D8 12 2C 42           1035 	lcall	_puthex
                           1036 ;	../../platform/sensinode/./contiki-sensinode-main.c:197: putstring("-" FLASH_SIZE ")\n");
   02DB 90 B2 98           1037 	mov	dptr,#__str_2
   02DE 75 F0 80           1038 	mov	b,#0x80
   02E1 12 2C 17           1039 	lcall	_putstring
                           1040 ;	../../platform/sensinode/./contiki-sensinode-main.c:228: watchdog_init();
   02E4 12 08 A9           1041 	lcall	_watchdog_init
                           1042 ;	../../platform/sensinode/./contiki-sensinode-main.c:231: random_init(0);
   02E7 90 00 00           1043 	mov	dptr,#0x0000
   02EA 12 4D 1C           1044 	lcall	_random_init
                           1045 ;	../../platform/sensinode/./contiki-sensinode-main.c:234: process_start(&etimer_process, NULL);
   02ED E4                 1046 	clr	a
   02EE C0 E0              1047 	push	acc
   02F0 C0 E0              1048 	push	acc
   02F2 C0 E0              1049 	push	acc
   02F4 90 EB 1B           1050 	mov	dptr,#_etimer_process
   02F7 75 F0 00           1051 	mov	b,#0x00
   02FA 12 17 98           1052 	lcall	_process_start
   02FD 15 81              1053 	dec	sp
   02FF 15 81              1054 	dec	sp
   0301 15 81              1055 	dec	sp
                           1056 ;	../../platform/sensinode/./contiki-sensinode-main.c:235: ctimer_init();
   0303 12 50 6E           1057 	lcall	_ctimer_init
                           1058 ;	../../platform/sensinode/./contiki-sensinode-main.c:238: netstack_init();
   0306 12 2C 8E           1059 	lcall	_netstack_init
                           1060 ;	../../platform/sensinode/./contiki-sensinode-main.c:239: set_rime_addr();
   0309 12 02 21           1061 	lcall	_set_rime_addr
                           1062 ;	../../platform/sensinode/./contiki-sensinode-main.c:242: process_start(&sensors_process, NULL);
   030C E4                 1063 	clr	a
   030D C0 E0              1064 	push	acc
   030F C0 E0              1065 	push	acc
   0311 C0 E0              1066 	push	acc
   0313 90 EB 33           1067 	mov	dptr,#_sensors_process
   0316 75 F0 00           1068 	mov	b,#0x00
   0319 12 17 98           1069 	lcall	_process_start
   031C 15 81              1070 	dec	sp
   031E 15 81              1071 	dec	sp
   0320 15 81              1072 	dec	sp
                           1073 ;	../../platform/sensinode/./contiki-sensinode-main.c:243: sensinode_sensors_activate();
   0322 12 07 D3           1074 	lcall	_sensinode_sensors_activate
                           1075 ;	../../platform/sensinode/./contiki-sensinode-main.c:274: model_uart_intr_en();
   0325 12 08 E2           1076 	lcall	_model_uart_intr_en
                           1077 ;	../../platform/sensinode/./contiki-sensinode-main.c:276: energest_init();
   0328 12 2C FB           1078 	lcall	_energest_init
                           1079 ;	../../platform/sensinode/./contiki-sensinode-main.c:279: fade(LEDS_RED);
   032B 90 00 04           1080 	mov	dptr,#0x0004
   032E 12 01 1E           1081 	lcall	_fade
                           1082 ;	../../platform/sensinode/./contiki-sensinode-main.c:285: autostart_start(autostart_processes);
   0331 90 B2 A0           1083 	mov	dptr,#_autostart_processes
   0334 75 F0 80           1084 	mov	b,#0x80
   0337 12 2E 60           1085 	lcall	_autostart_start
                           1086 ;	../../platform/sensinode/./contiki-sensinode-main.c:287: watchdog_start();
   033A 12 08 AD           1087 	lcall	_watchdog_start
                           1088 ;	../../platform/sensinode/./contiki-sensinode-main.c:290: do {
   033D                    1089 00110$:
                           1090 ;	../../platform/sensinode/./contiki-sensinode-main.c:292: watchdog_periodic();
   033D 12 08 B1           1091 	lcall	_watchdog_periodic
                           1092 ;	../../platform/sensinode/./contiki-sensinode-main.c:295: if(sleep_flag) {
   0340 30 00 37           1093 	jnb	_sleep_flag,00109$
                           1094 ;	../../platform/sensinode/./contiki-sensinode-main.c:296: if(etimer_pending() &&
   0343 12 11 A6           1095 	lcall	_etimer_pending
   0346 E5 82              1096 	mov	a,dpl
   0348 85 83 F0           1097 	mov	b,dph
   034B 45 F0              1098 	orl	a,b
   034D 60 29              1099 	jz	00106$
                           1100 ;	../../platform/sensinode/./contiki-sensinode-main.c:297: (etimer_next_expiration_time() - clock_time() - 1) > MAX_TICKS) {
   034F 12 11 DE           1101 	lcall	_etimer_next_expiration_time
   0352 AE 82              1102 	mov	r6,dpl
   0354 AF 83              1103 	mov	r7,dph
   0356 C0 07              1104 	push	ar7
   0358 C0 06              1105 	push	ar6
   035A 12 3C E4           1106 	lcall	_clock_time
   035D AC 82              1107 	mov	r4,dpl
   035F AD 83              1108 	mov	r5,dph
   0361 D0 06              1109 	pop	ar6
   0363 D0 07              1110 	pop	ar7
   0365 EE                 1111 	mov	a,r6
   0366 C3                 1112 	clr	c
   0367 9C                 1113 	subb	a,r4
   0368 FE                 1114 	mov	r6,a
   0369 EF                 1115 	mov	a,r7
   036A 9D                 1116 	subb	a,r5
   036B FF                 1117 	mov	r7,a
   036C 1E                 1118 	dec	r6
   036D BE FF 01           1119 	cjne	r6,#0xFF,00150$
   0370 1F                 1120 	dec	r7
   0371                    1121 00150$:
   0371 EF                 1122 	mov	a,r7
   0372 30 E7 03           1123 	jnb	acc.7,00106$
                           1124 ;	../../platform/sensinode/./contiki-sensinode-main.c:298: etimer_request_poll();
   0375 12 0F 3E           1125 	lcall	_etimer_request_poll
   0378                    1126 00106$:
                           1127 ;	../../platform/sensinode/./contiki-sensinode-main.c:300: sleep_flag = 0;
   0378 C2 00              1128 	clr	_sleep_flag
   037A                    1129 00109$:
                           1130 ;	../../platform/sensinode/./contiki-sensinode-main.c:303: r = process_run();
   037A 12 1F 73           1131 	lcall	_process_run
   037D 85 82 0A           1132 	mov	_r,dpl
   0380 85 83 0B           1133 	mov	(_r + 1),dph
                           1134 ;	../../platform/sensinode/./contiki-sensinode-main.c:304: } while(r > 0);
   0383 C3                 1135 	clr	c
   0384 E4                 1136 	clr	a
   0385 95 0A              1137 	subb	a,_r
   0387 E4                 1138 	clr	a
   0388 64 80              1139 	xrl	a,#0x80
   038A 85 0B F0           1140 	mov	b,(_r + 1)
   038D 63 F0 80           1141 	xrl	b,#0x80
   0390 95 F0              1142 	subb	a,b
   0392 40 A9              1143 	jc	00110$
                           1144 ;	../../platform/sensinode/./contiki-sensinode-main.c:306: len = NETSTACK_RADIO.pending_packet();
   0394 90 B2 E6           1145 	mov	dptr,#(_cc2430_rf_driver + 0x000e)
   0397 E4                 1146 	clr	a
   0398 93                 1147 	movc	a,@a+dptr
   0399 FE                 1148 	mov	r6,a
   039A A3                 1149 	inc	dptr
   039B E4                 1150 	clr	a
   039C 93                 1151 	movc	a,@a+dptr
   039D FF                 1152 	mov	r7,a
   039E C0 07              1153 	push	ar7
   03A0 C0 06              1154 	push	ar6
   03A2 8E 82              1155 	mov	dpl,r6
   03A4 8F 83              1156 	mov	dph,r7
   03A6 12 00 83           1157 	lcall	__sdcc_call_dptr
   03A9 85 82 08           1158 	mov	_len,dpl
   03AC 85 83 09           1159 	mov	(_len + 1),dph
   03AF D0 06              1160 	pop	ar6
   03B1 D0 07              1161 	pop	ar7
                           1162 ;	../../platform/sensinode/./contiki-sensinode-main.c:307: if(len) {
   03B3 E5 08              1163 	mov	a,_len
   03B5 45 09              1164 	orl	a,(_len + 1)
   03B7 70 03              1165 	jnz	00154$
   03B9 02 04 3B           1166 	ljmp	00116$
   03BC                    1167 00154$:
                           1168 ;	../../platform/sensinode/./contiki-sensinode-main.c:308: packetbuf_clear();
   03BC 12 31 04           1169 	lcall	_packetbuf_clear
                           1170 ;	../../platform/sensinode/./contiki-sensinode-main.c:309: len = NETSTACK_RADIO.read(packetbuf_dataptr(), PACKETBUF_SIZE);
   03BF 90 B2 E0           1171 	mov	dptr,#(_cc2430_rf_driver + 0x0008)
   03C2 E4                 1172 	clr	a
   03C3 93                 1173 	movc	a,@a+dptr
   03C4 FE                 1174 	mov	r6,a
   03C5 A3                 1175 	inc	dptr
   03C6 E4                 1176 	clr	a
   03C7 93                 1177 	movc	a,@a+dptr
   03C8 FF                 1178 	mov	r7,a
   03C9 C0 07              1179 	push	ar7
   03CB C0 06              1180 	push	ar6
   03CD 12 34 FA           1181 	lcall	_packetbuf_dataptr
   03D0 AB 82              1182 	mov	r3,dpl
   03D2 AC 83              1183 	mov	r4,dph
   03D4 AD F0              1184 	mov	r5,b
   03D6 D0 06              1185 	pop	ar6
   03D8 D0 07              1186 	pop	ar7
   03DA C0 07              1187 	push	ar7
   03DC C0 06              1188 	push	ar6
   03DE 74 80              1189 	mov	a,#0x80
   03E0 C0 E0              1190 	push	acc
   03E2 E4                 1191 	clr	a
   03E3 C0 E0              1192 	push	acc
   03E5 74 F8              1193 	mov	a,#00155$
   03E7 C0 E0              1194 	push	acc
   03E9 74 03              1195 	mov	a,#(00155$ >> 8)
   03EB C0 E0              1196 	push	acc
   03ED C0 06              1197 	push	ar6
   03EF C0 07              1198 	push	ar7
   03F1 8B 82              1199 	mov	dpl,r3
   03F3 8C 83              1200 	mov	dph,r4
   03F5 8D F0              1201 	mov	b,r5
   03F7 22                 1202 	ret
   03F8                    1203 00155$:
   03F8 85 82 08           1204 	mov	_len,dpl
   03FB 85 83 09           1205 	mov	(_len + 1),dph
   03FE 15 81              1206 	dec	sp
   0400 15 81              1207 	dec	sp
   0402 D0 06              1208 	pop	ar6
   0404 D0 07              1209 	pop	ar7
                           1210 ;	../../platform/sensinode/./contiki-sensinode-main.c:310: if(len > 0) {
   0406 C3                 1211 	clr	c
   0407 E4                 1212 	clr	a
   0408 95 08              1213 	subb	a,_len
   040A E4                 1214 	clr	a
   040B 64 80              1215 	xrl	a,#0x80
   040D 85 09 F0           1216 	mov	b,(_len + 1)
   0410 63 F0 80           1217 	xrl	b,#0x80
   0413 95 F0              1218 	subb	a,b
   0415 50 24              1219 	jnc	00116$
                           1220 ;	../../platform/sensinode/./contiki-sensinode-main.c:311: packetbuf_set_datalen(len);
   0417 AE 08              1221 	mov	r6,_len
   0419 AF 09              1222 	mov	r7,(_len + 1)
   041B 8E 82              1223 	mov	dpl,r6
   041D 8F 83              1224 	mov	dph,r7
   041F 12 34 EE           1225 	lcall	_packetbuf_set_datalen
                           1226 ;	../../platform/sensinode/./contiki-sensinode-main.c:312: NETSTACK_RDC.input();
   0422 90 B3 2B           1227 	mov	dptr,#(_nullrdc_driver + 0x0009)
   0425 E4                 1228 	clr	a
   0426 93                 1229 	movc	a,@a+dptr
   0427 FE                 1230 	mov	r6,a
   0428 A3                 1231 	inc	dptr
   0429 E4                 1232 	clr	a
   042A 93                 1233 	movc	a,@a+dptr
   042B FF                 1234 	mov	r7,a
   042C C0 07              1235 	push	ar7
   042E C0 06              1236 	push	ar6
   0430 8E 82              1237 	mov	dpl,r6
   0432 8F 83              1238 	mov	dph,r7
   0434 12 00 83           1239 	lcall	__sdcc_call_dptr
   0437 D0 06              1240 	pop	ar6
   0439 D0 07              1241 	pop	ar7
   043B                    1242 00116$:
                           1243 ;	../../platform/sensinode/./contiki-sensinode-main.c:330: SLEEP = (SLEEP & 0xFC) | (LPM_MODE - 1);
   043B 53 BE FC           1244 	anl	_SLEEP,#0xFC
                           1245 ;	../../platform/sensinode/./contiki-sensinode-main.c:353: PCON |= IDLE;
   043E 43 87 01           1246 	orl	_PCON,#0x01
                           1247 ;	../../platform/sensinode/./contiki-sensinode-main.c:358: __endasm;
                           1248 	
   0441 00                 1249 	        nop
                           1250 	      
                           1251 ;	../../platform/sensinode/./contiki-sensinode-main.c:364: ENERGEST_OFF(ENERGEST_TYPE_LPM);
   0442 02 03 3D           1252 	ljmp	00110$
                           1253 	.area CSEG    (CODE)
                           1254 	.area CONST   (CODE)
   B275                    1255 __str_0:
   B275 43 6F 6E 74 69 6B  1256 	.ascii "Contiki 2.6"
        69 20 32 2E 36
   B280 0A                 1257 	.db 0x0A
   B281 00                 1258 	.db 0x00
   B282                    1259 __str_1:
   B282 4E 37 34 30 20 4E  1260 	.ascii "N740 NanoSensor (CC24"
        61 6E 6F 53 65 6E
        73 6F 72 20 28 43
        43 32 34
   B297 00                 1261 	.db 0x00
   B298                    1262 __str_2:
   B298 2D 46 31 32 38 29  1263 	.ascii "-F128)"
   B29E 0A                 1264 	.db 0x0A
   B29F 00                 1265 	.db 0x00
                           1266 	.area XINIT   (CODE)
   B378                    1267 __xinit__node_id:
   B378 00 00              1268 	.byte #0x00,#0x00	; 0
                           1269 	.area CABS    (ABS,CODE)
