
/tmp/tmp.HyHMV43W0n/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pt_regs:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<do_syscall_trace_leave>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x1e <do_syscall_trace_leave+0x12> @ imm = #-0x4
               	cbz	r0, 0x32 <do_syscall_trace_leave+0x26> @ imm = #0xc
               	mov	r0, r4
               	bl	0x26 <do_syscall_trace_leave+0x1a> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	bl	0x2e <do_syscall_trace_leave+0x22> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x3c <do_syscall_trace_leave+0x30> @ imm = #-0x4
               	mov	r5, r0
               	cbnz	r0, 0x58 <do_syscall_trace_leave+0x4c> @ imm = #0x12
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x4e <do_syscall_trace_leave+0x42> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	eq
               	popeq	{r4, r5, r7, pc}
               	mov	r0, r4
               	mov	r1, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x60 <do_syscall_trace_leave+0x54> @ imm = #-0x4
