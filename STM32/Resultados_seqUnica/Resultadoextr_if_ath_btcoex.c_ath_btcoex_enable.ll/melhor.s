
/tmp/tmp.6qWIYvsj6d/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ieee80211_channel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ath_softc:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<ath_btcoex_enable>:
               	ldrd	r2, r3, [r0]
               	orrs	r2, r3
               	beq	0x2c <ath_btcoex_enable+0x14> @ imm = #0xa
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x24 <ath_btcoex_enable+0xc> @ imm = #-0x4
               	pop.w	{r7, lr}
               	movs	r0, #0x0
               	bx	lr
