
/tmp/tmp.IwZHjiVGxe/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<change:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pr_forward_ed_script>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x28 <pr_forward_ed_script+0x1c> @ imm = #-0x4
