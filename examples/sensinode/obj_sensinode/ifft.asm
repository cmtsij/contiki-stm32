;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:25 2013
;--------------------------------------------------------
	.module ifft
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ifft
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
;Allocation info for local variables in function 'bitrev'
;------------------------------------------------------------
;nu                        Allocated to stack - _bp -4
;j                         Allocated to stack - _bp +1
;k                         Allocated to registers r7 r6 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	../../core/lib/ifft.c:62: static uint16_t bitrev(uint16_t j, uint16_t nu)
;	-----------------------------------------
;	 function bitrev
;	-----------------------------------------
_bitrev:
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
;	../../core/lib/ifft.c:65: k = 0;
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00101$:
;	../../core/lib/ifft.c:66: for (; nu > 0; nu--) {
	mov	a,r2
	orl	a,r3
	jz	00107$
	mov	a,#0x01
00107$:
	mov	r5,a
	mov	a,r5
	jz	00104$
;	../../core/lib/ifft.c:67: k  = (k << 1) + (j & 1);
	mov	ar4,r7
	mov	a,r6
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	anl	a,@r0
	mov	r7,#0x00
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	ar7,r4
	mov	ar6,r5
;	../../core/lib/ifft.c:68: j = j >> 1;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../../core/lib/ifft.c:66: for (; nu > 0; nu--) {
	dec	r2
	cjne	r2,#0xFF,00118$
	dec	r3
00118$:
	sjmp	00101$
00104$:
;	../../core/lib/ifft.c:70: return k;
	mov	dpl,r7
	mov	dph,r6
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sinI'
;------------------------------------------------------------
;angleMilli                Allocated to registers r6 r7 
;pos                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../../core/lib/ifft.c:75: static int16_t sinI(uint16_t angleMilli)
;	-----------------------------------------
;	 function sinI
;	-----------------------------------------
_sinI:
	mov	r6,dpl
	mov	r7,dph
;	../../core/lib/ifft.c:78: pos = (uint16_t) ((SIN_TAB_LEN * (uint32_t) angleMilli) / 1000);
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	mov	dptr,#(0x78&0x00ff)
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
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../../core/lib/ifft.c:79: return SIN_TAB[pos % SIN_TAB_LEN];
	mov	a,#0x78
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,r6
	add	a,#_SIN_TAB
	mov	dpl,a
	mov	a,r7
	addc	a,#(_SIN_TAB >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	dpl,r7
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cosI'
;------------------------------------------------------------
;angleMilli                Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/lib/ifft.c:82: static int16_t cosI(uint16_t angleMilli)
;	-----------------------------------------
;	 function cosI
;	-----------------------------------------
_cosI:
	mov	r6,dpl
	mov	r7,dph
;	../../core/lib/ifft.c:84: return sinI(angleMilli + 250);
	mov	a,#0xFA
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_sinI
;------------------------------------------------------------
;Allocation info for local variables in function 'ilog2'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;log                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	../../core/lib/ifft.c:87: static uint16_t ilog2(uint16_t val)
;	-----------------------------------------
;	 function ilog2
;	-----------------------------------------
_ilog2:
	mov	r6,dpl
;	../../core/lib/ifft.c:91: val = val >> 1; /* The 20 = 1 => log = 0 => val = 0 */
	mov	a,dph
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../../core/lib/ifft.c:92: while (val > 0) {
	mov	r4,#0x00
	mov	r5,#0x00
00101$:
	mov	a,r6
	orl	a,r7
	jz	00103$
;	../../core/lib/ifft.c:93: val = val >> 1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../../core/lib/ifft.c:94: log++;
	inc	r4
	cjne	r4,#0x00,00101$
	inc	r5
	sjmp	00101$
00103$:
;	../../core/lib/ifft.c:96: return log;
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ifft'
;------------------------------------------------------------
;xim                       Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;xre                       Allocated to stack - _bp +1
;nu                        Allocated to stack - _bp +4
;n2                        Allocated to stack - _bp +6
;nu1                       Allocated to registers r7 r5 
;p                         Allocated to stack - _bp +8
;k                         Allocated to registers r3 r7 
;l                         Allocated to stack - _bp +10
;i                         Allocated to stack - _bp +12
;c                         Allocated to registers r7 r4 r3 r2 
;s                         Allocated to stack - _bp +14
;tr                        Allocated to stack - _bp +18
;ti                        Allocated to registers r7 r4 r3 r2 
;sloc0                     Allocated to stack - _bp +22
;sloc1                     Allocated to stack - _bp +24
;sloc2                     Allocated to stack - _bp +26
;sloc3                     Allocated to stack - _bp +28
;sloc4                     Allocated to stack - _bp +30
;sloc5                     Allocated to stack - _bp +33
;sloc6                     Allocated to stack - _bp +37
;sloc7                     Allocated to stack - _bp +41
;sloc8                     Allocated to stack - _bp +44
;sloc9                     Allocated to stack - _bp +48
;sloc10                    Allocated to stack - _bp +52
;------------------------------------------------------------
;	../../core/lib/ifft.c:114: ifft(int16_t xre[], int16_t xim[], uint16_t n)
;	-----------------------------------------
;	 function ifft
;	-----------------------------------------
_ifft:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x34
	mov	sp,a
;	../../core/lib/ifft.c:122: nu = ilog2(n);
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_ilog2
	mov	r3,dpl
	mov	r4,dph
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/lib/ifft.c:123: nu1 = nu - 1;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r5,a
;	../../core/lib/ifft.c:124: n2 = n / 2;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,@r1
	rrc	a
	xch	a,@r1
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	../../core/lib/ifft.c:126: for (i = 0; i < n; i++)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jnc	00106$
;	../../core/lib/ifft.c:127: xim[i] = 0;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r4,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r4
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	../../core/lib/ifft.c:126: for (i = 0; i < n; i++)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00169$
	inc	r0
	inc	@r0
00169$:
	sjmp	00103$
00106$:
;	../../core/lib/ifft.c:129: for (l = 1; l <= nu; l++) {
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00115$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00170$
	ljmp	00118$
00170$:
;	../../core/lib/ifft.c:130: for (k = 0; k < n; k += n2) {
	mov	r3,#0x00
	mov	r7,#0x00
00111$:
	mov	ar2,r3
	mov	ar4,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jc	00171$
	ljmp	00114$
00171$:
;	../../core/lib/ifft.c:131: for (i = 1; i <= n2; i++) {
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
00107$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	jnc	00172$
	ljmp	00113$
00172$:
;	../../core/lib/ifft.c:132: p = bitrev(k >> nu1, nu);
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,@r0
	rlc	a
	mov	ov,c
	sjmp	00174$
00173$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r2
	rrc	a
	mov	r2,a
00174$:
	djnz	b,00173$
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r4
	lcall	_bitrev
	mov	r2,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
;	../../core/lib/ifft.c:133: c = cosI((1000 * p) / n);
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divuint
	xch	a,r0
	mov	a,_bp
	add	a,#0x1c
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_cosI
	mov	r5,dpl
	mov	r6,dph
	mov	ar7,r5
	mov	a,r6
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
;	../../core/lib/ifft.c:134: s = sinI((1000 * p) / n);
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_sinI
	mov	r5,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../../core/lib/ifft.c:136: tr = ((xre[k + n2] * c + xim[k + n2] * s) >> RESOLUTION);
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	@r0,ar5
	mov	a,r6
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x25
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x2b
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x29
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x30
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,@r1
	rlc	a
	xch	a,@r1
	rlc	a
	xch	a,@r1
	anl	a,#0x01
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	add	a,acc
	orl	a,@r1
	mov	@r1,a
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,@r1
	rlc	a
	xch	a,@r1
	rlc	a
	xch	a,@r1
	anl	a,#0x01
	jnb	acc.0,00175$
	orl	a,#0xFE
00175$:
	inc	r1
	mov	@r1,a
;	../../core/lib/ifft.c:137: ti = ((xim[k + n2] * c - xre[k + n2] * s) >> RESOLUTION);
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
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
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x2c
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
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,r7
	clr	c
	subb	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r4
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r7
	rlc	a
	xch	a,r7
	rlc	a
	xch	a,r7
	anl	a,#0x01
	mov	r4,a
	inc	r0
	mov	a,@r0
	add	a,acc
	orl	a,r4
	mov	r4,a
	mov	ar3,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	jnb	acc.0,00176$
	orl	a,#0xFE
00176$:
	mov	r2,a
;	../../core/lib/ifft.c:139: xre[k + n2] = xre[k] - tr;
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	xch	a,@r1
	add	a,acc
	xch	a,@r1
	rlc	a
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	push	acc
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x1e
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
;	../../core/lib/ifft.c:140: xim[k + n2] = xim[k] - ti;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,r7
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x29
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
;	../../core/lib/ifft.c:141: xre[k] += tr;
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x37
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x2c
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
;	../../core/lib/ifft.c:142: xim[k] += ti;
	mov	a,_bp
	add	a,#0x21
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	r7,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	ar5,r7
	mov	ar6,r4
	mov	a,_bp
	add	a,#0x30
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
;	../../core/lib/ifft.c:143: k++;
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00177$
	inc	r0
	inc	@r0
00177$:
;	../../core/lib/ifft.c:131: for (i = 1; i <= n2; i++) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00178$
	inc	r0
	inc	@r0
00178$:
	ljmp	00107$
00113$:
;	../../core/lib/ifft.c:130: for (k = 0; k < n; k += n2) {
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	r6,a
	mov	ar3,r5
	mov	ar7,r6
	ljmp	00111$
00114$:
;	../../core/lib/ifft.c:146: nu1--;
	mov	a,_bp
	add	a,#0x1a
	mov	r0,a
	dec	@r0
	cjne	@r0,#0xFF,00179$
	inc	r0
	dec	@r0
00179$:
;	../../core/lib/ifft.c:147: n2 = n2 / 2;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	inc	r0
	mov	a,@r0
	dec	r0
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	../../core/lib/ifft.c:129: for (l = 1; l <= nu; l++) {
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00180$
	inc	r0
	inc	@r0
00180$:
	ljmp	00115$
00118$:
;	../../core/lib/ifft.c:150: for (k = 0; k < n; k++) {
	mov	r6,#0x00
	mov	r7,#0x00
00119$:
	mov	ar3,r6
	mov	ar5,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00181$
	ljmp	00122$
00181$:
;	../../core/lib/ifft.c:151: p = bitrev(k, nu);
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r5
	lcall	_bitrev
	mov	r3,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
;	../../core/lib/ifft.c:152: if (p > k) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	mov	a,r7
	xrl	a,#0x80
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00182$
	ljmp	00121$
00182$:
;	../../core/lib/ifft.c:153: n2 = xre[k];
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	@r0,ar6
	mov	a,r7
	xch	a,@r0
	add	a,acc
	xch	a,@r0
	rlc	a
	inc	r0
	mov	@r0,a
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x34
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar5
;	../../core/lib/ifft.c:154: xre[k] = xre[p];
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	xch	a,@r1
	add	a,acc
	xch	a,@r1
	rlc	a
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	../../core/lib/ifft.c:155: xre[p] = n2;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x2c
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
;	../../core/lib/ifft.c:157: n2 = xim[k];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r5,a
	inc	r1
	mov	a,@r1
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
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	../../core/lib/ifft.c:158: xim[k] = xim[p];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x36
	mov	r0,a
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	dec	r0
	pop	acc
	mov	@r0,a
	mov	a,_bp
	add	a,#0x34
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	../../core/lib/ifft.c:159: xim[p] = n2;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x34
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
;	../../core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	pop	ar7
	pop	ar6
;	../../core/lib/ifft.c:159: xim[p] = n2;
00121$:
;	../../core/lib/ifft.c:150: for (k = 0; k < n; k++) {
	inc	r6
	cjne	r6,#0x00,00183$
	inc	r7
00183$:
	ljmp	00119$
00122$:
;	../../core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00123$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00184$
	ljmp	00127$
00184$:
;	../../core/lib/ifft.c:166: xre[i] = (ABS(xre[i]) + ABS(xim[i]));
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	jnb	acc.7,00129$
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	clr	a
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00130$
00129$:
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
00130$:
	push	ar4
	push	ar3
	push	ar5
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r5,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r4
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	inc	r0
	mov	a,@r0
	pop	ar5
	pop	ar3
	pop	ar4
	jnb	acc.7,00131$
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r1,a
	clr	c
	clr	a
	subb	a,@r0
	mov	@r1,a
	inc	r0
	clr	a
	subb	a,@r0
	inc	r1
	mov	@r1,a
	sjmp	00132$
00131$:
	mov	a,_bp
	add	a,#0x30
	mov	r0,a
	mov	a,_bp
	add	a,#0x2c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00132$:
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	../../core/lib/ifft.c:165: for (i = 0, n2 = n / 2; i < n2; i++) {
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00187$
	inc	r0
	inc	@r0
00187$:
	ljmp	00123$
00127$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_SIN_TAB:
	.db #0x00	;  0
	.db #0x06	;  6
	.db #0x0D	;  13
	.db #0x14	;  20
	.db #0x1A	;  26
	.db #0x21	;  33
	.db #0x27	;  39
	.db #0x2D	;  45
	.db #0x34	;  52	'4'
	.db #0x3A	;  58
	.db #0x3F	;  63
	.db #0x45	;  69	'E'
	.db #0x4B	;  75	'K'
	.db #0x50	;  80	'P'
	.db #0x55	;  85	'U'
	.db #0x5A	;  90	'Z'
	.db #0x5F	;  95
	.db #0x63	;  99	'c'
	.db #0x67	;  103	'g'
	.db #0x6B	;  107	'k'
	.db #0x6E	;  110	'n'
	.db #0x72	;  114	'r'
	.db #0x74	;  116	't'
	.db #0x77	;  119	'w'
	.db #0x79	;  121	'y'
	.db #0x7B	;  123
	.db #0x7D	;  125
	.db #0x7E	;  126
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7F	;  127
	.db #0x7E	;  126
	.db #0x7D	;  125
	.db #0x7B	;  123
	.db #0x79	;  121	'y'
	.db #0x77	;  119	'w'
	.db #0x74	;  116	't'
	.db #0x72	;  114	'r'
	.db #0x6E	;  110	'n'
	.db #0x6B	;  107	'k'
	.db #0x67	;  103	'g'
	.db #0x63	;  99	'c'
	.db #0x5F	;  95
	.db #0x5A	;  90	'Z'
	.db #0x55	;  85	'U'
	.db #0x50	;  80	'P'
	.db #0x4B	;  75	'K'
	.db #0x45	;  69	'E'
	.db #0x3F	;  63
	.db #0x3A	;  58
	.db #0x34	;  52	'4'
	.db #0x2D	;  45
	.db #0x27	;  39
	.db #0x21	;  33
	.db #0x1A	;  26
	.db #0x14	;  20
	.db #0x0D	;  13
	.db #0x06	;  6
	.db #0x00	;  0
	.db #0xFA	; -6
	.db #0xF3	; -13
	.db #0xEC	; -20
	.db #0xE6	; -26
	.db #0xDF	; -33
	.db #0xD9	; -39
	.db #0xD3	; -45
	.db #0xCC	; -52
	.db #0xC6	; -58
	.db #0xC1	; -63
	.db #0xBB	; -69
	.db #0xB5	; -75
	.db #0xB0	; -80
	.db #0xAB	; -85
	.db #0xA6	; -90
	.db #0xA1	; -95
	.db #0x9D	; -99
	.db #0x99	; -103
	.db #0x95	; -107
	.db #0x92	; -110
	.db #0x8E	; -114
	.db #0x8C	; -116
	.db #0x89	; -119
	.db #0x87	; -121
	.db #0x85	; -123
	.db #0x83	; -125
	.db #0x82	; -126
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x82	; -126
	.db #0x83	; -125
	.db #0x85	; -123
	.db #0x87	; -121
	.db #0x89	; -119
	.db #0x8C	; -116
	.db #0x8E	; -114
	.db #0x92	; -110
	.db #0x95	; -107
	.db #0x99	; -103
	.db #0x9D	; -99
	.db #0xA1	; -95
	.db #0xA6	; -90
	.db #0xAB	; -85
	.db #0xB0	; -80
	.db #0xB5	; -75
	.db #0xBB	; -69
	.db #0xC1	; -63
	.db #0xC6	; -58
	.db #0xCC	; -52
	.db #0xD3	; -45
	.db #0xD9	; -39
	.db #0xDF	; -33
	.db #0xE6	; -26
	.db #0xEC	; -20
	.db #0xF3	; -13
	.db #0xFA	; -6
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
