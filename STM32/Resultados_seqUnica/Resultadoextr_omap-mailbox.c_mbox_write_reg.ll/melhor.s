
/tmp/tmp.WmGGkjgT0A/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<omap_mbox_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<mbox_write_reg>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r3}
               	adds	r2, r2, r0
               	adc	r3, r3, #0x0
               	mov	r0, r1
               	pop.w	{r7, lr}
               	b.w	0x1e <mbox_write_reg+0x12> @ imm = #-0x4
