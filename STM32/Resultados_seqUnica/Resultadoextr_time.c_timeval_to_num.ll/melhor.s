
/tmp/tmp.SDk0Z30W0Z/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<timeval:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<timeval_to_num>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	ldrd	r2, r1, [r0, #8]
               	movw	r3, #0x8480
               	ldrd	r4, r5, [r0]
               	movt	r3, #0x412e
               	mov	r0, r2
               	movs	r2, #0x0
               	bl	0x28 <timeval_to_num+0x18> @ imm = #-0x4
               	mov	r2, r0
               	mov	r3, r1
               	mov	r0, r4
               	mov	r1, r5
               	bl	0x34 <timeval_to_num+0x24> @ imm = #-0x4
               	pop	{r4, r5, r7, pc}
