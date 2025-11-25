
/tmp/tmp.R6ba0cFZCl/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<timechart:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<perf_sample:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<evsel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<process_exit_read>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	sub	sp, #0x8
               	mov	r4, r2
               	movw	r2, #0x0
               	mov	r8, r0
               	movt	r2, #0x0
               	mov	r0, r1
               	mov	r1, r4
               	movs	r3, #0x3
               	bl	0x40 <process_exit_read+0x1c> @ imm = #-0x4
               	mov	r5, r0
               	movw	r0, #0x0
               	ldrd	r3, r4, [r4]
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r6, r1
               	mov	r0, r8
               	mov	r1, r4
               	strd	r5, r6, [sp]
               	bl	0x5e <process_exit_read+0x3a> @ imm = #-0x4
               	add	sp, #0x8
               	ldr	r8, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
