
/tmp/tmp.xdGMEwbjp6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pt_regs:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<perf_sample_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<perf_event:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<perf_event_overflow>:
               	push	{r7, lr}
               	mov	r7, sp
               	mov	r3, r2
               	mov	r2, r1
               	movs	r1, #0x1
               	pop.w	{r7, lr}
               	b.w	0x32 <perf_event_overflow+0xe> @ imm = #-0x4
