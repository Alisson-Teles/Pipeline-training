
/tmp/tmp.reahXIwucj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<socket:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<soissrcbackground>:
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r0]
               	ldr	r2, [r2]
               	tst	r2, r1
               	itt	ne
               	movne	r0, #0x1
               	bxne	lr
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0, #0x4]
               	bl	0x26 <soissrcbackground+0x1a> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
