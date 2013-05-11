;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:21 2013
;--------------------------------------------------------
	.module framer_802154
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _framer_802154
	.globl _random_rand
	.globl _packetbuf_addr
	.globl _packetbuf_set_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
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
_initialized:
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
;Allocation info for local variables in function 'is_broadcast_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -5
;mode                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
;	../../core/net/mac/framer-802154.c:79: is_broadcast_addr(uint8_t mode, uint8_t *addr)
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
;	../../core/net/mac/framer-802154.c:81: int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
	cjne	r7,#0x02,00108$
	mov	r7,#0x02
	sjmp	00109$
00108$:
	mov	r7,#0x08
00109$:
	mov	ar6,r7
	mov	r7,#0x00
;	../../core/net/mac/framer-802154.c:82: while(i-- > 0) {
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
;	../../core/net/mac/framer-802154.c:83: if(addr[i] != 0xff) {
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
;	../../core/net/mac/framer-802154.c:84: return 0;
	mov	dptr,#0x0000
	sjmp	00106$
00105$:
;	../../core/net/mac/framer-802154.c:87: return 1;
	mov	dptr,#0x0001
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create'
;------------------------------------------------------------
;params                    Allocated to stack - _bp +1
;len                       Allocated to stack - _bp +50
;sloc0                     Allocated to stack - _bp +51
;------------------------------------------------------------
;	../../core/net/mac/framer-802154.c:91: create(void)
;	-----------------------------------------
;	 function create
;	-----------------------------------------
_create:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x35
	mov	sp,a
;	../../core/net/mac/framer-802154.c:97: memset(&params, 0, sizeof(params));
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x31
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
;	../../core/net/mac/framer-802154.c:99: if(!initialized) {
	mov	dptr,#_initialized
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	../../core/net/mac/framer-802154.c:100: initialized = 1;
	mov	dptr,#_initialized
	mov	a,#0x01
	movx	@dptr,a
;	../../core/net/mac/framer-802154.c:101: mac_dsn = random_rand() & 0xff;
	lcall	_random_rand
	mov	a,dpl
	mov	b,dph
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_mac_dsn
	mov	a,r6
	movx	@dptr,a
00102$:
;	../../core/net/mac/framer-802154.c:105: params.fcf.frame_type = FRAME802154_DATAFRAME;
	mov	r1,_bp
	inc	r1
	mov	@r1,#0x01
;	../../core/net/mac/framer-802154.c:106: params.fcf.security_enabled = 0;
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/framer-802154.c:107: params.fcf.frame_pending = packetbuf_attr(PACKETBUF_ATTR_PENDING);
	inc	r1
	inc	r1
	mov	dpl,#0x12
	push	ar1
	lcall	_packetbuf_attr
	mov	r6,dpl
	pop	ar1
	mov	@r1,ar6
;	../../core/net/mac/framer-802154.c:108: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
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
	jz	00104$
;	../../core/net/mac/framer-802154.c:109: params.fcf.ack_required = 0;
	mov	a,_bp
	inc	a
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00105$
00104$:
;	../../core/net/mac/framer-802154.c:111: params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_MAC_ACK);
	mov	a,_bp
	inc	a
	add	a,#0x03
	mov	r1,a
	mov	dpl,#0x0B
	push	ar1
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	mov	@r1,ar6
00105$:
;	../../core/net/mac/framer-802154.c:113: params.fcf.panid_compression = 0;
	mov	r7,_bp
	inc	r7
	mov	a,#0x04
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/framer-802154.c:116: params.fcf.frame_version = FRAME802154_IEEE802154_2003;
	mov	a,#0x06
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
;	../../core/net/mac/framer-802154.c:119: if(packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
	mov	dpl,#0x0A
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00107$
;	../../core/net/mac/framer-802154.c:120: params.seq = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
	mov	a,_bp
	inc	a
	add	a,#0x08
	mov	r1,a
	mov	dpl,#0x0A
	push	ar1
	lcall	_packetbuf_attr
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	mov	@r1,ar6
	sjmp	00109$
00107$:
;	../../core/net/mac/framer-802154.c:122: params.seq = mac_dsn++;
	mov	a,_bp
	inc	a
	add	a,#0x08
	mov	r1,a
	mov	dptr,#_mac_dsn
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mac_dsn
	inc	a
	movx	@dptr,a
	mov	@r1,ar7
;	../../core/net/mac/framer-802154.c:123: packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, params.seq);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x0A
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/framer-802154.c:132: if(sizeof(rimeaddr_t) == 2) {
00109$:
;	../../core/net/mac/framer-802154.c:134: params.fcf.src_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,_bp
	inc	a
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x02
;	../../core/net/mac/framer-802154.c:138: params.dest_pid = mac_dst_pan_id;
	mov	a,_bp
	inc	a
	add	a,#0x09
	mov	r1,a
	mov	dptr,#_mac_dst_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	../../core/net/mac/framer-802154.c:144: if(rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER), &rimeaddr_null)) {
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
	jz	00116$
;	../../core/net/mac/framer-802154.c:146: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,_bp
	inc	a
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x02
;	../../core/net/mac/framer-802154.c:147: params.dest_addr[0] = 0xFF;
	mov	r7,_bp
	inc	r7
	mov	a,#0x0B
	add	a,r7
	mov	r0,a
	mov	@r0,#0xFF
;	../../core/net/mac/framer-802154.c:148: params.dest_addr[1] = 0xFF;
	mov	a,#0x0C
	add	a,r7
	mov	r0,a
	mov	@r0,#0xFF
	sjmp	00117$
00116$:
;	../../core/net/mac/framer-802154.c:152: packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/framer-802154.c:151: rimeaddr_copy((rimeaddr_t *)&params.dest_addr,
	mov	a,_bp
	inc	a
	add	a,#0x0B
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
;	../../core/net/mac/framer-802154.c:155: params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
	mov	a,_bp
	inc	a
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x02
;	../../core/net/mac/framer-802154.c:157: params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
00117$:
;	../../core/net/mac/framer-802154.c:162: params.src_pid = mac_src_pan_id;
	mov	r7,_bp
	inc	r7
	mov	a,#0x13
	add	a,r7
	mov	r1,a
	mov	dptr,#_mac_src_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
;	../../core/net/mac/framer-802154.c:168: rimeaddr_copy((rimeaddr_t *)&params.src_addr, &rimeaddr_node_addr);
	mov	a,#0x15
	add	a,r7
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
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/framer-802154.c:170: params.payload = packetbuf_dataptr();
	mov	a,_bp
	inc	a
	add	a,#0x2D
	mov	r1,a
	push	ar1
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
;	../../core/net/mac/framer-802154.c:171: params.payload_len = packetbuf_datalen();
	mov	a,_bp
	inc	a
	add	a,#0x30
	mov	r1,a
	push	ar1
	lcall	_packetbuf_datalen
	mov	r6,dpl
	pop	ar1
	mov	@r1,ar6
;	../../core/net/mac/framer-802154.c:172: len = frame802154_hdrlen(&params);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_frame802154_hdrlen
	mov	r7,dpl
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar7
;	../../core/net/mac/framer-802154.c:173: if(packetbuf_hdralloc(len)) {
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	orl	a,b
	jz	00119$
;	../../core/net/mac/framer-802154.c:174: frame802154_create(&params, packetbuf_hdrptr(), len);
	push	ar6
	push	ar5
	lcall	_packetbuf_hdrptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x33
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r7,_bp
	inc	r7
	mov	ar3,r7
	mov	r4,#0x00
	mov	r7,#0x40
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x33
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
	mov	dph,r4
	mov	b,r7
	lcall	_frame802154_create
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	../../core/net/mac/framer-802154.c:180: return len;
	mov	dpl,r5
	mov	dph,r6
	sjmp	00121$
00119$:
;	../../core/net/mac/framer-802154.c:183: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
00121$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse'
;------------------------------------------------------------
;frame                     Allocated to stack - _bp +1
;len                       Allocated to stack - _bp +50
;sloc0                     Allocated to stack - _bp +52
;------------------------------------------------------------
;	../../core/net/mac/framer-802154.c:188: parse(void)
;	-----------------------------------------
;	 function parse
;	-----------------------------------------
_parse:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x34
	mov	sp,a
;	../../core/net/mac/framer-802154.c:192: len = packetbuf_datalen();
	lcall	_packetbuf_datalen
	mov	r6,dpl
	mov	r7,dph
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/framer-802154.c:193: if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
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
	jnz	00125$
	ljmp	00109$
00125$:
;	../../core/net/mac/framer-802154.c:194: packetbuf_hdrreduce(len - frame.payload_len)) {
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
	jnz	00126$
	ljmp	00109$
00126$:
;	../../core/net/mac/framer-802154.c:195: if(frame.fcf.dest_addr_mode) {
	mov	a,_bp
	inc	a
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	jz	00107$
;	../../core/net/mac/framer-802154.c:196: if(frame.dest_pid != mac_src_pan_id &&
	mov	r7,_bp
	inc	r7
	mov	a,#0x09
	add	a,r7
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	mov	dptr,#_mac_src_pan_id
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar3,00128$
	mov	a,r6
	cjne	a,ar4,00128$
	sjmp	00102$
00128$:
;	../../core/net/mac/framer-802154.c:197: frame.dest_pid != FRAME802154_BROADCASTPANDID) {
	cjne	r5,#0xFF,00129$
	cjne	r6,#0xFF,00129$
	sjmp	00102$
00129$:
;	../../core/net/mac/framer-802154.c:200: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
	ljmp	00111$
00102$:
;	../../core/net/mac/framer-802154.c:202: if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
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
	jnz	00107$
;	../../core/net/mac/framer-802154.c:203: packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (rimeaddr_t *)&frame.dest_addr);
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
00107$:
;	../../core/net/mac/framer-802154.c:206: packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (rimeaddr_t *)&frame.src_addr);
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
;	../../core/net/mac/framer-802154.c:207: packetbuf_set_attr(PACKETBUF_ATTR_PENDING, frame.fcf.frame_pending);
	mov	a,_bp
	inc	a
	add	a,#0x02
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x12
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/framer-802154.c:209: packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, frame.seq);
	mov	a,_bp
	inc	a
	add	a,#0x08
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,#0x0D
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/framer-802154.c:216: return len - frame.payload_len;
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
	sjmp	00111$
00109$:
;	../../core/net/mac/framer-802154.c:218: return FRAMER_FAILED;
	mov	dptr,#0xFFFF
00111$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_mac_dst_pan_id:
	.byte #0x55,#0x4C	; 19541
_mac_src_pan_id:
	.byte #0x55,#0x4C	; 19541
_framer_802154:
	.byte _create,(_create >> 8)
	.byte _parse,(_parse >> 8)
	.area XINIT   (CODE)
__xinit__initialized:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
