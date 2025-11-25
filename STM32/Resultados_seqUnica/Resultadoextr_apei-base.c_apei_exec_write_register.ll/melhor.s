
/tmp/tmp.kEQ7QDWiad/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<apei_exec_context:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<acpi_whea_header:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<apei_exec_write_register>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r2, r1
               	ldr	r1, [r0]
               	mov	r0, r2
               	pop.w	{r7, lr}
               	b.w	0x26 <apei_exec_write_register+0xe> @ imm = #-0x4
