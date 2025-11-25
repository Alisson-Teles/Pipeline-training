
/tmp/tmp.HfcOd9ApVx/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<swcr_probe>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0xf
               	bl	0xe <swcr_probe+0xe>    @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r7, pc}
