
/tmp/tmp.MJmctwYw5M/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tlp_rp_regpair_t:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<altera_pcie:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<tlp_write_tx>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	movw	r2, #0x0
               	movt	r2, #0x0
               	mov	r4, r1
               	ldr	r1, [r1, #0x8]
               	ldr	r2, [r2]
               	mov	r5, r0
               	bl	0x30 <tlp_write_tx+0x14> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r4, #0x4]
               	ldr	r2, [r0]
               	mov	r0, r5
               	bl	0x42 <tlp_write_tx+0x26> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r4]
               	ldr	r2, [r0]
               	mov	r0, r5
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x58 <tlp_write_tx+0x3c> @ imm = #-0x4
