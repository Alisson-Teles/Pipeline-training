
/tmp/tmp.NgesnAUHB3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<constant_address_p>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <constant_address_p+0x6> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x28 <constant_address_p+0x28> @ imm = #0x18
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov	r1, r4
               	movs	r2, #0x1
               	bl	0x1c <constant_address_p+0x1c> @ imm = #-0x4
               	orrs	r0, r1
               	it	ne
               	movne	r0, #0x1
               	pop	{r4, r6, r7, pc}
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
