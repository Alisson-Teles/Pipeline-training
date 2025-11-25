
/tmp/tmp.2z3aWLPlEp/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<net_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ethtool_cmd:init>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	movs	r1, #0x2c
               	mov	r4, r0
               	bl	0x14 <ethtool_cmd:init+0x8> @ imm = #-0x4
               	movs	r0, #0x0
               	strd	r0, r0, [r4, #48]
               	strd	r0, r0, [r4, #56]
               	pop	{r4, r6, r7, pc}

<tun_get_settings>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr.w	r12, [r0]
               	movw	r3, #0x0
               	movw	r0, #0x0
               	movt	r3, #0x0
               	movt	r0, #0x0
               	ldr	r3, [r3]
               	ldr	r0, [r0]
               	movs	r2, #0x0
               	strd	r3, r0, [r1, #32]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movw	r3, #0x0
               	ldr	r0, [r0]
               	movt	r3, #0x0
               	ldr	r3, [r3]
               	str	r0, [r1, #0x14]
               	movs	r0, #0x0
               	strd	r2, r2, [r1, #48]
               	strd	r2, r2, [r1, #56]
               	str.w	r12, [r1, #0x28]
               	strd	r2, r2, [r1, #24]
               	strd	r2, r2, [r1, #4]
               	strd	r2, r3, [r1, #12]
               	str	r2, [r1]
               	pop	{r7, pc}
