
/tmp/tmp.PNYcy6ceS6/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<atmel_clear_gcr>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	movw	r8, #0x0
               	movt	r8, #0x0
               	mov	r4, r0
               	ldm	r0, {r0, r2}
               	ldrd	r3, r6, [r8]
               	mov	r5, r1
               	adds	r0, r0, r3
               	adc.w	r1, r6, r2
               	bl	0x2c <atmel_clear_gcr+0x20> @ imm = #-0x4
               	ldrd	r1, r3, [r4]
               	ldrd	r2, r6, [r8]
               	bics	r0, r5
               	adds	r2, r2, r1
               	adcs	r3, r6
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x46 <atmel_clear_gcr+0x3a> @ imm = #-0x4
