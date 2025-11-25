
/tmp/tmp.Q5TaR37WJg/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<v4l2_subdev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<v4l2_fh:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<v4l2_event_subscription:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<omap3isp_stat_unsubscribe_event>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r0, r1
               	mov	r1, r2
               	pop.w	{r7, lr}
               	b.w	0x30 <omap3isp_stat_unsubscribe_event+0xc> @ imm = #-0x4
