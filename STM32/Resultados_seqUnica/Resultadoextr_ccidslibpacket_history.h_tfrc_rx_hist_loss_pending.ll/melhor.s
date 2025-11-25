
/tmp/tmp.5cy8zgkntD/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tfrc_rx_hist:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<tfrc_rx_hist_loss_pending>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r1}
               	rsbs	r0, r0, #0
               	mov.w	r0, #0x0
               	sbcs.w	r1, r0, r1
               	it	lt
               	movlt	r0, #0x1
               	pop	{r7, pc}
