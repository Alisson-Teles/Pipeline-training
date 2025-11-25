
/tmp/tmp.NDfcL7cS09/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<tun_file:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<tun_napi_frags_enabled>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop	{r7, pc}
