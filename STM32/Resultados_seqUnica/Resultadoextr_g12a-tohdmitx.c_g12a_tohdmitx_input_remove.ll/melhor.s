
/tmp/tmp.D4MgeplAKR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_soc_dai:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<g12a_tohdmitx_input_remove>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	bl	0x12 <g12a_tohdmitx_input_remove+0x6> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
