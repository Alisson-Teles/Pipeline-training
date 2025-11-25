
/tmp/tmp.U0eRtzdCrN/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<amdgpu_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<gfx_v6_0_select_me_pipe_q>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x10
               	pop.w	{r7, lr}
               	b.w	0x1e <gfx_v6_0_select_me_pipe_q+0x12> @ imm = #-0x4
