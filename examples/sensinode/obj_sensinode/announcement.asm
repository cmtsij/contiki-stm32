;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.1 #7100 (Apr  1 2013) (Linux)
; This file was generated Tue Apr 23 09:41:14 2013
;--------------------------------------------------------
	.module announcement
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _list_item_next
	.globl _list_remove
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _announcement_init
	.globl _announcement_register
	.globl _announcement_remove
	.globl _announcement_remove_value
	.globl _announcement_set_value
	.globl _announcement_bump
	.globl _announcement_listen
	.globl _announcement_register_listen_callback
	.globl _announcement_register_observer_callback
	.globl _announcement_list
	.globl _announcement_heard
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
_listen_callback:
	.ds 2
_observer_callback:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_announcements_list:
	.ds 3
_announcements:
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
;Allocation info for local variables in function 'announcement_init'
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:57: announcement_init(void)
;	-----------------------------------------
;	 function announcement_init
;	-----------------------------------------
_announcement_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../../core/net/rime/announcement.c:59: list_init(announcements);
	mov	dptr,#_announcements
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_list_init
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register'
;------------------------------------------------------------
;id                        Allocated to stack - _bp -4
;callback                  Allocated to stack - _bp -6
;a                         Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:63: announcement_register(struct announcement *a, uint16_t id,
;	-----------------------------------------
;	 function announcement_register
;	-----------------------------------------
_announcement_register:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	../../core/net/rime/announcement.c:66: a->id = id;
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/rime/announcement.c:67: a->has_value = 0;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x09
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
	clr	a
	lcall	__gptrput
;	../../core/net/rime/announcement.c:68: a->callback = callback;
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
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
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	../../core/net/rime/announcement.c:69: list_add(announcements, a);
	mov	r0,_bp
	inc	r0
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
	mov	dptr,#_announcements
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x07
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
	lcall	_list_add
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	../../core/net/rime/announcement.c:70: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00103$
;	../../core/net/rime/announcement.c:72: a->value, 0, ANNOUNCEMENT_BUMP);
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
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	../../core/net/rime/announcement.c:71: observer_callback(a->id, a->has_value,
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	ret
00108$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_remove'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:77: announcement_remove(struct announcement *a)
;	-----------------------------------------
;	 function announcement_remove
;	-----------------------------------------
_announcement_remove:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/announcement.c:79: list_remove(announcements, a);
	mov	dptr,#_announcements
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_remove_value'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:83: announcement_remove_value(struct announcement *a)
;	-----------------------------------------
;	 function announcement_remove_value
;	-----------------------------------------
_announcement_remove_value:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/announcement.c:85: a->has_value = 0;
	mov	a,#0x09
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
;	../../core/net/rime/announcement.c:86: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../../core/net/rime/announcement.c:87: observer_callback(a->id, 0, 0, 0, ANNOUNCEMENT_NOBUMP);
	mov	a,#0x03
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
	mov	r6,a
	clr	a
	push	acc
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	push	acc
	clr	a
	push	acc
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	ret
00108$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_set_value'
;------------------------------------------------------------
;value                     Allocated to stack - _bp -4
;a                         Allocated to registers r5 r6 r7 
;oldvalue                  Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:93: announcement_set_value(struct announcement *a, uint16_t value)
;	-----------------------------------------
;	 function announcement_set_value
;	-----------------------------------------
_announcement_set_value:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/announcement.c:95: uint16_t oldvalue = a->value;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	../../core/net/rime/announcement.c:97: a->has_value = 1;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x09
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	../../core/net/rime/announcement.c:98: a->value = value;
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
;	../../core/net/rime/announcement.c:99: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../../core/net/rime/announcement.c:100: observer_callback(a->id, a->has_value,
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x03
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
	mov	r6,a
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
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
	push	ar4
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	ret
00108$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_bump'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:106: announcement_bump(struct announcement *a)
;	-----------------------------------------
;	 function announcement_bump
;	-----------------------------------------
_announcement_bump:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/announcement.c:108: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jz	00103$
;	../../core/net/rime/announcement.c:110: a->value, a->value, ANNOUNCEMENT_BUMP);
	mov	a,#0x05
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
;	../../core/net/rime/announcement.c:109: observer_callback(a->id, a->has_value,
	mov	a,#0x09
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x03
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
	mov	r6,a
	mov	a,#0x01
	push	acc
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	push	ar0
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	ret
00108$:
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_listen'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:115: announcement_listen(int time)
;	-----------------------------------------
;	 function announcement_listen
;	-----------------------------------------
_announcement_listen:
	mov	r6,dpl
	mov	r7,dph
;	../../core/net/rime/announcement.c:117: if(listen_callback) {
	mov	dptr,#_listen_callback
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	00103$
;	../../core/net/rime/announcement.c:118: listen_callback(time);
	mov	a,#00108$
	push	acc
	mov	a,#(00108$ >> 8)
	push	acc
	mov	dptr,#_listen_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	ret
00108$:
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register_listen_callback'
;------------------------------------------------------------
;callback                  Allocated to registers 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:123: announcement_register_listen_callback(void (*callback)(int time))
;	-----------------------------------------
;	 function announcement_register_listen_callback
;	-----------------------------------------
_announcement_register_listen_callback:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_listen_callback
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/announcement.c:125: listen_callback = callback;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register_observer_callback'
;------------------------------------------------------------
;callback                  Allocated to registers 
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:129: announcement_register_observer_callback(announcement_observer callback)
;	-----------------------------------------
;	 function announcement_register_observer_callback
;	-----------------------------------------
_announcement_register_observer_callback:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_observer_callback
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	../../core/net/rime/announcement.c:131: observer_callback = callback;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_list'
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:135: announcement_list(void)
;	-----------------------------------------
;	 function announcement_list
;	-----------------------------------------
_announcement_list:
;	../../core/net/rime/announcement.c:137: return list_head(announcements);
	mov	dptr,#_announcements
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_list_head
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_heard'
;------------------------------------------------------------
;id                        Allocated to stack - _bp -4
;value                     Allocated to stack - _bp -6
;from                      Allocated to registers r5 r6 r7 
;a                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	../../core/net/rime/announcement.c:141: announcement_heard(const rimeaddr_t *from, uint16_t id, uint16_t value)
;	-----------------------------------------
;	 function announcement_heard
;	-----------------------------------------
_announcement_heard:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../../core/net/rime/announcement.c:144: for(a = list_head(announcements); a != NULL; a = list_item_next(a)) {
	mov	dptr,#_announcements
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
00105$:
	clr	a
	push	acc
	clr	a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00119$
	ljmp	00109$
00119$:
;	../../core/net/rime/announcement.c:145: if(a->id == id) {
	push	ar5
	push	ar6
	push	ar7
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
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00120$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00120$
	sjmp	00121$
00120$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00107$
00121$:
;	../../core/net/rime/announcement.c:146: if(a->callback != NULL) {
	mov	a,#0x07
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
;	../../core/net/rime/announcement.c:147: a->callback(a, from, id, value);
	mov	a,_bp
	add	a,#0xfa
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
	push	ar5
	push	ar6
	push	ar7
	mov	a,#00123$
	push	acc
	mov	a,#(00123$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00123$:
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00102$:
;	../../core/net/rime/announcement.c:149: return;
	sjmp	00109$
00107$:
;	../../core/net/rime/announcement.c:144: for(a = list_head(announcements); a != NULL; a = list_item_next(a)) {
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00105$
00109$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__announcements_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__announcements:
	.byte _announcements_list,(_announcements_list >> 8),#0x00
	.area CABS    (ABS,CODE)
