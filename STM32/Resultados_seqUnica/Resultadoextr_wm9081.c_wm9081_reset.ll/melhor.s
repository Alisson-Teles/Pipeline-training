
/tmp/tmp.RK6yf7loQB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_soc_codec:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wm9081_reset>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	movs	r2, #0x0
               	pop.w	{r7, lr}
               	b.w	0x20 <wm9081_reset+0x14> @ imm = #-0x4
