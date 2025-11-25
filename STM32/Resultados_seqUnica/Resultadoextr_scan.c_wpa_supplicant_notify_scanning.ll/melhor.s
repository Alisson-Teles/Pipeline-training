
/tmp/tmp.Jtlq3YQWAU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<wpa_supplicant:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wpa_supplicant_notify_scanning>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r2, [r0]
               	cmp	r2, r1
               	it	eq
               	popeq	{r7, pc}
               	str	r1, [r0]
               	pop.w	{r7, lr}
               	b.w	0x1e <wpa_supplicant_notify_scanning+0x12> @ imm = #-0x4
