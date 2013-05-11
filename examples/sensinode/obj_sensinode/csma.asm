;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:21 2013
;--------------------------------------------------------
	.module csma
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _csma_driver
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_length
	.globl _list_remove
	.globl _list_add
	.globl _list_push
	.globl _list_pop
	.globl _list_head
	.globl _list_init
	.globl _random_rand
	.globl _ctimer_stop
	.globl _ctimer_set
	.globl _queuebuf_free
	.globl _queuebuf_update_attr_from_packetbuf
	.globl _queuebuf_new_from_packetbuf
	.globl _packetbuf_addr
	.globl _packetbuf_attr
	.globl _packetbuf_set_attr
	.globl _rimeaddr_cmp
	.globl _rimeaddr_copy
	.globl _mac_call_sent_callback
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
_neighbor_memb_memb_count:
	.ds 2
_neighbor_memb_memb_mem:
	.ds 70
_packet_memb_memb_count:
	.ds 8
_packet_memb_memb_mem:
	.ds 72
_metadata_memb_memb_count:
	.ds 8
_metadata_memb_memb_mem:
	.ds 48
_send_packet_seqno_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_neighbor_memb:
	.ds 10
_packet_memb:
	.ds 10
_metadata_memb:
	.ds 10
_neighbor_list_list:
	.ds 3
_neighbor_list:
	.ds 3
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
;Allocation info for local variables in function 'neighbor_queue_from_addr'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp +1
;n                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../../core/net/mac/csma.c:115: neighbor_queue *neighbor_queue_from_addr(const rimeaddr_t *addr) {
;	-----------------------------------------
;	 function neighbor_queue_from_addr
;	-----------------------------------------
_neighbor_queue_from_addr:
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
	push	b
;	../../core/net/mac/csma.c:116: struct neighbor_queue *n = list_head(neighbor_list);
	mov	dptr,#_neighbor_list
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
;	../../core/net/mac/csma.c:117: while(n != NULL) {
00103$:
	mov	a,r2
	orl	a,r3
	jz	00105$
;	../../core/net/mac/csma.c:118: if(rimeaddr_cmp(&n->addr, addr)) {
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	push	ar4
	push	ar3
	push	ar2
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
	lcall	_rimeaddr_cmp
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	jz	00102$
;	../../core/net/mac/csma.c:119: return n;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	sjmp	00106$
00102$:
;	../../core/net/mac/csma.c:121: n = list_item_next(n);
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_list_item_next
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00103$
00105$:
;	../../core/net/mac/csma.c:123: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00106$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'default_timebase'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/mac/csma.c:127: default_timebase(void)
;	-----------------------------------------
;	 function default_timebase
;	-----------------------------------------
_default_timebase:
;	../../core/net/mac/csma.c:132: time = NETSTACK_RDC.channel_check_interval();
	mov	dptr,#(_nullrdc_driver + 0x000f)
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
;	../../core/net/mac/csma.c:137: if(time == 0) {
	mov	a,r6
	orl	a,r7
;	../../core/net/mac/csma.c:138: time = CLOCK_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE;
	jnz	00102$
	mov	r6,#0x10
	mov	r7,a
00102$:
;	../../core/net/mac/csma.c:140: return time;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_packet_list'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to registers r5 r6 r7 
;q                         Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/mac/csma.c:144: transmit_packet_list(void *ptr)
;	-----------------------------------------
;	 function transmit_packet_list
;	-----------------------------------------
_transmit_packet_list:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/csma.c:146: struct neighbor_queue *n = ptr;
;	../../core/net/mac/csma.c:147: if(n) {
	mov	a,r5
	orl	a,r6
	jnz	00111$
	ljmp	00105$
00111$:
;	../../core/net/mac/csma.c:148: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	a,#0x20
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_head
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/mac/csma.c:149: if(q != NULL) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00105$
;	../../core/net/mac/csma.c:153: NETSTACK_RDC.send_list(packet_sent, n, q);
	mov	dptr,#(_nullrdc_driver + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	push	ar4
	push	ar3
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
	push	ar5
	push	ar6
	push	ar7
	mov	a,#00113$
	push	acc
	mov	a,#(00113$ >> 8)
	push	acc
	push	ar3
	push	ar4
	mov	dptr,#_packet_sent
	ret
00113$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar3
	pop	ar4
00105$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free_first_packet'
;------------------------------------------------------------
;n                         Allocated to stack - _bp +1
;q                         Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../core/net/mac/csma.c:159: free_first_packet(struct neighbor_queue *n)
;	-----------------------------------------
;	 function free_first_packet
;	-----------------------------------------
_free_first_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	../../core/net/mac/csma.c:161: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
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
	lcall	_list_head
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
;	../../core/net/mac/csma.c:162: if(q != NULL) {
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00112$
	ljmp	00106$
00112$:
;	../../core/net/mac/csma.c:164: queuebuf_free(q->buf);
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_queuebuf_free
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/mac/csma.c:165: list_pop(n->queued_packet_list);
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
	lcall	_list_pop
;	../../core/net/mac/csma.c:166: memb_free(&metadata_memb, q->ptr);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/csma.c:167: memb_free(&packet_memb, q);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/mac/csma.c:170: if(list_head(n->queued_packet_list)) {
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
	lcall	_list_head
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,r5
	orl	a,r6
	jnz	00113$
	ljmp	00102$
00113$:
;	../../core/net/mac/csma.c:172: n->transmissions = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x1A
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
;	../../core/net/mac/csma.c:173: n->collisions = 0;
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
	clr	a
	lcall	__gptrput
;	../../core/net/mac/csma.c:174: n->deferrals = 0;
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../../core/net/mac/csma.c:176: ctimer_set(&n->transmit_timer, default_timebase(), transmit_packet_list, n);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	xch	a,r0
	mov	a,_bp
	add	a,#0x07
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
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
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x07
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
	sjmp	00106$
00102$:
;	../../core/net/mac/csma.c:179: ctimer_stop(&n->transmit_timer);
	mov	r0,_bp
	inc	r0
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
	lcall	_ctimer_stop
;	../../core/net/mac/csma.c:180: list_remove(neighbor_list, n);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_neighbor_list
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
;	../../core/net/mac/csma.c:181: memb_free(&neighbor_memb, n);
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
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00106$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_sent'
;------------------------------------------------------------
;status                    Allocated to stack - _bp -4
;num_transmissions         Allocated to stack - _bp -6
;ptr                       Allocated to registers r5 r6 r7 
;n                         Allocated to stack - _bp +1
;q                         Allocated to stack - _bp +4
;metadata                  Allocated to stack - _bp +7
;time                      Allocated to stack - _bp +10
;sent                      Allocated to stack - _bp +12
;cptr                      Allocated to stack - _bp +14
;num_tx                    Allocated to stack - _bp +17
;backoff_transmissions     Allocated to registers r3 r4 
;sloc0                     Allocated to stack - _bp +19
;------------------------------------------------------------
;	../../core/net/mac/csma.c:187: packet_sent(void *ptr, int status, int num_transmissions)
;	-----------------------------------------
;	 function packet_sent
;	-----------------------------------------
_packet_sent:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x14
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/csma.c:189: struct neighbor_queue *n = ptr;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/csma.c:190: struct rdc_buf_list *q = list_head(n->queued_packet_list);
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
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
;	../../core/net/mac/csma.c:191: struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x06
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/net/mac/csma.c:198: switch(status) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x00,00136$
	inc	r0
	cjne	@r0,#0x00,00136$
	sjmp	00102$
00136$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x01,00137$
	inc	r0
	cjne	@r0,#0x00,00137$
	sjmp	00103$
00137$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x02,00138$
	inc	r0
	cjne	@r0,#0x00,00138$
	sjmp	00102$
00138$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
;	../../core/net/mac/csma.c:200: case MAC_TX_NOACK:
	cjne	@r0,#0x03,00105$
	inc	r0
	cjne	@r0,#0x00,00105$
	sjmp	00104$
00102$:
;	../../core/net/mac/csma.c:201: n->transmissions++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x1A
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	../../core/net/mac/csma.c:202: break;
;	../../core/net/mac/csma.c:203: case MAC_TX_COLLISION:
	sjmp	00105$
00103$:
;	../../core/net/mac/csma.c:204: n->collisions++;
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
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../core/net/mac/csma.c:205: break;
;	../../core/net/mac/csma.c:206: case MAC_TX_DEFERRED:
	sjmp	00105$
00104$:
;	../../core/net/mac/csma.c:207: n->deferrals++;
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../core/net/mac/csma.c:270: mac_call_sent_callback(sent, cptr, status, num_tx);
;	../../core/net/mac/csma.c:209: }
00105$:
;	../../core/net/mac/csma.c:211: sent = metadata->sent;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
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
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/csma.c:212: cptr = metadata->cptr;
	mov	a,_bp
	add	a,#0x07
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
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/csma.c:213: num_tx = n->transmissions;
	mov	r0,_bp
	inc	r0
	mov	a,#0x1A
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	../../core/net/mac/csma.c:215: if(status == MAC_TX_COLLISION ||
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x01,00140$
	inc	r0
	cjne	@r0,#0x00,00140$
	sjmp	00109$
00140$:
;	../../core/net/mac/csma.c:216: status == MAC_TX_NOACK) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	cjne	@r0,#0x02,00141$
	inc	r0
	cjne	@r0,#0x00,00141$
	sjmp	00142$
00141$:
	ljmp	00116$
00142$:
;	../../core/net/mac/csma.c:230: }
00109$:
;	../../core/net/mac/csma.c:234: time = default_timebase();
	push	ar7
	push	ar6
	push	ar5
	lcall	_default_timebase
	mov	r4,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
;	../../core/net/mac/csma.c:239: backoff_transmissions = n->transmissions + 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	push	ar5
	push	ar6
	push	ar7
	mov	r7,#0x00
	mov	a,#0x01
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
;	../../core/net/mac/csma.c:244: if(backoff_transmissions > 3) {
	clr	c
	mov	a,#0x03
	subb	a,r3
	clr	a
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00111$
;	../../core/net/mac/csma.c:245: backoff_transmissions = 3;
	mov	r3,#0x03
	mov	r4,#0x00
00111$:
;	../../core/net/mac/csma.c:248: time = time + (random_rand() % (backoff_transmissions * time));
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_random_rand
	xch	a,r0
	mov	a,_bp
	add	a,#0x13
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/mac/csma.c:250: if(n->transmissions < metadata->max_transmissions) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00113$
;	../../core/net/mac/csma.c:253: transmit_packet_list, n);
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	../../core/net/mac/csma.c:252: ctimer_set(&n->transmit_timer, time,
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
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
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	mov	a,_bp
	add	a,#0x0a
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
;	../../core/net/mac/csma.c:256: queuebuf_update_attr_from_packetbuf(q->buf);
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_queuebuf_update_attr_from_packetbuf
	ljmp	00119$
00113$:
;	../../core/net/mac/csma.c:260: free_first_packet(n);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_first_packet
;	../../core/net/mac/csma.c:261: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	00119$
00116$:
;	../../core/net/mac/csma.c:269: free_first_packet(n);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free_first_packet
;	../../core/net/mac/csma.c:270: mac_call_sent_callback(sent, cptr, status, num_tx);
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_mac_call_sent_callback
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00119$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_packet'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp -5
;sent                      Allocated to stack - _bp +1
;q                         Allocated to stack - _bp +3
;n                         Allocated to stack - _bp +6
;addr                      Allocated to registers r2 r4 r5 
;metadata                  Allocated to registers r7 r6 r2 
;sloc0                     Allocated to stack - _bp +9
;seqno                     Allocated with name '_send_packet_seqno_1_1'
;------------------------------------------------------------
;	../../core/net/mac/csma.c:275: send_packet(mac_callback_t sent, void *ptr)
;	-----------------------------------------
;	 function send_packet
;	-----------------------------------------
_send_packet:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	../../core/net/mac/csma.c:281: packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, seqno++);
	mov	dptr,#_send_packet_seqno_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_send_packet_seqno_1_1
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	push	ar4
	push	ar5
	mov	dpl,#0x0A
	lcall	_packetbuf_set_attr
	dec	sp
	dec	sp
;	../../core/net/mac/csma.c:286: &rimeaddr_null)) {
;	../../core/net/mac/csma.c:285: if(!rimeaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
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
	jz	00153$
	ljmp	00127$
00153$:
;	../../core/net/mac/csma.c:287: const rimeaddr_t *addr = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
	mov	dpl,#0x19
	lcall	_packetbuf_addr
	mov	r3,dpl
;	../../core/net/mac/csma.c:290: n = neighbor_queue_from_addr(addr);
	mov	r4,dph
	mov	r5,b
	mov	ar2,r3
	mov	dpl,r2
	push	ar5
	push	ar4
	push	ar2
	lcall	_neighbor_queue_from_addr
	mov	r7,dpl
	mov	r6,dph
	mov	r3,b
	pop	ar2
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar3
;	../../core/net/mac/csma.c:291: if(n == NULL) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00154$
	ljmp	00107$
00154$:
;	../../core/net/mac/csma.c:293: n = memb_alloc(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	push	ar5
	push	ar4
	push	ar2
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar2
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../../core/net/mac/csma.c:294: if(n != NULL) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00155$
	ljmp	00107$
00155$:
;	../../core/net/mac/csma.c:296: rimeaddr_copy(&n->addr, addr);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/csma.c:297: n->transmissions = 0;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x1A
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
	clr	a
	lcall	__gptrput
;	../../core/net/mac/csma.c:298: n->collisions = 0;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x1B
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
	clr	a
	lcall	__gptrput
;	../../core/net/mac/csma.c:299: n->deferrals = 0;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x1C
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
	clr	a
	lcall	__gptrput
;	../../core/net/mac/csma.c:301: LIST_STRUCT_INIT(n, queued_packet_list);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x1D
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_list_init
;	../../core/net/mac/csma.c:303: list_add(neighbor_list, n);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/csma.c:358: NETSTACK_RDC.send(sent, ptr);
;	../../core/net/mac/csma.c:303: list_add(neighbor_list, n);
00107$:
;	../../core/net/mac/csma.c:307: if(n != NULL) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00156$
	ljmp	00125$
00156$:
;	../../core/net/mac/csma.c:309: q = memb_alloc(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	../../core/net/mac/csma.c:310: if(q != NULL) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00157$
	ljmp	00121$
00157$:
;	../../core/net/mac/csma.c:311: q->ptr = memb_alloc(&metadata_memb);
	mov	a,_bp
	add	a,#0x03
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
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar2
	lcall	_memb_alloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../../core/net/mac/csma.c:312: if(q->ptr != NULL) {
	mov	a,r3
	orl	a,r4
	jnz	00158$
	ljmp	00119$
00158$:
;	../../core/net/mac/csma.c:313: q->buf = queuebuf_new_from_packetbuf();
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x03
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
	push	ar7
	push	ar6
	push	ar2
	lcall	_queuebuf_new_from_packetbuf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x09
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
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../../core/net/mac/csma.c:314: if(q->buf != NULL) {
	mov	a,r3
	orl	a,r4
	jnz	00159$
	ljmp	00117$
00159$:
;	../../core/net/mac/csma.c:315: struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	ar7,r3
	mov	ar6,r4
	mov	ar2,r5
;	../../core/net/mac/csma.c:317: if(packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS) == 0) {
	mov	dpl,#0x09
	push	ar7
	push	ar6
	push	ar2
	lcall	_packetbuf_attr
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00109$
;	../../core/net/mac/csma.c:319: metadata->max_transmissions = CSMA_MAX_MAC_TRANSMISSIONS;
	mov	a,#0x05
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar5,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x03
	lcall	__gptrput
	sjmp	00110$
00109$:
;	../../core/net/mac/csma.c:321: metadata->max_transmissions =
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x05
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
;	../../core/net/mac/csma.c:322: packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS);
	mov	dpl,#0x09
	push	ar7
	push	ar6
	push	ar2
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
00110$:
;	../../core/net/mac/csma.c:324: metadata->sent = sent;
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/mac/csma.c:325: metadata->cptr = ptr;
	mov	a,#0x02
	add	a,r7
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar5,r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
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
;	../../core/net/mac/csma.c:327: if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
	mov	dpl,#0x0E
	lcall	_packetbuf_attr
	mov	r4,dpl
	mov	r5,dph
	cjne	r4,#0x01,00112$
	cjne	r5,#0x00,00112$
;	../../core/net/mac/csma.c:329: list_push(n->queued_packet_list, q);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x20
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
	push	ar7
	push	ar6
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
	sjmp	00113$
00112$:
;	../../core/net/mac/csma.c:331: list_add(n->queued_packet_list, q);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x20
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
	push	ar7
	push	ar6
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
00113$:
;	../../core/net/mac/csma.c:335: if(list_head(n->queued_packet_list) == q) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x20
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
	lcall	_list_head
	mov	r7,dpl
	mov	r6,dph
	mov	r2,b
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00164$
	sjmp	00115$
00164$:
;	../../core/net/mac/csma.c:336: ctimer_set(&n->transmit_timer, 0, transmit_packet_list, n);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar2
	push	ar7
	push	ar6
	mov	a,#_transmit_packet_list
	push	acc
	mov	a,#(_transmit_packet_list >> 8)
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00115$:
;	../../core/net/mac/csma.c:338: return;
	ljmp	00129$
00117$:
;	../../core/net/mac/csma.c:340: memb_free(&metadata_memb, q->ptr);
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
	push	ar2
	push	ar6
	push	ar7
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00119$:
;	../../core/net/mac/csma.c:343: memb_free(&packet_memb, q);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00121$:
;	../../core/net/mac/csma.c:347: if(list_length(n->queued_packet_list) == 0) {
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,#0x20
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
	lcall	_list_length
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00125$
;	../../core/net/mac/csma.c:348: list_remove(neighbor_list, n);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dptr,#_neighbor_list
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/csma.c:349: memb_free(&neighbor_memb, n);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	push	ar2
	push	ar4
	push	ar5
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	lcall	_memb_free
	dec	sp
	dec	sp
	dec	sp
00125$:
;	../../core/net/mac/csma.c:355: mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 1);
	mov	a,#0x01
	push	acc
	clr	a
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
	sjmp	00129$
00127$:
;	../../core/net/mac/csma.c:358: NETSTACK_RDC.send(sent, ptr);
	mov	dptr,#(_nullrdc_driver + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	push	ar7
	push	ar6
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
	mov	a,#00166$
	push	acc
	mov	a,#(00166$ >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ret
00166$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00129$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'input_packet'
;------------------------------------------------------------
;	../../core/net/mac/csma.c:363: input_packet(void)
;	-----------------------------------------
;	 function input_packet
;	-----------------------------------------
_input_packet:
;	../../core/net/mac/csma.c:365: NETSTACK_NETWORK.input();
	mov	dptr,#(_rime_driver + 0x0005)
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
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	../../core/net/mac/csma.c:369: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	../../core/net/mac/csma.c:371: return NETSTACK_RDC.on();
	mov	dptr,#(_nullrdc_driver + 0x000b)
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
;	../../core/net/mac/csma.c:375: off(int keep_radio_on)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/mac/csma.c:377: return NETSTACK_RDC.off(keep_radio_on);
	mov	dptr,#(_nullrdc_driver + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#00103$
	push	acc
	mov	a,#(00103$ >> 8)
	push	acc
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	ret
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_check_interval'
;------------------------------------------------------------
;	../../core/net/mac/csma.c:381: channel_check_interval(void)
;	-----------------------------------------
;	 function channel_check_interval
;	-----------------------------------------
_channel_check_interval:
;	../../core/net/mac/csma.c:383: if(NETSTACK_RDC.channel_check_interval) {
	mov	dptr,#(_nullrdc_driver + 0x000f)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	orl	a,r6
	jz	00102$
;	../../core/net/mac/csma.c:384: return NETSTACK_RDC.channel_check_interval();
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_call_dptr
00102$:
;	../../core/net/mac/csma.c:386: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	../../core/net/mac/csma.c:390: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	../../core/net/mac/csma.c:392: memb_init(&packet_memb);
	mov	dptr,#_packet_memb
	mov	b,#0x00
	lcall	_memb_init
;	../../core/net/mac/csma.c:393: memb_init(&metadata_memb);
	mov	dptr,#_metadata_memb
	mov	b,#0x00
	lcall	_memb_init
;	../../core/net/mac/csma.c:394: memb_init(&neighbor_memb);
	mov	dptr,#_neighbor_memb
	mov	b,#0x00
	ljmp	_memb_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
_csma_driver:
	.byte _str_0,(_str_0 >> 8),#0x80
	.byte _init,(_init >> 8)
	.byte _send_packet,(_send_packet >> 8)
	.byte _input_packet,(_input_packet >> 8)
	.byte _on,(_on >> 8)
	.byte _off,(_off >> 8)
	.byte _channel_check_interval,(_channel_check_interval >> 8)
_str_0:
	.ascii "CSMA"
	.db 0x00
	.area XINIT   (CODE)
__xinit__neighbor_memb:
	.byte #0x23,#0x00	; 35
	.byte #0x02,#0x00	; 2
	.byte _neighbor_memb_memb_count,(_neighbor_memb_memb_count >> 8),#0x00
	.byte _neighbor_memb_memb_mem,(_neighbor_memb_memb_mem >> 8),#0x00
__xinit__packet_memb:
	.byte #0x09,#0x00	; 9
	.byte #0x08,#0x00	; 8
	.byte _packet_memb_memb_count,(_packet_memb_memb_count >> 8),#0x00
	.byte _packet_memb_memb_mem,(_packet_memb_memb_mem >> 8),#0x00
__xinit__metadata_memb:
	.byte #0x06,#0x00	; 6
	.byte #0x08,#0x00	; 8
	.byte _metadata_memb_memb_count,(_metadata_memb_memb_count >> 8),#0x00
	.byte _metadata_memb_memb_mem,(_metadata_memb_memb_mem >> 8),#0x00
__xinit__neighbor_list_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__neighbor_list:
	.byte _neighbor_list_list,(_neighbor_list_list >> 8),#0x00
	.area CABS    (ABS,CODE)
