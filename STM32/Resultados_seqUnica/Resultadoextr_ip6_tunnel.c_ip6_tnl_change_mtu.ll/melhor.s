
/tmp/tmp.SrXEg1iIf5/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ip6_tnl_change_mtu>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldr	r2, [r2]
               	cmp	r1, r2
               	bge	0x2c <ip6_tnl_change_mtu+0x20> @ imm = #0xc
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r7, pc}
               	str	r1, [r0]
               	movs	r0, #0x0
               	pop	{r7, pc}
