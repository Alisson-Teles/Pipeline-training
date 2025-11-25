
/tmp/tmp.ISqw25HFm9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<arm_parallel_addsub_signed>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x6 <arm_parallel_addsub_signed+0x6> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldrd	r2, r3, [r5]
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	beq	0x42 <arm_parallel_addsub_signed+0x42> @ imm = #0x22
               	mov	r0, r4
               	bl	0x20 <arm_parallel_addsub_signed+0x20> @ imm = #-0x4
               	ldrd	r2, r3, [r5]
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	beq	0x42 <arm_parallel_addsub_signed+0x42> @ imm = #0x10
               	mov	r0, r4
               	bl	0x32 <arm_parallel_addsub_signed+0x32> @ imm = #-0x4
               	ldrd	r2, r3, [r5]
               	eors	r1, r3
               	eors	r0, r2
               	orrs	r0, r1
               	bne	0x4e <arm_parallel_addsub_signed+0x4e> @ imm = #0xa
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r5, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop	{r4, r5, r7, pc}
