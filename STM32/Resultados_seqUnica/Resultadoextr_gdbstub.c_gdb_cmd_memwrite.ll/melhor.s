
/tmp/tmp.1MlNSDJPqV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<kgdb_state:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gdb_cmd_memwrite>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r0, #0x0
               	bl	0x12 <gdb_cmd_memwrite+0x6> @ imm = #-0x4
               	mov	r1, r0
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cbz	r1, 0x2c <gdb_cmd_memwrite+0x20> @ imm = #0x6
               	pop.w	{r7, lr}
               	b.w	0x28 <gdb_cmd_memwrite+0x1c> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x2
               	pop.w	{r7, lr}
               	b.w	0x3a <gdb_cmd_memwrite+0x2e> @ imm = #-0x4
