
/tmp/tmp.XwqPyT8ifw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<drop_database_if_exists>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x8
               	mov	r5, r0
               	movw	r0, #0x0
               	mov	r4, r1
               	movt	r0, #0x0
               	movs	r1, #0x16
               	bl	0x14 <drop_database_if_exists+0x14> @ imm = #-0x4
               	mov	r1, r5
               	mov	r2, r4
               	bl	0x1c <drop_database_if_exists+0x1c> @ imm = #-0x4
               	movw	r0, #0x0
               	movw	r1, #0x0
               	mov.w	r12, #0x1c
               	movt	r0, #0x0
               	movt	r1, #0x0
               	mov	r2, r5
               	movs	r3, #0x8
               	strd	r12, r4, [sp]
               	bl	0x3c <drop_database_if_exists+0x3c> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r4, r5, r7, pc}
