
/tmp/tmp.VgbonusfkP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<thread:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<pwrite_args:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<sys_pwrite>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	ldrd	r12, r3, [r1]
               	ldrd	r2, r1, [r1, #8]
               	str.w	r12, [sp]
               	bl	0x2e <sys_pwrite+0x12>  @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
