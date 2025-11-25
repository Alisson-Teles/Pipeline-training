
/tmp/tmp.79RGK79pBT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<fs_dev:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<write_fs>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm	r0, {r0, r3}
               	mov	r12, r2
               	adds	r2, r0, r1
               	adc.w	r3, r3, r1, asr #31
               	mov	r0, r12
               	pop.w	{r7, lr}
               	b.w	0x20 <write_fs+0x14>    @ imm = #-0x4
