
/tmp/tmp.MZ9auLulT7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_4__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<luaE_setdebt>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	mov	r9, r3
               	mov	r8, r2
               	mov	r4, r0
               	bl	0x1e <luaE_setdebt+0xe> @ imm = #-0x4
               	mov	r6, r0
               	rsbs	r0, r0, #0
               	mov.w	r0, #0x0
               	mov	r5, r1
               	sbcs.w	r1, r0, r1
               	it	lt
               	movlt	r0, #0x1
               	bl	0x34 <luaE_setdebt+0x24> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldm	r0, {r0, r1}
               	subs	r0, r6, r0
               	sbc.w	r1, r5, r1
               	subs.w	r2, r0, r8
               	sbcs.w	r2, r1, r9
               	itt	lt
               	movlt	r1, r9
               	movlt	r0, r8
               	subs	r2, r6, r0
               	sbc.w	r3, r5, r1
               	stm	r4!, {r0, r1, r2, r3}
               	pop.w	{r8, r9, r11}
               	pop	{r4, r5, r6, r7, pc}
