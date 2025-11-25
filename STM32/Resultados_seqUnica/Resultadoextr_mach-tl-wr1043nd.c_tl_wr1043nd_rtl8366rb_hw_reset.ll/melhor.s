
/tmp/tmp.D3dv7RwrYk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rtl8366_smi:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<tl_wr1043nd_rtl8366rb_hw_reset>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	cbz	r1, 0x24 <tl_wr1043nd_rtl8366rb_hw_reset+0x18> @ imm = #0x6
               	pop.w	{r7, lr}
               	b.w	0x20 <tl_wr1043nd_rtl8366rb_hw_reset+0x14> @ imm = #-0x4
               	pop.w	{r7, lr}
               	b.w	0x28 <tl_wr1043nd_rtl8366rb_hw_reset+0x1c> @ imm = #-0x4
