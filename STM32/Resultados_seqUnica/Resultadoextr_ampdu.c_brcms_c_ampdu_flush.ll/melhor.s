
/tmp/tmp.SdeOcC8JLM/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ieee80211_sta:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<brcms_c_info:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<brcms_c_ampdu_flush>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r0, [r0]
               	ldr	r2, [r2]
               	pop.w	{r7, lr}
               	b.w	0x2c <brcms_c_ampdu_flush+0x14> @ imm = #-0x4
