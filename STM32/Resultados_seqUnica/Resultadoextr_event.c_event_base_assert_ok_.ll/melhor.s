
/tmp/tmp.ssFhVIEa49/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<event_base:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<event_base_assert_ok_>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r5, #0x0
               	movt	r5, #0x0
               	ldr	r1, [r5]
               	mov	r4, r0
               	bl	0x1c <event_base_assert_ok_+0x10> @ imm = #-0x4
               	mov	r0, r4
               	bl	0x22 <event_base_assert_ok_+0x16> @ imm = #-0x4
               	ldr	r1, [r5]
               	mov	r0, r4
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x2e <event_base_assert_ok_+0x22> @ imm = #-0x4
