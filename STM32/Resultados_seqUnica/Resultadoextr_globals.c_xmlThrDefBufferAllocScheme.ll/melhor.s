
/tmp/tmp.96zaorH6PG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<xmlThrDefBufferAllocScheme>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r1, [r6]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x16 <xmlThrDefBufferAllocScheme+0x16> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r0, [r6]
               	ldr	r5, [r1]
               	str	r4, [r1]
               	bl	0x28 <xmlThrDefBufferAllocScheme+0x28> @ imm = #-0x4
               	mov	r0, r5
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
