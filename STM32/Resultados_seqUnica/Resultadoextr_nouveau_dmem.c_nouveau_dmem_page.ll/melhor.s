
/tmp/tmp.MH5WI7ySRF/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<page:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nouveau_drm:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<nouveau_dmem_page>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r5, r0
               	mov	r0, r1
               	mov	r4, r1
               	bl	0x26 <nouveau_dmem_page+0xe> @ imm = #-0x4
               	orrs	r0, r1
               	beq	0x48 <nouveau_dmem_page+0x30> @ imm = #0x18
               	ldm	r5, {r5, r6}
               	mov	r0, r4
               	bl	0x32 <nouveau_dmem_page+0x1a> @ imm = #-0x4
               	eors	r1, r6
               	eors	r0, r5
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
               	movs	r0, #0x0
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
