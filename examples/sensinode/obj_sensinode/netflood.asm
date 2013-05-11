;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:16 2013
;--------------------------------------------------------
	.module netflood
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _netflood_cancel
	.globl _ipolite_cancel
	.globl _ipolite_send
	.globl _ipolite_close
	.globl _ipolite_open
	.globl _queuebuf_free
	.globl _queuebuf_to_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_hdrreduce
	.globl _packetbuf_hdralloc
	.globl _packetbuf_hdrptr
	.globl _packetbuf_dataptr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _memcpy
	.globl _netflood_open
	.globl _netflood_close
	.globl _netflood_send
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
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:68: send(struct netflood_conn *c)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
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
;	../../core/net/rime/netflood.c:72: return ipolite_send(&c->c, c->queue_time, 4);
	mov	a,#0x30
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x04
	push	acc
	push	ar2
	push	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ipolite_send
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'recv_from_ipolite'
;------------------------------------------------------------
;from                      Allocated to stack - _bp -5
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to stack - _bp +1
;hdr                       Allocated to stack - _bp +4
;hops                      Allocated to stack - _bp +10
;queuebuf                  Allocated to stack - _bp +11
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:76: recv_from_ipolite(struct ipolite_conn *ipolite, const rimeaddr_t *from)
;	-----------------------------------------
;	 function recv_from_ipolite
;	-----------------------------------------
_recv_from_ipolite:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0D
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/netflood.c:78: struct netflood_conn *c = (struct netflood_conn *)ipolite;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/netflood.c:83: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct netflood_hdr));
	lcall	_packetbuf_dataptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,_bp
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,#0x06
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
;	../../core/net/rime/netflood.c:84: hops = hdr.hops;
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar6
;	../../core/net/rime/netflood.c:87: queuebuf = queuebuf_new_from_packetbuf();
	lcall	_queuebuf_new_from_packetbuf
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
;	../../core/net/rime/netflood.c:89: packetbuf_hdrreduce(sizeof(struct netflood_hdr));
	mov	dptr,#0x0006
	lcall	_packetbuf_hdrreduce
;	../../core/net/rime/netflood.c:90: if(c->u->recv != NULL) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x2D
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jnz	00128$
	ljmp	00111$
00128$:
;	../../core/net/rime/netflood.c:91: if(!(rimeaddr_cmp(&hdr.originator, &c->last_originator) &&
	push	ar2
	push	ar3
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x32
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r6,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	push	ar7
	mov	dpl,r6
	mov	dph,r3
	mov	b,r2
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,r6
	orl	a,r7
	pop	ar6
	pop	ar3
	pop	ar2
	jz	00107$
;	../../core/net/rime/netflood.c:92: hdr.originator_seqno <= c->last_originator_seqno)) {
	push	ar2
	push	ar3
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar7,@r1
	mov	r0,_bp
	inc	r0
	mov	a,#0x34
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r6
	subb	a,r7
	pop	ar6
	pop	ar3
	pop	ar2
	jc	00130$
	ljmp	00111$
00130$:
00107$:
;	../../core/net/rime/netflood.c:94: if(c->u->recv(c, from, &hdr.originator, hdr.originator_seqno,
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x40
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	push	ar5
	push	ar4
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
	mov	a,#00131$
	push	acc
	mov	a,#(00131$ >> 8)
	push	acc
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	ret
00131$:
	mov	r2,dpl
	mov	r3,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	mov	a,r2
	orl	a,r3
	jnz	00132$
	ljmp	00111$
00132$:
;	../../core/net/rime/netflood.c:97: if(queuebuf != NULL) {
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00133$
	ljmp	00111$
00133$:
;	../../core/net/rime/netflood.c:98: queuebuf_to_packetbuf(queuebuf);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_queuebuf_to_packetbuf
;	../../core/net/rime/netflood.c:99: queuebuf_free(queuebuf);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_queuebuf_free
;	../../core/net/rime/netflood.c:100: queuebuf = NULL;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	../../core/net/rime/netflood.c:101: memcpy(&hdr, packetbuf_dataptr(), sizeof(struct netflood_hdr));
	lcall	_packetbuf_dataptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_bp
	add	a,#0x04
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	a,#0x06
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
;	../../core/net/rime/netflood.c:104: if(hops < HOPS_MAX) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x10,00134$
00134$:
	jc	00135$
	ljmp	00111$
00135$:
;	../../core/net/rime/netflood.c:112: hdr.hops++;
	mov	a,_bp
	add	a,#0x04
	mov	r7,a
	add	a,#0x04
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	inc	r5
	cjne	r5,#0x00,00136$
	inc	r6
00136$:
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
;	../../core/net/rime/netflood.c:113: memcpy(packetbuf_dataptr(), &hdr, sizeof(struct netflood_hdr));
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
;	../../core/net/rime/netflood.c:114: send(c);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_send
;	../../core/net/rime/netflood.c:115: rimeaddr_copy(&c->last_originator, &hdr.originator);
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	r0,_bp
	inc	r0
	mov	a,#0x32
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
;	../../core/net/rime/netflood.c:116: c->last_originator_seqno = hdr.originator_seqno;
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
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
00111$:
;	../../core/net/rime/netflood.c:122: if(queuebuf != NULL) {
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	../../core/net/rime/netflood.c:123: queuebuf_free(queuebuf);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_queuebuf_free
00114$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sent'
;------------------------------------------------------------
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:128: sent(struct ipolite_conn *ipolite)
;	-----------------------------------------
;	 function sent
;	-----------------------------------------
_sent:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/netflood.c:130: struct netflood_conn *c = (struct netflood_conn *)ipolite;
;	../../core/net/rime/netflood.c:131: if(c->u->sent != NULL) {
	mov	a,#0x2D
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../../core/net/rime/netflood.c:132: c->u->sent(c);
	push	ar4
	push	ar3
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00108$:
	pop	ar3
	pop	ar4
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dropped'
;------------------------------------------------------------
;ipolite                   Allocated to registers r5 r6 r7 
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:137: dropped(struct ipolite_conn *ipolite)
;	-----------------------------------------
;	 function dropped
;	-----------------------------------------
_dropped:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/netflood.c:139: struct netflood_conn *c = (struct netflood_conn *)ipolite;
;	../../core/net/rime/netflood.c:140: if(c->u->dropped != NULL) {
	mov	a,#0x2D
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../../core/net/rime/netflood.c:141: c->u->dropped(c);
	push	ar4
	push	ar3
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00108$:
	pop	ar3
	pop	ar4
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_open'
;------------------------------------------------------------
;queue_time                Allocated to stack - _bp -4
;channel                   Allocated to stack - _bp -6
;u                         Allocated to stack - _bp -9
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:148: netflood_open(struct netflood_conn *c, clock_time_t queue_time,
;	-----------------------------------------
;	 function netflood_open
;	-----------------------------------------
_netflood_open:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/netflood.c:151: ipolite_open(&c->c, channel, 1, &netflood);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_netflood
	push	acc
	mov	a,#(_netflood >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ipolite_open
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	../../core/net/rime/netflood.c:152: c->u = u;
	mov	a,#0x2D
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
	add	a,#0xf7
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
;	../../core/net/rime/netflood.c:153: c->queue_time = queue_time;
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_close'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:157: netflood_close(struct netflood_conn *c)
;	-----------------------------------------
;	 function netflood_close
;	-----------------------------------------
_netflood_close:
;	../../core/net/rime/netflood.c:159: ipolite_close(&c->c);
	ljmp	_ipolite_close
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_send'
;------------------------------------------------------------
;seqno                     Allocated to stack - _bp -3
;c                         Allocated to stack - _bp +1
;hdr                       Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:163: netflood_send(struct netflood_conn *c, uint8_t seqno)
;	-----------------------------------------
;	 function netflood_send
;	-----------------------------------------
_netflood_send:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	../../core/net/rime/netflood.c:165: if(packetbuf_hdralloc(sizeof(struct netflood_hdr))) {
	mov	dptr,#0x0006
	lcall	_packetbuf_hdralloc
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00107$
	ljmp	00102$
00107$:
;	../../core/net/rime/netflood.c:166: struct netflood_hdr *hdr = packetbuf_hdrptr();
	lcall	_packetbuf_hdrptr
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
;	../../core/net/rime/netflood.c:167: rimeaddr_copy(&hdr->originator, &rimeaddr_node_addr);
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
	mov	a,#_rimeaddr_node_addr
	push	acc
	mov	a,#(_rimeaddr_node_addr >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/rime/netflood.c:168: rimeaddr_copy(&c->last_originator, &hdr->originator);
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
	mov	a,#0x32
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
;	../../core/net/rime/netflood.c:169: c->last_originator_seqno = hdr->originator_seqno = seqno;
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
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../../core/net/rime/netflood.c:170: hdr->hops = 0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
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
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/net/rime/netflood.c:174: return ipolite_send(&c->c, 0, 4);
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_ipolite_send
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	mov	dpl,r6
	mov	dph,r7
	sjmp	00103$
00102$:
;	../../core/net/rime/netflood.c:176: return 0;
	mov	dptr,#0x0000
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'netflood_cancel'
;------------------------------------------------------------
;c                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/netflood.c:180: netflood_cancel(struct netflood_conn *c)
;	-----------------------------------------
;	 function netflood_cancel
;	-----------------------------------------
_netflood_cancel:
;	../../core/net/rime/netflood.c:182: ipolite_cancel(&c->c);
	ljmp	_ipolite_cancel
	.area CSEG    (CODE)
	.area CONST   (CODE)
_netflood:
	.byte _recv_from_ipolite,(_recv_from_ipolite >> 8)
	.byte _sent,(_sent >> 8)
	.byte _dropped,(_dropped >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
