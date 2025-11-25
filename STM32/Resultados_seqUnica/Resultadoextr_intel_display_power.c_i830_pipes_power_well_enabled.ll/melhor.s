
/tmp/tmp.wHoLTdeJG3/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<i915_power_well:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<drm_i915_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<i830_pipes_power_well_enabled>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x26 <i830_pipes_power_well_enabled+0xe> @ imm = #-0x4
               	bl	0x2a <i830_pipes_power_well_enabled+0x12> @ imm = #-0x4
               	movw	r4, #0x0
               	movt	r4, #0x0
               	ldr	r1, [r4]
               	ands	r0, r1
               	lsls	r0, r0, #0x1f
               	itt	eq
               	moveq	r0, #0x0
               	popeq	{r4, r6, r7, pc}
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	bl	0x4c <i830_pipes_power_well_enabled+0x34> @ imm = #-0x4
               	bl	0x50 <i830_pipes_power_well_enabled+0x38> @ imm = #-0x4
               	ldr	r1, [r4]
               	ands	r0, r1
               	and	r0, r0, #0x1
               	pop	{r4, r6, r7, pc}
