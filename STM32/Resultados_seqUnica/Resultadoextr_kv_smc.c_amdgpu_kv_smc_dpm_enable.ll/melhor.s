
/tmp/tmp.LZ5TTzKNuK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdgpu_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<amdgpu_kv_smc_dpm_enable>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r3, #0x0
               	movw	r2, #0x0
               	movt	r3, #0x0
               	movt	r2, #0x0
               	cmp	r1, #0x0
               	it	eq
               	moveq	r3, r2
               	ldr	r1, [r3]
               	pop.w	{r7, lr}
               	b.w	0x2c <amdgpu_kv_smc_dpm_enable+0x20> @ imm = #-0x4
