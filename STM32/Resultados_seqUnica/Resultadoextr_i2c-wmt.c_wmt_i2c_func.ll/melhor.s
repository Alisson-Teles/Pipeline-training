
/tmp/tmp.PkVMS4r2Sz/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<i2c_adapter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wmt_i2c_func>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movw	r1, #0x0
               	movt	r0, #0x0
               	movt	r1, #0x0
               	movw	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r1, [r1]
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	orrs	r0, r1
               	orrs	r0, r2
               	pop	{r7, pc}
