
/tmp/tmp.MPhHafMJ0d/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<drm_i915_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<__gen6_gt_force_wake_mt_put>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r4, [r1]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r0
               	mov	r0, r1
               	bl	0x28 <__gen6_gt_force_wake_mt_put+0x1c> @ imm = #-0x4
               	mov	r1, r0
               	mov	r0, r4
               	bl	0x30 <__gen6_gt_force_wake_mt_put+0x24> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x3e <__gen6_gt_force_wake_mt_put+0x32> @ imm = #-0x4
               	mov	r0, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x48 <__gen6_gt_force_wake_mt_put+0x3c> @ imm = #-0x4
