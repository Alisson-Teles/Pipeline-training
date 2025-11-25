
/tmp/tmp.1evKLrpk0u/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<radeon_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rs780_voltage_scaling_enable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movw	r0, #0x0
               	movt	r2, #0x0
               	movt	r0, #0x0
               	ldr	r3, [r2]
               	ldr	r0, [r0]
               	mvns	r2, r3
               	cmp	r1, #0x0
               	it	ne
               	movne	r1, r3
               	pop.w	{r7, lr}
               	b.w	0x30 <rs780_voltage_scaling_enable+0x24> @ imm = #-0x4
