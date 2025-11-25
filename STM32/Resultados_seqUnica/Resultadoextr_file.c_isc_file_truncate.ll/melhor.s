
/tmp/tmp.bNOD6AUQft/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<isc_file_truncate>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r3, #0x0
               	movt	r3, #0x0
               	ldr	r4, [r3]
               	bl	0xe <isc_file_truncate+0xe> @ imm = #-0x4
               	cmp.w	r1, #0xffffffff
               	itt	gt
               	movgt	r0, r4
               	popgt	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x2a <isc_file_truncate+0x2a> @ imm = #-0x4
