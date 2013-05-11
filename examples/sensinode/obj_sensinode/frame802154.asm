;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:20 2013
;--------------------------------------------------------
	.module frame802154
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rimeaddr_copy
	.globl _memset
	.globl _memcpy
	.globl _frame802154_hdrlen
	.globl _frame802154_create
	.globl _frame802154_parse
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
;Allocation info for local variables in function 'addr_len'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../../core/net/mac/frame802154.c:83: addr_len(uint8_t mode)
;	-----------------------------------------
;	 function addr_len
;	-----------------------------------------
_addr_len:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../../core/net/mac/frame802154.c:85: switch(mode) {
	cjne	r7,#0x02,00111$
	sjmp	00101$
00111$:
;	../../core/net/mac/frame802154.c:86: case FRAME802154_SHORTADDRMODE:  /* 16-bit address */
	cjne	r7,#0x03,00103$
	sjmp	00102$
00101$:
;	../../core/net/mac/frame802154.c:87: return 2;
	mov	dpl,#0x02
;	../../core/net/mac/frame802154.c:88: case FRAME802154_LONGADDRMODE:   /* 64-bit address */
	ret
00102$:
;	../../core/net/mac/frame802154.c:89: return 8;
	mov	dpl,#0x08
;	../../core/net/mac/frame802154.c:90: default:
	ret
00103$:
;	../../core/net/mac/frame802154.c:91: return 0;
	mov	dpl,#0x00
;	../../core/net/mac/frame802154.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'field_len'
;------------------------------------------------------------
;flen                      Allocated to stack - _bp -5
;p                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../core/net/mac/frame802154.c:96: field_len(frame802154_t *p, field_length_t *flen)
;	-----------------------------------------
;	 function field_len
;	-----------------------------------------
_field_len:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../core/net/mac/frame802154.c:99: memset(flen, 0, sizeof(field_length_t));
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/frame802154.c:102: if(p->fcf.dest_addr_mode & 3) {
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	anl	a,#0x03
	jz	00102$
;	../../core/net/mac/frame802154.c:103: flen->dest_pid_len = 2;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
00102$:
;	../../core/net/mac/frame802154.c:105: if(p->fcf.src_addr_mode & 3) {
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x07
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	anl	a,#0x03
	jz	00104$
;	../../core/net/mac/frame802154.c:106: flen->src_pid_len = 2;
	push	ar3
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:125: if(p->fcf.security_enabled & 1) {
	pop	ar3
;	../../core/net/mac/frame802154.c:106: flen->src_pid_len = 2;
00104$:
;	../../core/net/mac/frame802154.c:110: if(p->fcf.dest_addr_mode & 3 && p->fcf.src_addr_mode & 3 &&
	mov	a,r4
	anl	a,#0x03
	jnz	00124$
	ljmp	00106$
00124$:
	mov	a,r3
	anl	a,#0x03
	jnz	00125$
	ljmp	00106$
00125$:
;	../../core/net/mac/frame802154.c:111: p->src_pid == p->dest_pid) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x13
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
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
	mov	a,r5
	cjne	a,ar2,00106$
	mov	a,r6
	cjne	a,ar3,00106$
;	../../core/net/mac/frame802154.c:112: p->fcf.panid_compression = 1;
	mov	r0,_bp
	inc	r0
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
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:115: flen->src_pid_len = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	sjmp	00107$
00106$:
;	../../core/net/mac/frame802154.c:117: p->fcf.panid_compression = 0;
	mov	r0,_bp
	inc	r0
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
00107$:
;	../../core/net/mac/frame802154.c:121: flen->dest_addr_len = addr_len(p->fcf.dest_addr_mode & 3);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	anl	ar4,#0x03
	mov	dpl,r4
	push	ar7
	push	ar3
	push	ar2
	lcall	_addr_len
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:122: flen->src_addr_len = addr_len(p->fcf.src_addr_mode & 3);
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0x03
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_addr_len
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:125: if(p->fcf.security_enabled & 1) {
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_hdrlen'
;------------------------------------------------------------
;p                         Allocated to registers r5 r6 r7 
;flen                      Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/mac/frame802154.c:158: frame802154_hdrlen(frame802154_t *p)
;	-----------------------------------------
;	 function frame802154_hdrlen
;	-----------------------------------------
_frame802154_hdrlen:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/mac/frame802154.c:161: field_len(p, &flen);
	mov	r4,_bp
	inc	r4
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_field_len
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/frame802154.c:162: return 3 + flen.dest_pid_len + flen.dest_addr_len +
	mov	r1,_bp
	inc	r1
	mov	ar7,@r1
	inc	r7
	inc	r7
	inc	r7
	mov	r6,_bp
	inc	r6
	mov	a,r6
	inc	a
	mov	r1,a
	mov	a,@r1
	add	a,r7
	mov	r7,a
;	../../core/net/mac/frame802154.c:163: flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len;
	mov	a,#0x02
	add	a,r6
	mov	r1,a
	mov	a,@r1
	add	a,r7
	mov	r7,a
	mov	a,#0x03
	add	a,r6
	mov	r1,a
	mov	a,@r1
	add	a,r7
	mov	r7,a
	mov	a,#0x04
	add	a,r6
	mov	r1,a
	mov	a,@r1
	add	a,r7
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_create'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -5
;buf_len                   Allocated to stack - _bp -6
;p                         Allocated to stack - _bp +1
;c                         Allocated to registers r4 r5 
;flen                      Allocated to stack - _bp +4
;tx_frame_buffer           Allocated to stack - _bp +9
;pos                       Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +13
;sloc1                     Allocated to stack - _bp +17
;sloc2                     Allocated to stack - _bp +15
;sloc3                     Allocated to stack - _bp +18
;sloc4                     Allocated to stack - _bp +20
;------------------------------------------------------------
;	../../core/net/mac/frame802154.c:181: frame802154_create(frame802154_t *p, uint8_t *buf, uint8_t buf_len)
;	-----------------------------------------
;	 function frame802154_create
;	-----------------------------------------
_frame802154_create:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x13
	mov	sp,a
;	../../core/net/mac/frame802154.c:188: field_len(p, &flen);
	mov	a,_bp
	add	a,#0x04
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
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
	lcall	_field_len
	dec	sp
	dec	sp
	dec	sp
;	../../core/net/mac/frame802154.c:190: if(3 + flen.dest_pid_len + flen.dest_addr_len +
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	inc	a
	mov	r0,a
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
;	../../core/net/mac/frame802154.c:191: flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len > buf_len) {
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	ar2,@r0
	mov	ar6,r2
	mov	r7,#0x00
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r6,a
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	mov	r5,#0x00
	mov	a,r4
	add	a,r7
	mov	r7,a
	mov	a,r5
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r7
	mov	a,r5
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	../../core/net/mac/frame802154.c:193: return 0;
	mov	dpl,#0x00
	ljmp	00115$
00102$:
;	../../core/net/mac/frame802154.c:198: tx_frame_buffer = buf;
	push	ar2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	push	ar1
	mov	a,_bp
	add	a,#0x09
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
;	../../core/net/mac/frame802154.c:199: tx_frame_buffer[0] = (p->fcf.frame_type & 7) |
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x07
;	../../core/net/mac/frame802154.c:200: ((p->fcf.security_enabled & 1) << 3) |
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	anl	a,#0x01
	swap	a
	rr	a
	anl	a,#0xF8
	orl	ar2,a
;	../../core/net/mac/frame802154.c:201: ((p->fcf.frame_pending & 1) << 4) |
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	anl	a,#0x01
	swap	a
	anl	a,#0xF0
	orl	ar2,a
;	../../core/net/mac/frame802154.c:202: ((p->fcf.ack_required & 1) << 5) |
	mov	r0,_bp
	inc	r0
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
	anl	a,#0x01
	swap	a
	rl	a
	anl	a,#0xE0
	orl	ar2,a
;	../../core/net/mac/frame802154.c:203: ((p->fcf.panid_compression & 1) << 6);
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
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
	anl	a,#0x01
	rr	a
	rr	a
	anl	a,#0xC0
	orl	ar2,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:204: tx_frame_buffer[1] = ((p->fcf.dest_addr_mode & 3) << 2) |
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,#0x01
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
	pop	ar1
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	anl	a,#0x03
	add	a,acc
	add	a,acc
	mov	r2,a
;	../../core/net/mac/frame802154.c:205: ((p->fcf.frame_version & 3) << 4) |
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
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
	anl	a,#0x03
	swap	a
	anl	a,#0xF0
	orl	ar2,a
;	../../core/net/mac/frame802154.c:206: ((p->fcf.src_addr_mode & 3) << 6);
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
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
	anl	a,#0x03
	rr	a
	rr	a
	anl	a,#0xC0
	orl	ar2,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:209: tx_frame_buffer[2] = p->seq;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:210: pos = 3;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x03
;	../../core/net/mac/frame802154.c:213: if(flen.dest_pid_len == 2) {
	mov	ar5,@r1
	cjne	r5,#0x02,00134$
	sjmp	00135$
00134$:
	pop	ar2
	sjmp	00104$
00135$:
;	../../core/net/mac/frame802154.c:214: tx_frame_buffer[pos++] = p->dest_pid & 0xff;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	ar3,r7
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:215: tx_frame_buffer[pos++] = (p->dest_pid >> 8) & 0xff;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x05
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	ar2,r6
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:240: return pos;
	pop	ar2
;	../../core/net/mac/frame802154.c:215: tx_frame_buffer[pos++] = (p->dest_pid >> 8) & 0xff;
00104$:
;	../../core/net/mac/frame802154.c:219: for(c = flen.dest_addr_len; c > 0; c--) {
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,#0x0B
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar3,@r0
00107$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	../../core/net/mac/frame802154.c:220: tx_frame_buffer[pos++] = p->dest_addr[c - 1];
	push	ar2
	mov	ar2,r3
	inc	r3
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,r2
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
	mov	ar7,r4
	mov	a,r7
	dec	a
	xch	a,r0
	mov	a,_bp
	add	a,#0x0f
	xch	a,r0
	add	a,@r0
	mov	r2,a
	inc	r0
	clr	a
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:219: for(c = flen.dest_addr_len; c > 0; c--) {
	dec	r4
	cjne	r4,#0xFF,00137$
	dec	r5
00137$:
	pop	ar2
	sjmp	00107$
00124$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar3
;	../../core/net/mac/frame802154.c:224: if(flen.src_pid_len == 2) {
	cjne	r2,#0x02,00106$
;	../../core/net/mac/frame802154.c:225: tx_frame_buffer[pos++] = p->src_pid & 0xff;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r3
	inc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,r3
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x13
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	ar5,r2
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:226: tx_frame_buffer[pos++] = (p->src_pid >> 8) & 0xff;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	ar2,r4
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
00106$:
;	../../core/net/mac/frame802154.c:230: for(c = flen.src_addr_len; c > 0; c--) {
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	mov	a,#0x15
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
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
00111$:
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	../../core/net/mac/frame802154.c:231: tx_frame_buffer[pos++] = p->src_addr[c - 1];
	mov	ar5,r2
	inc	r2
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,r5
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
	mov	ar5,r6
	mov	a,r5
	dec	a
	xch	a,r0
	mov	a,_bp
	add	a,#0x14
	xch	a,r0
	add	a,@r0
	mov	r3,a
	inc	r0
	clr	a
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:230: for(c = flen.src_addr_len; c > 0; c--) {
	dec	r6
	cjne	r6,#0xFF,00141$
	dec	r7
00141$:
	sjmp	00111$
00114$:
;	../../core/net/mac/frame802154.c:240: return pos;
	mov	dpl,r2
00115$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'frame802154_parse'
;------------------------------------------------------------
;len                       Allocated to stack - _bp -3
;pf                        Allocated to stack - _bp -6
;data                      Allocated to stack - _bp +1
;p                         Allocated to stack - _bp +4
;fcf                       Allocated to stack - _bp +7
;c                         Allocated to stack - _bp +15
;sloc0                     Allocated to stack - _bp +16
;sloc1                     Allocated to stack - _bp +19
;sloc2                     Allocated to stack - _bp +21
;------------------------------------------------------------
;	../../core/net/mac/frame802154.c:253: frame802154_parse(uint8_t *data, uint8_t len, frame802154_t *pf)
;	-----------------------------------------
;	 function frame802154_parse
;	-----------------------------------------
_frame802154_parse:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x14
	mov	sp,a
;	../../core/net/mac/frame802154.c:259: if(len < 3) {
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x03,00162$
00162$:
	jnc	00102$
;	../../core/net/mac/frame802154.c:260: return 0;
	mov	dpl,#0x00
	ljmp	00130$
00102$:
;	../../core/net/mac/frame802154.c:266: fcf.frame_type = p[0] & 7;
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x07
	anl	a,r4
	mov	@r1,a
;	../../core/net/mac/frame802154.c:267: fcf.security_enabled = (p[0] >> 3) & 1;
	mov	a,_bp
	add	a,#0x07
	mov	r3,a
	inc	a
	mov	r1,a
	mov	a,r4
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	@r1,a
;	../../core/net/mac/frame802154.c:268: fcf.frame_pending = (p[0] >> 4) & 1;
	mov	a,#0x02
	add	a,r3
	mov	r1,a
	mov	a,r4
	swap	a
	anl	a,#0x01
	mov	@r1,a
;	../../core/net/mac/frame802154.c:269: fcf.ack_required = (p[0] >> 5) & 1;
	mov	a,#0x03
	add	a,r3
	mov	r1,a
	mov	a,r4
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	@r1,a
;	../../core/net/mac/frame802154.c:270: fcf.panid_compression = (p[0] >> 6) & 1;
	mov	a,#0x04
	add	a,r3
	mov	r1,a
	mov	a,r4
	rl	a
	rl	a
	anl	a,#0x01
	mov	@r1,a
;	../../core/net/mac/frame802154.c:272: fcf.dest_addr_mode = (p[1] >> 2) & 3;
	mov	a,#0x05
	add	a,r3
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r7,a
	mov	a,#0x03
	anl	a,r7
	mov	@r1,a
;	../../core/net/mac/frame802154.c:273: fcf.frame_version = (p[1] >> 4) & 3;
	mov	a,#0x06
	add	a,r3
	mov	r1,a
	mov	a,r2
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	a,#0x03
	anl	a,r7
	mov	@r1,a
;	../../core/net/mac/frame802154.c:274: fcf.src_addr_mode = (p[1] >> 6) & 3;
	mov	a,#0x07
	add	a,r3
	mov	r1,a
	mov	a,r2
	rl	a
	rl	a
	anl	a,#0x03
	mov	r2,a
	mov	a,#0x03
	anl	a,r2
	mov	@r1,a
;	../../core/net/mac/frame802154.c:277: memcpy(&pf->fcf, &fcf, sizeof(frame802154_fcf_t));
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar3,r2
	mov	ar6,r4
	mov	ar7,r5
	push	ar5
	push	ar4
	push	ar2
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x10
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
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/frame802154.c:278: pf->seq = p[2];
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x08
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:279: p += 3;                             /* Skip first three bytes */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
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
;	../../core/net/mac/frame802154.c:282: if(fcf.dest_addr_mode) {
	mov	a,_bp
	add	a,#0x07
	add	a,#0x05
	mov	r1,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	jnz	00164$
	ljmp	00109$
00164$:
;	../../core/net/mac/frame802154.c:284: pf->dest_pid = p[0] + (p[1] << 8);
	mov	a,#0x09
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:285: p += 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../../core/net/mac/frame802154.c:293: if(fcf.dest_addr_mode == FRAME802154_SHORTADDRMODE) {
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	cjne	@r0,#0x02,00165$
	sjmp	00166$
00165$:
	pop	ar5
	pop	ar4
	pop	ar2
	ljmp	00106$
00166$:
	pop	ar5
	pop	ar4
	pop	ar2
;	../../core/net/mac/frame802154.c:294: rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x0B
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar2
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/frame802154.c:295: pf->dest_addr[0] = p[1];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
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
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:296: pf->dest_addr[1] = p[0];
	mov	a,#0x0C
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:297: p += 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar5
	pop	ar4
	pop	ar2
	ljmp	00110$
00106$:
;	../../core/net/mac/frame802154.c:298: } else if(fcf.dest_addr_mode == FRAME802154_LONGADDRMODE) {
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	cjne	@r0,#0x03,00167$
	sjmp	00168$
00167$:
	ljmp	00110$
00168$:
;	../../core/net/mac/frame802154.c:299: for(c = 0; c < 8; c++) {
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x0B
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x00
00122$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0x08,00169$
00169$:
	jnc	00125$
;	../../core/net/mac/frame802154.c:300: pf->dest_addr[c] = p[7 - c];
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar2,@r0
	mov	r4,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:299: for(c = 0; c < 8; c++) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	inc	@r0
	pop	ar5
	pop	ar4
	pop	ar2
	sjmp	00122$
00125$:
;	../../core/net/mac/frame802154.c:302: p += 8;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00110$
00109$:
;	../../core/net/mac/frame802154.c:305: rimeaddr_copy((rimeaddr_t *)&(pf->dest_addr), &rimeaddr_null);
	mov	a,#0x0B
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	push	ar5
	push	ar4
	push	ar2
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/frame802154.c:306: pf->dest_pid = 0;
	mov	a,#0x09
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00110$:
;	../../core/net/mac/frame802154.c:310: if(fcf.src_addr_mode) {
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	add	a,#0x07
	mov	r1,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	jnz	00171$
	ljmp	00120$
00171$:
;	../../core/net/mac/frame802154.c:312: if(!fcf.panid_compression) {
	mov	a,#0x04
	add	a,r7
	mov	r1,a
	mov	a,@r1
	jz	00172$
	ljmp	00112$
00172$:
;	../../core/net/mac/frame802154.c:313: pf->src_pid = p[0] + (p[1] << 8);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x13
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
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
	mov	r7,a
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:314: p += 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00113$
00112$:
;	../../core/net/mac/frame802154.c:316: pf->src_pid = pf->dest_pid;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x13
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,#0x09
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00113$:
;	../../core/net/mac/frame802154.c:325: if(fcf.src_addr_mode == FRAME802154_SHORTADDRMODE) {
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	cjne	@r0,#0x02,00173$
	sjmp	00174$
00173$:
	ljmp	00117$
00174$:
;	../../core/net/mac/frame802154.c:326: rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x15
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar4
	push	ar2
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/frame802154.c:327: pf->src_addr[0] = p[1];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
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
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:328: pf->src_addr[1] = p[0];
	mov	a,#0x16
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:329: p += 2;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	pop	ar5
	pop	ar4
	pop	ar2
	ljmp	00121$
00117$:
;	../../core/net/mac/frame802154.c:330: } else if(fcf.src_addr_mode == FRAME802154_LONGADDRMODE) {
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	cjne	@r0,#0x03,00175$
	sjmp	00176$
00175$:
	ljmp	00121$
00176$:
;	../../core/net/mac/frame802154.c:331: for(c = 0; c < 8; c++) {
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x15
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,#0x00
00126$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	cjne	@r0,#0x08,00177$
00177$:
	jnc	00129$
;	../../core/net/mac/frame802154.c:332: pf->src_addr[c] = p[7 - c];
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar2,@r0
	mov	r4,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:331: for(c = 0; c < 8; c++) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	inc	@r0
	pop	ar5
	pop	ar4
	pop	ar2
	sjmp	00126$
00129$:
;	../../core/net/mac/frame802154.c:334: p += 8;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00121$
00120$:
;	../../core/net/mac/frame802154.c:337: rimeaddr_copy((rimeaddr_t *)&(pf->src_addr), &rimeaddr_null);
	mov	a,#0x15
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	push	ar5
	push	ar4
	push	ar2
	mov	a,#_rimeaddr_null
	push	acc
	mov	a,#(_rimeaddr_null >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	_rimeaddr_copy
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	../../core/net/mac/frame802154.c:338: pf->src_pid = 0;
	mov	a,#0x13
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
00121$:
;	../../core/net/mac/frame802154.c:347: c = p - data;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	r6,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
;	../../core/net/mac/frame802154.c:349: pf->payload_len = len - c;
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,#0x30
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r6
	mov	r7,a
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	../../core/net/mac/frame802154.c:351: pf->payload = p;
	mov	a,#0x2D
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
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
;	../../core/net/mac/frame802154.c:354: return c > len ? 0 : c;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	jnc	00132$
	mov	dpl,#0x00
	sjmp	00133$
00132$:
	mov	dpl,r6
00133$:
00130$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
