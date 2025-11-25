
/tmp/tmp.9QH7rebFoX/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<sec_queue:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<sec_queue_cmdbase_addr>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	mov	r6, r0
               	mov	r0, r1
               	mov	r4, r1
               	bl	0x1a <sec_queue_cmdbase_addr+0xe> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r1, r3, [r6]
               	ldm	r2, {r2, r5}
               	adds	r2, r2, r1
               	adcs	r3, r5
               	bl	0x30 <sec_queue_cmdbase_addr+0x24> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x36 <sec_queue_cmdbase_addr+0x2a> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldrd	r1, r3, [r6]
               	ldm	r2, {r2, r6}
               	adds	r2, r2, r1
               	adcs	r3, r6
               	ldr	r11, [sp], #4
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x54 <sec_queue_cmdbase_addr+0x48> @ imm = #-0x4
