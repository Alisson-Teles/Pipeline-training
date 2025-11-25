
/tmp/tmp.AyanGvwgMK/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<addr_filter:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<parse_action>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x6
               	bl	0x22 <parse_action+0x12> @ imm = #-0x4
               	cbz	r0, 0x6c <parse_action+0x5c> @ imm = #0x42
               	ldr	r0, [r4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x5
               	bl	0x34 <parse_action+0x24> @ imm = #-0x4
               	cbz	r0, 0x76 <parse_action+0x66> @ imm = #0x3a
               	ldr	r0, [r4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x4
               	bl	0x46 <parse_action+0x36> @ imm = #-0x4
               	cbz	r0, 0x7e <parse_action+0x6e> @ imm = #0x30
               	ldr	r0, [r4]
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x9
               	bl	0x58 <parse_action+0x48> @ imm = #-0x4
               	cbz	r0, 0x84 <parse_action+0x74> @ imm = #0x24
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r4, r6, r7, pc}
               	movs	r0, #0x1
               	strd	r0, r0, [r4, #4]
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
               	movs	r0, #0x1
               	str	r0, [r4, #0x4]
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
               	movs	r0, #0x0
               	str	r0, [r4, #0x4]
               	pop	{r4, r6, r7, pc}
               	movs	r1, #0x1
               	str	r1, [r4, #0x8]
               	ldr	r1, [r4]
               	movs	r0, #0x0
               	adds	r1, #0x5
               	str	r0, [r4, #0x4]
               	str	r1, [r4]
               	pop	{r4, r6, r7, pc}
