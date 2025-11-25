
/tmp/tmp.exLQJXMNLw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<gpio_is_valid>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr.w	r12, [r3]
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	cmp.w	r0, #0xffffffff
               	mov.w	r1, #0x0
               	mov.w	r2, #0x0
               	mul	r3, r3, r12
               	it	gt
               	movgt	r2, #0x1
               	cmp	r0, r3
               	it	lt
               	movlt	r1, #0x1
               	and.w	r0, r2, r1
               	pop	{r7, pc}
