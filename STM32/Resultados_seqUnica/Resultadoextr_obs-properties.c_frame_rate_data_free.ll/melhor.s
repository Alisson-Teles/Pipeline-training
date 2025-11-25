
/tmp/tmp.49ZTuuMCd9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<frame_rate_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<frame_rate_data_free>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <frame_rate_data_free+0x6> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x18 <frame_rate_data_free+0xc> @ imm = #-0x4
               	ldr	r0, [r4, #0x4]
               	bl	0x1e <frame_rate_data_free+0x12> @ imm = #-0x4
               	ldr	r0, [r4]
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x28 <frame_rate_data_free+0x1c> @ imm = #-0x4
