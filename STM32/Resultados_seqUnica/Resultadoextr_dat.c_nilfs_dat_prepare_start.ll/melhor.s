
/tmp/tmp.4RGU7r5MqU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<nilfs_palloc_req:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<inode:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<nilfs_dat_prepare_start>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movs	r2, #0x0
               	bl	0x1e <nilfs_dat_prepare_start+0x6> @ imm = #-0x4
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	mov	r4, r0
               	add	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	bl	0x36 <nilfs_dat_prepare_start+0x1e> @ imm = #-0x4
               	mov	r0, r4
               	pop	{r4, r6, r7, pc}
