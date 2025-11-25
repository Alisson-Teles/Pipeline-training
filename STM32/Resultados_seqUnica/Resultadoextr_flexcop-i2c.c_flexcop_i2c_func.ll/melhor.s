
/tmp/tmp.KJSHAAzHbq/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<i2c_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<flexcop_i2c_func>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
