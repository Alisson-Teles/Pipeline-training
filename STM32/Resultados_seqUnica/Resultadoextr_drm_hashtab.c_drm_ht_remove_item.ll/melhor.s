
/tmp/tmp.znzzNUX5Sw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<drm_open_hash:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<drm_hash_item:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<drm_ht_remove_item>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r2, [r0]
               	mov	r0, r1
               	mov	r1, r2
               	bl	0x2a <drm_ht_remove_item+0x12> @ imm = #-0x4
               	movs	r0, #0x0
               	pop	{r7, pc}
