#NO_APP
.text
.int 0x00000000
.int 0x00000008

main:
	nop
	sub.l %a1,%a1
	clr.l %d1
.L2:
	move.l %d1,%d3
	lsr.l #3,%d3
	move.l %a1,%a0
	clr.l %d0
.L7:
	move.l %d0,%d2
	or.l %d1,%d2
	move.w %d2,%ccr
	jpl .L3
	clr.w (%a0)
	jra .L4
.L3:
	move.l %d0,%d2
	asr.l #3,%d2
	or.w %d3,%d2
	move.w %d2,%d4
	lsl.w #8,%d4
	or.w %d2,%d4
	move.w %d4,(%a0)
.L4:
	addq.l #1,%d0
	addq.l #2,%a0
	cmp.l #400,%d0
	jne .L7
	addq.l #1,%d1
	lea (800,%a1),%a1
	cmp.l #480,%d1
	jne .L2

2:      stop #0x3000
        bra 2b

