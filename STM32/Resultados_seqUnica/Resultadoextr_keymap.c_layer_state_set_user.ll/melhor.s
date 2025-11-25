
/tmp/tmp.Etpibn7egT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<layer_state_set_user>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movw	r2, #0x0
               	movw	r3, #0x0
               	movt	r1, #0x0
               	movt	r2, #0x0
               	movt	r3, #0x0
               	ldr	r1, [r1]
               	ldr	r2, [r2]
               	ldr	r3, [r3]
               	pop.w	{r7, lr}
               	b.w	0x26 <layer_state_set_user+0x26> @ imm = #-0x4
