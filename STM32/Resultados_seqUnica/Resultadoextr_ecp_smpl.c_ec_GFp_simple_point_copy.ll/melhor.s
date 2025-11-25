
/tmp/tmp.PLt6oqaB7X/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	str	r1, [r0, #0x10]
               	pop	{r7, pc}
               	nop

<ec_GFp_simple_point_copy>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	mov	r5, r1
               	mov	r4, r0
               	ldr	r0, [r0, #0x10]
               	ldr	r1, [r1, #0x10]
               	bl	0x20 <ec_GFp_simple_point_copy+0xc> @ imm = #-0x4
               	cbz	r0, 0x46 <ec_GFp_simple_point_copy+0x32> @ imm = #0x1e
               	ldr	r0, [r4, #0xc]
               	ldr	r1, [r5, #0xc]
               	bl	0x2a <ec_GFp_simple_point_copy+0x16> @ imm = #-0x4
               	cbz	r0, 0x46 <ec_GFp_simple_point_copy+0x32> @ imm = #0x14
               	ldr	r0, [r4, #0x8]
               	ldr	r1, [r5, #0x8]
               	bl	0x34 <ec_GFp_simple_point_copy+0x20> @ imm = #-0x4
               	cbz	r0, 0x46 <ec_GFp_simple_point_copy+0x32> @ imm = #0xa
               	ldr	r0, [r5, #0x4]
               	str	r0, [r4, #0x4]
               	ldr	r0, [r5]
               	str	r0, [r4]
               	movs	r0, #0x1
               	pop	{r4, r5, r7, pc}
               	movs	r0, #0x0
               	pop	{r4, r5, r7, pc}
