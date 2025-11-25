
/tmp/tmp.zyKI5WBHer/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_i2c_bus:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<snd_tea6330t_detect>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <snd_tea6330t_detect+0x6> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r4
               	bl	0x22 <snd_tea6330t_detect+0x16> @ imm = #-0x4
               	mov	r5, r0
               	mov	r0, r4
               	bl	0x2a <snd_tea6330t_detect+0x1e> @ imm = #-0x4
               	mov	r0, r5
               	pop	{r4, r5, r7, pc}
