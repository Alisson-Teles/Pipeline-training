
/tmp/tmp.09cNfBd4rP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<zfs_nicenum>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r3
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	str.w	r12, [sp]
               	bl	0x16 <zfs_nicenum+0x16> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
