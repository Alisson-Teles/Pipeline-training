
/tmp/tmp.ot6bFOQ75r/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<_aarch64_entry_to_prot>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r4, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	mov	r0, r1
               	bl	0x1c <_aarch64_entry_to_prot+0x1c> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	tst	r0, r5
               	movw	r0, #0x0
               	ldr	r1, [r1]
               	movt	r0, #0x0
               	it	eq
               	orreq	r4, r1
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	tst	r0, r5
               	it	eq
               	orreq	r4, r1
               	mov	r0, r4
               	pop	{r4, r5, r7, pc}
