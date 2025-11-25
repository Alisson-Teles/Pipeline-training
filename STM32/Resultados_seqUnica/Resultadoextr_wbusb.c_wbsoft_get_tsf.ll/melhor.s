
/tmp/tmp.owgPscHPgc/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ieee80211_hw:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wbsoft_get_tsf>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x16
               	bl	0x1a <wbsoft_get_tsf+0xe> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
