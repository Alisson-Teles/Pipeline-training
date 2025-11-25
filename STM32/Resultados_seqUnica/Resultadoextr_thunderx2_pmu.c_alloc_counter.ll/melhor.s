
/tmp/tmp.1crRUlcw5w/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tx2_uncore_pmu:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<alloc_counter>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldrd	r1, r0, [r0]
               	bl	0x16 <alloc_counter+0xa> @ imm = #-0x4
               	ldr	r1, [r4]
               	cmp	r0, r1
               	bne	0x2e <alloc_counter+0x22> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r4, r6, r7, pc}
               	ldr	r1, [r4, #0x4]
               	mov	r4, r0
               	bl	0x32 <alloc_counter+0x26> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r6, r7, pc}
