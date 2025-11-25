
/tmp/tmp.1T6ZX2JLn1/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amd8111e_priv:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<amd8111e_stop_chip>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	movw	r6, #0x0
               	mov	r4, r0
               	movt	r6, #0x0
               	movw	r0, #0x0
               	ldrd	r1, r3, [r4]
               	ldrd	r2, r5, [r6]
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	adds	r2, r2, r1
               	adcs	r3, r5
               	bl	0x34 <amd8111e_stop_chip+0x28> @ imm = #-0x4
               	ldrd	r0, r1, [r4]
               	ldrd	r2, r3, [r6]
               	adds	r0, r0, r2
               	adcs	r1, r3
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x4c <amd8111e_stop_chip+0x40> @ imm = #-0x4
