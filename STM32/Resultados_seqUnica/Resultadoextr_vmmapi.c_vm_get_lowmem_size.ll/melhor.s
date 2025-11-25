
/tmp/tmp.GhNW4zXAxw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vmctx:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vm_get_lowmem_size>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop	{r7, pc}
