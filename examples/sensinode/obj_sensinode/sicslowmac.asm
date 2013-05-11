;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:20 2013
;--------------------------------------------------------
	.module sicslowmac
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sicslowmac_driver
	.globl _send_list
	.globl _random_rand
	.globl _queuebuf_to_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_totlen
	.globl _packetbuf_datalen
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _frame802154_parse
	.globl _frame802154_create
	.globl _frame802154_hdrlen
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _memset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_mac_dsn:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_mac_dst_pan_id:
	.ds 2
_mac_src_pan_id:
	.ds 2
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
;Allocation info for local variables in function 'is_broadcast_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -5
;mode                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:86: is_broadcast_addr(uint8_t mode, uint8_t *addr)
;	-----------------------------------------
;	 function is_broadcast_addr
;	-----------------------------------------
_is_broadcast_addr:
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
	mov	r7,dpl
;	../../core/net/mac/sicslowmac.c:88: int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
	cjne	r7,#0x02,00108$
	mov	r7,#0x02
	sjmp	00109$
00108$:
	mov	r7,#0x08
00109$:
	mov	ar6,r7
	mov	r7,#0x00
;	../../core/net/mac/sicslowmac.c:89: while(i-- > 0) {
00103$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00120$
	dec	r7
00120$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../../core/net/mac/sicslowmac.c:90: if(addr[i] != 0xff) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r3,a
	mov	a,r7
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
	cjne	r3,#0xFF,00122$
	sjmp	00103$
00122$:
;	../../core/net/mac/sicslowmac.c:91: return 0;
	mov	dptr,#0x0000
	sjmp	00106$
00105$:
;	../../core/net/mac/sicslowmac.c:94: return 1;
	mov	dptr,#0x0001
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;sent                      Allocated to stack - _bp +1
;params                    Allocated to stack - _bp +3
;len                       Allocated to stack - _bp +52
;ret                       Allocated to registers r6 r7 
;sloc0                     Allocated to stack - _bp +53
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:98: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x34
	mov	sp,a
;	../../core/net/mac/sicslowmac.c:104: memset(&params, 0, sizeof(params));
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,#0x31
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/sicslowmac.c:107: params.fcf.frame_type = FRAME802154_DATAFRAME;
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	@r1,#0x01
;	../../core/net/mac/sicslowmac.c:108: params.fcf.security_enabled = 0;
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/sicslowmac.c:109: params.fcf.frame_pending = 0;
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/sicslowmac.c:110: params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_RELIABLE);
	inc	r1
	inc	r1
	inc	r1
	mov	dpl,#0x0C
	push	ar1
	lcall	_packetbuf_attr
	mov	r4,dpl
	pop	ar1
	mov	@r1,ar4
;	../../core/net/mac/sicslowmac.c:111: params.fcf.panid_compression = 0;
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/sicslowmac.c:114: params.fcf.frame_version = FRAME802154_IEEE802154_2003;
	mov	a,#0x06
	add	a,r5
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/sicslowmac.c:117: params.seq = mac_dsn++;
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	add	a,#0x08
	mov	r1,a
	mov	dptr,#_mac_dsn
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mac_dsn
	inc	a
	movx	@dptr,a
	mov	@r1,ar4
;	../../core/net/mac/sicslowmac.c:124: params.fcf.src_addr_mode = FRAME802154_LONGADDRMODE;
	mov	a,#0x07
	add	a,r5
	mov	r0,a
	mov	@r0,#0x03
;	../../core/net/mac/sicslowmac.c:125: params.dest_pid = mac_dst_pan_id;
	mov	a,#0x09
	add	a,r5
	mov	r1,a
	mov	dptr,#_mac_dst_pan_id
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
;	../../core/net/mac/sicslowmac.c:131: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_rimeaddr_cmp
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r4
	orl	a,r5
	jz	00102$
;	../../core/net/mac/sicslowmac.c:133: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,_bp
	add	a,#0x03
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x02
;	../../core/net/mac/sicslowmac.c:134: params.dest_addr[0] = 0xFF;
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	add	a,#0x0B
	mov	r0,a
	mov	@r0,#0xFF
;	../../core/net/mac/sicslowmac.c:135: params.dest_addr[1] = 0xFF;
	mov	a,#0x0C
	add	a,r5
	mov	r0,a
	mov	@r0,#0xFF
	sjmp	00103$
00102$:
;	../../core/net/mac/sicslowmac.c:139: packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
;	../../core/net/mac/sicslowmac.c:138: rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
	mov	a,_bp
	add	a,#0x03
	add	a,#0x0B
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/sicslowmac.c:140: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
	mov	a,_bp
	add	a,#0x03
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x03
;	../../core/net/mac/sicslowmac.c:172: }
;	../../core/net/mac/sicslowmac.c:140: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
00103$:
;	../../core/net/mac/sicslowmac.c:144: params.src_pid = mac_src_pan_id;
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	add	a,#0x13
	mov	r1,a
	mov	dptr,#_mac_src_pan_id
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
;	../../core/net/mac/sicslowmac.c:150: rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/sicslowmac.c:152: params.payload = packetbuf_dataptr();
	mov	a,_bp
	add	a,#0x03
	add	a,#0x2D
	mov	r1,a
	push	ar1
	lcall	_packetbuf_dataptr
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar1
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
;	../../core/net/mac/sicslowmac.c:153: params.payload_len = packetbuf_datalen();
	mov	a,_bp
	add	a,#0x03
	add	a,#0x30
	mov	r1,a
	push	ar1
	lcall	_packetbuf_datalen
	mov	r4,dpl
	pop	ar1
	mov	@r1,ar4
;	../../core/net/mac/sicslowmac.c:154: len = frame802154_hdrlen(&params);
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	lcall	_frame802154_hdrlen
	mov	r5,dpl
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	@r0,ar5
;	../../core/net/mac/sicslowmac.c:155: if(packetbuf_hdralloc(len)) {
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00124$
	ljmp	00111$
00124$:
;	../../core/net/mac/sicslowmac.c:157: frame802154_create(&params, packetbuf_hdrptr(), len);
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x03
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_create
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/net/mac/sicslowmac.c:163: ret = NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
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
	add	a,#0x35
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
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00125$
	push	acc
	mov	a,#(00125$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00125$:
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
;	../../core/net/mac/sicslowmac.c:164: if(sent) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00111$
;	../../core/net/mac/sicslowmac.c:165: switch(ret) {
	cjne	r6,#0x00,00127$
	cjne	r7,#0x00,00127$
	sjmp	00104$
00127$:
;	../../core/net/mac/sicslowmac.c:166: case RADIO_TX_OK:
	cjne	r6,#0x01,00111$
	cjne	r7,#0x00,00111$
	sjmp	00105$
00104$:
;	../../core/net/mac/sicslowmac.c:167: sent(ptr, MAC_TX_OK, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	push	acc
	mov	a,#00129$
	push	acc
	mov	a,#(00129$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
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
	ret
00129$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/net/mac/sicslowmac.c:168: break;
;	../../core/net/mac/sicslowmac.c:169: case RADIO_TX_ERR:
	sjmp	00111$
00105$:
;	../../core/net/mac/sicslowmac.c:170: sent(ptr, MAC_TX_ERR, 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#00130$
	push	acc
	mov	a,#(00130$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
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
	ret
00130$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/net/mac/sicslowmac.c:172: }
00111$:
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
;	../../core/net/mac/sicslowmac.c:180: send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
;	-----------------------------------------
;	 function send_list
;	-----------------------------------------
_send_list:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/sicslowmac.c:182: if(buf_list != NULL) {
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00103$
;	../../core/net/mac/sicslowmac.c:183: queuebuf_to_packetbuf(buf_list->buf);
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
;	../../core/net/mac/sicslowmac.c:184: send_packet(sent, ptr);
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
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;frame                     Allocated to stack - _bp +1
;len                       Allocated to stack - _bp +50
;sloc0                     Allocated to stack - _bp +52
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:189: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x34
	mov	sp,a
;	../../core/net/mac/sicslowmac.c:194: len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/sicslowmac.c:196: if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
	mov	r5,_bp
	inc	r5
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	push	ar5
	push	ar4
	push	ar3
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_frame802154_parse
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00129$
	ljmp	00113$
00129$:
;	../../core/net/mac/sicslowmac.c:197: packetbuf_hdrreduce(len - frame.payload_len)) {
	mov	a,_bp
	inc	a
	add	a,#0x30
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_packetbuf_hdrreduce
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00130$
	ljmp	00113$
00130$:
;	../../core/net/mac/sicslowmac.c:198: if(frame.fcf.dest_addr_mode) {
	mov	a,_bp
	inc	a
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	jnz	00131$
	ljmp	00109$
00131$:
;	../../core/net/mac/sicslowmac.c:199: if(frame.dest_pid != mac_src_pan_id &&
	mov	r7,_bp
	inc	r7
	mov	a,#0x09
	add	a,r7
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	mov	dptr,#_mac_src_pan_id
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar3,00132$
	mov	a,r6
	cjne	a,ar4,00132$
	sjmp	00102$
00132$:
;	../../core/net/mac/sicslowmac.c:200: frame.dest_pid != FRAME802154_BROADCASTPANDID) {
	cjne	r5,#0xFF,00133$
	cjne	r6,#0xFF,00133$
	sjmp	00102$
00133$:
;	../../core/net/mac/sicslowmac.c:203: return;
	ljmp	00113$
00102$:
;	../../core/net/mac/sicslowmac.c:205: if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
	mov	a,#0x0B
	add	a,r7
	mov	r6,a
	mov	r5,#0x00
	mov	r4,#0x40
	mov	a,#0x05
	add	a,r7
	mov	r1,a
	mov	ar7,@r1
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r7
	lcall	_is_broadcast_addr
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r6
	orl	a,r7
	jnz	00109$
;	../../core/net/mac/sicslowmac.c:206: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
	mov	a,_bp
	inc	a
	add	a,#0x0B
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
;	../../core/net/mac/sicslowmac.c:208: &rimeaddr_node_addr)) {
;	../../core/net/mac/sicslowmac.c:207: if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
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
;	../../core/net/mac/sicslowmac.c:211: return;
	jz	00113$
00109$:
;	../../core/net/mac/sicslowmac.c:215: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
	mov	a,_bp
	inc	a
	add	a,#0x15
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
;	../../core/net/mac/sicslowmac.c:221: NETSTACK_MAC.input();
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
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:228: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../../core/net/mac/sicslowmac.c:230: return NETSTACK_RADIO.on();
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
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;keep_radio_on             Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:234: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/sicslowmac.c:236: if(keep_radio_on) {
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/sicslowmac.c:237: return NETSTACK_RADIO.on();
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
;	../../core/net/mac/sicslowmac.c:239: return NETSTACK_RADIO.off();
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
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:244: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../core/net/mac/sicslowmac.c:246: mac_dsn = random_rand() % 256;
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	dptr,#_mac_dsn
	mov	a,r6
	movx	@dptr,a
;	../../core/net/mac/sicslowmac.c:248: NETSTACK_RADIO.on();
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
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../../core/net/mac/sicslowmac.c:252: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../../core/net/mac/sicslowmac.c:254: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_sicslowmac_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _send_list,(_send_list >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
_str_0:
	.ascii "sicslowmac"
	.db 0x00
	.area XINIT   (CODE)
__xinit__mac_dst_pan_id:
	.byte #0x55,#0x4C	; 19541
__xinit__mac_src_pan_id:
	.byte #0x55,#0x4C	; 19541
	.area CABS    (ABS,CODE)
