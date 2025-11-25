
/tmp/tmp.VMrGCLP97e/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<GPU_DrawArray>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r5, r2
               	mov	r2, r0
               	mov	r0, r1
               	movs	r1, #0x2
               	bl	0x18 <GPU_DrawArray+0x18> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x2
               	movs	r2, #0x1
               	bl	0x2a <GPU_DrawArray+0x2a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov.w	r1, #0x80000000
               	bl	0x3c <GPU_DrawArray+0x3c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov	r1, r5
               	bl	0x4c <GPU_DrawArray+0x4c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	mov	r1, r4
               	bl	0x5c <GPU_DrawArray+0x5c> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x1
               	movs	r2, #0x1
               	bl	0x6e <GPU_DrawArray+0x6e> @ imm = #-0x4
               	movw	r4, #0x0
               	movt	r4, #0x0
               	ldr	r0, [r4]
               	movs	r1, #0x1
               	movs	r2, #0x0
               	bl	0x80 <GPU_DrawArray+0x80> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x1
               	bl	0x90 <GPU_DrawArray+0x90> @ imm = #-0x4
               	ldr	r0, [r4]
               	movs	r1, #0x1
               	movs	r2, #0x1
               	bl	0x9a <GPU_DrawArray+0x9a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x1
               	bl	0xaa <GPU_DrawArray+0xaa> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	movs	r1, #0x1
               	pop.w	{r4, r5, r7, lr}
               	b.w	0xbe <GPU_DrawArray+0xbe> @ imm = #-0x4
