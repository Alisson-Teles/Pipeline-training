
/tmp/tmp.NN6eivmp6A/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<_equalFromExpr>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0xe <_equalFromExpr+0xe> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x1c <_equalFromExpr+0x1c> @ imm = #-0x4
               	movs	r0, #0x1
               	pop	{r7, pc}
