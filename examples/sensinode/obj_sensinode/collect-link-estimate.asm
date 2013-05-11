;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:18 2013
;--------------------------------------------------------
	.module collect_link_estimate
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _collect_link_estimate_new
	.globl _collect_link_estimate_update_tx
	.globl _collect_link_estimate_update_tx_fail
	.globl _collect_link_estimate_update_rx
	.globl _collect_link_estimate
	.globl _collect_link_estimate_num_estimates
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
;Allocation info for local variables in function 'collect_link_estimate_new'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:64: collect_link_estimate_new(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate_new
;	-----------------------------------------
_collect_link_estimate_new:
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
;	../../core/net/rime/collect-link-estimate.c:66: le->num_estimates = 0;
	mov	a,#0x04
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
;	../../core/net/rime/collect-link-estimate.c:67: le->etx_accumulator = COLLECT_LINK_ESTIMATE_UNIT;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_tx'
;------------------------------------------------------------
;tx                        Allocated to stack - _bp -3
;le                        Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:71: collect_link_estimate_update_tx(struct collect_link_estimate *le, uint8_t tx)
;	-----------------------------------------
;	 function collect_link_estimate_update_tx
;	-----------------------------------------
_collect_link_estimate_update_tx:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	../../core/net/rime/collect-link-estimate.c:73: if(tx == 0) {
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00102$
;	../../core/net/rime/collect-link-estimate.c:75: return;
	ljmp	00109$
00102$:
;	../../core/net/rime/collect-link-estimate.c:77: if(le != NULL) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00120$
	ljmp	00109$
00120$:
;	../../core/net/rime/collect-link-estimate.c:78: if(le->num_estimates == 0) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
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
	mov	r6,a
	jnz	00104$
;	../../core/net/rime/collect-link-estimate.c:79: le->etx_accumulator = tx * COLLECT_LINK_ESTIMATE_UNIT;
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	mov	b,#0x08
	mul	ab
	mov	r3,a
	mov	r4,b
	mov	a,r4
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/net/rime/collect-link-estimate.c:88: le->etx_accumulator * (COLLECT_LINK_ESTIMATE_UNIT -
	pop	ar4
	pop	ar3
	pop	ar2
;	../../core/net/rime/collect-link-estimate.c:79: le->etx_accumulator = tx * COLLECT_LINK_ESTIMATE_UNIT;
00104$:
;	../../core/net/rime/collect-link-estimate.c:82: if(le->num_estimates < MAX_ESTIMATES) {
	cjne	r6,#0xFF,00122$
00122$:
	jnc	00106$
;	../../core/net/rime/collect-link-estimate.c:83: le->num_estimates++;
	mov	a,r6
	inc	a
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
00106$:
;	../../core/net/rime/collect-link-estimate.c:86: le->etx_accumulator = (((uint32_t)tx * COLLECT_LINK_ESTIMATE_UNIT) *
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	../../core/net/rime/collect-link-estimate.c:88: le->etx_accumulator * (COLLECT_LINK_ESTIMATE_UNIT -
	mov	dptr,#(0x18&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1F
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xE0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_tx_fail'
;------------------------------------------------------------
;tx                        Allocated to stack - _bp -3
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:96: collect_link_estimate_update_tx_fail(struct collect_link_estimate *le,
;	-----------------------------------------
;	 function collect_link_estimate_update_tx_fail
;	-----------------------------------------
_collect_link_estimate_update_tx_fail:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect-link-estimate.c:99: collect_link_estimate_update_tx(le, tx * 2);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r4,a
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_collect_link_estimate_update_tx
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_update_rx'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:103: collect_link_estimate_update_rx(struct collect_link_estimate *n)
;	-----------------------------------------
;	 function collect_link_estimate_update_rx
;	-----------------------------------------
_collect_link_estimate_update_rx:
;	../../core/net/rime/collect-link-estimate.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:109: collect_link_estimate(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate
;	-----------------------------------------
_collect_link_estimate:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect-link-estimate.c:111: if(le->num_estimates == 0) {
	mov	a,#0x04
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
	jnz	00102$
;	../../core/net/rime/collect-link-estimate.c:112: return INITIAL_LINK_ESTIMATE * COLLECT_LINK_ESTIMATE_UNIT;
	mov	dptr,#0x0080
	ret
00102$:
;	../../core/net/rime/collect-link-estimate.c:115: return le->etx_accumulator;
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
	inc	dptr
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'collect_link_estimate_num_estimates'
;------------------------------------------------------------
;le                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/collect-link-estimate.c:119: collect_link_estimate_num_estimates(struct collect_link_estimate *le)
;	-----------------------------------------
;	 function collect_link_estimate_num_estimates
;	-----------------------------------------
_collect_link_estimate_num_estimates:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/collect-link-estimate.c:121: if(le != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00102$
;	../../core/net/rime/collect-link-estimate.c:122: return le->num_estimates;
	mov	a,#0x04
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
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	ret
00102$:
;	../../core/net/rime/collect-link-estimate.c:124: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
