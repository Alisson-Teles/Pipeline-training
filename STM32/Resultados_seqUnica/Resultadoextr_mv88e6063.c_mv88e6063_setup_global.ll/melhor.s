
/tmp/tmp.17DZoTXFTE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<dsa_switch:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<mv88e6063_setup_global>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r4, #0x0
               	movt	r4, #0x0
               	ldr	r0, [r4]
               	movs	r1, #0x4
               	mov.w	r2, #0x800
               	bl	0x20 <mv88e6063_setup_global+0x14> @ imm = #-0x4
               	ldr	r0, [r4]
               	movs	r1, #0xa
               	movw	r2, #0x2130
               	bl	0x2c <mv88e6063_setup_global+0x20> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
