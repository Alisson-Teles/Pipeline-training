
/tmp/tmp.tBVL7fNaVv/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cpufreq_policy:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<cpufreq_p4_cpu_exit>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	bl	0x12 <cpufreq_p4_cpu_exit+0x6> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
