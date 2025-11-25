
/tmp/tmp.4vwnaK6dMB/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<intel_crtc_state:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<icl_color_check>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x12 <icl_color_check+0x6> @ imm = #-0x4
               	cmp	r0, #0x0
               	it	ne
               	popne	{r4, r6, r7, pc}
               	mov	r0, r4
               	bl	0x1e <icl_color_check+0x12> @ imm = #-0x4
               	str	r0, [r4, #0x4]
               	mov	r0, r4
               	bl	0x26 <icl_color_check+0x1a> @ imm = #-0x4
               	str	r0, [r4]
               	movs	r0, #0x0
               	pop	{r4, r6, r7, pc}
