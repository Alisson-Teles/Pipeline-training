
/tmp/tmp.KrO1Fi7dmr/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<mxsfb_drm_private:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<mxsfb_disable_axi_clk>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r1}
               	orrs.w	r2, r0, r1
               	it	eq
               	popeq	{r7, pc}
               	pop.w	{r7, lr}
               	b.w	0x1e <mxsfb_disable_axi_clk+0x12> @ imm = #-0x4
