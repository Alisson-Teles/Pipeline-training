
/tmp/tmp.6dJWYtuyXQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdgpu_ring:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gfx_v10_0_ring_emit_sb>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	movs	r1, #0x0
               	bl	0x20 <gfx_v10_0_ring_emit_sb+0x14> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	bl	0x28 <gfx_v10_0_ring_emit_sb+0x1c> @ imm = #-0x4
               	mov	r0, r4
               	movs	r1, #0x0
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x34 <gfx_v10_0_ring_emit_sb+0x28> @ imm = #-0x4
