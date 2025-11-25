
/tmp/tmp.RdhafNGLaS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vpe_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<read_reg>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r2}
               	adds	r0, r0, r1
               	adc.w	r1, r2, r1, asr #31
               	pop.w	{r7, lr}
               	b.w	0x1c <read_reg+0x10>    @ imm = #-0x4
