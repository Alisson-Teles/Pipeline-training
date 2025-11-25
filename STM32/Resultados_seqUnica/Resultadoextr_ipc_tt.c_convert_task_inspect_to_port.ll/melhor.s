
/tmp/tmp.2ryOcaqHHR/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<convert_task_inspect_to_port>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x4 <convert_task_inspect_to_port+0x4> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
