
/tmp/tmp.Jpg7GZBSEI/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdgpu_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nbio_v7_4_vcn_doorbell_range>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r8, [sp, #-4]!
               	mov	r8, r2
               	movw	r0, #0x0
               	movw	r2, #0x0
               	movw	r6, #0x0
               	movt	r0, #0x0
               	movt	r2, #0x0
               	movt	r6, #0x0
               	ldr	r0, [r0]
               	cmp	r3, #0x0
               	it	eq
               	moveq	r6, r2
               	ldr	r2, [r6]
               	mov	r6, r1
               	movs	r1, #0x0
               	bl	0x3c <nbio_v7_4_vcn_doorbell_range+0x30> @ imm = #-0x4
               	mov	r4, r0
               	bl	0x42 <nbio_v7_4_vcn_doorbell_range+0x36> @ imm = #-0x4
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	cbz	r6, 0x72 <nbio_v7_4_vcn_doorbell_range+0x66> @ imm = #0x1e
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	mov	r3, r8
               	bl	0x5e <nbio_v7_4_vcn_doorbell_range+0x52> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r1, [r5]
               	ldr	r2, [r2]
               	movs	r3, #0x8
               	b	0x7e <nbio_v7_4_vcn_doorbell_range+0x72> @ imm = #0xa
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	movs	r3, #0x0
               	bl	0x7e <nbio_v7_4_vcn_doorbell_range+0x72> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	ldr	r8, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x8e <nbio_v7_4_vcn_doorbell_range+0x82> @ imm = #-0x4
