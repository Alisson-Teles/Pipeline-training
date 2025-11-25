
/tmp/tmp.Uquh7XqCNQ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<hpsb_packet:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}

<fill_async_readquad>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x22 <fill_async_readquad+0x12> @ imm = #-0x4
               	movs	r0, #0xc
               	movs	r1, #0x0
               	movs	r2, #0x1
               	strd	r0, r2, [r4]
               	strd	r1, r1, [r4, #8]
               	pop	{r4, r6, r7, pc}
